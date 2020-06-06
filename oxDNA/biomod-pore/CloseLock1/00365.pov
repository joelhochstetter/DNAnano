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
	<24.499666, 34.783665, 35.427872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502005, 35.096947, 35.179180>,  <24.503408, 35.284916, 35.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502005, 35.096947, 35.179180>,  <24.499666, 34.783665, 35.427872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502005, 35.096947, 35.179180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938868, 0.209727, 0.273023,
		0.344228, -0.585322, -0.734102,
		0.005845, 0.783207, -0.621734,
		24.503757, 35.331909, 34.992661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073008, 34.797966, 34.856911>,  <24.499666, 34.783665, 35.427872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073008, 34.797966, 34.856911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964359, 35.148369, 35.016327>,  <24.899170, 35.358608, 35.111977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964359, 35.148369, 35.016327>,  <25.073008, 34.797966, 34.856911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964359, 35.148369, 35.016327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956471, 0.199799, 0.212706,
		0.106703, 0.438971, -0.892143,
		-0.271621, 0.876005, 0.398544,
		24.882874, 35.411171, 35.135891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570736, 35.368160, 34.687611>,  <25.073008, 34.797966, 34.856911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570736, 35.368160, 34.687611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385023, 35.482903, 35.022789>,  <25.273596, 35.551746, 35.223896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.385023, 35.482903, 35.022789>,  <25.570736, 35.368160, 34.687611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385023, 35.482903, 35.022789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857268, 0.383290, 0.343773,
		-0.222564, 0.877953, -0.423866,
		-0.464280, 0.286856, 0.837948,
		25.245739, 35.568958, 35.274174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079359, 35.042778, 34.306255>,  <25.570736, 35.368160, 34.687611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079359, 35.042778, 34.306255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436157, 35.191326, 34.203159>,  <26.650236, 35.280457, 34.141300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436157, 35.191326, 34.203159>,  <26.079359, 35.042778, 34.306255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436157, 35.191326, 34.203159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251042, -0.881117, -0.400763,
		-0.375933, 0.292774, -0.879180,
		0.891993, 0.371371, -0.257743,
		26.703754, 35.302738, 34.125835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198330, 34.865120, 33.678123>,  <26.079359, 35.042778, 34.306255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198330, 34.865120, 33.678123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576548, 34.887730, 33.806347>,  <26.803478, 34.901295, 33.883282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576548, 34.887730, 33.806347>,  <26.198330, 34.865120, 33.678123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576548, 34.887730, 33.806347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213703, -0.850628, -0.480378,
		0.245521, 0.522721, -0.816384,
		0.945542, 0.056521, 0.320554,
		26.860210, 34.904686, 33.902512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708904, 34.942005, 33.081612>,  <26.198330, 34.865120, 33.678123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708904, 34.942005, 33.081612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908417, 34.801601, 33.398602>,  <27.028124, 34.717358, 33.588795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908417, 34.801601, 33.398602>,  <26.708904, 34.942005, 33.081612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908417, 34.801601, 33.398602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373361, -0.738128, -0.561933,
		0.782189, 0.576159, -0.237111,
		0.498780, -0.351010, 0.792471,
		27.058050, 34.696297, 33.636341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338785, 34.782257, 32.831936>,  <26.708904, 34.942005, 33.081612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338785, 34.782257, 32.831936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320267, 34.570484, 33.170769>,  <27.309156, 34.443420, 33.374069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320267, 34.570484, 33.170769>,  <27.338785, 34.782257, 32.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320267, 34.570484, 33.170769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233240, -0.830285, -0.506188,
		0.971317, 0.174141, 0.161923,
		-0.046294, -0.529436, 0.847086,
		27.306377, 34.411652, 33.424896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912338, 34.549580, 32.992523>,  <27.338785, 34.782257, 32.831936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912338, 34.549580, 32.992523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695515, 34.292778, 33.209412>,  <27.565420, 34.138699, 33.339546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695515, 34.292778, 33.209412>,  <27.912338, 34.549580, 32.992523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695515, 34.292778, 33.209412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436203, -0.766466, -0.471441,
		0.718262, -0.019030, 0.695513,
		-0.542058, -0.642003, 0.542223,
		27.532898, 34.100178, 33.372078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356127, 33.961357, 32.971050>,  <27.912338, 34.549580, 32.992523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356127, 33.961357, 32.971050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022654, 33.806400, 33.128479>,  <27.822571, 33.713425, 33.222935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022654, 33.806400, 33.128479>,  <28.356127, 33.961357, 32.971050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022654, 33.806400, 33.128479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226500, -0.889836, -0.396093,
		0.503660, -0.241071, 0.829585,
		-0.833681, -0.387397, 0.393572,
		27.772549, 33.690182, 33.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549990, 33.402637, 33.345577>,  <28.356127, 33.961357, 32.971050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549990, 33.402637, 33.345577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172319, 33.369553, 33.218021>,  <27.945717, 33.349701, 33.141487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172319, 33.369553, 33.218021>,  <28.549990, 33.402637, 33.345577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172319, 33.369553, 33.218021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233212, -0.851498, -0.469641,
		-0.232686, -0.517793, 0.823254,
		-0.944176, -0.082714, -0.318887,
		27.889067, 33.344738, 33.122356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387850, 32.751865, 33.323372>,  <28.549990, 33.402637, 33.345577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387850, 32.751865, 33.323372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097437, 32.882168, 33.081131>,  <27.923189, 32.960350, 32.935787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097437, 32.882168, 33.081131>,  <28.387850, 32.751865, 33.323372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097437, 32.882168, 33.081131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081358, -0.833802, -0.546036,
		-0.682828, -0.445712, 0.578867,
		-0.726035, 0.325753, -0.605606,
		27.879627, 32.979893, 32.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007626, 32.137844, 33.115391>,  <28.387850, 32.751865, 33.323372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007626, 32.137844, 33.115391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899422, 32.404877, 32.837929>,  <27.834499, 32.565098, 32.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899422, 32.404877, 32.837929>,  <28.007626, 32.137844, 33.115391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899422, 32.404877, 32.837929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051362, -0.729500, -0.682050,
		-0.961347, -0.148873, 0.231624,
		-0.270508, 0.667583, -0.693656,
		27.818270, 32.605152, 32.629833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465773, 31.954279, 32.884331>,  <28.007626, 32.137844, 33.115391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465773, 31.954279, 32.884331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591864, 32.195797, 32.591465>,  <27.667519, 32.340710, 32.415745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591864, 32.195797, 32.591465>,  <27.465773, 31.954279, 32.884331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591864, 32.195797, 32.591465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021909, -0.775920, -0.630451,
		-0.948763, 0.182694, -0.257819,
		0.315227, 0.603797, -0.732162,
		27.686432, 32.376938, 32.371815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148399, 31.556683, 32.375553>,  <27.465773, 31.954279, 32.884331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148399, 31.556683, 32.375553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389456, 31.821766, 32.197723>,  <27.534090, 31.980816, 32.091026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389456, 31.821766, 32.197723>,  <27.148399, 31.556683, 32.375553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389456, 31.821766, 32.197723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310830, -0.708035, -0.634091,
		-0.734989, 0.243943, -0.632679,
		0.602641, 0.662706, -0.444573,
		27.570248, 32.020576, 32.064350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881035, 31.726971, 31.668287>,  <27.148399, 31.556683, 32.375553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881035, 31.726971, 31.668287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270296, 31.819006, 31.670492>,  <27.503853, 31.874228, 31.671814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270296, 31.819006, 31.670492>,  <26.881035, 31.726971, 31.668287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270296, 31.819006, 31.670492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137573, -0.562330, -0.815389,
		-0.184513, 0.794257, -0.578887,
		0.973154, 0.230089, 0.005511,
		27.562243, 31.888033, 31.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069433, 31.810326, 31.020559>,  <26.881035, 31.726971, 31.668287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069433, 31.810326, 31.020559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427971, 31.756845, 31.189646>,  <27.643093, 31.724758, 31.291098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427971, 31.756845, 31.189646>,  <27.069433, 31.810326, 31.020559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427971, 31.756845, 31.189646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241635, -0.652073, -0.718619,
		0.371722, 0.746274, -0.552176,
		0.896346, -0.133701, 0.422716,
		27.696875, 31.716736, 31.316460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552238, 31.886034, 30.527922>,  <27.069433, 31.810326, 31.020559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552238, 31.886034, 30.527922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736572, 31.676159, 30.814232>,  <27.847174, 31.550234, 30.986017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736572, 31.676159, 30.814232>,  <27.552238, 31.886034, 30.527922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736572, 31.676159, 30.814232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336709, -0.642854, -0.688016,
		0.821131, 0.558071, -0.119584,
		0.460837, -0.524687, 0.715775,
		27.874823, 31.518753, 31.028965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147163, 31.864790, 30.195105>,  <27.552238, 31.886034, 30.527922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147163, 31.864790, 30.195105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142080, 31.561682, 30.456064>,  <28.139030, 31.379818, 30.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.142080, 31.561682, 30.456064>,  <28.147163, 31.864790, 30.195105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142080, 31.561682, 30.456064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278651, -0.629290, -0.725499,
		0.960308, 0.172571, 0.219151,
		-0.012709, -0.757769, 0.652399,
		28.138268, 31.334351, 30.651785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664762, 31.470516, 29.932156>,  <28.147163, 31.864790, 30.195105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664762, 31.470516, 29.932156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471882, 31.218733, 30.175880>,  <28.356153, 31.067663, 30.322115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471882, 31.218733, 30.175880>,  <28.664762, 31.470516, 29.932156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471882, 31.218733, 30.175880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204873, -0.757254, -0.620156,
		0.851767, -0.174210, 0.494109,
		-0.482203, -0.629458, 0.609313,
		28.327221, 31.029896, 30.358675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087990, 30.922424, 30.029867>,  <28.664762, 31.470516, 29.932156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087990, 30.922424, 30.029867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723059, 30.779415, 30.109699>,  <28.504099, 30.693609, 30.157598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723059, 30.779415, 30.109699>,  <29.087990, 30.922424, 30.029867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723059, 30.779415, 30.109699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213490, -0.831278, -0.513224,
		0.349396, -0.425621, 0.834727,
		-0.912329, -0.357524, 0.199580,
		28.449360, 30.672157, 30.169573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129755, 30.239059, 30.179089>,  <29.087990, 30.922424, 30.029867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129755, 30.239059, 30.179089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747480, 30.279625, 30.068544>,  <28.518116, 30.303965, 30.002218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747480, 30.279625, 30.068544>,  <29.129755, 30.239059, 30.179089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747480, 30.279625, 30.068544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079940, -0.814103, -0.575192,
		-0.283317, -0.571797, 0.769922,
		-0.955689, 0.101415, -0.276359,
		28.460773, 30.310049, 29.985638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883236, 29.564289, 30.245363>,  <29.129755, 30.239059, 30.179089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883236, 29.564289, 30.245363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647436, 29.752348, 29.982622>,  <28.505957, 29.865183, 29.824978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647436, 29.752348, 29.982622>,  <28.883236, 29.564289, 30.245363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647436, 29.752348, 29.982622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228939, -0.682582, -0.694023,
		-0.774648, -0.559505, 0.294746,
		-0.589498, 0.470145, -0.656853,
		28.470587, 29.893391, 29.785566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739834, 29.082211, 29.716816>,  <28.883236, 29.564289, 30.245363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739834, 29.082211, 29.716816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582640, 29.400089, 29.531767>,  <28.488323, 29.590816, 29.420738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582640, 29.400089, 29.531767>,  <28.739834, 29.082211, 29.716816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582640, 29.400089, 29.531767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196087, -0.419103, -0.886512,
		-0.898395, -0.439099, 0.008871,
		-0.392985, 0.794698, -0.462622,
		28.464745, 29.638498, 29.392981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253397, 28.766781, 29.259630>,  <28.739834, 29.082211, 29.716816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253397, 28.766781, 29.259630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357878, 29.131132, 29.131834>,  <28.420567, 29.349743, 29.055157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357878, 29.131132, 29.131834>,  <28.253397, 28.766781, 29.259630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357878, 29.131132, 29.131834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333261, -0.395728, -0.855767,
		-0.905931, 0.117055, -0.406925,
		0.261203, 0.910877, -0.319492,
		28.436239, 29.404396, 29.035986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928516, 28.800488, 28.583748>,  <28.253397, 28.766781, 29.259630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928516, 28.800488, 28.583748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236111, 29.053415, 28.621346>,  <28.420668, 29.205172, 28.643904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236111, 29.053415, 28.621346>,  <27.928516, 28.800488, 28.583748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236111, 29.053415, 28.621346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505217, -0.511038, -0.695410,
		-0.391686, 0.582248, -0.712439,
		0.768985, 0.632319, 0.093996,
		28.466806, 29.243111, 28.649544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302822, 28.840698, 27.914124>,  <27.928516, 28.800488, 28.583748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302822, 28.840698, 27.914124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574682, 28.989254, 28.167150>,  <28.737799, 29.078388, 28.318966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574682, 28.989254, 28.167150>,  <28.302822, 28.840698, 27.914124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574682, 28.989254, 28.167150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722520, -0.487823, -0.489892,
		0.126639, 0.789998, -0.599888,
		0.679653, 0.371392, 0.632567,
		28.778578, 29.100672, 28.356920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873062, 29.134243, 27.470367>,  <28.302822, 28.840698, 27.914124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873062, 29.134243, 27.470367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978359, 29.050262, 27.847010>,  <29.041538, 28.999874, 28.072994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978359, 29.050262, 27.847010>,  <28.873062, 29.134243, 27.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978359, 29.050262, 27.847010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748243, -0.571663, -0.336651,
		0.608962, 0.793172, 0.006607,
		0.263245, -0.209951, 0.941606,
		29.057333, 28.987278, 28.129492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464115, 29.661476, 27.526114>,  <28.873062, 29.134243, 27.470367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464115, 29.661476, 27.526114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403379, 30.025448, 27.371723>,  <29.366938, 30.243830, 27.279089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403379, 30.025448, 27.371723>,  <29.464115, 29.661476, 27.526114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403379, 30.025448, 27.371723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883133, -0.050472, -0.466401,
		-0.443872, -0.411686, -0.795923,
		-0.151839, 0.909927, -0.385977,
		29.357828, 30.298426, 27.255930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654926, 29.686375, 26.800333>,  <29.464115, 29.661476, 27.526114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654926, 29.686375, 26.800333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737930, 30.049438, 26.946262>,  <29.787733, 30.267277, 27.033819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737930, 30.049438, 26.946262>,  <29.654926, 29.686375, 26.800333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737930, 30.049438, 26.946262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957541, -0.112170, -0.265579,
		-0.200134, 0.404442, -0.892397,
		0.207511, 0.907659, 0.364821,
		29.800184, 30.321735, 27.055708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154800, 30.068308, 26.396866>,  <29.654926, 29.686375, 26.800333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154800, 30.068308, 26.396866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205761, 30.357273, 26.668716>,  <30.236338, 30.530651, 26.831827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205761, 30.357273, 26.668716>,  <30.154800, 30.068308, 26.396866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205761, 30.357273, 26.668716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863652, 0.256137, -0.434164,
		-0.487722, 0.642273, -0.591280,
		0.127404, 0.722412, 0.679624,
		30.243982, 30.573997, 26.872604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119301, 30.701670, 25.966927>,  <30.154800, 30.068308, 26.396866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119301, 30.701670, 25.966927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326994, 30.706865, 26.308741>,  <30.451609, 30.709982, 26.513828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326994, 30.706865, 26.308741>,  <30.119301, 30.701670, 25.966927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326994, 30.706865, 26.308741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817918, 0.282375, -0.501273,
		-0.247810, 0.959216, 0.135995,
		0.519230, 0.012987, 0.854536,
		30.482763, 30.710762, 26.565102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238729, 31.478085, 26.123882>,  <30.119301, 30.701670, 25.966927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238729, 31.478085, 26.123882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334030, 31.861347, 26.187342>,  <30.391211, 32.091305, 26.225418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334030, 31.861347, 26.187342>,  <30.238729, 31.478085, 26.123882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334030, 31.861347, 26.187342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971089, -0.237534, -0.023764,
		0.014915, 0.159725, -0.987049,
		0.238253, 0.958157, 0.158650,
		30.405506, 32.148796, 26.234936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038128, 31.133476, 26.710854>,  <30.238729, 31.478085, 26.123882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038128, 31.133476, 26.710854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794500, 31.413651, 26.562031>,  <29.648325, 31.581755, 26.472738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794500, 31.413651, 26.562031>,  <30.038128, 31.133476, 26.710854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794500, 31.413651, 26.562031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373638, 0.160385, 0.913603,
		0.699594, 0.695459, 0.164025,
		-0.609066, 0.700438, -0.372055,
		29.611780, 31.623781, 26.450415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898521, 31.672785, 27.242603>,  <30.038128, 31.133476, 26.710854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898521, 31.672785, 27.242603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611378, 31.671558, 26.964130>,  <29.439091, 31.670822, 26.797047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611378, 31.671558, 26.964130>,  <29.898521, 31.672785, 27.242603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611378, 31.671558, 26.964130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663393, 0.306316, 0.682700,
		0.211159, 0.951925, -0.221925,
		-0.717859, -0.003065, -0.696182,
		29.396021, 31.670639, 26.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570936, 32.243633, 27.235706>,  <29.898521, 31.672785, 27.242603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570936, 32.243633, 27.235706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327631, 31.946798, 27.123049>,  <29.181648, 31.768698, 27.055454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327631, 31.946798, 27.123049>,  <29.570936, 32.243633, 27.235706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327631, 31.946798, 27.123049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661071, 0.277237, 0.697226,
		-0.439320, 0.610284, -0.659205,
		-0.608262, -0.742087, -0.281646,
		29.145153, 31.724173, 27.038555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923170, 32.462303, 26.953472>,  <29.570936, 32.243633, 27.235706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923170, 32.462303, 26.953472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941172, 32.142662, 27.193274>,  <28.951973, 31.950876, 27.337154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941172, 32.142662, 27.193274>,  <28.923170, 32.462303, 26.953472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941172, 32.142662, 27.193274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658757, 0.427405, 0.619164,
		-0.751008, -0.422792, -0.507181,
		0.045006, -0.799107, 0.599502,
		28.954674, 31.902929, 27.373125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169468, 32.201817, 27.129065>,  <28.923170, 32.462303, 26.953472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169468, 32.201817, 27.129065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449398, 32.146114, 27.409307>,  <28.617355, 32.112694, 27.577454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449398, 32.146114, 27.409307>,  <28.169468, 32.201817, 27.129065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449398, 32.146114, 27.409307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583530, 0.454248, 0.673166,
		-0.411993, -0.879924, 0.236633,
		0.699825, -0.139257, 0.700609,
		28.659346, 32.104336, 27.619490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850306, 32.178547, 27.709465>,  <28.169468, 32.201817, 27.129065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850306, 32.178547, 27.709465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223484, 32.238194, 27.840538>,  <28.447392, 32.273983, 27.919182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223484, 32.238194, 27.840538>,  <27.850306, 32.178547, 27.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223484, 32.238194, 27.840538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355191, 0.529758, 0.770192,
		-0.058746, -0.834938, 0.547200,
		0.932946, 0.149115, 0.327684,
		28.503368, 32.282928, 27.938843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810373, 32.223946, 28.455326>,  <27.850306, 32.178547, 27.709465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810373, 32.223946, 28.455326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181255, 32.367771, 28.413364>,  <28.403784, 32.454067, 28.388187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181255, 32.367771, 28.413364>,  <27.810373, 32.223946, 28.455326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181255, 32.367771, 28.413364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171298, 0.656144, 0.734937,
		0.333088, -0.663467, 0.669973,
		0.927205, 0.359564, -0.104903,
		28.459417, 32.475639, 28.381893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156750, 32.231510, 29.168844>,  <27.810373, 32.223946, 28.455326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156750, 32.231510, 29.168844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325871, 32.488110, 28.912806>,  <28.427343, 32.642067, 28.759182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325871, 32.488110, 28.912806>,  <28.156750, 32.231510, 29.168844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325871, 32.488110, 28.912806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172262, 0.750347, 0.638204,
		0.889700, -0.159568, 0.427752,
		0.422800, 0.641496, -0.640096,
		28.452711, 32.680557, 28.720778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655790, 32.498821, 29.539501>,  <28.156750, 32.231510, 29.168844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655790, 32.498821, 29.539501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573200, 32.771748, 29.258986>,  <28.523647, 32.935505, 29.090675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573200, 32.771748, 29.258986>,  <28.655790, 32.498821, 29.539501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573200, 32.771748, 29.258986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059730, 0.706608, 0.705080,
		0.976627, 0.187469, -0.105141,
		-0.206474, 0.682320, -0.701290,
		28.511257, 32.976444, 29.048599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852627, 33.017834, 29.848112>,  <28.655790, 32.498821, 29.539501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852627, 33.017834, 29.848112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630882, 33.185406, 29.560452>,  <28.497835, 33.285950, 29.387856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630882, 33.185406, 29.560452>,  <28.852627, 33.017834, 29.848112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630882, 33.185406, 29.560452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264651, 0.730500, 0.629547,
		0.789078, 0.539320, -0.294090,
		-0.554361, 0.418931, -0.719153,
		28.464575, 33.311085, 29.344706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961287, 33.673878, 29.922674>,  <28.852627, 33.017834, 29.848112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961287, 33.673878, 29.922674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619638, 33.664333, 29.714863>,  <28.414650, 33.658607, 29.590176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619638, 33.664333, 29.714863>,  <28.961287, 33.673878, 29.922674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619638, 33.664333, 29.714863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313488, 0.820688, 0.477699,
		0.414974, 0.570878, -0.708445,
		-0.854121, -0.023856, -0.519528,
		28.363401, 33.657177, 29.559004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882729, 34.358242, 29.556314>,  <28.961287, 33.673878, 29.922674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882729, 34.358242, 29.556314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532923, 34.171108, 29.607479>,  <28.323040, 34.058830, 29.638178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532923, 34.171108, 29.607479>,  <28.882729, 34.358242, 29.556314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532923, 34.171108, 29.607479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294316, 0.721516, 0.626732,
		-0.385494, 0.510439, -0.768665,
		-0.874513, -0.467832, 0.127910,
		28.270569, 34.030758, 29.645851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294937, 34.951271, 29.502226>,  <28.882729, 34.358242, 29.556314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294937, 34.951271, 29.502226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126902, 34.645550, 29.697924>,  <28.026081, 34.462116, 29.815342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126902, 34.645550, 29.697924>,  <28.294937, 34.951271, 29.502226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126902, 34.645550, 29.697924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376029, 0.637268, 0.672675,
		-0.825910, 0.098613, -0.555111,
		-0.420089, -0.764307, 0.489245,
		28.000875, 34.416256, 29.844698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581919, 35.135117, 29.629236>,  <28.294937, 34.951271, 29.502226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581919, 35.135117, 29.629236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670294, 34.865940, 29.911608>,  <27.723320, 34.704433, 30.081030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670294, 34.865940, 29.911608>,  <27.581919, 35.135117, 29.629236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670294, 34.865940, 29.911608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090134, 0.706628, 0.701821,
		-0.971114, -0.218688, 0.095466,
		0.220939, -0.672943, 0.705928,
		27.736576, 34.664059, 30.123386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083998, 35.289845, 30.131510>,  <27.581919, 35.135117, 29.629236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083998, 35.289845, 30.131510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359636, 35.069263, 30.319574>,  <27.525019, 34.936916, 30.432413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359636, 35.069263, 30.319574>,  <27.083998, 35.289845, 30.131510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359636, 35.069263, 30.319574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066028, 0.598317, 0.798534,
		-0.721657, -0.581310, 0.375886,
		0.689095, -0.551448, 0.470163,
		27.566364, 34.903828, 30.460623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821432, 35.221996, 30.824360>,  <27.083998, 35.289845, 30.131510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821432, 35.221996, 30.824360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216188, 35.157658, 30.829615>,  <27.453043, 35.119057, 30.832767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216188, 35.157658, 30.829615>,  <26.821432, 35.221996, 30.824360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216188, 35.157658, 30.829615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080691, 0.562306, 0.822983,
		-0.139757, -0.811136, 0.567915,
		0.986893, -0.160844, 0.013135,
		27.512257, 35.109406, 30.833555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041771, 34.983696, 31.410789>,  <26.821432, 35.221996, 30.824360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041771, 34.983696, 31.410789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392824, 35.142162, 31.302856>,  <27.603456, 35.237244, 31.238096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392824, 35.142162, 31.302856>,  <27.041771, 34.983696, 31.410789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392824, 35.142162, 31.302856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086821, 0.422239, 0.902317,
		0.471403, -0.815332, 0.336175,
		0.877634, 0.396168, -0.269832,
		27.656115, 35.261013, 31.221907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549501, 35.006668, 32.004299>,  <27.041771, 34.983696, 31.410789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549501, 35.006668, 32.004299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756506, 35.239124, 31.753075>,  <27.880709, 35.378597, 31.602341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756506, 35.239124, 31.753075>,  <27.549501, 35.006668, 32.004299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756506, 35.239124, 31.753075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488638, 0.401832, 0.774445,
		0.702435, -0.707677, -0.076015,
		0.517511, 0.581141, -0.628058,
		27.911760, 35.413467, 31.564657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142822, 34.931236, 32.290955>,  <27.549501, 35.006668, 32.004299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142822, 34.931236, 32.290955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180819, 35.257595, 32.062820>,  <28.203615, 35.453411, 31.925940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180819, 35.257595, 32.062820>,  <28.142822, 34.931236, 32.290955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180819, 35.257595, 32.062820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594807, 0.412888, 0.689730,
		0.798236, -0.404756, -0.446084,
		0.094989, 0.815902, -0.570335,
		28.209316, 35.502365, 31.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890646, 35.061298, 32.176670>,  <28.142822, 34.931236, 32.290955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890646, 35.061298, 32.176670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689211, 35.401619, 32.116631>,  <28.568350, 35.605812, 32.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689211, 35.401619, 32.116631>,  <28.890646, 35.061298, 32.176670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689211, 35.401619, 32.116631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620621, 0.477119, 0.622244,
		0.601026, 0.220197, -0.768298,
		-0.503586, 0.850806, -0.150102,
		28.538136, 35.656860, 32.071602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333355, 35.565468, 31.950874>,  <28.890646, 35.061298, 32.176670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333355, 35.565468, 31.950874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017914, 35.766941, 32.091961>,  <28.828650, 35.887825, 32.176613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017914, 35.766941, 32.091961>,  <29.333355, 35.565468, 31.950874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017914, 35.766941, 32.091961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607171, 0.547162, 0.576157,
		0.097205, 0.668520, -0.737314,
		-0.788603, 0.503681, 0.352719,
		28.781332, 35.918045, 32.197777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385010, 36.240116, 31.765438>,  <29.333355, 35.565468, 31.950874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385010, 36.240116, 31.765438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164728, 36.239105, 32.099316>,  <29.032558, 36.238499, 32.299641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164728, 36.239105, 32.099316>,  <29.385010, 36.240116, 31.765438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164728, 36.239105, 32.099316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730105, 0.483214, 0.483167,
		-0.404560, 0.875498, -0.264261,
		-0.550706, -0.002532, 0.834695,
		28.999516, 36.238346, 32.349724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301640, 36.873844, 31.959290>,  <29.385010, 36.240116, 31.765438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301640, 36.873844, 31.959290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288328, 36.665108, 32.300247>,  <29.280342, 36.539864, 32.504822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288328, 36.665108, 32.300247>,  <29.301640, 36.873844, 31.959290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288328, 36.665108, 32.300247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727948, 0.571730, 0.378438,
		-0.684824, 0.633091, 0.360850,
		-0.033277, -0.521843, 0.852392,
		29.278345, 36.508556, 32.555965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230268, 37.457836, 32.260159>,  <29.301640, 36.873844, 31.959290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230268, 37.457836, 32.260159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364212, 37.121166, 32.429607>,  <29.444578, 36.919167, 32.531277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364212, 37.121166, 32.429607>,  <29.230268, 37.457836, 32.260159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364212, 37.121166, 32.429607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872296, 0.446912, 0.198416,
		-0.356324, 0.303086, 0.883839,
		0.334861, -0.841670, 0.423626,
		29.464670, 36.868664, 32.556694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400789, 37.561668, 32.957115>,  <29.230268, 37.457836, 32.260159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400789, 37.561668, 32.957115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620897, 37.264088, 32.805462>,  <29.752962, 37.085541, 32.714470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620897, 37.264088, 32.805462>,  <29.400789, 37.561668, 32.957115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620897, 37.264088, 32.805462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830896, 0.442992, 0.336703,
		-0.082536, -0.500300, 0.861909,
		0.550272, -0.743948, -0.379135,
		29.785978, 37.040905, 32.691723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687412, 37.102257, 33.420609>,  <29.400789, 37.561668, 32.957115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687412, 37.102257, 33.420609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918648, 37.149559, 33.097664>,  <30.057388, 37.177940, 32.903896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918648, 37.149559, 33.097664>,  <29.687412, 37.102257, 33.420609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918648, 37.149559, 33.097664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573053, 0.645534, 0.504872,
		0.580882, -0.754521, 0.305409,
		0.578088, 0.118255, -0.807360,
		30.092073, 37.185036, 32.855457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362877, 37.295509, 33.622490>,  <29.687412, 37.102257, 33.420609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362877, 37.295509, 33.622490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353371, 37.407162, 33.238506>,  <30.347666, 37.474152, 33.008118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353371, 37.407162, 33.238506>,  <30.362877, 37.295509, 33.622490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353371, 37.407162, 33.238506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598540, 0.773086, 0.209973,
		0.800740, -0.569583, -0.185445,
		-0.023767, 0.279130, -0.959959,
		30.346241, 37.490902, 32.950520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988693, 37.234726, 33.187782>,  <30.362877, 37.295509, 33.622490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988693, 37.234726, 33.187782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764978, 37.562634, 33.138508>,  <30.630751, 37.759380, 33.108944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764978, 37.562634, 33.138508>,  <30.988693, 37.234726, 33.187782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764978, 37.562634, 33.138508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715119, 0.552274, 0.428484,
		0.419291, 0.151552, -0.895113,
		-0.559285, 0.819772, -0.123186,
		30.597193, 37.808563, 33.101551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459108, 37.711071, 33.174538>,  <30.988693, 37.234726, 33.187782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459108, 37.711071, 33.174538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121164, 37.882862, 33.302135>,  <30.918398, 37.985939, 33.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121164, 37.882862, 33.302135>,  <31.459108, 37.711071, 33.174538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121164, 37.882862, 33.302135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498617, 0.416052, 0.760448,
		0.193881, 0.801528, -0.565653,
		-0.844862, 0.429481, 0.318990,
		30.867706, 38.011707, 33.397831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641659, 38.449268, 33.318680>,  <31.459108, 37.711071, 33.174538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641659, 38.449268, 33.318680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341616, 38.290546, 33.530296>,  <31.161591, 38.195312, 33.657265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341616, 38.290546, 33.530296>,  <31.641659, 38.449268, 33.318680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341616, 38.290546, 33.530296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384232, 0.389595, 0.837007,
		-0.538242, 0.831119, -0.139772,
		-0.750107, -0.396808, 0.529039,
		31.116583, 38.171505, 33.689007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214739, 39.083305, 33.593784>,  <31.641659, 38.449268, 33.318680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214739, 39.083305, 33.593784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248323, 38.722515, 33.763199>,  <31.268475, 38.506039, 33.864849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248323, 38.722515, 33.763199>,  <31.214739, 39.083305, 33.593784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248323, 38.722515, 33.763199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584327, 0.388860, 0.712285,
		-0.807163, 0.187681, 0.559699,
		0.083962, -0.901978, 0.423541,
		31.273512, 38.451923, 33.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114830, 39.005398, 34.328796>,  <31.214739, 39.083305, 33.593784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114830, 39.005398, 34.328796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388332, 38.731789, 34.227139>,  <31.552433, 38.567623, 34.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388332, 38.731789, 34.227139>,  <31.114830, 39.005398, 34.328796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388332, 38.731789, 34.227139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522986, 0.216487, 0.824390,
		-0.508886, -0.696593, 0.505760,
		0.683754, -0.684026, -0.254142,
		31.593458, 38.526581, 34.150894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213970, 38.584564, 34.918266>,  <31.114830, 39.005398, 34.328796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213970, 38.584564, 34.918266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548866, 38.564095, 34.700493>,  <31.749804, 38.551811, 34.569828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548866, 38.564095, 34.700493>,  <31.213970, 38.584564, 34.918266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548866, 38.564095, 34.700493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546289, 0.122726, 0.828557,
		0.024414, -0.991120, 0.130709,
		0.837241, -0.051176, -0.544434,
		31.800039, 38.548740, 34.537163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616982, 38.319080, 35.454296>,  <31.213970, 38.584564, 34.918266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616982, 38.319080, 35.454296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859024, 38.420269, 35.152344>,  <32.004250, 38.480980, 34.971172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859024, 38.420269, 35.152344>,  <31.616982, 38.319080, 35.454296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859024, 38.420269, 35.152344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709986, 0.257557, 0.655426,
		0.360230, -0.932561, -0.023757,
		0.605106, 0.252971, -0.754885,
		32.040558, 38.496159, 34.925877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304523, 37.984295, 35.476120>,  <31.616982, 38.319080, 35.454296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304523, 37.984295, 35.476120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 38.328129, 35.282654>,  <32.410061, 38.534428, 35.166576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 38.328129, 35.282654>,  <32.304523, 37.984295, 35.476120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370483, 38.328129, 35.282654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690553, 0.249512, 0.678882,
		0.704233, -0.445942, -0.552441,
		0.164901, 0.859581, -0.483661,
		32.419952, 38.586002, 35.137554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056328, 38.011532, 35.483974>,  <32.304523, 37.984295, 35.476120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056328, 38.011532, 35.483974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894100, 38.369560, 35.409824>,  <32.796764, 38.584377, 35.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894100, 38.369560, 35.409824>,  <33.056328, 38.011532, 35.483974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894100, 38.369560, 35.409824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601505, 0.414040, 0.683201,
		0.688265, 0.165581, -0.706310,
		-0.405566, 0.895072, -0.185371,
		32.772430, 38.638081, 35.354214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635021, 38.470646, 35.486565>,  <33.056328, 38.011532, 35.483974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635021, 38.470646, 35.486565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307957, 38.696720, 35.530376>,  <33.111717, 38.832367, 35.556664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307957, 38.696720, 35.530376>,  <33.635021, 38.470646, 35.486565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307957, 38.696720, 35.530376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510166, 0.623189, 0.592761,
		0.266766, 0.540553, -0.797896,
		-0.817659, 0.565189, 0.109526,
		33.062660, 38.866276, 35.563232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921619, 39.174580, 35.504810>,  <33.635021, 38.470646, 35.486565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921619, 39.174580, 35.504810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555504, 39.191387, 35.665047>,  <33.335835, 39.201473, 35.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555504, 39.191387, 35.665047>,  <33.921619, 39.174580, 35.504810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555504, 39.191387, 35.665047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342579, 0.604303, 0.719345,
		-0.211851, 0.795645, -0.567510,
		-0.915291, 0.042023, 0.400594,
		33.280918, 39.203995, 35.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821983, 39.905151, 35.713947>,  <33.921619, 39.174580, 35.504810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821983, 39.905151, 35.713947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532570, 39.711178, 35.910454>,  <33.358921, 39.594795, 36.028358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532570, 39.711178, 35.910454>,  <33.821983, 39.905151, 35.713947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532570, 39.711178, 35.910454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203375, 0.530339, 0.823030,
		-0.659654, 0.695398, -0.285093,
		-0.723530, -0.484934, 0.491267,
		33.315510, 39.565697, 36.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471012, 40.399696, 36.141682>,  <33.821983, 39.905151, 35.713947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471012, 40.399696, 36.141682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343658, 40.058475, 36.307060>,  <33.267246, 39.853745, 36.406288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343658, 40.058475, 36.307060>,  <33.471012, 40.399696, 36.141682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343658, 40.058475, 36.307060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194595, 0.368039, 0.909220,
		-0.927775, 0.369932, 0.048823,
		-0.318381, -0.853052, 0.413444,
		33.248146, 39.802559, 36.431095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253536, 40.656418, 36.775467>,  <33.471012, 40.399696, 36.141682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253536, 40.656418, 36.775467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269821, 40.262348, 36.842133>,  <33.279594, 40.025906, 36.882130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269821, 40.262348, 36.842133>,  <33.253536, 40.656418, 36.775467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269821, 40.262348, 36.842133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189816, 0.171388, 0.966745,
		-0.980975, -0.007727, 0.193980,
		0.040715, -0.985173, 0.166660,
		33.282036, 39.966797, 36.892132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878601, 40.584454, 37.417789>,  <33.253536, 40.656418, 36.775467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878601, 40.584454, 37.417789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084751, 40.244877, 37.371006>,  <33.208443, 40.041130, 37.342937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084751, 40.244877, 37.371006>,  <32.878601, 40.584454, 37.417789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084751, 40.244877, 37.371006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066673, -0.096346, 0.993113,
		-0.854365, -0.519626, 0.006947,
		0.515378, -0.848944, -0.116960,
		33.239365, 39.990192, 37.335918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556953, 40.062794, 37.776718>,  <32.878601, 40.584454, 37.417789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556953, 40.062794, 37.776718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930580, 39.924843, 37.739685>,  <33.154758, 39.842072, 37.717464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930580, 39.924843, 37.739685>,  <32.556953, 40.062794, 37.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930580, 39.924843, 37.739685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027557, -0.328119, 0.944234,
		-0.356035, -0.879426, -0.315989,
		0.934066, -0.344888, -0.092588,
		33.210800, 39.821381, 37.711910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538334, 39.330830, 37.941158>,  <32.556953, 40.062794, 37.776718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538334, 39.330830, 37.941158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920582, 39.438660, 37.988682>,  <33.149933, 39.503357, 38.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920582, 39.438660, 37.988682>,  <32.538334, 39.330830, 37.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920582, 39.438660, 37.988682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011140, -0.369948, 0.928986,
		0.294385, -0.889083, -0.350527,
		0.955622, 0.269574, 0.118812,
		33.207268, 39.519531, 38.024326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877861, 38.736633, 38.323204>,  <32.538334, 39.330830, 37.941158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877861, 38.736633, 38.323204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115925, 39.054321, 38.372196>,  <33.258762, 39.244934, 38.401592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115925, 39.054321, 38.372196>,  <32.877861, 38.736633, 38.323204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115925, 39.054321, 38.372196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112092, -0.232971, 0.966002,
		0.795750, -0.561198, -0.227681,
		0.595162, 0.794217, 0.122481,
		33.294472, 39.292587, 38.408939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440083, 38.560642, 38.669647>,  <32.877861, 38.736633, 38.323204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440083, 38.560642, 38.669647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435982, 38.953644, 38.744026>,  <33.433521, 39.189445, 38.788654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435982, 38.953644, 38.744026>,  <33.440083, 38.560642, 38.669647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435982, 38.953644, 38.744026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115527, -0.183546, 0.976199,
		0.993251, 0.031494, -0.111623,
		-0.010257, 0.982506, 0.185946,
		33.432903, 39.248394, 38.799809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961353, 38.592720, 39.204796>,  <33.440083, 38.560642, 38.669647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961353, 38.592720, 39.204796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698757, 38.894341, 39.212955>,  <33.541199, 39.075314, 39.217854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698757, 38.894341, 39.212955>,  <33.961353, 38.592720, 39.204796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698757, 38.894341, 39.212955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002994, -0.029650, 0.999556,
		0.754325, 0.656142, 0.021722,
		-0.656494, 0.754055, 0.020401,
		33.501808, 39.120556, 39.219074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162945, 38.977993, 39.942112>,  <33.961353, 38.592720, 39.204796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162945, 38.977993, 39.942112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825878, 39.160408, 39.827614>,  <33.623638, 39.269859, 39.758915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825878, 39.160408, 39.827614>,  <34.162945, 38.977993, 39.942112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825878, 39.160408, 39.827614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200873, 0.226986, 0.952957,
		0.499561, 0.860526, -0.099668,
		-0.842668, 0.456040, -0.286249,
		33.573078, 39.297218, 39.741737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153080, 39.580185, 40.307301>,  <34.162945, 38.977993, 39.942112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153080, 39.580185, 40.307301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777412, 39.502735, 40.193825>,  <33.552013, 39.456264, 40.125740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777412, 39.502735, 40.193825>,  <34.153080, 39.580185, 40.307301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777412, 39.502735, 40.193825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336337, 0.351019, 0.873878,
		-0.069621, 0.916131, -0.394787,
		-0.939165, -0.193621, -0.283691,
		33.495663, 39.444649, 40.108719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769218, 40.189949, 40.403004>,  <34.153080, 39.580185, 40.307301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769218, 40.189949, 40.403004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504089, 39.891376, 40.426666>,  <33.345013, 39.712231, 40.440865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504089, 39.891376, 40.426666>,  <33.769218, 40.189949, 40.403004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504089, 39.891376, 40.426666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192891, 0.246548, 0.949740,
		-0.723505, 0.618099, -0.307398,
		-0.662823, -0.746436, 0.059153,
		33.305241, 39.667446, 40.444412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169304, 40.443478, 40.699902>,  <33.769218, 40.189949, 40.403004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169304, 40.443478, 40.699902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098778, 40.052509, 40.746471>,  <33.056461, 39.817928, 40.774414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098778, 40.052509, 40.746471>,  <33.169304, 40.443478, 40.699902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098778, 40.052509, 40.746471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380915, 0.176818, 0.907546,
		-0.907643, 0.115669, -0.403491,
		-0.176320, -0.977423, 0.116427,
		33.045883, 39.759281, 40.781399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439659, 40.324108, 40.780174>,  <33.169304, 40.443478, 40.699902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439659, 40.324108, 40.780174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633842, 40.008465, 40.930717>,  <32.750351, 39.819080, 41.021042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633842, 40.008465, 40.930717>,  <32.439659, 40.324108, 40.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633842, 40.008465, 40.930717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408880, 0.175577, 0.895539,
		-0.772754, -0.588631, -0.237414,
		0.485457, -0.789105, 0.376357,
		32.779480, 39.771732, 41.043625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835701, 39.870445, 41.022533>,  <32.439659, 40.324108, 40.780174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835701, 39.870445, 41.022533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176468, 39.735394, 41.182655>,  <32.380928, 39.654362, 41.278728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176468, 39.735394, 41.182655>,  <31.835701, 39.870445, 41.022533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176468, 39.735394, 41.182655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502361, -0.311006, 0.806789,
		-0.147896, -0.888416, -0.434562,
		0.851916, -0.337628, 0.400309,
		32.432041, 39.634106, 41.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682249, 39.187126, 41.416855>,  <31.835701, 39.870445, 41.022533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682249, 39.187126, 41.416855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020725, 39.325684, 41.578831>,  <32.223812, 39.408817, 41.676018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020725, 39.325684, 41.578831>,  <31.682249, 39.187126, 41.416855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020725, 39.325684, 41.578831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425677, -0.017739, 0.904701,
		0.320563, -0.937923, 0.132440,
		0.846191, 0.346391, 0.404939,
		32.274582, 39.429600, 41.700314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839804, 38.764500, 41.981972>,  <31.682249, 39.187126, 41.416855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839804, 38.764500, 41.981972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031044, 39.109406, 42.048809>,  <32.145786, 39.316349, 42.088913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031044, 39.109406, 42.048809>,  <31.839804, 38.764500, 41.981972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031044, 39.109406, 42.048809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171727, -0.094806, 0.980572,
		0.861353, -0.497507, 0.102747,
		0.478101, 0.862264, 0.167097,
		32.174473, 39.368084, 42.098938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336422, 38.624050, 42.536396>,  <31.839804, 38.764500, 41.981972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336422, 38.624050, 42.536396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313694, 39.023190, 42.549522>,  <32.300056, 39.262672, 42.557400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313694, 39.023190, 42.549522>,  <32.336422, 38.624050, 42.536396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313694, 39.023190, 42.549522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321508, -0.049409, 0.945617,
		0.945200, 0.043183, 0.323623,
		-0.056824, 0.997845, 0.032818,
		32.296646, 39.322544, 42.559368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563080, 38.804195, 43.148884>,  <32.336422, 38.624050, 42.536396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563080, 38.804195, 43.148884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335800, 39.118961, 43.052628>,  <32.199432, 39.307823, 42.994873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335800, 39.118961, 43.052628>,  <32.563080, 38.804195, 43.148884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335800, 39.118961, 43.052628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434292, -0.038376, 0.899954,
		0.698956, 0.615862, 0.363558,
		-0.568200, 0.786918, -0.240642,
		32.165340, 39.355038, 42.980434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666378, 39.138309, 43.797482>,  <32.563080, 38.804195, 43.148884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666378, 39.138309, 43.797482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348766, 39.305107, 43.620556>,  <32.158199, 39.405186, 43.514400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348766, 39.305107, 43.620556>,  <32.666378, 39.138309, 43.797482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348766, 39.305107, 43.620556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423265, 0.142998, 0.894650,
		0.436314, 0.897589, 0.062955,
		-0.794025, 0.416995, -0.442310,
		32.110558, 39.430206, 43.487862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582874, 39.722122, 44.152588>,  <32.666378, 39.138309, 43.797482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582874, 39.722122, 44.152588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235840, 39.631199, 43.975670>,  <32.027618, 39.576645, 43.869518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235840, 39.631199, 43.975670>,  <32.582874, 39.722122, 44.152588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235840, 39.631199, 43.975670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484900, 0.189458, 0.853802,
		-0.110278, 0.955216, -0.274592,
		-0.867589, -0.227305, -0.442291,
		31.975563, 39.563007, 43.842983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086658, 40.337036, 44.189381>,  <32.582874, 39.722122, 44.152588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086658, 40.337036, 44.189381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838644, 40.033859, 44.108311>,  <31.689835, 39.851955, 44.059669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838644, 40.033859, 44.108311>,  <32.086658, 40.337036, 44.189381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838644, 40.033859, 44.108311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678009, 0.387647, 0.624527,
		-0.394786, 0.524648, -0.754247,
		-0.620039, -0.757940, -0.202678,
		31.652632, 39.806477, 44.047508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467827, 40.574959, 44.072075>,  <32.086658, 40.337036, 44.189381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467827, 40.574959, 44.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362402, 40.200218, 44.164021>,  <31.299147, 39.975372, 44.219189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362402, 40.200218, 44.164021>,  <31.467827, 40.574959, 44.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362402, 40.200218, 44.164021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792894, 0.346115, 0.501521,
		-0.549412, -0.050079, -0.834049,
		-0.263561, -0.936855, 0.229867,
		31.283333, 39.919163, 44.232979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688671, 40.518955, 44.237099>,  <31.467827, 40.574959, 44.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688671, 40.518955, 44.237099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795757, 40.165142, 44.389900>,  <30.860010, 39.952854, 44.481579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795757, 40.165142, 44.389900>,  <30.688671, 40.518955, 44.237099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795757, 40.165142, 44.389900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631750, 0.138200, 0.762754,
		-0.727475, -0.445531, -0.521806,
		0.267717, -0.884535, 0.382001,
		30.876072, 39.899780, 44.504501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034554, 40.303085, 44.626621>,  <30.688671, 40.518955, 44.237099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034554, 40.303085, 44.626621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322870, 40.080265, 44.791618>,  <30.495861, 39.946571, 44.890617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322870, 40.080265, 44.791618>,  <30.034554, 40.303085, 44.626621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322870, 40.080265, 44.791618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399977, 0.151760, 0.903874,
		-0.566106, -0.816492, -0.113421,
		0.720793, -0.557055, 0.412490,
		30.539108, 39.913151, 44.915367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710785, 39.636360, 44.949890>,  <30.034554, 40.303085, 44.626621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710785, 39.636360, 44.949890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067133, 39.711246, 45.115444>,  <30.280943, 39.756180, 45.214775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067133, 39.711246, 45.115444>,  <29.710785, 39.636360, 44.949890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067133, 39.711246, 45.115444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426845, 0.033296, 0.903712,
		0.155410, -0.981754, 0.109575,
		0.890871, 0.187217, 0.413882,
		30.334394, 39.767410, 45.239609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843693, 39.050480, 45.429359>,  <29.710785, 39.636360, 44.949890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843693, 39.050480, 45.429359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065159, 39.368599, 45.528126>,  <30.198038, 39.559471, 45.587383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065159, 39.368599, 45.528126>,  <29.843693, 39.050480, 45.429359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065159, 39.368599, 45.528126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380856, -0.021847, 0.924376,
		0.740545, -0.605831, 0.290796,
		0.553663, 0.795293, 0.246914,
		30.231258, 39.607185, 45.602200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129766, 38.904327, 46.171516>,  <29.843693, 39.050480, 45.429359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129766, 38.904327, 46.171516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116795, 39.297295, 46.097973>,  <30.109011, 39.533073, 46.053848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116795, 39.297295, 46.097973>,  <30.129766, 38.904327, 46.171516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116795, 39.297295, 46.097973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360857, 0.160034, 0.918788,
		0.932057, 0.096142, 0.349323,
		-0.032430, 0.982418, -0.183855,
		30.107065, 39.592022, 46.042816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402203, 39.217258, 46.727798>,  <30.129766, 38.904327, 46.171516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402203, 39.217258, 46.727798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197998, 39.516476, 46.558182>,  <30.075476, 39.696007, 46.456413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.197998, 39.516476, 46.558182>,  <30.402203, 39.217258, 46.727798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197998, 39.516476, 46.558182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456438, 0.182183, 0.870904,
		0.728728, 0.638152, 0.248430,
		-0.510509, 0.748045, -0.424039,
		30.044846, 39.740891, 46.430969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290493, 39.637936, 47.387249>,  <30.402203, 39.217258, 46.727798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290493, 39.637936, 47.387249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046680, 39.793861, 47.111130>,  <29.900393, 39.887417, 46.945457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046680, 39.793861, 47.111130>,  <30.290493, 39.637936, 47.387249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046680, 39.793861, 47.111130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620614, 0.307155, 0.721453,
		0.493263, 0.868158, 0.054706,
		-0.609533, 0.389817, -0.690299,
		29.863821, 39.910805, 46.904041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151405, 40.274433, 47.616344>,  <30.290493, 39.637936, 47.387249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151405, 40.274433, 47.616344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856293, 40.235638, 47.349133>,  <29.679224, 40.212360, 47.188805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856293, 40.235638, 47.349133>,  <30.151405, 40.274433, 47.616344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856293, 40.235638, 47.349133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670619, 0.218355, 0.708937,
		0.077109, 0.971038, -0.226142,
		-0.737783, -0.096990, -0.668034,
		29.634958, 40.206539, 47.148724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715841, 40.690403, 47.939896>,  <30.151405, 40.274433, 47.616344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715841, 40.690403, 47.939896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511415, 40.486897, 47.662777>,  <29.388760, 40.364792, 47.496506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511415, 40.486897, 47.662777>,  <29.715841, 40.690403, 47.939896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511415, 40.486897, 47.662777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749713, -0.130378, 0.648793,
		-0.420407, 0.850978, -0.314794,
		-0.511066, -0.508762, -0.692800,
		29.358095, 40.334267, 47.454937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084101, 40.957367, 47.826294>,  <29.715841, 40.690403, 47.939896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084101, 40.957367, 47.826294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035074, 40.569340, 47.742447>,  <29.005657, 40.336521, 47.692139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035074, 40.569340, 47.742447>,  <29.084101, 40.957367, 47.826294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035074, 40.569340, 47.742447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585317, -0.099911, 0.804626,
		-0.801487, 0.221312, -0.555553,
		-0.122567, -0.970071, -0.209615,
		28.998304, 40.278316, 47.679562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376534, 40.713390, 47.801003>,  <29.084101, 40.957367, 47.826294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376534, 40.713390, 47.801003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587870, 40.381241, 47.871811>,  <28.714670, 40.181950, 47.914295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587870, 40.381241, 47.871811>,  <28.376534, 40.713390, 47.801003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587870, 40.381241, 47.871811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496974, -0.133415, 0.857448,
		-0.688386, -0.540997, -0.483163,
		0.528338, -0.830375, 0.177020,
		28.746370, 40.132130, 47.924915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949644, 40.336956, 48.091206>,  <28.376534, 40.713390, 47.801003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949644, 40.336956, 48.091206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313774, 40.211235, 48.198929>,  <28.532251, 40.135803, 48.263561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313774, 40.211235, 48.198929>,  <27.949644, 40.336956, 48.091206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313774, 40.211235, 48.198929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302918, -0.062536, 0.950962,
		-0.282050, -0.947260, -0.152137,
		0.910323, -0.314304, 0.269304,
		28.586870, 40.116943, 48.279720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806847, 39.663868, 48.399570>,  <27.949644, 40.336956, 48.091206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806847, 39.663868, 48.399570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143633, 39.853706, 48.502216>,  <28.345705, 39.967609, 48.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143633, 39.853706, 48.502216>,  <27.806847, 39.663868, 48.399570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143633, 39.853706, 48.502216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351308, 0.121275, 0.928372,
		0.409482, -0.871809, 0.268839,
		0.841966, 0.474597, 0.256614,
		28.396223, 39.996086, 48.579201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016256, 39.366474, 49.011192>,  <27.806847, 39.663868, 48.399570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016256, 39.366474, 49.011192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148220, 39.742222, 48.973782>,  <28.227398, 39.967670, 48.951336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148220, 39.742222, 48.973782>,  <28.016256, 39.366474, 49.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148220, 39.742222, 48.973782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234000, 0.177357, 0.955923,
		0.914551, -0.293484, 0.278323,
		0.329911, 0.939368, -0.093527,
		28.247192, 40.024033, 48.945724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645042, 39.511028, 49.419273>,  <28.016256, 39.366474, 49.011192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645042, 39.511028, 49.419273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388050, 39.805130, 49.332912>,  <28.233854, 39.981590, 49.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388050, 39.805130, 49.332912>,  <28.645042, 39.511028, 49.419273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388050, 39.805130, 49.332912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165947, 0.141561, 0.975921,
		0.748116, 0.662841, 0.031063,
		-0.642483, 0.735257, -0.215901,
		28.195305, 40.025707, 49.268143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363760, 39.810783, 50.032684>,  <28.645042, 39.511028, 49.419273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363760, 39.810783, 50.032684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166342, 40.089443, 49.824417>,  <28.047892, 40.256638, 49.699455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166342, 40.089443, 49.824417>,  <28.363760, 39.810783, 50.032684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166342, 40.089443, 49.824417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295261, 0.428897, 0.853738,
		0.818068, 0.575090, -0.005987,
		-0.493544, 0.696648, -0.520669,
		28.018278, 40.298439, 49.668217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906563, 40.225819, 50.297009>,  <28.363760, 39.810783, 50.032684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906563, 40.225819, 50.297009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070389, 40.015652, 50.595322>,  <29.168684, 39.889553, 50.774311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070389, 40.015652, 50.595322>,  <28.906563, 40.225819, 50.297009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070389, 40.015652, 50.595322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477445, -0.573152, -0.665990,
		0.777370, 0.628838, 0.016114,
		0.409564, -0.525414, 0.745787,
		29.193258, 39.858028, 50.819057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601337, 40.177792, 50.242405>,  <28.906563, 40.225819, 50.297009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601337, 40.177792, 50.242405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455257, 39.842915, 50.405251>,  <29.367609, 39.641987, 50.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455257, 39.842915, 50.405251>,  <29.601337, 40.177792, 50.242405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455257, 39.842915, 50.405251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548056, -0.546849, -0.632922,
		0.752505, -0.008024, 0.658537,
		-0.365199, -0.837193, 0.407109,
		29.345697, 39.591755, 50.527382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005491, 39.678555, 49.993477>,  <29.601337, 40.177792, 50.242405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005491, 39.678555, 49.993477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786100, 39.437908, 50.225761>,  <29.654465, 39.293522, 50.365131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786100, 39.437908, 50.225761>,  <30.005491, 39.678555, 49.993477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786100, 39.437908, 50.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450787, -0.797679, -0.400624,
		0.704246, 0.042045, 0.708710,
		-0.548479, -0.601615, 0.580715,
		29.621557, 39.257423, 50.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422789, 39.173626, 50.444210>,  <30.005491, 39.678555, 49.993477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422789, 39.173626, 50.444210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052921, 39.023064, 50.421204>,  <29.831001, 38.932724, 50.407398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052921, 39.023064, 50.421204>,  <30.422789, 39.173626, 50.444210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052921, 39.023064, 50.421204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306357, -0.645700, -0.699441,
		0.226136, -0.664370, 0.712372,
		-0.924666, -0.376409, -0.057518,
		29.775522, 38.910141, 50.403950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499256, 38.400272, 50.616276>,  <30.422789, 39.173626, 50.444210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499256, 38.400272, 50.616276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215796, 38.519970, 50.360695>,  <30.045719, 38.591789, 50.207344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215796, 38.519970, 50.360695>,  <30.499256, 38.400272, 50.616276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215796, 38.519970, 50.360695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416417, -0.553671, -0.721142,
		-0.569575, -0.777108, 0.267744,
		-0.708647, 0.299251, -0.638958,
		30.003201, 38.609745, 50.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517673, 37.871445, 50.091530>,  <30.499256, 38.400272, 50.616276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517673, 37.871445, 50.091530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231348, 38.075691, 49.900997>,  <30.059553, 38.198238, 49.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231348, 38.075691, 49.900997>,  <30.517673, 37.871445, 50.091530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231348, 38.075691, 49.900997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125028, -0.577391, -0.806838,
		-0.687011, -0.637097, 0.349461,
		-0.715810, 0.510614, -0.476329,
		30.016605, 38.228874, 49.758099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014128, 37.409119, 49.898457>,  <30.517673, 37.871445, 50.091530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014128, 37.409119, 49.898457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994312, 37.721546, 49.649467>,  <29.982422, 37.909004, 49.500072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994312, 37.721546, 49.649467>,  <30.014128, 37.409119, 49.898457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994312, 37.721546, 49.649467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147879, -0.622107, -0.768840,
		-0.987764, 0.053962, 0.146323,
		-0.049540, 0.781070, -0.622475,
		29.979450, 37.955868, 49.462727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423876, 37.230488, 49.549088>,  <30.014128, 37.409119, 49.898457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423876, 37.230488, 49.549088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706741, 37.442154, 49.361511>,  <29.876461, 37.569153, 49.248966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706741, 37.442154, 49.361511>,  <29.423876, 37.230488, 49.549088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706741, 37.442154, 49.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006855, -0.668331, -0.743832,
		-0.707019, 0.522795, -0.476246,
		0.707162, 0.529168, -0.468939,
		29.918890, 37.600903, 49.220829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394892, 36.916531, 48.964497>,  <29.423876, 37.230488, 49.549088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394892, 36.916531, 48.964497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705334, 37.161221, 48.903233>,  <29.891600, 37.308033, 48.866474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705334, 37.161221, 48.903233>,  <29.394892, 36.916531, 48.964497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705334, 37.161221, 48.903233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111022, -0.371628, -0.921719,
		-0.620752, 0.698349, -0.356337,
		0.776106, 0.611720, -0.153157,
		29.938166, 37.344738, 48.857285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383526, 37.088608, 48.264225>,  <29.394892, 36.916531, 48.964497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383526, 37.088608, 48.264225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751978, 37.214577, 48.355740>,  <29.973049, 37.290157, 48.410648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751978, 37.214577, 48.355740>,  <29.383526, 37.088608, 48.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751978, 37.214577, 48.355740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325993, -0.302936, -0.895521,
		-0.212711, 0.899475, -0.381706,
		0.921131, 0.314921, 0.228785,
		30.028316, 37.309052, 48.424374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756548, 37.526455, 47.685745>,  <29.383526, 37.088608, 48.264225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756548, 37.526455, 47.685745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066711, 37.386246, 47.895840>,  <30.252810, 37.302120, 48.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066711, 37.386246, 47.895840>,  <29.756548, 37.526455, 47.685745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066711, 37.386246, 47.895840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439987, -0.296717, -0.847567,
		0.452935, 0.888311, -0.075853,
		0.775410, -0.350519, 0.525239,
		30.299334, 37.281090, 48.053410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376532, 37.589279, 47.261494>,  <29.756548, 37.526455, 47.685745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376532, 37.589279, 47.261494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552324, 37.387310, 47.558655>,  <30.657801, 37.266129, 47.736950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552324, 37.387310, 47.558655>,  <30.376532, 37.589279, 47.261494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552324, 37.387310, 47.558655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772587, -0.209416, -0.599378,
		0.458217, 0.837374, 0.298064,
		0.439484, -0.504926, 0.742903,
		30.684170, 37.235832, 47.781525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101624, 37.843422, 47.451775>,  <30.376532, 37.589279, 47.261494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101624, 37.843422, 47.451775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088047, 37.460979, 47.568195>,  <31.079901, 37.231514, 47.638046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088047, 37.460979, 47.568195>,  <31.101624, 37.843422, 47.451775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088047, 37.460979, 47.568195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620119, -0.248528, -0.744101,
		0.783773, 0.155229, 0.601335,
		-0.033943, -0.956105, 0.291050,
		31.077864, 37.174149, 47.655510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737551, 37.564724, 47.399067>,  <31.101624, 37.843422, 47.451775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737551, 37.564724, 47.399067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501190, 37.242165, 47.389671>,  <31.359373, 37.048630, 47.384033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501190, 37.242165, 47.389671>,  <31.737551, 37.564724, 47.399067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501190, 37.242165, 47.389671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536898, -0.371352, -0.757521,
		0.602142, -0.460234, 0.652388,
		-0.590903, -0.806401, -0.023493,
		31.323919, 37.000244, 47.382622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143959, 36.984558, 47.399601>,  <31.737551, 37.564724, 47.399067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143959, 36.984558, 47.399601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794695, 36.868282, 47.243092>,  <31.585136, 36.798515, 47.149185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794695, 36.868282, 47.243092>,  <32.143959, 36.984558, 47.399601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794695, 36.868282, 47.243092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480632, -0.379797, -0.790409,
		0.081161, -0.878210, 0.471339,
		-0.873158, -0.290691, -0.391272,
		31.532747, 36.781075, 47.125710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229851, 36.342190, 47.178299>,  <32.143959, 36.984558, 47.399601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229851, 36.342190, 47.178299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900541, 36.435501, 46.971302>,  <31.702955, 36.491489, 46.847103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900541, 36.435501, 46.971302>,  <32.229851, 36.342190, 47.178299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900541, 36.435501, 46.971302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441462, -0.309967, -0.842040,
		-0.356836, -0.921684, 0.152205,
		-0.823274, 0.233278, -0.517496,
		31.653559, 36.505486, 46.816051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302929, 35.876312, 46.641239>,  <32.229851, 36.342190, 47.178299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302929, 35.876312, 46.641239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040871, 36.146828, 46.506531>,  <31.883635, 36.309135, 46.425705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040871, 36.146828, 46.506531>,  <32.302929, 35.876312, 46.641239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040871, 36.146828, 46.506531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317719, -0.157797, -0.934962,
		-0.685444, -0.719539, -0.111489,
		-0.655149, 0.676287, -0.336773,
		31.844326, 36.349712, 46.405499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057201, 35.628689, 46.101673>,  <32.302929, 35.876312, 46.641239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057201, 35.628689, 46.101673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016899, 36.023006, 46.047916>,  <31.992720, 36.259598, 46.015663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016899, 36.023006, 46.047916>,  <32.057201, 35.628689, 46.101673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016899, 36.023006, 46.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326137, -0.094896, -0.940548,
		-0.939938, -0.138593, -0.311942,
		-0.100751, 0.985793, -0.134396,
		31.986673, 36.318745, 46.007599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753170, 35.720417, 45.353527>,  <32.057201, 35.628689, 46.101673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753170, 35.720417, 45.353527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902954, 36.076279, 45.458061>,  <31.992825, 36.289795, 45.520782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902954, 36.076279, 45.458061>,  <31.753170, 35.720417, 45.353527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902954, 36.076279, 45.458061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312967, 0.144033, -0.938779,
		-0.872828, 0.433326, -0.224497,
		0.374462, 0.889653, 0.261334,
		32.015293, 36.343174, 45.536461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590261, 36.158619, 44.764248>,  <31.753170, 35.720417, 45.353527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590261, 36.158619, 44.764248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887730, 36.345688, 44.955345>,  <32.066212, 36.457928, 45.070004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887730, 36.345688, 44.955345>,  <31.590261, 36.158619, 44.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887730, 36.345688, 44.955345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295695, 0.410817, -0.862435,
		-0.599601, 0.782633, 0.167224,
		0.743669, 0.467670, 0.477747,
		32.110828, 36.485989, 45.098671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528925, 36.883583, 44.576637>,  <31.590261, 36.158619, 44.764248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528925, 36.883583, 44.576637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912018, 36.820568, 44.672913>,  <32.141872, 36.782761, 44.730679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912018, 36.820568, 44.672913>,  <31.528925, 36.883583, 44.576637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912018, 36.820568, 44.672913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283980, 0.384315, -0.878440,
		0.045888, 0.909661, 0.412808,
		0.957731, -0.157539, 0.240690,
		32.199337, 36.773308, 44.745121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816771, 37.442879, 44.494217>,  <31.528925, 36.883583, 44.576637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816771, 37.442879, 44.494217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138409, 37.205616, 44.478252>,  <32.331390, 37.063259, 44.468674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138409, 37.205616, 44.478252>,  <31.816771, 37.442879, 44.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138409, 37.205616, 44.478252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268419, 0.422135, -0.865883,
		0.530452, 0.685541, 0.498652,
		0.804097, -0.593157, -0.039910,
		32.379639, 37.027668, 44.466278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417873, 37.909176, 44.147602>,  <31.816771, 37.442879, 44.494217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417873, 37.909176, 44.147602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507267, 37.519997, 44.124191>,  <32.560902, 37.286488, 44.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507267, 37.519997, 44.124191>,  <32.417873, 37.909176, 44.147602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507267, 37.519997, 44.124191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367849, 0.139795, -0.919318,
		0.902631, 0.183924, 0.389140,
		0.223485, -0.972949, -0.058527,
		32.574314, 37.228111, 44.106632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027157, 38.005119, 43.980671>,  <32.417873, 37.909176, 44.147602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027157, 38.005119, 43.980671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933777, 37.631741, 43.871723>,  <32.877750, 37.407715, 43.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933777, 37.631741, 43.871723>,  <33.027157, 38.005119, 43.980671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933777, 37.631741, 43.871723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470108, 0.136849, -0.871935,
		0.851176, -0.331595, 0.406872,
		-0.233449, -0.933444, -0.272368,
		32.863743, 37.351707, 43.790012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646683, 37.801662, 43.701794>,  <33.027157, 38.005119, 43.980671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646683, 37.801662, 43.701794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378067, 37.536697, 43.568981>,  <33.216896, 37.377720, 43.489296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378067, 37.536697, 43.568981>,  <33.646683, 37.801662, 43.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378067, 37.536697, 43.568981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402940, 0.049582, -0.913882,
		0.621829, -0.747497, 0.233616,
		-0.671541, -0.662412, -0.332029,
		33.176605, 37.337975, 43.469372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952599, 37.100380, 43.424309>,  <33.646683, 37.801662, 43.701794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952599, 37.100380, 43.424309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587757, 37.122154, 43.261780>,  <33.368851, 37.135220, 43.164261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587757, 37.122154, 43.261780>,  <33.952599, 37.100380, 43.424309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587757, 37.122154, 43.261780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377550, -0.274673, -0.884314,
		-0.159744, -0.959996, 0.229979,
		-0.912106, 0.054436, -0.406324,
		33.314125, 37.138485, 43.139881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900963, 36.496239, 42.948830>,  <33.952599, 37.100380, 43.424309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900963, 36.496239, 42.948830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600914, 36.730633, 42.826233>,  <33.420883, 36.871269, 42.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600914, 36.730633, 42.826233>,  <33.900963, 36.496239, 42.948830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600914, 36.730633, 42.826233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168741, -0.278521, -0.945491,
		-0.639409, -0.760951, 0.110044,
		-0.750122, 0.585986, -0.306492,
		33.375877, 36.906429, 42.734283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556313, 36.116257, 42.508400>,  <33.900963, 36.496239, 42.948830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556313, 36.116257, 42.508400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390587, 36.468994, 42.418335>,  <33.291153, 36.680637, 42.364296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390587, 36.468994, 42.418335>,  <33.556313, 36.116257, 42.508400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390587, 36.468994, 42.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142758, -0.181371, -0.972998,
		-0.898869, -0.435270, -0.050746,
		-0.414313, 0.881842, -0.225167,
		33.266293, 36.733547, 42.350784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089108, 36.028767, 42.003242>,  <33.556313, 36.116257, 42.508400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089108, 36.028767, 42.003242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169453, 36.418545, 41.963032>,  <33.217659, 36.652412, 41.938904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169453, 36.418545, 41.963032>,  <33.089108, 36.028767, 42.003242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169453, 36.418545, 41.963032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074244, -0.087179, -0.993422,
		-0.976802, 0.207007, 0.054835,
		0.200865, 0.974447, -0.100526,
		33.229713, 36.710880, 41.932873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504425, 36.313061, 41.559650>,  <33.089108, 36.028767, 42.003242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504425, 36.313061, 41.559650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821453, 36.555435, 41.532291>,  <33.011669, 36.700859, 41.515877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821453, 36.555435, 41.532291>,  <32.504425, 36.313061, 41.559650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821453, 36.555435, 41.532291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063977, -0.028917, -0.997532,
		-0.606420, 0.794987, 0.015847,
		0.792567, 0.605937, -0.068397,
		33.059223, 36.737217, 41.511772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378208, 36.675983, 41.022621>,  <32.504425, 36.313061, 41.559650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378208, 36.675983, 41.022621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773804, 36.708874, 41.071831>,  <33.011162, 36.728607, 41.101357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773804, 36.708874, 41.071831>,  <32.378208, 36.675983, 41.022621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773804, 36.708874, 41.071831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124232, -0.009781, -0.992205,
		-0.080382, 0.996566, -0.019888,
		0.988992, 0.082226, 0.123020,
		33.070499, 36.733543, 41.108738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587219, 37.245571, 40.597057>,  <32.378208, 36.675983, 41.022621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587219, 37.245571, 40.597057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914017, 37.020523, 40.647617>,  <33.110096, 36.885494, 40.677956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914017, 37.020523, 40.647617>,  <32.587219, 37.245571, 40.597057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914017, 37.020523, 40.647617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096118, -0.083268, -0.991881,
		0.568576, 0.822513, -0.013952,
		0.816996, -0.562618, 0.126402,
		33.159115, 36.851738, 40.685539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050854, 37.559776, 40.033100>,  <32.587219, 37.245571, 40.597057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050854, 37.559776, 40.033100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213161, 37.209942, 40.139271>,  <33.310547, 37.000042, 40.202972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213161, 37.209942, 40.139271>,  <33.050854, 37.559776, 40.033100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213161, 37.209942, 40.139271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234680, -0.180974, -0.955078,
		0.883331, 0.449835, 0.131813,
		0.405773, -0.874584, 0.265427,
		33.334892, 36.947567, 40.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587296, 37.441475, 39.620472>,  <33.050854, 37.559776, 40.033100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587296, 37.441475, 39.620472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570129, 37.065929, 39.757118>,  <33.559830, 36.840603, 39.839104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570129, 37.065929, 39.757118>,  <33.587296, 37.441475, 39.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570129, 37.065929, 39.757118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207319, -0.342853, -0.916226,
		0.977332, 0.031501, 0.209358,
		-0.042917, -0.938861, 0.341611,
		33.557255, 36.784271, 39.859600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188354, 37.150810, 39.383278>,  <33.587296, 37.441475, 39.620472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188354, 37.150810, 39.383278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925827, 36.857437, 39.454060>,  <33.768311, 36.681412, 39.496529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925827, 36.857437, 39.454060>,  <34.188354, 37.150810, 39.383278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925827, 36.857437, 39.454060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032118, -0.261486, -0.964673,
		0.753796, -0.627454, 0.195176,
		-0.656323, -0.733435, 0.176954,
		33.728931, 36.637405, 39.507145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460880, 36.385147, 39.161514>,  <34.188354, 37.150810, 39.383278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460880, 36.385147, 39.161514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061001, 36.387745, 39.152035>,  <33.821072, 36.389305, 39.146347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061001, 36.387745, 39.152035>,  <34.460880, 36.385147, 39.161514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061001, 36.387745, 39.152035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022389, -0.157052, -0.987337,
		-0.010137, -0.987569, 0.156859,
		-0.999698, 0.006496, -0.023702,
		33.761093, 36.389694, 39.144924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292973, 35.772316, 38.823772>,  <34.460880, 36.385147, 39.161514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292973, 35.772316, 38.823772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955654, 35.986637, 38.806950>,  <33.753265, 36.115231, 38.796856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955654, 35.986637, 38.806950>,  <34.292973, 35.772316, 38.823772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955654, 35.986637, 38.806950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034846, -0.132604, -0.990556,
		-0.536324, -0.833863, 0.130494,
		-0.843293, 0.535806, -0.042062,
		33.702667, 36.147381, 38.794331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854107, 35.450665, 38.344307>,  <34.292973, 35.772316, 38.823772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854107, 35.450665, 38.344307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689087, 35.814713, 38.359699>,  <33.590073, 36.033142, 38.368935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689087, 35.814713, 38.359699>,  <33.854107, 35.450665, 38.344307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689087, 35.814713, 38.359699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282890, -0.087853, -0.955121,
		-0.865895, -0.404922, 0.293708,
		-0.412553, 0.910121, 0.038477,
		33.565323, 36.087749, 38.371243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255955, 35.379860, 37.938164>,  <33.854107, 35.450665, 38.344307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255955, 35.379860, 37.938164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337402, 35.771175, 37.953602>,  <33.386272, 36.005966, 37.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337402, 35.771175, 37.953602>,  <33.255955, 35.379860, 37.938164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337402, 35.771175, 37.953602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203922, 0.080937, -0.975636,
		-0.957577, 0.190790, 0.215976,
		0.203622, 0.978289, 0.038597,
		33.398487, 36.064663, 37.965179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826641, 35.632519, 37.491623>,  <33.255955, 35.379860, 37.938164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826641, 35.632519, 37.491623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107296, 35.917370, 37.501263>,  <33.275688, 36.088280, 37.507046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107296, 35.917370, 37.501263>,  <32.826641, 35.632519, 37.491623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107296, 35.917370, 37.501263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222724, 0.251315, -0.941931,
		-0.676830, 0.655528, 0.334940,
		0.701637, 0.712127, 0.024096,
		33.317787, 36.131008, 37.508492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491138, 36.134930, 37.191021>,  <32.826641, 35.632519, 37.491623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491138, 36.134930, 37.191021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881104, 36.216351, 37.154984>,  <33.115082, 36.265202, 37.133362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881104, 36.216351, 37.154984>,  <32.491138, 36.134930, 37.191021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881104, 36.216351, 37.154984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141881, 0.256330, -0.956120,
		-0.171525, 0.944914, 0.278779,
		0.974910, 0.203552, -0.090098,
		33.173576, 36.277416, 37.127953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504810, 36.711674, 36.736259>,  <32.491138, 36.134930, 37.191021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504810, 36.711674, 36.736259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873558, 36.558025, 36.715839>,  <33.094807, 36.465836, 36.703587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873558, 36.558025, 36.715839>,  <32.504810, 36.711674, 36.736259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873558, 36.558025, 36.715839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013570, 0.163670, -0.986422,
		0.387265, 0.908659, 0.156095,
		0.921869, -0.384125, -0.051053,
		33.150120, 36.442787, 36.700523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969872, 37.192734, 36.325207>,  <32.504810, 36.711674, 36.736259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969872, 37.192734, 36.325207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201736, 36.868347, 36.293411>,  <33.340855, 36.673714, 36.274334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201736, 36.868347, 36.293411>,  <32.969872, 37.192734, 36.325207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201736, 36.868347, 36.293411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030240, 0.118890, -0.992447,
		0.814294, 0.572882, 0.093440,
		0.579664, -0.810970, -0.079487,
		33.375637, 36.625057, 36.269566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514805, 37.395218, 35.878044>,  <32.969872, 37.192734, 36.325207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514805, 37.395218, 35.878044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510002, 36.995251, 35.879616>,  <33.507122, 36.755268, 35.880558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510002, 36.995251, 35.879616>,  <33.514805, 37.395218, 35.878044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510002, 36.995251, 35.879616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138926, -0.005556, -0.990287,
		0.990230, -0.011341, 0.138982,
		-0.012004, -0.999920, 0.003926,
		33.506401, 36.695274, 35.880795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173004, 37.164867, 36.172424>,  <33.514805, 37.395218, 35.878044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173004, 37.164867, 36.172424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384438, 37.495522, 36.249649>,  <34.511295, 37.693913, 36.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384438, 37.495522, 36.249649>,  <34.173004, 37.164867, 36.172424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384438, 37.495522, 36.249649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556823, -0.509302, 0.656171,
		0.640742, -0.239339, -0.729498,
		0.528582, 0.826637, 0.193062,
		34.543011, 37.743511, 36.307568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870586, 36.942314, 36.075588>,  <34.173004, 37.164867, 36.172424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870586, 36.942314, 36.075588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868851, 37.264362, 36.312828>,  <34.867809, 37.457592, 36.455173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868851, 37.264362, 36.312828>,  <34.870586, 36.942314, 36.075588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868851, 37.264362, 36.312828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700338, -0.420913, 0.576506,
		0.713798, 0.417872, -0.562027,
		-0.004342, 0.805118, 0.593099,
		34.867550, 37.505898, 36.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328117, 36.674248, 36.583832>,  <34.870586, 36.942314, 36.075588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328117, 36.674248, 36.583832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724182, 36.673664, 36.527859>,  <35.961819, 36.673313, 36.494274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724182, 36.673664, 36.527859>,  <35.328117, 36.674248, 36.583832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724182, 36.673664, 36.527859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138777, -0.118414, 0.983219,
		-0.018006, -0.992963, -0.117046,
		0.990160, -0.001461, -0.139933,
		36.021229, 36.673225, 36.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615494, 36.167984, 36.989944>,  <35.328117, 36.674248, 36.583832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615494, 36.167984, 36.989944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888062, 36.457211, 36.944626>,  <36.051601, 36.630749, 36.917435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888062, 36.457211, 36.944626>,  <35.615494, 36.167984, 36.989944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888062, 36.457211, 36.944626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322526, -0.157700, 0.933332,
		0.656997, -0.672533, -0.340669,
		0.681419, 0.723070, -0.113301,
		36.092487, 36.674133, 36.910637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177422, 35.957897, 37.394836>,  <35.615494, 36.167984, 36.989944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177422, 35.957897, 37.394836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283089, 36.340084, 37.342228>,  <36.346489, 36.569397, 37.310661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283089, 36.340084, 37.342228>,  <36.177422, 35.957897, 37.394836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283089, 36.340084, 37.342228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392147, 0.018180, 0.919723,
		0.881155, -0.294541, -0.369880,
		0.264172, 0.955466, -0.131522,
		36.362339, 36.626724, 37.302773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871067, 36.048149, 37.581776>,  <36.177422, 35.957897, 37.394836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871067, 36.048149, 37.581776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734974, 36.424129, 37.592567>,  <36.653316, 36.649719, 37.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734974, 36.424129, 37.592567>,  <36.871067, 36.048149, 37.581776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734974, 36.424129, 37.592567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169192, 0.032974, 0.985031,
		0.924994, 0.339707, -0.170252,
		-0.340236, 0.939953, 0.026975,
		36.632904, 36.706116, 37.600658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354172, 36.475376, 37.940723>,  <36.871067, 36.048149, 37.581776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354172, 36.475376, 37.940723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010399, 36.673496, 37.991405>,  <36.804134, 36.792370, 38.021816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010399, 36.673496, 37.991405>,  <37.354172, 36.475376, 37.940723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010399, 36.673496, 37.991405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246306, 0.183953, 0.951575,
		0.448008, 0.849022, -0.280091,
		-0.859431, 0.495301, 0.126707,
		36.752571, 36.822086, 38.029419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528725, 37.000694, 38.384895>,  <37.354172, 36.475376, 37.940723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528725, 37.000694, 38.384895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129936, 37.025551, 38.403576>,  <36.890663, 37.040462, 38.414783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129936, 37.025551, 38.403576>,  <37.528725, 37.000694, 38.384895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129936, 37.025551, 38.403576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059539, 0.224142, 0.972736,
		0.049976, 0.972574, -0.227163,
		-0.996974, 0.062138, 0.046705,
		36.830845, 37.044193, 38.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331581, 37.571144, 38.700439>,  <37.528725, 37.000694, 38.384895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331581, 37.571144, 38.700439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999054, 37.355503, 38.754517>,  <36.799538, 37.226120, 38.786964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999054, 37.355503, 38.754517>,  <37.331581, 37.571144, 38.700439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999054, 37.355503, 38.754517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076669, 0.352156, 0.932796,
		-0.550482, 0.765086, -0.334086,
		-0.831319, -0.539101, 0.135197,
		36.749657, 37.193771, 38.795074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827915, 38.046188, 38.982750>,  <37.331581, 37.571144, 38.700439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827915, 38.046188, 38.982750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737896, 37.668217, 39.077793>,  <36.683884, 37.441433, 39.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737896, 37.668217, 39.077793>,  <36.827915, 38.046188, 38.982750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737896, 37.668217, 39.077793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056471, 0.256105, 0.964998,
		-0.972710, 0.203751, -0.110997,
		-0.225046, -0.944932, 0.237610,
		36.670383, 37.384739, 39.149075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300453, 38.139156, 39.461277>,  <36.827915, 38.046188, 38.982750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300453, 38.139156, 39.461277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442604, 37.767437, 39.501518>,  <36.527893, 37.544407, 39.525665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442604, 37.767437, 39.501518>,  <36.300453, 38.139156, 39.461277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442604, 37.767437, 39.501518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096146, 0.143402, 0.984983,
		-0.929767, -0.340363, 0.140309,
		0.355372, -0.929295, 0.100606,
		36.549217, 37.488647, 39.531700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969303, 37.936375, 40.008606>,  <36.300453, 38.139156, 39.461277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969303, 37.936375, 40.008606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269955, 37.672783, 39.997314>,  <36.450344, 37.514626, 39.990540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269955, 37.672783, 39.997314>,  <35.969303, 37.936375, 40.008606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269955, 37.672783, 39.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125302, 0.100645, 0.987000,
		-0.647574, -0.745395, 0.158219,
		0.751630, -0.658981, -0.028224,
		36.495445, 37.475090, 39.988846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772526, 37.348133, 40.379921>,  <35.969303, 37.936375, 40.008606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772526, 37.348133, 40.379921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172501, 37.343773, 40.380371>,  <36.412487, 37.341156, 40.380642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172501, 37.343773, 40.380371>,  <35.772526, 37.348133, 40.379921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172501, 37.343773, 40.380371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000084, 0.110061, 0.993925,
		-0.010962, -0.993865, 0.110055,
		0.999940, -0.010905, 0.001123,
		36.472481, 37.340504, 40.380707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889378, 37.095589, 41.005951>,  <35.772526, 37.348133, 40.379921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889378, 37.095589, 41.005951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245255, 37.251385, 40.910671>,  <36.458782, 37.344864, 40.853504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245255, 37.251385, 40.910671>,  <35.889378, 37.095589, 41.005951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245255, 37.251385, 40.910671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146617, 0.250360, 0.956987,
		0.432376, -0.886349, 0.165637,
		0.889693, 0.389493, -0.238204,
		36.512161, 37.368233, 40.839211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478554, 36.662235, 41.244957>,  <35.889378, 37.095589, 41.005951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478554, 36.662235, 41.244957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595577, 37.043827, 41.218651>,  <36.665791, 37.272781, 41.202869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595577, 37.043827, 41.218651>,  <36.478554, 36.662235, 41.244957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595577, 37.043827, 41.218651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177751, 0.013320, 0.983985,
		0.939581, -0.299565, -0.165675,
		0.292561, 0.953983, -0.065763,
		36.683346, 37.330021, 41.198921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129059, 36.709286, 41.501934>,  <36.478554, 36.662235, 41.244957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129059, 36.709286, 41.501934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923611, 37.051491, 41.528152>,  <36.800343, 37.256813, 41.543884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923611, 37.051491, 41.528152>,  <37.129059, 36.709286, 41.501934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923611, 37.051491, 41.528152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028425, -0.059385, 0.997830,
		0.857549, 0.514365, 0.006183,
		-0.513616, 0.855513, 0.065546,
		36.769527, 37.308144, 41.547817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408699, 37.034912, 42.146008>,  <37.129059, 36.709286, 41.501934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408699, 37.034912, 42.146008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074249, 37.239269, 42.066120>,  <36.873581, 37.361885, 42.018188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.074249, 37.239269, 42.066120>,  <37.408699, 37.034912, 42.146008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074249, 37.239269, 42.066120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245928, -0.023681, 0.968999,
		0.490327, 0.859317, 0.145444,
		-0.836121, 0.510895, -0.199719,
		36.823414, 37.392536, 42.006203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404209, 37.605804, 42.623272>,  <37.408699, 37.034912, 42.146008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404209, 37.605804, 42.623272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036453, 37.504707, 42.502712>,  <36.815800, 37.444050, 42.430374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036453, 37.504707, 42.502712>,  <37.404209, 37.605804, 42.623272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036453, 37.504707, 42.502712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359191, 0.227142, 0.905201,
		-0.160321, 0.940494, -0.299615,
		-0.919391, -0.252741, -0.301401,
		36.760635, 37.428886, 42.412292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026001, 37.855045, 43.154259>,  <37.404209, 37.605804, 42.623272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026001, 37.855045, 43.154259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744667, 37.631149, 42.978977>,  <36.575867, 37.496811, 42.873810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744667, 37.631149, 42.978977>,  <37.026001, 37.855045, 43.154259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744667, 37.631149, 42.978977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416838, -0.174588, 0.892057,
		-0.575823, 0.810069, -0.110528,
		-0.703330, -0.559739, -0.438199,
		36.533669, 37.463226, 42.847519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373730, 38.073627, 43.437767>,  <37.026001, 37.855045, 43.154259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373730, 38.073627, 43.437767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289436, 37.709114, 43.296257>,  <36.238861, 37.490406, 43.211349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289436, 37.709114, 43.296257>,  <36.373730, 38.073627, 43.437767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289436, 37.709114, 43.296257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753183, -0.079338, 0.653009,
		-0.623144, 0.404064, -0.669645,
		-0.210729, -0.911284, -0.353774,
		36.226219, 37.435730, 43.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665146, 38.122353, 43.224155>,  <36.373730, 38.073627, 43.437767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665146, 38.122353, 43.224155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783199, 37.747555, 43.298927>,  <35.854031, 37.522678, 43.343792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783199, 37.747555, 43.298927>,  <35.665146, 38.122353, 43.224155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783199, 37.747555, 43.298927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551638, -0.007358, 0.834051,
		-0.780123, -0.349275, -0.519052,
		0.295132, -0.936991, 0.186933,
		35.871738, 37.466457, 43.355007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057068, 37.720230, 43.485268>,  <35.665146, 38.122353, 43.224155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057068, 37.720230, 43.485268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366726, 37.490852, 43.592499>,  <35.552521, 37.353226, 43.656837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366726, 37.490852, 43.592499>,  <35.057068, 37.720230, 43.485268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366726, 37.490852, 43.592499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426064, -0.158812, 0.890645,
		-0.468161, -0.803704, -0.367267,
		0.774141, -0.573445, 0.268080,
		35.598969, 37.318817, 43.672924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726032, 37.184258, 43.727161>,  <35.057068, 37.720230, 43.485268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726032, 37.184258, 43.727161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094864, 37.155910, 43.879341>,  <35.316162, 37.138901, 43.970650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094864, 37.155910, 43.879341>,  <34.726032, 37.184258, 43.727161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094864, 37.155910, 43.879341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386707, -0.206919, 0.898689,
		0.015034, -0.975788, -0.218201,
		0.922080, -0.070869, 0.380454,
		35.371487, 37.134647, 43.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663322, 36.537193, 44.221794>,  <34.726032, 37.184258, 43.727161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663322, 36.537193, 44.221794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994953, 36.733341, 44.329254>,  <35.193932, 36.851028, 44.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994953, 36.733341, 44.329254>,  <34.663322, 36.537193, 44.221794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994953, 36.733341, 44.329254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196848, -0.193733, 0.961103,
		0.523344, -0.849708, -0.064089,
		0.829073, 0.490372, 0.268653,
		35.243675, 36.880451, 44.409851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024529, 36.116310, 44.721096>,  <34.663322, 36.537193, 44.221794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024529, 36.116310, 44.721096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102608, 36.506130, 44.765202>,  <35.149456, 36.740021, 44.791664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102608, 36.506130, 44.765202>,  <35.024529, 36.116310, 44.721096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102608, 36.506130, 44.765202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147592, -0.081961, 0.985647,
		0.969595, -0.208669, 0.127837,
		0.195196, 0.974546, 0.110266,
		35.161167, 36.798492, 44.798283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443420, 36.130035, 45.299732>,  <35.024529, 36.116310, 44.721096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443420, 36.130035, 45.299732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287777, 36.496708, 45.263317>,  <35.194389, 36.716713, 45.241467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287777, 36.496708, 45.263317>,  <35.443420, 36.130035, 45.299732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287777, 36.496708, 45.263317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230356, -0.001134, 0.973106,
		0.891926, 0.399615, 0.211605,
		-0.389108, 0.916682, -0.091042,
		35.171043, 36.771713, 45.236004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758541, 36.520470, 45.866192>,  <35.443420, 36.130035, 45.299732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758541, 36.520470, 45.866192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435707, 36.722740, 45.744270>,  <35.242004, 36.844101, 45.671116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435707, 36.722740, 45.744270>,  <35.758541, 36.520470, 45.866192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435707, 36.722740, 45.744270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286672, 0.115699, 0.951017,
		0.516168, 0.854933, 0.051583,
		-0.807087, 0.505672, -0.304806,
		35.193581, 36.874443, 45.652828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652386, 36.897083, 46.495182>,  <35.758541, 36.520470, 45.866192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652386, 36.897083, 46.495182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315811, 36.924217, 46.280750>,  <35.113865, 36.940498, 46.152092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315811, 36.924217, 46.280750>,  <35.652386, 36.897083, 46.495182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315811, 36.924217, 46.280750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516560, 0.190191, 0.834861,
		0.158587, 0.979401, -0.124995,
		-0.841437, 0.067831, -0.536081,
		35.063381, 36.944565, 46.119926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325775, 37.423859, 46.747345>,  <35.652386, 36.897083, 46.495182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325775, 37.423859, 46.747345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031212, 37.227322, 46.561321>,  <34.854473, 37.109398, 46.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031212, 37.227322, 46.561321>,  <35.325775, 37.423859, 46.747345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031212, 37.227322, 46.561321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580697, 0.106373, 0.807140,
		-0.347114, 0.864445, -0.363656,
		-0.736412, -0.491344, -0.465058,
		34.810287, 37.079918, 46.421803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682789, 37.859528, 46.815990>,  <35.325775, 37.423859, 46.747345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682789, 37.859528, 46.815990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525616, 37.499378, 46.741238>,  <34.431313, 37.283287, 46.696388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525616, 37.499378, 46.741238>,  <34.682789, 37.859528, 46.815990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525616, 37.499378, 46.741238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568085, 0.077872, 0.819277,
		-0.723106, 0.428085, -0.542090,
		-0.392934, -0.900377, -0.186879,
		34.407734, 37.229263, 46.685173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968609, 37.968437, 46.863304>,  <34.682789, 37.859528, 46.815990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968609, 37.968437, 46.863304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028179, 37.581608, 46.945850>,  <34.063923, 37.349510, 46.995377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028179, 37.581608, 46.945850>,  <33.968609, 37.968437, 46.863304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028179, 37.581608, 46.945850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667831, 0.055543, 0.742238,
		-0.729262, -0.248358, -0.637571,
		0.148928, -0.967075, 0.206366,
		34.072857, 37.291485, 47.007759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312302, 37.691917, 46.870808>,  <33.968609, 37.968437, 46.863304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312302, 37.691917, 46.870808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562653, 37.456150, 47.075108>,  <33.712864, 37.314690, 47.197685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562653, 37.456150, 47.075108>,  <33.312302, 37.691917, 46.870808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562653, 37.456150, 47.075108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583966, 0.079921, 0.807834,
		-0.516975, -0.803861, -0.294182,
		0.625876, -0.589423, 0.510745,
		33.750416, 37.279324, 47.228333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913998, 37.319031, 47.342789>,  <33.312302, 37.691917, 46.870808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913998, 37.319031, 47.342789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264301, 37.231586, 47.514954>,  <33.474483, 37.179119, 47.618252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264301, 37.231586, 47.514954>,  <32.913998, 37.319031, 47.342789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264301, 37.231586, 47.514954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437030, 0.019689, 0.899231,
		-0.205055, -0.975614, -0.078297,
		0.875761, -0.218610, 0.430410,
		33.527031, 37.166004, 47.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704636, 36.819023, 47.894310>,  <32.913998, 37.319031, 47.342789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704636, 36.819023, 47.894310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051258, 36.993214, 47.991829>,  <33.259232, 37.097729, 48.050339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051258, 36.993214, 47.991829>,  <32.704636, 36.819023, 47.894310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051258, 36.993214, 47.991829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357418, 0.200565, 0.912155,
		0.348326, -0.877572, 0.329449,
		0.866557, 0.435479, 0.243798,
		33.311226, 37.123856, 48.064968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760746, 36.616173, 48.594360>,  <32.704636, 36.819023, 47.894310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760746, 36.616173, 48.594360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039497, 36.902260, 48.573093>,  <33.206749, 37.073914, 48.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039497, 36.902260, 48.573093>,  <32.760746, 36.616173, 48.594360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039497, 36.902260, 48.573093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285920, 0.345041, 0.893978,
		0.657736, -0.607788, 0.444946,
		0.696874, 0.715220, -0.053167,
		33.248558, 37.116825, 48.557144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213337, 36.591427, 49.238647>,  <32.760746, 36.616173, 48.594360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213337, 36.591427, 49.238647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218384, 36.953369, 49.068432>,  <33.221413, 37.170532, 48.966305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218384, 36.953369, 49.068432>,  <33.213337, 36.591427, 49.238647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218384, 36.953369, 49.068432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434651, 0.388223, 0.812626,
		0.900511, 0.174711, 0.398192,
		0.012612, 0.904853, -0.425537,
		33.222168, 37.224827, 48.940769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514004, 36.984100, 49.759598>,  <33.213337, 36.591427, 49.238647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514004, 36.984100, 49.759598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368828, 37.250557, 49.498974>,  <33.281723, 37.410431, 49.342602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368828, 37.250557, 49.498974>,  <33.514004, 36.984100, 49.759598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368828, 37.250557, 49.498974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462501, 0.478240, 0.746578,
		0.808929, 0.572309, 0.134519,
		-0.362941, 0.666144, -0.651556,
		33.259945, 37.450401, 49.303509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784851, 37.673168, 49.966915>,  <33.514004, 36.984100, 49.759598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784851, 37.673168, 49.966915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453262, 37.759274, 49.760437>,  <33.254307, 37.810936, 49.636551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453262, 37.759274, 49.760437>,  <33.784851, 37.673168, 49.966915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453262, 37.759274, 49.760437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405825, 0.403574, 0.820021,
		0.384843, 0.889264, -0.247195,
		-0.828976, 0.215261, -0.516198,
		33.204571, 37.823853, 49.605579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637043, 38.354404, 50.110001>,  <33.784851, 37.673168, 49.966915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637043, 38.354404, 50.110001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281345, 38.232540, 49.973515>,  <33.067928, 38.159420, 49.891624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281345, 38.232540, 49.973515>,  <33.637043, 38.354404, 50.110001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281345, 38.232540, 49.973515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457091, 0.562963, 0.688579,
		-0.017691, 0.768281, -0.639868,
		-0.889244, -0.304659, -0.341215,
		33.014572, 38.141144, 49.871151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239536, 39.043407, 50.125210>,  <33.637043, 38.354404, 50.110001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239536, 39.043407, 50.125210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966846, 38.750854, 50.132431>,  <32.803230, 38.575321, 50.136765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966846, 38.750854, 50.132431>,  <33.239536, 39.043407, 50.125210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966846, 38.750854, 50.132431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505314, 0.488563, 0.711312,
		-0.529060, 0.475801, -0.702645,
		-0.681729, -0.731382, 0.018050,
		32.762329, 38.531441, 50.137848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842815, 39.310482, 49.842293>,  <33.239536, 39.043407, 50.125210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842815, 39.310482, 49.842293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865818, 39.709816, 49.843925>,  <33.879620, 39.949417, 49.844906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865818, 39.709816, 49.843925>,  <33.842815, 39.310482, 49.842293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865818, 39.709816, 49.843925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538740, -0.027594, -0.842020,
		-0.840507, 0.050620, -0.539431,
		0.057508, 0.998337, 0.004078,
		33.883072, 40.009315, 49.845150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767433, 39.523533, 49.174183>,  <33.842815, 39.310482, 49.842293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767433, 39.523533, 49.174183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933849, 39.849659, 49.335262>,  <34.033699, 40.045334, 49.431908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933849, 39.849659, 49.335262>,  <33.767433, 39.523533, 49.174183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933849, 39.849659, 49.335262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530362, 0.142160, -0.835767,
		-0.738663, 0.561292, -0.373268,
		0.416045, 0.815317, 0.402696,
		34.058662, 40.094254, 49.456070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748104, 40.077404, 48.645607>,  <33.767433, 39.523533, 49.174183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748104, 40.077404, 48.645607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032761, 40.182926, 48.906059>,  <34.203556, 40.246239, 49.062332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032761, 40.182926, 48.906059>,  <33.748104, 40.077404, 48.645607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032761, 40.182926, 48.906059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576617, 0.310143, -0.755860,
		-0.401341, 0.913356, 0.068599,
		0.711645, 0.263803, 0.651130,
		34.246254, 40.262066, 49.101398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951180, 40.696526, 48.415939>,  <33.748104, 40.077404, 48.645607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951180, 40.696526, 48.415939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260063, 40.559685, 48.630100>,  <34.445393, 40.477581, 48.758598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260063, 40.559685, 48.630100>,  <33.951180, 40.696526, 48.415939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260063, 40.559685, 48.630100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574752, 0.016921, -0.818153,
		0.270834, 0.939510, 0.209692,
		0.772211, -0.342104, 0.535402,
		34.491726, 40.457054, 48.790722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543388, 41.097973, 48.176380>,  <33.951180, 40.696526, 48.415939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543388, 41.097973, 48.176380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683170, 40.778160, 48.371777>,  <34.767040, 40.586273, 48.489014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683170, 40.778160, 48.371777>,  <34.543388, 41.097973, 48.176380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683170, 40.778160, 48.371777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788389, -0.030793, -0.614406,
		0.506282, 0.599828, 0.619585,
		0.349458, -0.799536, 0.488488,
		34.788010, 40.538300, 48.518322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202587, 41.220158, 48.425911>,  <34.543388, 41.097973, 48.176380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202587, 41.220158, 48.425911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174648, 40.822350, 48.394791>,  <35.157887, 40.583664, 48.376118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174648, 40.822350, 48.394791>,  <35.202587, 41.220158, 48.425911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174648, 40.822350, 48.394791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788039, -0.007189, -0.615583,
		0.611650, -0.104307, 0.784222,
		-0.069847, -0.994519, -0.077800,
		35.153694, 40.523994, 48.371452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936039, 40.878872, 48.399273>,  <35.202587, 41.220158, 48.425911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936039, 40.878872, 48.399273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680069, 40.617085, 48.238194>,  <35.526485, 40.460011, 48.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680069, 40.617085, 48.238194>,  <35.936039, 40.878872, 48.399273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680069, 40.617085, 48.238194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706054, -0.293931, -0.644276,
		0.303291, -0.696618, 0.650183,
		-0.639924, -0.654468, -0.402703,
		35.488091, 40.420746, 48.117382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423046, 40.331554, 48.140766>,  <35.936039, 40.878872, 48.399273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423046, 40.331554, 48.140766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067459, 40.248112, 47.977684>,  <35.854107, 40.198044, 47.879833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067459, 40.248112, 47.977684>,  <36.423046, 40.331554, 48.140766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067459, 40.248112, 47.977684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456660, -0.336365, -0.823602,
		0.034674, -0.918335, 0.394281,
		-0.888965, -0.208610, -0.407704,
		35.800770, 40.185528, 47.855373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408810, 39.562912, 47.732040>,  <36.423046, 40.331554, 48.140766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408810, 39.562912, 47.732040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103909, 39.768299, 47.574402>,  <35.920967, 39.891533, 47.479820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103909, 39.768299, 47.574402>,  <36.408810, 39.562912, 47.732040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103909, 39.768299, 47.574402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238597, -0.343084, -0.908496,
		-0.601695, -0.786537, 0.139004,
		-0.762256, 0.513472, -0.394097,
		35.875233, 39.922340, 47.456173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050205, 39.118191, 47.197880>,  <36.408810, 39.562912, 47.732040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050205, 39.118191, 47.197880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935604, 39.491039, 47.109268>,  <35.866844, 39.714748, 47.056103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935604, 39.491039, 47.109268>,  <36.050205, 39.118191, 47.197880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935604, 39.491039, 47.109268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178900, -0.175106, -0.968159,
		-0.941229, -0.317009, -0.116588,
		-0.286500, 0.932118, -0.221528,
		35.849655, 39.770676, 47.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615005, 39.041225, 46.584911>,  <36.050205, 39.118191, 47.197880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615005, 39.041225, 46.584911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765213, 39.411785, 46.573799>,  <35.855339, 39.634121, 46.567131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765213, 39.411785, 46.573799>,  <35.615005, 39.041225, 46.584911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765213, 39.411785, 46.573799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070604, -0.058481, -0.995789,
		-0.924120, 0.371980, -0.087368,
		0.375523, 0.926397, -0.027780,
		35.877869, 39.689705, 46.565464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331367, 39.267693, 45.982548>,  <35.615005, 39.041225, 46.584911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331367, 39.267693, 45.982548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606125, 39.548698, 46.057014>,  <35.770977, 39.717300, 46.101692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606125, 39.548698, 46.057014>,  <35.331367, 39.267693, 45.982548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606125, 39.548698, 46.057014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260950, 0.000667, -0.965352,
		-0.678296, 0.711671, -0.182863,
		0.686891, 0.702513, 0.186163,
		35.812191, 39.759453, 46.112862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288143, 39.914463, 45.442326>,  <35.331367, 39.267693, 45.982548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288143, 39.914463, 45.442326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660698, 39.896538, 45.586826>,  <35.884232, 39.885784, 45.673527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660698, 39.896538, 45.586826>,  <35.288143, 39.914463, 45.442326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660698, 39.896538, 45.586826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363119, 0.184244, -0.913345,
		-0.025633, 0.981859, 0.187874,
		0.931390, -0.044809, 0.361254,
		35.940117, 39.883095, 45.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592991, 40.494801, 45.057091>,  <35.288143, 39.914463, 45.442326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592991, 40.494801, 45.057091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887001, 40.265797, 45.202396>,  <36.063408, 40.128395, 45.289581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887001, 40.265797, 45.202396>,  <35.592991, 40.494801, 45.057091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887001, 40.265797, 45.202396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600081, 0.299862, -0.741610,
		0.315650, 0.763095, 0.563960,
		0.735030, -0.572511, 0.363267,
		36.107510, 40.094044, 45.311375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314919, 40.894585, 45.136665>,  <35.592991, 40.494801, 45.057091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314919, 40.894585, 45.136665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 40.504578, 45.086674>,  <36.432449, 40.270573, 45.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388374, 40.504578, 45.086674>,  <36.314919, 40.894585, 45.136665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388374, 40.504578, 45.086674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580877, 0.210209, -0.786380,
		0.793005, 0.071814, 0.604968,
		0.183643, -0.975015, -0.124982,
		36.443466, 40.212074, 45.049179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890450, 40.898300, 44.853897>,  <36.314919, 40.894585, 45.136665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890450, 40.898300, 44.853897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806953, 40.510937, 44.799324>,  <36.756855, 40.278519, 44.766579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806953, 40.510937, 44.799324>,  <36.890450, 40.898300, 44.853897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806953, 40.510937, 44.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556824, -0.002999, -0.830625,
		0.803974, -0.249355, 0.539859,
		-0.208740, -0.968407, -0.136436,
		36.744331, 40.220413, 44.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415245, 40.639400, 44.539658>,  <36.890450, 40.898300, 44.853897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415245, 40.639400, 44.539658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129749, 40.371765, 44.456814>,  <36.958454, 40.211182, 44.407108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129749, 40.371765, 44.456814>,  <37.415245, 40.639400, 44.539658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129749, 40.371765, 44.456814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360950, -0.097959, -0.927426,
		0.600246, -0.736694, 0.311426,
		-0.713737, -0.669093, -0.207110,
		36.915627, 40.171036, 44.394680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774105, 40.086418, 44.230225>,  <37.415245, 40.639400, 44.539658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774105, 40.086418, 44.230225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388313, 40.074837, 44.125191>,  <37.156837, 40.067886, 44.062172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388313, 40.074837, 44.125191>,  <37.774105, 40.086418, 44.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388313, 40.074837, 44.125191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263510, -0.175850, -0.948493,
		-0.018706, -0.983991, 0.177234,
		-0.964475, -0.028960, -0.262581,
		37.098972, 40.066151, 44.046417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575932, 39.389217, 43.785774>,  <37.774105, 40.086418, 44.230225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575932, 39.389217, 43.785774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300495, 39.659142, 43.679585>,  <37.135231, 39.821095, 43.615871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300495, 39.659142, 43.679585>,  <37.575932, 39.389217, 43.785774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300495, 39.659142, 43.679585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170953, -0.204706, -0.963779,
		-0.704707, -0.709036, 0.025599,
		-0.688595, 0.674806, -0.265470,
		37.093918, 39.861584, 43.599945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199005, 39.044453, 43.333935>,  <37.575932, 39.389217, 43.785774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199005, 39.044453, 43.333935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063873, 39.412781, 43.255997>,  <36.982792, 39.633778, 43.209232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063873, 39.412781, 43.255997>,  <37.199005, 39.044453, 43.333935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063873, 39.412781, 43.255997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005629, -0.208990, -0.977902,
		-0.941190, -0.329270, 0.075787,
		-0.337832, 0.920817, -0.194846,
		36.962524, 39.689026, 43.197544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648739, 39.016071, 42.895935>,  <37.199005, 39.044453, 43.333935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648739, 39.016071, 42.895935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792053, 39.386135, 42.845806>,  <36.878040, 39.608173, 42.815731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792053, 39.386135, 42.845806>,  <36.648739, 39.016071, 42.895935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792053, 39.386135, 42.845806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050523, -0.153248, -0.986895,
		-0.932245, 0.347257, -0.101649,
		0.358284, 0.925163, -0.125320,
		36.899540, 39.663685, 42.808208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453300, 39.197746, 42.299793>,  <36.648739, 39.016071, 42.895935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453300, 39.197746, 42.299793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762913, 39.445698, 42.351383>,  <36.948681, 39.594467, 42.382339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762913, 39.445698, 42.351383>,  <36.453300, 39.197746, 42.299793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762913, 39.445698, 42.351383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275367, -0.146142, -0.950166,
		-0.570134, 0.770972, -0.283812,
		0.774028, 0.619875, 0.128980,
		36.995121, 39.631660, 42.390076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494495, 39.510532, 41.654995>,  <36.453300, 39.197746, 42.299793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494495, 39.510532, 41.654995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835365, 39.575592, 41.853931>,  <37.039886, 39.614628, 41.973293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835365, 39.575592, 41.853931>,  <36.494495, 39.510532, 41.654995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835365, 39.575592, 41.853931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519376, -0.147271, -0.841760,
		-0.063665, 0.975632, -0.209974,
		0.852171, 0.162646, 0.497343,
		37.091015, 39.624386, 42.003136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847870, 40.086952, 41.301258>,  <36.494495, 39.510532, 41.654995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847870, 40.086952, 41.301258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139748, 39.887577, 41.488495>,  <37.314873, 39.767952, 41.600838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139748, 39.887577, 41.488495>,  <36.847870, 40.086952, 41.301258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139748, 39.887577, 41.488495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567507, 0.059591, -0.821209,
		0.381429, 0.864874, 0.326351,
		0.729690, -0.498439, 0.468093,
		37.358654, 39.738045, 41.628922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450401, 40.383713, 41.066963>,  <36.847870, 40.086952, 41.301258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450401, 40.383713, 41.066963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583225, 40.040264, 41.223167>,  <37.662922, 39.834194, 41.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583225, 40.040264, 41.223167>,  <37.450401, 40.383713, 41.066963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583225, 40.040264, 41.223167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673282, -0.074201, -0.735654,
		0.660625, 0.507209, 0.553456,
		0.332063, -0.858623, 0.390513,
		37.682846, 39.782677, 41.340321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243538, 40.408207, 40.896790>,  <37.450401, 40.383713, 41.066963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243538, 40.408207, 40.896790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157822, 40.033226, 41.006523>,  <38.106392, 39.808235, 41.072361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157822, 40.033226, 41.006523>,  <38.243538, 40.408207, 40.896790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157822, 40.033226, 41.006523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730532, -0.340251, -0.592074,
		0.648384, 0.073531, 0.757754,
		-0.214291, -0.937455, 0.274330,
		38.093533, 39.751991, 41.088821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822708, 40.069927, 41.143963>,  <38.243538, 40.408207, 40.896790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822708, 40.069927, 41.143963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572655, 39.805096, 40.978622>,  <38.422623, 39.646198, 40.879417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572655, 39.805096, 40.978622>,  <38.822708, 40.069927, 41.143963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572655, 39.805096, 40.978622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686737, -0.214867, -0.694424,
		0.370946, -0.717974, 0.588993,
		-0.625134, -0.662076, -0.413355,
		38.385113, 39.606472, 40.854614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222755, 39.500259, 40.973877>,  <38.822708, 40.069927, 41.143963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222755, 39.500259, 40.973877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891544, 39.432079, 40.760216>,  <38.692818, 39.391171, 40.632019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891544, 39.432079, 40.760216>,  <39.222755, 39.500259, 40.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891544, 39.432079, 40.760216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560322, -0.285896, -0.777369,
		-0.020211, -0.942980, 0.332235,
		-0.828029, -0.170447, -0.534150,
		38.643135, 39.380943, 40.599972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320812, 38.813251, 40.650639>,  <39.222755, 39.500259, 40.973877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320812, 38.813251, 40.650639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072464, 39.023071, 40.417618>,  <38.923454, 39.148964, 40.277805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072464, 39.023071, 40.417618>,  <39.320812, 38.813251, 40.650639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072464, 39.023071, 40.417618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656446, -0.058304, -0.752117,
		-0.428485, -0.849383, -0.308137,
		-0.620870, 0.524546, -0.582556,
		38.886204, 39.180435, 40.242851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255398, 38.397388, 39.988445>,  <39.320812, 38.813251, 40.650639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255398, 38.397388, 39.988445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161076, 38.778229, 39.910580>,  <39.104485, 39.006733, 39.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161076, 38.778229, 39.910580>,  <39.255398, 38.397388, 39.988445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161076, 38.778229, 39.910580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515413, -0.047291, -0.855636,
		-0.823861, -0.302092, -0.479576,
		-0.235801, 0.952105, -0.194663,
		39.090336, 39.063862, 39.852180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033257, 38.408363, 39.287163>,  <39.255398, 38.397388, 39.988445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033257, 38.408363, 39.287163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119545, 38.791187, 39.364628>,  <39.171318, 39.020882, 39.411106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119545, 38.791187, 39.364628>,  <39.033257, 38.408363, 39.287163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119545, 38.791187, 39.364628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606619, 0.024062, -0.794628,
		-0.765166, 0.288892, -0.575380,
		0.215717, 0.957059, 0.193659,
		39.184261, 39.078304, 39.422726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747173, 38.823307, 38.827568>,  <39.033257, 38.408363, 39.287163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747173, 38.823307, 38.827568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047817, 39.058880, 38.946392>,  <39.228203, 39.200226, 39.017689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047817, 39.058880, 38.946392>,  <38.747173, 38.823307, 38.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047817, 39.058880, 38.946392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348508, 0.027806, -0.936893,
		-0.560028, 0.807703, -0.184349,
		0.751605, 0.588934, 0.297063,
		39.273300, 39.235561, 39.035511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794956, 39.334488, 38.240917>,  <38.747173, 38.823307, 38.827568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794956, 39.334488, 38.240917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126678, 39.443199, 38.436214>,  <39.325714, 39.508427, 38.553394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126678, 39.443199, 38.436214>,  <38.794956, 39.334488, 38.240917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126678, 39.443199, 38.436214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446915, 0.201899, -0.871495,
		-0.335430, 0.940943, 0.045975,
		0.829309, 0.271779, 0.488244,
		39.375473, 39.524734, 38.582687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948219, 40.088638, 38.058132>,  <38.794956, 39.334488, 38.240917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948219, 40.088638, 38.058132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293816, 39.934753, 38.188065>,  <39.501175, 39.842422, 38.266026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293816, 39.934753, 38.188065>,  <38.948219, 40.088638, 38.058132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293816, 39.934753, 38.188065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462199, 0.350074, -0.814752,
		0.199726, 0.854077, 0.480273,
		0.863991, -0.384709, 0.324835,
		39.553013, 39.819340, 38.285515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451893, 40.530827, 37.933754>,  <38.948219, 40.088638, 38.058132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451893, 40.530827, 37.933754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659603, 40.190964, 37.970490>,  <39.784229, 39.987045, 37.992531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659603, 40.190964, 37.970490>,  <39.451893, 40.530827, 37.933754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659603, 40.190964, 37.970490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544126, 0.245841, -0.802177,
		0.659000, 0.466521, 0.589981,
		0.519274, -0.849659, 0.091837,
		39.815384, 39.936066, 37.998039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154369, 40.660290, 37.611992>,  <39.451893, 40.530827, 37.933754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154369, 40.660290, 37.611992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109161, 40.262989, 37.622440>,  <40.082035, 40.024609, 37.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109161, 40.262989, 37.622440>,  <40.154369, 40.660290, 37.611992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109161, 40.262989, 37.622440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522743, -0.081800, -0.848557,
		0.844965, -0.082251, 0.528459,
		-0.113022, -0.993249, 0.026122,
		40.075256, 39.965015, 37.630276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829147, 40.326210, 37.482899>,  <40.154369, 40.660290, 37.611992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829147, 40.326210, 37.482899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563019, 40.042152, 37.390785>,  <40.403339, 39.871716, 37.335518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563019, 40.042152, 37.390785>,  <40.829147, 40.326210, 37.482899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563019, 40.042152, 37.390785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463195, -0.150757, -0.873340,
		0.585485, -0.687722, 0.429239,
		-0.665326, -0.710149, -0.230283,
		40.363422, 39.829109, 37.321701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292881, 39.830944, 37.231171>,  <40.829147, 40.326210, 37.482899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292881, 39.830944, 37.231171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915062, 39.770924, 37.114338>,  <40.688370, 39.734913, 37.044239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915062, 39.770924, 37.114338>,  <41.292881, 39.830944, 37.231171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915062, 39.770924, 37.114338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318659, -0.204137, -0.925626,
		0.079264, -0.967374, 0.240632,
		-0.944549, -0.150049, -0.292082,
		40.631699, 39.725910, 37.026714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328560, 39.199738, 36.974716>,  <41.292881, 39.830944, 37.231171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328560, 39.199738, 36.974716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002914, 39.386288, 36.836319>,  <40.807526, 39.498219, 36.753281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002914, 39.386288, 36.836319>,  <41.328560, 39.199738, 36.974716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002914, 39.386288, 36.836319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298733, -0.174576, -0.938233,
		-0.497971, -0.867189, 0.002803,
		-0.814115, 0.466376, -0.345992,
		40.758678, 39.526199, 36.732521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115936, 38.684265, 36.540714>,  <41.328560, 39.199738, 36.974716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115936, 38.684265, 36.540714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927307, 39.023537, 36.444206>,  <40.814129, 39.227100, 36.386303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927307, 39.023537, 36.444206>,  <41.115936, 38.684265, 36.540714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927307, 39.023537, 36.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119809, -0.209439, -0.970454,
		-0.873649, -0.486548, -0.002853,
		-0.471575, 0.848178, -0.241269,
		40.785835, 39.277988, 36.371826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793457, 38.531506, 35.942318>,  <41.115936, 38.684265, 36.540714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793457, 38.531506, 35.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 38.927013, 35.965153>,  <40.881836, 39.164318, 35.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.848694, 38.927013, 35.965153>,  <40.793457, 38.531506, 35.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848694, 38.927013, 35.965153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334812, 0.007641, -0.942254,
		-0.932111, 0.149235, -0.329997,
		0.138096, 0.988772, 0.057088,
		40.890121, 39.223644, 35.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352669, 38.031261, 35.644939>,  <40.793457, 38.531506, 35.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352669, 38.031261, 35.644939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369167, 37.719425, 35.394970>,  <41.379066, 37.532322, 35.244987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369167, 37.719425, 35.394970>,  <41.352669, 38.031261, 35.644939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369167, 37.719425, 35.394970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545692, -0.506359, 0.667698,
		-0.836970, -0.368555, 0.404534,
		0.041244, -0.779594, -0.624925,
		41.381542, 37.485546, 35.207493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997551, 37.471546, 35.938335>,  <41.352669, 38.031261, 35.644939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997551, 37.471546, 35.938335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297226, 37.354633, 35.700581>,  <41.477032, 37.284485, 35.557930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297226, 37.354633, 35.700581>,  <40.997551, 37.471546, 35.938335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297226, 37.354633, 35.700581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579443, -0.145531, 0.801914,
		-0.320886, -0.945194, 0.060330,
		0.749185, -0.292280, -0.594385,
		41.521980, 37.266949, 35.522266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196724, 36.681324, 35.857967>,  <40.997551, 37.471546, 35.938335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196724, 36.681324, 35.857967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509697, 36.923706, 35.800529>,  <41.697479, 37.069134, 35.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.509697, 36.923706, 35.800529>,  <41.196724, 36.681324, 35.857967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509697, 36.923706, 35.800529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509415, -0.490163, 0.707274,
		0.358190, -0.626544, -0.692202,
		0.782430, 0.605956, -0.143599,
		41.744427, 37.105492, 35.757450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869553, 36.316139, 35.614151>,  <41.196724, 36.681324, 35.857967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869553, 36.316139, 35.614151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916988, 36.632309, 35.854542>,  <41.945450, 36.822010, 35.998775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916988, 36.632309, 35.854542>,  <41.869553, 36.316139, 35.614151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916988, 36.632309, 35.854542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398611, -0.592233, 0.700264,
		0.909420, 0.156508, -0.385306,
		0.118594, 0.790421, 0.600974,
		41.952568, 36.869434, 36.034836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643730, 36.334644, 35.724190>,  <41.869553, 36.316139, 35.614151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643730, 36.334644, 35.724190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380222, 36.422089, 36.012142>,  <42.222118, 36.474556, 36.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380222, 36.422089, 36.012142>,  <42.643730, 36.334644, 35.724190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380222, 36.422089, 36.012142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305165, -0.796958, 0.521280,
		0.687676, 0.563086, 0.458297,
		-0.658768, 0.218615, 0.719883,
		42.182590, 36.487675, 36.228107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911587, 36.361000, 36.452679>,  <42.643730, 36.334644, 35.724190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911587, 36.361000, 36.452679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532032, 36.242229, 36.495480>,  <42.304298, 36.170967, 36.521160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532032, 36.242229, 36.495480>,  <42.911587, 36.361000, 36.452679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532032, 36.242229, 36.495480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273580, -0.604725, 0.747972,
		-0.157386, 0.739014, 0.655048,
		-0.948885, -0.296928, 0.107005,
		42.247368, 36.153152, 36.527580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662472, 36.007729, 36.610287>,  <42.911587, 36.361000, 36.452679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662472, 36.007729, 36.610287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024277, 36.123123, 36.484665>,  <44.241360, 36.192360, 36.409294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024277, 36.123123, 36.484665>,  <43.662472, 36.007729, 36.610287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024277, 36.123123, 36.484665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278931, 0.957298, 0.076016,
		0.322571, 0.018841, 0.946357,
		0.904514, 0.288489, -0.314052,
		44.295631, 36.209671, 36.390450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830799, 36.472164, 37.038151>,  <43.662472, 36.007729, 36.610287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830799, 36.472164, 37.038151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064308, 36.559097, 36.725235>,  <44.204414, 36.611259, 36.537487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064308, 36.559097, 36.725235>,  <43.830799, 36.472164, 37.038151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064308, 36.559097, 36.725235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187608, 0.973541, 0.130467,
		0.789943, 0.070600, 0.609102,
		0.583775, 0.217335, -0.782287,
		44.239441, 36.624298, 36.490547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236282, 37.063942, 37.204865>,  <43.830799, 36.472164, 37.038151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236282, 37.063942, 37.204865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279568, 37.085953, 36.807823>,  <44.305538, 37.099159, 36.569599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279568, 37.085953, 36.807823>,  <44.236282, 37.063942, 37.204865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279568, 37.085953, 36.807823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048390, 0.997575, 0.050029,
		0.992950, 0.042619, 0.110608,
		0.108208, 0.055029, -0.992604,
		44.312031, 37.102463, 36.510040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697323, 37.722057, 37.059414>,  <44.236282, 37.063942, 37.204865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697323, 37.722057, 37.059414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518940, 37.646393, 36.709480>,  <44.411911, 37.600994, 36.499519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.518940, 37.646393, 36.709480>,  <44.697323, 37.722057, 37.059414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518940, 37.646393, 36.709480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016373, 0.978974, -0.203329,
		0.894905, -0.076352, -0.439676,
		-0.445956, -0.189159, -0.874838,
		44.385155, 37.589645, 36.447029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018673, 38.177094, 36.644508>,  <44.697323, 37.722057, 37.059414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018673, 38.177094, 36.644508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687271, 38.081055, 36.442146>,  <44.488430, 38.023434, 36.320728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687271, 38.081055, 36.442146>,  <45.018673, 38.177094, 36.644508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687271, 38.081055, 36.442146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022764, 0.917116, -0.397970,
		0.559520, -0.318203, -0.765300,
		-0.828504, -0.240093, -0.505901,
		44.438721, 38.009026, 36.290375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167503, 38.417164, 35.935471>,  <45.018673, 38.177094, 36.644508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167503, 38.417164, 35.935471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769878, 38.386024, 35.965866>,  <44.531303, 38.367340, 35.984104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769878, 38.386024, 35.965866>,  <45.167503, 38.417164, 35.935471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769878, 38.386024, 35.965866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103438, 0.892778, -0.438461,
		-0.033708, -0.443719, -0.895532,
		-0.994064, -0.077852, 0.075991,
		44.471661, 38.362667, 35.988663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876804, 38.628510, 35.246376>,  <45.167503, 38.417164, 35.935471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876804, 38.628510, 35.246376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613297, 38.694603, 35.539967>,  <44.455193, 38.734257, 35.716122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.613297, 38.694603, 35.539967>,  <44.876804, 38.628510, 35.246376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613297, 38.694603, 35.539967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183023, 0.911082, -0.369368,
		-0.729742, -0.377664, -0.569954,
		-0.658771, 0.165229, 0.733976,
		44.415665, 38.744171, 35.760159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387333, 38.831768, 34.908146>,  <44.876804, 38.628510, 35.246376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387333, 38.831768, 34.908146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311687, 38.967388, 35.276772>,  <44.266300, 39.048759, 35.497948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311687, 38.967388, 35.276772>,  <44.387333, 38.831768, 34.908146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311687, 38.967388, 35.276772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090667, 0.928460, -0.360196,
		-0.977761, -0.151673, -0.144844,
		-0.189114, 0.339053, 0.921564,
		44.254951, 39.069103, 35.553242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040947, 39.425835, 34.802444>,  <44.387333, 38.831768, 34.908146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.040947, 39.425835, 34.802444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121086, 39.469311, 35.191914>,  <44.169170, 39.495396, 35.425594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121086, 39.469311, 35.191914>,  <44.040947, 39.425835, 34.802444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121086, 39.469311, 35.191914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025469, 0.992913, -0.116081,
		-0.979394, 0.048055, 0.196160,
		0.200348, 0.108693, 0.973677,
		44.181190, 39.501919, 35.484016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521477, 40.045639, 35.056705>,  <44.040947, 39.425835, 34.802444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521477, 40.045639, 35.056705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827618, 39.984791, 35.306854>,  <44.011303, 39.948280, 35.456944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827618, 39.984791, 35.306854>,  <43.521477, 40.045639, 35.056705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827618, 39.984791, 35.306854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192864, 0.981222, 0.002647,
		-0.614030, 0.118585, 0.780323,
		0.765357, -0.152121, 0.625371,
		44.057224, 39.939156, 35.494465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515339, 40.653301, 35.525913>,  <43.521477, 40.045639, 35.056705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515339, 40.653301, 35.525913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874870, 40.480896, 35.557747>,  <44.090591, 40.377453, 35.576847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874870, 40.480896, 35.557747>,  <43.515339, 40.653301, 35.525913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874870, 40.480896, 35.557747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424753, 0.901366, 0.084411,
		-0.108112, -0.042069, 0.993248,
		0.898831, -0.431011, 0.079580,
		44.144520, 40.351593, 35.581619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807755, 41.069508, 36.060776>,  <43.515339, 40.653301, 35.525913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807755, 41.069508, 36.060776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112965, 40.905186, 35.861164>,  <44.296089, 40.806591, 35.741398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112965, 40.905186, 35.861164>,  <43.807755, 41.069508, 36.060776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112965, 40.905186, 35.861164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473128, 0.880992, -0.001818,
		0.440391, -0.234719, 0.866581,
		0.763024, -0.410804, -0.499033,
		44.341873, 40.781944, 35.711452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362152, 41.362988, 36.367161>,  <43.807755, 41.069508, 36.060776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362152, 41.362988, 36.367161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497925, 41.251274, 36.007877>,  <44.579388, 41.184246, 35.792305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497925, 41.251274, 36.007877>,  <44.362152, 41.362988, 36.367161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497925, 41.251274, 36.007877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368908, 0.917926, -0.146009,
		0.865271, -0.281798, 0.414603,
		0.339430, -0.279287, -0.898213,
		44.599754, 41.167488, 35.738415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045631, 41.652191, 36.267056>,  <44.362152, 41.362988, 36.367161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045631, 41.652191, 36.267056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971661, 41.562248, 35.884384>,  <44.927277, 41.508282, 35.654781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971661, 41.562248, 35.884384>,  <45.045631, 41.652191, 36.267056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971661, 41.562248, 35.884384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401981, 0.871004, -0.282424,
		0.896778, -0.436797, -0.070687,
		-0.184931, -0.224857, -0.956682,
		44.916180, 41.494793, 35.597378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620270, 41.901100, 35.864780>,  <45.045631, 41.652191, 36.267056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620270, 41.901100, 35.864780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319759, 41.855743, 35.604710>,  <45.139454, 41.828529, 35.448666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319759, 41.855743, 35.604710>,  <45.620270, 41.901100, 35.864780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319759, 41.855743, 35.604710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298261, 0.820466, -0.487725,
		0.588752, -0.560337, -0.582574,
		-0.751273, -0.113390, -0.650178,
		45.094379, 41.821728, 35.409657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033314, 41.935040, 35.152534>,  <45.620270, 41.901100, 35.864780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033314, 41.935040, 35.152534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641521, 42.013809, 35.135368>,  <45.406448, 42.061073, 35.125069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641521, 42.013809, 35.135368>,  <46.033314, 41.935040, 35.152534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641521, 42.013809, 35.135368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199639, 0.918703, -0.340777,
		-0.027679, -0.342352, -0.939164,
		-0.979478, 0.196926, -0.042919,
		45.347679, 42.072887, 35.122494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055279, 42.338089, 34.630749>,  <46.033314, 41.935040, 35.152534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055279, 42.338089, 34.630749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695522, 42.406490, 34.791672>,  <45.479668, 42.447533, 34.888226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695522, 42.406490, 34.791672>,  <46.055279, 42.338089, 34.630749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695522, 42.406490, 34.791672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093154, 0.974148, -0.205809,
		-0.427106, -0.147626, -0.892069,
		-0.899390, 0.171002, 0.402312,
		45.425705, 42.457790, 34.912365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836407, 42.891720, 34.220425>,  <46.055279, 42.338089, 34.630749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836407, 42.891720, 34.220425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585136, 42.909748, 34.531132>,  <45.434376, 42.920567, 34.717556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585136, 42.909748, 34.531132>,  <45.836407, 42.891720, 34.220425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585136, 42.909748, 34.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172085, 0.981646, 0.082207,
		-0.758804, 0.185310, -0.624401,
		-0.628174, 0.045071, 0.776766,
		45.396683, 42.923271, 34.764160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417839, 43.546158, 34.193691>,  <45.836407, 42.891720, 34.220425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417839, 43.546158, 34.193691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403522, 43.435360, 34.577774>,  <45.394932, 43.368881, 34.808224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403522, 43.435360, 34.577774>,  <45.417839, 43.546158, 34.193691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403522, 43.435360, 34.577774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161437, 0.946597, 0.279093,
		-0.986234, 0.165003, 0.010834,
		-0.035796, -0.276999, 0.960203,
		45.392784, 43.352261, 34.865833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169548, 44.129410, 34.564426>,  <45.417839, 43.546158, 34.193691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169548, 44.129410, 34.564426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261150, 43.924709, 34.895645>,  <45.316113, 43.801888, 35.094376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261150, 43.924709, 34.895645>,  <45.169548, 44.129410, 34.564426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261150, 43.924709, 34.895645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072806, 0.857279, 0.509678,
		-0.970698, -0.056434, 0.233583,
		0.229010, -0.511750, 0.828050,
		45.329853, 43.771183, 35.144058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648121, 44.372955, 35.236816>,  <45.169548, 44.129410, 34.564426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648121, 44.372955, 35.236816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006039, 44.228020, 35.341160>,  <45.220791, 44.141056, 35.403767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.006039, 44.228020, 35.341160>,  <44.648121, 44.372955, 35.236816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006039, 44.228020, 35.341160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147025, 0.790815, 0.594133,
		-0.421574, -0.493275, 0.760891,
		0.894796, -0.362341, 0.260863,
		45.274479, 44.119316, 35.419418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692619, 44.413303, 35.865723>,  <44.648121, 44.372955, 35.236816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692619, 44.413303, 35.865723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079353, 44.413128, 35.763557>,  <45.311394, 44.413021, 35.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079353, 44.413128, 35.763557>,  <44.692619, 44.413303, 35.865723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079353, 44.413128, 35.763557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133436, 0.853541, 0.503649,
		0.217782, -0.521025, 0.825290,
		0.966833, -0.000438, -0.255410,
		45.369404, 44.412998, 35.686935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284470, 44.305767, 36.448231>,  <44.692619, 44.413303, 35.865723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284470, 44.305767, 36.448231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416798, 44.533684, 36.147327>,  <45.496197, 44.670433, 35.966785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416798, 44.533684, 36.147327>,  <45.284470, 44.305767, 36.448231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416798, 44.533684, 36.147327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149404, 0.755463, 0.637929,
		0.931790, -0.323433, 0.164796,
		0.330825, 0.569795, -0.752255,
		45.516045, 44.704624, 35.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361938, 44.869633, 36.939682>,  <45.284470, 44.305767, 36.448231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361938, 44.869633, 36.939682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515331, 44.974541, 36.585472>,  <45.607368, 45.037487, 36.372948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515331, 44.974541, 36.585472>,  <45.361938, 44.869633, 36.939682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515331, 44.974541, 36.585472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302428, 0.870302, 0.388731,
		0.872630, -0.416877, 0.254422,
		0.383477, 0.262274, -0.885527,
		45.630375, 45.053223, 36.319817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011978, 45.216415, 37.111622>,  <45.361938, 44.869633, 36.939682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011978, 45.216415, 37.111622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883179, 45.336010, 36.752308>,  <45.805897, 45.407768, 36.536720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883179, 45.336010, 36.752308>,  <46.011978, 45.216415, 37.111622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883179, 45.336010, 36.752308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197760, 0.949134, 0.245021,
		0.925854, -0.098748, -0.364750,
		-0.322002, 0.298986, -0.898288,
		45.786579, 45.425705, 36.482822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351177, 45.501209, 37.652939>,  <46.011978, 45.216415, 37.111622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351177, 45.501209, 37.652939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328327, 45.104115, 37.695282>,  <46.314617, 44.865856, 37.720688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328327, 45.104115, 37.695282>,  <46.351177, 45.501209, 37.652939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328327, 45.104115, 37.695282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681832, 0.038660, 0.730487,
		-0.729275, 0.113904, 0.674673,
		-0.057123, -0.992739, 0.105858,
		46.311192, 44.806293, 37.727039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282097, 45.404247, 38.324127>,  <46.351177, 45.501209, 37.652939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282097, 45.404247, 38.324127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481632, 45.094238, 38.168953>,  <46.601353, 44.908234, 38.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481632, 45.094238, 38.168953>,  <46.282097, 45.404247, 38.324127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481632, 45.094238, 38.168953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610676, -0.003310, 0.791873,
		-0.615006, -0.631921, 0.471639,
		0.498840, -0.775026, -0.387935,
		46.631283, 44.861732, 38.052574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248203, 44.929047, 38.847229>,  <46.282097, 45.404247, 38.324127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248203, 44.929047, 38.847229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571526, 44.852791, 38.624413>,  <46.765518, 44.807037, 38.490723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571526, 44.852791, 38.624413>,  <46.248203, 44.929047, 38.847229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571526, 44.852791, 38.624413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542038, -0.128414, 0.830485,
		-0.229853, -0.973225, -0.000465,
		0.808308, -0.190637, -0.557041,
		46.814018, 44.795601, 38.457298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.527634, 44.444691, 39.150448>,  <46.248203, 44.929047, 38.847229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.527634, 44.444691, 39.150448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866196, 44.569962, 38.978161>,  <47.069332, 44.645123, 38.874790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866196, 44.569962, 38.978161>,  <46.527634, 44.444691, 39.150448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866196, 44.569962, 38.978161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512959, -0.262169, 0.817399,
		0.143069, -0.912792, -0.382548,
		0.846407, 0.313175, -0.430716,
		47.120117, 44.663914, 38.848946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815891, 44.665699, 39.787331>,  <46.527634, 44.444691, 39.150448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815891, 44.665699, 39.787331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645565, 44.401844, 40.035057>,  <46.543369, 44.243530, 40.183693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645565, 44.401844, 40.035057>,  <46.815891, 44.665699, 39.787331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645565, 44.401844, 40.035057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060081, -0.703580, -0.708072,
		0.902812, -0.264301, 0.339229,
		-0.425819, -0.659637, 0.619321,
		46.517818, 44.203953, 40.220852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.257042, 44.156319, 39.735241>,  <46.815891, 44.665699, 39.787331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.257042, 44.156319, 39.735241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892632, 44.033192, 39.844997>,  <46.673985, 43.959316, 39.910851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892632, 44.033192, 39.844997>,  <47.257042, 44.156319, 39.735241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892632, 44.033192, 39.844997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040515, -0.729011, -0.683302,
		0.410364, -0.611386, 0.676616,
		-0.911022, -0.307815, 0.274390,
		46.619324, 43.940845, 39.927315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.153214, 43.422474, 40.031204>,  <47.257042, 44.156319, 39.735241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.153214, 43.422474, 40.031204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800137, 43.521122, 39.871185>,  <46.588291, 43.580311, 39.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800137, 43.521122, 39.871185>,  <47.153214, 43.422474, 40.031204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.800137, 43.521122, 39.871185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014610, -0.836426, -0.547886,
		-0.469727, -0.489458, 0.734702,
		-0.882691, 0.246623, -0.400043,
		46.535328, 43.595108, 39.751171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675091, 42.919018, 40.144691>,  <47.153214, 43.422474, 40.031204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675091, 42.919018, 40.144691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529533, 43.098656, 39.818283>,  <46.442200, 43.206440, 39.622437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529533, 43.098656, 39.818283>,  <46.675091, 42.919018, 40.144691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529533, 43.098656, 39.818283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018615, -0.872406, -0.488427,
		-0.931254, -0.192926, 0.309105,
		-0.363896, 0.449096, -0.816023,
		46.420364, 43.233383, 39.573475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047451, 42.624008, 39.944237>,  <46.675091, 42.919018, 40.144691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047451, 42.624008, 39.944237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149483, 42.789448, 39.594639>,  <46.210701, 42.888710, 39.384880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149483, 42.789448, 39.594639>,  <46.047451, 42.624008, 39.944237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149483, 42.789448, 39.594639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179692, -0.867875, -0.463145,
		-0.950077, 0.275188, -0.147053,
		0.255076, 0.413600, -0.873998,
		46.226006, 42.913528, 39.332439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750603, 42.190189, 39.416031>,  <46.047451, 42.624008, 39.944237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750603, 42.190189, 39.416031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005753, 42.396736, 39.187473>,  <46.158840, 42.520664, 39.050339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005753, 42.396736, 39.187473>,  <45.750603, 42.190189, 39.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005753, 42.396736, 39.187473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020348, -0.730370, -0.682749,
		-0.769875, 0.447132, -0.455375,
		0.637871, 0.516365, -0.571391,
		46.197113, 42.551647, 39.016056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516399, 42.164848, 38.740829>,  <45.750603, 42.190189, 39.416031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516399, 42.164848, 38.740829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903934, 42.242439, 38.679222>,  <46.136456, 42.288994, 38.642258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903934, 42.242439, 38.679222>,  <45.516399, 42.164848, 38.740829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903934, 42.242439, 38.679222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023235, -0.690257, -0.723191,
		-0.246590, 0.697079, -0.673257,
		0.968841, 0.193975, -0.154014,
		46.194588, 42.300632, 38.633018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635715, 42.085690, 38.049725>,  <45.516399, 42.164848, 38.740829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635715, 42.085690, 38.049725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017967, 42.089355, 38.167500>,  <46.247318, 42.091553, 38.238163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017967, 42.089355, 38.167500>,  <45.635715, 42.085690, 38.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017967, 42.089355, 38.167500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178465, -0.813211, -0.553930,
		0.234365, 0.581897, -0.778761,
		0.955627, 0.009160, 0.294436,
		46.304657, 42.092102, 38.255829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953873, 41.890003, 37.487118>,  <45.635715, 42.085690, 38.049725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953873, 41.890003, 37.487118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253849, 41.802536, 37.736847>,  <46.433834, 41.750057, 37.886684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.253849, 41.802536, 37.736847>,  <45.953873, 41.890003, 37.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253849, 41.802536, 37.736847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268882, -0.761539, -0.589712,
		0.604396, 0.610117, -0.512312,
		0.749939, -0.218668, 0.624321,
		46.478832, 41.736935, 37.924145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.627769, 41.779541, 37.104885>,  <45.953873, 41.890003, 37.487118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.627769, 41.779541, 37.104885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655300, 41.604679, 37.463585>,  <46.671818, 41.499760, 37.678802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.655300, 41.604679, 37.463585>,  <46.627769, 41.779541, 37.104885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655300, 41.604679, 37.463585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375200, -0.821542, -0.429294,
		0.924385, 0.366005, 0.107479,
		0.068825, -0.437159, 0.896747,
		46.675949, 41.473530, 37.732609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358620, 41.649632, 37.194172>,  <46.627769, 41.779541, 37.104885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358620, 41.649632, 37.194172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139805, 41.418205, 37.436165>,  <47.008514, 41.279350, 37.581360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.139805, 41.418205, 37.436165>,  <47.358620, 41.649632, 37.194172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.139805, 41.418205, 37.436165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318125, -0.812171, -0.489055,
		0.774303, -0.075071, 0.628347,
		-0.547039, -0.578570, 0.604984,
		46.975693, 41.244633, 37.617661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701488, 41.124180, 37.408337>,  <47.358620, 41.649632, 37.194172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701488, 41.124180, 37.408337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324528, 40.993904, 37.438835>,  <47.098351, 40.915741, 37.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324528, 40.993904, 37.438835>,  <47.701488, 41.124180, 37.408337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324528, 40.993904, 37.438835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269962, -0.875163, -0.401511,
		0.197497, -0.357799, 0.912674,
		-0.942399, -0.325685, 0.076250,
		47.041809, 40.896198, 37.461712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.790691, 40.569157, 37.779179>,  <47.701488, 41.124180, 37.408337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.790691, 40.569157, 37.779179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434982, 40.534870, 37.599472>,  <47.221558, 40.514297, 37.491650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434982, 40.534870, 37.599472>,  <47.790691, 40.569157, 37.779179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.434982, 40.534870, 37.599472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173470, -0.972100, -0.157893,
		-0.423196, -0.218345, 0.879335,
		-0.889277, -0.085718, -0.449265,
		47.168198, 40.509155, 37.464691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.646564, 39.955418, 38.007210>,  <47.790691, 40.569157, 37.779179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.646564, 39.955418, 38.007210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368282, 40.006065, 37.724377>,  <47.201313, 40.036453, 37.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368282, 40.006065, 37.724377>,  <47.646564, 39.955418, 38.007210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368282, 40.006065, 37.724377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249187, -0.880677, -0.402883,
		-0.673725, -0.456482, 0.581136,
		-0.695702, 0.126621, -0.707083,
		47.159573, 40.044052, 37.512253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274757, 39.389648, 38.012112>,  <47.646564, 39.955418, 38.007210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274757, 39.389648, 38.012112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188545, 39.547501, 37.654831>,  <47.136818, 39.642212, 37.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188545, 39.547501, 37.654831>,  <47.274757, 39.389648, 38.012112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188545, 39.547501, 37.654831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057349, -0.908007, -0.415012,
		-0.974811, -0.140673, 0.173074,
		-0.215533, 0.394633, -0.893203,
		47.123886, 39.665890, 37.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809757, 39.023361, 37.751747>,  <47.274757, 39.389648, 38.012112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809757, 39.023361, 37.751747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942459, 39.197441, 37.416954>,  <47.022079, 39.301888, 37.216080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.942459, 39.197441, 37.416954>,  <46.809757, 39.023361, 37.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.942459, 39.197441, 37.416954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109816, -0.899016, -0.423923,
		-0.936952, 0.048725, -0.346045,
		0.331755, 0.435197, -0.836984,
		47.041985, 39.327999, 37.165859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359791, 38.823666, 37.224308>,  <46.809757, 39.023361, 37.751747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359791, 38.823666, 37.224308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681850, 38.948582, 37.022629>,  <46.875088, 39.023529, 36.901623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.681850, 38.948582, 37.022629>,  <46.359791, 38.823666, 37.224308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681850, 38.948582, 37.022629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133915, -0.732456, -0.667514,
		-0.577758, 0.604967, -0.547915,
		0.805148, 0.312288, -0.504196,
		46.923393, 39.042267, 36.871368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153744, 38.855156, 36.555584>,  <46.359791, 38.823666, 37.224308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153744, 38.855156, 36.555584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547886, 38.789631, 36.536625>,  <46.784370, 38.750317, 36.525249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547886, 38.789631, 36.536625>,  <46.153744, 38.855156, 36.555584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547886, 38.789631, 36.536625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158024, -0.772624, -0.614883,
		0.064108, 0.613365, -0.787193,
		0.985352, -0.163815, -0.047395,
		46.843491, 38.740486, 36.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156822, 38.619232, 35.916782>,  <46.153744, 38.855156, 36.555584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156822, 38.619232, 35.916782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511150, 38.494740, 36.054455>,  <46.723747, 38.420044, 36.137058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.511150, 38.494740, 36.054455>,  <46.156822, 38.619232, 35.916782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.511150, 38.494740, 36.054455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092458, -0.845220, -0.526360,
		0.454726, 0.434438, -0.777488,
		0.885819, -0.311235, 0.344177,
		46.776897, 38.401371, 36.157707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.607403, 38.484222, 35.356853>,  <46.156822, 38.619232, 35.916782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.607403, 38.484222, 35.356853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765179, 38.274426, 35.658669>,  <46.859844, 38.148548, 35.839756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.765179, 38.274426, 35.658669>,  <46.607403, 38.484222, 35.356853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.765179, 38.274426, 35.658669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094321, -0.793664, -0.601000,
		0.914068, 0.308227, -0.263582,
		0.394440, -0.524494, 0.754535,
		46.883511, 38.117077, 35.885029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963268, 38.110092, 35.001396>,  <46.607403, 38.484222, 35.356853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963268, 38.110092, 35.001396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973785, 37.921696, 35.354095>,  <46.980095, 37.808659, 35.565716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.973785, 37.921696, 35.354095>,  <46.963268, 38.110092, 35.001396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.973785, 37.921696, 35.354095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267032, -0.846692, -0.460225,
		0.963329, 0.247553, 0.103511,
		0.026288, -0.470989, 0.881747,
		46.981670, 37.780399, 35.618618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614506, 37.664169, 35.027824>,  <46.963268, 38.110092, 35.001396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614506, 37.664169, 35.027824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363079, 37.508957, 35.297443>,  <47.212223, 37.415829, 35.459217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.363079, 37.508957, 35.297443>,  <47.614506, 37.664169, 35.027824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.363079, 37.508957, 35.297443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025840, -0.855759, -0.516729,
		0.777330, -0.342214, 0.527871,
		-0.628562, -0.388029, 0.674050,
		47.174511, 37.392548, 35.499657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.854317, 37.134598, 35.174419>,  <47.614506, 37.664169, 35.027824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.854317, 37.134598, 35.174419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477501, 37.058311, 35.284832>,  <47.251411, 37.012539, 35.351078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.477501, 37.058311, 35.284832>,  <47.854317, 37.134598, 35.174419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.477501, 37.058311, 35.284832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060853, -0.906207, -0.418432,
		0.329939, -0.377382, 0.865288,
		-0.942039, -0.190712, 0.276028,
		47.194889, 37.001099, 35.367641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.796329, 36.433044, 35.464455>,  <47.854317, 37.134598, 35.174419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.796329, 36.433044, 35.464455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455627, 36.553802, 35.293167>,  <47.251205, 36.626259, 35.190395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455627, 36.553802, 35.293167>,  <47.796329, 36.433044, 35.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455627, 36.553802, 35.293167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035063, -0.782626, -0.621504,
		-0.522764, -0.544384, 0.656021,
		-0.851756, 0.301897, -0.428216,
		47.200100, 36.644371, 35.164703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235500, 35.928398, 35.642097>,  <47.796329, 36.433044, 35.464455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235500, 35.928398, 35.642097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.219288, 36.126411, 35.294926>,  <47.209560, 36.245220, 35.086624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.219288, 36.126411, 35.294926>,  <47.235500, 35.928398, 35.642097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.219288, 36.126411, 35.294926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240655, -0.838236, -0.489332,
		-0.969764, -0.228706, -0.085154,
		-0.040534, 0.495030, -0.867930,
		47.207127, 36.274921, 35.034546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.685562, 35.612217, 35.179039>,  <47.235500, 35.928398, 35.642097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.685562, 35.612217, 35.179039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006172, 35.783340, 35.011925>,  <47.198536, 35.886013, 34.911655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.006172, 35.783340, 35.011925>,  <46.685562, 35.612217, 35.179039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.006172, 35.783340, 35.011925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042489, -0.737654, -0.673841,
		-0.596454, 0.522347, -0.609423,
		0.801522, 0.427809, -0.417782,
		47.246628, 35.911682, 34.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.353336, 35.200043, 35.320980>,  <46.685562, 35.612217, 35.179039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.353336, 35.200043, 35.320980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630684, 35.243050, 35.035973>,  <47.797092, 35.268852, 34.864967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.630684, 35.243050, 35.035973>,  <47.353336, 35.200043, 35.320980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.630684, 35.243050, 35.035973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714965, -0.020597, -0.698857,
		-0.089814, 0.993990, 0.062589,
		0.693367, 0.107516, -0.712518,
		47.838696, 35.275303, 34.822216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.301109, 42.925060, 42.373241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964180, 42.711826, 42.341465>,  <32.762024, 42.583885, 42.322399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.964180, 42.711826, 42.341465>,  <33.301109, 42.925060, 42.373241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964180, 42.711826, 42.341465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245215, -0.247782, -0.937269,
		0.479963, -0.808963, 0.339433,
		-0.842322, -0.533088, -0.079444,
		32.711483, 42.551899, 42.317631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552261, 42.247536, 42.227688>,  <33.301109, 42.925060, 42.373241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552261, 42.247536, 42.227688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178379, 42.294811, 42.093609>,  <32.954048, 42.323177, 42.013161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.178379, 42.294811, 42.093609>,  <33.552261, 42.247536, 42.227688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178379, 42.294811, 42.093609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299766, -0.244566, -0.922132,
		-0.190960, -0.962403, 0.193170,
		-0.934706, 0.118185, -0.335198,
		32.897968, 42.330269, 41.993050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478512, 41.676010, 41.916351>,  <33.552261, 42.247536, 42.227688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478512, 41.676010, 41.916351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179192, 41.884205, 41.751846>,  <32.999599, 42.009121, 41.653145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.179192, 41.884205, 41.751846>,  <33.478512, 41.676010, 41.916351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179192, 41.884205, 41.751846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309522, -0.274383, -0.910445,
		-0.586716, -0.808584, 0.044220,
		-0.748305, 0.520486, -0.411260,
		32.954700, 42.040352, 41.628468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121082, 41.232685, 41.470951>,  <33.478512, 41.676010, 41.916351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121082, 41.232685, 41.470951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.038975, 41.605385, 41.351151>,  <32.989708, 41.829006, 41.279270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.038975, 41.605385, 41.351151>,  <33.121082, 41.232685, 41.470951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038975, 41.605385, 41.351151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364123, -0.211343, -0.907055,
		-0.908448, -0.295249, -0.295890,
		-0.205273, 0.931752, -0.299501,
		32.977394, 41.884911, 41.261299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858879, 41.179417, 40.802395>,  <33.121082, 41.232685, 41.470951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858879, 41.179417, 40.802395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947174, 41.568699, 40.828163>,  <33.000153, 41.802269, 40.843624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947174, 41.568699, 40.828163>,  <32.858879, 41.179417, 40.802395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947174, 41.568699, 40.828163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378981, -0.024724, -0.925074,
		-0.898692, 0.228614, -0.374283,
		0.220739, 0.973203, 0.064420,
		33.013397, 41.860661, 40.847488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725910, 41.390511, 40.198582>,  <32.858879, 41.179417, 40.802395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725910, 41.390511, 40.198582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970181, 41.672920, 40.342030>,  <33.116741, 41.842365, 40.428097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970181, 41.672920, 40.342030>,  <32.725910, 41.390511, 40.198582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970181, 41.672920, 40.342030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424332, 0.090610, -0.900962,
		-0.668594, 0.702368, -0.244255,
		0.610675, 0.706023, 0.358618,
		33.153381, 41.884727, 40.449615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824272, 41.888340, 39.660763>,  <32.725910, 41.390511, 40.198582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824272, 41.888340, 39.660763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.126938, 42.004578, 39.895031>,  <33.308537, 42.074322, 40.035591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.126938, 42.004578, 39.895031>,  <32.824272, 41.888340, 39.660763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126938, 42.004578, 39.895031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599735, 0.048183, -0.798747,
		-0.260331, 0.955632, -0.137822,
		0.756668, 0.290595, 0.585669,
		33.353939, 42.091755, 40.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137127, 42.431904, 39.324287>,  <32.824272, 41.888340, 39.660763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137127, 42.431904, 39.324287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420803, 42.285568, 39.565353>,  <33.591011, 42.197765, 39.709991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.420803, 42.285568, 39.565353>,  <33.137127, 42.431904, 39.324287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420803, 42.285568, 39.565353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689051, 0.178808, -0.702308,
		0.149171, 0.913339, 0.378892,
		0.709195, -0.365840, 0.602664,
		33.633560, 42.175816, 39.746151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730797, 42.793755, 39.152679>,  <33.137127, 42.431904, 39.324287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730797, 42.793755, 39.152679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847141, 42.442039, 39.303543>,  <33.916946, 42.231010, 39.394062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.847141, 42.442039, 39.303543>,  <33.730797, 42.793755, 39.152679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847141, 42.442039, 39.303543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716718, -0.060899, -0.694699,
		0.633810, 0.472377, 0.612490,
		0.290860, -0.879290, 0.377159,
		33.934399, 42.178253, 39.416691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500393, 42.869339, 39.165886>,  <33.730797, 42.793755, 39.152679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500393, 42.869339, 39.165886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.469082, 42.478008, 39.242577>,  <34.450294, 42.243210, 39.288589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.469082, 42.478008, 39.242577>,  <34.500393, 42.869339, 39.165886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469082, 42.478008, 39.242577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745403, -0.185138, -0.640389,
		0.662003, 0.092788, 0.743735,
		-0.078273, -0.978322, 0.191727,
		34.445599, 42.184513, 39.300095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132984, 42.691910, 39.300220>,  <34.500393, 42.869339, 39.165886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132984, 42.691910, 39.300220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935303, 42.368828, 39.171612>,  <34.816692, 42.174980, 39.094444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935303, 42.368828, 39.171612>,  <35.132984, 42.691910, 39.300220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935303, 42.368828, 39.171612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614302, -0.062759, -0.786571,
		0.615135, -0.586243, 0.527188,
		-0.494208, -0.807700, -0.321525,
		34.787041, 42.126518, 39.075153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627968, 42.251194, 39.003742>,  <35.132984, 42.691910, 39.300220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627968, 42.251194, 39.003742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295181, 42.100491, 38.840828>,  <35.095509, 42.010071, 38.743080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295181, 42.100491, 38.840828>,  <35.627968, 42.251194, 39.003742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295181, 42.100491, 38.840828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485840, -0.140212, -0.862728,
		0.267932, -0.915639, 0.299695,
		-0.831969, -0.376756, -0.407287,
		35.045589, 41.987465, 38.718643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814594, 41.632111, 38.609699>,  <35.627968, 42.251194, 39.003742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814594, 41.632111, 38.609699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469429, 41.766087, 38.458336>,  <35.262329, 41.846474, 38.367519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.469429, 41.766087, 38.458336>,  <35.814594, 41.632111, 38.609699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469429, 41.766087, 38.458336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320278, -0.216728, -0.922199,
		-0.390892, -0.916975, 0.079745,
		-0.862917, 0.334940, -0.378405,
		35.210552, 41.866570, 38.344814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643063, 41.176506, 38.024567>,  <35.814594, 41.632111, 38.609699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643063, 41.176506, 38.024567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432224, 41.504494, 37.935284>,  <35.305721, 41.701286, 37.881714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432224, 41.504494, 37.935284>,  <35.643063, 41.176506, 38.024567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432224, 41.504494, 37.935284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430791, 0.031415, -0.901905,
		-0.732522, -0.571546, -0.369794,
		-0.527096, 0.819969, -0.223205,
		35.274094, 41.750484, 37.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233486, 41.049068, 37.454620>,  <35.643063, 41.176506, 38.024567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233486, 41.049068, 37.454620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258602, 41.448265, 37.457893>,  <35.273670, 41.687782, 37.459858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258602, 41.448265, 37.457893>,  <35.233486, 41.049068, 37.454620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258602, 41.448265, 37.457893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212655, -0.005368, -0.977113,
		-0.975108, 0.063094, -0.212565,
		0.062791, 0.997993, 0.008183,
		35.277439, 41.747662, 37.460350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976025, 41.219166, 36.895187>,  <35.233486, 41.049068, 37.454620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976025, 41.219166, 36.895187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171349, 41.561127, 36.965275>,  <35.288544, 41.766304, 37.007328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.171349, 41.561127, 36.965275>,  <34.976025, 41.219166, 36.895187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171349, 41.561127, 36.965275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239597, 0.061728, -0.968908,
		-0.839136, 0.515106, -0.174690,
		0.488307, 0.854901, 0.175216,
		35.317841, 41.817596, 37.017841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862442, 41.604412, 36.197769>,  <34.976025, 41.219166, 36.895187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862442, 41.604412, 36.197769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143314, 41.811394, 36.393394>,  <35.311836, 41.935585, 36.510769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143314, 41.811394, 36.393394>,  <34.862442, 41.604412, 36.197769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143314, 41.811394, 36.393394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452181, 0.206481, -0.867697,
		-0.549977, 0.830425, -0.088997,
		0.702181, 0.517456, 0.489062,
		35.353970, 41.966629, 36.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110451, 42.162632, 35.804344>,  <34.862442, 41.604412, 36.197769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110451, 42.162632, 35.804344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425377, 42.127106, 36.048393>,  <35.614334, 42.105789, 36.194820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.425377, 42.127106, 36.048393>,  <35.110451, 42.162632, 35.804344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425377, 42.127106, 36.048393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602717, 0.319313, -0.731280,
		-0.129872, 0.943478, 0.304930,
		0.787315, -0.088814, 0.610120,
		35.661572, 42.100460, 36.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484913, 42.803658, 35.700928>,  <35.110451, 42.162632, 35.804344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484913, 42.803658, 35.700928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708290, 42.515736, 35.865868>,  <35.842316, 42.342983, 35.964832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708290, 42.515736, 35.865868>,  <35.484913, 42.803658, 35.700928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708290, 42.515736, 35.865868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738594, 0.205132, -0.642183,
		0.377657, 0.663181, 0.646194,
		0.558438, -0.719800, 0.412352,
		35.875820, 42.299797, 35.989574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155132, 43.163090, 35.794483>,  <35.484913, 42.803658, 35.700928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155132, 43.163090, 35.794483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207058, 42.766499, 35.790138>,  <36.238213, 42.528545, 35.787529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207058, 42.766499, 35.790138>,  <36.155132, 43.163090, 35.794483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207058, 42.766499, 35.790138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770178, 0.107728, -0.628666,
		0.624479, 0.073240, 0.777600,
		0.129812, -0.991479, -0.010866,
		36.246002, 42.469055, 35.786877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909451, 43.105469, 35.779724>,  <36.155132, 43.163090, 35.794483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909451, 43.105469, 35.779724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791054, 42.742859, 35.659328>,  <36.720016, 42.525291, 35.587090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.791054, 42.742859, 35.659328>,  <36.909451, 43.105469, 35.779724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791054, 42.742859, 35.659328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700665, 0.008111, -0.713445,
		0.649199, -0.422068, 0.632771,
		-0.295990, -0.906528, -0.300994,
		36.702255, 42.470901, 35.569031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467522, 42.691898, 35.628551>,  <36.909451, 43.105469, 35.779724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467522, 42.691898, 35.628551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178215, 42.491161, 35.438801>,  <37.004631, 42.370720, 35.324951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178215, 42.491161, 35.438801>,  <37.467522, 42.691898, 35.628551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178215, 42.491161, 35.438801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483988, 0.121619, -0.866582,
		0.492580, -0.856367, 0.154922,
		-0.723271, -0.501841, -0.474378,
		36.961235, 42.340611, 35.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022530, 42.133183, 35.523151>,  <37.467522, 42.691898, 35.628551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022530, 42.133183, 35.523151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325516, 41.975883, 35.731613>,  <38.507309, 41.881504, 35.856689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.325516, 41.975883, 35.731613>,  <38.022530, 42.133183, 35.523151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325516, 41.975883, 35.731613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579581, -0.037563, 0.814048,
		-0.300551, -0.918663, -0.256374,
		0.757466, -0.393253, 0.521150,
		38.552757, 41.857906, 35.887959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663673, 41.582630, 35.841278>,  <38.022530, 42.133183, 35.523151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663673, 41.582630, 35.841278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010834, 41.642490, 36.030739>,  <38.219131, 41.678406, 36.144417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010834, 41.642490, 36.030739>,  <37.663673, 41.582630, 35.841278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010834, 41.642490, 36.030739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439422, -0.213319, 0.872584,
		0.231624, -0.965453, -0.119380,
		0.867905, 0.149654, 0.473651,
		38.271206, 41.687386, 36.172832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603607, 41.188007, 36.470238>,  <37.663673, 41.582630, 35.841278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603607, 41.188007, 36.470238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908119, 41.431782, 36.558826>,  <38.090824, 41.578045, 36.611980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.908119, 41.431782, 36.558826>,  <37.603607, 41.188007, 36.470238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908119, 41.431782, 36.558826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303790, 0.033469, 0.952151,
		0.572861, -0.792130, 0.210619,
		0.761276, 0.609435, 0.221468,
		38.136501, 41.614613, 36.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136135, 40.936596, 36.975525>,  <37.603607, 41.188007, 36.470238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136135, 40.936596, 36.975525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132812, 41.335548, 37.004250>,  <38.130821, 41.574921, 37.021484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132812, 41.335548, 37.004250>,  <38.136135, 40.936596, 36.975525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132812, 41.335548, 37.004250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174423, -0.072154, 0.982024,
		0.984636, -0.004370, 0.174566,
		-0.008304, 0.997384, 0.071807,
		38.130322, 41.634762, 37.025791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491772, 41.060905, 37.581131>,  <38.136135, 40.936596, 36.975525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491772, 41.060905, 37.581131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352654, 41.431225, 37.521889>,  <38.269184, 41.653416, 37.486343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.352654, 41.431225, 37.521889>,  <38.491772, 41.060905, 37.581131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352654, 41.431225, 37.521889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273483, 0.050922, 0.960528,
		0.896797, 0.374572, 0.235480,
		-0.347796, 0.925798, -0.148106,
		38.248314, 41.708965, 37.477455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684120, 41.523842, 38.239388>,  <38.491772, 41.060905, 37.581131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684120, 41.523842, 38.239388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388264, 41.717384, 38.052280>,  <38.210751, 41.833511, 37.940014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388264, 41.717384, 38.052280>,  <38.684120, 41.523842, 38.239388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388264, 41.717384, 38.052280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330424, 0.344426, 0.878744,
		0.586297, 0.804521, -0.094876,
		-0.739645, 0.483856, -0.467770,
		38.166370, 41.862541, 37.911949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616398, 42.161816, 38.548710>,  <38.684120, 41.523842, 38.239388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616398, 42.161816, 38.548710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252285, 42.113861, 38.390209>,  <38.033817, 42.085087, 38.295109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252285, 42.113861, 38.390209>,  <38.616398, 42.161816, 38.548710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252285, 42.113861, 38.390209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413776, 0.294489, 0.861432,
		0.013415, 0.948105, -0.317675,
		-0.910280, -0.119890, -0.396253,
		37.979202, 42.077892, 38.271332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197029, 42.818867, 38.774467>,  <38.616398, 42.161816, 38.548710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197029, 42.818867, 38.774467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941849, 42.528038, 38.672974>,  <37.788738, 42.353542, 38.612076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941849, 42.528038, 38.672974>,  <38.197029, 42.818867, 38.774467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941849, 42.528038, 38.672974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420565, 0.052933, 0.905717,
		-0.645090, 0.684518, -0.339549,
		-0.637953, -0.727071, -0.253738,
		37.750462, 42.309917, 38.596851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537983, 43.132534, 38.794418>,  <38.197029, 42.818867, 38.774467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537983, 43.132534, 38.794418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494038, 42.738750, 38.849213>,  <37.467670, 42.502480, 38.882092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494038, 42.738750, 38.849213>,  <37.537983, 43.132534, 38.794418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494038, 42.738750, 38.849213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574864, 0.175371, 0.799235,
		-0.810839, 0.009058, -0.585199,
		-0.109867, -0.984461, 0.136990,
		37.461079, 42.443413, 38.890308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897625, 43.110153, 39.028446>,  <37.537983, 43.132534, 38.794418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897625, 43.110153, 39.028446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051239, 42.752262, 39.119637>,  <37.143406, 42.537525, 39.174351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051239, 42.752262, 39.119637>,  <36.897625, 43.110153, 39.028446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051239, 42.752262, 39.119637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637985, -0.078654, 0.766021,
		-0.667452, -0.439623, -0.601032,
		0.384034, -0.894732, 0.227975,
		37.166451, 42.483841, 39.188030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274330, 42.727707, 39.178299>,  <36.897625, 43.110153, 39.028446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274330, 42.727707, 39.178299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588360, 42.562660, 39.363083>,  <36.776775, 42.463631, 39.473953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.588360, 42.562660, 39.363083>,  <36.274330, 42.727707, 39.178299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588360, 42.562660, 39.363083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457291, 0.116947, 0.881594,
		-0.417790, -0.903364, -0.096876,
		0.785071, -0.412622, 0.461960,
		36.823883, 42.438873, 39.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004688, 42.187477, 39.642624>,  <36.274330, 42.727707, 39.178299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004688, 42.187477, 39.642624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376232, 42.208385, 39.789318>,  <36.599159, 42.220932, 39.877335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.376232, 42.208385, 39.789318>,  <36.004688, 42.187477, 39.642624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376232, 42.208385, 39.789318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365129, -0.037851, 0.930187,
		0.062504, -0.997915, -0.016072,
		0.928857, 0.052272, 0.366733,
		36.654888, 42.224068, 39.899338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094311, 41.684471, 40.147697>,  <36.004688, 42.187477, 39.642624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094311, 41.684471, 40.147697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356617, 41.962029, 40.266678>,  <36.514000, 42.128563, 40.338066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.356617, 41.962029, 40.266678>,  <36.094311, 41.684471, 40.147697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356617, 41.962029, 40.266678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318960, -0.102470, 0.942212,
		0.684280, -0.712745, 0.154130,
		0.655763, 0.693898, 0.297456,
		36.553345, 42.170197, 40.355915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118473, 41.585873, 40.753746>,  <36.094311, 41.684471, 40.147697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118473, 41.585873, 40.753746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308674, 41.936218, 40.786629>,  <36.422794, 42.146427, 40.806358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308674, 41.936218, 40.786629>,  <36.118473, 41.585873, 40.753746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308674, 41.936218, 40.786629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304728, 0.076330, 0.949376,
		0.825249, -0.476483, 0.303196,
		0.475505, 0.875864, 0.082206,
		36.451324, 42.198978, 40.811291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594353, 41.610355, 41.324829>,  <36.118473, 41.585873, 40.753746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594353, 41.610355, 41.324829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499054, 41.992458, 41.254719>,  <36.441875, 42.221722, 41.212654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499054, 41.992458, 41.254719>,  <36.594353, 41.610355, 41.324829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499054, 41.992458, 41.254719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248850, 0.114406, 0.961761,
		0.938783, 0.272752, 0.210459,
		-0.238245, 0.955258, -0.175277,
		36.427582, 42.279037, 41.202137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976582, 42.041348, 41.852623>,  <36.594353, 41.610355, 41.324829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976582, 42.041348, 41.852623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668571, 42.269501, 41.738274>,  <36.483765, 42.406391, 41.669666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.668571, 42.269501, 41.738274>,  <36.976582, 42.041348, 41.852623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668571, 42.269501, 41.738274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235513, 0.162305, 0.958223,
		0.592950, 0.805185, 0.009352,
		-0.770029, 0.570381, -0.285871,
		36.437561, 42.440617, 41.652512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911739, 42.550915, 42.323933>,  <36.976582, 42.041348, 41.852623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911739, 42.550915, 42.323933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555916, 42.593594, 42.146263>,  <36.342422, 42.619202, 42.039661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555916, 42.593594, 42.146263>,  <36.911739, 42.550915, 42.323933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555916, 42.593594, 42.146263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436041, 0.091540, 0.895259,
		0.136185, 0.990068, -0.034905,
		-0.889562, 0.106701, -0.444177,
		36.289047, 42.625603, 42.013008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536133, 43.226528, 42.515129>,  <36.911739, 42.550915, 42.323933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536133, 43.226528, 42.515129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267475, 42.957916, 42.389950>,  <36.106281, 42.796749, 42.314842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.267475, 42.957916, 42.389950>,  <36.536133, 43.226528, 42.515129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267475, 42.957916, 42.389950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462063, 0.049499, 0.885465,
		-0.579127, 0.739321, -0.343536,
		-0.671647, -0.671532, -0.312946,
		36.065983, 42.756458, 42.296066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.438110, 43.754261, 42.403374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415993, 43.355354, 42.423012>,  <35.402721, 43.116013, 42.434795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.415993, 43.355354, 42.423012>,  <35.438110, 43.754261, 42.403374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415993, 43.355354, 42.423012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656648, 0.073362, 0.750621,
		-0.752168, 0.009265, -0.658907,
		-0.055293, -0.997262, 0.049096,
		35.399406, 43.056175, 42.437740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729485, 43.473000, 42.304646>,  <35.438110, 43.754261, 42.403374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729485, 43.473000, 42.304646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928871, 43.181473, 42.492413>,  <35.048504, 43.006557, 42.605072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928871, 43.181473, 42.492413>,  <34.729485, 43.473000, 42.304646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928871, 43.181473, 42.492413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693771, -0.010690, 0.720116,
		-0.519817, -0.684623, -0.510962,
		0.498470, -0.728819, 0.469414,
		35.078411, 42.962826, 42.633236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236580, 42.927467, 42.532974>,  <34.729485, 43.473000, 42.304646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236580, 42.927467, 42.532974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555161, 42.848804, 42.761711>,  <34.746307, 42.801609, 42.898952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555161, 42.848804, 42.761711>,  <34.236580, 42.927467, 42.532974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555161, 42.848804, 42.761711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598757, -0.124115, 0.791256,
		-0.084625, -0.972587, -0.216595,
		0.796448, -0.196648, 0.571840,
		34.794094, 42.789806, 42.933262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963734, 42.532951, 43.041698>,  <34.236580, 42.927467, 42.532974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963734, 42.532951, 43.041698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321003, 42.616730, 43.200878>,  <34.535366, 42.666996, 43.296387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321003, 42.616730, 43.200878>,  <33.963734, 42.532951, 43.041698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321003, 42.616730, 43.200878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389664, -0.081301, 0.917362,
		0.224495, -0.974434, 0.008999,
		0.893177, 0.209450, 0.397953,
		34.588955, 42.679565, 43.320263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086628, 41.956249, 43.384445>,  <33.963734, 42.532951, 43.041698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086628, 41.956249, 43.384445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283749, 42.263828, 43.547352>,  <34.402020, 42.448376, 43.645096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.283749, 42.263828, 43.547352>,  <34.086628, 41.956249, 43.384445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283749, 42.263828, 43.547352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509613, -0.124330, 0.851373,
		0.705298, -0.627105, 0.330596,
		0.492797, 0.768948, 0.407271,
		34.431587, 42.494514, 43.669533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366188, 41.750149, 44.101887>,  <34.086628, 41.956249, 43.384445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366188, 41.750149, 44.101887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335800, 42.148979, 44.104988>,  <34.317566, 42.388279, 44.106850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.335800, 42.148979, 44.104988>,  <34.366188, 41.750149, 44.101887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335800, 42.148979, 44.104988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203754, -0.023134, 0.978749,
		0.976070, 0.072776, 0.204916,
		-0.075970, 0.997080, 0.007752,
		34.313007, 42.448105, 44.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764271, 41.925404, 44.710163>,  <34.366188, 41.750149, 44.101887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764271, 41.925404, 44.710163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545250, 42.252346, 44.638485>,  <34.413837, 42.448513, 44.595478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.545250, 42.252346, 44.638485>,  <34.764271, 41.925404, 44.710163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545250, 42.252346, 44.638485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157803, 0.109443, 0.981387,
		0.821758, 0.565638, 0.069056,
		-0.547552, 0.817359, -0.179195,
		34.380985, 42.497555, 44.584728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886990, 42.297657, 45.357597>,  <34.764271, 41.925404, 44.710163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886990, 42.297657, 45.357597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576572, 42.483459, 45.186954>,  <34.390324, 42.594940, 45.084568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576572, 42.483459, 45.186954>,  <34.886990, 42.297657, 45.357597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576572, 42.483459, 45.186954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416376, 0.130705, 0.899749,
		0.473695, 0.875873, 0.091974,
		-0.776044, 0.464502, -0.426607,
		34.343758, 42.622810, 45.058971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747448, 42.814625, 45.775257>,  <34.886990, 42.297657, 45.357597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747448, 42.814625, 45.775257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407951, 42.752754, 45.572983>,  <34.204254, 42.715630, 45.451618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407951, 42.752754, 45.572983>,  <34.747448, 42.814625, 45.775257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407951, 42.752754, 45.572983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525670, 0.142722, 0.838630,
		-0.057547, 0.977602, -0.202444,
		-0.848740, -0.154679, -0.505683,
		34.153328, 42.706352, 45.421276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351650, 43.494076, 45.740742>,  <34.747448, 42.814625, 45.775257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351650, 43.494076, 45.740742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110928, 43.175278, 45.720226>,  <33.966496, 42.984001, 45.707916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110928, 43.175278, 45.720226>,  <34.351650, 43.494076, 45.740742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110928, 43.175278, 45.720226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389845, 0.237104, 0.889833,
		-0.697028, 0.555504, -0.453395,
		-0.601807, -0.796992, -0.051292,
		33.930386, 42.936180, 45.704838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848576, 43.592243, 46.300564>,  <34.351650, 43.494076, 45.740742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848576, 43.592243, 46.300564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.740009, 43.227264, 46.178082>,  <33.674870, 43.008278, 46.104591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.740009, 43.227264, 46.178082>,  <33.848576, 43.592243, 46.300564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740009, 43.227264, 46.178082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522070, -0.127703, 0.843288,
		-0.808563, 0.388747, -0.441702,
		-0.271419, -0.912451, -0.306209,
		33.658585, 42.953529, 46.086220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147976, 43.637978, 46.370617>,  <33.848576, 43.592243, 46.300564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147976, 43.637978, 46.370617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.254391, 43.252434, 46.364857>,  <33.318237, 43.021107, 46.361401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.254391, 43.252434, 46.364857>,  <33.147976, 43.637978, 46.370617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254391, 43.252434, 46.364857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476299, -0.144426, 0.867341,
		-0.838072, -0.223882, -0.497506,
		0.266035, -0.963856, -0.014404,
		33.334202, 42.963276, 46.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554226, 43.176857, 46.488003>,  <33.147976, 43.637978, 46.370617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554226, 43.176857, 46.488003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867496, 42.958031, 46.606228>,  <33.055458, 42.826736, 46.677162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867496, 42.958031, 46.606228>,  <32.554226, 43.176857, 46.488003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867496, 42.958031, 46.606228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480962, -0.231710, 0.845568,
		-0.394093, -0.804384, -0.444586,
		0.783177, -0.547062, 0.295563,
		33.102451, 42.793911, 46.694897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220615, 42.690834, 46.834972>,  <32.554226, 43.176857, 46.488003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220615, 42.690834, 46.834972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599136, 42.661495, 46.960911>,  <32.826248, 42.643890, 47.036472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599136, 42.661495, 46.960911>,  <32.220615, 42.690834, 46.834972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599136, 42.661495, 46.960911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320441, -0.341536, 0.883556,
		0.042726, -0.937002, -0.346700,
		0.946304, -0.073346, 0.314847,
		32.883026, 42.639492, 47.055367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326084, 41.993137, 47.082851>,  <32.220615, 42.690834, 46.834972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326084, 41.993137, 47.082851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587193, 42.237892, 47.261505>,  <32.743858, 42.384747, 47.368698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.587193, 42.237892, 47.261505>,  <32.326084, 41.993137, 47.082851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587193, 42.237892, 47.261505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276645, -0.356313, 0.892473,
		0.705233, -0.706142, -0.063317,
		0.652773, 0.611885, 0.446635,
		32.783024, 42.421459, 47.395496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658875, 41.615398, 47.538284>,  <32.326084, 41.993137, 47.082851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658875, 41.615398, 47.538284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723125, 41.982517, 47.683525>,  <32.761677, 42.202789, 47.770672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.723125, 41.982517, 47.683525>,  <32.658875, 41.615398, 47.538284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723125, 41.982517, 47.683525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247925, -0.318568, 0.914903,
		0.955370, -0.236981, 0.176375,
		0.160627, 0.917799, 0.363104,
		32.771313, 42.257858, 47.792458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055405, 41.589745, 48.239273>,  <32.658875, 41.615398, 47.538284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055405, 41.589745, 48.239273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883900, 41.951061, 48.233387>,  <32.780994, 42.167850, 48.229855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883900, 41.951061, 48.233387>,  <33.055405, 41.589745, 48.239273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883900, 41.951061, 48.233387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242116, -0.099199, 0.965163,
		0.870368, 0.417393, 0.261235,
		-0.428766, 0.903296, -0.014717,
		32.755268, 42.222050, 48.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371067, 41.956215, 48.874310>,  <33.055405, 41.589745, 48.239273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371067, 41.956215, 48.874310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.029648, 42.134064, 48.765667>,  <32.824799, 42.240772, 48.700481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.029648, 42.134064, 48.765667>,  <33.371067, 41.956215, 48.874310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029648, 42.134064, 48.765667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319244, -0.034331, 0.947050,
		0.411758, 0.895059, 0.171248,
		-0.853545, 0.444625, -0.271606,
		32.773586, 42.267452, 48.684185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175632, 42.278229, 49.434471>,  <33.371067, 41.956215, 48.874310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175632, 42.278229, 49.434471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829121, 42.295643, 49.235409>,  <32.621212, 42.306091, 49.115971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829121, 42.295643, 49.235409>,  <33.175632, 42.278229, 49.434471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829121, 42.295643, 49.235409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498531, -0.139213, 0.855621,
		-0.032031, 0.989305, 0.142301,
		-0.866280, 0.043535, -0.497658,
		32.569237, 42.308704, 49.086113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721516, 42.744377, 49.845840>,  <33.175632, 42.278229, 49.434471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721516, 42.744377, 49.845840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495342, 42.497688, 49.626774>,  <32.359638, 42.349674, 49.495335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.495342, 42.497688, 49.626774>,  <32.721516, 42.744377, 49.845840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495342, 42.497688, 49.626774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525050, -0.242948, 0.815659,
		-0.636089, 0.748753, -0.186439,
		-0.565432, -0.616721, -0.547669,
		32.325714, 42.312672, 49.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284332, 42.770985, 50.295364>,  <32.721516, 42.744377, 49.845840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284332, 42.770985, 50.295364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217365, 42.464672, 50.046993>,  <32.177185, 42.280884, 49.897972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.217365, 42.464672, 50.046993>,  <32.284332, 42.770985, 50.295364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217365, 42.464672, 50.046993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537222, -0.457233, 0.708753,
		-0.826658, 0.452233, -0.334845,
		-0.167419, -0.765782, -0.620925,
		32.167141, 42.234936, 49.860714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586342, 42.766201, 50.293308>,  <32.284332, 42.770985, 50.295364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586342, 42.766201, 50.293308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717264, 42.409206, 50.169147>,  <31.795818, 42.195011, 50.094650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.717264, 42.409206, 50.169147>,  <31.586342, 42.766201, 50.293308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717264, 42.409206, 50.169147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664897, -0.450937, 0.595456,
		-0.671404, 0.011487, -0.741002,
		0.327305, -0.892482, -0.310399,
		31.815456, 42.141460, 50.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012037, 42.362789, 49.983597>,  <31.586342, 42.766201, 50.293308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012037, 42.362789, 49.983597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283092, 42.111805, 50.137009>,  <31.445726, 41.961216, 50.229057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.283092, 42.111805, 50.137009>,  <31.012037, 42.362789, 49.983597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283092, 42.111805, 50.137009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719928, -0.459631, 0.520041,
		-0.150023, -0.628516, -0.763191,
		0.677640, -0.627461, 0.383532,
		31.486385, 41.923565, 50.252068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700321, 41.713623, 50.099163>,  <31.012037, 42.362789, 49.983597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700321, 41.713623, 50.099163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.022814, 41.717556, 50.335770>,  <31.216309, 41.719913, 50.477734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.022814, 41.717556, 50.335770>,  <30.700321, 41.713623, 50.099163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022814, 41.717556, 50.335770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477274, -0.580000, 0.660158,
		0.349570, -0.814557, -0.462923,
		0.806232, 0.009830, 0.591518,
		31.264683, 41.720505, 50.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021076, 41.955025, 50.133415>,  <30.700321, 41.713623, 50.099163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021076, 41.955025, 50.133415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691071, 42.124073, 49.983349>,  <29.493067, 42.225502, 49.893311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691071, 42.124073, 49.983349>,  <30.021076, 41.955025, 50.133415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691071, 42.124073, 49.983349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315645, -0.206042, -0.926237,
		-0.468744, -0.882576, 0.036590,
		-0.825013, 0.422619, -0.375161,
		29.443567, 42.250858, 49.870800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798439, 41.497593, 49.694031>,  <30.021076, 41.955025, 50.133415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798439, 41.497593, 49.694031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648571, 41.849865, 49.578079>,  <29.558651, 42.061230, 49.508511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648571, 41.849865, 49.578079>,  <29.798439, 41.497593, 49.694031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648571, 41.849865, 49.578079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284325, -0.188449, -0.940024,
		-0.882487, -0.434617, -0.179793,
		-0.374669, 0.880679, -0.289876,
		29.536171, 42.114067, 49.491116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413317, 41.254299, 49.094311>,  <29.798439, 41.497593, 49.694031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413317, 41.254299, 49.094311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393024, 41.652287, 49.059746>,  <29.380850, 41.891079, 49.039005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393024, 41.652287, 49.059746>,  <29.413317, 41.254299, 49.094311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393024, 41.652287, 49.059746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261575, -0.070266, -0.962622,
		-0.963849, -0.071436, -0.256694,
		-0.050729, 0.994967, -0.086412,
		29.377806, 41.950775, 49.033821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968800, 41.364414, 48.496742>,  <29.413317, 41.254299, 49.094311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968800, 41.364414, 48.496742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187151, 41.696011, 48.545391>,  <29.318161, 41.894970, 48.574581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.187151, 41.696011, 48.545391>,  <28.968800, 41.364414, 48.496742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187151, 41.696011, 48.545391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126350, 0.062049, -0.990043,
		-0.828283, 0.555810, -0.070872,
		0.545878, 0.828991, 0.121620,
		29.350914, 41.944706, 48.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721802, 41.819515, 48.046707>,  <28.968800, 41.364414, 48.496742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721802, 41.819515, 48.046707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.090708, 41.966843, 48.093647>,  <29.312052, 42.055241, 48.121811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.090708, 41.966843, 48.093647>,  <28.721802, 41.819515, 48.046707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090708, 41.966843, 48.093647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062240, 0.158120, -0.985456,
		-0.381519, 0.916154, 0.122903,
		0.922263, 0.368321, 0.117347,
		29.367386, 42.077339, 48.128853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801641, 42.482147, 47.629704>,  <28.721802, 41.819515, 48.046707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801641, 42.482147, 47.629704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169323, 42.337048, 47.690990>,  <29.389933, 42.249989, 47.727760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169323, 42.337048, 47.690990>,  <28.801641, 42.482147, 47.629704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169323, 42.337048, 47.690990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215773, 0.138519, -0.966568,
		0.329398, 0.921535, 0.205598,
		0.919206, -0.362748, 0.153215,
		29.445086, 42.228222, 47.736954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304186, 42.947559, 47.187580>,  <28.801641, 42.482147, 47.629704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304186, 42.947559, 47.187580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519094, 42.622425, 47.277592>,  <29.648041, 42.427345, 47.331596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519094, 42.622425, 47.277592>,  <29.304186, 42.947559, 47.187580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519094, 42.622425, 47.277592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418845, 0.025562, -0.907698,
		0.732057, 0.581933, 0.354185,
		0.537273, -0.812835, 0.225027,
		29.680277, 42.378574, 47.345100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907698, 43.097179, 46.868530>,  <29.304186, 42.947559, 47.187580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907698, 43.097179, 46.868530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951897, 42.704071, 46.927792>,  <29.978416, 42.468204, 46.963348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.951897, 42.704071, 46.927792>,  <29.907698, 43.097179, 46.868530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951897, 42.704071, 46.927792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601474, -0.052547, -0.797162,
		0.791214, 0.177196, 0.585306,
		0.110498, -0.982772, 0.148155,
		29.985046, 42.409241, 46.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579542, 42.911179, 46.971100>,  <29.907698, 43.097179, 46.868530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579542, 42.911179, 46.971100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427763, 42.564453, 46.841702>,  <30.336697, 42.356419, 46.764061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427763, 42.564453, 46.841702>,  <30.579542, 42.911179, 46.971100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427763, 42.564453, 46.841702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747236, -0.080930, -0.659613,
		0.545582, -0.492017, 0.678424,
		-0.379445, -0.866816, -0.323499,
		30.313929, 42.304409, 46.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176821, 42.779690, 46.616650>,  <30.579542, 42.911179, 46.971100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176821, 42.779690, 46.616650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897057, 42.512253, 46.515606>,  <30.729198, 42.351791, 46.454979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897057, 42.512253, 46.515606>,  <31.176821, 42.779690, 46.616650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897057, 42.512253, 46.515606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533564, -0.253277, -0.806945,
		0.475534, -0.699171, 0.533880,
		-0.699412, -0.668589, -0.252610,
		30.687233, 42.311676, 46.439823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549314, 42.162899, 46.540760>,  <31.176821, 42.779690, 46.616650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549314, 42.162899, 46.540760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216253, 42.158936, 46.319279>,  <31.016417, 42.156559, 46.186390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.216253, 42.158936, 46.319279>,  <31.549314, 42.162899, 46.540760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216253, 42.158936, 46.319279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553711, 0.002258, -0.832706,
		0.009520, -0.999948, 0.003619,
		-0.832654, -0.009931, -0.553704,
		30.966457, 42.155964, 46.153168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685785, 41.674915, 46.081131>,  <31.549314, 42.162899, 46.540760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685785, 41.674915, 46.081131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402180, 41.887627, 45.895870>,  <31.232016, 42.015255, 45.784714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402180, 41.887627, 45.895870>,  <31.685785, 41.674915, 46.081131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402180, 41.887627, 45.895870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563269, 0.031902, -0.825657,
		-0.424292, -0.846282, -0.322154,
		-0.709016, 0.531779, -0.463149,
		31.189474, 42.047161, 45.756924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649630, 41.439095, 45.367737>,  <31.685785, 41.674915, 46.081131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649630, 41.439095, 45.367737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456894, 41.786732, 45.323017>,  <31.341251, 41.995316, 45.296185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.456894, 41.786732, 45.323017>,  <31.649630, 41.439095, 45.367737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456894, 41.786732, 45.323017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429140, 0.122809, -0.894850,
		-0.763982, -0.479153, -0.432139,
		-0.481840, 0.869098, -0.111800,
		31.312342, 42.047462, 45.289478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305082, 41.445026, 44.762997>,  <31.649630, 41.439095, 45.367737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305082, 41.445026, 44.762997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323788, 41.841518, 44.812424>,  <31.335011, 42.079414, 44.842079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.323788, 41.841518, 44.812424>,  <31.305082, 41.445026, 44.762997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323788, 41.841518, 44.812424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318612, 0.102440, -0.942334,
		-0.946731, 0.083436, -0.311028,
		0.046763, 0.991234, 0.123567,
		31.337816, 42.138889, 44.849495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989769, 41.632587, 44.281433>,  <31.305082, 41.445026, 44.762997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989769, 41.632587, 44.281433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.213497, 41.945457, 44.391247>,  <31.347734, 42.133179, 44.457134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.213497, 41.945457, 44.391247>,  <30.989769, 41.632587, 44.281433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213497, 41.945457, 44.391247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195449, 0.197408, -0.960640,
		-0.805579, 0.590964, -0.042460,
		0.559322, 0.782171, 0.274531,
		31.381294, 42.180107, 44.473606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874237, 42.103367, 43.848858>,  <30.989769, 41.632587, 44.281433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874237, 42.103367, 43.848858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217426, 42.253094, 43.989582>,  <31.423340, 42.342930, 44.074017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217426, 42.253094, 43.989582>,  <30.874237, 42.103367, 43.848858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217426, 42.253094, 43.989582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226651, 0.338748, -0.913170,
		-0.460990, 0.863213, 0.205797,
		0.857973, 0.374318, 0.351808,
		31.474817, 42.365391, 44.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917408, 42.679733, 43.529095>,  <30.874237, 42.103367, 43.848858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917408, 42.679733, 43.529095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299713, 42.616489, 43.628307>,  <31.529097, 42.578541, 43.687836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299713, 42.616489, 43.628307>,  <30.917408, 42.679733, 43.529095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299713, 42.616489, 43.628307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279823, 0.228844, -0.932379,
		0.090661, 0.960537, 0.262964,
		0.955761, -0.158114, 0.248033,
		31.586441, 42.569054, 43.702717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309940, 43.191998, 43.188763>,  <30.917408, 42.679733, 43.529095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309940, 43.191998, 43.188763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582851, 42.909328, 43.263718>,  <31.746597, 42.739727, 43.308689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.582851, 42.909328, 43.263718>,  <31.309940, 43.191998, 43.188763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582851, 42.909328, 43.263718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297219, 0.033935, -0.954206,
		0.667951, 0.706728, 0.233190,
		0.682277, -0.706671, 0.187386,
		31.787535, 42.697327, 43.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809378, 43.528671, 42.784016>,  <31.309940, 43.191998, 43.188763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809378, 43.528671, 42.784016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951990, 43.162567, 42.859051>,  <32.037556, 42.942905, 42.904072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.951990, 43.162567, 42.859051>,  <31.809378, 43.528671, 42.784016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951990, 43.162567, 42.859051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470163, 0.002261, -0.882576,
		0.807361, 0.402861, 0.431127,
		0.356530, -0.915259, 0.187585,
		32.058949, 42.887989, 42.915325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525761, 43.511700, 42.724838>,  <31.809378, 43.528671, 42.784016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525761, 43.511700, 42.724838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418449, 43.133469, 42.651184>,  <32.354065, 42.906528, 42.606991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.418449, 43.133469, 42.651184>,  <32.525761, 43.511700, 42.724838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418449, 43.133469, 42.651184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470190, 0.038305, -0.881734,
		0.840803, -0.323127, 0.434326,
		-0.268275, -0.945580, -0.184138,
		32.337967, 42.849796, 42.595943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.446552, 43.615425, 35.778084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083515, 43.763096, 35.698093>,  <45.865692, 43.851700, 35.650101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083515, 43.763096, 35.698093>,  <46.446552, 43.615425, 35.778084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083515, 43.763096, 35.698093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293907, -0.898764, -0.325334,
		-0.299837, -0.236496, 0.924212,
		-0.907588, 0.369180, -0.199975,
		45.811237, 43.873848, 35.638100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990143, 43.172916, 36.037144>,  <46.446552, 43.615425, 35.778084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990143, 43.172916, 36.037144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.774410, 43.362961, 35.759041>,  <45.644970, 43.476986, 35.592178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.774410, 43.362961, 35.759041>,  <45.990143, 43.172916, 36.037144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774410, 43.362961, 35.759041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303376, -0.879821, -0.365893,
		-0.785544, 0.013586, 0.618657,
		-0.539336, 0.475111, -0.695260,
		45.612610, 43.505493, 35.550461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322567, 42.994644, 36.077797>,  <45.990143, 43.172916, 36.037144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322567, 42.994644, 36.077797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331306, 43.125862, 35.700031>,  <45.336548, 43.204594, 35.473373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331306, 43.125862, 35.700031>,  <45.322567, 42.994644, 36.077797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331306, 43.125862, 35.700031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264424, -0.909101, -0.321892,
		-0.964159, 0.256757, 0.066882,
		0.021846, 0.328040, -0.944411,
		45.337860, 43.224274, 35.416706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626328, 42.964767, 35.826248>,  <45.322567, 42.994644, 36.077797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626328, 42.964767, 35.826248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862835, 42.954769, 35.503811>,  <45.004738, 42.948772, 35.310349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862835, 42.954769, 35.503811>,  <44.626328, 42.964767, 35.826248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862835, 42.954769, 35.503811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344555, -0.911535, -0.224467,
		-0.729169, 0.410462, -0.547571,
		0.591265, -0.024994, -0.806090,
		45.040215, 42.947269, 35.261986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187901, 42.655666, 35.439747>,  <44.626328, 42.964767, 35.826248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187901, 42.655666, 35.439747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526009, 42.613743, 35.230164>,  <44.728874, 42.588589, 35.104412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526009, 42.613743, 35.230164>,  <44.187901, 42.655666, 35.439747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526009, 42.613743, 35.230164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236287, -0.952807, -0.190595,
		-0.479256, 0.284909, -0.830145,
		0.845270, -0.104809, -0.523959,
		44.779591, 42.582302, 35.072975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044846, 42.316513, 34.805046>,  <44.187901, 42.655666, 35.439747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044846, 42.316513, 34.805046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423737, 42.231316, 34.900879>,  <44.651070, 42.180199, 34.958378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423737, 42.231316, 34.900879>,  <44.044846, 42.316513, 34.805046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423737, 42.231316, 34.900879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213074, -0.976694, -0.025867,
		0.239509, -0.026547, -0.970531,
		0.947225, -0.212990, 0.239584,
		44.707905, 42.167419, 34.972755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205944, 41.694611, 34.432114>,  <44.044846, 42.316513, 34.805046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205944, 41.694611, 34.432114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.491058, 41.720093, 34.711506>,  <44.662128, 41.735382, 34.879143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.491058, 41.720093, 34.711506>,  <44.205944, 41.694611, 34.432114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491058, 41.720093, 34.711506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083865, -0.980981, 0.175051,
		0.696348, -0.183353, -0.693889,
		0.712788, 0.063703, 0.698481,
		44.704895, 41.739204, 34.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762383, 41.221733, 34.341740>,  <44.205944, 41.694611, 34.432114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762383, 41.221733, 34.341740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772541, 41.285664, 34.736465>,  <44.778637, 41.324020, 34.973301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772541, 41.285664, 34.736465>,  <44.762383, 41.221733, 34.341740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772541, 41.285664, 34.736465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015387, -0.987083, 0.159469,
		0.999559, 0.011135, -0.027525,
		0.025394, 0.159822, 0.986819,
		44.780159, 41.333611, 35.032513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079407, 40.703079, 34.602390>,  <44.762383, 41.221733, 34.341740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079407, 40.703079, 34.602390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932728, 40.856476, 34.941441>,  <44.844723, 40.948513, 35.144871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.932728, 40.856476, 34.941441>,  <45.079407, 40.703079, 34.602390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932728, 40.856476, 34.941441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187561, -0.922856, 0.336389,
		0.911239, -0.035629, 0.410334,
		-0.366693, 0.383494, 0.847625,
		44.822720, 40.971523, 35.195728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361958, 40.298222, 35.023506>,  <45.079407, 40.703079, 34.602390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361958, 40.298222, 35.023506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053905, 40.421356, 35.246983>,  <44.869072, 40.495235, 35.381069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053905, 40.421356, 35.246983>,  <45.361958, 40.298222, 35.023506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053905, 40.421356, 35.246983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112948, -0.927817, 0.355525,
		0.627804, 0.210699, 0.749312,
		-0.770133, 0.307834, 0.558689,
		44.822865, 40.513706, 35.414589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358932, 39.962978, 35.749813>,  <45.361958, 40.298222, 35.023506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358932, 39.962978, 35.749813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.982487, 40.092438, 35.710728>,  <44.756618, 40.170113, 35.687275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.982487, 40.092438, 35.710728>,  <45.358932, 39.962978, 35.749813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982487, 40.092438, 35.710728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331545, -0.826989, 0.454056,
		0.066149, 0.459716, 0.885599,
		-0.941118, 0.323651, -0.097713,
		44.700150, 40.189533, 35.681416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060440, 39.854282, 36.436081>,  <45.358932, 39.962978, 35.749813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060440, 39.854282, 36.436081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759808, 39.868832, 36.172626>,  <44.579430, 39.877563, 36.014553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.759808, 39.868832, 36.172626>,  <45.060440, 39.854282, 36.436081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759808, 39.868832, 36.172626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419999, -0.796321, 0.435285,
		-0.508655, 0.603779, 0.613777,
		-0.751579, 0.036376, -0.658639,
		44.534332, 39.879745, 35.975037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475948, 39.589249, 36.758076>,  <45.060440, 39.854282, 36.436081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475948, 39.589249, 36.758076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.367638, 39.562443, 36.373951>,  <44.302650, 39.546360, 36.143478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.367638, 39.562443, 36.373951>,  <44.475948, 39.589249, 36.758076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367638, 39.562443, 36.373951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504147, -0.839956, 0.200771,
		-0.820072, 0.538500, 0.193651,
		-0.270774, -0.067019, -0.960307,
		44.286407, 39.542336, 36.085857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789898, 39.495739, 36.674988>,  <44.475948, 39.589249, 36.758076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789898, 39.495739, 36.674988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919113, 39.340668, 36.329655>,  <43.996643, 39.247623, 36.122456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919113, 39.340668, 36.329655>,  <43.789898, 39.495739, 36.674988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919113, 39.340668, 36.329655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427305, -0.873714, 0.232454,
		-0.844426, 0.293815, -0.447903,
		0.323041, -0.387682, -0.863335,
		44.016026, 39.224361, 36.070656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346893, 38.978268, 36.530830>,  <43.789898, 39.495739, 36.674988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346893, 38.978268, 36.530830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659149, 38.888229, 36.297615>,  <43.846504, 38.834206, 36.157684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659149, 38.888229, 36.297615>,  <43.346893, 38.978268, 36.530830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659149, 38.888229, 36.297615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163402, -0.973950, 0.157231,
		-0.603240, -0.027472, -0.797086,
		0.780641, -0.225094, -0.583037,
		43.893341, 38.820702, 36.122704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174587, 38.328434, 36.109402>,  <43.346893, 38.978268, 36.530830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174587, 38.328434, 36.109402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573265, 38.339039, 36.078671>,  <43.812469, 38.345402, 36.060230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573265, 38.339039, 36.078671>,  <43.174587, 38.328434, 36.109402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573265, 38.339039, 36.078671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038802, -0.985825, 0.163231,
		-0.071415, -0.165672, -0.983592,
		0.996692, 0.026508, -0.076831,
		43.872272, 38.346992, 36.055622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318432, 37.774006, 35.670219>,  <43.174587, 38.328434, 36.109402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318432, 37.774006, 35.670219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651611, 37.846165, 35.879467>,  <43.851517, 37.889462, 36.005016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.651611, 37.846165, 35.879467>,  <43.318432, 37.774006, 35.670219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651611, 37.846165, 35.879467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160499, -0.983489, 0.083602,
		0.529566, 0.014325, -0.848147,
		0.832946, 0.180400, 0.523122,
		43.901497, 37.900284, 36.036404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758854, 37.350948, 35.318665>,  <43.318432, 37.774006, 35.670219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758854, 37.350948, 35.318665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951775, 37.411919, 35.663719>,  <44.067528, 37.448502, 35.870754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.951775, 37.411919, 35.663719>,  <43.758854, 37.350948, 35.318665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951775, 37.411919, 35.663719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423701, -0.902487, -0.077430,
		0.766720, 0.402847, -0.499855,
		0.482304, 0.152422, 0.862641,
		44.096466, 37.457645, 35.922512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419060, 37.154118, 35.214649>,  <43.758854, 37.350948, 35.318665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419060, 37.154118, 35.214649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390671, 37.129829, 35.612900>,  <44.373638, 37.115257, 35.851852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.390671, 37.129829, 35.612900>,  <44.419060, 37.154118, 35.214649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390671, 37.129829, 35.612900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448343, -0.893578, -0.022537,
		0.891040, 0.444783, 0.090642,
		-0.070971, -0.060720, 0.995628,
		44.369381, 37.111614, 35.911587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071507, 36.862755, 35.481876>,  <44.419060, 37.154118, 35.214649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071507, 36.862755, 35.481876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810585, 36.786125, 35.775215>,  <44.654030, 36.740147, 35.951218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.810585, 36.786125, 35.775215>,  <45.071507, 36.862755, 35.481876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810585, 36.786125, 35.775215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371375, -0.924217, 0.088906,
		0.660739, 0.330340, 0.674018,
		-0.652307, -0.191570, 0.733346,
		44.614891, 36.728653, 35.995220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461121, 36.454735, 36.009312>,  <45.071507, 36.862755, 35.481876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461121, 36.454735, 36.009312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076820, 36.361805, 36.069958>,  <44.846241, 36.306046, 36.106346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076820, 36.361805, 36.069958>,  <45.461121, 36.454735, 36.009312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076820, 36.361805, 36.069958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244913, -0.967002, 0.070181,
		0.130311, 0.104560, 0.985944,
		-0.960748, -0.232325, 0.151619,
		44.788597, 36.292107, 36.115444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021622, 36.901955, 35.769489>,  <45.461121, 36.454735, 36.009312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021622, 36.901955, 35.769489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409641, 36.906780, 35.672440>,  <46.642452, 36.909676, 35.614208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.409641, 36.906780, 35.672440>,  <46.021622, 36.901955, 35.769489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409641, 36.906780, 35.672440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063516, 0.951428, 0.301249,
		0.234478, -0.307636, 0.922160,
		0.970044, 0.012065, -0.242628,
		46.700653, 36.910400, 35.599651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279408, 37.022011, 36.373180>,  <46.021622, 36.901955, 35.769489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279408, 37.022011, 36.373180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570980, 37.118137, 36.116772>,  <46.745922, 37.175812, 35.962925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.570980, 37.118137, 36.116772>,  <46.279408, 37.022011, 36.373180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570980, 37.118137, 36.116772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181553, 0.834974, 0.519477,
		0.660073, -0.495043, 0.565010,
		0.728932, 0.240314, -0.641020,
		46.789661, 37.190231, 35.924465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882969, 37.190845, 36.773003>,  <46.279408, 37.022011, 36.373180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882969, 37.190845, 36.773003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.943710, 37.370090, 36.420609>,  <46.980156, 37.477638, 36.209171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.943710, 37.370090, 36.420609>,  <46.882969, 37.190845, 36.773003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943710, 37.370090, 36.420609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299256, 0.828643, 0.473071,
		0.942011, -0.335479, -0.008266,
		0.151856, 0.448112, -0.880985,
		46.989265, 37.504524, 36.156311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.466476, 37.515442, 36.882000>,  <46.882969, 37.190845, 36.773003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.466476, 37.515442, 36.882000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.288364, 37.685619, 36.566856>,  <47.181499, 37.787727, 36.377769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.288364, 37.685619, 36.566856>,  <47.466476, 37.515442, 36.882000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.288364, 37.685619, 36.566856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318850, 0.897566, 0.304485,
		0.836697, -0.115628, -0.535320,
		-0.445278, 0.425448, -0.787859,
		47.154781, 37.813255, 36.330498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913994, 37.987186, 36.680435>,  <47.466476, 37.515442, 36.882000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913994, 37.987186, 36.680435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.570038, 38.118401, 36.523983>,  <47.363663, 38.197128, 36.430111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.570038, 38.118401, 36.523983>,  <47.913994, 37.987186, 36.680435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.570038, 38.118401, 36.523983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202108, 0.922363, 0.329238,
		0.468764, 0.204059, -0.859430,
		-0.859891, 0.328033, -0.391129,
		47.312069, 38.216812, 36.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.131329, 38.639118, 36.508984>,  <47.913994, 37.987186, 36.680435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.131329, 38.639118, 36.508984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.731861, 38.659492, 36.505581>,  <47.492180, 38.671719, 36.503540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.731861, 38.659492, 36.505581>,  <48.131329, 38.639118, 36.508984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731861, 38.659492, 36.505581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041977, 0.896612, 0.440823,
		0.030081, 0.439878, -0.897554,
		-0.998666, 0.050937, -0.008506,
		47.432262, 38.674774, 36.503029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054855, 39.326206, 36.314640>,  <48.131329, 38.639118, 36.508984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054855, 39.326206, 36.314640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.714531, 39.230125, 36.501579>,  <47.510334, 39.172478, 36.613743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.714531, 39.230125, 36.501579>,  <48.054855, 39.326206, 36.314640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714531, 39.230125, 36.501579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065622, 0.931009, 0.359049,
		-0.521352, 0.274816, -0.807879,
		-0.850815, -0.240205, 0.467349,
		47.459286, 39.158062, 36.641785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.578278, 39.944202, 36.126926>,  <48.054855, 39.326206, 36.314640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.578278, 39.944202, 36.126926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.414543, 39.752251, 36.437325>,  <47.316303, 39.637081, 36.623562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.414543, 39.752251, 36.437325>,  <47.578278, 39.944202, 36.126926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414543, 39.752251, 36.437325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305585, 0.873495, 0.378978,
		-0.859689, -0.082004, -0.504192,
		-0.409331, -0.479877, 0.775994,
		47.291744, 39.608288, 36.670124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066166, 40.240448, 36.271912>,  <47.578278, 39.944202, 36.126926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066166, 40.240448, 36.271912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.046238, 40.034470, 36.614223>,  <47.034279, 39.910885, 36.819611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.046238, 40.034470, 36.614223>,  <47.066166, 40.240448, 36.271912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.046238, 40.034470, 36.614223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389064, 0.799160, 0.458226,
		-0.919862, -0.310122, -0.240162,
		-0.049822, -0.514944, 0.855775,
		47.031292, 39.879986, 36.870956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327171, 40.217834, 36.510189>,  <47.066166, 40.240448, 36.271912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327171, 40.217834, 36.510189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602528, 40.200310, 36.799797>,  <46.767742, 40.189796, 36.973560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.602528, 40.200310, 36.799797>,  <46.327171, 40.217834, 36.510189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602528, 40.200310, 36.799797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388190, 0.820943, 0.418762,
		-0.612724, -0.569327, 0.548120,
		0.688388, -0.043811, 0.724018,
		46.809044, 40.187168, 37.017002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922440, 40.438328, 36.980659>,  <46.327171, 40.217834, 36.510189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922440, 40.438328, 36.980659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297813, 40.486740, 37.110085>,  <46.523037, 40.515789, 37.187740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.297813, 40.486740, 37.110085>,  <45.922440, 40.438328, 36.980659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297813, 40.486740, 37.110085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289084, 0.787931, 0.543686,
		-0.189142, -0.603751, 0.774410,
		0.938433, 0.121035, 0.323566,
		46.579342, 40.523052, 37.207153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884026, 40.508053, 37.721951>,  <45.922440, 40.438328, 36.980659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884026, 40.508053, 37.721951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268505, 40.610260, 37.680389>,  <46.499195, 40.671585, 37.655453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268505, 40.610260, 37.680389>,  <45.884026, 40.508053, 37.721951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268505, 40.610260, 37.680389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181116, 0.868748, 0.460949,
		0.208050, -0.424246, 0.881323,
		0.961204, 0.255522, -0.103905,
		46.556866, 40.686916, 37.649220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180969, 40.618519, 38.406799>,  <45.884026, 40.508053, 37.721951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180969, 40.618519, 38.406799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443474, 40.808605, 38.172367>,  <46.600979, 40.922657, 38.031708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443474, 40.808605, 38.172367>,  <46.180969, 40.618519, 38.406799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443474, 40.808605, 38.172367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052638, 0.746020, 0.663839,
		0.752716, -0.466487, 0.464552,
		0.656237, 0.475230, -0.586097,
		46.640354, 40.951168, 37.996544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646980, 40.957870, 38.910366>,  <46.180969, 40.618519, 38.406799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646980, 40.957870, 38.910366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.685947, 41.118839, 38.546265>,  <46.709328, 41.215420, 38.327805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.685947, 41.118839, 38.546265>,  <46.646980, 40.957870, 38.910366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685947, 41.118839, 38.546265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145502, 0.899019, 0.413029,
		0.984550, -0.172679, 0.029024,
		0.097415, 0.402425, -0.910255,
		46.715172, 41.239567, 38.273190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240265, 41.408512, 38.961498>,  <46.646980, 40.957870, 38.910366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240265, 41.408512, 38.961498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016445, 41.539509, 38.656960>,  <46.882153, 41.618107, 38.474236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016445, 41.539509, 38.656960>,  <47.240265, 41.408512, 38.961498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016445, 41.539509, 38.656960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138605, 0.942658, 0.303619,
		0.817122, 0.064365, -0.572860,
		-0.559554, 0.327495, -0.761346,
		46.848579, 41.637756, 38.428555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478859, 42.021622, 38.785889>,  <47.240265, 41.408512, 38.961498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478859, 42.021622, 38.785889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.115734, 42.044186, 38.619667>,  <46.897858, 42.057724, 38.519932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.115734, 42.044186, 38.619667>,  <47.478859, 42.021622, 38.785889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115734, 42.044186, 38.619667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088204, 0.943065, 0.320699,
		0.409988, 0.327790, -0.851154,
		-0.907816, 0.056407, -0.415558,
		46.843388, 42.061108, 38.494999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456516, 42.653805, 38.492546>,  <47.478859, 42.021622, 38.785889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456516, 42.653805, 38.492546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073109, 42.549992, 38.539665>,  <46.843063, 42.487705, 38.567936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.073109, 42.549992, 38.539665>,  <47.456516, 42.653805, 38.492546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073109, 42.549992, 38.539665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174580, 0.861326, 0.477116,
		-0.225287, 0.436762, -0.870910,
		-0.958524, -0.259531, 0.117796,
		46.785553, 42.472134, 38.575005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024712, 43.171780, 38.209606>,  <47.456516, 42.653805, 38.492546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024712, 43.171780, 38.209606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.783421, 42.984596, 38.467949>,  <46.638645, 42.872288, 38.622955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.783421, 42.984596, 38.467949>,  <47.024712, 43.171780, 38.209606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783421, 42.984596, 38.467949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149505, 0.861774, 0.484762,
		-0.783435, 0.195860, -0.589804,
		-0.603223, -0.467959, 0.645861,
		46.602455, 42.844208, 38.661709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579918, 43.655151, 38.396198>,  <47.024712, 43.171780, 38.209606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579918, 43.655151, 38.396198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.477749, 43.403984, 38.690266>,  <46.416447, 43.253284, 38.866707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.477749, 43.403984, 38.690266>,  <46.579918, 43.655151, 38.396198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.477749, 43.403984, 38.690266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127225, 0.775611, 0.618257,
		-0.958423, 0.064382, -0.277993,
		-0.255419, -0.627919, 0.735172,
		46.401123, 43.215607, 38.910816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957985, 43.935452, 38.565804>,  <46.579918, 43.655151, 38.396198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957985, 43.935452, 38.565804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094925, 43.693886, 38.853714>,  <46.177090, 43.548946, 39.026459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094925, 43.693886, 38.853714>,  <45.957985, 43.935452, 38.565804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094925, 43.693886, 38.853714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246966, 0.681291, 0.689094,
		-0.906533, -0.413673, 0.084094,
		0.342353, -0.603918, 0.719776,
		46.197632, 43.512711, 39.069645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473324, 43.917698, 39.129498>,  <45.957985, 43.935452, 38.565804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473324, 43.917698, 39.129498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819023, 43.835320, 39.313087>,  <46.026443, 43.785892, 39.423241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.819023, 43.835320, 39.313087>,  <45.473324, 43.917698, 39.129498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819023, 43.835320, 39.313087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245309, 0.624007, 0.741915,
		-0.439194, -0.753792, 0.488780,
		0.864252, -0.205943, 0.458972,
		46.078300, 43.773537, 39.450779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.800591, 42.498253, 40.389984> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435688, 42.402725, 40.256863>,  <37.216747, 42.345409, 40.176991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435688, 42.402725, 40.256863>,  <37.800591, 42.498253, 40.389984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435688, 42.402725, 40.256863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406562, -0.428677, -0.806811,
		0.050019, -0.871320, 0.488158,
		-0.912253, -0.238822, -0.332803,
		37.162010, 42.331078, 40.157021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834839, 41.859879, 40.090130>,  <37.800591, 42.498253, 40.389984>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834839, 41.859879, 40.090130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521908, 42.042107, 39.920227>,  <37.334148, 42.151443, 39.818283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521908, 42.042107, 39.920227>,  <37.834839, 41.859879, 40.090130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521908, 42.042107, 39.920227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306323, -0.312373, -0.899216,
		-0.542342, -0.833593, 0.104824,
		-0.782324, 0.455573, -0.424761,
		37.287209, 42.178780, 39.792797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547024, 41.370731, 39.574871>,  <37.834839, 41.859879, 40.090130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547024, 41.370731, 39.574871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431671, 41.741108, 39.477318>,  <37.362461, 41.963333, 39.418785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431671, 41.741108, 39.477318>,  <37.547024, 41.370731, 39.574871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431671, 41.741108, 39.477318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228300, -0.180865, -0.956644,
		-0.929902, -0.331552, -0.159234,
		-0.288377, 0.925938, -0.243880,
		37.345158, 42.018890, 39.404152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222397, 41.152184, 38.923222>,  <37.547024, 41.370731, 39.574871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222397, 41.152184, 38.923222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285793, 41.546967, 38.934532>,  <37.323830, 41.783836, 38.941319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285793, 41.546967, 38.934532>,  <37.222397, 41.152184, 38.923222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285793, 41.546967, 38.934532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392797, -0.036753, -0.918891,
		-0.905865, 0.156742, -0.393498,
		0.158491, 0.986956, 0.028274,
		37.333340, 41.843052, 38.943016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915562, 41.355042, 38.270695>,  <37.222397, 41.152184, 38.923222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915562, 41.355042, 38.270695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148178, 41.666389, 38.365303>,  <37.287746, 41.853199, 38.422070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148178, 41.666389, 38.365303>,  <36.915562, 41.355042, 38.270695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148178, 41.666389, 38.365303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361512, 0.013191, -0.932274,
		-0.728779, 0.627661, -0.273720,
		0.581542, 0.778375, 0.236520,
		37.322639, 41.899902, 38.436260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845154, 41.782288, 37.717400>,  <36.915562, 41.355042, 38.270695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845154, 41.782288, 37.717400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196957, 41.881725, 37.879723>,  <37.408039, 41.941387, 37.977116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196957, 41.881725, 37.879723>,  <36.845154, 41.782288, 37.717400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196957, 41.881725, 37.879723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414952, 0.016913, -0.909686,
		-0.233003, 0.968461, -0.088278,
		0.879502, 0.248591, 0.405806,
		37.460808, 41.956303, 38.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153198, 42.414845, 37.303219>,  <36.845154, 41.782288, 37.717400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153198, 42.414845, 37.303219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464550, 42.233112, 37.476524>,  <37.651360, 42.124073, 37.580505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464550, 42.233112, 37.476524>,  <37.153198, 42.414845, 37.303219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464550, 42.233112, 37.476524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417487, -0.140819, -0.897705,
		0.468864, 0.879634, 0.080066,
		0.778377, -0.454328, 0.433261,
		37.698063, 42.096813, 37.606503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731113, 42.900761, 37.201775>,  <37.153198, 42.414845, 37.303219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731113, 42.900761, 37.201775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846947, 42.524734, 37.273800>,  <37.916447, 42.299118, 37.317017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846947, 42.524734, 37.273800>,  <37.731113, 42.900761, 37.201775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846947, 42.524734, 37.273800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589354, 0.026890, -0.807427,
		0.754190, 0.339940, 0.561817,
		0.289584, -0.940062, 0.180066,
		37.933823, 42.242714, 37.327820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396088, 42.921387, 37.057751>,  <37.731113, 42.900761, 37.201775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396088, 42.921387, 37.057751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306026, 42.532501, 37.032104>,  <38.251991, 42.299171, 37.016716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306026, 42.532501, 37.032104>,  <38.396088, 42.921387, 37.057751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306026, 42.532501, 37.032104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575280, -0.079543, -0.814080,
		0.786358, -0.220176, 0.577203,
		-0.225154, -0.972212, -0.064113,
		38.238480, 42.240837, 37.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073814, 42.475811, 36.960701>,  <38.396088, 42.921387, 37.057751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073814, 42.475811, 36.960701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806873, 42.199638, 36.849026>,  <38.646709, 42.033936, 36.782021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806873, 42.199638, 36.849026>,  <39.073814, 42.475811, 36.960701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806873, 42.199638, 36.849026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590732, -0.262455, -0.762990,
		0.453522, -0.674104, 0.583011,
		-0.667349, -0.690436, -0.279185,
		38.606670, 41.992508, 36.765270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357468, 41.822521, 36.890053>,  <39.073814, 42.475811, 36.960701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357468, 41.822521, 36.890053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025997, 41.781857, 36.669884>,  <38.827114, 41.757458, 36.537781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025997, 41.781857, 36.669884>,  <39.357468, 41.822521, 36.890053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025997, 41.781857, 36.669884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557739, -0.066995, -0.827308,
		0.047234, -0.992560, 0.112220,
		-0.828671, -0.101666, -0.550425,
		38.777397, 41.751358, 36.504757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438789, 41.189919, 36.456768>,  <39.357468, 41.822521, 36.890053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438789, 41.189919, 36.456768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181736, 41.450378, 36.295265>,  <39.027504, 41.606655, 36.198364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181736, 41.450378, 36.295265>,  <39.438789, 41.189919, 36.456768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181736, 41.450378, 36.295265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560525, 0.040300, -0.827156,
		-0.522332, -0.757877, -0.390885,
		-0.642635, 0.651151, -0.403759,
		38.988945, 41.645725, 36.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624805, 41.249207, 35.753059>,  <39.438789, 41.189919, 36.456768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624805, 41.249207, 35.753059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378551, 41.564278, 35.762428>,  <39.230797, 41.753323, 35.768051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378551, 41.564278, 35.762428>,  <39.624805, 41.249207, 35.753059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378551, 41.564278, 35.762428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244760, 0.219384, -0.944438,
		-0.749053, -0.575700, -0.327854,
		-0.615639, 0.787680, 0.023422,
		39.193859, 41.800583, 35.769455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952381, 40.725864, 35.263706>,  <39.624805, 41.249207, 35.753059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952381, 40.725864, 35.263706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704849, 40.630970, 35.563244>,  <39.556332, 40.574036, 35.742966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704849, 40.630970, 35.563244>,  <39.952381, 40.725864, 35.263706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704849, 40.630970, 35.563244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770278, -0.370193, 0.519259,
		0.154033, 0.898152, 0.411820,
		-0.618827, -0.237233, 0.748848,
		39.519199, 40.559799, 35.787899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226662, 40.445370, 35.896030>,  <39.952381, 40.725864, 35.263706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226662, 40.445370, 35.896030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342800, 40.087280, 36.031246>,  <40.412483, 39.872425, 36.112377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342800, 40.087280, 36.031246>,  <40.226662, 40.445370, 35.896030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342800, 40.087280, 36.031246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585895, 0.112992, 0.802471,
		-0.756588, -0.431049, -0.491702,
		0.290346, -0.895226, 0.338038,
		40.429905, 39.818714, 36.132656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663795, 39.966278, 36.167244>,  <40.226662, 40.445370, 35.896030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663795, 39.966278, 36.167244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990696, 39.831974, 36.354588>,  <40.186836, 39.751392, 36.466995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990696, 39.831974, 36.354588>,  <39.663795, 39.966278, 36.167244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990696, 39.831974, 36.354588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505941, -0.028935, 0.862083,
		-0.275904, -0.941502, -0.193524,
		0.817252, -0.335763, 0.468361,
		40.235870, 39.731247, 36.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400562, 39.409515, 36.548309>,  <39.663795, 39.966278, 36.167244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400562, 39.409515, 36.548309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763790, 39.455105, 36.709515>,  <39.981728, 39.482456, 36.806240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763790, 39.455105, 36.709515>,  <39.400562, 39.409515, 36.548309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763790, 39.455105, 36.709515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378677, -0.187685, 0.906299,
		0.178931, -0.975595, -0.127273,
		0.908068, 0.113970, 0.403018,
		40.036209, 39.489296, 36.830421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623108, 38.842777, 37.013935>,  <39.400562, 39.409515, 36.548309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623108, 38.842777, 37.013935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878613, 39.128147, 37.129181>,  <40.031914, 39.299370, 37.198326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878613, 39.128147, 37.129181>,  <39.623108, 38.842777, 37.013935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878613, 39.128147, 37.129181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241514, -0.169616, 0.955459,
		0.730519, -0.679891, 0.063959,
		0.638759, 0.713427, 0.288111,
		40.070240, 39.342175, 37.215614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022396, 38.620564, 37.589237>,  <39.623108, 38.842777, 37.013935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022396, 38.620564, 37.589237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039684, 39.019413, 37.614120>,  <40.050056, 39.258724, 37.629051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039684, 39.019413, 37.614120>,  <40.022396, 38.620564, 37.589237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039684, 39.019413, 37.614120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140173, -0.055596, 0.988565,
		0.989183, -0.051443, 0.137368,
		0.043217, 0.997127, 0.062205,
		40.052650, 39.318550, 37.632782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500336, 38.869270, 38.121609>,  <40.022396, 38.620564, 37.589237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500336, 38.869270, 38.121609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269684, 39.194016, 38.085003>,  <40.131294, 39.388863, 38.063042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269684, 39.194016, 38.085003>,  <40.500336, 38.869270, 38.121609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269684, 39.194016, 38.085003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231143, -0.054676, 0.971382,
		0.783630, 0.581276, 0.219185,
		-0.576625, 0.811867, -0.091513,
		40.096695, 39.437576, 38.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642410, 39.237293, 38.704510>,  <40.500336, 38.869270, 38.121609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642410, 39.237293, 38.704510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307545, 39.427845, 38.597019>,  <40.106625, 39.542175, 38.532524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307545, 39.427845, 38.597019>,  <40.642410, 39.237293, 38.704510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307545, 39.427845, 38.597019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345910, -0.080559, 0.934803,
		0.423677, 0.875539, 0.232227,
		-0.837164, 0.476384, -0.268727,
		40.056396, 39.570759, 38.516399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483654, 39.795574, 39.193344>,  <40.642410, 39.237293, 38.704510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483654, 39.795574, 39.193344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140499, 39.698685, 39.012077>,  <39.934608, 39.640549, 38.903316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140499, 39.698685, 39.012077>,  <40.483654, 39.795574, 39.193344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140499, 39.698685, 39.012077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463816, -0.014546, 0.885812,
		-0.221160, 0.970110, -0.099871,
		-0.857883, -0.242228, -0.453170,
		39.883133, 39.626015, 38.876125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002937, 40.018391, 39.689804>,  <40.483654, 39.795574, 39.193344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002937, 40.018391, 39.689804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794891, 39.765404, 39.460205>,  <39.670063, 39.613613, 39.322445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794891, 39.765404, 39.460205>,  <40.002937, 40.018391, 39.689804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794891, 39.765404, 39.460205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785940, 0.091335, 0.611520,
		-0.334339, 0.769185, -0.544583,
		-0.520111, -0.632465, -0.573997,
		39.638859, 39.575665, 39.288006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315712, 40.318130, 39.784630>,  <40.002937, 40.018391, 39.689804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315712, 40.318130, 39.784630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268345, 39.945023, 39.648441>,  <39.239925, 39.721157, 39.566727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268345, 39.945023, 39.648441>,  <39.315712, 40.318130, 39.784630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268345, 39.945023, 39.648441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772198, -0.129059, 0.622137,
		-0.624250, 0.336585, -0.704998,
		-0.118415, -0.932767, -0.340475,
		39.232819, 39.665192, 39.546299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607735, 40.218697, 39.452660>,  <39.315712, 40.318130, 39.784630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607735, 40.218697, 39.452660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745552, 39.868740, 39.588806>,  <38.828243, 39.658764, 39.670494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745552, 39.868740, 39.588806>,  <38.607735, 40.218697, 39.452660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745552, 39.868740, 39.588806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873998, -0.166605, 0.456476,
		-0.342661, -0.454756, -0.822058,
		0.344545, -0.874894, 0.340367,
		38.848915, 39.606274, 39.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003166, 39.695759, 39.438324>,  <38.607735, 40.218697, 39.452660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003166, 39.695759, 39.438324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260166, 39.540867, 39.702824>,  <38.414368, 39.447929, 39.861523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260166, 39.540867, 39.702824>,  <38.003166, 39.695759, 39.438324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260166, 39.540867, 39.702824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740280, -0.090757, 0.666145,
		-0.197945, -0.917501, -0.344977,
		0.642498, -0.387239, 0.661243,
		38.452915, 39.424698, 39.901196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624378, 39.124897, 39.834660>,  <38.003166, 39.695759, 39.438324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624378, 39.124897, 39.834660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938324, 39.210026, 40.067448>,  <38.126694, 39.261105, 40.207119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938324, 39.210026, 40.067448>,  <37.624378, 39.124897, 39.834660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938324, 39.210026, 40.067448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601901, 0.038580, 0.797638,
		0.147305, -0.976328, 0.158380,
		0.784867, 0.212825, 0.581970,
		38.173782, 39.273872, 40.242039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591972, 38.692959, 40.410507>,  <37.624378, 39.124897, 39.834660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591972, 38.692959, 40.410507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828823, 38.993484, 40.527061>,  <37.970936, 39.173801, 40.596996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828823, 38.993484, 40.527061>,  <37.591972, 38.692959, 40.410507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828823, 38.993484, 40.527061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655956, 0.239341, 0.715848,
		0.468087, -0.615012, 0.634551,
		0.592129, 0.751317, 0.291388,
		38.006462, 39.218880, 40.614479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623043, 37.931553, 40.603603>,  <37.591972, 38.692959, 40.410507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623043, 37.931553, 40.603603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296574, 37.716434, 40.688110>,  <37.100693, 37.587364, 40.738815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296574, 37.716434, 40.688110>,  <37.623043, 37.931553, 40.603603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296574, 37.716434, 40.688110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002904, -0.369459, -0.929243,
		0.577797, -0.757811, 0.303105,
		-0.816175, -0.537794, 0.211271,
		37.051720, 37.555096, 40.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726757, 37.253368, 40.356701>,  <37.623043, 37.931553, 40.603603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726757, 37.253368, 40.356701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332050, 37.318226, 40.357616>,  <37.095226, 37.357140, 40.358166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332050, 37.318226, 40.357616>,  <37.726757, 37.253368, 40.356701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332050, 37.318226, 40.357616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061367, -0.360308, -0.930813,
		-0.150097, -0.918634, 0.365490,
		-0.986765, 0.162141, 0.002292,
		37.036022, 37.366867, 40.358303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446198, 36.593342, 39.959545>,  <37.726757, 37.253368, 40.356701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446198, 36.593342, 39.959545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153370, 36.865833, 39.958786>,  <36.977673, 37.029327, 39.958328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153370, 36.865833, 39.958786>,  <37.446198, 36.593342, 39.959545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153370, 36.865833, 39.958786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377092, -0.407552, -0.831687,
		-0.567345, -0.608133, 0.555242,
		-0.732066, 0.681231, -0.001900,
		36.933750, 37.070202, 39.958218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865150, 36.249775, 39.610970>,  <37.446198, 36.593342, 39.959545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865150, 36.249775, 39.610970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751797, 36.633316, 39.604130>,  <36.683784, 36.863441, 39.600025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751797, 36.633316, 39.604130>,  <36.865150, 36.249775, 39.610970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751797, 36.633316, 39.604130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304693, -0.106930, -0.946429,
		-0.909316, -0.262995, 0.322458,
		-0.283386, 0.958853, -0.017101,
		36.666782, 36.920971, 39.598999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189980, 36.209126, 39.359665>,  <36.865150, 36.249775, 39.610970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189980, 36.209126, 39.359665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326572, 36.579350, 39.294262>,  <36.408527, 36.801483, 39.255020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326572, 36.579350, 39.294262>,  <36.189980, 36.209126, 39.359665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326572, 36.579350, 39.294262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147049, -0.119210, -0.981919,
		-0.928316, 0.359347, 0.095394,
		0.341478, 0.925559, -0.163506,
		36.429016, 36.857018, 39.245209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627388, 36.556904, 38.927608>,  <36.189980, 36.209126, 39.359665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627388, 36.556904, 38.927608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977207, 36.745640, 38.882820>,  <36.187099, 36.858883, 38.855946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977207, 36.745640, 38.882820>,  <35.627388, 36.556904, 38.927608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977207, 36.745640, 38.882820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131250, 0.008015, -0.991317,
		-0.466846, 0.881647, 0.068938,
		0.874544, 0.471841, -0.111975,
		36.239571, 36.887192, 38.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541302, 36.935364, 38.397438>,  <35.627388, 36.556904, 38.927608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541302, 36.935364, 38.397438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939148, 36.975693, 38.407028>,  <36.177856, 36.999889, 38.412781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939148, 36.975693, 38.407028>,  <35.541302, 36.935364, 38.397438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939148, 36.975693, 38.407028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013131, 0.106842, -0.994189,
		-0.102796, 0.989151, 0.104942,
		0.994616, 0.100821, 0.023972,
		36.237534, 37.005939, 38.414219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630337, 37.476410, 38.068726>,  <35.541302, 36.935364, 38.397438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630337, 37.476410, 38.068726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975327, 37.275364, 38.045002>,  <36.182320, 37.154736, 38.030769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975327, 37.275364, 38.045002>,  <35.630337, 37.476410, 38.068726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975327, 37.275364, 38.045002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045980, 0.194523, -0.979820,
		0.504007, 0.842343, 0.190881,
		0.862475, -0.502613, -0.059310,
		36.234070, 37.124580, 38.027210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101208, 37.868992, 37.516365>,  <35.630337, 37.476410, 38.068726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101208, 37.868992, 37.516365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266617, 37.507469, 37.560421>,  <36.365864, 37.290554, 37.586853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266617, 37.507469, 37.560421>,  <36.101208, 37.868992, 37.516365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266617, 37.507469, 37.560421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081611, -0.157271, -0.984177,
		0.906829, 0.397992, -0.138796,
		0.413523, -0.903808, 0.110137,
		36.390675, 37.236328, 37.593464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754585, 37.855541, 37.132473>,  <36.101208, 37.868992, 37.516365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754585, 37.855541, 37.132473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590057, 37.491417, 37.151024>,  <36.491341, 37.272942, 37.162155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590057, 37.491417, 37.151024>,  <36.754585, 37.855541, 37.132473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590057, 37.491417, 37.151024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021530, -0.041162, -0.998921,
		0.911239, -0.411870, -0.002669,
		-0.411316, -0.910313, 0.046376,
		36.466663, 37.218323, 37.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061607, 37.526814, 36.602112>,  <36.754585, 37.855541, 37.132473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061607, 37.526814, 36.602112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763962, 37.273731, 36.687889>,  <36.585377, 37.121883, 36.739357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763962, 37.273731, 36.687889>,  <37.061607, 37.526814, 36.602112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763962, 37.273731, 36.687889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020276, -0.299460, -0.953893,
		0.667749, -0.714150, 0.210003,
		-0.744111, -0.632703, 0.214444,
		36.540730, 37.083920, 36.752224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208126, 37.038887, 36.173439>,  <37.061607, 37.526814, 36.602112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208126, 37.038887, 36.173439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818882, 37.021889, 36.263996>,  <36.585335, 37.011688, 36.318333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818882, 37.021889, 36.263996>,  <37.208126, 37.038887, 36.173439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818882, 37.021889, 36.263996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196516, -0.359594, -0.912181,
		0.120175, -0.932141, 0.341572,
		-0.973108, -0.042497, 0.226395,
		36.526951, 37.009140, 36.331913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.561222, 37.016582, 44.495052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191978, 37.032310, 44.342049>,  <35.970432, 37.041748, 44.250244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.191978, 37.032310, 44.342049>,  <36.561222, 37.016582, 44.495052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191978, 37.032310, 44.342049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362704, -0.241306, -0.900120,
		-0.127697, -0.969652, 0.208491,
		-0.923114, 0.039322, -0.382511,
		35.915043, 37.044109, 44.227295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506477, 36.457020, 44.091125>,  <36.561222, 37.016582, 44.495052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506477, 36.457020, 44.091125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238403, 36.714657, 43.943615>,  <36.077560, 36.869240, 43.855110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238403, 36.714657, 43.943615>,  <36.506477, 36.457020, 44.091125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238403, 36.714657, 43.943615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311320, -0.207085, -0.927467,
		-0.673746, -0.736379, -0.061735,
		-0.670183, 0.644097, -0.368772,
		36.037350, 36.907887, 43.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209221, 36.181252, 43.476524>,  <36.506477, 36.457020, 44.091125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209221, 36.181252, 43.476524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140129, 36.574913, 43.460499>,  <36.098675, 36.811111, 43.450886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140129, 36.574913, 43.460499>,  <36.209221, 36.181252, 43.476524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140129, 36.574913, 43.460499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438390, 0.040393, -0.897877,
		-0.882031, -0.172650, -0.438420,
		-0.172728, 0.984154, -0.040060,
		36.088310, 36.870159, 43.448483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923134, 36.242641, 42.776226>,  <36.209221, 36.181252, 43.476524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923134, 36.242641, 42.776226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003834, 36.615086, 42.897762>,  <36.052254, 36.838554, 42.970684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.003834, 36.615086, 42.897762>,  <35.923134, 36.242641, 42.776226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003834, 36.615086, 42.897762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217711, 0.259830, -0.940792,
		-0.954933, 0.255960, -0.150292,
		0.201755, 0.931114, 0.303845,
		36.064362, 36.894421, 42.988914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654839, 36.682270, 42.314091>,  <35.923134, 36.242641, 42.776226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654839, 36.682270, 42.314091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907387, 36.942688, 42.482624>,  <36.058914, 37.098938, 42.583744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907387, 36.942688, 42.482624>,  <35.654839, 36.682270, 42.314091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907387, 36.942688, 42.482624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203707, 0.384997, -0.900156,
		-0.748252, 0.654156, 0.110452,
		0.631366, 0.651044, 0.421331,
		36.096798, 37.138000, 42.609024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518623, 37.203526, 41.901695>,  <35.654839, 36.682270, 42.314091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518623, 37.203526, 41.901695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874935, 37.291290, 42.060875>,  <36.088722, 37.343948, 42.156384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.874935, 37.291290, 42.060875>,  <35.518623, 37.203526, 41.901695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874935, 37.291290, 42.060875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290570, 0.398299, -0.870016,
		-0.349395, 0.890627, 0.291043,
		0.890782, 0.219411, 0.397953,
		36.142170, 37.357113, 42.180260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712399, 37.977840, 41.880924>,  <35.518623, 37.203526, 41.901695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712399, 37.977840, 41.880924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053562, 37.771301, 41.911739>,  <36.258259, 37.647377, 41.930229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053562, 37.771301, 41.911739>,  <35.712399, 37.977840, 41.880924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053562, 37.771301, 41.911739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290530, 0.346844, -0.891791,
		0.433751, 0.782999, 0.445840,
		0.852908, -0.516345, 0.077041,
		36.309433, 37.616398, 41.934853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378391, 38.459164, 41.798603>,  <35.712399, 37.977840, 41.880924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378391, 38.459164, 41.798603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452831, 38.080757, 41.692451>,  <36.497494, 37.853714, 41.628761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452831, 38.080757, 41.692451>,  <36.378391, 38.459164, 41.798603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452831, 38.080757, 41.692451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212211, 0.302419, -0.929252,
		0.959341, 0.116615, 0.257034,
		0.186097, -0.946015, -0.265376,
		36.508659, 37.796951, 41.612839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075443, 38.473038, 41.419552>,  <36.378391, 38.459164, 41.798603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075443, 38.473038, 41.419552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.824310, 38.181332, 41.310734>,  <36.673630, 38.006310, 41.245441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.824310, 38.181332, 41.310734>,  <37.075443, 38.473038, 41.419552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824310, 38.181332, 41.310734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077946, 0.406663, -0.910247,
		0.774439, -0.550274, -0.312158,
		-0.627829, -0.729262, -0.272044,
		36.635963, 37.962555, 41.229122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881351, 38.481403, 41.306561>,  <37.075443, 38.473038, 41.419552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881351, 38.481403, 41.306561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957516, 38.865688, 41.225796>,  <38.003216, 39.096260, 41.177338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957516, 38.865688, 41.225796>,  <37.881351, 38.481403, 41.306561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957516, 38.865688, 41.225796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311282, 0.254148, 0.915704,
		0.931047, -0.111508, 0.347445,
		0.190411, 0.960716, -0.201913,
		38.014641, 39.153904, 41.165222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191868, 38.748245, 41.875900>,  <37.881351, 38.481403, 41.306561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191868, 38.748245, 41.875900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012543, 39.060143, 41.701077>,  <37.904949, 39.247280, 41.596184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.012543, 39.060143, 41.701077>,  <38.191868, 38.748245, 41.875900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012543, 39.060143, 41.701077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462573, 0.216015, 0.859863,
		0.764883, 0.587656, 0.263846,
		-0.448308, 0.779743, -0.437060,
		37.878052, 39.294064, 41.569958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432018, 39.229733, 42.236038>,  <38.191868, 38.748245, 41.875900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432018, 39.229733, 42.236038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097401, 39.364189, 42.062969>,  <37.896629, 39.444862, 41.959126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.097401, 39.364189, 42.062969>,  <38.432018, 39.229733, 42.236038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097401, 39.364189, 42.062969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374513, 0.225602, 0.899357,
		0.399920, 0.914394, -0.062838,
		-0.836543, 0.336137, -0.432675,
		37.846439, 39.465031, 41.933167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250698, 39.872658, 42.581505>,  <38.432018, 39.229733, 42.236038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250698, 39.872658, 42.581505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908257, 39.850872, 42.375931>,  <37.702793, 39.837799, 42.252586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.908257, 39.850872, 42.375931>,  <38.250698, 39.872658, 42.581505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908257, 39.850872, 42.375931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501900, 0.324756, 0.801642,
		0.123239, 0.944228, -0.305361,
		-0.856101, -0.054467, -0.513931,
		37.651428, 39.834534, 42.221752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915073, 40.557919, 42.497124>,  <38.250698, 39.872658, 42.581505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915073, 40.557919, 42.497124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629219, 40.279327, 42.471119>,  <37.457706, 40.112175, 42.455517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629219, 40.279327, 42.471119>,  <37.915073, 40.557919, 42.497124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629219, 40.279327, 42.471119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573103, 0.529679, 0.625294,
		-0.401066, 0.484113, -0.777677,
		-0.714632, -0.696473, -0.065010,
		37.414829, 40.070385, 42.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297050, 40.937496, 42.616383>,  <37.915073, 40.557919, 42.497124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297050, 40.937496, 42.616383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189365, 40.556789, 42.675262>,  <37.124752, 40.328365, 42.710590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189365, 40.556789, 42.675262>,  <37.297050, 40.937496, 42.616383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189365, 40.556789, 42.675262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529763, 0.273987, 0.802672,
		-0.804285, 0.138114, -0.577971,
		-0.269217, -0.951764, 0.147196,
		37.108601, 40.271259, 42.719421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704929, 40.951893, 43.107132>,  <37.297050, 40.937496, 42.616383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704929, 40.951893, 43.107132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770355, 40.557926, 43.129723>,  <36.809608, 40.321545, 43.143276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770355, 40.557926, 43.129723>,  <36.704929, 40.951893, 43.107132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770355, 40.557926, 43.129723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312425, 0.002592, 0.949939,
		-0.935756, -0.173018, -0.307288,
		0.163560, -0.984915, 0.056481,
		36.819424, 40.262451, 43.146667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074020, 40.603577, 43.382000>,  <36.704929, 40.951893, 43.107132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074020, 40.603577, 43.382000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406700, 40.389050, 43.439472>,  <36.606308, 40.260334, 43.473957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406700, 40.389050, 43.439472>,  <36.074020, 40.603577, 43.382000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406700, 40.389050, 43.439472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363958, -0.331185, 0.870546,
		-0.419304, -0.776325, -0.470643,
		0.831697, -0.536317, 0.143682,
		36.656208, 40.228153, 43.482578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828598, 39.901894, 43.662937>,  <36.074020, 40.603577, 43.382000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828598, 39.901894, 43.662937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208000, 39.962727, 43.774086>,  <36.435642, 39.999226, 43.840775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208000, 39.962727, 43.774086>,  <35.828598, 39.901894, 43.662937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208000, 39.962727, 43.774086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225939, -0.290021, 0.929967,
		0.222021, -0.944859, -0.240725,
		0.948503, 0.152083, 0.277871,
		36.492550, 40.008350, 43.857449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025795, 39.290977, 44.016476>,  <35.828598, 39.901894, 43.662937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025795, 39.290977, 44.016476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307465, 39.542320, 44.148724>,  <36.476467, 39.693127, 44.228073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.307465, 39.542320, 44.148724>,  <36.025795, 39.290977, 44.016476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307465, 39.542320, 44.148724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241471, -0.225951, 0.943736,
		0.667709, -0.744385, -0.007377,
		0.704170, 0.628360, 0.330617,
		36.518715, 39.730827, 44.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368710, 38.934032, 44.550488>,  <36.025795, 39.290977, 44.016476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368710, 38.934032, 44.550488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475636, 39.313652, 44.617226>,  <36.539791, 39.541424, 44.657269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475636, 39.313652, 44.617226>,  <36.368710, 38.934032, 44.550488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475636, 39.313652, 44.617226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033727, -0.163827, 0.985912,
		0.963018, -0.269179, -0.011785,
		0.267318, 0.949054, 0.166847,
		36.555832, 39.598370, 44.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826824, 39.023041, 45.228546>,  <36.368710, 38.934032, 44.550488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826824, 39.023041, 45.228546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715042, 39.400818, 45.159344>,  <36.647972, 39.627483, 45.117821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715042, 39.400818, 45.159344>,  <36.826824, 39.023041, 45.228546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715042, 39.400818, 45.159344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122724, 0.143573, 0.982001,
		0.952285, 0.295653, 0.075784,
		-0.279451, 0.944445, -0.173006,
		36.631207, 39.684151, 45.107441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170433, 39.359451, 45.826740>,  <36.826824, 39.023041, 45.228546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170433, 39.359451, 45.826740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863888, 39.568394, 45.677166>,  <36.679962, 39.693760, 45.587421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.863888, 39.568394, 45.677166>,  <37.170433, 39.359451, 45.826740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863888, 39.568394, 45.677166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360062, 0.132795, 0.923429,
		0.532017, 0.842323, 0.086311,
		-0.766364, 0.522357, -0.373938,
		36.633980, 39.725101, 45.564983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113064, 39.928928, 46.229671>,  <37.170433, 39.359451, 45.826740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113064, 39.928928, 46.229671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753204, 39.906353, 46.056492>,  <36.537289, 39.892807, 45.952583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.753204, 39.906353, 46.056492>,  <37.113064, 39.928928, 46.229671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753204, 39.906353, 46.056492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436373, 0.148809, 0.887375,
		0.014344, 0.987254, -0.158505,
		-0.899651, -0.056438, -0.432946,
		36.483311, 39.889423, 45.926609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.831369, 39.290199, 43.217751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171858, 39.379261, 43.407845>,  <31.376150, 39.432697, 43.521900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.171858, 39.379261, 43.407845>,  <30.831369, 39.290199, 43.217751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171858, 39.379261, 43.407845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447523, 0.165035, -0.878912,
		-0.274126, 0.960826, 0.040837,
		0.851222, 0.222657, 0.475232,
		31.427225, 39.446056, 43.550415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059864, 39.952824, 42.903927>,  <30.831369, 39.290199, 43.217751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059864, 39.952824, 42.903927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380543, 39.785931, 43.075134>,  <31.572950, 39.685795, 43.177860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.380543, 39.785931, 43.075134>,  <31.059864, 39.952824, 42.903927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380543, 39.785931, 43.075134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538425, 0.193107, -0.820249,
		0.259581, 0.888047, 0.379461,
		0.801696, -0.417232, 0.428020,
		31.621052, 39.660763, 43.203541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549917, 40.443867, 42.730713>,  <31.059864, 39.952824, 42.903927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549917, 40.443867, 42.730713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726328, 40.093330, 42.808201>,  <31.832174, 39.883007, 42.854694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.726328, 40.093330, 42.808201>,  <31.549917, 40.443867, 42.730713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726328, 40.093330, 42.808201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583569, 0.116020, -0.803733,
		0.681868, 0.467513, 0.562572,
		0.441025, -0.876340, 0.193716,
		31.858635, 39.830429, 42.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176491, 40.591881, 42.636547>,  <31.549917, 40.443867, 42.730713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176491, 40.591881, 42.636547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199100, 40.193272, 42.612034>,  <32.212666, 39.954105, 42.597328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.199100, 40.193272, 42.612034>,  <32.176491, 40.591881, 42.636547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199100, 40.193272, 42.612034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545463, 0.082231, -0.834091,
		0.836226, 0.013722, 0.548213,
		0.056525, -0.996519, -0.061279,
		32.216057, 39.894318, 42.593651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834053, 40.447769, 42.377483>,  <32.176491, 40.591881, 42.636547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834053, 40.447769, 42.377483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627632, 40.111298, 42.312862>,  <32.503780, 39.909412, 42.274090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627632, 40.111298, 42.312862>,  <32.834053, 40.447769, 42.377483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627632, 40.111298, 42.312862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533473, -0.168073, -0.828950,
		0.670143, -0.513971, 0.535483,
		-0.516056, -0.841181, -0.161557,
		32.472816, 39.858944, 42.264397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324928, 40.006687, 42.162403>,  <32.834053, 40.447769, 42.377483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324928, 40.006687, 42.162403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990784, 39.832668, 42.028000>,  <32.790298, 39.728256, 41.947357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990784, 39.832668, 42.028000>,  <33.324928, 40.006687, 42.162403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990784, 39.832668, 42.028000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437492, -0.156090, -0.885571,
		0.332821, -0.886773, 0.320723,
		-0.835362, -0.435051, -0.336006,
		32.740173, 39.702152, 41.927197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554302, 39.282192, 41.900738>,  <33.324928, 40.006687, 42.162403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554302, 39.282192, 41.900738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210518, 39.391762, 41.728092>,  <33.004246, 39.457504, 41.624504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.210518, 39.391762, 41.728092>,  <33.554302, 39.282192, 41.900738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210518, 39.391762, 41.728092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404692, -0.151258, -0.901857,
		-0.312324, -0.949783, 0.019147,
		-0.859464, 0.273923, -0.431610,
		32.952679, 39.473938, 41.598610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429798, 38.727715, 41.584171>,  <33.554302, 39.282192, 41.900738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429798, 38.727715, 41.584171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214813, 39.013271, 41.404621>,  <33.085823, 39.184608, 41.296890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214813, 39.013271, 41.404621>,  <33.429798, 38.727715, 41.584171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214813, 39.013271, 41.404621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354050, -0.292078, -0.888448,
		-0.765367, -0.636428, -0.095775,
		-0.537459, 0.713897, -0.448874,
		33.053574, 39.227440, 41.269958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960712, 38.474266, 40.977150>,  <33.429798, 38.727715, 41.584171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960712, 38.474266, 40.977150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990925, 38.867836, 40.912418>,  <33.009052, 39.103977, 40.873577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.990925, 38.867836, 40.912418>,  <32.960712, 38.474266, 40.977150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990925, 38.867836, 40.912418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109802, -0.153102, -0.982091,
		-0.991080, 0.091947, 0.096473,
		0.075530, 0.983924, -0.161832,
		33.013584, 39.163013, 40.863869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515377, 38.606445, 40.371349>,  <32.960712, 38.474266, 40.977150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515377, 38.606445, 40.371349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740147, 38.936966, 40.386654>,  <32.875008, 39.135277, 40.395836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740147, 38.936966, 40.386654>,  <32.515377, 38.606445, 40.371349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740147, 38.936966, 40.386654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119878, 0.127117, -0.984617,
		-0.818456, 0.548694, 0.170486,
		0.561925, 0.826303, 0.038263,
		32.908726, 39.184856, 40.398132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217960, 39.164555, 39.887672>,  <32.515377, 38.606445, 40.371349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217960, 39.164555, 39.887672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603012, 39.257061, 39.944046>,  <32.834042, 39.312565, 39.977871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603012, 39.257061, 39.944046>,  <32.217960, 39.164555, 39.887672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603012, 39.257061, 39.944046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095385, 0.197541, -0.975643,
		-0.253474, 0.952625, 0.168099,
		0.962628, 0.231265, 0.140938,
		32.891800, 39.326439, 39.986328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374546, 39.787273, 39.517105>,  <32.217960, 39.164555, 39.887672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374546, 39.787273, 39.517105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738159, 39.627163, 39.563473>,  <32.956326, 39.531097, 39.591293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.738159, 39.627163, 39.563473>,  <32.374546, 39.787273, 39.517105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738159, 39.627163, 39.563473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196586, 0.166629, -0.966224,
		0.367445, 0.901116, 0.230160,
		0.909032, -0.400280, 0.115920,
		33.010868, 39.507080, 39.598248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864380, 40.294445, 39.451561>,  <32.374546, 39.787273, 39.517105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864380, 40.294445, 39.451561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059067, 39.957085, 39.360542>,  <33.175880, 39.754669, 39.305931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.059067, 39.957085, 39.360542>,  <32.864380, 40.294445, 39.451561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059067, 39.957085, 39.360542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185561, 0.354355, -0.916515,
		0.853621, 0.403864, 0.328974,
		0.486721, -0.843402, -0.227543,
		33.205082, 39.704063, 39.292278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541420, 40.444313, 39.188129>,  <32.864380, 40.294445, 39.451561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541420, 40.444313, 39.188129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505211, 40.069813, 39.052345>,  <33.483486, 39.845112, 38.970875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505211, 40.069813, 39.052345>,  <33.541420, 40.444313, 39.188129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505211, 40.069813, 39.052345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260685, 0.306701, -0.915411,
		0.961171, -0.171357, 0.216305,
		-0.090521, -0.936254, -0.339462,
		33.478054, 39.788937, 38.950508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146976, 40.954727, 39.427994>,  <33.541420, 40.444313, 39.188129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146976, 40.954727, 39.427994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269497, 41.333790, 39.391953>,  <34.343010, 41.561230, 39.370327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269497, 41.333790, 39.391953>,  <34.146976, 40.954727, 39.427994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269497, 41.333790, 39.391953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654325, 0.278347, 0.703123,
		0.691402, -0.156409, 0.705336,
		0.306303, 0.947660, -0.090108,
		34.361389, 41.618088, 39.364922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320415, 41.144897, 40.068237>,  <34.146976, 40.954727, 39.427994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320415, 41.144897, 40.068237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203018, 41.468739, 39.864899>,  <34.132580, 41.663044, 39.742897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203018, 41.468739, 39.864899>,  <34.320415, 41.144897, 40.068237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203018, 41.468739, 39.864899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481654, 0.334100, 0.810177,
		0.825756, 0.482624, 0.291892,
		-0.293490, 0.809599, -0.508343,
		34.114971, 41.711617, 39.712395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623653, 41.739929, 40.374481>,  <34.320415, 41.144897, 40.068237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623653, 41.739929, 40.374481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298107, 41.857857, 40.174198>,  <34.102779, 41.928612, 40.054028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298107, 41.857857, 40.174198>,  <34.623653, 41.739929, 40.374481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298107, 41.857857, 40.174198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427769, 0.279187, 0.859691,
		0.393245, 0.913858, -0.101105,
		-0.813862, 0.294820, -0.500709,
		34.053947, 41.946304, 40.023987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444878, 42.380795, 40.765835>,  <34.623653, 41.739929, 40.374481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444878, 42.380795, 40.765835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107967, 42.291714, 40.569481>,  <33.905819, 42.238266, 40.451668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.107967, 42.291714, 40.569481>,  <34.444878, 42.380795, 40.765835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107967, 42.291714, 40.569481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533316, 0.211896, 0.818947,
		-0.078367, 0.951579, -0.297247,
		-0.842278, -0.222705, -0.490887,
		33.855286, 42.224903, 40.422215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936577, 42.765362, 41.009296>,  <34.444878, 42.380795, 40.765835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936577, 42.765362, 41.009296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704399, 42.502556, 40.816875>,  <33.565090, 42.344872, 40.701424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704399, 42.502556, 40.816875>,  <33.936577, 42.765362, 41.009296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704399, 42.502556, 40.816875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688741, 0.080962, 0.720472,
		-0.434416, 0.749515, -0.499510,
		-0.580446, -0.657018, -0.481050,
		33.530266, 42.305450, 40.672562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341476, 43.102757, 40.821243>,  <33.936577, 42.765362, 41.009296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341476, 43.102757, 40.821243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248627, 42.714321, 40.843533>,  <33.192917, 42.481258, 40.856907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.248627, 42.714321, 40.843533>,  <33.341476, 43.102757, 40.821243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248627, 42.714321, 40.843533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699428, 0.206447, 0.684237,
		-0.675958, 0.119856, -0.727128,
		-0.232123, -0.971089, 0.055719,
		33.178989, 42.422993, 40.860249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622890, 43.091347, 40.753521>,  <33.341476, 43.102757, 40.821243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622890, 43.091347, 40.753521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719276, 42.732609, 40.901901>,  <32.777107, 42.517365, 40.990929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.719276, 42.732609, 40.901901>,  <32.622890, 43.091347, 40.753521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719276, 42.732609, 40.901901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553951, 0.186743, 0.811335,
		-0.796915, -0.400993, -0.451809,
		0.240967, -0.896846, 0.370949,
		32.791565, 42.463554, 41.013187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005428, 42.718987, 41.078865>,  <32.622890, 43.091347, 40.753521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005428, 42.718987, 41.078865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310432, 42.525486, 41.250706>,  <32.493435, 42.409386, 41.353809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.310432, 42.525486, 41.250706>,  <32.005428, 42.718987, 41.078865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310432, 42.525486, 41.250706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506081, -0.032308, 0.861881,
		-0.403057, -0.874608, -0.269453,
		0.762514, -0.483752, 0.429601,
		32.539188, 42.380360, 41.379585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673492, 42.360516, 41.554279>,  <32.005428, 42.718987, 41.078865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673492, 42.360516, 41.554279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050900, 42.355602, 41.686718>,  <32.277344, 42.352654, 41.766182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.050900, 42.355602, 41.686718>,  <31.673492, 42.360516, 41.554279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050900, 42.355602, 41.686718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321487, 0.207786, 0.923835,
		-0.080148, -0.978097, 0.192100,
		0.943516, -0.012286, 0.331099,
		32.333954, 42.351917, 41.786049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552811, 41.961472, 42.116127>,  <31.673492, 42.360516, 41.554279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552811, 41.961472, 42.116127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.904535, 42.142838, 42.174400>,  <32.115570, 42.251656, 42.209366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.904535, 42.142838, 42.174400>,  <31.552811, 41.961472, 42.116127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904535, 42.142838, 42.174400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256674, 0.193512, 0.946928,
		0.401157, -0.870040, 0.286537,
		0.879313, 0.453413, 0.145688,
		32.168331, 42.278862, 42.218105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911448, 41.667454, 42.660179>,  <31.552811, 41.961472, 42.116127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911448, 41.667454, 42.660179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037342, 42.044605, 42.616512>,  <32.112881, 42.270897, 42.590313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037342, 42.044605, 42.616512>,  <31.911448, 41.667454, 42.660179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037342, 42.044605, 42.616512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061260, 0.134946, 0.988958,
		0.947200, -0.304574, 0.100233,
		0.314737, 0.942881, -0.109163,
		32.131763, 42.327469, 42.583763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495850, 41.673496, 43.035873>,  <31.911448, 41.667454, 42.660179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495850, 41.673496, 43.035873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337234, 42.038597, 42.996616>,  <32.242065, 42.257660, 42.973061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337234, 42.038597, 42.996616>,  <32.495850, 41.673496, 43.035873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337234, 42.038597, 42.996616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093964, 0.065992, 0.993386,
		0.913196, 0.403139, 0.059598,
		-0.396540, 0.912756, -0.098144,
		32.218273, 42.312424, 42.967175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781887, 41.941105, 43.611549>,  <32.495850, 41.673496, 43.035873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781887, 41.941105, 43.611549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471622, 42.175331, 43.517349>,  <32.285461, 42.315865, 43.460827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471622, 42.175331, 43.517349>,  <32.781887, 41.941105, 43.611549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471622, 42.175331, 43.517349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214589, 0.106228, 0.970911,
		0.593546, 0.803636, 0.043258,
		-0.775664, 0.585563, -0.235502,
		32.238922, 42.351002, 43.446697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844261, 42.443897, 44.080837>,  <32.781887, 41.941105, 43.611549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844261, 42.443897, 44.080837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462654, 42.446903, 43.960979>,  <32.233688, 42.448708, 43.889065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462654, 42.446903, 43.960979>,  <32.844261, 42.443897, 44.080837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462654, 42.446903, 43.960979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292420, 0.196187, 0.935949,
		0.065819, 0.980538, -0.184970,
		-0.954022, 0.007514, -0.299642,
		32.176449, 42.449158, 43.871086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251244, 43.036068, 44.492130>,  <32.844261, 42.443897, 44.080837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251244, 43.036068, 44.492130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599751, 42.949398, 44.668285>,  <33.808857, 42.897396, 44.773979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599751, 42.949398, 44.668285>,  <33.251244, 43.036068, 44.492130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599751, 42.949398, 44.668285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426927, -0.108067, -0.897805,
		0.242121, 0.970245, -0.001652,
		0.871269, -0.216673, 0.440389,
		33.861130, 42.884396, 44.800404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713276, 43.574554, 44.319492>,  <33.251244, 43.036068, 44.492130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713276, 43.574554, 44.319492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909523, 43.233944, 44.393463>,  <34.027271, 43.029579, 44.437847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.909523, 43.233944, 44.393463>,  <33.713276, 43.574554, 44.319492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909523, 43.233944, 44.393463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504268, 0.104376, -0.857216,
		0.710641, 0.513815, 0.480606,
		0.490614, -0.851528, 0.184927,
		34.056705, 42.978485, 44.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316750, 43.753620, 44.066448>,  <33.713276, 43.574554, 44.319492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316750, 43.753620, 44.066448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336826, 43.355988, 44.105003>,  <34.348873, 43.117409, 44.128136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.336826, 43.355988, 44.105003>,  <34.316750, 43.753620, 44.066448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336826, 43.355988, 44.105003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726439, -0.029894, -0.686581,
		0.685396, 0.104485, 0.720635,
		0.050195, -0.994077, 0.096391,
		34.351883, 43.057766, 44.133923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002682, 43.624245, 44.004108>,  <34.316750, 43.753620, 44.066448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002682, 43.624245, 44.004108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845539, 43.263092, 43.934280>,  <34.751255, 43.046402, 43.892384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.845539, 43.263092, 43.934280>,  <35.002682, 43.624245, 44.004108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845539, 43.263092, 43.934280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748796, -0.203876, -0.630666,
		0.533823, -0.378479, 0.756165,
		-0.392858, -0.902878, -0.174570,
		34.727680, 42.992229, 43.881908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611431, 43.127205, 43.862095>,  <35.002682, 43.624245, 44.004108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611431, 43.127205, 43.862095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294075, 42.950500, 43.694576>,  <35.103661, 42.844479, 43.594067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294075, 42.950500, 43.694576>,  <35.611431, 43.127205, 43.862095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294075, 42.950500, 43.694576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563063, -0.271178, -0.780655,
		0.231293, -0.855169, 0.463886,
		-0.793387, -0.441757, -0.418792,
		35.056057, 42.817974, 43.568939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764141, 42.434757, 43.669601>,  <35.611431, 43.127205, 43.862095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764141, 42.434757, 43.669601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462635, 42.554943, 43.435829>,  <35.281731, 42.627052, 43.295567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462635, 42.554943, 43.435829>,  <35.764141, 42.434757, 43.669601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462635, 42.554943, 43.435829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531281, -0.244792, -0.811060,
		-0.386758, -0.921845, 0.024885,
		-0.753763, 0.300463, -0.584434,
		35.236507, 42.645081, 43.260498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782131, 41.980301, 43.118919>,  <35.764141, 42.434757, 43.669601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782131, 41.980301, 43.118919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544544, 42.271564, 42.982113>,  <35.401993, 42.446323, 42.900028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544544, 42.271564, 42.982113>,  <35.782131, 41.980301, 43.118919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544544, 42.271564, 42.982113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300641, -0.193428, -0.933917,
		-0.746199, -0.657546, -0.104024,
		-0.593972, 0.728161, -0.342021,
		35.366352, 42.490013, 42.879505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354595, 41.738865, 42.478455>,  <35.782131, 41.980301, 43.118919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354595, 41.738865, 42.478455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421497, 42.133221, 42.481228>,  <35.461639, 42.369835, 42.482891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421497, 42.133221, 42.481228>,  <35.354595, 41.738865, 42.478455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421497, 42.133221, 42.481228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354953, -0.053657, -0.933343,
		-0.919801, 0.158565, -0.358919,
		0.167254, 0.985889, 0.006929,
		35.471672, 42.428986, 42.483307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058273, 42.053375, 41.892788>,  <35.354595, 41.738865, 42.478455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058273, 42.053375, 41.892788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.358982, 42.286728, 42.015755>,  <35.539406, 42.426739, 42.089535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.358982, 42.286728, 42.015755>,  <35.058273, 42.053375, 41.892788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358982, 42.286728, 42.015755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339059, 0.057877, -0.938983,
		-0.565580, 0.810132, -0.154292,
		0.751770, 0.583384, 0.307417,
		35.584515, 42.461742, 42.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030506, 42.612663, 41.512089>,  <35.058273, 42.053375, 41.892788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030506, 42.612663, 41.512089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408421, 42.630287, 41.641975>,  <35.635170, 42.640862, 41.719910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.408421, 42.630287, 41.641975>,  <35.030506, 42.612663, 41.512089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408421, 42.630287, 41.641975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322551, 0.049840, -0.945239,
		-0.057833, 0.997785, 0.032876,
		0.944784, 0.044062, 0.324719,
		35.691856, 42.643505, 41.739391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428875, 43.187801, 41.189537>,  <35.030506, 42.612663, 41.512089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428875, 43.187801, 41.189537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.698910, 42.926785, 41.327202>,  <35.860931, 42.770172, 41.409801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.698910, 42.926785, 41.327202>,  <35.428875, 43.187801, 41.189537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698910, 42.926785, 41.327202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441333, -0.016608, -0.897190,
		0.591172, 0.757569, 0.276777,
		0.675086, -0.652544, 0.344158,
		35.901436, 42.731022, 41.430450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022106, 43.448887, 40.924995>,  <35.428875, 43.187801, 41.189537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022106, 43.448887, 40.924995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137760, 43.075829, 41.011311>,  <36.207153, 42.851994, 41.063099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137760, 43.075829, 41.011311>,  <36.022106, 43.448887, 40.924995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137760, 43.075829, 41.011311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526384, -0.033379, -0.849592,
		0.799574, 0.359236, 0.481280,
		0.289139, -0.932650, 0.215785,
		36.224503, 42.796032, 41.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828239, 43.371559, 40.890572>,  <36.022106, 43.448887, 40.924995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828239, 43.371559, 40.890572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698204, 42.995541, 40.849350>,  <36.620182, 42.769928, 40.824615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.698204, 42.995541, 40.849350>,  <36.828239, 43.371559, 40.890572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698204, 42.995541, 40.849350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610712, -0.125486, -0.781847,
		0.722043, -0.317109, 0.614894,
		-0.325092, -0.940050, -0.103056,
		36.600677, 42.713524, 40.818432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409237, 42.967079, 40.866158>,  <36.828239, 43.371559, 40.890572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409237, 42.967079, 40.866158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136951, 42.733902, 40.688709>,  <36.973579, 42.593994, 40.582241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.136951, 42.733902, 40.688709>,  <37.409237, 42.967079, 40.866158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136951, 42.733902, 40.688709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529006, 0.027731, -0.848165,
		0.506737, -0.812037, 0.289506,
		-0.680713, -0.582947, -0.443625,
		36.932739, 42.559017, 40.555622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.334538, 30.061295, 28.756952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989386, 29.920742, 28.611643>,  <28.782293, 29.836411, 28.524456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.989386, 29.920742, 28.611643>,  <29.334538, 30.061295, 28.756952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989386, 29.920742, 28.611643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487695, 0.390268, 0.780926,
		-0.132627, 0.851013, -0.508121,
		-0.862881, -0.351380, -0.363275,
		28.730522, 29.815329, 28.502661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693386, 30.568796, 28.529478>,  <29.334538, 30.061295, 28.756952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693386, 30.568796, 28.529478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604515, 30.212639, 28.688395>,  <28.551193, 29.998945, 28.783745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.604515, 30.212639, 28.688395>,  <28.693386, 30.568796, 28.529478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604515, 30.212639, 28.688395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519617, 0.452918, 0.724475,
		-0.825006, -0.045477, -0.563291,
		-0.222178, -0.890391, 0.397291,
		28.537861, 29.945522, 28.807581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971886, 30.644724, 28.759281>,  <28.693386, 30.568796, 28.529478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971886, 30.644724, 28.759281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123415, 30.325533, 28.946779>,  <28.214333, 30.134018, 29.059278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123415, 30.325533, 28.946779>,  <27.971886, 30.644724, 28.759281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123415, 30.325533, 28.946779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374951, 0.330729, 0.866043,
		-0.846112, -0.503834, -0.173916,
		0.378823, -0.797979, 0.468747,
		28.237062, 30.086140, 29.087402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490374, 30.416304, 29.165781>,  <27.971886, 30.644724, 28.759281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490374, 30.416304, 29.165781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804298, 30.261768, 29.359610>,  <27.992653, 30.169046, 29.475906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.804298, 30.261768, 29.359610>,  <27.490374, 30.416304, 29.165781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804298, 30.261768, 29.359610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240238, 0.531108, 0.812533,
		-0.571273, -0.754099, 0.324008,
		0.784814, -0.386339, 0.484571,
		28.039743, 30.145866, 29.504980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207575, 30.252932, 29.817911>,  <27.490374, 30.416304, 29.165781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207575, 30.252932, 29.817911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603977, 30.266647, 29.869650>,  <27.841818, 30.274876, 29.900694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.603977, 30.266647, 29.869650>,  <27.207575, 30.252932, 29.817911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603977, 30.266647, 29.869650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128699, 0.508952, 0.851120,
		-0.036649, -0.860112, 0.508788,
		0.991006, 0.034288, 0.129348,
		27.901279, 30.276934, 29.908455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287500, 30.233103, 30.552284>,  <27.207575, 30.252932, 29.817911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287500, 30.233103, 30.552284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649984, 30.369150, 30.451807>,  <27.867476, 30.450779, 30.391521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649984, 30.369150, 30.451807>,  <27.287500, 30.233103, 30.552284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649984, 30.369150, 30.451807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000559, 0.595049, 0.803689,
		0.422822, -0.728173, 0.539431,
		0.906213, 0.340118, -0.251193,
		27.921848, 30.471186, 30.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731052, 30.154415, 31.126637>,  <27.287500, 30.233103, 30.552284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731052, 30.154415, 31.126637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903336, 30.438648, 30.904081>,  <28.006706, 30.609188, 30.770548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903336, 30.438648, 30.904081>,  <27.731052, 30.154415, 31.126637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903336, 30.438648, 30.904081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231874, 0.508675, 0.829147,
		0.872195, -0.486133, 0.054325,
		0.430709, 0.710581, -0.556386,
		28.032549, 30.651823, 30.737165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178640, 30.366934, 31.524353>,  <27.731052, 30.154415, 31.126637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178640, 30.366934, 31.524353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182299, 30.666691, 31.259527>,  <28.184494, 30.846544, 31.100632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182299, 30.666691, 31.259527>,  <28.178640, 30.366934, 31.524353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182299, 30.666691, 31.259527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118895, 0.656580, 0.744827,
		0.992865, -0.085526, -0.083095,
		0.009144, 0.749392, -0.662064,
		28.185041, 30.891508, 31.060907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603727, 30.876568, 31.866732>,  <28.178640, 30.366934, 31.524353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603727, 30.876568, 31.866732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394754, 31.053387, 31.575073>,  <28.269371, 31.159479, 31.400078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.394754, 31.053387, 31.575073>,  <28.603727, 30.876568, 31.866732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394754, 31.053387, 31.575073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071698, 0.874870, 0.479022,
		0.849660, 0.197980, -0.488756,
		-0.522434, 0.442049, -0.729147,
		28.238024, 31.186001, 31.356329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836056, 31.484499, 31.773090>,  <28.603727, 30.876568, 31.866732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836056, 31.484499, 31.773090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473534, 31.571198, 31.627966>,  <28.256020, 31.623217, 31.540892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.473534, 31.571198, 31.627966>,  <28.836056, 31.484499, 31.773090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473534, 31.571198, 31.627966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019305, 0.878810, 0.476781,
		0.422184, 0.425105, -0.800654,
		-0.906305, 0.216746, -0.362813,
		28.201643, 31.636221, 31.519123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837027, 32.187405, 31.744646>,  <28.836056, 31.484499, 31.773090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837027, 32.187405, 31.744646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442825, 32.130676, 31.707407>,  <28.206305, 32.096638, 31.685062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442825, 32.130676, 31.707407>,  <28.837027, 32.187405, 31.744646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442825, 32.130676, 31.707407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169644, 0.828828, 0.533164,
		0.001547, 0.541229, -0.840874,
		-0.985504, -0.141825, -0.093099,
		28.147175, 32.088127, 31.679478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486933, 32.814713, 31.628410>,  <28.837027, 32.187405, 31.744646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486933, 32.814713, 31.628410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192274, 32.568645, 31.740778>,  <28.015478, 32.421005, 31.808199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.192274, 32.568645, 31.740778>,  <28.486933, 32.814713, 31.628410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192274, 32.568645, 31.740778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472096, 0.765203, 0.437710,
		-0.484228, 0.189816, -0.854104,
		-0.736647, -0.615170, 0.280921,
		27.971279, 32.384094, 31.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818472, 33.111095, 31.392717>,  <28.486933, 32.814713, 31.628410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818472, 33.111095, 31.392717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798826, 32.868782, 31.710363>,  <27.787039, 32.723392, 31.900951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798826, 32.868782, 31.710363>,  <27.818472, 33.111095, 31.392717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798826, 32.868782, 31.710363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437035, 0.727954, 0.528284,
		-0.898102, -0.321109, -0.300501,
		-0.049114, -0.605782, 0.794113,
		27.784092, 32.687046, 31.948597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527046, 33.552410, 31.766848>,  <27.818472, 33.111095, 31.392717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527046, 33.552410, 31.766848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569149, 33.256229, 32.032375>,  <27.594410, 33.078522, 32.191692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569149, 33.256229, 32.032375>,  <27.527046, 33.552410, 31.766848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569149, 33.256229, 32.032375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351975, 0.596578, 0.721255,
		-0.930073, -0.309564, -0.197826,
		0.105256, -0.740449, 0.663819,
		27.600725, 33.034096, 32.231522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934763, 33.527115, 32.132607>,  <27.527046, 33.552410, 31.766848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934763, 33.527115, 32.132607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207485, 33.358276, 32.371597>,  <27.371119, 33.256973, 32.514992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.207485, 33.358276, 32.371597>,  <26.934763, 33.527115, 32.132607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207485, 33.358276, 32.371597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317935, 0.564601, 0.761671,
		-0.658833, -0.709270, 0.250750,
		0.681804, -0.422092, 0.597479,
		27.412027, 33.231647, 32.550842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636200, 33.210213, 32.810970>,  <26.934763, 33.527115, 32.132607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636200, 33.210213, 32.810970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025986, 33.256775, 32.887775>,  <27.259857, 33.284710, 32.933861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.025986, 33.256775, 32.887775>,  <26.636200, 33.210213, 32.810970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025986, 33.256775, 32.887775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223610, 0.425207, 0.877039,
		0.020441, -0.897580, 0.440378,
		0.974465, 0.116401, 0.192016,
		27.318325, 33.291695, 32.945381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664557, 33.158913, 33.545044>,  <26.636200, 33.210213, 32.810970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664557, 33.158913, 33.545044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984077, 33.365135, 33.421036>,  <27.175791, 33.488869, 33.346630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984077, 33.365135, 33.421036>,  <26.664557, 33.158913, 33.545044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984077, 33.365135, 33.421036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158363, 0.677367, 0.718397,
		0.580376, -0.524761, 0.622728,
		0.798802, 0.515558, -0.310025,
		27.223719, 33.519802, 33.328030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919193, 33.281647, 34.135094>,  <26.664557, 33.158913, 33.545044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919193, 33.281647, 34.135094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093142, 33.536228, 33.880280>,  <27.197512, 33.688976, 33.727390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093142, 33.536228, 33.880280>,  <26.919193, 33.281647, 34.135094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093142, 33.536228, 33.880280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262927, 0.766347, 0.586158,
		0.861252, -0.087409, 0.500604,
		0.434872, 0.636452, -0.637036,
		27.223602, 33.727165, 33.689167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315231, 33.725887, 34.536747>,  <26.919193, 33.281647, 34.135094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315231, 33.725887, 34.536747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321175, 33.930458, 34.193069>,  <27.324739, 34.053200, 33.986862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.321175, 33.930458, 34.193069>,  <27.315231, 33.725887, 34.536747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321175, 33.930458, 34.193069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022471, 0.859246, 0.511068,
		0.999637, 0.011714, 0.024257,
		0.014856, 0.511427, -0.859198,
		27.325632, 34.083885, 33.935310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792152, 34.277157, 34.680172>,  <27.315231, 33.725887, 34.536747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792152, 34.277157, 34.680172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597246, 34.409363, 34.356857>,  <27.480303, 34.488686, 34.162868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.597246, 34.409363, 34.356857>,  <27.792152, 34.277157, 34.680172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597246, 34.409363, 34.356857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133878, 0.886389, 0.443160,
		0.862931, 0.324148, -0.387656,
		-0.487264, 0.330518, -0.808290,
		27.451067, 34.508518, 34.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052647, 34.961090, 34.349121>,  <27.792152, 34.277157, 34.680172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052647, 34.961090, 34.349121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678810, 34.964226, 34.206867>,  <27.454508, 34.966106, 34.121513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678810, 34.964226, 34.206867>,  <28.052647, 34.961090, 34.349121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678810, 34.964226, 34.206867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099021, 0.954509, 0.281260,
		0.341662, 0.298079, -0.891300,
		-0.934592, 0.007838, -0.355635,
		27.398432, 34.966576, 34.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956238, 35.611767, 34.020618>,  <28.052647, 34.961090, 34.349121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956238, 35.611767, 34.020618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568687, 35.515614, 34.044258>,  <27.336157, 35.457924, 34.058441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568687, 35.515614, 34.044258>,  <27.956238, 35.611767, 34.020618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568687, 35.515614, 34.044258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194590, 0.887174, 0.418398,
		-0.153003, 0.393877, -0.906339,
		-0.968878, -0.240381, 0.059096,
		27.278025, 35.443501, 34.061985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509892, 36.165043, 33.739983>,  <27.956238, 35.611767, 34.020618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509892, 36.165043, 33.739983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309069, 35.952591, 34.012993>,  <27.188576, 35.825119, 34.176800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309069, 35.952591, 34.012993>,  <27.509892, 36.165043, 33.739983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309069, 35.952591, 34.012993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113005, 0.822717, 0.557105,
		-0.857421, 0.202568, -0.473071,
		-0.502055, -0.531133, 0.682524,
		27.158453, 35.793251, 34.217751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962578, 36.322132, 33.115280>,  <27.509892, 36.165043, 33.739983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962578, 36.322132, 33.115280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296854, 36.318134, 32.895638>,  <28.497419, 36.315735, 32.763851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296854, 36.318134, 32.895638>,  <27.962578, 36.322132, 33.115280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296854, 36.318134, 32.895638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535616, -0.235831, -0.810863,
		-0.121395, 0.971743, -0.202434,
		0.835691, -0.009992, -0.549110,
		28.547562, 36.315136, 32.730904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797033, 36.661831, 32.567852>,  <27.962578, 36.322132, 33.115280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797033, 36.661831, 32.567852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095858, 36.423889, 32.449158>,  <28.275152, 36.281124, 32.377941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095858, 36.423889, 32.449158>,  <27.797033, 36.661831, 32.567852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095858, 36.423889, 32.449158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605682, -0.425129, -0.672618,
		0.273954, 0.682216, -0.677887,
		0.747060, -0.594850, -0.296740,
		28.319975, 36.245434, 32.360134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865311, 36.749687, 31.875572>,  <27.797033, 36.661831, 32.567852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865311, 36.749687, 31.875572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058012, 36.403011, 31.927353>,  <28.173632, 36.195004, 31.958422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.058012, 36.403011, 31.927353>,  <27.865311, 36.749687, 31.875572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058012, 36.403011, 31.927353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338520, -0.320316, -0.884761,
		0.808282, 0.382413, -0.447706,
		0.481751, -0.866694, 0.129452,
		28.202538, 36.143002, 31.966188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135992, 36.630413, 31.236397>,  <27.865311, 36.749687, 31.875572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135992, 36.630413, 31.236397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129473, 36.279472, 31.428225>,  <28.125561, 36.068909, 31.543322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129473, 36.279472, 31.428225>,  <28.135992, 36.630413, 31.236397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129473, 36.279472, 31.428225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167681, -0.470441, -0.866353,
		0.985707, -0.094535, -0.139448,
		-0.016298, -0.877353, 0.479569,
		28.124584, 36.016266, 31.572096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529123, 36.266075, 30.784262>,  <28.135992, 36.630413, 31.236397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529123, 36.266075, 30.784262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323494, 36.012207, 31.015060>,  <28.200117, 35.859886, 31.153540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.323494, 36.012207, 31.015060>,  <28.529123, 36.266075, 30.784262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323494, 36.012207, 31.015060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038439, -0.654967, -0.754679,
		0.856885, -0.410138, 0.312304,
		-0.514072, -0.634669, 0.576997,
		28.169273, 35.821808, 31.188160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784946, 35.681908, 30.677366>,  <28.529123, 36.266075, 30.784262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784946, 35.681908, 30.677366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.456062, 35.552006, 30.864346>,  <28.258732, 35.474064, 30.976532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.456062, 35.552006, 30.864346>,  <28.784946, 35.681908, 30.677366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456062, 35.552006, 30.864346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042233, -0.784182, -0.619091,
		0.567617, -0.528764, 0.631046,
		-0.822208, -0.324756, 0.467447,
		28.209400, 35.454578, 31.004580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895649, 34.972427, 30.748468>,  <28.784946, 35.681908, 30.677366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895649, 34.972427, 30.748468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499796, 35.012791, 30.789341>,  <28.262283, 35.037010, 30.813866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.499796, 35.012791, 30.789341>,  <28.895649, 34.972427, 30.748468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499796, 35.012791, 30.789341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143592, -0.706644, -0.692846,
		0.002293, -0.700336, 0.713809,
		-0.989634, 0.100909, 0.102183,
		28.202906, 35.043064, 30.819996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490862, 34.247398, 31.086758>,  <28.895649, 34.972427, 30.748468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490862, 34.247398, 31.086758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220575, 34.463531, 30.886179>,  <28.058403, 34.593212, 30.765831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.220575, 34.463531, 30.886179>,  <28.490862, 34.247398, 31.086758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220575, 34.463531, 30.886179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135512, -0.759698, -0.635999,
		-0.724600, -0.361802, 0.586561,
		-0.675716, 0.540331, -0.501449,
		28.017860, 34.625629, 30.735744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958590, 33.755280, 30.991125>,  <28.490862, 34.247398, 31.086758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958590, 33.755280, 30.991125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904861, 34.045757, 30.721430>,  <27.872623, 34.220043, 30.559612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.904861, 34.045757, 30.721430>,  <27.958590, 33.755280, 30.991125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904861, 34.045757, 30.721430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010909, -0.681448, -0.731785,
		-0.990878, -0.090939, 0.099456,
		-0.134322, 0.726195, -0.674240,
		27.864565, 34.263615, 30.519157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411882, 33.559662, 30.545805>,  <27.958590, 33.755280, 30.991125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411882, 33.559662, 30.545805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632849, 33.812965, 30.328985>,  <27.765429, 33.964947, 30.198893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632849, 33.812965, 30.328985>,  <27.411882, 33.559662, 30.545805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632849, 33.812965, 30.328985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117990, -0.703133, -0.701201,
		-0.825176, 0.323397, -0.463139,
		0.552415, 0.633260, -0.542051,
		27.798573, 34.002945, 30.166370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153563, 33.504482, 29.783562>,  <27.411882, 33.559662, 30.545805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153563, 33.504482, 29.783562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524376, 33.654320, 29.790422>,  <27.746864, 33.744221, 29.794538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524376, 33.654320, 29.790422>,  <27.153563, 33.504482, 29.783562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524376, 33.654320, 29.790422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228432, -0.527865, -0.818033,
		-0.297373, 0.762260, -0.574916,
		0.927032, 0.374590, 0.017152,
		27.802486, 33.766697, 29.795568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161999, 33.640339, 29.025261>,  <27.153563, 33.504482, 29.783562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161999, 33.640339, 29.025261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541645, 33.654682, 29.150410>,  <27.769434, 33.663288, 29.225500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.541645, 33.654682, 29.150410>,  <27.161999, 33.640339, 29.025261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541645, 33.654682, 29.150410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283742, -0.528386, -0.800187,
		0.136624, 0.848247, -0.511675,
		0.949118, 0.035859, 0.312873,
		27.826380, 33.665440, 29.244272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633802, 33.819458, 28.406456>,  <27.161999, 33.640339, 29.025261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633802, 33.819458, 28.406456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863911, 33.633823, 28.675880>,  <28.001976, 33.522442, 28.837536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.863911, 33.633823, 28.675880>,  <27.633802, 33.819458, 28.406456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863911, 33.633823, 28.675880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504279, -0.447129, -0.738768,
		0.644022, 0.764656, -0.023191,
		0.575272, -0.464088, 0.673560,
		28.036493, 33.494598, 28.877949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211864, 33.689663, 27.965374>,  <27.633802, 33.819458, 28.406456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211864, 33.689663, 27.965374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303869, 33.489414, 28.299194>,  <28.359072, 33.369267, 28.499487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.303869, 33.489414, 28.299194>,  <28.211864, 33.689663, 27.965374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303869, 33.489414, 28.299194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562341, -0.631516, -0.533817,
		0.794271, 0.592086, 0.136263,
		0.230013, -0.500621, 0.834549,
		28.372873, 33.339230, 28.549559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830719, 33.488995, 27.721176>,  <28.211864, 33.689663, 27.965374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830719, 33.488995, 27.721176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745132, 33.276752, 28.049244>,  <28.693781, 33.149406, 28.246084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745132, 33.276752, 28.049244>,  <28.830719, 33.488995, 27.721176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745132, 33.276752, 28.049244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482754, -0.787356, -0.383430,
		0.849215, 0.313899, 0.424619,
		-0.213968, -0.530601, 0.820171,
		28.680943, 33.117573, 28.295296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457750, 33.222733, 28.044786>,  <28.830719, 33.488995, 27.721176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457750, 33.222733, 28.044786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155863, 32.984200, 28.154181>,  <28.974731, 32.841080, 28.219816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.155863, 32.984200, 28.154181>,  <29.457750, 33.222733, 28.044786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.155863, 32.984200, 28.154181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493769, -0.790799, -0.361702,
		0.431964, -0.137945, 0.891279,
		-0.754718, -0.596328, 0.273484,
		28.929447, 32.805302, 28.236225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675953, 32.540009, 28.416393>,  <29.457750, 33.222733, 28.044786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675953, 32.540009, 28.416393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311485, 32.441479, 28.284275>,  <29.092804, 32.382362, 28.205004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311485, 32.441479, 28.284275>,  <29.675953, 32.540009, 28.416393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311485, 32.441479, 28.284275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389706, -0.775499, -0.496720,
		-0.133792, -0.581314, 0.802604,
		-0.911169, -0.246322, -0.330297,
		29.038134, 32.367580, 28.185186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494522, 31.815062, 28.579157>,  <29.675953, 32.540009, 28.416393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494522, 31.815062, 28.579157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238436, 31.911934, 28.287550>,  <29.084784, 31.970058, 28.112585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.238436, 31.911934, 28.287550>,  <29.494522, 31.815062, 28.579157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238436, 31.911934, 28.287550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331021, -0.769405, -0.546298,
		-0.693213, -0.591071, 0.412421,
		-0.640219, 0.242181, -0.729018,
		29.046370, 31.984589, 28.068844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104063, 31.253441, 28.403437>,  <29.494522, 31.815062, 28.579157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104063, 31.253441, 28.403437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115412, 31.501137, 28.089561>,  <29.122221, 31.649754, 27.901236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.115412, 31.501137, 28.089561>,  <29.104063, 31.253441, 28.403437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115412, 31.501137, 28.089561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399197, -0.726708, -0.559049,
		-0.916426, -0.297385, -0.267816,
		0.028371, 0.619239, -0.784690,
		29.123922, 31.686909, 27.854155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.793674, 40.575722, 46.540863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500099, 40.334030, 46.416779>,  <36.323952, 40.189014, 46.342327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.500099, 40.334030, 46.416779>,  <36.793674, 40.575722, 46.540863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500099, 40.334030, 46.416779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596371, 0.354695, 0.720092,
		-0.325071, 0.713509, -0.620672,
		-0.733942, -0.604232, -0.310215,
		36.279915, 40.152760, 46.323715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144283, 40.958397, 46.581238>,  <36.793674, 40.575722, 46.540863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144283, 40.958397, 46.581238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037018, 40.573112, 46.574093>,  <35.972656, 40.341942, 46.569805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037018, 40.573112, 46.574093>,  <36.144283, 40.958397, 46.581238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037018, 40.573112, 46.574093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552679, 0.138629, 0.821783,
		-0.789070, 0.230250, -0.569520,
		-0.268167, -0.963207, -0.017866,
		35.956566, 40.284149, 46.568733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437328, 40.937054, 46.661205>,  <36.144283, 40.958397, 46.581238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437328, 40.937054, 46.661205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560265, 40.574326, 46.776596>,  <35.634026, 40.356689, 46.845829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560265, 40.574326, 46.776596>,  <35.437328, 40.937054, 46.661205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560265, 40.574326, 46.776596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552630, 0.076706, 0.829889,
		-0.774688, -0.414479, -0.477561,
		0.307340, -0.906820, 0.288477,
		35.652466, 40.302280, 46.863140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825851, 40.567760, 46.996544>,  <35.437328, 40.937054, 46.661205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825851, 40.567760, 46.996544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157879, 40.386669, 47.126789>,  <35.357094, 40.278015, 47.204937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157879, 40.386669, 47.126789>,  <34.825851, 40.567760, 46.996544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157879, 40.386669, 47.126789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400735, -0.078189, 0.912852,
		-0.387811, -0.888216, -0.246325,
		0.830069, -0.452725, 0.325616,
		35.406898, 40.250851, 47.224476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598896, 39.908981, 47.347828>,  <34.825851, 40.567760, 46.996544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598896, 39.908981, 47.347828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963120, 40.002995, 47.483856>,  <35.181652, 40.059402, 47.565472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963120, 40.002995, 47.483856>,  <34.598896, 39.908981, 47.347828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963120, 40.002995, 47.483856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317529, -0.129088, 0.939421,
		0.264690, -0.963378, -0.042914,
		0.910557, 0.235029, 0.340069,
		35.236286, 40.073502, 47.585876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749794, 39.423538, 47.785126>,  <34.598896, 39.908981, 47.347828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749794, 39.423538, 47.785126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965271, 39.745445, 47.884853>,  <35.094555, 39.938591, 47.944691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965271, 39.745445, 47.884853>,  <34.749794, 39.423538, 47.785126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965271, 39.745445, 47.884853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236257, -0.139756, 0.961588,
		0.808700, -0.576901, 0.114847,
		0.538690, 0.804769, 0.249318,
		35.126877, 39.986877, 47.959648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204639, 39.196678, 48.311539>,  <34.749794, 39.423538, 47.785126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204639, 39.196678, 48.311539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181419, 39.595379, 48.333878>,  <35.167488, 39.834599, 48.347282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181419, 39.595379, 48.333878>,  <35.204639, 39.196678, 48.311539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181419, 39.595379, 48.333878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265023, -0.069319, 0.961747,
		0.962493, 0.041026, 0.268186,
		-0.058047, 0.996751, 0.055846,
		35.164005, 39.894405, 48.350632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135731, 39.348450, 49.025986>,  <35.204639, 39.196678, 48.311539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135731, 39.348450, 49.025986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066837, 39.715958, 48.883884>,  <35.025501, 39.936462, 48.798626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.066837, 39.715958, 48.883884>,  <35.135731, 39.348450, 49.025986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066837, 39.715958, 48.883884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490653, 0.232703, 0.839707,
		0.854164, 0.318926, 0.410719,
		-0.172229, 0.918768, -0.355249,
		35.015167, 39.991589, 48.777309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346928, 39.903954, 49.575703>,  <35.135731, 39.348450, 49.025986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346928, 39.903954, 49.575703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088436, 40.083843, 49.329079>,  <34.933342, 40.191776, 49.181107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.088436, 40.083843, 49.329079>,  <35.346928, 39.903954, 49.575703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088436, 40.083843, 49.329079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517076, 0.336166, 0.787162,
		0.561270, 0.827491, 0.015302,
		-0.646226, 0.449723, -0.616556,
		34.894569, 40.218761, 49.144112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250599, 40.577347, 49.836399>,  <35.346928, 39.903954, 49.575703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250599, 40.577347, 49.836399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939724, 40.494663, 49.598660>,  <34.753201, 40.445053, 49.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939724, 40.494663, 49.598660>,  <35.250599, 40.577347, 49.836399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939724, 40.494663, 49.598660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621737, 0.106505, 0.775951,
		-0.097097, 0.972588, -0.211295,
		-0.777184, -0.206712, -0.594353,
		34.706570, 40.432652, 49.420353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668606, 41.064850, 49.995354>,  <35.250599, 40.577347, 49.836399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668606, 41.064850, 49.995354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474438, 40.773758, 49.801540>,  <34.357937, 40.599102, 49.685253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474438, 40.773758, 49.801540>,  <34.668606, 41.064850, 49.995354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474438, 40.773758, 49.801540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778691, 0.107908, 0.618058,
		-0.397495, 0.677320, -0.619059,
		-0.485425, -0.727731, -0.484531,
		34.328812, 40.555439, 49.656181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998955, 41.294910, 49.978329>,  <34.668606, 41.064850, 49.995354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998955, 41.294910, 49.978329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947716, 40.904312, 49.909000>,  <33.916973, 40.669952, 49.867401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947716, 40.904312, 49.909000>,  <33.998955, 41.294910, 49.978329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947716, 40.904312, 49.909000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794375, -0.003604, 0.607417,
		-0.593766, 0.215494, -0.775244,
		-0.128101, -0.976498, -0.173323,
		33.909286, 40.611362, 49.857002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325851, 41.195263, 49.899826>,  <33.998955, 41.294910, 49.978329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325851, 41.195263, 49.899826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487179, 40.857574, 50.041039>,  <33.583977, 40.654961, 50.125767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487179, 40.857574, 50.041039>,  <33.325851, 41.195263, 49.899826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487179, 40.857574, 50.041039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746560, -0.080485, 0.660432,
		-0.529134, -0.529924, -0.662720,
		0.403318, -0.844217, 0.353033,
		33.608173, 40.604309, 50.146950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612110, 41.191959, 50.250748>,  <33.325851, 41.195263, 49.899826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612110, 41.191959, 50.250748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220295, 41.174152, 50.172237>,  <31.985207, 41.163467, 50.125130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220295, 41.174152, 50.172237>,  <32.612110, 41.191959, 50.250748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220295, 41.174152, 50.172237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127777, 0.615920, -0.777378,
		0.155498, -0.786550, -0.597628,
		-0.979537, -0.044518, -0.196278,
		31.926434, 41.160797, 50.113354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496239, 41.024925, 49.567154>,  <32.612110, 41.191959, 50.250748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496239, 41.024925, 49.567154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243477, 41.299023, 49.712002>,  <32.091820, 41.463482, 49.798912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243477, 41.299023, 49.712002>,  <32.496239, 41.024925, 49.567154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243477, 41.299023, 49.712002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191658, 0.590875, -0.783667,
		-0.750973, -0.425802, -0.504711,
		-0.631908, 0.685245, 0.362123,
		32.053905, 41.504597, 49.820637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948210, 41.151501, 49.119381>,  <32.496239, 41.024925, 49.567154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948210, 41.151501, 49.119381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009502, 41.480560, 49.338387>,  <32.046276, 41.677998, 49.469791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.009502, 41.480560, 49.338387>,  <31.948210, 41.151501, 49.119381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009502, 41.480560, 49.338387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066405, 0.544232, -0.836303,
		-0.985957, 0.164506, 0.028765,
		0.153232, 0.822648, 0.547513,
		32.055473, 41.727356, 49.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631119, 41.593571, 48.674133>,  <31.948210, 41.151501, 49.119381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631119, 41.593571, 48.674133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889366, 41.783669, 48.913239>,  <32.044315, 41.897728, 49.056702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889366, 41.783669, 48.913239>,  <31.631119, 41.593571, 48.674133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889366, 41.783669, 48.913239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262683, 0.596788, -0.758183,
		-0.717060, 0.646519, 0.260458,
		0.645618, 0.475245, 0.597762,
		32.083050, 41.926243, 49.092567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422993, 42.332275, 48.528175>,  <31.631119, 41.593571, 48.674133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422993, 42.332275, 48.528175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785162, 42.309547, 48.696453>,  <32.002464, 42.295910, 48.797421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785162, 42.309547, 48.696453>,  <31.422993, 42.332275, 48.528175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785162, 42.309547, 48.696453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355842, 0.641980, -0.679145,
		-0.231488, 0.764614, 0.601481,
		0.905422, -0.056818, 0.420693,
		32.056789, 42.292503, 48.822662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739342, 42.798019, 48.172626>,  <31.422993, 42.332275, 48.528175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739342, 42.798019, 48.172626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077957, 42.674339, 48.345955>,  <32.281128, 42.600132, 48.449951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077957, 42.674339, 48.345955>,  <31.739342, 42.798019, 48.172626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077957, 42.674339, 48.345955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526173, 0.362589, -0.769202,
		0.080723, 0.879160, 0.469640,
		0.846537, -0.309204, 0.433321,
		32.331917, 42.581577, 48.475952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252052, 43.384018, 48.302860>,  <31.739342, 42.798019, 48.172626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252052, 43.384018, 48.302860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413719, 43.020802, 48.258820>,  <32.510719, 42.802872, 48.232395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413719, 43.020802, 48.258820>,  <32.252052, 43.384018, 48.302860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413719, 43.020802, 48.258820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554796, 0.339058, -0.759764,
		0.727223, 0.245987, 0.640810,
		0.404163, -0.908037, -0.110098,
		32.534969, 42.748390, 48.225792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042084, 43.511688, 48.178257>,  <32.252052, 43.384018, 48.302860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042084, 43.511688, 48.178257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937992, 43.145073, 48.056778>,  <32.875538, 42.925102, 47.983891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937992, 43.145073, 48.056778>,  <33.042084, 43.511688, 48.178257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937992, 43.145073, 48.056778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588502, 0.098800, -0.802436,
		0.765471, -0.387545, 0.513676,
		-0.260229, -0.916541, -0.303700,
		32.859924, 42.870110, 47.965668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655975, 43.140938, 47.973217>,  <33.042084, 43.511688, 48.178257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655975, 43.140938, 47.973217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374554, 42.917347, 47.797691>,  <33.205700, 42.783192, 47.692375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374554, 42.917347, 47.797691>,  <33.655975, 43.140938, 47.973217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374554, 42.917347, 47.797691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532486, -0.005755, -0.846419,
		0.470601, -0.829165, 0.301695,
		-0.703557, -0.558975, -0.438811,
		33.163486, 42.749653, 47.666050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053253, 42.506882, 47.652721>,  <33.655975, 43.140938, 47.973217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053253, 42.506882, 47.652721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710835, 42.575420, 47.457649>,  <33.505383, 42.616543, 47.340607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710835, 42.575420, 47.457649>,  <34.053253, 42.506882, 47.652721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710835, 42.575420, 47.457649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494908, -0.000610, -0.868945,
		-0.149189, -0.985211, -0.084279,
		-0.856042, 0.171348, -0.487680,
		33.454021, 42.626823, 47.311344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109238, 42.081474, 47.011250>,  <34.053253, 42.506882, 47.652721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109238, 42.081474, 47.011250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788963, 42.288639, 46.890800>,  <33.596798, 42.412937, 46.818531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788963, 42.288639, 46.890800>,  <34.109238, 42.081474, 47.011250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788963, 42.288639, 46.890800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326422, -0.044325, -0.944184,
		-0.502348, -0.854287, -0.133566,
		-0.800684, 0.517908, -0.301124,
		33.548759, 42.444012, 46.800465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776352, 41.690865, 46.493484>,  <34.109238, 42.081474, 47.011250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776352, 41.690865, 46.493484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663021, 42.071342, 46.444572>,  <33.595024, 42.299629, 46.415226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663021, 42.071342, 46.444572>,  <33.776352, 41.690865, 46.493484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663021, 42.071342, 46.444572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283940, -0.038587, -0.958065,
		-0.916026, -0.306165, -0.259150,
		-0.283326, 0.951196, -0.122279,
		33.578022, 42.356701, 46.407890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433594, 41.699814, 45.880619>,  <33.776352, 41.690865, 46.493484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433594, 41.699814, 45.880619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495354, 42.092682, 45.923519>,  <33.532410, 42.328403, 45.949257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.495354, 42.092682, 45.923519>,  <33.433594, 41.699814, 45.880619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495354, 42.092682, 45.923519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353645, 0.046420, -0.934227,
		-0.922549, 0.182170, -0.340172,
		0.154398, 0.982171, 0.107248,
		33.541672, 42.387333, 45.955692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081966, 41.996723, 45.313904>,  <33.433594, 41.699814, 45.880619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081966, 41.996723, 45.313904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350906, 42.260715, 45.447987>,  <33.512272, 42.419113, 45.528435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350906, 42.260715, 45.447987>,  <33.081966, 41.996723, 45.313904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350906, 42.260715, 45.447987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312508, 0.157425, -0.936779,
		-0.671029, 0.734601, -0.100405,
		0.672353, 0.659984, 0.335206,
		33.552612, 42.458710, 45.548550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055420, 42.454102, 44.849808>,  <33.081966, 41.996723, 45.313904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055420, 42.454102, 44.849808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410572, 42.513756, 45.023899>,  <33.623665, 42.549549, 45.128353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410572, 42.513756, 45.023899>,  <33.055420, 42.454102, 44.849808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410572, 42.513756, 45.023899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424834, 0.097344, -0.900022,
		-0.176590, 0.984014, 0.023073,
		0.887881, 0.149133, 0.435233,
		33.676937, 42.558495, 45.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530869, 42.867393, 44.629940>,  <33.055420, 42.454102, 44.849808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530869, 42.867393, 44.629940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196854, 42.726299, 44.461040>,  <31.996445, 42.641644, 44.359699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196854, 42.726299, 44.461040>,  <32.530869, 42.867393, 44.629940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196854, 42.726299, 44.461040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509354, 0.205439, 0.835675,
		-0.208024, 0.912893, -0.351215,
		-0.835036, -0.352733, -0.422250,
		31.946342, 42.620480, 44.334366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918568, 43.340515, 44.804935>,  <32.530869, 42.867393, 44.629940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918568, 43.340515, 44.804935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762880, 42.983215, 44.714943>,  <31.669468, 42.768837, 44.660946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762880, 42.983215, 44.714943>,  <31.918568, 43.340515, 44.804935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762880, 42.983215, 44.714943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592683, 0.055875, 0.803495,
		-0.705148, 0.446081, -0.551160,
		-0.389220, -0.893246, -0.224985,
		31.646114, 42.715240, 44.647446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488562, 43.328037, 45.312241>,  <31.918568, 43.340515, 44.804935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488562, 43.328037, 45.312241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410574, 42.979828, 45.131493>,  <31.363781, 42.770905, 45.023045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410574, 42.979828, 45.131493>,  <31.488562, 43.328037, 45.312241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410574, 42.979828, 45.131493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602244, -0.257376, 0.755685,
		-0.774138, 0.419469, -0.474085,
		-0.194968, -0.870519, -0.451867,
		31.352083, 42.718674, 44.995934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745104, 43.242352, 45.191059>,  <31.488562, 43.328037, 45.312241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745104, 43.242352, 45.191059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914721, 42.880955, 45.216000>,  <31.016491, 42.664116, 45.230965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.914721, 42.880955, 45.216000>,  <30.745104, 43.242352, 45.191059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914721, 42.880955, 45.216000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617408, -0.238028, 0.749766,
		-0.662567, -0.356431, -0.658758,
		0.424043, -0.903493, 0.062354,
		31.041933, 42.609905, 45.234707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224209, 42.815639, 45.267956>,  <30.745104, 43.242352, 45.191059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224209, 42.815639, 45.267956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.513802, 42.583366, 45.416908>,  <30.687557, 42.444004, 45.506279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.513802, 42.583366, 45.416908>,  <30.224209, 42.815639, 45.267956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513802, 42.583366, 45.416908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614212, -0.296916, 0.731153,
		-0.314013, -0.758048, -0.571628,
		0.723975, -0.580693, 0.372366,
		30.730995, 42.409164, 45.528622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929962, 42.165813, 45.342289>,  <30.224209, 42.815639, 45.267956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929962, 42.165813, 45.342289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236946, 42.150734, 45.598286>,  <30.421137, 42.141685, 45.751884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.236946, 42.150734, 45.598286>,  <29.929962, 42.165813, 45.342289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236946, 42.150734, 45.598286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624910, -0.266916, 0.733651,
		0.143164, -0.962982, -0.228406,
		0.767458, -0.037700, 0.639989,
		30.467184, 42.139423, 45.790283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900015, 41.543808, 45.687569>,  <29.929962, 42.165813, 45.342289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900015, 41.543808, 45.687569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088978, 41.799854, 45.929920>,  <30.202356, 41.953480, 46.075333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.088978, 41.799854, 45.929920>,  <29.900015, 41.543808, 45.687569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088978, 41.799854, 45.929920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492249, -0.378603, 0.783805,
		0.731110, -0.668519, 0.136239,
		0.472408, 0.640111, 0.605878,
		30.230700, 41.991886, 46.111683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201189, 40.893871, 45.987976>,  <29.900015, 41.543808, 45.687569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201189, 40.893871, 45.987976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190348, 40.494225, 46.000767>,  <30.183844, 40.254436, 46.008442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190348, 40.494225, 46.000767>,  <30.201189, 40.893871, 45.987976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190348, 40.494225, 46.000767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669256, -0.041901, -0.741849,
		0.742537, 0.001297, 0.669804,
		-0.027104, -0.999121, 0.031981,
		30.182217, 40.194489, 46.010361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921518, 40.723515, 45.831749>,  <30.201189, 40.893871, 45.987976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921518, 40.723515, 45.831749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720861, 40.381714, 45.777821>,  <30.600468, 40.176632, 45.745464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720861, 40.381714, 45.777821>,  <30.921518, 40.723515, 45.831749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720861, 40.381714, 45.777821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630840, -0.254697, -0.732919,
		0.591944, -0.452713, 0.666823,
		-0.501640, -0.854506, -0.134823,
		30.570370, 40.125362, 45.737373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408653, 40.246613, 45.666214>,  <30.921518, 40.723515, 45.831749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408653, 40.246613, 45.666214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.073061, 40.066032, 45.544689>,  <30.871706, 39.957684, 45.471775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.073061, 40.066032, 45.544689>,  <31.408653, 40.246613, 45.666214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073061, 40.066032, 45.544689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509117, -0.454110, -0.731153,
		0.192114, -0.768101, 0.610830,
		-0.838983, -0.451449, -0.303812,
		30.821365, 39.930599, 45.453545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657269, 39.547649, 45.353157>,  <31.408653, 40.246613, 45.666214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657269, 39.547649, 45.353157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289768, 39.634853, 45.221478>,  <31.069267, 39.687176, 45.142471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.289768, 39.634853, 45.221478>,  <31.657269, 39.547649, 45.353157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289768, 39.634853, 45.221478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238817, -0.357119, -0.903013,
		-0.314428, -0.908261, 0.276039,
		-0.918750, 0.218010, -0.329197,
		31.014143, 39.700256, 45.122719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495911, 38.897949, 45.042419>,  <31.657269, 39.547649, 45.353157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495911, 38.897949, 45.042419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278139, 39.199890, 44.896107>,  <31.147476, 39.381054, 44.808319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.278139, 39.199890, 44.896107>,  <31.495911, 38.897949, 45.042419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278139, 39.199890, 44.896107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387257, -0.160623, -0.907872,
		-0.744064, -0.635920, -0.204875,
		-0.544427, 0.754855, -0.365778,
		31.114811, 39.426346, 44.786373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024214, 38.658211, 44.538811>,  <31.495911, 38.897949, 45.042419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024214, 38.658211, 44.538811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.108912, 39.040009, 44.454803>,  <31.159729, 39.269089, 44.404400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.108912, 39.040009, 44.454803>,  <31.024214, 38.658211, 44.538811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108912, 39.040009, 44.454803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371127, -0.277322, -0.886204,
		-0.904118, 0.109704, -0.412960,
		0.211743, 0.954493, -0.210018,
		31.172434, 39.326355, 44.391800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123825, 38.667904, 43.921062>,  <31.024214, 38.658211, 44.538811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123825, 38.667904, 43.921062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280939, 39.033840, 43.958557>,  <31.375208, 39.253403, 43.981052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.280939, 39.033840, 43.958557>,  <31.123825, 38.667904, 43.921062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280939, 39.033840, 43.958557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580755, -0.167724, -0.796613,
		-0.713051, 0.367338, -0.597178,
		0.392787, 0.914840, 0.093737,
		31.398775, 39.308292, 43.986679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.133823, 37.328938, 49.998230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269459, 37.704975, 50.012299>,  <32.350838, 37.930599, 50.020741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269459, 37.704975, 50.012299>,  <32.133823, 37.328938, 49.998230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269459, 37.704975, 50.012299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378091, -0.101952, -0.920138,
		-0.861434, 0.325302, -0.390013,
		0.339085, 0.940098, 0.035169,
		32.371185, 37.987003, 50.022850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955500, 37.570171, 49.429611>,  <32.133823, 37.328938, 49.998230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955500, 37.570171, 49.429611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.275543, 37.781712, 49.542850>,  <32.467567, 37.908634, 49.610794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.275543, 37.781712, 49.542850>,  <31.955500, 37.570171, 49.429611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275543, 37.781712, 49.542850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465830, -0.250456, -0.848690,
		-0.377928, 0.810917, -0.446747,
		0.800108, 0.528852, 0.283095,
		32.515575, 37.940369, 49.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135437, 38.108032, 48.911556>,  <31.955500, 37.570171, 49.429611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135437, 38.108032, 48.911556> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460075, 38.018238, 49.127304>,  <32.654858, 37.964363, 49.256752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.460075, 38.018238, 49.127304>,  <32.135437, 38.108032, 48.911556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460075, 38.018238, 49.127304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495745, -0.223843, -0.839125,
		0.309103, 0.948420, -0.070384,
		0.811599, -0.224483, 0.539365,
		32.703556, 37.950893, 49.289112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722813, 38.427383, 48.624153>,  <32.135437, 38.108032, 48.911556>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722813, 38.427383, 48.624153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.864716, 38.110901, 48.823410>,  <32.949860, 37.921013, 48.942963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.864716, 38.110901, 48.823410>,  <32.722813, 38.427383, 48.624153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864716, 38.110901, 48.823410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484017, -0.300424, -0.821871,
		0.799921, 0.532674, 0.276378,
		0.354759, -0.791204, 0.498139,
		32.971142, 37.873539, 48.972851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289791, 38.382160, 48.378510>,  <32.722813, 38.427383, 48.624153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289791, 38.382160, 48.378510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269524, 38.026970, 48.561348>,  <33.257362, 37.813858, 48.671051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.269524, 38.026970, 48.561348>,  <33.289791, 38.382160, 48.378510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269524, 38.026970, 48.561348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679295, -0.366151, -0.635997,
		0.732114, 0.278279, 0.621747,
		-0.050669, -0.887972, 0.457098,
		33.254322, 37.760578, 48.698479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989902, 38.145115, 48.240337>,  <33.289791, 38.382160, 48.378510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989902, 38.145115, 48.240337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.778332, 37.823135, 48.347889>,  <33.651390, 37.629948, 48.412418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.778332, 37.823135, 48.347889>,  <33.989902, 38.145115, 48.240337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778332, 37.823135, 48.347889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521245, -0.558153, -0.645576,
		0.669730, -0.201311, 0.714797,
		-0.528927, -0.804947, 0.268879,
		33.619652, 37.581650, 48.428555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420322, 37.561562, 48.539425>,  <33.989902, 38.145115, 48.240337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420322, 37.561562, 48.539425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090080, 37.408978, 48.373119>,  <33.891933, 37.317429, 48.273338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.090080, 37.408978, 48.373119>,  <34.420322, 37.561562, 48.539425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090080, 37.408978, 48.373119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553483, -0.404302, -0.728146,
		0.109666, -0.831281, 0.544927,
		-0.825609, -0.381460, -0.415761,
		33.842396, 37.294540, 48.248390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660591, 36.902370, 48.195717>,  <34.420322, 37.561562, 48.539425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660591, 36.902370, 48.195717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.306885, 36.983765, 48.027588>,  <34.094662, 37.032600, 47.926712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.306885, 36.983765, 48.027588>,  <34.660591, 36.902370, 48.195717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306885, 36.983765, 48.027588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318154, -0.396348, -0.861212,
		-0.341832, -0.895267, 0.285739,
		-0.884268, 0.203480, -0.420318,
		34.041607, 37.044811, 47.901493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586758, 36.343822, 47.751572>,  <34.660591, 36.902370, 48.195717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586758, 36.343822, 47.751572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320019, 36.610191, 47.617783>,  <34.159977, 36.770012, 47.537510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320019, 36.610191, 47.617783>,  <34.586758, 36.343822, 47.751572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320019, 36.610191, 47.617783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222456, -0.250478, -0.942218,
		-0.711219, -0.702716, 0.018891,
		-0.666844, 0.665921, -0.334468,
		34.119965, 36.809967, 47.517441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205986, 36.013695, 47.185249>,  <34.586758, 36.343822, 47.751572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205986, 36.013695, 47.185249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154423, 36.407196, 47.135262>,  <34.123486, 36.643295, 47.105267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.154423, 36.407196, 47.135262>,  <34.205986, 36.013695, 47.185249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154423, 36.407196, 47.135262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426552, -0.058763, -0.902553,
		-0.895230, -0.169652, -0.412045,
		-0.128907, 0.983751, -0.124972,
		34.115749, 36.702320, 47.097771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089642, 35.997559, 46.500755>,  <34.205986, 36.013695, 47.185249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089642, 35.997559, 46.500755> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164528, 36.384289, 46.570267>,  <34.209461, 36.616325, 46.611973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164528, 36.384289, 46.570267>,  <34.089642, 35.997559, 46.500755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164528, 36.384289, 46.570267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445121, 0.074208, -0.892390,
		-0.875681, 0.244424, -0.416461,
		0.187217, 0.966825, 0.173781,
		34.220692, 36.674335, 46.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755493, 36.472504, 45.920689>,  <34.089642, 35.997559, 46.500755>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755493, 36.472504, 45.920689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084877, 36.649559, 46.062664>,  <34.282509, 36.755791, 46.147850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.084877, 36.649559, 46.062664>,  <33.755493, 36.472504, 45.920689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084877, 36.649559, 46.062664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293110, 0.203760, -0.934114,
		-0.485799, 0.873242, 0.038047,
		0.823460, 0.442639, 0.354942,
		34.331917, 36.782352, 46.169147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153542, 36.968166, 45.731052>,  <33.755493, 36.472504, 45.920689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153542, 36.968166, 45.731052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828167, 36.845482, 45.533367>,  <32.632942, 36.771870, 45.414757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.828167, 36.845482, 45.533367>,  <33.153542, 36.968166, 45.731052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828167, 36.845482, 45.533367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549371, 0.126008, 0.826023,
		-0.191074, 0.943425, -0.270997,
		-0.813438, -0.306710, -0.494214,
		32.584137, 36.753468, 45.385101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527554, 37.441032, 45.915733>,  <33.153542, 36.968166, 45.731052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527554, 37.441032, 45.915733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354496, 37.101364, 45.794590>,  <32.250660, 36.897564, 45.721905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.354496, 37.101364, 45.794590>,  <32.527554, 37.441032, 45.915733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354496, 37.101364, 45.794590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557574, -0.011955, 0.830041,
		-0.708469, 0.527980, -0.468304,
		-0.432646, -0.849173, -0.302858,
		32.224701, 36.846611, 45.703732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776821, 37.525318, 45.716858>,  <32.527554, 37.441032, 45.915733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776821, 37.525318, 45.716858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839462, 37.141590, 45.810822>,  <31.877047, 36.911354, 45.867199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839462, 37.141590, 45.810822>,  <31.776821, 37.525318, 45.716858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839462, 37.141590, 45.810822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765046, 0.032597, 0.643150,
		-0.624644, -0.280433, -0.728819,
		0.156603, -0.959320, 0.234906,
		31.886444, 36.853794, 45.881294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132345, 37.315926, 45.957859>,  <31.776821, 37.525318, 45.716858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132345, 37.315926, 45.957859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342279, 37.002525, 46.090927>,  <31.468241, 36.814484, 46.170769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.342279, 37.002525, 46.090927>,  <31.132345, 37.315926, 45.957859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342279, 37.002525, 46.090927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640550, -0.106155, 0.760543,
		-0.560574, -0.612252, -0.557588,
		0.524835, -0.783504, 0.332670,
		31.499729, 36.767475, 46.190727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637566, 36.789940, 46.134274>,  <31.132345, 37.315926, 45.957859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637566, 36.789940, 46.134274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963633, 36.715027, 46.353519>,  <31.159273, 36.670078, 46.485065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.963633, 36.715027, 46.353519>,  <30.637566, 36.789940, 46.134274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963633, 36.715027, 46.353519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554641, 0.020366, 0.831840,
		-0.166952, -0.982095, -0.087273,
		0.815169, -0.187283, 0.548111,
		31.208183, 36.658844, 46.517952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444035, 36.296921, 46.649185>,  <30.637566, 36.789940, 46.134274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444035, 36.296921, 46.649185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.784321, 36.441227, 46.802094>,  <30.988493, 36.527809, 46.893837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.784321, 36.441227, 46.802094>,  <30.444035, 36.296921, 46.649185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784321, 36.441227, 46.802094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461044, 0.162881, 0.872301,
		0.252431, -0.918324, 0.304894,
		0.850716, 0.360765, 0.382271,
		31.039536, 36.549458, 46.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566103, 35.914253, 47.385288>,  <30.444035, 36.296921, 46.649185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566103, 35.914253, 47.385288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.807228, 36.233406, 47.384365>,  <30.951902, 36.424896, 47.383812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.807228, 36.233406, 47.384365>,  <30.566103, 35.914253, 47.385288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807228, 36.233406, 47.384365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361069, 0.275371, 0.890954,
		0.711510, -0.536244, 0.454087,
		0.602812, 0.797880, -0.002308,
		30.988071, 36.472771, 47.383671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994425, 35.909763, 48.062237>,  <30.566103, 35.914253, 47.385288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994425, 35.909763, 48.062237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960672, 36.281322, 47.917999>,  <30.940420, 36.504257, 47.831455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.960672, 36.281322, 47.917999>,  <30.994425, 35.909763, 48.062237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960672, 36.281322, 47.917999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243005, 0.331776, 0.911523,
		0.966348, 0.164543, 0.197731,
		-0.084382, 0.928897, -0.360596,
		30.935358, 36.559990, 47.809822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890539, 36.248772, 48.596115>,  <30.994425, 35.909763, 48.062237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890539, 36.248772, 48.596115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838419, 36.550159, 48.338337>,  <30.807146, 36.730991, 48.183670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.838419, 36.550159, 48.338337>,  <30.890539, 36.248772, 48.596115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838419, 36.550159, 48.338337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313557, 0.585311, 0.747726,
		0.940587, 0.299501, 0.159986,
		-0.130303, 0.753466, -0.644446,
		30.799328, 36.776199, 48.145004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182854, 36.848232, 48.883678>,  <30.890539, 36.248772, 48.596115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182854, 36.848232, 48.883678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.889639, 36.948536, 48.630768>,  <30.713711, 37.008717, 48.479023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.889639, 36.948536, 48.630768>,  <31.182854, 36.848232, 48.883678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889639, 36.948536, 48.630768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287558, 0.728158, 0.622170,
		0.616414, 0.637891, -0.461659,
		-0.733037, 0.250761, -0.632278,
		30.669727, 37.023766, 48.441086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228018, 37.545612, 48.975761>,  <31.182854, 36.848232, 48.883678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228018, 37.545612, 48.975761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.881565, 37.474701, 48.788834>,  <30.673695, 37.432152, 48.676678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.881565, 37.474701, 48.788834>,  <31.228018, 37.545612, 48.975761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881565, 37.474701, 48.788834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446988, 0.693109, 0.565510,
		0.223651, 0.698693, -0.679565,
		-0.866131, -0.177281, -0.467322,
		30.621725, 37.421516, 48.648636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022043, 38.177696, 48.704468>,  <31.228018, 37.545612, 48.975761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022043, 38.177696, 48.704468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713209, 37.935047, 48.780258>,  <30.527908, 37.789459, 48.825733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.713209, 37.935047, 48.780258>,  <31.022043, 38.177696, 48.704468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713209, 37.935047, 48.780258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422595, 0.712730, 0.559848,
		-0.474659, 0.352178, -0.806641,
		-0.772083, -0.606619, 0.189475,
		30.481585, 37.753063, 48.837101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372707, 38.555733, 48.369968>,  <31.022043, 38.177696, 48.704468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372707, 38.555733, 48.369968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.307552, 38.310841, 48.679455>,  <30.268459, 38.163906, 48.865147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.307552, 38.310841, 48.679455>,  <30.372707, 38.555733, 48.369968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307552, 38.310841, 48.679455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486318, 0.732134, 0.476942,
		-0.858465, -0.298586, -0.416994,
		-0.162888, -0.612230, 0.773720,
		30.258686, 38.127171, 48.911572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028196, 39.024731, 48.767387>,  <30.372707, 38.555733, 48.369968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028196, 39.024731, 48.767387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.028360, 38.690853, 48.987671>,  <30.028458, 38.490528, 49.119843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.028360, 38.690853, 48.987671>,  <30.028196, 39.024731, 48.767387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028360, 38.690853, 48.987671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162389, 0.543348, 0.823652,
		-0.986727, -0.089767, -0.135323,
		0.000409, -0.834694, 0.550713,
		30.028482, 38.440445, 49.152885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720270, 39.629940, 48.564434>,  <30.028196, 39.024731, 48.767387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720270, 39.629940, 48.564434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349977, 39.736088, 48.456654>,  <29.127802, 39.799774, 48.391987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349977, 39.736088, 48.456654>,  <29.720270, 39.629940, 48.564434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349977, 39.736088, 48.456654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233499, -0.159402, -0.959202,
		-0.297490, -0.950880, 0.085600,
		-0.925731, 0.265366, -0.269450,
		29.072258, 39.815697, 48.375820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474360, 39.111984, 48.119789>,  <29.720270, 39.629940, 48.564434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474360, 39.111984, 48.119789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.251543, 39.436169, 48.047279>,  <29.117853, 39.630680, 48.003773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.251543, 39.436169, 48.047279>,  <29.474360, 39.111984, 48.119789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251543, 39.436169, 48.047279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191647, -0.086942, -0.977606,
		-0.808071, -0.579306, -0.106892,
		-0.557039, 0.810460, -0.181277,
		29.084431, 39.679306, 47.992897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082359, 39.005867, 47.441826>,  <29.474360, 39.111984, 48.119789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082359, 39.005867, 47.441826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.070555, 39.400509, 47.506004>,  <29.063473, 39.637295, 47.544510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.070555, 39.400509, 47.506004>,  <29.082359, 39.005867, 47.441826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070555, 39.400509, 47.506004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160621, 0.163110, -0.973445,
		-0.986575, -0.002956, -0.163283,
		-0.029510, 0.986603, 0.160445,
		29.061701, 39.696491, 47.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714064, 39.350613, 46.865749>,  <29.082359, 39.005867, 47.441826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714064, 39.350613, 46.865749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.916393, 39.646976, 47.042473>,  <29.037790, 39.824795, 47.148506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.916393, 39.646976, 47.042473>,  <28.714064, 39.350613, 46.865749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916393, 39.646976, 47.042473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448567, 0.211561, -0.868349,
		-0.736839, 0.637410, -0.225337,
		0.505822, 0.740911, 0.441808,
		29.068140, 39.869251, 47.175014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590839, 39.930645, 46.470844>,  <28.714064, 39.350613, 46.865749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590839, 39.930645, 46.470844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927887, 40.001923, 46.674114>,  <29.130116, 40.044689, 46.796078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927887, 40.001923, 46.674114>,  <28.590839, 39.930645, 46.470844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927887, 40.001923, 46.674114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472395, 0.208453, -0.856382,
		-0.258530, 0.961663, 0.091469,
		0.842618, 0.178191, 0.508176,
		29.180672, 40.055382, 46.826569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956493, 40.304478, 46.009884>,  <28.590839, 39.930645, 46.470844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956493, 40.304478, 46.009884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230162, 40.193115, 46.279518>,  <29.394363, 40.126297, 46.441299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.230162, 40.193115, 46.279518>,  <28.956493, 40.304478, 46.009884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230162, 40.193115, 46.279518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702003, 0.000798, -0.712174,
		0.197735, 0.960463, 0.195988,
		0.684173, -0.278406, 0.674090,
		29.435413, 40.109592, 46.481747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454792, 40.778591, 45.910744>,  <28.956493, 40.304478, 46.009884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454792, 40.778591, 45.910744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638657, 40.462112, 46.072102>,  <29.748976, 40.272224, 46.168915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.638657, 40.462112, 46.072102>,  <29.454792, 40.778591, 45.910744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638657, 40.462112, 46.072102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585261, -0.071771, -0.807662,
		0.667968, 0.607341, 0.430065,
		0.459660, -0.791193, 0.403394,
		29.776554, 40.224754, 46.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689909, 41.265770, 46.359238>,  <29.454792, 40.778591, 45.910744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689909, 41.265770, 46.359238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894669, 41.589104, 46.475552>,  <30.017525, 41.783104, 46.545341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.894669, 41.589104, 46.475552>,  <29.689909, 41.265770, 46.359238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894669, 41.589104, 46.475552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353423, -0.110351, 0.928932,
		0.782975, -0.578290, 0.229195,
		0.511900, 0.808333, 0.290783,
		30.048239, 41.831604, 46.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003454, 41.125866, 46.969887>,  <29.689909, 41.265770, 46.359238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003454, 41.125866, 46.969887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973898, 41.524761, 46.966976>,  <29.956163, 41.764099, 46.965229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973898, 41.524761, 46.966976>,  <30.003454, 41.125866, 46.969887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973898, 41.524761, 46.966976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423493, -0.024769, 0.905561,
		0.902881, 0.069997, 0.424154,
		-0.073893, 0.997240, -0.007279,
		29.951731, 41.823933, 46.964794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250156, 41.294624, 47.661652>,  <30.003454, 41.125866, 46.969887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250156, 41.294624, 47.661652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105923, 41.656281, 47.569992>,  <30.019382, 41.873276, 47.514996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.105923, 41.656281, 47.569992>,  <30.250156, 41.294624, 47.661652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105923, 41.656281, 47.569992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146745, 0.187624, 0.971217,
		0.921111, 0.383832, 0.065024,
		-0.360584, 0.904141, -0.229148,
		29.997747, 41.927525, 47.501247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695347, 41.936497, 47.870739>,  <30.250156, 41.294624, 47.661652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695347, 41.936497, 47.870739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.301512, 42.002266, 47.846897>,  <30.065210, 42.041729, 47.832592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.301512, 42.002266, 47.846897>,  <30.695347, 41.936497, 47.870739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301512, 42.002266, 47.846897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, 0.107616, 0.993298,
		0.169735, 0.980502, -0.099024,
		-0.984587, 0.164422, -0.059608,
		30.006136, 42.051594, 47.829014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576479, 42.396503, 48.389198>,  <30.695347, 41.936497, 47.870739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576479, 42.396503, 48.389198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192453, 42.309711, 48.318550>,  <29.962038, 42.257637, 48.276161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192453, 42.309711, 48.318550>,  <30.576479, 42.396503, 48.389198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192453, 42.309711, 48.318550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237550, 0.298695, 0.924311,
		-0.147803, 0.929355, -0.338310,
		-0.960065, -0.216981, -0.176621,
		29.904434, 42.244617, 48.265564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218117, 42.906376, 48.761467>,  <30.576479, 42.396503, 48.389198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218117, 42.906376, 48.761467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939747, 42.626198, 48.698147>,  <29.772724, 42.458092, 48.660156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.939747, 42.626198, 48.698147>,  <30.218117, 42.906376, 48.761467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939747, 42.626198, 48.698147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406628, 0.202682, 0.890828,
		-0.591896, 0.684318, -0.425874,
		-0.695926, -0.700449, -0.158297,
		29.730968, 42.416061, 48.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595654, 43.214436, 48.944305>,  <30.218117, 42.906376, 48.761467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595654, 43.214436, 48.944305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512335, 42.823208, 48.943886>,  <29.462343, 42.588470, 48.943634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.512335, 42.823208, 48.943886>,  <29.595654, 43.214436, 48.944305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512335, 42.823208, 48.943886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460871, 0.097200, 0.882128,
		-0.862677, 0.184228, -0.471008,
		-0.208295, -0.978066, -0.001053,
		29.449846, 42.529789, 48.943569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842587, 43.091549, 48.988205>,  <29.595654, 43.214436, 48.944305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842587, 43.091549, 48.988205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.041843, 42.779156, 49.138893>,  <29.161398, 42.591721, 49.229305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.041843, 42.779156, 49.138893>,  <28.842587, 43.091549, 48.988205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041843, 42.779156, 49.138893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534031, 0.065950, 0.842889,
		-0.683130, -0.621055, -0.384219,
		0.498141, -0.780987, 0.376716,
		29.191286, 42.544861, 49.251907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356897, 42.693344, 49.307281>,  <28.842587, 43.091549, 48.988205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356897, 42.693344, 49.307281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.696119, 42.578686, 49.485558>,  <28.899652, 42.509892, 49.592522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.696119, 42.578686, 49.485558>,  <28.356897, 42.693344, 49.307281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696119, 42.578686, 49.485558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451077, 0.050885, 0.891033,
		-0.278087, -0.956685, -0.086145,
		0.848055, -0.286643, 0.445689,
		28.950537, 42.492695, 49.619263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.094730, 41.714096, 34.581905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373493, 41.863113, 34.827030>,  <36.540749, 41.952522, 34.974106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373493, 41.863113, 34.827030>,  <36.094730, 41.714096, 34.581905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373493, 41.863113, 34.827030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603733, -0.156440, 0.781686,
		0.387078, -0.914735, 0.115892,
		0.696905, 0.372541, 0.612810,
		36.582565, 41.974876, 35.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145790, 41.317974, 35.193535>,  <36.094730, 41.714096, 34.581905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145790, 41.317974, 35.193535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315117, 41.663441, 35.302998>,  <36.416714, 41.870720, 35.368675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315117, 41.663441, 35.302998>,  <36.145790, 41.317974, 35.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315117, 41.663441, 35.302998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485219, -0.038956, 0.873525,
		0.765094, -0.502557, 0.402576,
		0.423313, 0.863666, 0.273655,
		36.442112, 41.922539, 35.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538837, 41.194439, 35.795586>,  <36.145790, 41.317974, 35.193535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538837, 41.194439, 35.795586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447166, 41.583775, 35.791897>,  <36.392162, 41.817375, 35.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447166, 41.583775, 35.791897>,  <36.538837, 41.194439, 35.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447166, 41.583775, 35.791897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530545, -0.116969, 0.839548,
		0.816087, 0.197298, 0.543208,
		-0.229180, 0.973341, -0.009219,
		36.378414, 41.875778, 35.789131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715622, 41.485928, 36.515343>,  <36.538837, 41.194439, 35.795586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715622, 41.485928, 36.515343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471733, 41.756088, 36.349419>,  <36.325397, 41.918186, 36.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471733, 41.756088, 36.349419>,  <36.715622, 41.485928, 36.515343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471733, 41.756088, 36.349419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511260, 0.064785, 0.856981,
		0.605680, 0.734599, 0.305804,
		-0.609726, 0.675401, -0.414810,
		36.288815, 41.958710, 36.224976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630348, 41.900944, 37.011196>,  <36.715622, 41.485928, 36.515343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630348, 41.900944, 37.011196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333847, 41.984928, 36.756176>,  <36.155949, 42.035320, 36.603165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333847, 41.984928, 36.756176>,  <36.630348, 41.900944, 37.011196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333847, 41.984928, 36.756176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635250, 0.087367, 0.767349,
		0.216813, 0.973799, 0.068616,
		-0.741249, 0.209960, -0.637548,
		36.111473, 42.047916, 36.564911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295448, 42.488052, 37.288052>,  <36.630348, 41.900944, 37.011196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295448, 42.488052, 37.288052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012753, 42.338211, 37.047985>,  <35.843136, 42.248306, 36.903946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012753, 42.338211, 37.047985>,  <36.295448, 42.488052, 37.288052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012753, 42.338211, 37.047985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674987, 0.102897, 0.730620,
		-0.211937, 0.921458, -0.325573,
		-0.706736, -0.374602, -0.600164,
		35.800732, 42.225830, 36.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803261, 42.979782, 37.253757>,  <36.295448, 42.488052, 37.288052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803261, 42.979782, 37.253757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648125, 42.618111, 37.182159>,  <35.555042, 42.401108, 37.139202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648125, 42.618111, 37.182159>,  <35.803261, 42.979782, 37.253757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648125, 42.618111, 37.182159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665283, 0.140198, 0.733310,
		-0.637951, 0.403485, -0.655910,
		-0.387837, -0.904182, -0.178992,
		35.531773, 42.346855, 37.128460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052479, 43.032745, 37.364483>,  <35.803261, 42.979782, 37.253757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052479, 43.032745, 37.364483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133957, 42.643578, 37.408173>,  <35.182842, 42.410076, 37.434387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133957, 42.643578, 37.408173>,  <35.052479, 43.032745, 37.364483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133957, 42.643578, 37.408173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451541, 0.005632, 0.892233,
		-0.868689, -0.231060, -0.438167,
		0.203691, -0.972923, 0.109226,
		35.195065, 42.351700, 37.440941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699600, 42.888905, 37.928501>,  <35.052479, 43.032745, 37.364483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699600, 42.888905, 37.928501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865822, 42.527920, 37.883110>,  <34.965553, 42.311329, 37.855877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865822, 42.527920, 37.883110>,  <34.699600, 42.888905, 37.928501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865822, 42.527920, 37.883110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428606, -0.304324, 0.850696,
		-0.802255, -0.304873, -0.513264,
		0.415553, -0.902463, -0.113475,
		34.990486, 42.257179, 37.849068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137669, 42.269981, 37.790634>,  <34.699600, 42.888905, 37.928501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137669, 42.269981, 37.790634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464287, 42.121140, 37.967178>,  <34.660255, 42.031834, 38.073105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464287, 42.121140, 37.967178>,  <34.137669, 42.269981, 37.790634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464287, 42.121140, 37.967178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567289, -0.375536, 0.732910,
		-0.106975, -0.848829, -0.517732,
		0.816541, -0.372106, 0.441358,
		34.709248, 42.009506, 38.099586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937378, 41.639805, 38.156860>,  <34.137669, 42.269981, 37.790634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937378, 41.639805, 38.156860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286079, 41.722797, 38.334396>,  <34.495300, 41.772591, 38.440918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286079, 41.722797, 38.334396>,  <33.937378, 41.639805, 38.156860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286079, 41.722797, 38.334396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434037, -0.093172, 0.896064,
		0.227266, -0.973793, 0.008829,
		0.871758, 0.207477, 0.443837,
		34.547607, 41.785042, 38.467548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067642, 41.086819, 38.692863>,  <33.937378, 41.639805, 38.156860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067642, 41.086819, 38.692863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287727, 41.400990, 38.806255>,  <34.419781, 41.589493, 38.874290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287727, 41.400990, 38.806255>,  <34.067642, 41.086819, 38.692863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287727, 41.400990, 38.806255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443801, -0.012509, 0.896038,
		0.707321, -0.618825, 0.341692,
		0.550216, 0.785430, 0.283483,
		34.452793, 41.636620, 38.891300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166904, 40.298866, 38.658363>,  <34.067642, 41.086819, 38.692863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166904, 40.298866, 38.658363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928471, 39.989315, 38.572765>,  <33.785412, 39.803585, 38.521408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928471, 39.989315, 38.572765>,  <34.166904, 40.298866, 38.658363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928471, 39.989315, 38.572765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243898, 0.079403, -0.966545,
		0.764983, -0.628333, 0.141417,
		-0.596083, -0.773882, -0.213991,
		33.749645, 39.757149, 38.508568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441929, 39.904819, 38.109928>,  <34.166904, 40.298866, 38.658363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441929, 39.904819, 38.109928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072460, 39.753178, 38.087643>,  <33.850777, 39.662193, 38.074272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072460, 39.753178, 38.087643>,  <34.441929, 39.904819, 38.109928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072460, 39.753178, 38.087643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075525, -0.037587, -0.996435,
		0.375657, -0.924591, 0.063350,
		-0.923676, -0.379103, -0.055710,
		33.795357, 39.639446, 38.070930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460495, 39.452835, 37.569527>,  <34.441929, 39.904819, 38.109928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460495, 39.452835, 37.569527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078140, 39.562668, 37.611256>,  <33.848728, 39.628567, 37.636292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078140, 39.562668, 37.611256>,  <34.460495, 39.452835, 37.569527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078140, 39.562668, 37.611256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107533, 0.003381, -0.994196,
		-0.273345, -0.961557, 0.026296,
		-0.955887, 0.274586, 0.104324,
		33.791374, 39.645042, 37.642551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207451, 39.135780, 37.011600>,  <34.460495, 39.452835, 37.569527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207451, 39.135780, 37.011600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889812, 39.334915, 37.151073>,  <33.699230, 39.454395, 37.234756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889812, 39.334915, 37.151073>,  <34.207451, 39.135780, 37.011600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889812, 39.334915, 37.151073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460678, -0.118768, -0.879585,
		-0.396479, -0.859099, 0.323655,
		-0.794091, 0.497838, 0.348679,
		33.651585, 39.484264, 37.255676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618225, 38.726704, 37.116585>,  <34.207451, 39.135780, 37.011600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618225, 38.726704, 37.116585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513405, 39.101578, 37.024483>,  <33.450512, 39.326500, 36.969223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513405, 39.101578, 37.024483>,  <33.618225, 38.726704, 37.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513405, 39.101578, 37.024483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579222, -0.343579, -0.739226,
		-0.771901, -0.060345, 0.632872,
		-0.262050, 0.937183, -0.230256,
		33.434792, 39.382732, 36.955406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871010, 38.716373, 37.001972>,  <33.618225, 38.726704, 37.116585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871010, 38.716373, 37.001972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004414, 39.042782, 36.813129>,  <33.084457, 39.238628, 36.699825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004414, 39.042782, 36.813129>,  <32.871010, 38.716373, 37.001972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004414, 39.042782, 36.813129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638378, -0.173012, -0.750027,
		-0.693716, 0.551524, 0.463227,
		0.333514, 0.816019, -0.472102,
		33.104469, 39.287586, 36.671497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308685, 39.113152, 36.702595>,  <32.871010, 38.716373, 37.001972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308685, 39.113152, 36.702595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628197, 39.225170, 36.489605>,  <32.819904, 39.292381, 36.361813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628197, 39.225170, 36.489605>,  <32.308685, 39.113152, 36.702595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628197, 39.225170, 36.489605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512148, -0.147892, -0.846069,
		-0.315686, 0.948527, 0.025292,
		0.798778, 0.280045, -0.532473,
		32.867828, 39.309185, 36.329865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002552, 39.354370, 36.232750>,  <32.308685, 39.113152, 36.702595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002552, 39.354370, 36.232750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379482, 39.292725, 36.113911>,  <32.605640, 39.255737, 36.042606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379482, 39.292725, 36.113911>,  <32.002552, 39.354370, 36.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379482, 39.292725, 36.113911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330796, -0.293807, -0.896801,
		0.050921, 0.943359, -0.327843,
		0.942327, -0.154115, -0.297099,
		32.662182, 39.246490, 36.024780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039677, 39.645542, 35.628742>,  <32.002552, 39.354370, 36.232750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039677, 39.645542, 35.628742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370636, 39.422142, 35.605137>,  <32.569214, 39.288101, 35.590973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370636, 39.422142, 35.605137>,  <32.039677, 39.645542, 35.628742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370636, 39.422142, 35.605137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277343, -0.314961, -0.907679,
		0.488353, 0.767382, -0.415495,
		0.827401, -0.558502, -0.059016,
		32.618855, 39.254593, 35.587433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248299, 39.833256, 35.066299>,  <32.039677, 39.645542, 35.628742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248299, 39.833256, 35.066299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397774, 39.476963, 35.169807>,  <32.487457, 39.263187, 35.231911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397774, 39.476963, 35.169807>,  <32.248299, 39.833256, 35.066299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397774, 39.476963, 35.169807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245561, -0.364026, -0.898435,
		0.894459, 0.272191, -0.354761,
		0.373688, -0.890728, 0.258767,
		32.509880, 39.209743, 35.247437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618027, 39.621006, 34.424751>,  <32.248299, 39.833256, 35.066299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618027, 39.621006, 34.424751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544590, 39.292831, 34.641335>,  <32.500526, 39.095924, 34.771282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544590, 39.292831, 34.641335>,  <32.618027, 39.621006, 34.424751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544590, 39.292831, 34.641335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335250, -0.465534, -0.819076,
		0.924068, -0.331899, -0.189584,
		-0.183592, -0.820440, 0.541454,
		32.489513, 39.046700, 34.803772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805180, 39.051159, 33.903690>,  <32.618027, 39.621006, 34.424751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805180, 39.051159, 33.903690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632259, 38.854210, 34.205864>,  <32.528507, 38.736038, 34.387169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632259, 38.854210, 34.205864>,  <32.805180, 39.051159, 33.903690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632259, 38.854210, 34.205864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435257, -0.619764, -0.653027,
		0.789725, -0.611113, 0.053617,
		-0.432303, -0.492374, 0.755434,
		32.502567, 38.706497, 34.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952190, 38.310070, 33.995781>,  <32.805180, 39.051159, 33.903690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952190, 38.310070, 33.995781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602596, 38.335289, 34.188519>,  <32.392838, 38.350422, 34.304161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602596, 38.335289, 34.188519>,  <32.952190, 38.310070, 33.995781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602596, 38.335289, 34.188519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417076, -0.606184, -0.677192,
		0.249388, -0.792821, 0.556094,
		-0.873987, 0.063049, 0.481842,
		32.340401, 38.354202, 34.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579163, 37.677113, 33.966587>,  <32.952190, 38.310070, 33.995781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579163, 37.677113, 33.966587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276608, 37.930428, 34.032112>,  <32.095074, 38.082417, 34.071426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276608, 37.930428, 34.032112>,  <32.579163, 37.677113, 33.966587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276608, 37.930428, 34.032112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613321, -0.599528, -0.514202,
		-0.227423, -0.489406, 0.841879,
		-0.756383, 0.633284, 0.163817,
		32.049694, 38.120415, 34.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783878, 37.063751, 34.435852>,  <32.579163, 37.677113, 33.966587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783878, 37.063751, 34.435852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049637, 37.150204, 34.149673>,  <33.209091, 37.202076, 33.977966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049637, 37.150204, 34.149673>,  <32.783878, 37.063751, 34.435852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049637, 37.150204, 34.149673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293365, 0.955861, 0.016330,
		0.687401, 0.199038, 0.698472,
		0.664392, 0.216133, -0.715451,
		33.248955, 37.215042, 33.935040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510098, 36.460644, 34.524612>,  <32.783878, 37.063751, 34.435852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510098, 36.460644, 34.524612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848549, 36.248039, 34.540390>,  <33.051620, 36.120476, 34.549854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848549, 36.248039, 34.540390>,  <32.510098, 36.460644, 34.524612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848549, 36.248039, 34.540390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006651, 0.063467, 0.997962,
		-0.532933, -0.844669, 0.050166,
		0.846132, -0.531513, 0.039441,
		33.102386, 36.088585, 34.552223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622486, 36.393566, 35.280025>,  <32.510098, 36.460644, 34.524612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622486, 36.393566, 35.280025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974934, 36.229488, 35.185905>,  <33.186401, 36.131042, 35.129433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974934, 36.229488, 35.185905>,  <32.622486, 36.393566, 35.280025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974934, 36.229488, 35.185905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367130, 0.279750, 0.887105,
		-0.298059, -0.868033, 0.397088,
		0.881122, -0.410193, -0.235299,
		33.239269, 36.106430, 35.115314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893665, 35.628429, 35.611977>,  <32.622486, 36.393566, 35.280025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893665, 35.628429, 35.611977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172356, 35.904221, 35.532791>,  <33.339569, 36.069695, 35.485279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172356, 35.904221, 35.532791>,  <32.893665, 35.628429, 35.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172356, 35.904221, 35.532791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238741, 0.037356, 0.970364,
		0.676439, -0.723343, -0.138580,
		0.696730, 0.689477, -0.197961,
		33.381374, 36.111065, 35.473404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689056, 35.427567, 35.710255>,  <32.893665, 35.628429, 35.611977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689056, 35.427567, 35.710255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637493, 35.820732, 35.762814>,  <33.606556, 36.056633, 35.794350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637493, 35.820732, 35.762814>,  <33.689056, 35.427567, 35.710255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637493, 35.820732, 35.762814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279529, -0.091114, 0.955804,
		0.951444, 0.159940, -0.263008,
		-0.128908, 0.982913, 0.131398,
		33.598820, 36.115604, 35.802235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035118, 35.514011, 36.234730>,  <33.689056, 35.427567, 35.710255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035118, 35.514011, 36.234730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830788, 35.857002, 36.259361>,  <33.708191, 36.062798, 36.274139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830788, 35.857002, 36.259361>,  <34.035118, 35.514011, 36.234730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830788, 35.857002, 36.259361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091802, -0.016806, 0.995635,
		0.854770, 0.514246, -0.070134,
		-0.510823, 0.857478, 0.061575,
		33.677540, 36.114246, 36.277832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319363, 35.883625, 36.783550>,  <34.035118, 35.514011, 36.234730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319363, 35.883625, 36.783550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964607, 36.060062, 36.728611>,  <33.751755, 36.165924, 36.695648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964607, 36.060062, 36.728611>,  <34.319363, 35.883625, 36.783550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964607, 36.060062, 36.728611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079007, 0.148103, 0.985811,
		0.455177, 0.885156, -0.096501,
		-0.886889, 0.441095, -0.137347,
		33.698540, 36.192390, 36.687408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402752, 36.581623, 37.017414>,  <34.319363, 35.883625, 36.783550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402752, 36.581623, 37.017414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025558, 36.452984, 37.051708>,  <33.799240, 36.375801, 37.072285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025558, 36.452984, 37.051708>,  <34.402752, 36.581623, 37.017414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025558, 36.452984, 37.051708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076533, 0.041174, 0.996217,
		-0.323911, 0.945981, -0.014213,
		-0.942987, -0.321598, 0.085736,
		33.742661, 36.356506, 37.077431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118786, 37.119854, 37.431442>,  <34.402752, 36.581623, 37.017414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118786, 37.119854, 37.431442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874062, 36.805603, 37.468266>,  <33.727226, 36.617054, 37.490360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874062, 36.805603, 37.468266>,  <34.118786, 37.119854, 37.431442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874062, 36.805603, 37.468266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059148, 0.070620, 0.995748,
		-0.788789, 0.614655, 0.003262,
		-0.611811, -0.785628, 0.092060,
		33.690517, 36.569916, 37.495884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558311, 37.390854, 37.916767>,  <34.118786, 37.119854, 37.431442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558311, 37.390854, 37.916767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531940, 36.991737, 37.920067>,  <33.516117, 36.752266, 37.922047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531940, 36.991737, 37.920067>,  <33.558311, 37.390854, 37.916767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531940, 36.991737, 37.920067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089947, 0.014176, 0.995846,
		-0.993762, 0.064910, -0.090683,
		-0.065926, -0.997791, 0.008249,
		33.512161, 36.692402, 37.922543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114082, 37.289997, 38.490227>,  <33.558311, 37.390854, 37.916767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114082, 37.289997, 38.490227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231373, 36.912125, 38.431442>,  <33.301746, 36.685402, 38.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.231373, 36.912125, 38.431442>,  <33.114082, 37.289997, 38.490227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231373, 36.912125, 38.431442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105573, -0.184774, 0.977094,
		-0.950195, -0.270997, -0.153914,
		0.293229, -0.944679, -0.146961,
		33.319340, 36.628719, 38.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596233, 36.835537, 38.802528>,  <33.114082, 37.289997, 38.490227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596233, 36.835537, 38.802528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934067, 36.621368, 38.803547>,  <33.136768, 36.492867, 38.804157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934067, 36.621368, 38.803547>,  <32.596233, 36.835537, 38.802528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934067, 36.621368, 38.803547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071751, -0.108472, 0.991507,
		-0.530596, -0.837592, -0.130030,
		0.844583, -0.535419, 0.002543,
		33.187443, 36.460743, 38.804310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455265, 36.283791, 39.235310>,  <32.596233, 36.835537, 38.802528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455265, 36.283791, 39.235310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850861, 36.342411, 39.227119>,  <33.088219, 36.377583, 39.222206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850861, 36.342411, 39.227119>,  <32.455265, 36.283791, 39.235310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850861, 36.342411, 39.227119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035910, -0.103486, 0.993982,
		0.143555, -0.983774, -0.107609,
		0.988990, 0.146556, -0.020472,
		33.147556, 36.386379, 39.220978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789421, 35.740322, 39.640312>,  <32.455265, 36.283791, 39.235310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789421, 35.740322, 39.640312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077015, 36.015911, 39.603725>,  <33.249573, 36.181267, 39.581772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077015, 36.015911, 39.603725>,  <32.789421, 35.740322, 39.640312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077015, 36.015911, 39.603725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220772, -0.101612, 0.970018,
		0.659026, -0.717625, -0.225164,
		0.718988, 0.688977, -0.091467,
		33.292713, 36.222603, 39.576286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217209, 35.568356, 40.219490>,  <32.789421, 35.740322, 39.640312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217209, 35.568356, 40.219490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329533, 35.937939, 40.115612>,  <33.396927, 36.159691, 40.053284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329533, 35.937939, 40.115612>,  <33.217209, 35.568356, 40.219490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329533, 35.937939, 40.115612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189125, 0.212005, 0.958794,
		0.940944, -0.318356, -0.115210,
		0.280812, 0.923961, -0.259694,
		33.413776, 36.215126, 40.037704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747128, 35.727486, 40.635761>,  <33.217209, 35.568356, 40.219490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747128, 35.727486, 40.635761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646641, 36.094547, 40.512600>,  <33.586349, 36.314785, 40.438705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646641, 36.094547, 40.512600>,  <33.747128, 35.727486, 40.635761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646641, 36.094547, 40.512600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023625, 0.312193, 0.949725,
		0.967643, 0.245861, -0.056748,
		-0.251216, 0.917654, -0.307900,
		33.571278, 36.369843, 40.420231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163868, 36.150505, 41.038960>,  <33.747128, 35.727486, 40.635761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163868, 36.150505, 41.038960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872524, 36.384045, 40.895512>,  <33.697720, 36.524170, 40.809441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872524, 36.384045, 40.895512>,  <34.163868, 36.150505, 41.038960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872524, 36.384045, 40.895512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087480, 0.439866, 0.893793,
		0.679588, 0.682375, -0.269305,
		-0.728360, 0.583851, -0.358622,
		33.654015, 36.559200, 40.787926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329769, 36.858879, 41.215179>,  <34.163868, 36.150505, 41.038960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329769, 36.858879, 41.215179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934383, 36.806225, 41.185226>,  <33.697151, 36.774632, 41.167255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934383, 36.806225, 41.185226>,  <34.329769, 36.858879, 41.215179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934383, 36.806225, 41.185226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115297, 0.333500, 0.935673,
		-0.098193, 0.933515, -0.344831,
		-0.988466, -0.131635, -0.074884,
		33.637844, 36.766735, 41.162762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149204, 37.465816, 41.531925>,  <34.329769, 36.858879, 41.215179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149204, 37.465816, 41.531925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829674, 37.226383, 41.508038>,  <33.637955, 37.082722, 41.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829674, 37.226383, 41.508038>,  <34.149204, 37.465816, 41.531925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829674, 37.226383, 41.508038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281622, 0.284403, 0.916408,
		-0.531562, 0.748874, -0.395764,
		-0.798831, -0.598584, -0.059722,
		33.590023, 37.046806, 41.490120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549530, 37.903931, 41.778023>,  <34.149204, 37.465816, 41.531925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549530, 37.903931, 41.778023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449467, 37.519466, 41.824669>,  <33.389431, 37.288788, 41.852657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449467, 37.519466, 41.824669>,  <33.549530, 37.903931, 41.778023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449467, 37.519466, 41.824669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453101, 0.222655, 0.863206,
		-0.855641, 0.163097, -0.491199,
		-0.250154, -0.961158, 0.116613,
		33.374420, 37.231117, 41.859653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059650, 37.972183, 42.255043>,  <33.549530, 37.903931, 41.778023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059650, 37.972183, 42.255043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160770, 37.585182, 42.253265>,  <33.221443, 37.352982, 42.252201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160770, 37.585182, 42.253265>,  <33.059650, 37.972183, 42.255043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160770, 37.585182, 42.253265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441382, -0.119412, 0.889338,
		-0.860972, -0.222868, -0.457228,
		0.252804, -0.967507, -0.004440,
		33.236610, 37.294930, 42.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446575, 37.768711, 42.406090>,  <33.059650, 37.972183, 42.255043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446575, 37.768711, 42.406090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731892, 37.513374, 42.521832>,  <32.903080, 37.360172, 42.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731892, 37.513374, 42.521832>,  <32.446575, 37.768711, 42.406090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731892, 37.513374, 42.521832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377862, -0.002539, 0.925859,
		-0.590284, -0.769745, -0.243017,
		0.713292, -0.638346, 0.289358,
		32.945881, 37.321869, 42.608639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095253, 37.181141, 42.736347>,  <32.446575, 37.768711, 42.406090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095253, 37.181141, 42.736347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477619, 37.172722, 42.853504>,  <32.707039, 37.167671, 42.923798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477619, 37.172722, 42.853504>,  <32.095253, 37.181141, 42.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477619, 37.172722, 42.853504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292241, -0.165640, 0.941891,
		0.028690, -0.985962, -0.164489,
		0.955914, -0.021047, 0.292890,
		32.764393, 37.166409, 42.941372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300705, 36.506535, 42.996273>,  <32.095253, 37.181141, 42.736347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300705, 36.506535, 42.996273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555336, 36.761677, 43.169666>,  <32.708115, 36.914761, 43.273705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555336, 36.761677, 43.169666>,  <32.300705, 36.506535, 42.996273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555336, 36.761677, 43.169666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376295, -0.233739, 0.896531,
		0.673178, -0.733831, 0.091228,
		0.636579, 0.637854, 0.433485,
		32.746311, 36.953033, 43.299713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516308, 36.119820, 43.487160>,  <32.300705, 36.506535, 42.996273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516308, 36.119820, 43.487160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606152, 36.496063, 43.588989>,  <32.660057, 36.721809, 43.650085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606152, 36.496063, 43.588989>,  <32.516308, 36.119820, 43.487160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606152, 36.496063, 43.588989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346516, -0.167073, 0.923046,
		0.910756, -0.295539, 0.288410,
		0.224610, 0.940608, 0.254572,
		32.673534, 36.778244, 43.665359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952629, 36.011173, 43.953949>,  <32.516308, 36.119820, 43.487160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952629, 36.011173, 43.953949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814869, 36.384266, 43.996674>,  <32.732212, 36.608120, 44.022308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814869, 36.384266, 43.996674>,  <32.952629, 36.011173, 43.953949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814869, 36.384266, 43.996674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177949, -0.176566, 0.968069,
		0.921805, 0.314393, 0.226787,
		-0.344397, 0.932728, 0.106814,
		32.711552, 36.664085, 44.028717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471123, 36.349846, 44.379936>,  <32.952629, 36.011173, 43.953949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471123, 36.349846, 44.379936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122665, 36.544899, 44.403030>,  <32.913593, 36.661930, 44.416885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122665, 36.544899, 44.403030>,  <33.471123, 36.349846, 44.379936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122665, 36.544899, 44.403030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114835, -0.316631, 0.941572,
		0.477418, 0.813611, 0.331827,
		-0.871140, 0.487629, 0.057735,
		32.861324, 36.691189, 44.420349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516567, 36.582447, 45.127136>,  <33.471123, 36.349846, 44.379936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516567, 36.582447, 45.127136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138054, 36.628822, 45.006397>,  <32.910946, 36.656647, 44.933956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138054, 36.628822, 45.006397>,  <33.516567, 36.582447, 45.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138054, 36.628822, 45.006397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323271, -0.319321, 0.890803,
		0.006890, 0.940528, 0.339646,
		-0.946281, 0.115935, -0.301845,
		32.854168, 36.663605, 44.915844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908230, 37.048328, 45.524479>,  <33.516567, 36.582447, 45.127136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908230, 37.048328, 45.524479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272961, 36.991367, 45.678513>,  <34.491798, 36.957191, 45.770931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272961, 36.991367, 45.678513>,  <33.908230, 37.048328, 45.524479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272961, 36.991367, 45.678513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410075, 0.269859, -0.871214,
		0.020141, 0.952312, 0.304460,
		0.911829, -0.142399, 0.385085,
		34.546509, 36.948647, 45.794037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227280, 37.624043, 45.477894>,  <33.908230, 37.048328, 45.524479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227280, 37.624043, 45.477894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528564, 37.361988, 45.501461>,  <34.709335, 37.204758, 45.515602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528564, 37.361988, 45.501461>,  <34.227280, 37.624043, 45.477894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528564, 37.361988, 45.501461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438215, 0.432975, -0.787718,
		0.490548, 0.619141, 0.613211,
		0.753214, -0.655132, 0.058922,
		34.754528, 37.165447, 45.519138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737705, 38.025627, 45.122402>,  <34.227280, 37.624043, 45.477894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737705, 38.025627, 45.122402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881321, 37.656288, 45.176853>,  <34.967491, 37.434685, 45.209522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881321, 37.656288, 45.176853>,  <34.737705, 38.025627, 45.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881321, 37.656288, 45.176853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576594, 0.104748, -0.810288,
		0.733915, 0.369412, 0.570003,
		0.359037, -0.923343, 0.136124,
		34.989033, 37.379284, 45.217690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592602, 38.013336, 45.007374>,  <34.737705, 38.025627, 45.122402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592602, 38.013336, 45.007374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433701, 37.649925, 44.955582>,  <35.338360, 37.431877, 44.924507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433701, 37.649925, 44.955582>,  <35.592602, 38.013336, 45.007374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433701, 37.649925, 44.955582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575744, -0.136867, -0.806093,
		0.714636, -0.394773, 0.577451,
		-0.397257, -0.908527, -0.129478,
		35.314522, 37.377365, 44.916737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191086, 37.558578, 44.848976>,  <35.592602, 38.013336, 45.007374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191086, 37.558578, 44.848976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886547, 37.360405, 44.681694>,  <35.703823, 37.241501, 44.581326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886547, 37.360405, 44.681694>,  <36.191086, 37.558578, 44.848976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886547, 37.360405, 44.681694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536710, -0.119737, -0.835228,
		0.363728, -0.860352, 0.357067,
		-0.761344, -0.495437, -0.418208,
		35.658142, 37.211773, 44.556232>
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
