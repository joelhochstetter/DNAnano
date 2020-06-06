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
	<24.156967, 34.979244, 35.416870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517927, 34.829926, 35.330776>,  <24.734503, 34.740334, 35.279118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517927, 34.829926, 35.330776>,  <24.156967, 34.979244, 35.416870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517927, 34.829926, 35.330776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016726, -0.468784, 0.883155,
		-0.430574, -0.800559, -0.416787,
		0.902400, -0.373292, -0.215236,
		24.788647, 34.717937, 35.266205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600538, 35.540737, 35.509796>,  <24.156967, 34.979244, 35.416870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600538, 35.540737, 35.509796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992188, 35.491955, 35.444748>,  <25.227177, 35.462685, 35.405720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992188, 35.491955, 35.444748>,  <24.600538, 35.540737, 35.509796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992188, 35.491955, 35.444748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202390, 0.659456, 0.723987,
		0.018945, -0.741784, 0.670371,
		0.979122, -0.121960, -0.162623,
		25.285925, 35.455368, 35.395962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971848, 35.152210, 35.981060>,  <24.600538, 35.540737, 35.509796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971848, 35.152210, 35.981060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255997, 35.373859, 35.807476>,  <25.426487, 35.506847, 35.703327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255997, 35.373859, 35.807476>,  <24.971848, 35.152210, 35.981060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255997, 35.373859, 35.807476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320074, 0.294788, 0.900363,
		0.626835, -0.778493, 0.032050,
		0.710374, 0.554120, -0.433958,
		25.469109, 35.540096, 35.677288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617626, 34.923882, 36.307583>,  <24.971848, 35.152210, 35.981060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617626, 34.923882, 36.307583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667143, 35.289230, 36.152443>,  <25.696852, 35.508442, 36.059361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667143, 35.289230, 36.152443>,  <25.617626, 34.923882, 36.307583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667143, 35.289230, 36.152443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210856, 0.357714, 0.909714,
		0.969647, -0.194393, -0.148309,
		0.123790, 0.913374, -0.387846,
		25.704279, 35.563244, 36.036091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369164, 35.281319, 36.392914>,  <25.617626, 34.923882, 36.307583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369164, 35.281319, 36.392914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058655, 35.531967, 36.420460>,  <25.872349, 35.682358, 36.436985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058655, 35.531967, 36.420460>,  <26.369164, 35.281319, 36.392914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058655, 35.531967, 36.420460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198081, 0.138758, 0.970315,
		0.598468, 0.766869, -0.231836,
		-0.776273, 0.626624, 0.068860,
		25.825773, 35.719955, 36.441116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967649, 35.611984, 36.516033>,  <26.369164, 35.281319, 36.392914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967649, 35.611984, 36.516033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274675, 35.854954, 36.597893>,  <27.458891, 36.000736, 36.647011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274675, 35.854954, 36.597893>,  <26.967649, 35.611984, 36.516033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274675, 35.854954, 36.597893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070131, 0.396954, -0.915155,
		-0.637121, 0.688090, 0.347288,
		0.767566, 0.607420, 0.204652,
		27.504946, 36.037178, 36.659286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822023, 36.413223, 36.468895>,  <26.967649, 35.611984, 36.516033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822023, 36.413223, 36.468895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190475, 36.288792, 36.375298>,  <27.411547, 36.214134, 36.319138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190475, 36.288792, 36.375298>,  <26.822023, 36.413223, 36.468895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190475, 36.288792, 36.375298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097660, 0.397214, -0.912515,
		0.376810, 0.863394, 0.335505,
		0.921128, -0.311080, -0.233993,
		27.466814, 36.195469, 36.305099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062660, 36.973526, 36.063854>,  <26.822023, 36.413223, 36.468895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062660, 36.973526, 36.063854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343262, 36.698528, 35.988762>,  <27.511623, 36.533527, 35.943707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343262, 36.698528, 35.988762>,  <27.062660, 36.973526, 36.063854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343262, 36.698528, 35.988762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101643, 0.357241, -0.928465,
		0.705380, 0.632240, 0.320485,
		0.701503, -0.687496, -0.187727,
		27.553713, 36.492279, 35.932446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524553, 37.342243, 35.724247>,  <27.062660, 36.973526, 36.063854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524553, 37.342243, 35.724247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572369, 36.963657, 35.604301>,  <27.601059, 36.736507, 35.532333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572369, 36.963657, 35.604301>,  <27.524553, 37.342243, 35.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572369, 36.963657, 35.604301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049209, 0.296010, -0.953917,
		0.991609, 0.128787, -0.011189,
		0.119540, -0.946463, -0.299864,
		27.608231, 36.679718, 35.514343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804823, 37.478363, 35.072109>,  <27.524553, 37.342243, 35.724247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804823, 37.478363, 35.072109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679100, 37.098713, 35.064453>,  <27.603666, 36.870922, 35.059860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.679100, 37.098713, 35.064453>,  <27.804823, 37.478363, 35.072109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679100, 37.098713, 35.064453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170608, 0.076311, -0.982379,
		0.933866, -0.305501, -0.185914,
		-0.314305, -0.949129, -0.019143,
		27.584808, 36.813972, 35.058712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013681, 37.232544, 34.424767>,  <27.804823, 37.478363, 35.072109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013681, 37.232544, 34.424767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771255, 36.928886, 34.519745>,  <27.625801, 36.746689, 34.576733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.771255, 36.928886, 34.519745>,  <28.013681, 37.232544, 34.424767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771255, 36.928886, 34.519745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221572, -0.125576, -0.967024,
		0.763933, -0.638689, -0.092099,
		-0.606063, -0.759148, 0.237448,
		27.589437, 36.701141, 34.590981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223614, 36.537914, 34.047287>,  <28.013681, 37.232544, 34.424767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223614, 36.537914, 34.047287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833775, 36.555801, 34.135067>,  <27.599871, 36.566532, 34.187737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833775, 36.555801, 34.135067>,  <28.223614, 36.537914, 34.047287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833775, 36.555801, 34.135067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223774, -0.154722, -0.962282,
		-0.009072, -0.986946, 0.160797,
		-0.974599, 0.044712, 0.219449,
		27.541395, 36.569214, 34.200901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919895, 35.998577, 33.634933>,  <28.223614, 36.537914, 34.047287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919895, 35.998577, 33.634933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600811, 36.204613, 33.760376>,  <27.409361, 36.328232, 33.835640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600811, 36.204613, 33.760376>,  <27.919895, 35.998577, 33.634933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600811, 36.204613, 33.760376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415095, -0.091770, -0.905138,
		-0.437444, -0.852212, 0.287016,
		-0.797708, 0.515086, 0.313604,
		27.361498, 36.359138, 33.854458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341335, 35.572021, 33.574139>,  <27.919895, 35.998577, 33.634933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341335, 35.572021, 33.574139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217890, 35.952419, 33.566559>,  <27.143824, 36.180660, 33.562012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217890, 35.952419, 33.566559>,  <27.341335, 35.572021, 33.574139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217890, 35.952419, 33.566559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406330, -0.149818, -0.901360,
		-0.860032, -0.270472, 0.432655,
		-0.308612, 0.950999, -0.018947,
		27.125305, 36.237720, 33.560875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738186, 35.524132, 33.219921>,  <27.341335, 35.572021, 33.574139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738186, 35.524132, 33.219921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815512, 35.916088, 33.200138>,  <26.861908, 36.151260, 33.188267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815512, 35.916088, 33.200138>,  <26.738186, 35.524132, 33.219921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815512, 35.916088, 33.200138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536914, 0.063462, -0.841247,
		-0.821190, 0.189180, 0.538384,
		0.193314, 0.979890, -0.049459,
		26.873507, 36.210056, 33.185299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146706, 35.854088, 32.740635>,  <26.738186, 35.524132, 33.219921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146706, 35.854088, 32.740635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447823, 36.116756, 32.758911>,  <26.628492, 36.274357, 32.769875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447823, 36.116756, 32.758911>,  <26.146706, 35.854088, 32.740635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447823, 36.116756, 32.758911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260881, 0.361349, -0.895191,
		-0.604355, 0.661974, 0.443334,
		0.752792, 0.656671, 0.045686,
		26.673660, 36.313759, 32.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889507, 36.489197, 32.618027>,  <26.146706, 35.854088, 32.740635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889507, 36.489197, 32.618027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271576, 36.493629, 32.499687>,  <26.500816, 36.496288, 32.428684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271576, 36.493629, 32.499687>,  <25.889507, 36.489197, 32.618027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271576, 36.493629, 32.499687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262628, 0.492986, -0.829452,
		0.136660, 0.869967, 0.473796,
		0.955171, 0.011079, -0.295849,
		26.558126, 36.496952, 32.410934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889229, 37.036140, 32.002937>,  <25.889507, 36.489197, 32.618027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889229, 37.036140, 32.002937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234344, 36.834904, 31.982948>,  <26.441414, 36.714161, 31.970955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234344, 36.834904, 31.982948>,  <25.889229, 37.036140, 32.002937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234344, 36.834904, 31.982948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086741, 0.244686, -0.965715,
		0.498067, 0.828874, 0.254750,
		0.862789, -0.503088, -0.049972,
		26.493181, 36.683979, 31.967957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299044, 37.539837, 31.706692>,  <25.889229, 37.036140, 32.002937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299044, 37.539837, 31.706692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499998, 37.196980, 31.661232>,  <26.620571, 36.991264, 31.633957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499998, 37.196980, 31.661232>,  <26.299044, 37.539837, 31.706692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499998, 37.196980, 31.661232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320864, 0.306870, -0.896034,
		0.802904, 0.413688, 0.429193,
		0.502385, -0.857142, -0.113650,
		26.650713, 36.939838, 31.627136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948505, 37.833103, 31.309626>,  <26.299044, 37.539837, 31.706692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948505, 37.833103, 31.309626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967287, 37.436573, 31.260515>,  <26.978556, 37.198654, 31.231049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967287, 37.436573, 31.260515>,  <26.948505, 37.833103, 31.309626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967287, 37.436573, 31.260515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494644, 0.129859, -0.859339,
		0.867826, -0.020383, 0.496449,
		0.046952, -0.991323, -0.122777,
		26.981373, 37.139175, 31.223682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649164, 37.651127, 31.122538>,  <26.948505, 37.833103, 31.309626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649164, 37.651127, 31.122538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436396, 37.327652, 31.022070>,  <27.308735, 37.133568, 30.961790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436396, 37.327652, 31.022070>,  <27.649164, 37.651127, 31.122538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436396, 37.327652, 31.022070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497095, -0.058076, -0.865751,
		0.685535, -0.585365, 0.432886,
		-0.531920, -0.808687, -0.251168,
		27.276819, 37.085045, 30.946720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200268, 37.182228, 30.858484>,  <27.649164, 37.651127, 31.122538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200268, 37.182228, 30.858484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838572, 37.057289, 30.742008>,  <27.621553, 36.982327, 30.672123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838572, 37.057289, 30.742008>,  <28.200268, 37.182228, 30.858484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838572, 37.057289, 30.742008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377814, -0.267367, -0.886438,
		0.199019, -0.911568, 0.359771,
		-0.904239, -0.312344, -0.291192,
		27.567299, 36.963585, 30.654652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286392, 36.500748, 30.585016>,  <28.200268, 37.182228, 30.858484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286392, 36.500748, 30.585016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961687, 36.653084, 30.407928>,  <27.766865, 36.744488, 30.301676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961687, 36.653084, 30.407928>,  <28.286392, 36.500748, 30.585016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961687, 36.653084, 30.407928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452367, -0.069377, -0.889129,
		-0.369334, -0.922033, -0.115963,
		-0.811761, 0.380843, -0.442721,
		27.718159, 36.767338, 30.275112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075285, 36.057098, 30.053833>,  <28.286392, 36.500748, 30.585016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075285, 36.057098, 30.053833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968616, 36.437965, 29.994156>,  <27.904615, 36.666485, 29.958349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968616, 36.437965, 29.994156>,  <28.075285, 36.057098, 30.053833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968616, 36.437965, 29.994156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382011, -0.037694, -0.923389,
		-0.884847, -0.303232, -0.353688,
		-0.266669, 0.952171, -0.149191,
		27.888617, 36.723618, 29.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983730, 36.064049, 29.258902>,  <28.075285, 36.057098, 30.053833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983730, 36.064049, 29.258902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995920, 36.439308, 29.396852>,  <28.003235, 36.664467, 29.479622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995920, 36.439308, 29.396852>,  <27.983730, 36.064049, 29.258902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995920, 36.439308, 29.396852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521332, 0.279467, -0.806295,
		-0.852810, 0.204368, -0.480572,
		0.030477, 0.938153, 0.344876,
		28.005064, 36.720753, 29.500315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587751, 36.536259, 28.777050>,  <27.983730, 36.064049, 29.258902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587751, 36.536259, 28.777050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894289, 36.705326, 28.970570>,  <28.078213, 36.806767, 29.086681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894289, 36.705326, 28.970570>,  <27.587751, 36.536259, 28.777050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894289, 36.705326, 28.970570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469939, 0.144653, -0.870766,
		-0.438031, 0.894664, -0.087776,
		0.766346, 0.422672, 0.483800,
		28.124193, 36.832127, 29.115709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861374, 37.250164, 28.557770>,  <27.587751, 36.536259, 28.777050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861374, 37.250164, 28.557770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166967, 37.032429, 28.696350>,  <28.350325, 36.901787, 28.779497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166967, 37.032429, 28.696350>,  <27.861374, 37.250164, 28.557770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166967, 37.032429, 28.696350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430615, 0.030268, -0.902028,
		0.480518, 0.838322, 0.257523,
		0.763985, -0.544334, 0.346449,
		28.396162, 36.869129, 28.800285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358055, 37.396938, 29.069399>,  <27.861374, 37.250164, 28.557770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358055, 37.396938, 29.069399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340078, 37.766495, 28.917395>,  <28.329292, 37.988228, 28.826191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340078, 37.766495, 28.917395>,  <28.358055, 37.396938, 29.069399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340078, 37.766495, 28.917395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845823, 0.237602, 0.477628,
		0.531567, -0.299957, -0.792126,
		-0.044943, 0.923889, -0.380011,
		28.326595, 38.043663, 28.803391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021412, 37.161621, 28.844709>,  <28.358055, 37.396938, 29.069399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021412, 37.161621, 28.844709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757740, 37.452084, 28.766548>,  <28.599537, 37.626362, 28.719652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757740, 37.452084, 28.766548>,  <29.021412, 37.161621, 28.844709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757740, 37.452084, 28.766548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741177, 0.671286, -0.005679,
		0.127047, -0.148570, -0.980707,
		-0.659178, 0.726156, -0.195401,
		28.559986, 37.669930, 28.707928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991823, 37.259670, 27.991106>,  <29.021412, 37.161621, 28.844709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991823, 37.259670, 27.991106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910864, 37.542965, 28.261644>,  <28.862288, 37.712940, 28.423967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910864, 37.542965, 28.261644>,  <28.991823, 37.259670, 27.991106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910864, 37.542965, 28.261644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653728, 0.611941, -0.445161,
		-0.729160, 0.352045, -0.586848,
		-0.202399, 0.708232, 0.676345,
		28.850143, 37.755436, 28.464548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494165, 37.589764, 27.474789>,  <28.991823, 37.259670, 27.991106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494165, 37.589764, 27.474789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597591, 37.913918, 27.685091>,  <29.659647, 38.108410, 27.811272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597591, 37.913918, 27.685091>,  <29.494165, 37.589764, 27.474789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597591, 37.913918, 27.685091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940564, -0.335265, 0.054198,
		0.220189, 0.480493, -0.848907,
		0.258567, 0.810385, 0.525756,
		29.675161, 38.157032, 27.842817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963251, 38.025024, 27.090195>,  <29.494165, 37.589764, 27.474789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963251, 38.025024, 27.090195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993263, 38.050407, 27.488258>,  <30.011271, 38.065636, 27.727097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993263, 38.050407, 27.488258>,  <29.963251, 38.025024, 27.090195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993263, 38.050407, 27.488258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842146, -0.538460, -0.029161,
		0.534004, 0.840258, -0.093840,
		0.075032, 0.063455, 0.995160,
		30.015774, 38.069443, 27.786806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640068, 38.221359, 27.386625>,  <29.963251, 38.025024, 27.090195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640068, 38.221359, 27.386625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465805, 37.971146, 27.645519>,  <30.361246, 37.821018, 27.800856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465805, 37.971146, 27.645519>,  <30.640068, 38.221359, 27.386625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465805, 37.971146, 27.645519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826459, -0.562863, 0.012307,
		0.356606, 0.540275, 0.762191,
		-0.435659, -0.625531, 0.647235,
		30.335108, 37.783485, 27.839689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780706, 38.808537, 27.734884>,  <30.640068, 38.221359, 27.386625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780706, 38.808537, 27.734884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836121, 39.002846, 27.389669>,  <30.869370, 39.119431, 27.182541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836121, 39.002846, 27.389669>,  <30.780706, 38.808537, 27.734884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836121, 39.002846, 27.389669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251080, -0.825740, -0.505085,
		-0.958001, 0.286664, 0.007574,
		0.138536, 0.485774, -0.863036,
		30.877682, 39.148579, 27.130758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506603, 38.663750, 27.769348>,  <30.780706, 38.808537, 27.734884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506603, 38.663750, 27.769348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356346, 38.995872, 27.934019>,  <31.266191, 39.195148, 28.032822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356346, 38.995872, 27.934019>,  <31.506603, 38.663750, 27.769348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356346, 38.995872, 27.934019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045789, -0.427040, 0.903073,
		0.925632, 0.358084, 0.122396,
		-0.375643, 0.830309, 0.411678,
		31.243652, 39.244965, 28.057522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966311, 38.833710, 28.319550>,  <31.506603, 38.663750, 27.769348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966311, 38.833710, 28.319550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627808, 39.020782, 28.421627>,  <31.424706, 39.133026, 28.482874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627808, 39.020782, 28.421627>,  <31.966311, 38.833710, 28.319550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627808, 39.020782, 28.421627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144153, -0.260131, 0.954752,
		0.512903, 0.844753, 0.152720,
		-0.846257, 0.467680, 0.255196,
		31.373930, 39.161087, 28.498186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167130, 39.300495, 28.894415>,  <31.966311, 38.833710, 28.319550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167130, 39.300495, 28.894415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770058, 39.281769, 28.938959>,  <31.531815, 39.270535, 28.965687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770058, 39.281769, 28.938959>,  <32.167130, 39.300495, 28.894415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770058, 39.281769, 28.938959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116711, -0.133803, 0.984112,
		-0.031169, 0.989902, 0.138286,
		-0.992677, -0.046814, 0.111362,
		31.472254, 39.267723, 28.972368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926952, 39.656052, 29.519993>,  <32.167130, 39.300495, 28.894415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926952, 39.656052, 29.519993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613157, 39.422047, 29.437689>,  <31.424881, 39.281643, 29.388306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613157, 39.422047, 29.437689>,  <31.926952, 39.656052, 29.519993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613157, 39.422047, 29.437689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044324, -0.383839, 0.922336,
		-0.618558, 0.714441, 0.327047,
		-0.784488, -0.585015, -0.205760,
		31.377811, 39.246544, 29.375961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380791, 39.751606, 30.011700>,  <31.926952, 39.656052, 29.519993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380791, 39.751606, 30.011700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289797, 39.392517, 29.860788>,  <31.235201, 39.177063, 29.770241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289797, 39.392517, 29.860788>,  <31.380791, 39.751606, 30.011700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289797, 39.392517, 29.860788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084236, -0.404128, 0.910816,
		-0.970131, 0.175418, 0.167554,
		-0.227487, -0.897725, -0.377280,
		31.221550, 39.123199, 29.747604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992764, 39.443478, 30.577185>,  <31.380791, 39.751606, 30.011700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992764, 39.443478, 30.577185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094122, 39.127701, 30.353550>,  <31.154938, 38.938236, 30.219370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094122, 39.127701, 30.353550>,  <30.992764, 39.443478, 30.577185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094122, 39.127701, 30.353550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162662, -0.604492, 0.779828,
		-0.953589, -0.106663, -0.281587,
		0.253396, -0.789438, -0.559087,
		31.170141, 38.890869, 30.185823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519085, 38.803154, 30.748962>,  <30.992764, 39.443478, 30.577185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519085, 38.803154, 30.748962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845322, 38.661404, 30.565996>,  <31.041063, 38.576355, 30.456217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845322, 38.661404, 30.565996>,  <30.519085, 38.803154, 30.748962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845322, 38.661404, 30.565996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101690, -0.690430, 0.716216,
		-0.569623, -0.630654, -0.527072,
		0.815591, -0.354375, -0.457415,
		31.089998, 38.555092, 30.428772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398836, 38.087250, 30.810991>,  <30.519085, 38.803154, 30.748962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398836, 38.087250, 30.810991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792822, 38.131298, 30.757750>,  <31.029213, 38.157726, 30.725805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792822, 38.131298, 30.757750>,  <30.398836, 38.087250, 30.810991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792822, 38.131298, 30.757750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172632, -0.598684, 0.782161,
		0.006444, -0.793379, -0.608693,
		0.984965, 0.110120, -0.133104,
		31.088312, 38.164333, 30.717817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623652, 37.463020, 30.908758>,  <30.398836, 38.087250, 30.810991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623652, 37.463020, 30.908758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944666, 37.696625, 30.957521>,  <31.137274, 37.836788, 30.986780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944666, 37.696625, 30.957521>,  <30.623652, 37.463020, 30.908758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944666, 37.696625, 30.957521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191115, -0.445227, 0.874785,
		0.565165, -0.678748, -0.468924,
		0.802536, 0.584016, 0.121908,
		31.185427, 37.871830, 30.994093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047400, 36.814819, 31.098608>,  <30.623652, 37.463020, 30.908758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047400, 36.814819, 31.098608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183119, 37.165245, 31.235653>,  <31.264549, 37.375500, 31.317881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183119, 37.165245, 31.235653>,  <31.047400, 36.814819, 31.098608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183119, 37.165245, 31.235653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184471, -0.419113, 0.888996,
		0.922414, -0.238431, -0.303813,
		0.339296, 0.876068, 0.342612,
		31.284908, 37.428066, 31.338436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527685, 36.602314, 31.421251>,  <31.047400, 36.814819, 31.098608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527685, 36.602314, 31.421251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447750, 36.970013, 31.556931>,  <31.399790, 37.190632, 31.638338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447750, 36.970013, 31.556931>,  <31.527685, 36.602314, 31.421251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447750, 36.970013, 31.556931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065763, -0.357984, 0.931409,
		0.977619, 0.163824, 0.131991,
		-0.199838, 0.919243, 0.339199,
		31.387798, 37.245785, 31.658689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921343, 36.577286, 31.999590>,  <31.527685, 36.602314, 31.421251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921343, 36.577286, 31.999590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646349, 36.864754, 32.041306>,  <31.481354, 37.037235, 32.066334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.646349, 36.864754, 32.041306>,  <31.921343, 36.577286, 31.999590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646349, 36.864754, 32.041306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142186, -0.274037, 0.951150,
		0.712145, 0.639071, 0.290581,
		-0.687483, 0.718673, 0.104287,
		31.440104, 37.080357, 32.072590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134579, 37.034737, 32.578938>,  <31.921343, 36.577286, 31.999590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134579, 37.034737, 32.578938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737804, 37.078129, 32.552746>,  <31.499739, 37.104164, 32.537029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737804, 37.078129, 32.552746>,  <32.134579, 37.034737, 32.578938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737804, 37.078129, 32.552746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075232, -0.088410, 0.993239,
		0.101958, 0.990159, 0.095859,
		-0.991940, 0.108480, -0.065478,
		31.440222, 37.110672, 32.533104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890074, 37.403046, 33.226177>,  <32.134579, 37.034737, 32.578938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890074, 37.403046, 33.226177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551037, 37.241199, 33.088852>,  <31.347614, 37.144093, 33.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551037, 37.241199, 33.088852>,  <31.890074, 37.403046, 33.226177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551037, 37.241199, 33.088852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326413, -0.112543, 0.938503,
		-0.418375, 0.907533, -0.036682,
		-0.847595, -0.404620, -0.343316,
		31.296759, 37.119812, 32.985859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349291, 37.494705, 33.694599>,  <31.890074, 37.403046, 33.226177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349291, 37.494705, 33.694599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159634, 37.226028, 33.466911>,  <31.045839, 37.064823, 33.330299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159634, 37.226028, 33.466911>,  <31.349291, 37.494705, 33.694599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159634, 37.226028, 33.466911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529043, -0.299430, 0.794013,
		-0.703776, 0.677618, -0.213383,
		-0.474144, -0.671696, -0.569220,
		31.017391, 37.024521, 33.296146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692293, 37.620300, 33.875252>,  <31.349291, 37.494705, 33.694599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692293, 37.620300, 33.875252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735901, 37.248692, 33.733807>,  <30.762066, 37.025726, 33.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735901, 37.248692, 33.733807>,  <30.692293, 37.620300, 33.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735901, 37.248692, 33.733807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438212, -0.364216, 0.821777,
		-0.892236, 0.065366, -0.446813,
		0.109020, -0.929017, -0.353611,
		30.768606, 36.969986, 33.627724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158070, 37.304527, 34.197975>,  <30.692293, 37.620300, 33.875252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158070, 37.304527, 34.197975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329350, 36.974705, 34.050060>,  <30.432117, 36.776810, 33.961311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329350, 36.974705, 34.050060>,  <30.158070, 37.304527, 34.197975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329350, 36.974705, 34.050060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252061, -0.501942, 0.827357,
		-0.867820, -0.261062, -0.422770,
		0.428197, -0.824561, -0.369792,
		30.457809, 36.727337, 33.939121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663092, 36.798286, 34.162182>,  <30.158070, 37.304527, 34.197975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663092, 36.798286, 34.162182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005777, 36.592209, 34.152225>,  <30.211390, 36.468563, 34.146252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005777, 36.592209, 34.152225>,  <29.663092, 36.798286, 34.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005777, 36.592209, 34.152225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226676, -0.419402, 0.879045,
		-0.463320, -0.747445, -0.476089,
		0.856710, -0.515197, -0.024890,
		30.262791, 36.437653, 34.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551750, 36.092171, 34.370193>,  <29.663092, 36.798286, 34.162182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551750, 36.092171, 34.370193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949039, 36.115532, 34.410385>,  <30.187412, 36.129551, 34.434498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949039, 36.115532, 34.410385>,  <29.551750, 36.092171, 34.370193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949039, 36.115532, 34.410385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056049, -0.516641, 0.854366,
		0.101810, -0.854208, -0.509866,
		0.993224, 0.058405, 0.100476,
		30.247007, 36.133053, 34.440529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773464, 35.480469, 34.723236>,  <29.551750, 36.092171, 34.370193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773464, 35.480469, 34.723236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090057, 35.707443, 34.814068>,  <30.280014, 35.843628, 34.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090057, 35.707443, 34.814068>,  <29.773464, 35.480469, 34.723236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090057, 35.707443, 34.814068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096747, -0.250539, 0.963260,
		0.603486, -0.784373, -0.143399,
		0.791482, 0.567441, 0.227082,
		30.327501, 35.877674, 34.882191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336645, 35.072010, 35.021549>,  <29.773464, 35.480469, 34.723236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336645, 35.072010, 35.021549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414083, 35.448254, 35.133106>,  <30.460546, 35.674000, 35.200043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414083, 35.448254, 35.133106>,  <30.336645, 35.072010, 35.021549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414083, 35.448254, 35.133106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133244, -0.306846, 0.942386,
		0.971992, -0.145279, -0.184733,
		0.193593, 0.940606, 0.278894,
		30.472162, 35.730434, 35.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842800, 34.966103, 35.514030>,  <30.336645, 35.072010, 35.021549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842800, 34.966103, 35.514030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697496, 35.336082, 35.558784>,  <30.610313, 35.558071, 35.585636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697496, 35.336082, 35.558784>,  <30.842800, 34.966103, 35.514030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697496, 35.336082, 35.558784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170531, -0.184064, 0.968008,
		0.915948, 0.332560, 0.224596,
		-0.363261, 0.924945, 0.111881,
		30.588518, 35.613567, 35.592350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231272, 35.358200, 35.992138>,  <30.842800, 34.966103, 35.514030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231272, 35.358200, 35.992138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848423, 35.473728, 36.001099>,  <30.618713, 35.543045, 36.006477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848423, 35.473728, 36.001099>,  <31.231272, 35.358200, 35.992138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848423, 35.473728, 36.001099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056004, -0.260357, 0.963887,
		0.284225, 0.921301, 0.265368,
		-0.957120, 0.288823, 0.022404,
		30.561287, 35.560375, 36.007820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611097, 34.706944, 35.716343>,  <31.231272, 35.358200, 35.992138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611097, 34.706944, 35.716343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285578, 34.514664, 35.585709>,  <31.090265, 34.399296, 35.507328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285578, 34.514664, 35.585709>,  <31.611097, 34.706944, 35.716343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285578, 34.514664, 35.585709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141138, 0.381664, -0.913462,
		0.563748, -0.789468, -0.242752,
		-0.813798, -0.480701, -0.326586,
		31.041439, 34.370453, 35.487732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722090, 34.266800, 35.170692>,  <31.611097, 34.706944, 35.716343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722090, 34.266800, 35.170692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334614, 34.360710, 35.138386>,  <31.102129, 34.417057, 35.119003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334614, 34.360710, 35.138386>,  <31.722090, 34.266800, 35.170692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334614, 34.360710, 35.138386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143931, 0.265956, -0.953180,
		-0.202307, -0.934958, -0.291420,
		-0.968688, 0.234780, -0.080764,
		31.044008, 34.431145, 35.114155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014202, 34.333557, 34.448280>,  <31.722090, 34.266800, 35.170692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014202, 34.333557, 34.448280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204113, 34.667385, 34.336506>,  <32.318058, 34.867683, 34.269440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204113, 34.667385, 34.336506>,  <32.014202, 34.333557, 34.448280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204113, 34.667385, 34.336506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198884, 0.411025, 0.889665,
		0.857342, -0.366813, 0.361126,
		0.474773, 0.834570, -0.279436,
		32.346546, 34.917755, 34.252674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572140, 34.531162, 34.861916>,  <32.014202, 34.333557, 34.448280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572140, 34.531162, 34.861916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452946, 34.886227, 34.721478>,  <32.381432, 35.099266, 34.637215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452946, 34.886227, 34.721478>,  <32.572140, 34.531162, 34.861916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452946, 34.886227, 34.721478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049906, 0.352810, 0.934363,
		0.953266, 0.295946, -0.060832,
		-0.297983, 0.887660, -0.351091,
		32.363552, 35.152523, 34.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049908, 35.090477, 35.057533>,  <32.572140, 34.531162, 34.861916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049908, 35.090477, 35.057533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682690, 35.242641, 35.012848>,  <32.462357, 35.333939, 34.986038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.682690, 35.242641, 35.012848>,  <33.049908, 35.090477, 35.057533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682690, 35.242641, 35.012848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048491, 0.387376, 0.920646,
		0.393495, 0.839779, -0.374076,
		-0.918047, 0.380408, -0.111709,
		32.407276, 35.356766, 34.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063629, 35.808392, 35.110111>,  <33.049908, 35.090477, 35.057533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063629, 35.808392, 35.110111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718670, 35.651001, 35.237514>,  <32.511696, 35.556568, 35.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718670, 35.651001, 35.237514>,  <33.063629, 35.808392, 35.110111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718670, 35.651001, 35.237514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132369, 0.432017, 0.892098,
		-0.488620, 0.811504, -0.320486,
		-0.862397, -0.393475, 0.318511,
		32.459949, 35.532959, 35.333069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498993, 36.390556, 35.299568>,  <33.063629, 35.808392, 35.110111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498993, 36.390556, 35.299568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533051, 36.051823, 35.509567>,  <32.553486, 35.848583, 35.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533051, 36.051823, 35.509567>,  <32.498993, 36.390556, 35.299568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533051, 36.051823, 35.509567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134161, 0.531853, 0.836142,
		-0.987295, -0.000761, 0.158898,
		0.085147, -0.846836, 0.524994,
		32.558594, 35.797771, 35.667065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037838, 36.462746, 35.917397>,  <32.498993, 36.390556, 35.299568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037838, 36.462746, 35.917397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343700, 36.210644, 35.971180>,  <32.527218, 36.059383, 36.003448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343700, 36.210644, 35.971180>,  <32.037838, 36.462746, 35.917397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343700, 36.210644, 35.971180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252354, 0.484824, 0.837415,
		-0.592973, -0.606404, 0.529771,
		0.764657, -0.630254, 0.134460,
		32.573097, 36.021568, 36.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135605, 36.373268, 36.594486>,  <32.037838, 36.462746, 35.917397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135605, 36.373268, 36.594486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499847, 36.308376, 36.442444>,  <32.718391, 36.269444, 36.351219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499847, 36.308376, 36.442444>,  <32.135605, 36.373268, 36.594486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499847, 36.308376, 36.442444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389702, 0.643259, 0.659052,
		0.137591, -0.748264, 0.648975,
		0.910605, -0.162228, -0.380107,
		32.773029, 36.259708, 36.328411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522144, 36.035885, 37.084305>,  <32.135605, 36.373268, 36.594486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522144, 36.035885, 37.084305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781116, 36.204945, 36.830627>,  <32.936501, 36.306381, 36.678421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781116, 36.204945, 36.830627>,  <32.522144, 36.035885, 37.084305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781116, 36.204945, 36.830627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469412, 0.434419, 0.768722,
		0.600405, -0.795392, 0.082860,
		0.647431, 0.422649, -0.634193,
		32.975346, 36.331738, 36.640369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207218, 35.848648, 37.382298>,  <32.522144, 36.035885, 37.084305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207218, 35.848648, 37.382298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245594, 36.179466, 37.160744>,  <33.268620, 36.377956, 37.027809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245594, 36.179466, 37.160744>,  <33.207218, 35.848648, 37.382298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245594, 36.179466, 37.160744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437081, 0.464938, 0.769931,
		0.894291, -0.315958, -0.316882,
		0.095935, 0.827045, -0.553889,
		33.274376, 36.427578, 36.994576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922695, 36.011665, 37.446049>,  <33.207218, 35.848648, 37.382298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922695, 36.011665, 37.446049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743095, 36.351715, 37.335999>,  <33.635334, 36.555744, 37.269970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743095, 36.351715, 37.335999>,  <33.922695, 36.011665, 37.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743095, 36.351715, 37.335999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586052, 0.512610, 0.627515,
		0.674495, 0.120516, -0.728376,
		-0.448998, 0.850122, -0.275124,
		33.608395, 36.606750, 37.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439781, 36.393612, 37.322906>,  <33.922695, 36.011665, 37.446049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439781, 36.393612, 37.322906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130703, 36.639740, 37.385303>,  <33.945255, 36.787415, 37.422741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130703, 36.639740, 37.385303>,  <34.439781, 36.393612, 37.322906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130703, 36.639740, 37.385303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579982, 0.584450, 0.567485,
		0.258011, 0.528965, -0.808471,
		-0.772691, 0.615316, 0.155996,
		33.898895, 36.824333, 37.432102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757271, 36.970230, 37.241562>,  <34.439781, 36.393612, 37.322906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757271, 36.970230, 37.241562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434464, 37.077164, 37.452179>,  <34.240780, 37.141323, 37.578548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434464, 37.077164, 37.452179>,  <34.757271, 36.970230, 37.241562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434464, 37.077164, 37.452179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587297, 0.456397, 0.668419,
		-0.061623, 0.848667, -0.525326,
		-0.807022, 0.267333, 0.526543,
		34.192356, 37.157364, 37.610142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722561, 37.712101, 37.198421>,  <34.757271, 36.970230, 37.241562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722561, 37.712101, 37.198421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503780, 37.628178, 37.522602>,  <34.372513, 37.577824, 37.717110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503780, 37.628178, 37.522602>,  <34.722561, 37.712101, 37.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503780, 37.628178, 37.522602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601940, 0.574245, 0.554897,
		-0.581819, 0.791342, -0.187790,
		-0.546951, -0.209811, 0.810447,
		34.339695, 37.565235, 37.765736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722694, 38.301987, 37.565853>,  <34.722561, 37.712101, 37.198421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722694, 38.301987, 37.565853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609188, 38.035130, 37.841358>,  <34.541084, 37.875015, 38.006660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609188, 38.035130, 37.841358>,  <34.722694, 38.301987, 37.565853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609188, 38.035130, 37.841358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669109, 0.376745, 0.640591,
		-0.686856, 0.642633, 0.339487,
		-0.283765, -0.667147, 0.688761,
		34.524059, 37.834984, 38.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796230, 38.700172, 38.198456>,  <34.722694, 38.301987, 37.565853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796230, 38.700172, 38.198456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760036, 38.324570, 38.331169>,  <34.738319, 38.099209, 38.410797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760036, 38.324570, 38.331169>,  <34.796230, 38.700172, 38.198456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760036, 38.324570, 38.331169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693649, 0.179631, 0.697555,
		-0.714607, 0.293261, 0.635086,
		-0.090485, -0.939005, 0.331786,
		34.732891, 38.042870, 38.430706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684593, 38.627670, 38.944508>,  <34.796230, 38.700172, 38.198456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684593, 38.627670, 38.944508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848270, 38.278996, 38.836643>,  <34.946476, 38.069790, 38.771923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848270, 38.278996, 38.836643>,  <34.684593, 38.627670, 38.944508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848270, 38.278996, 38.836643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438640, -0.071224, 0.895836,
		-0.800097, -0.484856, 0.353213,
		0.409194, -0.871689, -0.269664,
		34.971027, 38.017490, 38.755745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622295, 38.324360, 39.536858>,  <34.684593, 38.627670, 38.944508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622295, 38.324360, 39.536858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880558, 38.093891, 39.336395>,  <35.035515, 37.955608, 39.216118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880558, 38.093891, 39.336395>,  <34.622295, 38.324360, 39.536858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880558, 38.093891, 39.336395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436779, -0.259679, 0.861273,
		-0.626382, -0.774978, 0.083997,
		0.645655, -0.576174, -0.501152,
		35.074253, 37.921040, 39.186050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686317, 37.783733, 39.947853>,  <34.622295, 38.324360, 39.536858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686317, 37.783733, 39.947853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992481, 37.714832, 39.699829>,  <35.176178, 37.673492, 39.551014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992481, 37.714832, 39.699829>,  <34.686317, 37.783733, 39.947853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992481, 37.714832, 39.699829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538387, -0.356434, 0.763606,
		-0.352523, -0.918310, -0.180097,
		0.765419, -0.172227, -0.620057,
		35.222103, 37.663158, 39.513809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902012, 37.195942, 40.171230>,  <34.686317, 37.783733, 39.947853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902012, 37.195942, 40.171230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211624, 37.366158, 39.983700>,  <35.397392, 37.468288, 39.871181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211624, 37.366158, 39.983700>,  <34.902012, 37.195942, 40.171230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211624, 37.366158, 39.983700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581655, -0.185396, 0.792026,
		0.250121, -0.885744, -0.391020,
		0.774026, 0.425541, -0.468826,
		35.443832, 37.493820, 39.843052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437710, 36.691551, 40.249943>,  <34.902012, 37.195942, 40.171230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437710, 36.691551, 40.249943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606911, 37.047047, 40.179260>,  <35.708431, 37.260342, 40.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606911, 37.047047, 40.179260>,  <35.437710, 36.691551, 40.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606911, 37.047047, 40.179260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416455, -0.017484, 0.908988,
		0.804759, -0.458090, -0.377513,
		0.422999, 0.888734, -0.176703,
		35.733810, 37.313667, 40.126251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175430, 36.684711, 40.489754>,  <35.437710, 36.691551, 40.249943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175430, 36.684711, 40.489754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063892, 37.068008, 40.464378>,  <35.996971, 37.297985, 40.449154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063892, 37.068008, 40.464378>,  <36.175430, 36.684711, 40.489754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063892, 37.068008, 40.464378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377638, 0.170146, 0.910187,
		0.882970, 0.229843, -0.409312,
		-0.278843, 0.958239, -0.063436,
		35.980240, 37.355480, 40.445347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792717, 37.097351, 40.536930>,  <36.175430, 36.684711, 40.489754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792717, 37.097351, 40.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474205, 37.313717, 40.645264>,  <36.283100, 37.443539, 40.710262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474205, 37.313717, 40.645264>,  <36.792717, 37.097351, 40.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474205, 37.313717, 40.645264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458965, 0.248550, 0.852980,
		0.394077, 0.803511, -0.446177,
		-0.796276, 0.540919, 0.270835,
		36.235321, 37.475994, 40.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091190, 37.571007, 40.921501>,  <36.792717, 37.097351, 40.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091190, 37.571007, 40.921501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711632, 37.605106, 41.043041>,  <36.483894, 37.625565, 41.115963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711632, 37.605106, 41.043041>,  <37.091190, 37.571007, 40.921501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711632, 37.605106, 41.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311127, 0.413864, 0.855521,
		-0.052821, 0.906339, -0.419238,
		-0.948900, 0.085246, 0.303847,
		36.426964, 37.630680, 41.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092197, 38.188839, 41.294876>,  <37.091190, 37.571007, 40.921501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092197, 38.188839, 41.294876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774422, 37.986881, 41.429901>,  <36.583755, 37.865707, 41.510918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774422, 37.986881, 41.429901>,  <37.092197, 38.188839, 41.294876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774422, 37.986881, 41.429901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120616, 0.413577, 0.902444,
		-0.595248, 0.757652, -0.267663,
		-0.794438, -0.504894, 0.337565,
		36.536091, 37.835415, 41.531170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754356, 38.638931, 41.762344>,  <37.092197, 38.188839, 41.294876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754356, 38.638931, 41.762344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622047, 38.277241, 41.870392>,  <36.542664, 38.060226, 41.935223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622047, 38.277241, 41.870392>,  <36.754356, 38.638931, 41.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622047, 38.277241, 41.870392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035770, 0.274014, 0.961060,
		-0.943034, 0.327550, -0.058291,
		-0.330768, -0.904227, 0.270121,
		36.522816, 38.005974, 41.951427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122585, 38.707722, 42.243538>,  <36.754356, 38.638931, 41.762344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122585, 38.707722, 42.243538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291893, 38.354206, 42.323296>,  <36.393478, 38.142097, 42.371151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291893, 38.354206, 42.323296>,  <36.122585, 38.707722, 42.243538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291893, 38.354206, 42.323296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086537, 0.258511, 0.962125,
		-0.901861, -0.389985, 0.185901,
		0.423272, -0.883789, 0.199393,
		36.418873, 38.089069, 42.383114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848709, 38.601532, 42.880341>,  <36.122585, 38.707722, 42.243538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848709, 38.601532, 42.880341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158306, 38.348419, 42.871185>,  <36.344063, 38.196552, 42.865692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.158306, 38.348419, 42.871185>,  <35.848709, 38.601532, 42.880341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158306, 38.348419, 42.871185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018546, -0.058792, 0.998098,
		-0.632928, -0.772092, -0.057240,
		0.773988, -0.632786, -0.022892,
		36.390503, 38.158585, 42.864319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737720, 38.167274, 43.431099>,  <35.848709, 38.601532, 42.880341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737720, 38.167274, 43.431099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120380, 38.076168, 43.358498>,  <36.349976, 38.021503, 43.314938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120380, 38.076168, 43.358498>,  <35.737720, 38.167274, 43.431099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120380, 38.076168, 43.358498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180657, -0.024750, 0.983235,
		-0.228442, -0.973401, 0.017471,
		0.956649, -0.227769, -0.181506,
		36.407375, 38.007839, 43.304047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824516, 37.631554, 43.868057>,  <35.737720, 38.167274, 43.431099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824516, 37.631554, 43.868057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194061, 37.753887, 43.776024>,  <36.415791, 37.827290, 43.720802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194061, 37.753887, 43.776024>,  <35.824516, 37.631554, 43.868057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194061, 37.753887, 43.776024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245215, -0.011446, 0.969401,
		0.293846, -0.952015, -0.085571,
		0.923864, 0.305838, -0.230085,
		36.471222, 37.845638, 43.706997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202339, 37.268162, 44.268799>,  <35.824516, 37.631554, 43.868057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202339, 37.268162, 44.268799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451050, 37.557930, 44.149734>,  <36.600277, 37.731792, 44.078297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451050, 37.557930, 44.149734>,  <36.202339, 37.268162, 44.268799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451050, 37.557930, 44.149734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355806, 0.077296, 0.931358,
		0.697706, -0.685007, -0.209694,
		0.621779, 0.724424, -0.297660,
		36.637585, 37.775257, 44.060436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797855, 37.061184, 44.459702>,  <36.202339, 37.268162, 44.268799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797855, 37.061184, 44.459702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815380, 37.459370, 44.425915>,  <36.825893, 37.698280, 44.405643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815380, 37.459370, 44.425915>,  <36.797855, 37.061184, 44.459702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815380, 37.459370, 44.425915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524041, 0.049086, 0.850278,
		0.850566, -0.081512, -0.519513,
		0.043807, 0.995463, -0.084466,
		36.828522, 37.758007, 44.400574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453598, 37.165302, 44.599800>,  <36.797855, 37.061184, 44.459702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453598, 37.165302, 44.599800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306602, 37.533230, 44.654774>,  <37.218403, 37.753986, 44.687756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306602, 37.533230, 44.654774>,  <37.453598, 37.165302, 44.599800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306602, 37.533230, 44.654774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572113, 0.107080, 0.813155,
		0.733236, 0.377455, -0.565590,
		-0.367493, 0.919816, 0.137432,
		37.196354, 37.809174, 44.696003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022697, 37.674053, 44.733665>,  <37.453598, 37.165302, 44.599800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022697, 37.674053, 44.733665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701057, 37.837582, 44.906307>,  <37.508072, 37.935699, 45.009892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701057, 37.837582, 44.906307>,  <38.022697, 37.674053, 44.733665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701057, 37.837582, 44.906307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558049, 0.268805, 0.785064,
		0.204931, 0.872130, -0.444288,
		-0.804105, 0.408819, 0.431605,
		37.459827, 37.960228, 45.035789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160965, 38.427258, 44.886059>,  <38.022697, 37.674053, 44.733665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160965, 38.427258, 44.886059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852276, 38.308002, 45.110756>,  <37.667061, 38.236450, 45.245575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852276, 38.308002, 45.110756>,  <38.160965, 38.427258, 44.886059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852276, 38.308002, 45.110756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438394, 0.390509, 0.809514,
		-0.460710, 0.870988, -0.170664,
		-0.771723, -0.298133, 0.561747,
		37.620758, 38.218563, 45.279282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268185, 38.960869, 45.425297>,  <38.160965, 38.427258, 44.886059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268185, 38.960869, 45.425297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011837, 38.691784, 45.573212>,  <37.858028, 38.530331, 45.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011837, 38.691784, 45.573212>,  <38.268185, 38.960869, 45.425297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011837, 38.691784, 45.573212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373542, 0.147551, 0.915803,
		-0.670639, 0.725038, 0.156728,
		-0.640867, -0.672717, 0.369786,
		37.819576, 38.489967, 45.684147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829964, 39.342705, 45.910118>,  <38.268185, 38.960869, 45.425297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829964, 39.342705, 45.910118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842861, 38.959511, 46.024124>,  <37.850601, 38.729595, 46.092529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842861, 38.959511, 46.024124>,  <37.829964, 39.342705, 45.910118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842861, 38.959511, 46.024124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389980, 0.274619, 0.878920,
		-0.920259, 0.082812, 0.382447,
		0.032242, -0.957980, 0.285016,
		37.852535, 38.672115, 46.109631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739918, 39.300968, 46.633327>,  <37.829964, 39.342705, 45.910118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739918, 39.300968, 46.633327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905945, 38.942455, 46.570854>,  <38.005562, 38.727348, 46.533371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905945, 38.942455, 46.570854>,  <37.739918, 39.300968, 46.633327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905945, 38.942455, 46.570854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371786, 0.010417, 0.928260,
		-0.830357, -0.443360, 0.337549,
		0.415070, -0.896283, -0.156186,
		38.030464, 38.673569, 46.523998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522232, 38.973473, 47.156239>,  <37.739918, 39.300968, 46.633327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522232, 38.973473, 47.156239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830215, 38.756687, 47.021515>,  <38.015007, 38.626617, 46.940681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830215, 38.756687, 47.021515>,  <37.522232, 38.973473, 47.156239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830215, 38.756687, 47.021515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420781, 0.034433, 0.906509,
		-0.479696, -0.839697, 0.254560,
		0.769958, -0.541962, -0.336811,
		38.061203, 38.594097, 46.920471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623615, 38.586697, 47.672859>,  <37.522232, 38.973473, 47.156239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623615, 38.586697, 47.672859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963890, 38.559906, 47.464302>,  <38.168056, 38.543831, 47.339169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963890, 38.559906, 47.464302>,  <37.623615, 38.586697, 47.672859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963890, 38.559906, 47.464302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514681, -0.095666, 0.852028,
		-0.106950, -0.993158, -0.046907,
		0.850685, -0.066982, -0.521391,
		38.219097, 38.539814, 47.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969551, 38.117863, 48.058594>,  <37.623615, 38.586697, 47.672859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969551, 38.117863, 48.058594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253033, 38.286732, 47.832493>,  <38.423122, 38.388054, 47.696831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253033, 38.286732, 47.832493>,  <37.969551, 38.117863, 48.058594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253033, 38.286732, 47.832493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662398, -0.122399, 0.739086,
		0.242833, -0.898216, -0.366389,
		0.708704, 0.422169, -0.565254,
		38.465645, 38.413383, 47.662918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600677, 37.767128, 48.199005>,  <37.969551, 38.117863, 48.058594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600677, 37.767128, 48.199005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716206, 38.135818, 48.095463>,  <38.785522, 38.357033, 48.033337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716206, 38.135818, 48.095463>,  <38.600677, 37.767128, 48.199005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716206, 38.135818, 48.095463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632572, 0.019226, 0.774263,
		0.718634, -0.387367, -0.577505,
		0.288821, 0.921725, -0.258854,
		38.802853, 38.412334, 48.017807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383110, 37.783119, 48.242622>,  <38.600677, 37.767128, 48.199005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383110, 37.783119, 48.242622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245487, 38.158440, 48.256527>,  <39.162914, 38.383633, 48.264870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245487, 38.158440, 48.256527>,  <39.383110, 37.783119, 48.242622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245487, 38.158440, 48.256527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531432, 0.164078, 0.831059,
		0.774083, 0.304405, -0.555098,
		-0.344058, 0.938305, 0.034761,
		39.142269, 38.439930, 48.266956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985794, 38.189606, 48.284039>,  <39.383110, 37.783119, 48.242622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985794, 38.189606, 48.284039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704044, 38.430706, 48.433998>,  <39.534992, 38.575367, 48.523972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704044, 38.430706, 48.433998>,  <39.985794, 38.189606, 48.284039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704044, 38.430706, 48.433998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666128, 0.378849, 0.642454,
		0.245209, 0.702259, -0.668360,
		-0.704376, 0.602749, 0.374897,
		39.492733, 38.611530, 48.546467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389687, 38.756771, 48.676479>,  <39.985794, 38.189606, 48.284039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389687, 38.756771, 48.676479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014233, 38.808754, 48.804276>,  <39.788960, 38.839943, 48.880955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014233, 38.808754, 48.804276>,  <40.389687, 38.756771, 48.676479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014233, 38.808754, 48.804276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341777, 0.475122, 0.810832,
		-0.046422, 0.870270, -0.490383,
		-0.938634, 0.129961, 0.319494,
		39.732643, 38.847744, 48.900124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294243, 39.458118, 48.871361>,  <40.389687, 38.756771, 48.676479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294243, 39.458118, 48.871361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014149, 39.254421, 49.071495>,  <39.846092, 39.132202, 49.191578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014149, 39.254421, 49.071495>,  <40.294243, 39.458118, 48.871361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014149, 39.254421, 49.071495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216322, 0.516546, 0.828484,
		-0.680347, 0.688370, -0.251544,
		-0.700237, -0.509242, 0.500340,
		39.804077, 39.101650, 49.221596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999062, 39.984207, 49.419319>,  <40.294243, 39.458118, 48.871361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999062, 39.984207, 49.419319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861267, 39.625370, 49.529991>,  <39.778591, 39.410069, 49.596394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861267, 39.625370, 49.529991>,  <39.999062, 39.984207, 49.419319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861267, 39.625370, 49.529991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145143, 0.240282, 0.959791,
		-0.927502, 0.370796, 0.047432,
		-0.344490, -0.897092, 0.276680,
		39.757919, 39.356243, 49.612995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644592, 40.091072, 49.940147>,  <39.999062, 39.984207, 49.419319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644592, 40.091072, 49.940147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757999, 39.709770, 49.981956>,  <39.826042, 39.480988, 50.007042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757999, 39.709770, 49.981956>,  <39.644592, 40.091072, 49.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757999, 39.709770, 49.981956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065054, 0.089623, 0.993849,
		-0.956758, -0.288571, -0.036603,
		0.283516, -0.953255, 0.104521,
		39.843056, 39.423794, 50.013313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684467, 39.540051, 50.468590>,  <39.644592, 40.091072, 49.940147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684467, 39.540051, 50.468590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637478, 39.149921, 50.543373>,  <39.609283, 38.915844, 50.588245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637478, 39.149921, 50.543373>,  <39.684467, 39.540051, 50.468590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637478, 39.149921, 50.543373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053884, 0.194247, 0.979472,
		-0.991613, 0.104986, -0.075373,
		-0.117472, -0.975319, 0.186960,
		39.602238, 38.857327, 50.599461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118073, 39.392284, 50.901825>,  <39.684467, 39.540051, 50.468590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118073, 39.392284, 50.901825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325195, 39.057587, 50.973080>,  <39.449471, 38.856770, 51.015835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325195, 39.057587, 50.973080>,  <39.118073, 39.392284, 50.901825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325195, 39.057587, 50.973080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021355, 0.195525, 0.980466,
		-0.855230, -0.511498, 0.083376,
		0.517809, -0.836744, 0.178142,
		39.480537, 38.806564, 51.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831944, 38.868778, 51.395638>,  <39.118073, 39.392284, 50.901825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831944, 38.868778, 51.395638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231590, 38.883926, 51.388435>,  <39.471378, 38.893013, 51.384113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231590, 38.883926, 51.388435>,  <38.831944, 38.868778, 51.395638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231590, 38.883926, 51.388435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004412, 0.521940, 0.852971,
		0.041695, -0.852141, 0.521648,
		0.999121, 0.037866, -0.018002,
		39.531326, 38.895287, 51.383034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279160, 38.527863, 51.958469>,  <38.831944, 38.868778, 51.395638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279160, 38.527863, 51.958469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510639, 38.823513, 51.820602>,  <39.649529, 39.000904, 51.737881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510639, 38.823513, 51.820602>,  <39.279160, 38.527863, 51.958469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510639, 38.823513, 51.820602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169843, 0.304130, 0.937368,
		0.797659, -0.600994, 0.050464,
		0.578700, 0.739129, -0.344667,
		39.684250, 39.045250, 51.717201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642643, 38.408962, 52.517651>,  <39.279160, 38.527863, 51.958469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642643, 38.408962, 52.517651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662441, 38.127880, 52.801552>,  <39.674320, 37.959229, 52.971893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662441, 38.127880, 52.801552>,  <39.642643, 38.408962, 52.517651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662441, 38.127880, 52.801552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204191, -0.702735, -0.681520,
		0.977679, -0.111192, -0.178271,
		0.049498, -0.702709, 0.709753,
		39.677292, 37.917068, 53.014477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115292, 37.837799, 52.325687>,  <39.642643, 38.408962, 52.517651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115292, 37.837799, 52.325687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793438, 37.742683, 52.543320>,  <39.600327, 37.685616, 52.673901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793438, 37.742683, 52.543320>,  <40.115292, 37.837799, 52.325687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793438, 37.742683, 52.543320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207765, -0.745636, -0.633135,
		0.556238, -0.622482, 0.550559,
		-0.804632, -0.237787, 0.544081,
		39.552048, 37.671349, 52.706543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177505, 37.051090, 52.355667>,  <40.115292, 37.837799, 52.325687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177505, 37.051090, 52.355667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818970, 37.224983, 52.390514>,  <39.603848, 37.329319, 52.411423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818970, 37.224983, 52.390514>,  <40.177505, 37.051090, 52.355667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818970, 37.224983, 52.390514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363950, -0.609216, -0.704554,
		-0.253217, -0.663224, 0.704283,
		-0.896338, 0.434729, 0.087117,
		39.550068, 37.355400, 52.416649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808228, 36.756317, 51.791233>,  <40.177505, 37.051090, 52.355667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808228, 36.756317, 51.791233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508129, 36.973671, 51.941887>,  <39.328068, 37.104084, 52.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508129, 36.973671, 51.941887>,  <39.808228, 36.756317, 51.791233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508129, 36.973671, 51.941887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588322, -0.288765, -0.755310,
		-0.301696, -0.788233, 0.536347,
		-0.750238, 0.543418, 0.376616,
		39.283054, 37.136688, 52.054878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194134, 36.281696, 51.893688>,  <39.808228, 36.756317, 51.791233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194134, 36.281696, 51.893688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113972, 36.665874, 51.816341>,  <39.065876, 36.896381, 51.769932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113972, 36.665874, 51.816341>,  <39.194134, 36.281696, 51.893688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113972, 36.665874, 51.816341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425297, -0.263090, -0.865971,
		-0.882588, -0.091303, 0.461196,
		-0.200402, 0.960441, -0.193369,
		39.053852, 36.954006, 51.758331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510548, 36.434704, 51.800591>,  <39.194134, 36.281696, 51.893688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510548, 36.434704, 51.800591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649376, 36.740864, 51.583809>,  <38.732674, 36.924561, 51.453739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649376, 36.740864, 51.583809>,  <38.510548, 36.434704, 51.800591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649376, 36.740864, 51.583809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359005, -0.425428, -0.830739,
		-0.866406, 0.482886, 0.127129,
		0.347068, 0.765397, -0.541952,
		38.753498, 36.970482, 51.421223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949638, 36.683041, 51.345463>,  <38.510548, 36.434704, 51.800591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949638, 36.683041, 51.345463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302227, 36.786659, 51.187527>,  <38.513783, 36.848831, 51.092766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302227, 36.786659, 51.187527>,  <37.949638, 36.683041, 51.345463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302227, 36.786659, 51.187527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259973, -0.431797, -0.863693,
		-0.394230, 0.863970, -0.313272,
		0.881474, 0.259051, -0.394836,
		38.566669, 36.864376, 51.069077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802284, 36.826889, 50.776024>,  <37.949638, 36.683041, 51.345463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802284, 36.826889, 50.776024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193897, 36.763779, 50.724476>,  <38.428864, 36.725914, 50.693546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193897, 36.763779, 50.724476>,  <37.802284, 36.826889, 50.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193897, 36.763779, 50.724476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154700, -0.164188, -0.974223,
		0.132546, 0.973730, -0.185153,
		0.979030, -0.157772, -0.128874,
		38.487606, 36.716446, 50.685814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978931, 37.136982, 50.187477>,  <37.802284, 36.826889, 50.776024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978931, 37.136982, 50.187477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315464, 36.922142, 50.211750>,  <38.517384, 36.793240, 50.226315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315464, 36.922142, 50.211750>,  <37.978931, 37.136982, 50.187477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315464, 36.922142, 50.211750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031226, -0.063776, -0.997476,
		0.539613, 0.841104, -0.036885,
		0.841334, -0.537099, 0.060679,
		38.567863, 36.761013, 50.229954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474926, 37.437458, 49.707081>,  <37.978931, 37.136982, 50.187477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474926, 37.437458, 49.707081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596302, 37.059669, 49.757523>,  <38.669128, 36.832996, 49.787788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596302, 37.059669, 49.757523>,  <38.474926, 37.437458, 49.707081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596302, 37.059669, 49.757523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180463, -0.072989, -0.980870,
		0.935606, 0.320392, 0.148295,
		0.303439, -0.944469, 0.126108,
		38.687332, 36.776329, 49.795357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882401, 37.270817, 49.170532>,  <38.474926, 37.437458, 49.707081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882401, 37.270817, 49.170532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826736, 36.897217, 49.302151>,  <38.793339, 36.673058, 49.381123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826736, 36.897217, 49.302151>,  <38.882401, 37.270817, 49.170532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826736, 36.897217, 49.302151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188302, -0.351178, -0.917178,
		0.972202, -0.065673, 0.224744,
		-0.139159, -0.934003, 0.329050,
		38.784988, 36.617016, 49.400867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446072, 36.836735, 48.855003>,  <38.882401, 37.270817, 49.170532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446072, 36.836735, 48.855003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131882, 36.606110, 48.944988>,  <38.943367, 36.467735, 48.998978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131882, 36.606110, 48.944988>,  <39.446072, 36.836735, 48.855003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131882, 36.606110, 48.944988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060924, -0.289690, -0.955180,
		0.615888, -0.763975, 0.192418,
		-0.785474, -0.576561, 0.224961,
		38.896240, 36.433140, 49.012478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444073, 36.346428, 48.240021>,  <39.446072, 36.836735, 48.855003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444073, 36.346428, 48.240021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105637, 36.237785, 48.423485>,  <38.902576, 36.172600, 48.533562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.105637, 36.237785, 48.423485>,  <39.444073, 36.346428, 48.240021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105637, 36.237785, 48.423485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374622, -0.309134, -0.874125,
		0.379201, -0.911410, 0.159806,
		-0.846088, -0.271602, 0.458658,
		38.851810, 36.156303, 48.561081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300255, 35.662807, 48.163010>,  <39.444073, 36.346428, 48.240021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300255, 35.662807, 48.163010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945850, 35.843311, 48.205601>,  <38.733208, 35.951614, 48.231155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945850, 35.843311, 48.205601>,  <39.300255, 35.662807, 48.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945850, 35.843311, 48.205601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382470, -0.581527, -0.718013,
		-0.262092, -0.676896, 0.687837,
		-0.886016, 0.451263, 0.106479,
		38.680046, 35.978691, 48.237545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859238, 35.144371, 48.004791>,  <39.300255, 35.662807, 48.163010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859238, 35.144371, 48.004791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607716, 35.455334, 47.998566>,  <38.456802, 35.641911, 47.994831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607716, 35.455334, 47.998566>,  <38.859238, 35.144371, 48.004791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607716, 35.455334, 47.998566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565141, -0.470683, -0.677550,
		-0.534059, -0.417250, 0.735312,
		-0.628806, 0.777407, -0.015567,
		38.419075, 35.688557, 47.993896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164539, 34.889416, 48.133827>,  <38.859238, 35.144371, 48.004791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164539, 34.889416, 48.133827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161865, 35.211193, 47.896233>,  <38.160263, 35.404259, 47.753677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161865, 35.211193, 47.896233>,  <38.164539, 34.889416, 48.133827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161865, 35.211193, 47.896233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546564, -0.500359, -0.671497,
		-0.837391, 0.320166, 0.443024,
		-0.006681, 0.804446, -0.593988,
		38.159863, 35.452526, 47.718037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547215, 34.968620, 47.864433>,  <38.164539, 34.889416, 48.133827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547215, 34.968620, 47.864433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749622, 35.192619, 47.602032>,  <37.871067, 35.327019, 47.444592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749622, 35.192619, 47.602032>,  <37.547215, 34.968620, 47.864433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749622, 35.192619, 47.602032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587442, -0.333139, -0.737516,
		-0.631552, 0.758562, 0.160394,
		0.506018, 0.560002, -0.656006,
		37.901428, 35.360619, 47.405231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887714, 35.259430, 47.542362>,  <37.547215, 34.968620, 47.864433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887714, 35.259430, 47.542362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221600, 35.290272, 47.324257>,  <37.421928, 35.308777, 47.193394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221600, 35.290272, 47.324257>,  <36.887714, 35.259430, 47.542362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221600, 35.290272, 47.324257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534247, -0.126771, -0.835769,
		-0.133567, 0.988930, -0.064623,
		0.834710, 0.077107, -0.545265,
		37.472012, 35.313404, 47.160679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676540, 35.589203, 46.935925>,  <36.887714, 35.259430, 47.542362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676540, 35.589203, 46.935925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047676, 35.488590, 46.825760>,  <37.270355, 35.428223, 46.759663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047676, 35.488590, 46.825760>,  <36.676540, 35.589203, 46.935925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047676, 35.488590, 46.825760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313438, -0.125578, -0.941269,
		0.202178, 0.959667, -0.195356,
		0.927837, -0.251535, -0.275407,
		37.326027, 35.413128, 46.743137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857162, 36.005695, 46.334534>,  <36.676540, 35.589203, 46.935925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857162, 36.005695, 46.334534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078423, 35.672779, 46.320042>,  <37.211178, 35.473030, 46.311348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078423, 35.672779, 46.320042>,  <36.857162, 36.005695, 46.334534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078423, 35.672779, 46.320042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211248, -0.098069, -0.972500,
		0.805851, 0.545594, -0.230067,
		0.553153, -0.832292, -0.036227,
		37.244370, 35.423092, 46.309174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298134, 36.109146, 45.650372>,  <36.857162, 36.005695, 46.334534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298134, 36.109146, 45.650372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262367, 35.730438, 45.774071>,  <37.240906, 35.503212, 45.848289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262367, 35.730438, 45.774071>,  <37.298134, 36.109146, 45.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262367, 35.730438, 45.774071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368935, -0.256918, -0.893241,
		0.925144, -0.193963, -0.326324,
		-0.089417, -0.946769, 0.309245,
		37.235542, 35.446407, 45.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483131, 35.836830, 45.103436>,  <37.298134, 36.109146, 45.650372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483131, 35.836830, 45.103436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313343, 35.527874, 45.292427>,  <37.211468, 35.342499, 45.405823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313343, 35.527874, 45.292427>,  <37.483131, 35.836830, 45.103436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313343, 35.527874, 45.292427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316906, -0.362079, -0.876624,
		0.848170, -0.521835, -0.091082,
		-0.424475, -0.772390, 0.472477,
		37.186001, 35.296158, 45.434170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650284, 35.356991, 44.668663>,  <37.483131, 35.836830, 45.103436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650284, 35.356991, 44.668663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349525, 35.226612, 44.897892>,  <37.169071, 35.148384, 45.035431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349525, 35.226612, 44.897892>,  <37.650284, 35.356991, 44.668663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349525, 35.226612, 44.897892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540152, -0.193835, -0.818941,
		0.378013, -0.925304, -0.030318,
		-0.751893, -0.325946, 0.573076,
		37.123959, 35.128830, 45.069817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490570, 34.793003, 44.373840>,  <37.650284, 35.356991, 44.668663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490570, 34.793003, 44.373840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173363, 34.902813, 44.591377>,  <36.983040, 34.968697, 44.721897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173363, 34.902813, 44.591377>,  <37.490570, 34.793003, 44.373840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173363, 34.902813, 44.591377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594995, -0.157386, -0.788169,
		-0.130769, -0.948616, 0.288143,
		-0.793019, 0.274511, 0.543841,
		36.935455, 34.985168, 44.754528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952003, 34.264790, 44.401302>,  <37.490570, 34.793003, 44.373840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952003, 34.264790, 44.401302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764599, 34.612617, 44.463715>,  <36.652157, 34.821316, 44.501163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764599, 34.612617, 44.463715>,  <36.952003, 34.264790, 44.401302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764599, 34.612617, 44.463715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688688, -0.248860, -0.681012,
		-0.553357, -0.426518, 0.715456,
		-0.468512, 0.869569, 0.156029,
		36.624046, 34.873489, 44.510525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221062, 34.145672, 44.426208>,  <36.952003, 34.264790, 44.401302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221062, 34.145672, 44.426208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208759, 34.539547, 44.357559>,  <36.201378, 34.775871, 44.316372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208759, 34.539547, 44.357559>,  <36.221062, 34.145672, 44.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208759, 34.539547, 44.357559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717409, -0.141303, -0.682172,
		-0.695973, 0.102140, 0.710766,
		-0.030757, 0.984683, -0.171619,
		36.199532, 34.834953, 44.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470287, 34.330799, 44.249630>,  <36.221062, 34.145672, 44.426208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470287, 34.330799, 44.249630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685173, 34.643303, 44.122486>,  <35.814106, 34.830807, 44.046200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685173, 34.643303, 44.122486>,  <35.470287, 34.330799, 44.249630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685173, 34.643303, 44.122486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660619, 0.155447, -0.734451,
		-0.524387, 0.604542, 0.599623,
		0.537216, 0.781259, -0.317858,
		35.846336, 34.877682, 44.027130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993843, 34.774158, 44.205250>,  <35.470287, 34.330799, 44.249630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993843, 34.774158, 44.205250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272919, 34.910988, 43.953468>,  <35.440365, 34.993088, 43.802399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272919, 34.910988, 43.953468>,  <34.993843, 34.774158, 44.205250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272919, 34.910988, 43.953468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688301, 0.076401, -0.721390,
		-0.198681, 0.936560, 0.288757,
		0.697687, 0.342078, -0.629457,
		35.482224, 35.013611, 43.764633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801579, 35.356220, 43.792469>,  <34.993843, 34.774158, 44.205250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801579, 35.356220, 43.792469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124454, 35.272766, 43.571594>,  <35.318180, 35.222694, 43.439068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124454, 35.272766, 43.571594>,  <34.801579, 35.356220, 43.792469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124454, 35.272766, 43.571594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502142, 0.249077, -0.828139,
		0.310315, 0.945745, 0.096290,
		0.807191, -0.208632, -0.552191,
		35.366611, 35.210175, 43.405937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861877, 36.002178, 43.353939>,  <34.801579, 35.356220, 43.792469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861877, 36.002178, 43.353939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030403, 35.681034, 43.185223>,  <35.131519, 35.488346, 43.083992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030403, 35.681034, 43.185223>,  <34.861877, 36.002178, 43.353939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030403, 35.681034, 43.185223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542390, 0.149678, -0.826686,
		0.726847, 0.577069, -0.372403,
		0.421315, -0.802862, -0.421789,
		35.156799, 35.440174, 43.058685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119705, 36.243492, 42.615864>,  <34.861877, 36.002178, 43.353939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119705, 36.243492, 42.615864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082958, 35.845467, 42.600800>,  <35.060909, 35.606651, 42.591763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082958, 35.845467, 42.600800>,  <35.119705, 36.243492, 42.615864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082958, 35.845467, 42.600800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368802, 0.069127, -0.926934,
		0.924957, -0.071263, -0.373331,
		-0.091863, -0.995059, -0.037658,
		35.055401, 35.546947, 42.589500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255959, 36.105900, 41.861778>,  <35.119705, 36.243492, 42.615864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255959, 36.105900, 41.861778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103355, 35.751518, 41.967258>,  <35.011795, 35.538891, 42.030548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103355, 35.751518, 41.967258>,  <35.255959, 36.105900, 41.861778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103355, 35.751518, 41.967258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440896, -0.076330, -0.894307,
		0.812442, -0.457451, -0.361492,
		-0.381509, -0.885952, 0.263702,
		34.988903, 35.485733, 42.046368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467552, 35.765251, 41.342319>,  <35.255959, 36.105900, 41.861778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467552, 35.765251, 41.342319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159966, 35.562546, 41.498207>,  <34.975414, 35.440922, 41.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159966, 35.562546, 41.498207>,  <35.467552, 35.765251, 41.342319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159966, 35.562546, 41.498207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429811, -0.041451, -0.901967,
		0.473235, -0.861090, -0.185937,
		-0.768967, -0.506760, 0.389722,
		34.929276, 35.410519, 41.615124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352734, 35.113087, 40.996487>,  <35.467552, 35.765251, 41.342319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352734, 35.113087, 40.996487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999981, 35.164082, 41.178047>,  <34.788330, 35.194679, 41.286983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999981, 35.164082, 41.178047>,  <35.352734, 35.113087, 40.996487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999981, 35.164082, 41.178047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463056, -0.415215, -0.783055,
		0.088640, -0.900747, 0.425204,
		-0.881886, 0.127483, 0.453901,
		34.735416, 35.202328, 41.314217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938755, 34.508018, 40.891541>,  <35.352734, 35.113087, 40.996487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938755, 34.508018, 40.891541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657169, 34.782753, 40.963863>,  <34.488216, 34.947594, 41.007259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657169, 34.782753, 40.963863>,  <34.938755, 34.508018, 40.891541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657169, 34.782753, 40.963863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503517, -0.303087, -0.809079,
		-0.500902, -0.660604, 0.559196,
		-0.703966, 0.686834, 0.180809,
		34.445980, 34.988804, 41.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435749, 34.157383, 40.850891>,  <34.938755, 34.508018, 40.891541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435749, 34.157383, 40.850891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286068, 34.525600, 40.806057>,  <34.196259, 34.746532, 40.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286068, 34.525600, 40.806057>,  <34.435749, 34.157383, 40.850891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286068, 34.525600, 40.806057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546501, -0.316554, -0.775326,
		-0.749205, -0.228877, 0.621536,
		-0.374204, 0.920549, -0.112082,
		34.173805, 34.801765, 40.772430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753365, 34.071026, 40.644146>,  <34.435749, 34.157383, 40.850891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753365, 34.071026, 40.644146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842869, 34.442905, 40.527126>,  <33.896572, 34.666035, 40.456917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842869, 34.442905, 40.527126>,  <33.753365, 34.071026, 40.644146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842869, 34.442905, 40.527126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514237, -0.142360, -0.845751,
		-0.827944, 0.339685, 0.446232,
		0.223763, 0.929703, -0.292545,
		33.909996, 34.721817, 40.439362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135212, 34.473301, 40.415421>,  <33.753365, 34.071026, 40.644146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135212, 34.473301, 40.415421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460209, 34.629040, 40.241859>,  <33.655205, 34.722481, 40.137722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460209, 34.629040, 40.241859>,  <33.135212, 34.473301, 40.415421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460209, 34.629040, 40.241859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450130, -0.053999, -0.891329,
		-0.370464, 0.919508, 0.131382,
		0.812490, 0.389344, -0.433903,
		33.703957, 34.745842, 40.111687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846134, 34.958553, 39.953392>,  <33.135212, 34.473301, 40.415421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846134, 34.958553, 39.953392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211514, 34.866737, 39.818974>,  <33.430740, 34.811646, 39.738323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211514, 34.866737, 39.818974>,  <32.846134, 34.958553, 39.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211514, 34.866737, 39.818974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365727, -0.100843, -0.925243,
		0.178494, 0.968061, -0.176064,
		0.913446, -0.229542, -0.336046,
		33.485546, 34.797874, 39.718159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830574, 35.148422, 39.322666>,  <32.846134, 34.958553, 39.953392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830574, 35.148422, 39.322666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167439, 34.935799, 39.286442>,  <33.369556, 34.808224, 39.264706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167439, 34.935799, 39.286442>,  <32.830574, 35.148422, 39.322666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167439, 34.935799, 39.286442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283004, -0.292758, -0.913346,
		0.458985, 0.794818, -0.396984,
		0.842165, -0.531561, -0.090565,
		33.420090, 34.776329, 39.259274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101654, 35.264282, 38.687836>,  <32.830574, 35.148422, 39.322666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101654, 35.264282, 38.687836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288189, 34.916595, 38.753544>,  <33.400112, 34.707981, 38.792969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.288189, 34.916595, 38.753544>,  <33.101654, 35.264282, 38.687836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288189, 34.916595, 38.753544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057147, -0.155712, -0.986148,
		0.882758, 0.469268, -0.022942,
		0.466340, -0.869219, 0.164273,
		33.428089, 34.655830, 38.802826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437477, 35.185673, 38.121994>,  <33.101654, 35.264282, 38.687836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437477, 35.185673, 38.121994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433895, 34.812119, 38.264977>,  <33.431744, 34.587986, 38.350765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433895, 34.812119, 38.264977>,  <33.437477, 35.185673, 38.121994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433895, 34.812119, 38.264977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088015, -0.355345, -0.930582,
		0.996079, -0.039797, -0.079013,
		-0.008957, -0.933888, 0.357454,
		33.431210, 34.531952, 38.372211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871964, 34.824368, 37.757946>,  <33.437477, 35.185673, 38.121994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871964, 34.824368, 37.757946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648022, 34.520248, 37.889713>,  <33.513657, 34.337776, 37.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648022, 34.520248, 37.889713>,  <33.871964, 34.824368, 37.757946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648022, 34.520248, 37.889713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033431, -0.376509, -0.925809,
		0.827914, -0.529334, 0.185374,
		-0.559858, -0.760293, 0.329414,
		33.480064, 34.292160, 37.988537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127178, 34.351025, 37.353325>,  <33.871964, 34.824368, 37.757946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127178, 34.351025, 37.353325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778133, 34.214188, 37.492764>,  <33.568707, 34.132084, 37.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778133, 34.214188, 37.492764>,  <34.127178, 34.351025, 37.353325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778133, 34.214188, 37.492764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215179, -0.371453, -0.903172,
		0.438456, -0.863131, 0.250523,
		-0.872614, -0.342094, 0.348594,
		33.516350, 34.111561, 37.597343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005867, 33.769211, 36.885185>,  <34.127178, 34.351025, 37.353325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005867, 33.769211, 36.885185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103401, 33.470448, 36.637745>,  <34.161922, 33.291187, 36.489281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103401, 33.470448, 36.637745>,  <34.005867, 33.769211, 36.885185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103401, 33.470448, 36.637745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723312, -0.284842, 0.629034,
		-0.646038, -0.600821, 0.470797,
		0.243834, -0.746913, -0.618600,
		34.176552, 33.246372, 36.452164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008690, 33.101551, 37.198109>,  <34.005867, 33.769211, 36.885185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008690, 33.101551, 37.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261032, 33.069126, 36.889450>,  <34.412437, 33.049671, 36.704254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261032, 33.069126, 36.889450>,  <34.008690, 33.101551, 37.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261032, 33.069126, 36.889450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737389, -0.246777, 0.628775,
		-0.241379, -0.965678, -0.095928,
		0.630867, -0.081036, -0.771648,
		34.450291, 33.044807, 36.657955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346523, 32.459671, 37.260094>,  <34.008690, 33.101551, 37.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346523, 32.459671, 37.260094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587112, 32.678436, 37.027157>,  <34.731464, 32.809696, 36.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587112, 32.678436, 37.027157>,  <34.346523, 32.459671, 37.260094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587112, 32.678436, 37.027157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761487, -0.172041, 0.624932,
		0.241598, -0.819322, -0.519945,
		0.601472, 0.546913, -0.582338,
		34.767555, 32.842510, 36.852455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015388, 32.113388, 37.168957>,  <34.346523, 32.459671, 37.260094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015388, 32.113388, 37.168957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118839, 32.496746, 37.120632>,  <35.180908, 32.726761, 37.091637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118839, 32.496746, 37.120632>,  <35.015388, 32.113388, 37.168957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118839, 32.496746, 37.120632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821252, -0.152306, 0.549862,
		0.508584, -0.241425, -0.826473,
		0.258627, 0.958393, -0.120810,
		35.196426, 32.784264, 37.084389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656834, 32.168461, 36.823868>,  <35.015388, 32.113388, 37.168957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656834, 32.168461, 36.823868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613506, 32.485245, 37.064224>,  <35.587509, 32.675316, 37.208439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613506, 32.485245, 37.064224>,  <35.656834, 32.168461, 36.823868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613506, 32.485245, 37.064224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804928, -0.284852, 0.520529,
		0.583403, 0.540054, -0.606616,
		-0.108318, 0.791960, 0.600887,
		35.581013, 32.722832, 37.244492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334579, 32.201286, 37.200703>,  <35.656834, 32.168461, 36.823868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334579, 32.201286, 37.200703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169312, 32.548840, 37.309753>,  <36.070148, 32.757370, 37.375183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169312, 32.548840, 37.309753>,  <36.334579, 32.201286, 37.200703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169312, 32.548840, 37.309753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746210, 0.151435, 0.648258,
		0.521975, 0.471283, -0.710939,
		-0.413174, 0.868884, 0.272630,
		36.045361, 32.809505, 37.391541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907913, 32.653522, 37.242805>,  <36.334579, 32.201286, 37.200703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907913, 32.653522, 37.242805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619423, 32.770931, 37.493782>,  <36.446327, 32.841377, 37.644367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619423, 32.770931, 37.493782>,  <36.907913, 32.653522, 37.242805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619423, 32.770931, 37.493782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644907, -0.046095, 0.762870,
		0.252838, 0.954842, -0.156046,
		-0.721227, 0.293518, 0.627439,
		36.403053, 32.858986, 37.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247074, 33.167664, 37.693256>,  <36.907913, 32.653522, 37.242805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247074, 33.167664, 37.693256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908226, 33.102745, 37.895660>,  <36.704918, 33.063793, 38.017105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908226, 33.102745, 37.895660>,  <37.247074, 33.167664, 37.693256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908226, 33.102745, 37.895660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500652, 0.075485, 0.862351,
		-0.178152, 0.983851, 0.017309,
		-0.847118, -0.162295, 0.506014,
		36.654091, 33.054058, 38.047466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181644, 33.730148, 38.272976>,  <37.247074, 33.167664, 37.693256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181644, 33.730148, 38.272976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922180, 33.436550, 38.353458>,  <36.766502, 33.260391, 38.401749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922180, 33.436550, 38.353458>,  <37.181644, 33.730148, 38.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922180, 33.436550, 38.353458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298508, -0.002172, 0.954405,
		-0.700095, 0.679147, 0.220514,
		-0.648660, -0.733999, 0.201210,
		36.727581, 33.216351, 38.413822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880444, 33.880444, 38.991917>,  <37.181644, 33.730148, 38.272976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880444, 33.880444, 38.991917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850922, 33.483788, 38.949581>,  <36.833210, 33.245792, 38.924179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850922, 33.483788, 38.949581>,  <36.880444, 33.880444, 38.991917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850922, 33.483788, 38.949581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181266, -0.117700, 0.976366,
		-0.980661, 0.052876, 0.188438,
		-0.073806, -0.991641, -0.105839,
		36.828781, 33.186295, 38.917828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560493, 33.568882, 39.679043>,  <36.880444, 33.880444, 38.991917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560493, 33.568882, 39.679043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750675, 33.253365, 39.523224>,  <36.864784, 33.064053, 39.429733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750675, 33.253365, 39.523224>,  <36.560493, 33.568882, 39.679043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750675, 33.253365, 39.523224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449353, -0.162935, 0.878370,
		-0.756325, -0.592667, 0.276980,
		0.475451, -0.788795, -0.389549,
		36.893311, 33.016727, 39.406361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440750, 32.975014, 40.178825>,  <36.560493, 33.568882, 39.679043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440750, 32.975014, 40.178825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763836, 32.939705, 39.945656>,  <36.957687, 32.918518, 39.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763836, 32.939705, 39.945656>,  <36.440750, 32.975014, 40.178825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763836, 32.939705, 39.945656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567679, -0.150477, 0.809381,
		-0.159171, -0.984664, -0.071427,
		0.807716, -0.088282, -0.582924,
		37.006153, 32.913223, 39.770779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781334, 32.521450, 40.545357>,  <36.440750, 32.975014, 40.178825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781334, 32.521450, 40.545357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048859, 32.688419, 40.299282>,  <37.209373, 32.788601, 40.151638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048859, 32.688419, 40.299282>,  <36.781334, 32.521450, 40.545357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048859, 32.688419, 40.299282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679654, -0.007971, 0.733489,
		0.301271, -0.908678, -0.289034,
		0.668809, 0.417423, -0.615185,
		37.249500, 32.813644, 40.114727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314056, 32.248611, 40.702332>,  <36.781334, 32.521450, 40.545357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314056, 32.248611, 40.702332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477013, 32.561218, 40.513325>,  <37.574787, 32.748783, 40.399921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477013, 32.561218, 40.513325>,  <37.314056, 32.248611, 40.702332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477013, 32.561218, 40.513325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714104, 0.049921, 0.698257,
		0.569286, -0.621888, -0.537744,
		0.407393, 0.781513, -0.472512,
		37.599232, 32.795673, 40.371571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018959, 32.130733, 40.725914>,  <37.314056, 32.248611, 40.702332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018959, 32.130733, 40.725914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955505, 32.525105, 40.704788>,  <37.917435, 32.761726, 40.692112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.955505, 32.525105, 40.704788>,  <38.018959, 32.130733, 40.725914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955505, 32.525105, 40.704788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446443, 0.119336, 0.886819,
		0.880638, 0.117103, -0.459090,
		-0.158635, 0.985924, -0.052812,
		37.907913, 32.820881, 40.688946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609756, 32.438808, 41.013660>,  <38.018959, 32.130733, 40.725914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609756, 32.438808, 41.013660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345970, 32.736771, 41.054085>,  <38.187698, 32.915550, 41.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345970, 32.736771, 41.054085>,  <38.609756, 32.438808, 41.013660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345970, 32.736771, 41.054085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444320, 0.277811, 0.851705,
		0.606367, 0.606575, -0.514185,
		-0.659469, 0.744908, 0.101058,
		38.148129, 32.960243, 41.084400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017681, 33.062687, 41.268185>,  <38.609756, 32.438808, 41.013660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017681, 33.062687, 41.268185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631474, 33.119999, 41.355129>,  <38.399750, 33.154388, 41.407295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631474, 33.119999, 41.355129>,  <39.017681, 33.062687, 41.268185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631474, 33.119999, 41.355129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255343, 0.358455, 0.897947,
		0.050747, 0.922486, -0.382681,
		-0.965518, 0.143283, 0.217359,
		38.341820, 33.162983, 41.420338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975082, 33.679493, 41.652523>,  <39.017681, 33.062687, 41.268185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975082, 33.679493, 41.652523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627972, 33.518482, 41.769104>,  <38.419704, 33.421875, 41.839050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627972, 33.518482, 41.769104>,  <38.975082, 33.679493, 41.652523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627972, 33.518482, 41.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155885, 0.336390, 0.928731,
		-0.471877, 0.851362, -0.229163,
		-0.867774, -0.402524, 0.291449,
		38.367638, 33.397724, 41.856537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660923, 34.138653, 42.030075>,  <38.975082, 33.679493, 41.652523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660923, 34.138653, 42.030075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471287, 33.815929, 42.171093>,  <38.357506, 33.622295, 42.255703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471287, 33.815929, 42.171093>,  <38.660923, 34.138653, 42.030075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471287, 33.815929, 42.171093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080450, 0.359038, 0.929849,
		-0.876793, 0.469196, -0.105309,
		-0.474091, -0.806813, 0.352549,
		38.329060, 33.573887, 42.276859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090302, 34.409088, 42.487644>,  <38.660923, 34.138653, 42.030075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090302, 34.409088, 42.487644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163998, 34.029934, 42.591621>,  <38.208218, 33.802441, 42.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163998, 34.029934, 42.591621>,  <38.090302, 34.409088, 42.487644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163998, 34.029934, 42.591621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067426, 0.276039, 0.958778,
		-0.980565, -0.159121, 0.114770,
		0.184242, -0.947883, 0.259946,
		38.219269, 33.745567, 42.669605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648956, 34.275463, 43.058899>,  <38.090302, 34.409088, 42.487644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648956, 34.275463, 43.058899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943962, 34.006340, 43.082207>,  <38.120968, 33.844868, 43.096191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943962, 34.006340, 43.082207>,  <37.648956, 34.275463, 43.058899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943962, 34.006340, 43.082207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040060, 0.129718, 0.990741,
		-0.674138, -0.728356, 0.122622,
		0.737519, -0.672808, 0.058270,
		38.165218, 33.804497, 43.099689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574608, 33.916626, 43.654270>,  <37.648956, 34.275463, 43.058899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574608, 33.916626, 43.654270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959698, 33.856842, 43.564098>,  <38.190754, 33.820972, 43.509995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959698, 33.856842, 43.564098>,  <37.574608, 33.916626, 43.654270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959698, 33.856842, 43.564098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242957, 0.111582, 0.963598,
		-0.118864, -0.982452, 0.143735,
		0.962727, -0.149458, -0.225430,
		38.248516, 33.812004, 43.496468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814777, 33.501209, 44.170307>,  <37.574608, 33.916626, 43.654270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814777, 33.501209, 44.170307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170673, 33.615925, 44.028252>,  <38.384209, 33.684753, 43.943020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170673, 33.615925, 44.028252>,  <37.814777, 33.501209, 44.170307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170673, 33.615925, 44.028252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343061, 0.093128, 0.934685,
		0.301132, -0.953456, -0.015528,
		0.889736, 0.286791, -0.355137,
		38.437595, 33.701962, 43.921711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312515, 33.056797, 44.528370>,  <37.814777, 33.501209, 44.170307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312515, 33.056797, 44.528370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509819, 33.383636, 44.409008>,  <38.628201, 33.579739, 44.337391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509819, 33.383636, 44.409008>,  <38.312515, 33.056797, 44.528370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509819, 33.383636, 44.409008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337351, 0.136506, 0.931429,
		0.801802, -0.560105, -0.208316,
		0.493262, 0.817097, -0.298403,
		38.657799, 33.628765, 44.319489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091061, 32.979023, 44.788216>,  <38.312515, 33.056797, 44.528370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091061, 32.979023, 44.788216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026852, 33.366146, 44.710667>,  <38.988327, 33.598419, 44.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026852, 33.366146, 44.710667>,  <39.091061, 32.979023, 44.788216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026852, 33.366146, 44.710667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431513, 0.245462, 0.868070,
		0.887710, 0.055686, -0.457022,
		-0.160521, 0.967806, -0.193870,
		38.978695, 33.656487, 44.652504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692135, 33.248581, 44.910816>,  <39.091061, 32.979023, 44.788216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692135, 33.248581, 44.910816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405689, 33.525005, 44.950058>,  <39.233822, 33.690861, 44.973602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405689, 33.525005, 44.950058>,  <39.692135, 33.248581, 44.910816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405689, 33.525005, 44.950058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503152, 0.413678, 0.758754,
		0.483761, 0.592712, -0.643947,
		-0.716110, 0.691059, 0.098103,
		39.190857, 33.732323, 44.979488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147026, 33.738663, 45.097019>,  <39.692135, 33.248581, 44.910816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147026, 33.738663, 45.097019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782177, 33.890438, 45.159058>,  <39.563267, 33.981503, 45.196281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782177, 33.890438, 45.159058>,  <40.147026, 33.738663, 45.097019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782177, 33.890438, 45.159058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375208, 0.620445, 0.688670,
		0.165081, 0.686346, -0.708292,
		-0.912122, 0.379443, 0.155098,
		39.508541, 34.004272, 45.205585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274410, 34.421139, 45.155727>,  <40.147026, 33.738663, 45.097019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274410, 34.421139, 45.155727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926914, 34.359310, 45.343937>,  <39.718414, 34.322212, 45.456863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926914, 34.359310, 45.343937>,  <40.274410, 34.421139, 45.155727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926914, 34.359310, 45.343937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365279, 0.441588, 0.819495,
		-0.334452, 0.883802, -0.327163,
		-0.868742, -0.154576, 0.470524,
		39.666290, 34.312939, 45.485096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136616, 35.057396, 45.587914>,  <40.274410, 34.421139, 45.155727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136616, 35.057396, 45.587914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910542, 34.757393, 45.725349>,  <39.774895, 34.577393, 45.807812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910542, 34.757393, 45.725349>,  <40.136616, 35.057396, 45.587914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910542, 34.757393, 45.725349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396555, 0.118221, 0.910367,
		-0.723400, 0.650780, 0.230601,
		-0.565187, -0.750006, 0.343591,
		39.740986, 34.532391, 45.828426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867382, 35.283756, 46.159142>,  <40.136616, 35.057396, 45.587914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867382, 35.283756, 46.159142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819939, 34.888195, 46.194920>,  <39.791473, 34.650860, 46.216385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819939, 34.888195, 46.194920>,  <39.867382, 35.283756, 46.159142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819939, 34.888195, 46.194920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221707, 0.061431, 0.973176,
		-0.967873, 0.135259, 0.211961,
		-0.118610, -0.988904, 0.089445,
		39.784355, 34.591522, 46.221752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394547, 35.220585, 46.673187>,  <39.867382, 35.283756, 46.159142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394547, 35.220585, 46.673187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579548, 34.866348, 46.656136>,  <39.690548, 34.653805, 46.645905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579548, 34.866348, 46.656136>,  <39.394547, 35.220585, 46.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579548, 34.866348, 46.656136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407375, 0.169552, 0.897384,
		-0.787490, -0.432406, 0.439186,
		0.462499, -0.885594, -0.042631,
		39.718296, 34.600670, 46.643345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309616, 34.952873, 47.286545>,  <39.394547, 35.220585, 46.673187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309616, 34.952873, 47.286545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621452, 34.748817, 47.141224>,  <39.808556, 34.626385, 47.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621452, 34.748817, 47.141224>,  <39.309616, 34.952873, 47.286545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621452, 34.748817, 47.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295139, -0.212392, 0.931549,
		-0.552384, -0.833455, -0.015017,
		0.779593, -0.510140, -0.363306,
		39.855331, 34.595776, 47.032230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255520, 34.365887, 47.746830>,  <39.309616, 34.952873, 47.286545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255520, 34.365887, 47.746830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618629, 34.402576, 47.583103>,  <39.836494, 34.424591, 47.484867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618629, 34.402576, 47.583103>,  <39.255520, 34.365887, 47.746830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618629, 34.402576, 47.583103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401215, 0.094837, 0.911061,
		0.122376, -0.991259, 0.049293,
		0.907772, 0.091714, -0.409314,
		39.890961, 34.430092, 47.460308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629036, 34.099255, 48.275429>,  <39.255520, 34.365887, 47.746830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629036, 34.099255, 48.275429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901775, 34.278080, 48.043835>,  <40.065418, 34.385376, 47.904881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901775, 34.278080, 48.043835>,  <39.629036, 34.099255, 48.275429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901775, 34.278080, 48.043835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643183, 0.010600, 0.765640,
		0.348427, -0.894439, -0.280317,
		0.681847, 0.447064, -0.578981,
		40.106331, 34.412197, 47.870140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363216, 33.778568, 48.377552>,  <39.629036, 34.099255, 48.275429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363216, 33.778568, 48.377552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395733, 34.152744, 48.239948>,  <40.415241, 34.377251, 48.157387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395733, 34.152744, 48.239948>,  <40.363216, 33.778568, 48.377552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395733, 34.152744, 48.239948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686605, 0.197629, 0.699654,
		0.722472, -0.293069, -0.626214,
		0.081289, 0.935443, -0.344005,
		40.420120, 34.433376, 48.136745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034966, 33.942089, 48.477074>,  <40.363216, 33.778568, 48.377552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034966, 33.942089, 48.477074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862934, 34.298298, 48.417728>,  <40.759716, 34.512024, 48.382122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862934, 34.298298, 48.417728>,  <41.034966, 33.942089, 48.477074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862934, 34.298298, 48.417728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563435, 0.393166, 0.726610,
		0.705389, 0.228909, -0.670841,
		-0.430080, 0.890517, -0.148359,
		40.733910, 34.565453, 48.373222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603745, 34.505371, 48.592640>,  <41.034966, 33.942089, 48.477074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603745, 34.505371, 48.592640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231739, 34.641972, 48.646973>,  <41.008537, 34.723934, 48.679573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231739, 34.641972, 48.646973>,  <41.603745, 34.505371, 48.592640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231739, 34.641972, 48.646973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273177, 0.395081, 0.877089,
		0.245866, 0.852811, -0.460721,
		-0.930013, 0.341505, 0.135832,
		40.952736, 34.744423, 48.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665672, 35.157204, 48.817310>,  <41.603745, 34.505371, 48.592640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665672, 35.157204, 48.817310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286846, 35.085396, 48.923771>,  <41.059551, 35.042309, 48.987648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286846, 35.085396, 48.923771>,  <41.665672, 35.157204, 48.817310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286846, 35.085396, 48.923771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109866, 0.597745, 0.794123,
		-0.301656, 0.781327, -0.546380,
		-0.947065, -0.179523, 0.266155,
		41.002728, 35.031540, 49.003616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257954, 35.781601, 48.886391>,  <41.665672, 35.157204, 48.817310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257954, 35.781601, 48.886391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065544, 35.509193, 49.107239>,  <40.950100, 35.345749, 49.239746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065544, 35.509193, 49.107239>,  <41.257954, 35.781601, 48.886391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065544, 35.509193, 49.107239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096774, 0.584670, 0.805479,
		-0.871350, 0.440886, -0.215335,
		-0.481024, -0.681015, 0.552118,
		40.921238, 35.304890, 49.272873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180138, 36.482548, 48.863682>,  <41.257954, 35.781601, 48.886391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180138, 36.482548, 48.863682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337887, 36.807011, 48.690945>,  <41.432537, 37.001690, 48.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337887, 36.807011, 48.690945>,  <41.180138, 36.482548, 48.863682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337887, 36.807011, 48.690945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695650, -0.043528, -0.717061,
		-0.600449, 0.583203, 0.547116,
		0.394377, 0.811160, -0.431841,
		41.456200, 37.050358, 48.561394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640850, 36.981277, 48.663822>,  <41.180138, 36.482548, 48.863682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640850, 36.981277, 48.663822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939178, 37.080463, 48.416512>,  <41.118176, 37.139977, 48.268124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939178, 37.080463, 48.416512>,  <40.640850, 36.981277, 48.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939178, 37.080463, 48.416512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657007, 0.120551, -0.744184,
		-0.109999, 0.961239, 0.252825,
		0.745817, 0.247967, -0.618280,
		41.162922, 37.154854, 48.231026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402775, 37.635712, 48.203171>,  <40.640850, 36.981277, 48.663822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402775, 37.635712, 48.203171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702644, 37.466106, 47.999916>,  <40.882565, 37.364342, 47.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702644, 37.466106, 47.999916>,  <40.402775, 37.635712, 48.203171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702644, 37.466106, 47.999916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566508, -0.014200, -0.823934,
		0.342145, 0.905544, -0.250854,
		0.749671, -0.424015, -0.508139,
		40.927544, 37.338902, 47.847473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388306, 37.940311, 47.568081>,  <40.402775, 37.635712, 48.203171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388306, 37.940311, 47.568081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590683, 37.598442, 47.521526>,  <40.712109, 37.393318, 47.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590683, 37.598442, 47.521526>,  <40.388306, 37.940311, 47.568081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590683, 37.598442, 47.521526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426124, -0.130342, -0.895226,
		0.749957, 0.502535, -0.430144,
		0.505948, -0.854675, -0.116391,
		40.742466, 37.342041, 47.486610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873711, 38.047974, 46.916424>,  <40.388306, 37.940311, 47.568081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873711, 38.047974, 46.916424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836487, 37.652924, 46.966927>,  <40.814152, 37.415894, 46.997227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836487, 37.652924, 46.966927>,  <40.873711, 38.047974, 46.916424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836487, 37.652924, 46.966927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180764, -0.107938, -0.977586,
		0.979114, -0.113794, -0.168483,
		-0.093057, -0.987624, 0.126253,
		40.808571, 37.356636, 47.004803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993797, 37.846912, 46.215866>,  <40.873711, 38.047974, 46.916424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993797, 37.846912, 46.215866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867794, 37.516415, 46.402668>,  <40.792194, 37.318115, 46.514748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867794, 37.516415, 46.402668>,  <40.993797, 37.846912, 46.215866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867794, 37.516415, 46.402668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441092, -0.308235, -0.842870,
		0.840363, -0.471500, -0.267354,
		-0.315006, -0.826244, 0.467004,
		40.773293, 37.268543, 46.542770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160423, 37.310566, 45.786049>,  <40.993797, 37.846912, 46.215866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160423, 37.310566, 45.786049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877235, 37.147190, 46.016510>,  <40.707321, 37.049164, 46.154785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877235, 37.147190, 46.016510>,  <41.160423, 37.310566, 45.786049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877235, 37.147190, 46.016510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460001, -0.352334, -0.815021,
		0.535887, -0.842043, 0.061559,
		-0.707972, -0.408442, 0.576152,
		40.664845, 37.024658, 46.189354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128429, 36.621658, 45.543980>,  <41.160423, 37.310566, 45.786049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128429, 36.621658, 45.543980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786102, 36.735905, 45.716492>,  <40.580708, 36.804455, 45.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786102, 36.735905, 45.716492>,  <41.128429, 36.621658, 45.543980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786102, 36.735905, 45.716492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515091, -0.547202, -0.659735,
		0.047565, -0.786760, 0.615423,
		-0.855814, 0.285619, 0.431281,
		40.529358, 36.821590, 45.845875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663273, 36.087849, 45.464157>,  <41.128429, 36.621658, 45.543980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663273, 36.087849, 45.464157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417847, 36.383789, 45.574547>,  <40.270592, 36.561352, 45.640781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417847, 36.383789, 45.574547>,  <40.663273, 36.087849, 45.464157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417847, 36.383789, 45.574547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656736, -0.284068, -0.698572,
		-0.438443, -0.609860, 0.660180,
		-0.613567, 0.739849, 0.275970,
		40.233776, 36.605743, 45.657337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008690, 35.824501, 45.242802>,  <40.663273, 36.087849, 45.464157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008690, 35.824501, 45.242802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944633, 36.215157, 45.300110>,  <39.906200, 36.449551, 45.334496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944633, 36.215157, 45.300110>,  <40.008690, 35.824501, 45.242802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944633, 36.215157, 45.300110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691491, -0.007420, -0.722347,
		-0.704411, -0.214751, 0.676526,
		-0.160144, 0.976641, 0.143271,
		39.896591, 36.508148, 45.343090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200130, 35.923294, 45.247086>,  <40.008690, 35.824501, 45.242802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200130, 35.923294, 45.247086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403347, 36.247978, 45.131832>,  <39.525276, 36.442787, 45.062679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403347, 36.247978, 45.131832>,  <39.200130, 35.923294, 45.247086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403347, 36.247978, 45.131832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637224, 0.129127, -0.759784,
		-0.579517, 0.569611, 0.582841,
		0.508042, 0.811708, -0.288138,
		39.555759, 36.491489, 45.045391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654449, 36.327888, 45.096119>,  <39.200130, 35.923294, 45.247086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654449, 36.327888, 45.096119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977516, 36.487251, 44.922241>,  <39.171356, 36.582867, 44.817917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977516, 36.487251, 44.922241>,  <38.654449, 36.327888, 45.096119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977516, 36.487251, 44.922241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476291, 0.006207, -0.879266,
		-0.347604, 0.917190, 0.194769,
		0.807662, 0.398403, -0.434692,
		39.219814, 36.606773, 44.791832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434811, 36.836521, 44.704056>,  <38.654449, 36.327888, 45.096119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434811, 36.836521, 44.704056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804989, 36.787342, 44.560703>,  <39.027096, 36.757835, 44.474693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804989, 36.787342, 44.560703>,  <38.434811, 36.836521, 44.704056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804989, 36.787342, 44.560703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364867, -0.034308, -0.930427,
		0.102099, 0.991820, -0.076610,
		0.925444, -0.122948, -0.358380,
		39.082623, 36.750458, 44.453190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385738, 37.078548, 44.093193>,  <38.434811, 36.836521, 44.704056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385738, 37.078548, 44.093193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737602, 36.899059, 44.030140>,  <38.948719, 36.791367, 43.992310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.737602, 36.899059, 44.030140>,  <38.385738, 37.078548, 44.093193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737602, 36.899059, 44.030140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279190, -0.218871, -0.934959,
		0.385033, 0.866456, -0.317810,
		0.879660, -0.448719, -0.157633,
		39.001499, 36.764442, 43.982849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660915, 37.341026, 43.459610>,  <38.385738, 37.078548, 44.093193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660915, 37.341026, 43.459610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819324, 36.983189, 43.542419>,  <38.914371, 36.768486, 43.592106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819324, 36.983189, 43.542419>,  <38.660915, 37.341026, 43.459610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819324, 36.983189, 43.542419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297761, -0.338389, -0.892654,
		0.868621, 0.291869, -0.400387,
		0.396025, -0.894598, 0.207025,
		38.938133, 36.714809, 43.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208759, 37.204491, 42.981617>,  <38.660915, 37.341026, 43.459610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208759, 37.204491, 42.981617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089569, 36.842449, 43.102936>,  <39.018055, 36.625225, 43.175728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089569, 36.842449, 43.102936>,  <39.208759, 37.204491, 42.981617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089569, 36.842449, 43.102936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139080, -0.273178, -0.951856,
		0.944386, -0.325816, -0.044481,
		-0.297979, -0.905107, 0.303300,
		39.000175, 36.570919, 43.193924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552002, 36.666557, 42.497219>,  <39.208759, 37.204491, 42.981617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552002, 36.666557, 42.497219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242165, 36.487061, 42.675491>,  <39.056263, 36.379364, 42.782455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242165, 36.487061, 42.675491>,  <39.552002, 36.666557, 42.497219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242165, 36.487061, 42.675491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279388, -0.389420, -0.877664,
		0.567405, -0.804352, 0.176268,
		-0.774593, -0.448743, 0.445685,
		39.009789, 36.352436, 42.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640984, 35.856476, 42.351631>,  <39.552002, 36.666557, 42.497219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640984, 35.856476, 42.351631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259216, 35.942814, 42.434097>,  <39.030155, 35.994617, 42.483578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259216, 35.942814, 42.434097>,  <39.640984, 35.856476, 42.351631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259216, 35.942814, 42.434097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273883, -0.358732, -0.892356,
		-0.118650, -0.908143, 0.401495,
		-0.954416, 0.215841, 0.206161,
		38.972893, 36.007565, 42.495945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307709, 35.240807, 42.161846>,  <39.640984, 35.856476, 42.351631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307709, 35.240807, 42.161846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011742, 35.509438, 42.177341>,  <38.834160, 35.670616, 42.186638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011742, 35.509438, 42.177341>,  <39.307709, 35.240807, 42.161846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011742, 35.509438, 42.177341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303249, -0.281601, -0.910352,
		-0.600463, -0.685336, 0.412018,
		-0.739922, 0.671577, 0.038736,
		38.789764, 35.710911, 42.188961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631222, 34.838535, 42.151394>,  <39.307709, 35.240807, 42.161846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631222, 34.838535, 42.151394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555046, 35.205784, 42.012375>,  <38.509338, 35.426132, 41.928963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555046, 35.205784, 42.012375>,  <38.631222, 34.838535, 42.151394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555046, 35.205784, 42.012375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194237, -0.382273, -0.903404,
		-0.962291, -0.104540, 0.251134,
		-0.190444, 0.918117, -0.347552,
		38.497913, 35.481220, 41.908108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137459, 34.716156, 41.804829>,  <38.631222, 34.838535, 42.151394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137459, 34.716156, 41.804829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235020, 35.073132, 41.653004>,  <38.293556, 35.287315, 41.561909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235020, 35.073132, 41.653004>,  <38.137459, 34.716156, 41.804829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235020, 35.073132, 41.653004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292318, -0.305525, -0.906204,
		-0.924695, 0.331978, 0.186357,
		0.243903, 0.892438, -0.379561,
		38.308189, 35.340862, 41.539135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616489, 34.949890, 41.372795>,  <38.137459, 34.716156, 41.804829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616489, 34.949890, 41.372795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930817, 35.163704, 41.248371>,  <38.119411, 35.291992, 41.173717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930817, 35.163704, 41.248371>,  <37.616489, 34.949890, 41.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930817, 35.163704, 41.248371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224839, -0.221626, -0.948857,
		-0.576140, 0.815567, -0.053972,
		0.785818, 0.534539, -0.311059,
		38.166561, 35.324066, 41.155052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359261, 35.236740, 40.794430>,  <37.616489, 34.949890, 41.372795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359261, 35.236740, 40.794430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756359, 35.266808, 40.756889>,  <37.994617, 35.284847, 40.734364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756359, 35.266808, 40.756889>,  <37.359261, 35.236740, 40.794430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756359, 35.266808, 40.756889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076654, -0.205754, -0.975597,
		-0.092650, 0.975712, -0.198499,
		0.992744, 0.075173, -0.093855,
		38.054184, 35.289360, 40.728733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418270, 35.572433, 40.190907>,  <37.359261, 35.236740, 40.794430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418270, 35.572433, 40.190907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791172, 35.436249, 40.239887>,  <38.014912, 35.354538, 40.269276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791172, 35.436249, 40.239887>,  <37.418270, 35.572433, 40.190907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791172, 35.436249, 40.239887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113119, -0.047202, -0.992460,
		0.343671, 0.939074, -0.005492,
		0.932252, -0.340458, 0.122449,
		38.070847, 35.334110, 40.276623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845837, 35.891788, 39.678135>,  <37.418270, 35.572433, 40.190907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845837, 35.891788, 39.678135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048912, 35.559929, 39.771030>,  <38.170757, 35.360813, 39.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048912, 35.559929, 39.771030>,  <37.845837, 35.891788, 39.678135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048912, 35.559929, 39.771030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192056, -0.153790, -0.969259,
		0.839860, 0.536685, 0.081261,
		0.507690, -0.829649, 0.232236,
		38.201218, 35.311035, 39.840702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417038, 36.034588, 39.424461>,  <37.845837, 35.891788, 39.678135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417038, 36.034588, 39.424461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428337, 35.637005, 39.466881>,  <38.435116, 35.398453, 39.492332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428337, 35.637005, 39.466881>,  <38.417038, 36.034588, 39.424461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428337, 35.637005, 39.466881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319204, -0.091565, -0.943252,
		0.947265, 0.060496, 0.314689,
		0.028249, -0.993960, 0.106047,
		38.436813, 35.338818, 39.498695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041679, 35.892105, 39.172962>,  <38.417038, 36.034588, 39.424461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041679, 35.892105, 39.172962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819756, 35.559433, 39.164108>,  <38.686604, 35.359829, 39.158794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819756, 35.559433, 39.164108>,  <39.041679, 35.892105, 39.172962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819756, 35.559433, 39.164108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310602, -0.182370, -0.932881,
		0.771826, -0.524445, 0.359503,
		-0.554807, -0.831684, -0.022136,
		38.653313, 35.309929, 39.157467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465534, 35.236401, 38.917744>,  <39.041679, 35.892105, 39.172962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465534, 35.236401, 38.917744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076458, 35.157707, 38.868469>,  <38.843014, 35.110493, 38.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076458, 35.157707, 38.868469>,  <39.465534, 35.236401, 38.917744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076458, 35.157707, 38.868469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187527, -0.353265, -0.916536,
		0.136797, -0.914603, 0.380510,
		-0.972687, -0.196735, -0.123187,
		38.784653, 35.098686, 38.831512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503685, 34.594009, 38.501080>,  <39.465534, 35.236401, 38.917744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503685, 34.594009, 38.501080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 34.707996, 38.440792>,  <38.897850, 34.776390, 38.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 34.707996, 38.440792>,  <39.503685, 34.594009, 38.501080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125038, 34.707996, 38.440792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037304, -0.367547, -0.929256,
		-0.320202, -0.885270, 0.337295,
		-0.946614, 0.284968, -0.150713,
		38.841053, 34.793488, 38.395576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274960, 34.060959, 38.117790>,  <39.503685, 34.594009, 38.501080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274960, 34.060959, 38.117790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035580, 34.376339, 38.060936>,  <38.891953, 34.565567, 38.026825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035580, 34.376339, 38.060936>,  <39.274960, 34.060959, 38.117790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035580, 34.376339, 38.060936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115242, -0.090850, -0.989174,
		-0.792830, -0.608349, -0.036494,
		-0.598448, 0.788452, -0.142136,
		38.856045, 34.612873, 38.018295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778229, 33.857380, 37.574371>,  <39.274960, 34.060959, 38.117790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778229, 33.857380, 37.574371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794102, 34.257065, 37.574085>,  <38.803627, 34.496876, 37.573914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794102, 34.257065, 37.574085>,  <38.778229, 33.857380, 37.574371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794102, 34.257065, 37.574085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079744, -0.003877, -0.996808,
		-0.996025, 0.039502, -0.079835,
		0.039685, 0.999212, -0.000712,
		38.806007, 34.556828, 37.573872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355721, 33.945824, 37.145428>,  <38.778229, 33.857380, 37.574371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355721, 33.945824, 37.145428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526482, 34.307487, 37.151817>,  <38.628937, 34.524487, 37.155651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526482, 34.307487, 37.151817>,  <38.355721, 33.945824, 37.145428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526482, 34.307487, 37.151817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112190, -0.035429, -0.993055,
		-0.897312, 0.425728, -0.116562,
		0.426901, 0.904157, 0.015972,
		38.654552, 34.578735, 37.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118450, 34.251041, 36.524940>,  <38.355721, 33.945824, 37.145428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118450, 34.251041, 36.524940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426334, 34.488941, 36.617729>,  <38.611065, 34.631683, 36.673401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426334, 34.488941, 36.617729>,  <38.118450, 34.251041, 36.524940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426334, 34.488941, 36.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163590, 0.167476, -0.972209,
		-0.617072, 0.786271, 0.031613,
		0.769714, 0.594752, 0.231970,
		38.657249, 34.667366, 36.687321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037655, 34.845016, 36.029133>,  <38.118450, 34.251041, 36.524940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037655, 34.845016, 36.029133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417072, 34.856892, 36.155231>,  <38.644722, 34.864017, 36.230892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417072, 34.856892, 36.155231>,  <38.037655, 34.845016, 36.029133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417072, 34.856892, 36.155231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311400, 0.092976, -0.945720,
		-0.057383, 0.995226, 0.078949,
		0.948545, 0.029683, 0.315248,
		38.701637, 34.865795, 36.249805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347492, 35.529167, 35.709263>,  <38.037655, 34.845016, 36.029133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347492, 35.529167, 35.709263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659904, 35.304329, 35.818108>,  <38.847351, 35.169426, 35.883415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659904, 35.304329, 35.818108>,  <38.347492, 35.529167, 35.709263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659904, 35.304329, 35.818108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489690, 0.280831, -0.825432,
		0.387556, 0.777934, 0.494590,
		0.781027, -0.562097, 0.272109,
		38.894215, 35.135700, 35.899742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874928, 35.867943, 35.644608>,  <38.347492, 35.529167, 35.709263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874928, 35.867943, 35.644608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006500, 35.491798, 35.609917>,  <39.085442, 35.266109, 35.589100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006500, 35.491798, 35.609917>,  <38.874928, 35.867943, 35.644608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006500, 35.491798, 35.609917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486824, 0.247545, -0.837690,
		0.809203, 0.233318, 0.539216,
		0.328929, -0.940364, -0.086729,
		39.105179, 35.209690, 35.583897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594711, 35.921539, 35.444714>,  <38.874928, 35.867943, 35.644608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594711, 35.921539, 35.444714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498413, 35.546959, 35.342663>,  <39.440632, 35.322208, 35.281433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498413, 35.546959, 35.342663>,  <39.594711, 35.921539, 35.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498413, 35.546959, 35.342663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370115, 0.154424, -0.916061,
		0.897248, -0.314969, 0.309419,
		-0.240749, -0.936455, -0.255131,
		39.426189, 35.266022, 35.266125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211021, 35.648392, 35.072029>,  <39.594711, 35.921539, 35.444714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211021, 35.648392, 35.072029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877853, 35.458324, 34.958565>,  <39.677952, 35.344284, 34.890484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877853, 35.458324, 34.958565>,  <40.211021, 35.648392, 35.072029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877853, 35.458324, 34.958565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231453, 0.166490, -0.958494,
		0.502670, -0.864002, -0.028695,
		-0.832918, -0.475165, -0.283665,
		39.627979, 35.315777, 34.873466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373821, 35.202408, 34.487106>,  <40.211021, 35.648392, 35.072029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373821, 35.202408, 34.487106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978085, 35.253498, 34.459129>,  <39.740643, 35.284153, 34.442345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978085, 35.253498, 34.459129>,  <40.373821, 35.202408, 34.487106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978085, 35.253498, 34.459129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084775, 0.114661, -0.989781,
		-0.118400, -0.985159, -0.124267,
		-0.989341, 0.127725, -0.069941,
		39.681282, 35.291817, 34.438148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636932, 35.728004, 34.149261>,  <40.373821, 35.202408, 34.487106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636932, 35.728004, 34.149261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645756, 36.002434, 33.858383>,  <40.651051, 36.167091, 33.683857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645756, 36.002434, 33.858383>,  <40.636932, 35.728004, 34.149261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645756, 36.002434, 33.858383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923500, 0.264645, 0.277690,
		0.382965, -0.677694, -0.627749,
		0.022058, 0.686071, -0.727200,
		40.652374, 36.208256, 33.640224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338608, 35.627796, 33.615929>,  <40.636932, 35.728004, 34.149261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338608, 35.627796, 33.615929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152538, 35.970654, 33.704403>,  <41.040897, 36.176369, 33.757488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152538, 35.970654, 33.704403>,  <41.338608, 35.627796, 33.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152538, 35.970654, 33.704403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840963, 0.349879, 0.412754,
		0.276400, 0.378012, -0.883578,
		-0.465171, 0.857141, 0.221188,
		41.012985, 36.227795, 33.770760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310497, 35.433548, 32.904999>,  <41.338608, 35.627796, 33.615929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310497, 35.433548, 32.904999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380440, 35.326427, 32.526009>,  <41.422405, 35.262154, 32.298615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380440, 35.326427, 32.526009>,  <41.310497, 35.433548, 32.904999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380440, 35.326427, 32.526009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891101, -0.452326, -0.036600,
		-0.418766, 0.850696, -0.317728,
		0.174852, -0.267801, -0.947476,
		41.432896, 35.246086, 32.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273159, 34.771236, 32.597282>,  <41.310497, 35.433548, 32.904999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273159, 34.771236, 32.597282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413631, 34.429512, 32.750553>,  <41.497913, 34.224476, 32.842514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413631, 34.429512, 32.750553>,  <41.273159, 34.771236, 32.597282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413631, 34.429512, 32.750553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337554, 0.497242, 0.799255,
		-0.873344, -0.151339, 0.462997,
		0.351180, -0.854311, 0.383178,
		41.518986, 34.173218, 32.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952808, 34.702290, 33.194077>,  <41.273159, 34.771236, 32.597282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952808, 34.702290, 33.194077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303745, 34.510399, 33.189262>,  <41.514305, 34.395264, 33.186375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303745, 34.510399, 33.189262>,  <40.952808, 34.702290, 33.194077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303745, 34.510399, 33.189262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324719, 0.575027, 0.750934,
		-0.353321, -0.662729, 0.660268,
		0.877338, -0.479723, -0.012031,
		41.566948, 34.366482, 33.185654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196922, 34.456169, 33.924553>,  <40.952808, 34.702290, 33.194077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196922, 34.456169, 33.924553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496666, 34.537354, 33.672440>,  <41.676514, 34.586063, 33.521172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496666, 34.537354, 33.672440>,  <41.196922, 34.456169, 33.924553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496666, 34.537354, 33.672440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504420, 0.441680, 0.741943,
		0.428973, -0.873913, 0.228599,
		0.749362, 0.202964, -0.630288,
		41.721474, 34.598240, 33.483353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895832, 34.075294, 33.961273>,  <41.196922, 34.456169, 33.924553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895832, 34.075294, 33.961273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890301, 34.464882, 33.870766>,  <41.886982, 34.698635, 33.816463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890301, 34.464882, 33.870766>,  <41.895832, 34.075294, 33.961273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890301, 34.464882, 33.870766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585394, 0.191337, 0.787848,
		0.810631, -0.121563, -0.572800,
		-0.013824, 0.973967, -0.226266,
		41.886154, 34.757072, 33.802887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407314, 34.475971, 33.614902>,  <41.895832, 34.075294, 33.961273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407314, 34.475971, 33.614902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747375, 34.478199, 33.404297>,  <42.951412, 34.479534, 33.277935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747375, 34.478199, 33.404297>,  <42.407314, 34.475971, 33.614902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747375, 34.478199, 33.404297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200925, -0.920846, -0.334172,
		-0.486699, 0.389885, -0.781737,
		0.850149, 0.005571, -0.526513,
		43.002419, 34.479870, 33.246342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264881, 34.312794, 32.913193>,  <42.407314, 34.475971, 33.614902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264881, 34.312794, 32.913193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636028, 34.181934, 32.984779>,  <42.858719, 34.103420, 33.027733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636028, 34.181934, 32.984779>,  <42.264881, 34.312794, 32.913193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636028, 34.181934, 32.984779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199817, -0.841407, -0.502102,
		0.314847, 0.430125, -0.846087,
		0.927871, -0.327148, 0.178968,
		42.914391, 34.083790, 33.038471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560638, 34.124561, 32.287388>,  <42.264881, 34.312794, 32.913193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560638, 34.124561, 32.287388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757187, 33.922932, 32.571491>,  <42.875114, 33.801952, 32.741951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757187, 33.922932, 32.571491>,  <42.560638, 34.124561, 32.287388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757187, 33.922932, 32.571491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193480, -0.858294, -0.475287,
		0.849187, 0.096123, -0.519270,
		0.491372, -0.504076, 0.710254,
		42.904598, 33.771709, 32.784569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041092, 33.715176, 31.887676>,  <42.560638, 34.124561, 32.287388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041092, 33.715176, 31.887676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002789, 33.548935, 32.249474>,  <42.979805, 33.449192, 32.466553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002789, 33.548935, 32.249474>,  <43.041092, 33.715176, 31.887676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002789, 33.548935, 32.249474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133776, -0.895052, -0.425425,
		0.986374, -0.161738, 0.030113,
		-0.095760, -0.415599, 0.904493,
		42.974060, 33.424255, 32.520821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472660, 33.124847, 31.791277>,  <43.041092, 33.715176, 31.887676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472660, 33.124847, 31.791277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239048, 33.035416, 32.103409>,  <43.098881, 32.981754, 32.290688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239048, 33.035416, 32.103409>,  <43.472660, 33.124847, 31.791277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239048, 33.035416, 32.103409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181822, -0.900859, -0.394200,
		0.791105, -0.372107, 0.485478,
		-0.584032, -0.223583, 0.780331,
		43.063839, 32.968342, 32.337509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621685, 32.366898, 31.939180>,  <43.472660, 33.124847, 31.791277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621685, 32.366898, 31.939180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271011, 32.433464, 32.119728>,  <43.060608, 32.473404, 32.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271011, 32.433464, 32.119728>,  <43.621685, 32.366898, 31.939180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271011, 32.433464, 32.119728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309580, -0.913334, -0.264540,
		0.368228, -0.371652, 0.852222,
		-0.876680, 0.166420, 0.451371,
		43.008007, 32.483391, 32.255138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544323, 31.857185, 32.444862>,  <43.621685, 32.366898, 31.939180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544323, 31.857185, 32.444862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177475, 32.008911, 32.395855>,  <42.957367, 32.099945, 32.366451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177475, 32.008911, 32.395855>,  <43.544323, 31.857185, 32.444862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177475, 32.008911, 32.395855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361731, -0.921101, -0.143957,
		-0.167455, -0.087708, 0.981971,
		-0.917120, 0.379316, -0.122516,
		42.902340, 32.122707, 32.359100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099609, 31.483370, 32.856926>,  <43.544323, 31.857185, 32.444862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099609, 31.483370, 32.856926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847279, 31.641180, 32.589672>,  <42.695881, 31.735867, 32.429321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847279, 31.641180, 32.589672>,  <43.099609, 31.483370, 32.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847279, 31.641180, 32.589672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457571, -0.884575, -0.090311,
		-0.626646, 0.248749, 0.738539,
		-0.630828, 0.394527, -0.668135,
		42.658031, 31.759539, 32.389233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407055, 31.255499, 33.078178>,  <43.099609, 31.483370, 32.856926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407055, 31.255499, 33.078178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369816, 31.356842, 32.693024>,  <42.347473, 31.417648, 32.461933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369816, 31.356842, 32.693024>,  <42.407055, 31.255499, 33.078178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369816, 31.356842, 32.693024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602713, -0.784105, -0.148042,
		-0.792508, 0.566560, 0.225700,
		-0.093098, 0.253357, -0.962883,
		42.341885, 31.432850, 32.404160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666386, 31.152008, 32.926273>,  <42.407055, 31.255499, 33.078178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666386, 31.152008, 32.926273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873676, 31.163761, 32.584377>,  <41.998051, 31.170813, 32.379242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.873676, 31.163761, 32.584377>,  <41.666386, 31.152008, 32.926273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873676, 31.163761, 32.584377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557639, -0.746141, -0.363749,
		-0.648441, 0.665140, -0.370288,
		0.518231, 0.029383, -0.854736,
		42.029144, 31.172575, 32.327957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216320, 31.122608, 32.367073>,  <41.666386, 31.152008, 32.926273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216320, 31.122608, 32.367073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552578, 30.970642, 32.212685>,  <41.754333, 30.879463, 32.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552578, 30.970642, 32.212685>,  <41.216320, 31.122608, 32.367073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552578, 30.970642, 32.212685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463138, -0.873721, -0.148710,
		-0.280735, 0.303771, -0.910446,
		0.840649, -0.379914, -0.385972,
		41.804771, 30.856668, 32.096893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022610, 30.522371, 31.933268>,  <41.216320, 31.122608, 32.367073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022610, 30.522371, 31.933268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415543, 30.447531, 31.934956>,  <41.651302, 30.402626, 31.935968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415543, 30.447531, 31.934956>,  <41.022610, 30.522371, 31.933268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415543, 30.447531, 31.934956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184850, -0.973541, -0.134346,
		0.029244, 0.131192, -0.990926,
		0.982332, -0.187101, 0.004219,
		41.710243, 30.391399, 31.936222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223576, 30.075785, 31.276470>,  <41.022610, 30.522371, 31.933268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223576, 30.075785, 31.276470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522793, 30.031374, 31.538189>,  <41.702324, 30.004726, 31.695221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.522793, 30.031374, 31.538189>,  <41.223576, 30.075785, 31.276470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.522793, 30.031374, 31.538189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095857, -0.957492, -0.272068,
		0.656693, 0.266237, -0.705600,
		0.748041, -0.111028, 0.654299,
		41.747204, 29.998066, 31.734478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664700, 29.610514, 30.917929>,  <41.223576, 30.075785, 31.276470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664700, 29.610514, 30.917929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755169, 29.584351, 31.306684>,  <41.809448, 29.568653, 31.539938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755169, 29.584351, 31.306684>,  <41.664700, 29.610514, 30.917929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755169, 29.584351, 31.306684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038874, -0.996342, -0.076102,
		0.973312, 0.054993, -0.222799,
		0.226169, -0.065410, 0.971889,
		41.823021, 29.564728, 31.598251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999287, 28.934626, 31.016596>,  <41.664700, 29.610514, 30.917929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999287, 28.934626, 31.016596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930141, 29.016844, 31.401899>,  <41.888653, 29.066175, 31.633081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930141, 29.016844, 31.401899>,  <41.999287, 28.934626, 31.016596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930141, 29.016844, 31.401899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026286, -0.976671, 0.213124,
		0.984595, 0.062162, 0.163427,
		-0.172863, 0.205545, 0.963260,
		41.878284, 29.078506, 31.690878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553200, 28.646580, 31.293718>,  <41.999287, 28.934626, 31.016596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553200, 28.646580, 31.293718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269737, 28.680412, 31.573906>,  <42.099659, 28.700712, 31.742018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269737, 28.680412, 31.573906>,  <42.553200, 28.646580, 31.293718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269737, 28.680412, 31.573906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036155, -0.987131, 0.155775,
		0.704631, 0.135716, 0.696474,
		-0.708652, 0.084583, 0.700469,
		42.057140, 28.705788, 31.784046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716255, 28.191671, 31.765903>,  <42.553200, 28.646580, 31.293718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716255, 28.191671, 31.765903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342255, 28.270283, 31.883984>,  <42.117855, 28.317450, 31.954832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342255, 28.270283, 31.883984>,  <42.716255, 28.191671, 31.765903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342255, 28.270283, 31.883984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149158, -0.973130, 0.175416,
		0.321743, 0.119982, 0.939194,
		-0.935004, 0.196527, 0.295201,
		42.061752, 28.329241, 31.972544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692303, 27.645668, 32.313683>,  <42.716255, 28.191671, 31.765903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692303, 27.645668, 32.313683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311939, 27.760069, 32.266396>,  <42.083721, 27.828709, 32.238022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311939, 27.760069, 32.266396>,  <42.692303, 27.645668, 32.313683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311939, 27.760069, 32.266396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302979, -0.938188, 0.167351,
		-0.063050, 0.194954, 0.978784,
		-0.950909, 0.286000, -0.118220,
		42.026665, 27.845869, 32.230930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246807, 27.341776, 32.887669>,  <42.692303, 27.645668, 32.313683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246807, 27.341776, 32.887669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021545, 27.398472, 32.562027>,  <41.886391, 27.432489, 32.366642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.021545, 27.398472, 32.562027>,  <42.246807, 27.341776, 32.887669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021545, 27.398472, 32.562027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394564, -0.911745, 0.114198,
		-0.726072, 0.385528, 0.569375,
		-0.563151, 0.141739, -0.814108,
		41.852600, 27.440994, 32.317795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544243, 27.125080, 33.041645>,  <42.246807, 27.341776, 32.887669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544243, 27.125080, 33.041645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572182, 27.117443, 32.642696>,  <41.588943, 27.112860, 32.403328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572182, 27.117443, 32.642696>,  <41.544243, 27.125080, 33.041645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572182, 27.117443, 32.642696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311224, -0.950330, -0.003603,
		-0.947766, 0.310659, -0.072321,
		0.069848, -0.019093, -0.997375,
		41.593136, 27.111715, 32.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903591, 26.793512, 32.736397>,  <41.544243, 27.125080, 33.041645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903591, 26.793512, 32.736397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190346, 26.764427, 32.459042>,  <41.362396, 26.746977, 32.292629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190346, 26.764427, 32.459042>,  <40.903591, 26.793512, 32.736397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190346, 26.764427, 32.459042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333398, -0.909214, -0.249350,
		-0.612310, 0.409930, -0.676043,
		0.716884, -0.072712, -0.693391,
		41.405411, 26.742613, 32.251022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626797, 26.397305, 32.186653>,  <40.903591, 26.793512, 32.736397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626797, 26.397305, 32.186653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020649, 26.358891, 32.128300>,  <41.256962, 26.335842, 32.093288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020649, 26.358891, 32.128300>,  <40.626797, 26.397305, 32.186653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020649, 26.358891, 32.128300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156759, -0.854221, -0.495715,
		-0.077009, 0.510964, -0.856146,
		0.984630, -0.096034, -0.145881,
		41.316036, 26.330080, 32.084534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868084, 26.205185, 31.446386>,  <40.626797, 26.397305, 32.186653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868084, 26.205185, 31.446386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143623, 26.083532, 31.709595>,  <41.308949, 26.010542, 31.867519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143623, 26.083532, 31.709595>,  <40.868084, 26.205185, 31.446386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143623, 26.083532, 31.709595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166938, -0.949891, -0.264270,
		0.705422, 0.072193, -0.705102,
		0.688848, -0.304130, 0.658022,
		41.350277, 25.992292, 31.907001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559456, 25.880680, 31.303602>,  <40.868084, 26.205185, 31.446386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559456, 25.880680, 31.303602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383106, 25.741289, 31.634468>,  <41.277298, 25.657656, 31.832987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383106, 25.741289, 31.634468>,  <41.559456, 25.880680, 31.303602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383106, 25.741289, 31.634468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206135, -0.857616, -0.471172,
		0.873580, -0.378233, 0.306264,
		-0.440870, -0.348475, 0.827163,
		41.250847, 25.636747, 31.882618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724407, 25.082891, 31.467726>,  <41.559456, 25.880680, 31.303602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724407, 25.082891, 31.467726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371025, 25.200588, 31.613562>,  <41.158997, 25.271206, 31.701063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371025, 25.200588, 31.613562>,  <41.724407, 25.082891, 31.467726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371025, 25.200588, 31.613562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461863, -0.677625, -0.572282,
		0.078667, -0.673978, 0.734551,
		-0.883456, 0.294242, 0.364592,
		41.105988, 25.288860, 31.722939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425816, 25.033998, 31.898151>,  <41.724407, 25.082891, 31.467726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425816, 25.033998, 31.898151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536983, 25.185604, 32.251221>,  <42.603683, 25.276567, 32.463062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.536983, 25.185604, 32.251221>,  <42.425816, 25.033998, 31.898151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536983, 25.185604, 32.251221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427988, 0.773775, -0.467010,
		-0.859994, 0.507563, 0.052831,
		0.277916, 0.379015, 0.882672,
		42.620358, 25.299309, 32.516022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281498, 25.735016, 31.917152>,  <42.425816, 25.033998, 31.898151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281498, 25.735016, 31.917152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574772, 25.669878, 32.181248>,  <42.750736, 25.630795, 32.339706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574772, 25.669878, 32.181248>,  <42.281498, 25.735016, 31.917152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574772, 25.669878, 32.181248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501145, 0.785671, -0.362732,
		-0.459661, 0.596826, 0.657655,
		0.733189, -0.162847, 0.660238,
		42.794727, 25.621023, 32.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327629, 26.311584, 32.379642>,  <42.281498, 25.735016, 31.917152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327629, 26.311584, 32.379642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659519, 26.100391, 32.307201>,  <42.858654, 25.973677, 32.263737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659519, 26.100391, 32.307201>,  <42.327629, 26.311584, 32.379642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659519, 26.100391, 32.307201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349670, 0.744562, -0.568646,
		0.435079, 0.408489, 0.802398,
		0.829721, -0.527981, -0.181107,
		42.908436, 25.941998, 32.252869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866852, 26.836304, 32.191597>,  <42.327629, 26.311584, 32.379642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866852, 26.836304, 32.191597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090351, 26.508690, 32.139473>,  <43.224453, 26.312122, 32.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.090351, 26.508690, 32.139473>,  <42.866852, 26.836304, 32.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090351, 26.508690, 32.139473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641019, 0.526205, -0.558751,
		0.526205, 0.228673, 0.819034,
		0.558751, -0.819034, -0.130308,
		43.257977, 26.262980, 32.100380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555996, 26.772068, 32.586704>,  <42.866852, 26.836304, 32.191597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555996, 26.772068, 32.586704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575306, 26.586184, 32.233047>,  <43.586891, 26.474653, 32.020851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.575306, 26.586184, 32.233047>,  <43.555996, 26.772068, 32.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.575306, 26.586184, 32.233047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652410, 0.684935, -0.324385,
		0.756328, -0.561167, 0.336243,
		0.048271, -0.464710, -0.884146,
		43.589787, 26.446770, 31.967804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264393, 26.828524, 32.313728>,  <43.555996, 26.772068, 32.586704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264393, 26.828524, 32.313728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028957, 26.810902, 31.990837>,  <43.887695, 26.800329, 31.797102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028957, 26.810902, 31.990837>,  <44.264393, 26.828524, 32.313728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028957, 26.810902, 31.990837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416379, 0.839369, -0.349410,
		0.692959, -0.541773, -0.475700,
		-0.588588, -0.044055, -0.807232,
		43.852383, 26.797686, 31.748667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598450, 26.741354, 31.707355>,  <44.264393, 26.828524, 32.313728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598450, 26.741354, 31.707355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265133, 26.961594, 31.687475>,  <44.065144, 27.093737, 31.675547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.265133, 26.961594, 31.687475>,  <44.598450, 26.741354, 31.707355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.265133, 26.961594, 31.687475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551840, 0.823022, -0.134561,
		-0.033186, -0.139554, -0.989658,
		-0.833289, 0.550599, -0.049699,
		44.015144, 27.126774, 31.672565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479023, 27.130945, 31.037781>,  <44.598450, 26.741354, 31.707355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479023, 27.130945, 31.037781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312569, 27.340883, 31.334799>,  <44.212696, 27.466846, 31.513010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.312569, 27.340883, 31.334799>,  <44.479023, 27.130945, 31.037781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.312569, 27.340883, 31.334799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455311, 0.827130, -0.329467,
		-0.787098, 0.200985, -0.583165,
		-0.416136, 0.524844, 0.742543,
		44.187729, 27.498337, 31.557562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145840, 27.740864, 30.780220>,  <44.479023, 27.130945, 31.037781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145840, 27.740864, 30.780220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196056, 27.819492, 31.169188>,  <44.226185, 27.866671, 31.402569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196056, 27.819492, 31.169188>,  <44.145840, 27.740864, 30.780220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196056, 27.819492, 31.169188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272102, 0.935764, -0.224291,
		-0.954044, 0.292755, 0.063987,
		0.125539, 0.196573, 0.972419,
		44.233719, 27.878464, 31.460913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734528, 28.358835, 30.982332>,  <44.145840, 27.740864, 30.780220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734528, 28.358835, 30.982332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033722, 28.318840, 31.244785>,  <44.213238, 28.294842, 31.402258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033722, 28.318840, 31.244785>,  <43.734528, 28.358835, 30.982332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033722, 28.318840, 31.244785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167576, 0.985009, -0.040929,
		-0.642207, 0.140567, 0.753533,
		0.747990, -0.099989, 0.656135,
		44.258118, 28.288843, 31.441626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695171, 28.978855, 31.267353>,  <43.734528, 28.358835, 30.982332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695171, 28.978855, 31.267353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050030, 28.846037, 31.395548>,  <44.262947, 28.766346, 31.472466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050030, 28.846037, 31.395548>,  <43.695171, 28.978855, 31.267353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050030, 28.846037, 31.395548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345674, 0.938232, 0.015193,
		-0.305737, 0.097307, 0.947131,
		0.887149, -0.332044, 0.320489,
		44.316174, 28.746424, 31.491695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944515, 29.423834, 31.818550>,  <43.695171, 28.978855, 31.267353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944515, 29.423834, 31.818550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269855, 29.252068, 31.661547>,  <44.465061, 29.149008, 31.567345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269855, 29.252068, 31.661547>,  <43.944515, 29.423834, 31.818550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269855, 29.252068, 31.661547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477113, 0.878407, 0.027658,
		0.332905, -0.209767, 0.919332,
		0.813350, -0.429418, -0.392508,
		44.513859, 29.123241, 31.543795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.408962, 29.720350, 32.202572>,  <43.944515, 29.423834, 31.818550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.408962, 29.720350, 32.202572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601353, 29.564545, 31.888388>,  <44.716785, 29.471062, 31.699877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601353, 29.564545, 31.888388>,  <44.408962, 29.720350, 32.202572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601353, 29.564545, 31.888388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589366, 0.806911, -0.039258,
		0.649087, -0.444041, 0.617668,
		0.480972, -0.389515, -0.785458,
		44.745644, 29.447691, 31.652750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098099, 29.867455, 32.359085>,  <44.408962, 29.720350, 32.202572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098099, 29.867455, 32.359085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058899, 29.792530, 31.968124>,  <45.035381, 29.747576, 31.733549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058899, 29.792530, 31.968124>,  <45.098099, 29.867455, 32.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058899, 29.792530, 31.968124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546510, 0.810657, -0.210149,
		0.831699, -0.554753, 0.022926,
		-0.097996, -0.187311, -0.977401,
		45.029499, 29.736338, 31.674904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637802, 29.816656, 31.966011>,  <45.098099, 29.867455, 32.359085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637802, 29.816656, 31.966011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412895, 29.940977, 31.659481>,  <45.277950, 30.015570, 31.475563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412895, 29.940977, 31.659481>,  <45.637802, 29.816656, 31.966011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412895, 29.940977, 31.659481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597841, 0.793027, -0.117020,
		0.571347, -0.523938, -0.631706,
		-0.562271, 0.310800, -0.766325,
		45.244213, 30.034218, 31.429583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.052475, 29.923452, 31.395287>,  <45.637802, 29.816656, 31.966011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.052475, 29.923452, 31.395287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723835, 30.142628, 31.332380>,  <45.526649, 30.274134, 31.294636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723835, 30.142628, 31.332380>,  <46.052475, 29.923452, 31.395287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723835, 30.142628, 31.332380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564257, 0.820944, -0.087545,
		0.081139, -0.160666, -0.983668,
		-0.821602, 0.547939, -0.157268,
		45.477356, 30.307009, 31.285200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364544, 30.492247, 31.135075>,  <46.052475, 29.923452, 31.395287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364544, 30.492247, 31.135075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000095, 30.656761, 31.145685>,  <45.781425, 30.755470, 31.152052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000095, 30.656761, 31.145685>,  <46.364544, 30.492247, 31.135075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000095, 30.656761, 31.145685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410891, 0.901476, 0.136048,
		0.032042, 0.134856, -0.990347,
		-0.911121, 0.411284, 0.026526,
		45.726761, 30.780146, 31.153643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381630, 31.087360, 30.747477>,  <46.364544, 30.492247, 31.135075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381630, 31.087360, 30.747477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091061, 31.120441, 31.020378>,  <45.916718, 31.140289, 31.184118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091061, 31.120441, 31.020378>,  <46.381630, 31.087360, 30.747477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091061, 31.120441, 31.020378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403617, 0.854831, 0.326125,
		-0.556241, 0.512274, -0.654348,
		-0.726422, 0.082702, 0.682254,
		45.873135, 31.145252, 31.225054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103634, 31.748205, 30.727962>,  <46.381630, 31.087360, 30.747477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103634, 31.748205, 30.727962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976017, 31.623629, 31.086006>,  <45.899448, 31.548883, 31.300833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976017, 31.623629, 31.086006>,  <46.103634, 31.748205, 30.727962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976017, 31.623629, 31.086006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344104, 0.841949, 0.415590,
		-0.883067, 0.440600, -0.161446,
		-0.319038, -0.311440, 0.895109,
		45.880306, 31.530197, 31.354538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701130, 32.309361, 31.027990>,  <46.103634, 31.748205, 30.727962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701130, 32.309361, 31.027990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772247, 32.083351, 31.350266>,  <45.814919, 31.947744, 31.543631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772247, 32.083351, 31.350266>,  <45.701130, 32.309361, 31.027990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772247, 32.083351, 31.350266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073730, 0.824080, 0.561655,
		-0.981301, -0.040456, 0.188177,
		0.177795, -0.565028, 0.805688,
		45.825584, 31.913843, 31.591972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194294, 32.454136, 31.538258>,  <45.701130, 32.309361, 31.027990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194294, 32.454136, 31.538258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510563, 32.306164, 31.733391>,  <45.700325, 32.217381, 31.850471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510563, 32.306164, 31.733391>,  <45.194294, 32.454136, 31.538258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510563, 32.306164, 31.733391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017426, 0.810084, 0.586055,
		-0.611987, -0.454879, 0.646960,
		0.790676, -0.369932, 0.487833,
		45.747765, 32.195183, 31.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072662, 32.464855, 32.282566>,  <45.194294, 32.454136, 31.538258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072662, 32.464855, 32.282566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469154, 32.442204, 32.234806>,  <45.707050, 32.428612, 32.206150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469154, 32.442204, 32.234806>,  <45.072662, 32.464855, 32.282566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469154, 32.442204, 32.234806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119368, 0.771332, 0.625139,
		0.056699, -0.633909, 0.771326,
		0.991230, -0.056627, -0.119403,
		45.766521, 32.425217, 32.198986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325291, 32.472824, 32.966339>,  <45.072662, 32.464855, 32.282566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325291, 32.472824, 32.966339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621239, 32.572872, 32.716526>,  <45.798805, 32.632900, 32.566639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621239, 32.572872, 32.716526>,  <45.325291, 32.472824, 32.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621239, 32.572872, 32.716526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182093, 0.819216, 0.543808,
		0.647641, -0.516069, 0.560566,
		0.739867, 0.250117, -0.624530,
		45.843201, 32.647907, 32.529167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758045, 32.671959, 33.493786>,  <45.325291, 32.472824, 32.966339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758045, 32.671959, 33.493786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879375, 32.806446, 33.137146>,  <45.952171, 32.887138, 32.923161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879375, 32.806446, 33.137146>,  <45.758045, 32.671959, 33.493786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879375, 32.806446, 33.137146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171079, 0.901264, 0.398065,
		0.937405, -0.273275, 0.215852,
		0.303321, 0.336220, -0.891601,
		45.970371, 32.907310, 32.869667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455128, 32.873405, 33.513016>,  <45.758045, 32.671959, 33.493786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455128, 32.873405, 33.513016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261913, 33.097721, 33.244034>,  <46.145985, 33.232311, 33.082645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.261913, 33.097721, 33.244034>,  <46.455128, 32.873405, 33.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261913, 33.097721, 33.244034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287667, 0.826997, 0.483036,
		0.826997, 0.039882, -0.560790,
		-0.483036, 0.560790, -0.672451,
		46.117004, 33.265957, 33.042297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.726044, 33.452496, 33.469776>,  <46.455128, 32.873405, 33.513016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.726044, 33.452496, 33.469776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412704, 33.601830, 33.270981>,  <46.224701, 33.691429, 33.151703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.412704, 33.601830, 33.270981>,  <46.726044, 33.452496, 33.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412704, 33.601830, 33.270981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193789, 0.906373, 0.375411,
		0.590607, 0.197766, -0.782350,
		-0.783345, 0.373332, -0.496985,
		46.177700, 33.713829, 33.121883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929070, 34.120487, 33.063602>,  <46.726044, 33.452496, 33.469776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929070, 34.120487, 33.063602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535782, 34.134739, 33.135162>,  <46.299809, 34.143291, 33.178101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.535782, 34.134739, 33.135162>,  <46.929070, 34.120487, 33.063602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.535782, 34.134739, 33.135162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080142, 0.965394, 0.248178,
		-0.163868, 0.258351, -0.952051,
		-0.983221, 0.035631, 0.178902,
		46.240814, 34.145428, 33.188831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.698803, 34.795742, 33.132965>,  <46.929070, 34.120487, 33.063602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.698803, 34.795742, 33.132965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379890, 34.614006, 33.291927>,  <46.188545, 34.504967, 33.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.379890, 34.614006, 33.291927>,  <46.698803, 34.795742, 33.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379890, 34.614006, 33.291927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276148, 0.859975, 0.429168,
		-0.536742, 0.232424, -0.811102,
		-0.797277, -0.454336, 0.397401,
		46.140709, 34.477707, 33.411148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806553, 35.041641, 33.888550>,  <46.698803, 34.795742, 33.132965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806553, 35.041641, 33.888550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190651, 34.979691, 33.795643>,  <47.421108, 34.942520, 33.739899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.190651, 34.979691, 33.795643>,  <46.806553, 35.041641, 33.888550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.190651, 34.979691, 33.795643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251309, 0.841858, 0.477618,
		0.121568, -0.517001, 0.847308,
		0.960242, -0.154873, -0.232270,
		47.478725, 34.933228, 33.725964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335991, 35.118504, 34.501614>,  <46.806553, 35.041641, 33.888550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335991, 35.118504, 34.501614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502949, 35.227013, 34.154697>,  <47.603123, 35.292118, 33.946548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.502949, 35.227013, 34.154697>,  <47.335991, 35.118504, 34.501614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.502949, 35.227013, 34.154697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196795, 0.904769, 0.377710,
		0.887161, -0.328332, 0.324260,
		0.417395, 0.271277, -0.867289,
		47.628166, 35.308395, 33.894512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909752, 35.512810, 34.452190>,  <47.335991, 35.118504, 34.501614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909752, 35.512810, 34.452190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769917, 35.630749, 34.096470>,  <47.686016, 35.701511, 33.883038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769917, 35.630749, 34.096470>,  <47.909752, 35.512810, 34.452190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769917, 35.630749, 34.096470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442531, 0.888600, 0.120653,
		0.825805, -0.351363, -0.441124,
		-0.349590, 0.294847, -0.889299,
		47.665039, 35.719204, 33.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.871841, 35.243149, 35.075333>,  <47.909752, 35.512810, 34.452190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.871841, 35.243149, 35.075333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769840, 34.929749, 34.848667>,  <47.708641, 34.741707, 34.712669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769840, 34.929749, 34.848667>,  <47.871841, 35.243149, 35.075333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769840, 34.929749, 34.848667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121002, -0.555570, 0.822618,
		-0.959340, 0.278336, 0.046866,
		-0.255001, -0.783500, -0.566659,
		47.693340, 34.694698, 34.678669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.670635, 40.715034, 41.847786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345409, 40.523235, 41.979851>,  <38.150272, 40.408157, 42.059090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345409, 40.523235, 41.979851>,  <38.670635, 40.715034, 41.847786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345409, 40.523235, 41.979851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038677, -0.521380, -0.852448,
		0.580885, -0.705866, 0.405371,
		-0.813066, -0.479496, 0.330163,
		38.101490, 40.379387, 42.078899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748055, 40.087547, 41.650215>,  <38.670635, 40.715034, 41.847786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748055, 40.087547, 41.650215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353390, 40.107773, 41.712097>,  <38.116589, 40.119907, 41.749226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353390, 40.107773, 41.712097>,  <38.748055, 40.087547, 41.650215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353390, 40.107773, 41.712097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160970, -0.443560, -0.881670,
		0.024042, -0.894817, 0.445785,
		-0.986666, 0.050561, 0.154703,
		38.057388, 40.122940, 41.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386631, 39.365475, 41.770191>,  <38.748055, 40.087547, 41.650215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386631, 39.365475, 41.770191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112270, 39.612095, 41.615578>,  <37.947655, 39.760067, 41.522808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.112270, 39.612095, 41.615578>,  <38.386631, 39.365475, 41.770191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112270, 39.612095, 41.615578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072984, -0.586784, -0.806448,
		-0.724026, -0.524933, 0.447473,
		-0.685901, 0.616547, -0.386535,
		37.906502, 39.797058, 41.499619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983368, 38.902683, 41.363869>,  <38.386631, 39.365475, 41.770191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983368, 38.902683, 41.363869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907780, 39.274021, 41.235832>,  <37.862427, 39.496826, 41.159008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907780, 39.274021, 41.235832>,  <37.983368, 38.902683, 41.363869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907780, 39.274021, 41.235832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253468, -0.361033, -0.897446,
		-0.948707, -0.088455, 0.303530,
		-0.188968, 0.928348, -0.320094,
		37.851089, 39.552525, 41.139805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347782, 38.811218, 41.092915>,  <37.983368, 38.902683, 41.363869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347782, 38.811218, 41.092915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494255, 39.144913, 40.928009>,  <37.582138, 39.345131, 40.829063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494255, 39.144913, 40.928009>,  <37.347782, 38.811218, 41.092915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494255, 39.144913, 40.928009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341646, -0.291573, -0.893456,
		-0.865558, 0.468015, 0.178245,
		0.366179, 0.834235, -0.412268,
		37.604107, 39.395184, 40.804329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876759, 38.856472, 40.586597>,  <37.347782, 38.811218, 41.092915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876759, 38.856472, 40.586597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137150, 39.145592, 40.493828>,  <37.293385, 39.319065, 40.438168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.137150, 39.145592, 40.493828>,  <36.876759, 38.856472, 40.586597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137150, 39.145592, 40.493828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259211, -0.075494, -0.962866,
		-0.713466, 0.686923, 0.138212,
		0.650981, 0.722798, -0.231921,
		37.332443, 39.362431, 40.424252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439217, 39.440575, 40.201241>,  <36.876759, 38.856472, 40.586597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439217, 39.440575, 40.201241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828930, 39.386734, 40.128963>,  <37.062759, 39.354431, 40.085598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828930, 39.386734, 40.128963>,  <36.439217, 39.440575, 40.201241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828930, 39.386734, 40.128963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196695, -0.116961, -0.973463,
		0.109897, 0.983973, -0.140429,
		0.974286, -0.134602, -0.180689,
		37.121216, 39.346352, 40.074757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592464, 39.810455, 39.609455>,  <36.439217, 39.440575, 40.201241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592464, 39.810455, 39.609455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905766, 39.564312, 39.644878>,  <37.093746, 39.416626, 39.666134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.905766, 39.564312, 39.644878>,  <36.592464, 39.810455, 39.609455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905766, 39.564312, 39.644878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185312, 0.095114, -0.978066,
		0.593439, 0.782487, 0.188532,
		0.783256, -0.615360, 0.088560,
		37.140743, 39.379704, 39.671448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900894, 40.169178, 39.039856>,  <36.592464, 39.810455, 39.609455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900894, 40.169178, 39.039856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050079, 39.809578, 39.131676>,  <37.139591, 39.593819, 39.186768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050079, 39.809578, 39.131676>,  <36.900894, 40.169178, 39.039856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050079, 39.809578, 39.131676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076407, -0.216800, -0.973221,
		0.924696, 0.380511, -0.012167,
		0.372960, -0.899004, 0.229548,
		37.161968, 39.539875, 39.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550091, 40.030788, 38.765472>,  <36.900894, 40.169178, 39.039856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550091, 40.030788, 38.765472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407795, 39.659164, 38.806057>,  <37.322418, 39.436192, 38.830410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407795, 39.659164, 38.806057>,  <37.550091, 40.030788, 38.765472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407795, 39.659164, 38.806057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179579, -0.174494, -0.968144,
		0.917170, -0.326187, 0.228914,
		-0.355740, -0.929061, 0.101464,
		37.301071, 39.380447, 38.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104404, 39.642460, 38.457371>,  <37.550091, 40.030788, 38.765472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104404, 39.642460, 38.457371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768391, 39.425747, 38.445927>,  <37.566784, 39.295719, 38.439060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768391, 39.425747, 38.445927>,  <38.104404, 39.642460, 38.457371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768391, 39.425747, 38.445927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240381, -0.324395, -0.914869,
		0.486376, -0.775398, 0.402736,
		-0.840033, -0.541780, -0.028613,
		37.516380, 39.263214, 38.437344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277214, 39.106915, 38.048203>,  <38.104404, 39.642460, 38.457371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277214, 39.106915, 38.048203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883755, 39.046059, 38.086746>,  <37.647678, 39.009544, 38.109871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883755, 39.046059, 38.086746>,  <38.277214, 39.106915, 38.048203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883755, 39.046059, 38.086746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015700, -0.460590, -0.887474,
		0.179400, -0.874478, 0.450671,
		-0.983651, -0.152137, 0.096359,
		37.588661, 39.000416, 38.115654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151638, 38.447117, 38.004524>,  <38.277214, 39.106915, 38.048203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151638, 38.447117, 38.004524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821617, 38.637489, 37.882679>,  <37.623604, 38.751713, 37.809570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.821617, 38.637489, 37.882679>,  <38.151638, 38.447117, 38.004524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821617, 38.637489, 37.882679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097294, -0.411380, -0.906256,
		-0.556626, -0.777341, 0.293103,
		-0.825046, 0.475929, -0.304615,
		37.574104, 38.780266, 37.791294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860962, 37.988880, 37.572620>,  <38.151638, 38.447117, 38.004524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860962, 37.988880, 37.572620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653114, 38.316559, 37.475536>,  <37.528404, 38.513168, 37.417286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653114, 38.316559, 37.475536>,  <37.860962, 37.988880, 37.572620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653114, 38.316559, 37.475536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024942, -0.298495, -0.954085,
		-0.854035, -0.489705, 0.175536,
		-0.519617, 0.819201, -0.242711,
		37.497231, 38.562321, 37.402721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190140, 37.717037, 37.269344>,  <37.860962, 37.988880, 37.572620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190140, 37.717037, 37.269344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285583, 38.085384, 37.146008>,  <37.342850, 38.306393, 37.072006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285583, 38.085384, 37.146008>,  <37.190140, 37.717037, 37.269344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285583, 38.085384, 37.146008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208464, -0.261538, -0.942412,
		-0.948477, 0.289146, 0.129561,
		0.238609, 0.920865, -0.308339,
		37.357166, 38.361645, 37.053505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624954, 38.016068, 36.968407>,  <37.190140, 37.717037, 37.269344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624954, 38.016068, 36.968407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938728, 38.205013, 36.807644>,  <37.126995, 38.318378, 36.711185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938728, 38.205013, 36.807644>,  <36.624954, 38.016068, 36.968407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938728, 38.205013, 36.807644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402769, -0.104798, -0.909282,
		-0.471629, 0.875153, 0.108045,
		0.784438, 0.472361, -0.401910,
		37.174061, 38.346722, 36.687073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213371, 38.299023, 36.416096>,  <36.624954, 38.016068, 36.968407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213371, 38.299023, 36.416096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605423, 38.298950, 36.336758>,  <36.840656, 38.298908, 36.289154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605423, 38.298950, 36.336758>,  <36.213371, 38.299023, 36.416096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605423, 38.298950, 36.336758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195800, -0.160600, -0.967404,
		-0.031683, 0.987019, -0.157444,
		0.980132, -0.000177, -0.198346,
		36.899464, 38.298897, 36.277252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152233, 38.614300, 35.776058>,  <36.213371, 38.299023, 36.416096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152233, 38.614300, 35.776058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492710, 38.409718, 35.823181>,  <36.696999, 38.286968, 35.851456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492710, 38.409718, 35.823181>,  <36.152233, 38.614300, 35.776058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492710, 38.409718, 35.823181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095476, -0.371604, -0.923469,
		0.516091, 0.774805, -0.365140,
		0.851196, -0.511456, 0.117806,
		36.748070, 38.256279, 35.858524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358246, 38.512154, 35.123249>,  <36.152233, 38.614300, 35.776058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358246, 38.512154, 35.123249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602837, 38.257866, 35.311699>,  <36.749592, 38.105293, 35.424770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.602837, 38.257866, 35.311699>,  <36.358246, 38.512154, 35.123249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602837, 38.257866, 35.311699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074988, -0.546174, -0.834308,
		0.787701, 0.545489, -0.286302,
		0.611476, -0.635717, 0.471127,
		36.786278, 38.067150, 35.453037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898087, 38.500992, 34.754322>,  <36.358246, 38.512154, 35.123249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898087, 38.500992, 34.754322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928745, 38.156738, 34.955688>,  <36.947140, 37.950184, 35.076508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928745, 38.156738, 34.955688>,  <36.898087, 38.500992, 34.754322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928745, 38.156738, 34.955688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414417, -0.431726, -0.801169,
		0.906854, 0.270030, 0.323574,
		0.076644, -0.860637, 0.503417,
		36.951740, 37.898548, 35.106712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466724, 38.193539, 34.539074>,  <36.898087, 38.500992, 34.754322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466724, 38.193539, 34.539074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309612, 37.866993, 34.708439>,  <37.215347, 37.671066, 34.810059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309612, 37.866993, 34.708439>,  <37.466724, 38.193539, 34.539074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309612, 37.866993, 34.708439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195245, -0.523944, -0.829073,
		0.898668, -0.242973, 0.365185,
		-0.392778, -0.816362, 0.423412,
		37.191780, 37.622086, 34.835461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941456, 37.664925, 34.363716>,  <37.466724, 38.193539, 34.539074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941456, 37.664925, 34.363716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611183, 37.458179, 34.454132>,  <37.413017, 37.334133, 34.508381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611183, 37.458179, 34.454132>,  <37.941456, 37.664925, 34.363716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611183, 37.458179, 34.454132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247634, -0.692106, -0.677987,
		0.506872, -0.503829, 0.699455,
		-0.825686, -0.516862, 0.226044,
		37.363476, 37.303120, 34.521946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466206, 37.673244, 33.756996>,  <37.941456, 37.664925, 34.363716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466206, 37.673244, 33.756996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765686, 37.429848, 33.651787>,  <38.945374, 37.283810, 33.588661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765686, 37.429848, 33.651787>,  <38.466206, 37.673244, 33.756996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765686, 37.429848, 33.651787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483484, 0.229779, 0.844656,
		-0.453531, -0.759563, 0.466233,
		0.748700, -0.608495, -0.263025,
		38.990295, 37.247299, 33.572880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455616, 37.050381, 34.134834>,  <38.466206, 37.673244, 33.756996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455616, 37.050381, 34.134834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822411, 37.154224, 34.013683>,  <39.042488, 37.216530, 33.940994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822411, 37.154224, 34.013683>,  <38.455616, 37.050381, 34.134834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822411, 37.154224, 34.013683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265504, 0.169476, 0.949097,
		0.297724, -0.950727, 0.086481,
		0.916989, 0.259608, -0.302879,
		39.097507, 37.232105, 33.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780075, 36.750568, 34.571018>,  <38.455616, 37.050381, 34.134834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780075, 36.750568, 34.571018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060520, 37.009556, 34.451534>,  <39.228786, 37.164948, 34.379845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.060520, 37.009556, 34.451534>,  <38.780075, 36.750568, 34.571018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060520, 37.009556, 34.451534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242611, 0.177313, 0.953782,
		0.670513, -0.741174, -0.032768,
		0.701108, 0.647473, -0.298707,
		39.270851, 37.203796, 34.361923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208752, 36.682781, 35.099628>,  <38.780075, 36.750568, 34.571018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208752, 36.682781, 35.099628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363316, 37.006222, 34.922157>,  <39.456055, 37.200287, 34.815674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363316, 37.006222, 34.922157>,  <39.208752, 36.682781, 35.099628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363316, 37.006222, 34.922157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373289, 0.302775, 0.876916,
		0.843411, -0.504469, -0.184847,
		0.386410, 0.808603, -0.443677,
		39.479240, 37.248802, 34.789055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910572, 36.624939, 35.111080>,  <39.208752, 36.682781, 35.099628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910572, 36.624939, 35.111080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818134, 37.013412, 35.087765>,  <39.762672, 37.246498, 35.073776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818134, 37.013412, 35.087765>,  <39.910572, 36.624939, 35.111080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818134, 37.013412, 35.087765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412938, 0.152154, 0.897959,
		0.880953, 0.183441, -0.436201,
		-0.231092, 0.971184, -0.058291,
		39.748806, 37.304768, 35.070278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461605, 36.933353, 35.577976>,  <39.910572, 36.624939, 35.111080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461605, 36.933353, 35.577976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187809, 37.222149, 35.537582>,  <40.023529, 37.395428, 35.513348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.187809, 37.222149, 35.537582>,  <40.461605, 36.933353, 35.577976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187809, 37.222149, 35.537582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284846, 0.392375, 0.874588,
		0.671068, 0.569885, -0.474235,
		-0.684492, 0.721992, -0.100981,
		39.982460, 37.438747, 35.507290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821842, 37.466568, 35.691025>,  <40.461605, 36.933353, 35.577976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821842, 37.466568, 35.691025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441204, 37.580704, 35.736713>,  <40.212822, 37.649185, 35.764126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.441204, 37.580704, 35.736713>,  <40.821842, 37.466568, 35.691025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441204, 37.580704, 35.736713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261348, 0.555617, 0.789295,
		0.161755, 0.780941, -0.603296,
		-0.951595, 0.285343, 0.114223,
		40.155727, 37.666306, 35.770981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907936, 38.143570, 35.998276>,  <40.821842, 37.466568, 35.691025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907936, 38.143570, 35.998276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.544186, 37.995960, 36.075066>,  <40.325935, 37.907394, 36.121140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.544186, 37.995960, 36.075066>,  <40.907936, 38.143570, 35.998276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544186, 37.995960, 36.075066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035212, 0.528144, 0.848425,
		-0.414480, 0.764778, -0.493276,
		-0.909377, -0.369025, 0.191976,
		40.271374, 37.885254, 36.132660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459785, 38.771465, 36.256805>,  <40.907936, 38.143570, 35.998276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459785, 38.771465, 36.256805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299038, 38.427177, 36.381805>,  <40.202587, 38.220604, 36.456806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.299038, 38.427177, 36.381805>,  <40.459785, 38.771465, 36.256805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299038, 38.427177, 36.381805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038031, 0.356670, 0.933456,
		-0.914906, 0.363245, -0.176069,
		-0.401872, -0.860721, 0.312505,
		40.178478, 38.168961, 36.475555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037041, 38.941422, 36.788502>,  <40.459785, 38.771465, 36.256805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037041, 38.941422, 36.788502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085064, 38.546886, 36.833630>,  <40.113876, 38.310165, 36.860706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.085064, 38.546886, 36.833630>,  <40.037041, 38.941422, 36.788502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085064, 38.546886, 36.833630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140380, 0.129363, 0.981610,
		-0.982792, -0.102009, 0.153993,
		0.120054, -0.986336, 0.112817,
		40.121078, 38.250984, 36.867474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574745, 38.823742, 37.379852>,  <40.037041, 38.941422, 36.788502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574745, 38.823742, 37.379852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855614, 38.540001, 37.355278>,  <40.024136, 38.369759, 37.340534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855614, 38.540001, 37.355278>,  <39.574745, 38.823742, 37.379852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855614, 38.540001, 37.355278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137467, 0.050397, 0.989223,
		-0.698608, -0.703054, 0.132900,
		0.702175, -0.709348, -0.061439,
		40.066265, 38.327198, 37.336845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387100, 38.263611, 37.904263>,  <39.574745, 38.823742, 37.379852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387100, 38.263611, 37.904263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777676, 38.243359, 37.820358>,  <40.012020, 38.231209, 37.770016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.777676, 38.243359, 37.820358>,  <39.387100, 38.263611, 37.904263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777676, 38.243359, 37.820358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207623, -0.044423, 0.977200,
		-0.058813, -0.997728, -0.032861,
		0.976439, -0.050650, -0.209764,
		40.070606, 38.228168, 37.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756950, 37.707741, 38.235653>,  <39.387100, 38.263611, 37.904263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756950, 37.707741, 38.235653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015076, 38.002815, 38.156261>,  <40.169949, 38.179859, 38.108627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015076, 38.002815, 38.156261>,  <39.756950, 37.707741, 38.235653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015076, 38.002815, 38.156261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254404, 0.037463, 0.966372,
		0.720316, -0.674102, -0.163496,
		0.645308, 0.737687, -0.198480,
		40.208668, 38.224121, 38.096718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177357, 37.536285, 38.684963>,  <39.756950, 37.707741, 38.235653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177357, 37.536285, 38.684963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310730, 37.893970, 38.565495>,  <40.390755, 38.108582, 38.493813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310730, 37.893970, 38.565495>,  <40.177357, 37.536285, 38.684963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310730, 37.893970, 38.565495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288052, 0.205021, 0.935410,
		0.897691, -0.397927, -0.189220,
		0.333431, 0.894215, -0.298670,
		40.410759, 38.162235, 38.475895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957424, 37.621601, 38.794338>,  <40.177357, 37.536285, 38.684963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957424, 37.621601, 38.794338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798122, 37.988422, 38.786247>,  <40.702541, 38.208515, 38.781391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798122, 37.988422, 38.786247>,  <40.957424, 37.621601, 38.794338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798122, 37.988422, 38.786247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388506, 0.188612, 0.901936,
		0.830938, 0.351339, -0.431396,
		-0.398251, 0.917053, -0.020228,
		40.678646, 38.263538, 38.780178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480762, 38.064003, 39.064442>,  <40.957424, 37.621601, 38.794338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480762, 38.064003, 39.064442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.133511, 38.259361, 39.099796>,  <40.925159, 38.376575, 39.121010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.133511, 38.259361, 39.099796>,  <41.480762, 38.064003, 39.064442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133511, 38.259361, 39.099796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259822, 0.295464, 0.919344,
		0.422891, 0.821078, -0.383399,
		-0.868134, 0.488397, 0.088385,
		40.873070, 38.405880, 39.126312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657177, 38.729652, 39.476875>,  <41.480762, 38.064003, 39.064442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657177, 38.729652, 39.476875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261059, 38.678356, 39.498329>,  <41.023388, 38.647579, 39.511200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.261059, 38.678356, 39.498329>,  <41.657177, 38.729652, 39.476875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261059, 38.678356, 39.498329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014085, 0.291264, 0.956539,
		-0.138292, 0.948008, -0.286629,
		-0.990291, -0.128245, 0.053632,
		40.963970, 38.639881, 39.514420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441139, 39.348701, 39.867199>,  <41.657177, 38.729652, 39.476875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441139, 39.348701, 39.867199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154102, 39.072289, 39.901932>,  <40.981880, 38.906441, 39.922771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154102, 39.072289, 39.901932>,  <41.441139, 39.348701, 39.867199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154102, 39.072289, 39.901932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156413, 0.281386, 0.946761,
		-0.678677, 0.665803, -0.310006,
		-0.717588, -0.691034, 0.086829,
		40.938828, 38.864979, 39.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.665672, 39.764759, 40.075573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.626476, 39.373878, 40.150913>,  <40.602959, 39.139351, 40.196117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.626476, 39.373878, 40.150913>,  <40.665672, 39.764759, 40.075573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626476, 39.373878, 40.150913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291548, 0.209143, 0.933413,
		-0.951524, 0.036548, -0.305395,
		-0.097986, -0.977202, 0.188349,
		40.597080, 39.080719, 40.207417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985111, 39.620499, 40.335575>,  <40.665672, 39.764759, 40.075573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985111, 39.620499, 40.335575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221375, 39.324703, 40.464748>,  <40.363132, 39.147228, 40.542252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.221375, 39.324703, 40.464748>,  <39.985111, 39.620499, 40.335575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221375, 39.324703, 40.464748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272842, 0.193600, 0.942378,
		-0.759393, -0.644734, -0.087411,
		0.590660, -0.739485, 0.322929,
		40.398571, 39.102859, 40.561626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569340, 39.273499, 40.876587>,  <39.985111, 39.620499, 40.335575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569340, 39.273499, 40.876587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943867, 39.149067, 40.941746>,  <40.168583, 39.074409, 40.980843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943867, 39.149067, 40.941746>,  <39.569340, 39.273499, 40.876587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943867, 39.149067, 40.941746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063206, 0.307016, 0.949603,
		-0.345414, -0.899428, 0.267803,
		0.936320, -0.311079, 0.162897,
		40.224762, 39.055744, 40.990616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584770, 39.053276, 41.608475>,  <39.569340, 39.273499, 40.876587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584770, 39.053276, 41.608475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.969936, 39.084522, 41.505169>,  <40.201035, 39.103271, 41.443188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.969936, 39.084522, 41.505169>,  <39.584770, 39.053276, 41.608475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969936, 39.084522, 41.505169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254535, 0.054576, 0.965522,
		0.089525, -0.995449, 0.032667,
		0.962911, 0.078123, -0.258263,
		40.258808, 39.107956, 41.427689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994713, 38.495655, 41.945137>,  <39.584770, 39.053276, 41.608475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994713, 38.495655, 41.945137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214401, 38.820183, 41.865021>,  <40.346214, 39.014900, 41.816952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.214401, 38.820183, 41.865021>,  <39.994713, 38.495655, 41.945137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214401, 38.820183, 41.865021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098176, 0.175378, 0.979594,
		0.829890, -0.557678, 0.016670,
		0.549221, 0.811318, -0.200295,
		40.379169, 39.063580, 41.804932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603024, 38.514885, 42.410503>,  <39.994713, 38.495655, 41.945137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603024, 38.514885, 42.410503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601368, 38.893162, 42.280487>,  <40.600372, 39.120129, 42.202477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.601368, 38.893162, 42.280487>,  <40.603024, 38.514885, 42.410503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601368, 38.893162, 42.280487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214669, 0.318311, 0.923361,
		0.976678, -0.065951, -0.204329,
		-0.004144, 0.945690, -0.325045,
		40.600124, 39.176868, 42.182972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070698, 38.817326, 42.771622>,  <40.603024, 38.514885, 42.410503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070698, 38.817326, 42.771622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880676, 39.142132, 42.636002>,  <40.766663, 39.337017, 42.554630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.880676, 39.142132, 42.636002>,  <41.070698, 38.817326, 42.771622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880676, 39.142132, 42.636002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314761, 0.516617, 0.796261,
		0.821737, 0.271545, -0.501011,
		-0.475052, 0.812016, -0.339052,
		40.738159, 39.385738, 42.534286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492317, 39.258297, 42.793831>,  <41.070698, 38.817326, 42.771622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492317, 39.258297, 42.793831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158005, 39.476696, 42.817001>,  <40.957417, 39.607735, 42.830902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158005, 39.476696, 42.817001>,  <41.492317, 39.258297, 42.793831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158005, 39.476696, 42.817001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415211, 0.559486, 0.717339,
		0.359256, 0.623591, -0.694313,
		-0.835784, 0.545995, 0.057923,
		40.907269, 39.640495, 42.834377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767464, 39.952095, 42.794060>,  <41.492317, 39.258297, 42.793831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767464, 39.952095, 42.794060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401531, 39.975040, 42.953960>,  <41.181973, 39.988808, 43.049900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401531, 39.975040, 42.953960>,  <41.767464, 39.952095, 42.794060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401531, 39.975040, 42.953960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362185, 0.554410, 0.749300,
		-0.178646, 0.830264, -0.527965,
		-0.914826, 0.057362, 0.399753,
		41.127083, 39.992249, 43.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658798, 40.635349, 43.076454>,  <41.767464, 39.952095, 42.794060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658798, 40.635349, 43.076454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366493, 40.473526, 43.296387>,  <41.191109, 40.376431, 43.428345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366493, 40.473526, 43.296387>,  <41.658798, 40.635349, 43.076454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366493, 40.473526, 43.296387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399169, 0.400147, 0.824953,
		-0.553754, 0.822322, -0.130927,
		-0.730767, -0.404559, 0.549829,
		41.147263, 40.352158, 43.461334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537899, 41.175922, 43.468464>,  <41.658798, 40.635349, 43.076454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537899, 41.175922, 43.468464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.383980, 40.841648, 43.625206>,  <41.291626, 40.641083, 43.719254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.383980, 40.841648, 43.625206>,  <41.537899, 41.175922, 43.468464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383980, 40.841648, 43.625206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392708, 0.235970, 0.888875,
		-0.835290, 0.495925, 0.237381,
		-0.384800, -0.835690, 0.391857,
		41.268539, 40.590942, 43.742764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078587, 41.347904, 44.093235>,  <41.537899, 41.175922, 43.468464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078587, 41.347904, 44.093235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.214813, 40.973301, 44.126633>,  <41.296551, 40.748539, 44.146671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.214813, 40.973301, 44.126633>,  <41.078587, 41.347904, 44.093235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214813, 40.973301, 44.126633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271770, 0.183066, 0.944790,
		-0.900085, -0.299076, 0.316860,
		0.340570, -0.936504, 0.083495,
		41.316986, 40.692348, 44.151680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810204, 41.177303, 44.713764>,  <41.078587, 41.347904, 44.093235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810204, 41.177303, 44.713764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130123, 40.941406, 44.669006>,  <41.322075, 40.799866, 44.642151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.130123, 40.941406, 44.669006>,  <40.810204, 41.177303, 44.713764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130123, 40.941406, 44.669006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211743, 0.102764, 0.971908,
		-0.561681, -0.801024, 0.207065,
		0.799800, -0.589746, -0.111890,
		41.370064, 40.764481, 44.635441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899872, 40.903065, 45.413506>,  <40.810204, 41.177303, 44.713764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899872, 40.903065, 45.413506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245247, 40.771366, 45.260628>,  <41.452473, 40.692345, 45.168903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245247, 40.771366, 45.260628>,  <40.899872, 40.903065, 45.413506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245247, 40.771366, 45.260628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404320, -0.001375, 0.914617,
		-0.301663, -0.944242, 0.131935,
		0.863438, -0.329250, -0.382191,
		41.504280, 40.672592, 45.145969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109661, 40.364182, 45.858204>,  <40.899872, 40.903065, 45.413506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109661, 40.364182, 45.858204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454437, 40.436062, 45.668568>,  <41.661304, 40.479191, 45.554787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.454437, 40.436062, 45.668568>,  <41.109661, 40.364182, 45.858204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454437, 40.436062, 45.668568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475186, 0.039699, 0.878990,
		0.176779, -0.982920, -0.051175,
		0.861944, 0.179704, -0.474087,
		41.713020, 40.489971, 45.526340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665115, 39.887787, 46.165661>,  <41.109661, 40.364182, 45.858204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665115, 39.887787, 46.165661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874615, 40.178230, 45.987465>,  <42.000313, 40.352497, 45.880547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874615, 40.178230, 45.987465>,  <41.665115, 39.887787, 46.165661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874615, 40.178230, 45.987465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706011, -0.077347, 0.703964,
		0.476697, -0.683217, -0.553150,
		0.523745, 0.726107, -0.445488,
		42.031738, 40.396061, 45.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375111, 39.613728, 46.141651>,  <41.665115, 39.887787, 46.165661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375111, 39.613728, 46.141651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381508, 40.011501, 46.099979>,  <42.385345, 40.250164, 46.074978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.381508, 40.011501, 46.099979>,  <42.375111, 39.613728, 46.141651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381508, 40.011501, 46.099979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673280, 0.066321, 0.736407,
		0.739214, -0.081915, -0.668470,
		0.015989, 0.994430, -0.104177,
		42.386303, 40.309830, 46.068726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050106, 39.691875, 46.184715>,  <42.375111, 39.613728, 46.141651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050106, 39.691875, 46.184715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.876530, 40.038784, 46.282314>,  <42.772385, 40.246929, 46.340874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.876530, 40.038784, 46.282314>,  <43.050106, 39.691875, 46.184715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876530, 40.038784, 46.282314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620456, 0.091310, 0.778907,
		0.653247, 0.489386, -0.577728,
		-0.433938, 0.867274, 0.243994,
		42.746349, 40.298965, 46.355511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.646996, 40.226463, 46.222172>,  <43.050106, 39.691875, 46.184715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.646996, 40.226463, 46.222172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314182, 40.354519, 46.403381>,  <43.114494, 40.431351, 46.512108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314182, 40.354519, 46.403381>,  <43.646996, 40.226463, 46.222172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314182, 40.354519, 46.403381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495611, 0.062169, 0.866317,
		0.249174, 0.945330, -0.210389,
		-0.832035, 0.320135, 0.453025,
		43.064571, 40.450558, 46.539288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757759, 40.850719, 46.537121>,  <43.646996, 40.226463, 46.222172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757759, 40.850719, 46.537121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437962, 40.704369, 46.727676>,  <43.246082, 40.616558, 46.842010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.437962, 40.704369, 46.727676>,  <43.757759, 40.850719, 46.537121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437962, 40.704369, 46.727676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407518, 0.252279, 0.877659,
		-0.441300, 0.895817, -0.052592,
		-0.799489, -0.365879, 0.476392,
		43.198116, 40.594604, 46.870594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643440, 41.321682, 47.144260>,  <43.757759, 40.850719, 46.537121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643440, 41.321682, 47.144260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.434910, 40.993999, 47.239868>,  <43.309792, 40.797390, 47.297234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.434910, 40.993999, 47.239868>,  <43.643440, 41.321682, 47.144260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434910, 40.993999, 47.239868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460810, -0.034503, 0.886828,
		-0.718244, 0.572467, 0.395484,
		-0.521325, -0.819201, 0.239017,
		43.278511, 40.748238, 47.311573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391209, 41.398113, 47.926113>,  <43.643440, 41.321682, 47.144260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391209, 41.398113, 47.926113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.393517, 41.008293, 47.836479>,  <43.394901, 40.774399, 47.782700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.393517, 41.008293, 47.836479>,  <43.391209, 41.398113, 47.926113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393517, 41.008293, 47.836479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651859, -0.166266, 0.739889,
		-0.758318, -0.150338, 0.634312,
		0.005769, -0.974553, -0.224082,
		43.395248, 40.715927, 47.769253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514622, 41.004086, 48.574482>,  <43.391209, 41.398113, 47.926113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514622, 41.004086, 48.574482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604813, 40.743198, 48.284992>,  <43.658928, 40.586666, 48.111298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.604813, 40.743198, 48.284992>,  <43.514622, 41.004086, 48.574482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604813, 40.743198, 48.284992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566688, -0.516455, 0.641981,
		-0.792480, -0.554878, 0.253152,
		0.225479, -0.652215, -0.723723,
		43.672455, 40.547535, 48.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797157, 40.820896, 48.829342>,  <43.514622, 41.004086, 48.574482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797157, 40.820896, 48.829342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.595692, 40.586319, 49.083084>,  <42.474812, 40.445572, 49.235329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.595692, 40.586319, 49.083084>,  <42.797157, 40.820896, 48.829342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595692, 40.586319, 49.083084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713342, -0.131883, -0.688295,
		0.487310, -0.799178, -0.351913,
		-0.503660, -0.586448, 0.634355,
		42.444595, 40.410385, 49.273392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661404, 40.251534, 48.506451>,  <42.797157, 40.820896, 48.829342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661404, 40.251534, 48.506451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.365726, 40.263260, 48.775593>,  <42.188320, 40.270294, 48.937080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.365726, 40.263260, 48.775593>,  <42.661404, 40.251534, 48.506451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365726, 40.263260, 48.775593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651264, -0.285695, -0.703018,
		0.171622, -0.957872, 0.230275,
		-0.739190, 0.029317, 0.672859,
		42.143970, 40.272057, 48.977451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332542, 39.684242, 48.425083>,  <42.661404, 40.251534, 48.506451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332542, 39.684242, 48.425083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.057983, 39.917049, 48.599491>,  <41.893246, 40.056732, 48.704136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.057983, 39.917049, 48.599491>,  <42.332542, 39.684242, 48.425083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057983, 39.917049, 48.599491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657534, -0.240577, -0.713983,
		-0.310656, -0.776773, 0.547829,
		-0.686398, 0.582019, 0.436018,
		41.852062, 40.091652, 48.730297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776886, 39.235760, 48.340317>,  <42.332542, 39.684242, 48.425083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776886, 39.235760, 48.340317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614975, 39.590546, 48.429268>,  <41.517830, 39.803417, 48.482639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.614975, 39.590546, 48.429268>,  <41.776886, 39.235760, 48.340317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614975, 39.590546, 48.429268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617234, -0.085594, -0.782110,
		-0.674669, -0.453838, 0.582111,
		-0.404777, 0.886963, 0.222377,
		41.493542, 39.856636, 48.495979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072735, 39.087067, 48.250233>,  <41.776886, 39.235760, 48.340317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072735, 39.087067, 48.250233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059147, 39.486835, 48.250729>,  <41.050995, 39.726696, 48.251026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.059147, 39.486835, 48.250729>,  <41.072735, 39.087067, 48.250233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059147, 39.486835, 48.250729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736357, -0.024187, -0.676161,
		-0.675740, -0.023886, 0.736753,
		-0.033971, 0.999422, 0.001244,
		41.048954, 39.786663, 48.251102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395737, 39.289211, 48.164330>,  <41.072735, 39.087067, 48.250233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395737, 39.289211, 48.164330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 39.639595, 48.053627>,  <40.648602, 39.849823, 47.987206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553776, 39.639595, 48.053627>,  <40.395737, 39.289211, 48.164330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553776, 39.639595, 48.053627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681403, 0.077396, -0.727804,
		-0.616105, 0.476140, 0.627459,
		0.395100, 0.875957, -0.276760,
		40.672306, 39.902382, 47.970600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887863, 39.843372, 48.192986>,  <40.395737, 39.289211, 48.164330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887863, 39.843372, 48.192986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176025, 39.955605, 47.939278>,  <40.348923, 40.022945, 47.787052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176025, 39.955605, 47.939278>,  <39.887863, 39.843372, 48.192986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176025, 39.955605, 47.939278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688816, 0.182691, -0.701539,
		-0.080965, 0.942283, 0.324880,
		0.720401, 0.280582, -0.634268,
		40.392147, 40.039780, 47.748997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577759, 40.401527, 47.741405>,  <39.887863, 39.843372, 48.192986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577759, 40.401527, 47.741405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894299, 40.314888, 47.512722>,  <40.084221, 40.262905, 47.375511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.894299, 40.314888, 47.512722>,  <39.577759, 40.401527, 47.741405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894299, 40.314888, 47.512722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552251, 0.147906, -0.820453,
		0.262272, 0.964991, -0.002574,
		0.791349, -0.216603, -0.571708,
		40.131702, 40.249908, 47.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616013, 40.919437, 47.184032>,  <39.577759, 40.401527, 47.741405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616013, 40.919437, 47.184032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802994, 40.589348, 47.057228>,  <39.915180, 40.391293, 46.981144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802994, 40.589348, 47.057228>,  <39.616013, 40.919437, 47.184032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802994, 40.589348, 47.057228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564421, -0.002604, -0.825483,
		0.680383, 0.564800, -0.466991,
		0.467449, -0.825224, -0.317013,
		39.943230, 40.341782, 46.962124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775612, 41.065197, 46.558784>,  <39.616013, 40.919437, 47.184032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775612, 41.065197, 46.558784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771202, 40.665634, 46.576927>,  <39.768555, 40.425896, 46.587811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.771202, 40.665634, 46.576927>,  <39.775612, 41.065197, 46.558784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771202, 40.665634, 46.576927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463146, -0.035096, -0.885587,
		0.886213, -0.030773, -0.462254,
		-0.011029, -0.998910, 0.045355,
		39.767895, 40.365963, 46.590534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883953, 40.947617, 45.916500>,  <39.775612, 41.065197, 46.558784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883953, 40.947617, 45.916500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756634, 40.584442, 46.025562>,  <39.680241, 40.366539, 46.091000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.756634, 40.584442, 46.025562>,  <39.883953, 40.947617, 45.916500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756634, 40.584442, 46.025562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478656, -0.094336, -0.872920,
		0.818274, -0.408361, -0.404560,
		-0.318302, -0.907933, 0.272657,
		39.661144, 40.312061, 46.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226913, 40.506836, 45.555344>,  <39.883953, 40.947617, 45.916500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226913, 40.506836, 45.555344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878807, 40.336849, 45.654980>,  <39.669945, 40.234859, 45.714760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.878807, 40.336849, 45.654980>,  <40.226913, 40.506836, 45.555344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878807, 40.336849, 45.654980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253873, -0.046385, -0.966125,
		0.422121, -0.904022, -0.067520,
		-0.870266, -0.424963, 0.249087,
		39.617729, 40.209362, 45.729706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063717, 40.038864, 44.975681>,  <40.226913, 40.506836, 45.555344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063717, 40.038864, 44.975681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.708206, 40.071487, 45.156090>,  <39.494900, 40.091061, 45.264336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.708206, 40.071487, 45.156090>,  <40.063717, 40.038864, 44.975681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708206, 40.071487, 45.156090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451011, 0.019613, -0.892303,
		-0.081620, -0.996476, 0.019351,
		-0.888778, 0.081557, 0.451022,
		39.441574, 40.095955, 45.291397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632580, 39.633095, 44.544144>,  <40.063717, 40.038864, 44.975681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632580, 39.633095, 44.544144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385792, 39.862160, 44.760071>,  <39.237720, 39.999599, 44.889629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385792, 39.862160, 44.760071>,  <39.632580, 39.633095, 44.544144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385792, 39.862160, 44.760071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566971, 0.152279, -0.809540,
		-0.545797, -0.805524, 0.230731,
		-0.616968, 0.572662, 0.539822,
		39.200703, 40.033958, 44.922016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922001, 39.350708, 44.431194>,  <39.632580, 39.633095, 44.544144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922001, 39.350708, 44.431194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873020, 39.713459, 44.592476>,  <38.843632, 39.931110, 44.689243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.873020, 39.713459, 44.592476>,  <38.922001, 39.350708, 44.431194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873020, 39.713459, 44.592476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712858, 0.202295, -0.671498,
		-0.690535, -0.369654, 0.621705,
		-0.122454, 0.906880, 0.403203,
		38.836285, 39.985523, 44.713436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160576, 39.443798, 44.435997>,  <38.922001, 39.350708, 44.431194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160576, 39.443798, 44.435997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338600, 39.801769, 44.423225>,  <38.445415, 40.016552, 44.415562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.338600, 39.801769, 44.423225>,  <38.160576, 39.443798, 44.435997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338600, 39.801769, 44.423225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622627, 0.283620, -0.729311,
		-0.643625, 0.344473, 0.683436,
		0.445065, 0.894929, -0.031934,
		38.472118, 40.070248, 44.413647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633389, 40.021503, 44.524944>,  <38.160576, 39.443798, 44.435997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633389, 40.021503, 44.524944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969139, 40.139225, 44.342152>,  <38.170589, 40.209858, 44.232475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969139, 40.139225, 44.342152>,  <37.633389, 40.021503, 44.524944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969139, 40.139225, 44.342152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525214, 0.222595, -0.821342,
		-0.140000, 0.929429, 0.341412,
		0.839375, 0.294303, -0.456986,
		38.220951, 40.227516, 44.205055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477783, 40.606403, 44.092014>,  <37.633389, 40.021503, 44.524944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477783, 40.606403, 44.092014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824768, 40.505703, 43.920372>,  <38.032959, 40.445282, 43.817387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.824768, 40.505703, 43.920372>,  <37.477783, 40.606403, 44.092014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824768, 40.505703, 43.920372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368439, 0.254510, -0.894135,
		0.334308, 0.933728, 0.128024,
		0.867462, -0.251747, -0.429107,
		38.085007, 40.430180, 43.791641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489227, 41.046638, 43.534912>,  <37.477783, 40.606403, 44.092014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489227, 41.046638, 43.534912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764519, 40.771046, 43.444008>,  <37.929691, 40.605690, 43.389465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764519, 40.771046, 43.444008>,  <37.489227, 41.046638, 43.534912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764519, 40.771046, 43.444008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256975, 0.061436, -0.964463,
		0.678460, 0.722170, -0.134769,
		0.688226, -0.688982, -0.227262,
		37.970985, 40.564350, 43.375828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907623, 41.332279, 42.991070>,  <37.489227, 41.046638, 43.534912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907623, 41.332279, 42.991070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954781, 40.936424, 42.958302>,  <37.983074, 40.698910, 42.938641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954781, 40.936424, 42.958302>,  <37.907623, 41.332279, 42.991070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954781, 40.936424, 42.958302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248782, 0.050434, -0.967246,
		0.961358, 0.134409, -0.240259,
		0.117889, -0.989642, -0.081924,
		37.990147, 40.639530, 42.933723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246651, 41.265369, 42.372391>,  <37.907623, 41.332279, 42.991070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246651, 41.265369, 42.372391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089996, 40.901024, 42.424465>,  <37.996002, 40.682419, 42.455711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089996, 40.901024, 42.424465>,  <38.246651, 41.265369, 42.372391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089996, 40.901024, 42.424465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056382, -0.117471, -0.991475,
		0.918390, -0.395641, -0.005350,
		-0.391639, -0.910862, 0.130191,
		37.972504, 40.627766, 42.463524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.741020, 26.505323, 30.717672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677982, 26.660343, 31.080984>,  <41.640160, 26.753355, 31.298971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677982, 26.660343, 31.080984>,  <41.741020, 26.505323, 30.717672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677982, 26.660343, 31.080984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144428, -0.900835, 0.409435,
		0.976885, 0.195706, 0.085995,
		-0.157597, 0.387551, 0.908277,
		41.630703, 26.776608, 31.353468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227020, 26.674440, 31.248066>,  <41.741020, 26.505323, 30.717672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227020, 26.674440, 31.248066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986996, 26.688227, 31.567751>,  <41.842983, 26.696499, 31.759562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986996, 26.688227, 31.567751>,  <42.227020, 26.674440, 31.248066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986996, 26.688227, 31.567751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203614, 0.972747, 0.110924,
		-0.773610, 0.229292, -0.590723,
		-0.600058, 0.034468, 0.799214,
		41.806980, 26.698566, 31.807514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750401, 27.180567, 31.040003>,  <42.227020, 26.674440, 31.248066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750401, 27.180567, 31.040003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699715, 27.167974, 31.436579>,  <41.669304, 27.160419, 31.674524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.699715, 27.167974, 31.436579>,  <41.750401, 27.180567, 31.040003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699715, 27.167974, 31.436579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152768, 0.986952, 0.050862,
		-0.980105, 0.157905, -0.120248,
		-0.126710, -0.031480, 0.991440,
		41.661701, 27.158531, 31.734011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116959, 27.592478, 31.267895>,  <41.750401, 27.180567, 31.040003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116959, 27.592478, 31.267895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348919, 27.575930, 31.593349>,  <41.488094, 27.566002, 31.788622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348919, 27.575930, 31.593349>,  <41.116959, 27.592478, 31.267895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348919, 27.575930, 31.593349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111344, 0.985314, 0.129456,
		-0.807042, -0.165666, 0.566779,
		0.579902, -0.041369, 0.813635,
		41.522888, 27.563519, 31.837440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841496, 28.075785, 31.605976>,  <41.116959, 27.592478, 31.267895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841496, 28.075785, 31.605976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182014, 28.025293, 31.809687>,  <41.386326, 27.994999, 31.931913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182014, 28.025293, 31.809687>,  <40.841496, 28.075785, 31.605976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182014, 28.025293, 31.809687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043200, 0.984196, 0.171731,
		-0.522904, -0.124193, 0.843295,
		0.851296, -0.126230, 0.509275,
		41.437405, 27.987425, 31.962469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752449, 28.450951, 32.181477>,  <40.841496, 28.075785, 31.605976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752449, 28.450951, 32.181477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145119, 28.422342, 32.110813>,  <41.380718, 28.405178, 32.068413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145119, 28.422342, 32.110813>,  <40.752449, 28.450951, 32.181477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145119, 28.422342, 32.110813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090946, 0.990367, 0.104415,
		0.167492, -0.118568, 0.978718,
		0.981670, -0.071521, -0.176662,
		41.439621, 28.400887, 32.057816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094006, 28.762173, 32.686115>,  <40.752449, 28.450951, 32.181477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094006, 28.762173, 32.686115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393471, 28.754894, 32.421036>,  <41.573151, 28.750526, 32.261990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393471, 28.754894, 32.421036>,  <41.094006, 28.762173, 32.686115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393471, 28.754894, 32.421036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183590, 0.966219, 0.180873,
		0.637022, -0.257079, 0.726715,
		0.748664, -0.018198, -0.662700,
		41.618069, 28.749435, 32.222225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504089, 29.272409, 32.891819>,  <41.094006, 28.762173, 32.686115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504089, 29.272409, 32.891819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641399, 29.219814, 32.519825>,  <41.723785, 29.188257, 32.296627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.641399, 29.219814, 32.519825>,  <41.504089, 29.272409, 32.891819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641399, 29.219814, 32.519825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219955, 0.973872, -0.056504,
		0.913118, -0.185159, 0.363223,
		0.343271, -0.131487, -0.929987,
		41.744381, 29.180368, 32.240829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148907, 29.484718, 32.878841>,  <41.504089, 29.272409, 32.891819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148907, 29.484718, 32.878841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.051071, 29.513830, 32.492085>,  <41.992371, 29.531298, 32.260029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.051071, 29.513830, 32.492085>,  <42.148907, 29.484718, 32.878841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051071, 29.513830, 32.492085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323716, 0.946094, -0.010675,
		0.913994, -0.315610, -0.254961,
		-0.244586, 0.072778, -0.966892,
		41.977695, 29.535664, 32.202015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721382, 29.891356, 32.561623>,  <42.148907, 29.484718, 32.878841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721382, 29.891356, 32.561623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423107, 29.921291, 32.296791>,  <42.244141, 29.939253, 32.137894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423107, 29.921291, 32.296791>,  <42.721382, 29.891356, 32.561623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423107, 29.921291, 32.296791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223033, 0.964386, -0.142187,
		0.627856, -0.253692, -0.735824,
		-0.745690, 0.074840, -0.662077,
		42.199402, 29.943743, 32.098167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997677, 30.322683, 32.007271>,  <42.721382, 29.891356, 32.561623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997677, 30.322683, 32.007271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598873, 30.342209, 31.983280>,  <42.359592, 30.353924, 31.968885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598873, 30.342209, 31.983280>,  <42.997677, 30.322683, 32.007271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598873, 30.342209, 31.983280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060417, 0.975793, -0.210184,
		0.048263, -0.213178, -0.975820,
		-0.997006, 0.048812, -0.059974,
		42.299770, 30.356852, 31.965288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843292, 30.447115, 31.311350>,  <42.997677, 30.322683, 32.007271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843292, 30.447115, 31.311350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579472, 30.577240, 31.582397>,  <42.421181, 30.655315, 31.745026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579472, 30.577240, 31.582397>,  <42.843292, 30.447115, 31.311350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579472, 30.577240, 31.582397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230796, 0.945593, -0.229318,
		-0.715352, 0.005145, -0.698746,
		-0.659549, 0.325311, 0.677619,
		42.381607, 30.674833, 31.785683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803726, 31.176497, 31.223167>,  <42.843292, 30.447115, 31.311350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803726, 31.176497, 31.223167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546124, 31.163429, 31.528894>,  <42.391560, 31.155590, 31.712332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.546124, 31.163429, 31.528894>,  <42.803726, 31.176497, 31.223167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546124, 31.163429, 31.528894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125529, 0.981034, 0.147699,
		-0.754648, 0.191064, -0.627695,
		-0.644009, -0.032667, 0.764320,
		42.352921, 31.153629, 31.758190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170609, 31.683277, 31.113310>,  <42.803726, 31.176497, 31.223167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170609, 31.683277, 31.113310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219490, 31.614195, 31.504255>,  <42.248821, 31.572746, 31.738823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.219490, 31.614195, 31.504255>,  <42.170609, 31.683277, 31.113310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219490, 31.614195, 31.504255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309985, 0.942124, 0.127719,
		-0.942855, 0.287360, 0.168669,
		0.122205, -0.172705, 0.977363,
		42.256153, 31.562384, 31.797464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917263, 32.213387, 31.444443>,  <42.170609, 31.683277, 31.113310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917263, 32.213387, 31.444443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152203, 32.069809, 31.734594>,  <42.293167, 31.983662, 31.908686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152203, 32.069809, 31.734594>,  <41.917263, 32.213387, 31.444443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152203, 32.069809, 31.734594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164463, 0.930503, 0.327285,
		-0.792445, -0.072934, 0.605567,
		0.587352, -0.358949, 0.725378,
		42.328407, 31.962124, 31.952208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685970, 32.538052, 32.090096>,  <41.917263, 32.213387, 31.444443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685970, 32.538052, 32.090096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056641, 32.422955, 32.186821>,  <42.279041, 32.353897, 32.244858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.056641, 32.422955, 32.186821>,  <41.685970, 32.538052, 32.090096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056641, 32.422955, 32.186821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113750, 0.827895, 0.549227,
		-0.358233, -0.481449, 0.799922,
		0.926677, -0.287743, 0.241814,
		42.334644, 32.336632, 32.259365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842995, 32.794754, 32.737534>,  <41.685970, 32.538052, 32.090096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842995, 32.794754, 32.737534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203632, 32.683235, 32.605232>,  <42.420013, 32.616325, 32.525852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203632, 32.683235, 32.605232>,  <41.842995, 32.794754, 32.737534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203632, 32.683235, 32.605232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393097, 0.847179, 0.357438,
		0.180556, -0.452283, 0.873407,
		0.901595, -0.278796, -0.330755,
		42.474110, 32.599598, 32.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275528, 32.724556, 33.352825>,  <41.842995, 32.794754, 32.737534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275528, 32.724556, 33.352825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521446, 32.791611, 33.044559>,  <42.668999, 32.831844, 32.859600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521446, 32.791611, 33.044559>,  <42.275528, 32.724556, 33.352825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521446, 32.791611, 33.044559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355533, 0.813324, 0.460543,
		0.704005, -0.557137, 0.440426,
		0.614795, 0.167639, -0.770665,
		42.705883, 32.841904, 32.813358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901299, 32.872139, 33.691887>,  <42.275528, 32.724556, 33.352825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901299, 32.872139, 33.691887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916397, 33.034367, 33.326572>,  <42.925457, 33.131702, 33.107384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.916397, 33.034367, 33.326572>,  <42.901299, 32.872139, 33.691887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916397, 33.034367, 33.326572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433857, 0.816651, 0.380592,
		0.900191, -0.410601, -0.145134,
		0.037747, 0.405573, -0.913283,
		42.927723, 33.156040, 33.052586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565666, 33.083183, 33.631111>,  <42.901299, 32.872139, 33.691887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565666, 33.083183, 33.631111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356941, 33.295475, 33.363968>,  <43.231705, 33.422852, 33.203682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.356941, 33.295475, 33.363968>,  <43.565666, 33.083183, 33.631111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356941, 33.295475, 33.363968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356407, 0.846930, 0.394569,
		0.775037, -0.032135, -0.631098,
		-0.521816, 0.530733, -0.667855,
		43.200397, 33.454697, 33.163612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114639, 33.504601, 33.241001>,  <43.565666, 33.083183, 33.631111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114639, 33.504601, 33.241001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758099, 33.677155, 33.185299>,  <43.544174, 33.780689, 33.151878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758099, 33.677155, 33.185299>,  <44.114639, 33.504601, 33.241001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758099, 33.677155, 33.185299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370200, 0.870024, 0.325592,
		0.261608, 0.238667, -0.935200,
		-0.891354, 0.431389, -0.139251,
		43.490692, 33.806572, 33.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243271, 34.227795, 32.979530>,  <44.114639, 33.504601, 33.241001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243271, 34.227795, 32.979530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870117, 34.234943, 33.123425>,  <43.646225, 34.239231, 33.209763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870117, 34.234943, 33.123425>,  <44.243271, 34.227795, 32.979530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870117, 34.234943, 33.123425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186253, 0.878804, 0.439332,
		-0.308287, 0.476848, -0.823150,
		-0.932882, 0.017873, 0.359738,
		43.590252, 34.240307, 33.231346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885002, 33.975403, 33.104084>,  <44.243271, 34.227795, 32.979530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885002, 33.975403, 33.104084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276749, 34.056225, 33.102180>,  <45.511795, 34.104717, 33.101040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276749, 34.056225, 33.102180>,  <44.885002, 33.975403, 33.104084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276749, 34.056225, 33.102180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145234, -0.719948, -0.678662,
		-0.140553, 0.663965, -0.734435,
		0.979363, 0.202053, -0.004760,
		45.570557, 34.116840, 33.100754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.144012, 33.890224, 32.371330>,  <44.885002, 33.975403, 33.104084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.144012, 33.890224, 32.371330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467674, 33.885807, 32.606323>,  <45.661873, 33.883156, 32.747318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.467674, 33.885807, 32.606323>,  <45.144012, 33.890224, 32.371330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467674, 33.885807, 32.606323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394003, -0.731541, -0.556426,
		0.435917, 0.681708, -0.587580,
		0.809159, -0.011048, 0.587486,
		45.710423, 33.882492, 32.782570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813568, 33.863102, 31.987432>,  <45.144012, 33.890224, 32.371330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813568, 33.863102, 31.987432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.901638, 33.681179, 32.332611>,  <45.954479, 33.572025, 32.539719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.901638, 33.681179, 32.332611>,  <45.813568, 33.863102, 31.987432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901638, 33.681179, 32.332611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351133, -0.788400, -0.505105,
		0.910070, 0.414221, -0.013890,
		0.220176, -0.454803, 0.862946,
		45.967690, 33.544739, 32.591496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396534, 33.462078, 31.789112>,  <45.813568, 33.863102, 31.987432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396534, 33.462078, 31.789112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280334, 33.282318, 32.127022>,  <46.210613, 33.174461, 32.329769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280334, 33.282318, 32.127022>,  <46.396534, 33.462078, 31.789112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280334, 33.282318, 32.127022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147522, -0.893329, -0.424501,
		0.945435, 0.001306, 0.325809,
		-0.290500, -0.449402, 0.844777,
		46.193184, 33.147499, 32.380455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836674, 32.875103, 31.795721>,  <46.396534, 33.462078, 31.789112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836674, 32.875103, 31.795721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.523361, 32.802898, 32.033672>,  <46.335373, 32.759575, 32.176441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.523361, 32.802898, 32.033672>,  <46.836674, 32.875103, 31.795721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523361, 32.802898, 32.033672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010780, -0.952825, -0.303328,
		0.621569, -0.244006, 0.744388,
		-0.783285, -0.180515, 0.594877,
		46.288376, 32.748745, 32.212135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083721, 32.328281, 32.140915>,  <46.836674, 32.875103, 31.795721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083721, 32.328281, 32.140915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.684685, 32.355804, 32.144547>,  <46.445263, 32.372318, 32.146725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.684685, 32.355804, 32.144547>,  <47.083721, 32.328281, 32.140915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684685, 32.355804, 32.144547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069023, -0.970012, -0.233049,
		-0.007224, -0.233114, 0.972423,
		-0.997589, 0.068803, 0.009083,
		46.385406, 32.376446, 32.147270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.846569, 31.686056, 32.336750>,  <47.083721, 32.328281, 32.140915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.846569, 31.686056, 32.336750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491016, 31.829626, 32.222858>,  <46.277687, 31.915768, 32.154526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491016, 31.829626, 32.222858>,  <46.846569, 31.686056, 32.336750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491016, 31.829626, 32.222858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189779, -0.854113, -0.484226,
		-0.416988, -0.376383, 0.827319,
		-0.888878, 0.358924, -0.284725,
		46.224354, 31.937304, 32.137440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289276, 31.162390, 32.536968>,  <46.846569, 31.686056, 32.336750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289276, 31.162390, 32.536968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134930, 31.396185, 32.251457>,  <46.042320, 31.536463, 32.080151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.134930, 31.396185, 32.251457>,  <46.289276, 31.162390, 32.536968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134930, 31.396185, 32.251457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415322, -0.800917, -0.431322,
		-0.823780, 0.130015, 0.551799,
		-0.385867, 0.584489, -0.713778,
		46.019169, 31.571531, 32.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475334, 31.087196, 32.477139>,  <46.289276, 31.162390, 32.536968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475334, 31.087196, 32.477139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613499, 31.213598, 32.123680>,  <45.696396, 31.289440, 31.911606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.613499, 31.213598, 32.123680>,  <45.475334, 31.087196, 32.477139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613499, 31.213598, 32.123680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415908, -0.792531, -0.445999,
		-0.841255, 0.521569, -0.142320,
		0.345413, 0.316007, -0.883646,
		45.717121, 31.308401, 31.858587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.885929, 31.132322, 32.094044>,  <45.475334, 31.087196, 32.477139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.885929, 31.132322, 32.094044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193169, 31.112211, 31.838703>,  <45.377514, 31.100145, 31.685497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193169, 31.112211, 31.838703>,  <44.885929, 31.132322, 32.094044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193169, 31.112211, 31.838703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566825, -0.517150, -0.641300,
		-0.297882, 0.854417, -0.425720,
		0.768099, -0.050277, -0.638355,
		45.423599, 31.097128, 31.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544136, 31.160591, 31.397816>,  <44.885929, 31.132322, 32.094044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544136, 31.160591, 31.397816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910229, 31.033913, 31.298176>,  <45.129887, 30.957905, 31.238392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.910229, 31.033913, 31.298176>,  <44.544136, 31.160591, 31.397816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910229, 31.033913, 31.298176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396269, -0.819392, -0.414208,
		-0.072932, 0.477807, -0.875432,
		0.915233, -0.316697, -0.249100,
		45.184799, 30.938904, 31.223446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491070, 30.842270, 30.645273>,  <44.544136, 31.160591, 31.397816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491070, 30.842270, 30.645273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786266, 30.689669, 30.867922>,  <44.963383, 30.598108, 31.001511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.786266, 30.689669, 30.867922>,  <44.491070, 30.842270, 30.645273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786266, 30.689669, 30.867922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288748, -0.924052, -0.250503,
		0.609917, 0.024145, -0.792098,
		0.737988, -0.381503, 0.556623,
		45.007664, 30.575218, 31.034908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584869, 30.207939, 30.319378>,  <44.491070, 30.842270, 30.645273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584869, 30.207939, 30.319378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780468, 30.188532, 30.667753>,  <44.897827, 30.176888, 30.876778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780468, 30.188532, 30.667753>,  <44.584869, 30.207939, 30.319378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780468, 30.188532, 30.667753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131799, -0.991098, 0.018789,
		0.862272, -0.123976, -0.491036,
		0.488995, -0.048517, 0.870936,
		44.927166, 30.173977, 30.929033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832634, 29.576191, 30.378780>,  <44.584869, 30.207939, 30.319378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832634, 29.576191, 30.378780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915539, 29.629032, 30.766510>,  <44.965282, 29.660736, 30.999147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915539, 29.629032, 30.766510>,  <44.832634, 29.576191, 30.378780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915539, 29.629032, 30.766510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145216, -0.975710, 0.164022,
		0.967447, -0.174757, -0.183045,
		0.207263, 0.132101, 0.969325,
		44.977718, 29.668663, 31.057308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295277, 29.056215, 30.610722>,  <44.832634, 29.576191, 30.378780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295277, 29.056215, 30.610722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133736, 29.174257, 30.957088>,  <45.036812, 29.245083, 31.164909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133736, 29.174257, 30.957088>,  <45.295277, 29.056215, 30.610722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133736, 29.174257, 30.957088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007881, -0.947628, 0.319278,
		0.914789, 0.122117, 0.385030,
		-0.403854, 0.295106, 0.865918,
		45.012581, 29.262789, 31.216864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628525, 28.638056, 31.192343>,  <45.295277, 29.056215, 30.610722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628525, 28.638056, 31.192343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272526, 28.785414, 31.299822>,  <45.058926, 28.873829, 31.364309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272526, 28.785414, 31.299822>,  <45.628525, 28.638056, 31.192343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272526, 28.785414, 31.299822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286578, -0.910271, 0.298797,
		0.354662, 0.188925, 0.915709,
		-0.889994, 0.368393, 0.268697,
		45.005527, 28.895931, 31.380430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.460899, 28.415888, 31.849482>,  <45.628525, 28.638056, 31.192343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.460899, 28.415888, 31.849482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084461, 28.503973, 31.746843>,  <44.858597, 28.556824, 31.685261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084461, 28.503973, 31.746843>,  <45.460899, 28.415888, 31.849482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084461, 28.503973, 31.746843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312545, -0.856111, 0.411570,
		-0.129043, 0.467525, 0.874510,
		-0.941097, 0.220213, -0.256598,
		44.802132, 28.570038, 31.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.031746, 28.298880, 32.467743>,  <45.460899, 28.415888, 31.849482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.031746, 28.298880, 32.467743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812920, 28.284555, 32.133213>,  <44.681625, 28.275961, 31.932495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812920, 28.284555, 32.133213>,  <45.031746, 28.298880, 32.467743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812920, 28.284555, 32.133213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394358, -0.870244, 0.295224,
		-0.738379, 0.491317, 0.461956,
		-0.547063, -0.035812, -0.836325,
		44.648800, 28.273811, 31.882315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394085, 28.124788, 32.716236>,  <45.031746, 28.298880, 32.467743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394085, 28.124788, 32.716236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350517, 28.048880, 32.325928>,  <44.324379, 28.003334, 32.091743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.350517, 28.048880, 32.325928>,  <44.394085, 28.124788, 32.716236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350517, 28.048880, 32.325928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349904, -0.911467, 0.216325,
		-0.930432, 0.364986, 0.032871,
		-0.108916, -0.189774, -0.975768,
		44.317841, 27.991947, 32.033195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569828, 28.018103, 32.573208>,  <44.394085, 28.124788, 32.716236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569828, 28.018103, 32.573208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782703, 27.864847, 32.271221>,  <43.910431, 27.772894, 32.090027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.782703, 27.864847, 32.271221>,  <43.569828, 28.018103, 32.573208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782703, 27.864847, 32.271221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502633, -0.860563, 0.082411,
		-0.681274, 0.335615, -0.650560,
		0.532190, -0.383137, -0.754970,
		43.942360, 27.749907, 32.044731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.345364, 38.056568, 37.452740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963322, 38.136742, 37.540016>,  <40.734097, 38.184845, 37.592384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963322, 38.136742, 37.540016>,  <41.345364, 38.056568, 37.452740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963322, 38.136742, 37.540016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262300, -0.229572, -0.937281,
		-0.137766, -0.952431, 0.271837,
		-0.955102, 0.200428, 0.218195,
		40.676792, 38.196869, 37.605476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919079, 37.365055, 37.303745>,  <41.345364, 38.056568, 37.452740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919079, 37.365055, 37.303745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674839, 37.681149, 37.282955>,  <40.528294, 37.870804, 37.270481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674839, 37.681149, 37.282955>,  <40.919079, 37.365055, 37.303745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674839, 37.681149, 37.282955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411693, -0.372805, -0.831579,
		-0.676519, -0.486362, 0.552968,
		-0.610598, 0.790233, -0.051978,
		40.491661, 37.918217, 37.267361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305759, 37.038658, 37.103550>,  <40.919079, 37.365055, 37.303745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305759, 37.038658, 37.103550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216675, 37.423683, 37.041752>,  <40.163223, 37.654697, 37.004673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216675, 37.423683, 37.041752>,  <40.305759, 37.038658, 37.103550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216675, 37.423683, 37.041752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292668, -0.217178, -0.931224,
		-0.929917, -0.162178, 0.330080,
		-0.222710, 0.962565, -0.154494,
		40.149860, 37.712452, 36.995403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702499, 36.955921, 36.823284>,  <40.305759, 37.038658, 37.103550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702499, 36.955921, 36.823284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851749, 37.315132, 36.730057>,  <39.941299, 37.530659, 36.674122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851749, 37.315132, 36.730057>,  <39.702499, 36.955921, 36.823284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851749, 37.315132, 36.730057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272538, -0.134037, -0.952763,
		-0.886849, 0.419019, 0.194735,
		0.373124, 0.898030, -0.233069,
		39.963688, 37.584541, 36.660137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142948, 37.305592, 36.394371>,  <39.702499, 36.955921, 36.823284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142948, 37.305592, 36.394371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492363, 37.486664, 36.322803>,  <39.702011, 37.595306, 36.279865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492363, 37.486664, 36.322803>,  <39.142948, 37.305592, 36.394371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492363, 37.486664, 36.322803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093761, -0.204197, -0.974429,
		-0.477642, 0.867975, -0.135930,
		0.873537, 0.452684, -0.178915,
		39.754425, 37.622471, 36.269131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927525, 37.924835, 35.936337>,  <39.142948, 37.305592, 36.394371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927525, 37.924835, 35.936337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319843, 37.875027, 35.876286>,  <39.555233, 37.845142, 35.840256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319843, 37.875027, 35.876286>,  <38.927525, 37.924835, 35.936337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319843, 37.875027, 35.876286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159144, -0.065861, -0.985056,
		0.112777, 0.990028, -0.084414,
		0.980793, -0.124526, -0.150129,
		39.614082, 37.837669, 35.831245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128704, 38.367519, 35.298161>,  <38.927525, 37.924835, 35.936337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128704, 38.367519, 35.298161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418835, 38.097145, 35.350346>,  <39.592911, 37.934921, 35.381657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418835, 38.097145, 35.350346>,  <39.128704, 38.367519, 35.298161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418835, 38.097145, 35.350346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037638, -0.150297, -0.987924,
		0.687378, 0.721475, -0.083573,
		0.725323, -0.675932, 0.130465,
		39.636433, 37.894367, 35.389484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630180, 38.534184, 34.860523>,  <39.128704, 38.367519, 35.298161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630180, 38.534184, 34.860523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680889, 38.141014, 34.913883>,  <39.711315, 37.905113, 34.945900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680889, 38.141014, 34.913883>,  <39.630180, 38.534184, 34.860523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680889, 38.141014, 34.913883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054441, -0.141179, -0.988486,
		0.990436, 0.118055, -0.071409,
		0.126777, -0.982920, 0.133402,
		39.718922, 37.846138, 34.953903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261349, 38.220448, 34.446163>,  <39.630180, 38.534184, 34.860523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261349, 38.220448, 34.446163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986607, 37.940605, 34.524937>,  <39.821762, 37.772701, 34.572201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986607, 37.940605, 34.524937>,  <40.261349, 38.220448, 34.446163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986607, 37.940605, 34.524937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136979, -0.141491, -0.980417,
		0.713766, -0.700383, 0.001354,
		-0.686859, -0.699602, 0.196929,
		39.780548, 37.730724, 34.584015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106773, 37.989597, 33.809704>,  <40.261349, 38.220448, 34.446163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106773, 37.989597, 33.809704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866924, 37.734699, 34.003349>,  <39.723015, 37.581760, 34.119537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866924, 37.734699, 34.003349>,  <40.106773, 37.989597, 33.809704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866924, 37.734699, 34.003349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164917, -0.493557, -0.853934,
		0.783107, -0.591876, 0.190855,
		-0.599621, -0.637247, 0.484118,
		39.687038, 37.543526, 34.148586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345444, 37.402332, 33.545929>,  <40.106773, 37.989597, 33.809704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345444, 37.402332, 33.545929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961720, 37.367828, 33.653469>,  <39.731483, 37.347126, 33.717991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961720, 37.367828, 33.653469>,  <40.345444, 37.402332, 33.545929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961720, 37.367828, 33.653469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212977, -0.404054, -0.889596,
		0.185365, -0.910659, 0.369243,
		-0.959313, -0.086260, 0.268846,
		39.673927, 37.341949, 33.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123146, 36.775707, 33.230396>,  <40.345444, 37.402332, 33.545929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123146, 36.775707, 33.230396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757683, 36.895466, 33.340370>,  <39.538406, 36.967319, 33.406353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757683, 36.895466, 33.340370>,  <40.123146, 36.775707, 33.230396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757683, 36.895466, 33.340370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403526, -0.586667, -0.702132,
		-0.048921, -0.752452, 0.656828,
		-0.913659, 0.299396, 0.274933,
		39.483585, 36.985287, 33.422852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694054, 36.163021, 33.348541>,  <40.123146, 36.775707, 33.230396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694054, 36.163021, 33.348541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460712, 36.477444, 33.266754>,  <39.320705, 36.666100, 33.217682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460712, 36.477444, 33.266754>,  <39.694054, 36.163021, 33.348541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460712, 36.477444, 33.266754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588558, -0.582588, -0.560527,
		-0.559726, -0.206648, 0.802498,
		-0.583357, 0.786058, -0.204465,
		39.285706, 36.713261, 33.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038105, 36.015480, 33.634552>,  <39.694054, 36.163021, 33.348541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038105, 36.015480, 33.634552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125736, 36.215645, 33.299507>,  <39.178314, 36.335743, 33.098480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125736, 36.215645, 33.299507>,  <39.038105, 36.015480, 33.634552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125736, 36.215645, 33.299507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654096, -0.561675, -0.506635,
		-0.723992, 0.658870, 0.204269,
		0.219074, 0.500412, -0.837613,
		39.191460, 36.365768, 33.048222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626450, 35.991646, 34.255901>,  <39.038105, 36.015480, 33.634552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626450, 35.991646, 34.255901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881252, 35.698425, 34.160522>,  <39.034134, 35.522495, 34.103294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881252, 35.698425, 34.160522>,  <38.626450, 35.991646, 34.255901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881252, 35.698425, 34.160522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244624, -0.485577, 0.839270,
		-0.731011, -0.476294, -0.488639,
		0.637011, -0.733048, -0.238449,
		39.072357, 35.478512, 34.088989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398750, 35.340530, 34.434219>,  <38.626450, 35.991646, 34.255901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398750, 35.340530, 34.434219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795616, 35.291660, 34.423744>,  <39.033737, 35.262337, 34.417458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795616, 35.291660, 34.423744>,  <38.398750, 35.340530, 34.434219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795616, 35.291660, 34.423744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058290, -0.637975, 0.767848,
		-0.110520, -0.760304, -0.640097,
		0.992163, -0.122174, -0.026191,
		39.093266, 35.255009, 34.415886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494675, 34.666523, 34.640308>,  <38.398750, 35.340530, 34.434219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494675, 34.666523, 34.640308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844521, 34.848743, 34.706676>,  <39.054428, 34.958076, 34.746498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844521, 34.848743, 34.706676>,  <38.494675, 34.666523, 34.640308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844521, 34.848743, 34.706676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073912, -0.463513, 0.883002,
		0.479160, -0.760019, -0.439064,
		0.874610, 0.455551, 0.165922,
		39.106903, 34.985409, 34.756454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955963, 34.114048, 34.903030>,  <38.494675, 34.666523, 34.640308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955963, 34.114048, 34.903030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079514, 34.477142, 35.016598>,  <39.153645, 34.695000, 35.084736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079514, 34.477142, 35.016598>,  <38.955963, 34.114048, 34.903030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079514, 34.477142, 35.016598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009024, -0.295702, 0.955238,
		0.951059, -0.297614, -0.083145,
		0.308878, 0.907737, 0.283915,
		39.172176, 34.749462, 35.101772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453651, 33.952068, 35.454758>,  <38.955963, 34.114048, 34.903030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453651, 33.952068, 35.454758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348801, 34.335014, 35.503315>,  <39.285892, 34.564781, 35.532452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348801, 34.335014, 35.503315>,  <39.453651, 33.952068, 35.454758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348801, 34.335014, 35.503315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105936, -0.153582, 0.982441,
		0.959202, 0.244661, 0.141677,
		-0.262124, 0.957368, 0.121397,
		39.270164, 34.622223, 35.539734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845863, 34.115322, 36.034012>,  <39.453651, 33.952068, 35.454758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845863, 34.115322, 36.034012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561008, 34.394371, 36.002537>,  <39.390095, 34.561798, 35.983650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561008, 34.394371, 36.002537>,  <39.845863, 34.115322, 36.034012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561008, 34.394371, 36.002537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002619, 0.114728, 0.993394,
		0.702038, 0.707224, -0.083528,
		-0.712135, 0.697619, -0.078691,
		39.347366, 34.603657, 35.978928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052269, 34.720268, 36.426830>,  <39.845863, 34.115322, 36.034012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052269, 34.720268, 36.426830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657024, 34.775871, 36.400562>,  <39.419876, 34.809235, 36.384800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657024, 34.775871, 36.400562>,  <40.052269, 34.720268, 36.426830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657024, 34.775871, 36.400562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024082, 0.281955, 0.959125,
		0.151842, 0.949304, -0.275256,
		-0.988111, 0.139007, -0.065673,
		39.360592, 34.817574, 36.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775784, 35.239685, 37.013008>,  <40.052269, 34.720268, 36.426830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775784, 35.239685, 37.013008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429623, 35.071507, 36.903969>,  <39.221928, 34.970600, 36.838547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429623, 35.071507, 36.903969>,  <39.775784, 35.239685, 37.013008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429623, 35.071507, 36.903969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343893, 0.102669, 0.933379,
		-0.364445, 0.901492, -0.233437,
		-0.865400, -0.420442, -0.272599,
		39.170002, 34.945374, 36.822189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233711, 35.698685, 37.192307>,  <39.775784, 35.239685, 37.013008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233711, 35.698685, 37.192307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063343, 35.337944, 37.163322>,  <38.961124, 35.121498, 37.145931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063343, 35.337944, 37.163322>,  <39.233711, 35.698685, 37.192307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063343, 35.337944, 37.163322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237388, 0.034107, 0.970816,
		-0.873065, 0.430689, -0.228616,
		-0.425917, -0.901856, -0.072463,
		38.935570, 35.067387, 37.141582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639923, 35.820465, 37.550762>,  <39.233711, 35.698685, 37.192307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639923, 35.820465, 37.550762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688320, 35.423489, 37.542603>,  <38.717358, 35.185303, 37.537708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688320, 35.423489, 37.542603>,  <38.639923, 35.820465, 37.550762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688320, 35.423489, 37.542603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283728, -0.054267, 0.957368,
		-0.951240, -0.110052, -0.288150,
		0.120997, -0.992443, -0.020397,
		38.724621, 35.125755, 37.536484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007011, 35.589031, 37.827705>,  <38.639923, 35.820465, 37.550762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007011, 35.589031, 37.827705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271675, 35.291573, 37.866062>,  <38.430473, 35.113098, 37.889076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271675, 35.291573, 37.866062>,  <38.007011, 35.589031, 37.827705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271675, 35.291573, 37.866062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226538, -0.076350, 0.971005,
		-0.714761, -0.664202, -0.218982,
		0.661663, -0.743644, 0.095895,
		38.470173, 35.068478, 37.894829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620388, 35.143307, 38.184395>,  <38.007011, 35.589031, 37.827705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620388, 35.143307, 38.184395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006184, 35.059319, 38.248497>,  <38.237659, 35.008926, 38.286957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006184, 35.059319, 38.248497>,  <37.620388, 35.143307, 38.184395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006184, 35.059319, 38.248497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179232, -0.074577, 0.980976,
		-0.194027, -0.974859, -0.109563,
		0.964484, -0.209973, 0.160256,
		38.295528, 34.996326, 38.296574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575771, 34.703461, 38.648277>,  <37.620388, 35.143307, 38.184395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575771, 34.703461, 38.648277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950809, 34.838909, 38.679901>,  <38.175831, 34.920177, 38.698875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950809, 34.838909, 38.679901>,  <37.575771, 34.703461, 38.648277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950809, 34.838909, 38.679901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115793, 0.089647, 0.989219,
		0.327881, -0.936643, 0.123263,
		0.937596, 0.338619, 0.079064,
		38.232090, 34.940495, 38.703621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845905, 34.259731, 39.143200>,  <37.575771, 34.703461, 38.648277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845905, 34.259731, 39.143200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090176, 34.576481, 39.144714>,  <38.236740, 34.766529, 39.145622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090176, 34.576481, 39.144714>,  <37.845905, 34.259731, 39.143200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090176, 34.576481, 39.144714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089912, 0.064587, 0.993853,
		0.786758, -0.607266, 0.110641,
		0.610679, 0.791869, 0.003786,
		38.273380, 34.814041, 39.145851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034561, 33.448215, 39.264599>,  <37.845905, 34.259731, 39.143200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034561, 33.448215, 39.264599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807919, 33.254478, 39.531242>,  <37.671932, 33.138237, 39.691231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807919, 33.254478, 39.531242>,  <38.034561, 33.448215, 39.264599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807919, 33.254478, 39.531242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578210, -0.342667, -0.740441,
		0.587052, -0.804980, -0.085893,
		-0.566607, -0.484341, 0.666611,
		37.637936, 33.109177, 39.731224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021450, 32.785671, 38.896355>,  <38.034561, 33.448215, 39.264599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021450, 32.785671, 38.896355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729504, 32.836330, 39.165054>,  <37.554337, 32.866726, 39.326275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729504, 32.836330, 39.165054>,  <38.021450, 32.785671, 38.896355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729504, 32.836330, 39.165054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679069, -0.247137, -0.691223,
		0.078473, -0.960668, 0.266380,
		-0.729869, 0.126648, 0.671753,
		37.510544, 32.874325, 39.366581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622017, 32.077972, 38.943096>,  <38.021450, 32.785671, 38.896355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622017, 32.077972, 38.943096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409264, 32.393490, 39.066319>,  <37.281612, 32.582802, 39.140251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409264, 32.393490, 39.066319>,  <37.622017, 32.077972, 38.943096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409264, 32.393490, 39.066319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564951, -0.059544, -0.822973,
		-0.630814, -0.611766, 0.477301,
		-0.531887, 0.788795, 0.308057,
		37.249699, 32.630127, 39.158737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925667, 31.902355, 38.810982>,  <37.622017, 32.077972, 38.943096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925667, 31.902355, 38.810982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892639, 32.299934, 38.839958>,  <36.872822, 32.538483, 38.857342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892639, 32.299934, 38.839958>,  <36.925667, 31.902355, 38.810982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892639, 32.299934, 38.839958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687654, -0.004214, -0.726026,
		-0.721328, -0.109763, 0.683841,
		-0.082573, 0.993949, 0.072440,
		36.867867, 32.598118, 38.861691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226372, 32.132576, 38.759972>,  <36.925667, 31.902355, 38.810982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226372, 32.132576, 38.759972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379440, 32.477329, 38.626873>,  <36.471279, 32.684181, 38.547012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379440, 32.477329, 38.626873>,  <36.226372, 32.132576, 38.759972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379440, 32.477329, 38.626873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812074, 0.142034, -0.566006,
		-0.440569, 0.486809, 0.754265,
		0.382668, 0.861883, -0.332749,
		36.494240, 32.735893, 38.527050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613068, 32.729099, 38.784477>,  <36.226372, 32.132576, 38.759972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613068, 32.729099, 38.784477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917522, 32.848709, 38.554256>,  <36.100197, 32.920475, 38.416122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917522, 32.848709, 38.554256>,  <35.613068, 32.729099, 38.784477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917522, 32.848709, 38.554256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648572, 0.358020, -0.671697,
		0.005207, 0.884538, 0.466438,
		0.761136, 0.299021, -0.575551,
		36.145863, 32.938416, 38.381592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338703, 33.135971, 38.365993>,  <35.613068, 32.729099, 38.784477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338703, 33.135971, 38.365993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674732, 33.065155, 38.160889>,  <35.876350, 33.022667, 38.037827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674732, 33.065155, 38.160889>,  <35.338703, 33.135971, 38.365993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674732, 33.065155, 38.160889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452466, 0.292748, -0.842362,
		0.299241, 0.939658, 0.165827,
		0.840077, -0.177038, -0.512765,
		35.926754, 33.012043, 38.007057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473900, 33.782612, 38.026585>,  <35.338703, 33.135971, 38.365993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473900, 33.782612, 38.026585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647606, 33.484402, 37.824356>,  <35.751831, 33.305477, 37.703018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647606, 33.484402, 37.824356>,  <35.473900, 33.782612, 38.026585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647606, 33.484402, 37.824356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468515, 0.292428, -0.833655,
		0.769355, 0.598897, -0.222298,
		0.434267, -0.745526, -0.505573,
		35.777885, 33.260742, 37.672684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602215, 33.984867, 37.364632>,  <35.473900, 33.782612, 38.026585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602215, 33.984867, 37.364632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578835, 33.591816, 37.294174>,  <35.564804, 33.355984, 37.251900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578835, 33.591816, 37.294174>,  <35.602215, 33.984867, 37.364632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578835, 33.591816, 37.294174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559703, 0.178361, -0.809271,
		0.826629, 0.051280, -0.560406,
		-0.058455, -0.982628, -0.176140,
		35.561298, 33.297028, 37.241333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728374, 33.845448, 36.608936>,  <35.602215, 33.984867, 37.364632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728374, 33.845448, 36.608936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525555, 33.535637, 36.760201>,  <35.403862, 33.349751, 36.850960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525555, 33.535637, 36.760201>,  <35.728374, 33.845448, 36.608936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525555, 33.535637, 36.760201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600756, 0.002977, -0.799427,
		0.618055, -0.632529, -0.466813,
		-0.507051, -0.774531, 0.378156,
		35.373440, 33.303276, 36.873646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460529, 33.484322, 35.963303>,  <35.728374, 33.845448, 36.608936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460529, 33.484322, 35.963303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251537, 33.295696, 36.247452>,  <35.126141, 33.182522, 36.417942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251537, 33.295696, 36.247452>,  <35.460529, 33.484322, 35.963303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251537, 33.295696, 36.247452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752775, -0.136144, -0.644045,
		0.400424, -0.871257, -0.283851,
		-0.522484, -0.471567, 0.710376,
		35.094791, 33.154224, 36.460564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206367, 32.979084, 35.567112>,  <35.460529, 33.484322, 35.963303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206367, 32.979084, 35.567112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992172, 33.048210, 35.897781>,  <34.863655, 33.089687, 36.096184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992172, 33.048210, 35.897781>,  <35.206367, 32.979084, 35.567112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992172, 33.048210, 35.897781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836796, 0.023676, -0.547002,
		-0.114107, -0.984668, 0.131940,
		-0.535492, 0.172823, 0.826668,
		34.831524, 33.100056, 36.145782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.524532, 33.489784, 43.261616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148216, 33.593903, 43.348480>,  <38.922428, 33.656376, 43.400597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148216, 33.593903, 43.348480>,  <39.524532, 33.489784, 43.261616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148216, 33.593903, 43.348480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279739, -0.234314, -0.931044,
		-0.191457, -0.936668, 0.293254,
		-0.940792, 0.260289, 0.217161,
		38.865978, 33.671993, 43.413628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067120, 32.864185, 43.187527>,  <39.524532, 33.489784, 43.261616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067120, 32.864185, 43.187527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804714, 33.161278, 43.133873>,  <38.647270, 33.339535, 43.101681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804714, 33.161278, 43.133873>,  <39.067120, 32.864185, 43.187527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804714, 33.161278, 43.133873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286730, -0.409653, -0.866008,
		-0.698161, -0.529654, 0.481703,
		-0.656016, 0.742732, -0.134137,
		38.607910, 33.384098, 43.093632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346085, 32.500095, 43.039204>,  <39.067120, 32.864185, 43.187527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346085, 32.500095, 43.039204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291439, 32.879368, 42.924454>,  <38.258652, 33.106930, 42.855602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291439, 32.879368, 42.924454>,  <38.346085, 32.500095, 43.039204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291439, 32.879368, 42.924454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452394, -0.317345, -0.833446,
		-0.881292, 0.015919, 0.472304,
		-0.136616, 0.948177, -0.286875,
		38.250454, 33.163822, 42.838390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681526, 32.524536, 42.695656>,  <38.346085, 32.500095, 43.039204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681526, 32.524536, 42.695656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900898, 32.829052, 42.557289>,  <38.032520, 33.011761, 42.474270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.900898, 32.829052, 42.557289>,  <37.681526, 32.524536, 42.695656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900898, 32.829052, 42.557289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339707, -0.175154, -0.924078,
		-0.764081, 0.624305, 0.162556,
		0.548434, 0.761292, -0.345912,
		38.065430, 33.057438, 42.453514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307713, 32.681206, 42.025177>,  <37.681526, 32.524536, 42.695656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307713, 32.681206, 42.025177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628960, 32.915314, 41.980515>,  <37.821709, 33.055779, 41.953716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.628960, 32.915314, 41.980515>,  <37.307713, 32.681206, 42.025177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628960, 32.915314, 41.980515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141150, 0.004816, -0.989976,
		-0.578866, 0.810824, 0.086479,
		0.803114, 0.585270, -0.111660,
		37.869892, 33.090893, 41.947018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036758, 33.220707, 41.637501>,  <37.307713, 32.681206, 42.025177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036758, 33.220707, 41.637501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432030, 33.210114, 41.577095>,  <37.669193, 33.203758, 41.540852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432030, 33.210114, 41.577095>,  <37.036758, 33.220707, 41.637501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432030, 33.210114, 41.577095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144719, 0.164061, -0.975777,
		0.050619, 0.986095, 0.158289,
		0.988177, -0.026486, -0.151011,
		37.728481, 33.202168, 41.531792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213497, 33.824257, 41.240021>,  <37.036758, 33.220707, 41.637501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213497, 33.824257, 41.240021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499359, 33.547436, 41.199356>,  <37.670876, 33.381344, 41.174957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.499359, 33.547436, 41.199356>,  <37.213497, 33.824257, 41.240021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499359, 33.547436, 41.199356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199262, -0.062103, -0.977976,
		0.670495, 0.719173, -0.182281,
		0.714655, -0.692050, -0.101664,
		37.713757, 33.339821, 41.168858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672165, 34.110287, 40.707539>,  <37.213497, 33.824257, 41.240021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672165, 34.110287, 40.707539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764614, 33.722046, 40.680656>,  <37.820084, 33.489101, 40.664528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.764614, 33.722046, 40.680656>,  <37.672165, 34.110287, 40.707539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764614, 33.722046, 40.680656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358391, -0.020719, -0.933342,
		0.904509, 0.239805, -0.352643,
		0.231126, -0.970600, -0.067203,
		37.833950, 33.430866, 40.660496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983852, 33.955048, 40.065899>,  <37.672165, 34.110287, 40.707539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983852, 33.955048, 40.065899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875648, 33.577602, 40.142227>,  <37.810726, 33.351135, 40.188023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.875648, 33.577602, 40.142227>,  <37.983852, 33.955048, 40.065899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875648, 33.577602, 40.142227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510495, -0.027453, -0.859442,
		0.816223, -0.329897, -0.474286,
		-0.270507, -0.943617, 0.190819,
		37.794495, 33.294518, 40.199474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486511, 34.069584, 39.584850>,  <37.983852, 33.955048, 40.065899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486511, 34.069584, 39.584850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495865, 34.469246, 39.571354>,  <38.501476, 34.709045, 39.563255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.495865, 34.469246, 39.571354>,  <38.486511, 34.069584, 39.584850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495865, 34.469246, 39.571354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228006, 0.027528, 0.973270,
		0.973379, -0.030449, -0.227170,
		0.023381, 0.999157, -0.033738,
		38.502880, 34.768993, 39.561234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848499, 34.241814, 40.192284>,  <38.486511, 34.069584, 39.584850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848499, 34.241814, 40.192284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665070, 34.580582, 40.084629>,  <38.555012, 34.783844, 40.020039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.665070, 34.580582, 40.084629>,  <38.848499, 34.241814, 40.192284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665070, 34.580582, 40.084629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025719, 0.315378, 0.948618,
		0.888283, 0.428091, -0.166407,
		-0.458576, 0.846921, -0.269134,
		38.527496, 34.834660, 40.003887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261860, 34.733315, 40.492176>,  <38.848499, 34.241814, 40.192284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261860, 34.733315, 40.492176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916367, 34.916283, 40.407578>,  <38.709072, 35.026062, 40.356819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916367, 34.916283, 40.407578>,  <39.261860, 34.733315, 40.492176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916367, 34.916283, 40.407578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012371, 0.400311, 0.916296,
		0.503798, 0.794051, -0.340103,
		-0.863733, 0.457421, -0.211499,
		38.657246, 35.053509, 40.344128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340672, 35.436466, 40.563702>,  <39.261860, 34.733315, 40.492176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340672, 35.436466, 40.563702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944588, 35.412735, 40.614254>,  <38.706940, 35.398495, 40.644585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944588, 35.412735, 40.614254>,  <39.340672, 35.436466, 40.563702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944588, 35.412735, 40.614254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080684, 0.495578, 0.864808,
		-0.113937, 0.866535, -0.485938,
		-0.990206, -0.059327, 0.126380,
		38.647526, 35.394936, 40.652168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211071, 36.068779, 40.876507>,  <39.340672, 35.436466, 40.563702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211071, 36.068779, 40.876507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891541, 35.835056, 40.933723>,  <38.699821, 35.694820, 40.968052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891541, 35.835056, 40.933723>,  <39.211071, 36.068779, 40.876507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891541, 35.835056, 40.933723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082610, 0.342084, 0.936031,
		-0.595865, 0.735907, -0.321535,
		-0.798824, -0.584310, 0.143042,
		38.651894, 35.659763, 40.976635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787289, 36.495560, 41.129116>,  <39.211071, 36.068779, 40.876507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787289, 36.495560, 41.129116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.672684, 36.129910, 41.243862>,  <38.603920, 35.910519, 41.312710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.672684, 36.129910, 41.243862>,  <38.787289, 36.495560, 41.129116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672684, 36.129910, 41.243862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113477, 0.329691, 0.937244,
		-0.951334, 0.235975, -0.198191,
		-0.286508, -0.914122, 0.286869,
		38.586731, 35.855671, 41.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202995, 36.638359, 41.512478>,  <38.787289, 36.495560, 41.129116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202995, 36.638359, 41.512478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321301, 36.273098, 41.624672>,  <38.392284, 36.053940, 41.691986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321301, 36.273098, 41.624672>,  <38.202995, 36.638359, 41.512478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321301, 36.273098, 41.624672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306965, 0.187194, 0.933129,
		-0.904596, -0.362088, -0.224941,
		0.295767, -0.913154, 0.280483,
		38.410030, 35.999153, 41.708817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831619, 36.556557, 42.127571>,  <38.202995, 36.638359, 41.512478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831619, 36.556557, 42.127571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131496, 36.293640, 42.158379>,  <38.311424, 36.135891, 42.176861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.131496, 36.293640, 42.158379>,  <37.831619, 36.556557, 42.127571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131496, 36.293640, 42.158379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034306, 0.077621, 0.996393,
		-0.660897, -0.749630, 0.035643,
		0.749692, -0.657290, 0.077016,
		38.356403, 36.096455, 42.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719700, 36.210403, 42.750782>,  <37.831619, 36.556557, 42.127571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719700, 36.210403, 42.750782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109882, 36.174278, 42.670460>,  <38.343994, 36.152603, 42.622265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109882, 36.174278, 42.670460>,  <37.719700, 36.210403, 42.750782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109882, 36.174278, 42.670460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214198, 0.178071, 0.960422,
		-0.050978, -0.979864, 0.193046,
		0.975459, -0.090311, -0.200808,
		38.402519, 36.147186, 42.610218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936359, 35.837708, 43.311852>,  <37.719700, 36.210403, 42.750782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936359, 35.837708, 43.311852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262798, 36.006413, 43.153812>,  <38.458660, 36.107635, 43.058987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.262798, 36.006413, 43.153812>,  <37.936359, 35.837708, 43.311852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262798, 36.006413, 43.153812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382378, 0.118552, 0.916369,
		0.433334, -0.898920, -0.064525,
		0.816093, 0.421767, -0.395100,
		38.507626, 36.132942, 43.035282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547852, 35.422451, 43.538403>,  <37.936359, 35.837708, 43.311852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547852, 35.422451, 43.538403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648224, 35.799332, 43.449600>,  <38.708447, 36.025459, 43.396320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648224, 35.799332, 43.449600>,  <38.547852, 35.422451, 43.538403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648224, 35.799332, 43.449600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557754, 0.046718, 0.828690,
		0.791167, -0.331765, -0.513796,
		0.250927, 0.942205, -0.222005,
		38.723503, 36.081993, 43.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292747, 35.509590, 43.775768>,  <38.547852, 35.422451, 43.538403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292747, 35.509590, 43.775768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185726, 35.889645, 43.711704>,  <39.121513, 36.117680, 43.673267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185726, 35.889645, 43.711704>,  <39.292747, 35.509590, 43.775768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185726, 35.889645, 43.711704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649636, 0.300639, 0.698276,
		0.711610, 0.082780, -0.697681,
		-0.267554, 0.950139, -0.160161,
		39.105461, 36.174686, 43.663654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856495, 35.887440, 43.787941>,  <39.292747, 35.509590, 43.775768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856495, 35.887440, 43.787941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579861, 36.163116, 43.874401>,  <39.413879, 36.328522, 43.926277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.579861, 36.163116, 43.874401>,  <39.856495, 35.887440, 43.787941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579861, 36.163116, 43.874401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578190, 0.348887, 0.737546,
		0.432900, 0.635052, -0.639770,
		-0.691587, 0.689193, 0.216148,
		39.372383, 36.369873, 43.939247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254158, 36.396980, 44.091473>,  <39.856495, 35.887440, 43.787941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254158, 36.396980, 44.091473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887310, 36.527660, 44.182831>,  <39.667202, 36.606068, 44.237648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887310, 36.527660, 44.182831>,  <40.254158, 36.396980, 44.091473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887310, 36.527660, 44.182831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342707, 0.353576, 0.870365,
		0.203589, 0.876500, -0.436232,
		-0.917117, 0.326697, 0.228399,
		39.612175, 36.625668, 44.251350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.607761, 38.948479, 44.941174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.795204, 38.606586, 44.851868>,  <36.907669, 38.401451, 44.798286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.795204, 38.606586, 44.851868>,  <36.607761, 38.948479, 44.941174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795204, 38.606586, 44.851868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372718, 0.037839, -0.927172,
		0.800927, 0.517696, -0.300841,
		0.468611, -0.854727, -0.223261,
		36.935787, 38.350170, 44.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862904, 39.055889, 44.288807>,  <36.607761, 38.948479, 44.941174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862904, 39.055889, 44.288807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891510, 38.658417, 44.323395>,  <36.908676, 38.419933, 44.344147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.891510, 38.658417, 44.323395>,  <36.862904, 39.055889, 44.288807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891510, 38.658417, 44.323395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156331, -0.096790, -0.982951,
		0.985112, 0.056781, -0.162266,
		0.071518, -0.993684, 0.086472,
		36.912964, 38.360313, 44.349335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269405, 38.876404, 43.780922>,  <36.862904, 39.055889, 44.288807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269405, 38.876404, 43.780922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083405, 38.534584, 43.873455>,  <36.971806, 38.329491, 43.928974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.083405, 38.534584, 43.873455>,  <37.269405, 38.876404, 43.780922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083405, 38.534584, 43.873455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032477, -0.244662, -0.969064,
		0.884714, -0.458129, 0.086015,
		-0.465001, -0.854552, 0.231334,
		36.943905, 38.278217, 43.942856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681644, 38.306416, 43.379116>,  <37.269405, 38.876404, 43.780922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681644, 38.306416, 43.379116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323689, 38.181145, 43.506294>,  <37.108913, 38.105980, 43.582603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323689, 38.181145, 43.506294>,  <37.681644, 38.306416, 43.379116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323689, 38.181145, 43.506294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195195, -0.366007, -0.909911,
		0.401337, -0.876332, 0.266405,
		-0.894889, -0.313180, 0.317948,
		37.055222, 38.087193, 43.601677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656544, 37.715652, 43.076668>,  <37.681644, 38.306416, 43.379116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656544, 37.715652, 43.076668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.272396, 37.799767, 43.149837>,  <37.041908, 37.850235, 43.193741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.272396, 37.799767, 43.149837>,  <37.656544, 37.715652, 43.076668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272396, 37.799767, 43.149837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227320, -0.211221, -0.950637,
		-0.161263, -0.954551, 0.250652,
		-0.960375, 0.210281, 0.182926,
		36.984283, 37.862854, 43.204716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308102, 37.211838, 42.752155>,  <37.656544, 37.715652, 43.076668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308102, 37.211838, 42.752155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002499, 37.467247, 42.789207>,  <36.819138, 37.620495, 42.811440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.002499, 37.467247, 42.789207>,  <37.308102, 37.211838, 42.752155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002499, 37.467247, 42.789207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284933, -0.205084, -0.936351,
		-0.578888, -0.741771, 0.338622,
		-0.764004, 0.638527, 0.092634,
		36.773296, 37.658806, 42.816998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703033, 36.824081, 42.563206>,  <37.308102, 37.211838, 42.752155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703033, 36.824081, 42.563206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621460, 37.211361, 42.505245>,  <36.572517, 37.443729, 42.470467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621460, 37.211361, 42.505245>,  <36.703033, 36.824081, 42.563206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621460, 37.211361, 42.505245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257996, -0.195932, -0.946070,
		-0.944378, -0.155549, 0.289748,
		-0.203931, 0.968202, -0.144903,
		36.560280, 37.501823, 42.461773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000137, 36.848434, 42.258556>,  <36.703033, 36.824081, 42.563206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000137, 36.848434, 42.258556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131985, 37.212254, 42.157299>,  <36.211094, 37.430546, 42.096546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131985, 37.212254, 42.157299>,  <36.000137, 36.848434, 42.258556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131985, 37.212254, 42.157299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471316, -0.073801, -0.878871,
		-0.818056, 0.408997, 0.404358,
		0.329614, 0.909546, -0.253140,
		36.230869, 37.485119, 42.081356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485619, 37.161091, 41.917168>,  <36.000137, 36.848434, 42.258556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485619, 37.161091, 41.917168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793240, 37.392239, 41.807903>,  <35.977814, 37.530930, 41.742344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793240, 37.392239, 41.807903>,  <35.485619, 37.161091, 41.917168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793240, 37.392239, 41.807903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430668, 0.152681, -0.889502,
		-0.472311, 0.801719, 0.366291,
		0.769056, 0.577871, -0.273161,
		36.023956, 37.565601, 41.725956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236061, 37.765465, 41.570721>,  <35.485619, 37.161091, 41.917168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236061, 37.765465, 41.570721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603672, 37.740616, 41.415016>,  <35.824238, 37.725708, 41.321594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603672, 37.740616, 41.415016>,  <35.236061, 37.765465, 41.570721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603672, 37.740616, 41.415016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385700, 0.062123, -0.920530,
		0.081368, 0.996133, 0.033132,
		0.919029, -0.062123, -0.389264,
		35.879379, 37.721977, 41.298237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182758, 38.244282, 40.959244>,  <35.236061, 37.765465, 41.570721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182758, 38.244282, 40.959244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518810, 38.034370, 40.904415>,  <35.720440, 37.908424, 40.871517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.518810, 38.034370, 40.904415>,  <35.182758, 38.244282, 40.959244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518810, 38.034370, 40.904415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135006, 0.042444, -0.989935,
		0.525318, 0.850178, -0.035191,
		0.840127, -0.524782, -0.137076,
		35.770847, 37.876934, 40.863293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667126, 38.591774, 40.497547>,  <35.182758, 38.244282, 40.959244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667126, 38.591774, 40.497547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756565, 38.203239, 40.465279>,  <35.810226, 37.970119, 40.445919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.756565, 38.203239, 40.465279>,  <35.667126, 38.591774, 40.497547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756565, 38.203239, 40.465279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294094, 0.011672, -0.955705,
		0.929255, 0.237414, -0.283055,
		0.223594, -0.971338, -0.080669,
		35.823643, 37.911839, 40.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052254, 38.531643, 39.901058>,  <35.667126, 38.591774, 40.497547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052254, 38.531643, 39.901058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971321, 38.144676, 39.961933>,  <35.922760, 37.912495, 39.998459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971321, 38.144676, 39.961933>,  <36.052254, 38.531643, 39.901058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971321, 38.144676, 39.961933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308965, -0.084408, -0.947320,
		0.929302, -0.238692, -0.281821,
		-0.202330, -0.967420, 0.152188,
		35.910622, 37.854450, 40.007591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410538, 38.177338, 39.348335>,  <36.052254, 38.531643, 39.901058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410538, 38.177338, 39.348335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125267, 37.937164, 39.493027>,  <35.954105, 37.793060, 39.579842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125267, 37.937164, 39.493027>,  <36.410538, 38.177338, 39.348335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125267, 37.937164, 39.493027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373541, -0.111135, -0.920932,
		0.593164, -0.791911, -0.145029,
		-0.713179, -0.600438, 0.361732,
		35.911312, 37.757034, 39.601547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101597, 38.197960, 39.206306>,  <36.410538, 38.177338, 39.348335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101597, 38.197960, 39.206306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146801, 38.574158, 39.078117>,  <37.173923, 38.799877, 39.001202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.146801, 38.574158, 39.078117>,  <37.101597, 38.197960, 39.206306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146801, 38.574158, 39.078117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280806, 0.279161, 0.918269,
		0.953089, -0.193762, -0.232548,
		0.113007, 0.940492, -0.320475,
		37.180702, 38.856304, 38.981976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656517, 38.317257, 39.455170>,  <37.101597, 38.197960, 39.206306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656517, 38.317257, 39.455170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.497520, 38.676491, 39.379864>,  <37.402122, 38.892033, 39.334679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.497520, 38.676491, 39.379864>,  <37.656517, 38.317257, 39.455170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497520, 38.676491, 39.379864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261423, 0.307500, 0.914932,
		0.879579, 0.314460, -0.357009,
		-0.397490, 0.898086, -0.188263,
		37.378273, 38.945915, 39.323383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152016, 38.583881, 39.717297>,  <37.656517, 38.317257, 39.455170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152016, 38.583881, 39.717297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.829060, 38.818771, 39.694382>,  <37.635284, 38.959705, 39.680634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.829060, 38.818771, 39.694382>,  <38.152016, 38.583881, 39.717297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829060, 38.818771, 39.694382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257663, 0.438273, 0.861119,
		0.530783, 0.680499, -0.505165,
		-0.807391, 0.587230, -0.057288,
		37.586842, 38.994942, 39.677197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401653, 39.178318, 39.928951>,  <38.152016, 38.583881, 39.717297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401653, 39.178318, 39.928951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007843, 39.247398, 39.940788>,  <37.771557, 39.288845, 39.947891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.007843, 39.247398, 39.940788>,  <38.401653, 39.178318, 39.928951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007843, 39.247398, 39.940788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127194, 0.588268, 0.798600,
		0.120512, 0.790009, -0.601134,
		-0.984530, 0.172701, 0.029591,
		37.712482, 39.299210, 39.949665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326969, 39.845200, 39.913815>,  <38.401653, 39.178318, 39.928951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326969, 39.845200, 39.913815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967342, 39.750256, 40.060963>,  <37.751564, 39.693287, 40.149250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.967342, 39.750256, 40.060963>,  <38.326969, 39.845200, 39.913815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967342, 39.750256, 40.060963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155069, 0.613139, 0.774605,
		-0.409419, 0.753471, -0.514448,
		-0.899072, -0.237363, 0.367871,
		37.697620, 39.679047, 40.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992123, 40.458561, 40.181473>,  <38.326969, 39.845200, 39.913815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992123, 40.458561, 40.181473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866341, 40.137913, 40.384853>,  <37.790871, 39.945526, 40.506882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866341, 40.137913, 40.384853>,  <37.992123, 40.458561, 40.181473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866341, 40.137913, 40.384853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137928, 0.491357, 0.859968,
		-0.939198, 0.340554, -0.043945,
		-0.314458, -0.801618, 0.508453,
		37.772003, 39.897427, 40.537388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414230, 40.705132, 40.692387>,  <37.992123, 40.458561, 40.181473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414230, 40.705132, 40.692387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545502, 40.350838, 40.823700>,  <37.624264, 40.138260, 40.902489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.545502, 40.350838, 40.823700>,  <37.414230, 40.705132, 40.692387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545502, 40.350838, 40.823700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066453, 0.325022, 0.943369,
		-0.942275, -0.331408, 0.047805,
		0.328178, -0.885736, 0.328283,
		37.643955, 40.085117, 40.922184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904156, 40.569363, 41.181351>,  <37.414230, 40.705132, 40.692387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904156, 40.569363, 41.181351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227222, 40.342094, 41.244419>,  <37.421062, 40.205734, 41.282261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227222, 40.342094, 41.244419>,  <36.904156, 40.569363, 41.181351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227222, 40.342094, 41.244419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049922, 0.200542, 0.978412,
		-0.587526, -0.798099, 0.133605,
		0.807663, -0.568173, 0.157667,
		37.469521, 40.171642, 41.291718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798683, 40.250557, 41.730831>,  <36.904156, 40.569363, 41.181351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798683, 40.250557, 41.730831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.196907, 40.218079, 41.749912>,  <37.435841, 40.198593, 41.761360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.196907, 40.218079, 41.749912>,  <36.798683, 40.250557, 41.730831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196907, 40.218079, 41.749912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022687, 0.284873, 0.958297,
		-0.091401, -0.955120, 0.281764,
		0.995555, -0.081197, 0.047706,
		37.495575, 40.193718, 41.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946056, 39.812542, 42.369408>,  <36.798683, 40.250557, 41.730831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946056, 39.812542, 42.369408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293594, 39.994434, 42.291096>,  <37.502117, 40.103569, 42.244110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.293594, 39.994434, 42.291096>,  <36.946056, 39.812542, 42.369408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293594, 39.994434, 42.291096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161027, 0.114387, 0.980299,
		0.468172, -0.883250, 0.026159,
		0.868841, 0.454736, -0.195780,
		37.554245, 40.130856, 42.232361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519150, 39.498623, 42.776951>,  <36.946056, 39.812542, 42.369408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519150, 39.498623, 42.776951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662056, 39.862717, 42.693195>,  <37.747799, 40.081173, 42.642941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.662056, 39.862717, 42.693195>,  <37.519150, 39.498623, 42.776951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662056, 39.862717, 42.693195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380958, 0.062682, 0.922465,
		0.852781, -0.409331, -0.324366,
		0.357261, 0.910230, -0.209393,
		37.769234, 40.135784, 42.630379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162964, 39.411243, 42.941219>,  <37.519150, 39.498623, 42.776951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162964, 39.411243, 42.941219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135479, 39.809174, 42.911266>,  <38.118988, 40.047932, 42.893295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.135479, 39.809174, 42.911266>,  <38.162964, 39.411243, 42.941219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135479, 39.809174, 42.911266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608011, 0.101273, 0.787443,
		0.790949, 0.008579, -0.611822,
		-0.068716, 0.994822, -0.074885,
		38.114864, 40.107620, 42.888802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766846, 39.596882, 43.009850>,  <38.162964, 39.411243, 42.941219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766846, 39.596882, 43.009850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531071, 39.896614, 43.130558>,  <38.389606, 40.076454, 43.202984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.531071, 39.896614, 43.130558>,  <38.766846, 39.596882, 43.009850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531071, 39.896614, 43.130558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530908, 0.077787, 0.843852,
		0.608850, 0.657612, -0.443676,
		-0.589440, 0.749330, 0.301771,
		38.354240, 40.121414, 43.221088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221523, 40.176113, 43.284546>,  <38.766846, 39.596882, 43.009850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221523, 40.176113, 43.284546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.870323, 40.254410, 43.459267>,  <38.659603, 40.301388, 43.564098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.870323, 40.254410, 43.459267>,  <39.221523, 40.176113, 43.284546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870323, 40.254410, 43.459267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464494, 0.128058, 0.876269,
		0.115587, 0.972258, -0.203357,
		-0.878001, 0.195744, 0.436806,
		38.606922, 40.313133, 43.590309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813538, 40.355793, 42.824047>,  <39.221523, 40.176113, 43.284546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813538, 40.355793, 42.824047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.159485, 40.155010, 42.826370>,  <40.367054, 40.034542, 42.827763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.159485, 40.155010, 42.826370>,  <39.813538, 40.355793, 42.824047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159485, 40.155010, 42.826370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183218, -0.326406, -0.927303,
		0.467361, 0.800936, -0.374268,
		0.864873, -0.501957, 0.005804,
		40.418945, 40.004421, 42.828110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105171, 40.432625, 42.130470>,  <39.813538, 40.355793, 42.824047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105171, 40.432625, 42.130470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303402, 40.114540, 42.270203>,  <40.422340, 39.923687, 42.354042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.303402, 40.114540, 42.270203>,  <40.105171, 40.432625, 42.130470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303402, 40.114540, 42.270203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059784, -0.432473, -0.899662,
		0.866502, 0.424970, -0.261867,
		0.495580, -0.795215, 0.349333,
		40.452076, 39.875977, 42.375004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622662, 40.421471, 41.686058>,  <40.105171, 40.432625, 42.130470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622662, 40.421471, 41.686058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595280, 40.053726, 41.841026>,  <40.578850, 39.833080, 41.934010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.595280, 40.053726, 41.841026>,  <40.622662, 40.421471, 41.686058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595280, 40.053726, 41.841026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068882, -0.383051, -0.921155,
		0.995274, -0.089743, -0.037106,
		-0.068454, -0.919358, 0.387422,
		40.574745, 39.777920, 41.957253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195984, 40.006172, 41.482296>,  <40.622662, 40.421471, 41.686058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195984, 40.006172, 41.482296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956036, 39.701744, 41.581036>,  <40.812069, 39.519089, 41.640278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.956036, 39.701744, 41.581036>,  <41.195984, 40.006172, 41.482296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956036, 39.701744, 41.581036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143181, -0.405653, -0.902743,
		0.787184, -0.506182, 0.352308,
		-0.599867, -0.761068, 0.246848,
		40.776073, 39.473423, 41.655090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510445, 39.423401, 41.154953>,  <41.195984, 40.006172, 41.482296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510445, 39.423401, 41.154953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136761, 39.313583, 41.246056>,  <40.912548, 39.247692, 41.300716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136761, 39.313583, 41.246056>,  <41.510445, 39.423401, 41.154953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136761, 39.313583, 41.246056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046362, -0.539614, -0.840635,
		0.353693, -0.795890, 0.491386,
		-0.934212, -0.274545, 0.227757,
		40.856499, 39.231220, 41.314384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482227, 38.711674, 41.076839>,  <41.510445, 39.423401, 41.154953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482227, 38.711674, 41.076839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.104431, 38.837173, 41.037846>,  <40.877754, 38.912472, 41.014450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.104431, 38.837173, 41.037846>,  <41.482227, 38.711674, 41.076839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104431, 38.837173, 41.037846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072832, -0.489287, -0.869076,
		-0.320371, -0.813732, 0.484977,
		-0.944488, 0.313749, -0.097487,
		40.821083, 38.931297, 41.008598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075512, 38.102055, 40.927288>,  <41.482227, 38.711674, 41.076839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075512, 38.102055, 40.927288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.872303, 38.427006, 40.812775>,  <40.750378, 38.621975, 40.744064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.872303, 38.427006, 40.812775>,  <41.075512, 38.102055, 40.927288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872303, 38.427006, 40.812775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079243, -0.375043, -0.923614,
		-0.857691, -0.446530, 0.254906,
		-0.508022, 0.812375, -0.286287,
		40.719898, 38.670719, 40.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418777, 37.810547, 40.586239>,  <41.075512, 38.102055, 40.927288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418777, 37.810547, 40.586239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489254, 38.185463, 40.465939>,  <40.531540, 38.410412, 40.393757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489254, 38.185463, 40.465939>,  <40.418777, 37.810547, 40.586239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489254, 38.185463, 40.465939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019147, -0.302209, -0.953050,
		-0.984170, 0.173676, -0.035300,
		0.176190, 0.937287, -0.300750,
		40.542110, 38.466648, 40.375713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919945, 38.009884, 40.068878>,  <40.418777, 37.810547, 40.586239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919945, 38.009884, 40.068878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219532, 38.273205, 40.038731>,  <40.399284, 38.431198, 40.020641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219532, 38.273205, 40.038731>,  <39.919945, 38.009884, 40.068878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219532, 38.273205, 40.038731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033383, -0.151094, -0.987956,
		-0.661761, 0.737434, -0.135141,
		0.748971, 0.658302, -0.075371,
		40.444221, 38.470695, 40.016121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644196, 38.403427, 39.503437>,  <39.919945, 38.009884, 40.068878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644196, 38.403427, 39.503437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034538, 38.488892, 39.521561>,  <40.268745, 38.540169, 39.532436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034538, 38.488892, 39.521561>,  <39.644196, 38.403427, 39.503437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034538, 38.488892, 39.521561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026501, 0.090078, -0.995582,
		-0.216798, 0.972746, 0.082241,
		0.975857, 0.213660, 0.045308,
		40.327293, 38.552990, 39.535152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740021, 39.023064, 39.128265>,  <39.644196, 38.403427, 39.503437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740021, 39.023064, 39.128265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091724, 38.833023, 39.142014>,  <40.302746, 38.718998, 39.150261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.091724, 38.833023, 39.142014>,  <39.740021, 39.023064, 39.128265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091724, 38.833023, 39.142014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136314, 0.181821, -0.973838,
		0.456419, 0.860943, 0.224631,
		0.879261, -0.475098, 0.034372,
		40.355503, 38.690495, 39.152325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170170, 39.432308, 38.732624>,  <39.740021, 39.023064, 39.128265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170170, 39.432308, 38.732624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353168, 39.076748, 38.742126>,  <40.462967, 38.863411, 38.747826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.353168, 39.076748, 38.742126>,  <40.170170, 39.432308, 38.732624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353168, 39.076748, 38.742126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079315, -0.067398, -0.994569,
		0.885669, 0.453123, -0.101337,
		0.457492, -0.888897, 0.023753,
		40.490417, 38.810078, 38.749252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647957, 39.457436, 38.208706>,  <40.170170, 39.432308, 38.732624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647957, 39.457436, 38.208706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.590420, 39.068035, 38.279808>,  <40.555897, 38.834393, 38.322468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.590420, 39.068035, 38.279808>,  <40.647957, 39.457436, 38.208706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590420, 39.068035, 38.279808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109393, -0.162880, -0.980563,
		0.983535, -0.160493, -0.083065,
		-0.143844, -0.973505, 0.177755,
		40.547268, 38.775982, 38.333134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117722, 39.072124, 37.734280>,  <40.647957, 39.457436, 38.208706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117722, 39.072124, 37.734280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811817, 38.845104, 37.856281>,  <40.628277, 38.708893, 37.929482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.811817, 38.845104, 37.856281>,  <41.117722, 39.072124, 37.734280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811817, 38.845104, 37.856281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065214, -0.402763, -0.912978,
		0.641008, -0.718098, 0.271004,
		-0.764759, -0.567554, 0.305004,
		40.582390, 38.674839, 37.947784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.001816, 38.015488, 29.844160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965546, 37.646751, 29.693434>,  <27.943783, 37.425510, 29.602999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965546, 37.646751, 29.693434>,  <28.001816, 38.015488, 29.844160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965546, 37.646751, 29.693434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646485, -0.233326, 0.726372,
		-0.757519, 0.309470, -0.574798,
		-0.090675, -0.921839, -0.376817,
		27.938343, 37.370201, 29.580389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274712, 37.941769, 29.639105>,  <28.001816, 38.015488, 29.844160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274712, 37.941769, 29.639105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437891, 37.586758, 29.724779>,  <27.535799, 37.373753, 29.776184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437891, 37.586758, 29.724779>,  <27.274712, 37.941769, 29.639105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437891, 37.586758, 29.724779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677025, -0.136677, 0.723157,
		-0.612547, -0.440020, -0.656635,
		0.407950, -0.887526, 0.214183,
		27.560276, 37.320499, 29.789034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751541, 37.470684, 29.744589>,  <27.274712, 37.941769, 29.639105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751541, 37.470684, 29.744589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046883, 37.270065, 29.924936>,  <27.224087, 37.149693, 30.033146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.046883, 37.270065, 29.924936>,  <26.751541, 37.470684, 29.744589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046883, 37.270065, 29.924936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570105, -0.107013, 0.814573,
		-0.360297, -0.858486, -0.364948,
		0.738354, -0.501547, 0.450871,
		27.268389, 37.119602, 30.060198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520243, 36.883987, 29.959652>,  <26.751541, 37.470684, 29.744589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520243, 36.883987, 29.959652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827211, 36.924881, 30.212830>,  <27.011393, 36.949417, 30.364737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.827211, 36.924881, 30.212830>,  <26.520243, 36.883987, 29.959652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827211, 36.924881, 30.212830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626693, -0.088818, 0.774189,
		0.135366, -0.990787, -0.004090,
		0.767419, 0.102235, 0.632942,
		27.057438, 36.955551, 30.402712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245890, 36.396553, 30.476986>,  <26.520243, 36.883987, 29.959652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245890, 36.396553, 30.476986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566959, 36.586212, 30.621704>,  <26.759602, 36.700008, 30.708534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566959, 36.586212, 30.621704>,  <26.245890, 36.396553, 30.476986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566959, 36.586212, 30.621704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241825, -0.295776, 0.924141,
		0.545194, -0.829274, -0.122749,
		0.802673, 0.474153, 0.361795,
		26.807762, 36.728458, 30.730242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744864, 35.867294, 30.862495>,  <26.245890, 36.396553, 30.476986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744864, 35.867294, 30.862495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.798277, 36.239487, 30.998951>,  <26.830326, 36.462803, 31.080824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.798277, 36.239487, 30.998951>,  <26.744864, 35.867294, 30.862495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798277, 36.239487, 30.998951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208301, -0.310180, 0.927577,
		0.968906, -0.194923, 0.152400,
		0.133535, 0.930480, 0.341138,
		26.838337, 36.518631, 31.101292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275427, 35.841244, 31.287056>,  <26.744864, 35.867294, 30.862495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275427, 35.841244, 31.287056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065905, 36.157570, 31.413698>,  <26.940191, 36.347366, 31.489683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065905, 36.157570, 31.413698>,  <27.275427, 35.841244, 31.287056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065905, 36.157570, 31.413698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008889, -0.366576, 0.930346,
		0.851792, 0.490133, 0.184985,
		-0.523804, 0.790817, 0.316603,
		26.908764, 36.394814, 31.508678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630312, 35.997440, 31.899189>,  <27.275427, 35.841244, 31.287056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630312, 35.997440, 31.899189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294504, 36.212372, 31.931406>,  <27.093019, 36.341331, 31.950737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294504, 36.212372, 31.931406>,  <27.630312, 35.997440, 31.899189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294504, 36.212372, 31.931406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131098, 0.056467, 0.989760,
		0.527275, 0.841483, -0.117848,
		-0.839520, 0.537325, 0.080543,
		27.042648, 36.373569, 31.955568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808451, 36.702457, 32.278130>,  <27.630312, 35.997440, 31.899189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808451, 36.702457, 32.278130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417173, 36.632030, 32.322201>,  <27.182407, 36.589775, 32.348644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417173, 36.632030, 32.322201>,  <27.808451, 36.702457, 32.278130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417173, 36.632030, 32.322201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097719, 0.077970, 0.992155,
		-0.183272, 0.981286, -0.059065,
		-0.978193, -0.176063, 0.110180,
		27.123714, 36.579212, 32.355255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689322, 37.157196, 32.883884>,  <27.808451, 36.702457, 32.278130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689322, 37.157196, 32.883884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374935, 36.914845, 32.834606>,  <27.186304, 36.769436, 32.805038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374935, 36.914845, 32.834606>,  <27.689322, 37.157196, 32.883884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374935, 36.914845, 32.834606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156942, 0.002782, 0.987604,
		-0.598022, 0.795555, -0.097274,
		-0.785964, -0.605875, -0.123192,
		27.139147, 36.733082, 32.797649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128487, 37.426548, 33.229523>,  <27.689322, 37.157196, 32.883884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128487, 37.426548, 33.229523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055229, 37.033966, 33.206871>,  <27.011274, 36.798416, 33.193279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.055229, 37.033966, 33.206871>,  <27.128487, 37.426548, 33.229523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055229, 37.033966, 33.206871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203251, -0.018555, 0.978951,
		-0.961846, 0.190800, -0.196083,
		-0.183145, -0.981454, -0.056628,
		27.000286, 36.739529, 33.189884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506804, 37.383068, 33.581799>,  <27.128487, 37.426548, 33.229523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506804, 37.383068, 33.581799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693846, 37.029507, 33.584682>,  <26.806070, 36.817368, 33.586414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693846, 37.029507, 33.584682>,  <26.506804, 37.383068, 33.581799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693846, 37.029507, 33.584682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066623, 0.043376, 0.996835,
		-0.881423, -0.465646, 0.079172,
		0.467606, -0.883908, 0.007210,
		26.834127, 36.764336, 33.586845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313089, 37.162003, 34.209595>,  <26.506804, 37.383068, 33.581799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313089, 37.162003, 34.209595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623703, 36.933250, 34.103802>,  <26.810070, 36.795998, 34.040325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623703, 36.933250, 34.103802>,  <26.313089, 37.162003, 34.209595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623703, 36.933250, 34.103802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279961, -0.062876, 0.957950,
		-0.564463, -0.817923, 0.111280,
		0.776532, -0.571882, -0.264478,
		26.856663, 36.761684, 34.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296324, 36.610447, 34.529789>,  <26.313089, 37.162003, 34.209595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296324, 36.610447, 34.529789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681932, 36.603069, 34.423717>,  <26.913298, 36.598644, 34.360077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681932, 36.603069, 34.423717>,  <26.296324, 36.610447, 34.529789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681932, 36.603069, 34.423717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264186, -0.043819, 0.963476,
		-0.029374, -0.998870, -0.037375,
		0.964024, -0.018427, -0.265175,
		26.971140, 36.597538, 34.344166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583536, 36.025906, 34.873234>,  <26.296324, 36.610447, 34.529789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583536, 36.025906, 34.873234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.903011, 36.255871, 34.802151>,  <27.094696, 36.393848, 34.759502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.903011, 36.255871, 34.802151>,  <26.583536, 36.025906, 34.873234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903011, 36.255871, 34.802151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372756, -0.240849, 0.896128,
		0.472392, -0.781966, -0.406664,
		0.798686, 0.574910, -0.177707,
		27.142616, 36.428345, 34.748840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158653, 35.585361, 35.012180>,  <26.583536, 36.025906, 34.873234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158653, 35.585361, 35.012180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309681, 35.955753, 35.011219>,  <27.400297, 36.177990, 35.010643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.309681, 35.955753, 35.011219>,  <27.158653, 35.585361, 35.012180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309681, 35.955753, 35.011219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457219, -0.184174, 0.870075,
		0.805229, -0.329610, -0.492913,
		0.377567, 0.925979, -0.002402,
		27.422951, 36.233547, 35.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812025, 35.428596, 35.168194>,  <27.158653, 35.585361, 35.012180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812025, 35.428596, 35.168194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745035, 35.810383, 35.266941>,  <27.704842, 36.039455, 35.326191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.745035, 35.810383, 35.266941>,  <27.812025, 35.428596, 35.168194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745035, 35.810383, 35.266941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363029, -0.173108, 0.915556,
		0.916604, 0.242953, -0.317509,
		-0.167474, 0.954467, 0.246871,
		27.694794, 36.096722, 35.341003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463428, 35.682716, 35.400326>,  <27.812025, 35.428596, 35.168194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463428, 35.682716, 35.400326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161024, 35.886578, 35.564617>,  <27.979582, 36.008896, 35.663193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.161024, 35.886578, 35.564617>,  <28.463428, 35.682716, 35.400326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161024, 35.886578, 35.564617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328101, -0.247900, 0.911535,
		0.566390, 0.823890, 0.020195,
		-0.756011, 0.509658, 0.410727,
		27.934221, 36.039474, 35.687836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719093, 35.910183, 36.028866>,  <28.463428, 35.682716, 35.400326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719093, 35.910183, 36.028866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331907, 35.979366, 36.101673>,  <28.099596, 36.020874, 36.145355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.331907, 35.979366, 36.101673>,  <28.719093, 35.910183, 36.028866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331907, 35.979366, 36.101673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101852, -0.392121, 0.914258,
		0.229497, 0.903509, 0.361944,
		-0.967965, 0.172955, 0.182015,
		28.041517, 36.031254, 36.156277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340380, 35.729717, 35.799538>,  <28.719093, 35.910183, 36.028866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340380, 35.729717, 35.799538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066853, 35.966568, 35.628994>,  <28.902737, 36.108677, 35.526669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.066853, 35.966568, 35.628994>,  <29.340380, 35.729717, 35.799538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066853, 35.966568, 35.628994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485045, -0.067638, -0.871869,
		-0.545093, -0.803003, -0.240955,
		-0.683816, 0.592124, -0.426362,
		28.861708, 36.144207, 35.501087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606897, 36.358879, 36.091145>,  <29.340380, 35.729717, 35.799538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606897, 36.358879, 36.091145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929308, 36.122307, 36.081871>,  <30.122753, 35.980366, 36.076305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929308, 36.122307, 36.081871>,  <29.606897, 36.358879, 36.091145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929308, 36.122307, 36.081871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234762, 0.355417, -0.904746,
		0.543333, 0.723804, 0.425319,
		0.806025, -0.591428, -0.023188,
		30.171116, 35.944878, 36.074913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052397, 36.803425, 35.935574>,  <29.606897, 36.358879, 36.091145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052397, 36.803425, 35.935574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178621, 36.439575, 35.827496>,  <30.254356, 36.221264, 35.762650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.178621, 36.439575, 35.827496>,  <30.052397, 36.803425, 35.935574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178621, 36.439575, 35.827496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336416, 0.373489, -0.864483,
		0.887269, 0.181899, 0.423871,
		0.315560, -0.909626, -0.270191,
		30.273289, 36.166687, 35.746437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698563, 36.930607, 35.615494>,  <30.052397, 36.803425, 35.935574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698563, 36.930607, 35.615494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615974, 36.561829, 35.484413>,  <30.566422, 36.340561, 35.405766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.615974, 36.561829, 35.484413>,  <30.698563, 36.930607, 35.615494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615974, 36.561829, 35.484413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210021, 0.285353, -0.935128,
		0.955648, -0.261898, 0.134711,
		-0.206468, -0.921945, -0.327701,
		30.554033, 36.285244, 35.386105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194914, 36.841614, 35.125965>,  <30.698563, 36.930607, 35.615494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194914, 36.841614, 35.125965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899002, 36.580952, 35.058941>,  <30.721455, 36.424557, 35.018726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.899002, 36.580952, 35.058941>,  <31.194914, 36.841614, 35.125965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899002, 36.580952, 35.058941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236191, -0.018318, -0.971534,
		0.630034, -0.758296, 0.167466,
		-0.739778, -0.651653, -0.167562,
		30.677069, 36.385456, 35.008671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514528, 36.199062, 34.778320>,  <31.194914, 36.841614, 35.125965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514528, 36.199062, 34.778320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129011, 36.198349, 34.671661>,  <30.897701, 36.197922, 34.607666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129011, 36.198349, 34.671661>,  <31.514528, 36.199062, 34.778320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129011, 36.198349, 34.671661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265523, 0.085587, -0.960298,
		0.024527, -0.996329, -0.082017,
		-0.963792, -0.001776, -0.266648,
		30.839874, 36.197815, 34.591667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466299, 35.820576, 34.169361>,  <31.514528, 36.199062, 34.778320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466299, 35.820576, 34.169361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111515, 36.005264, 34.165119>,  <30.898643, 36.116077, 34.162575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111515, 36.005264, 34.165119>,  <31.466299, 35.820576, 34.169361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111515, 36.005264, 34.165119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135170, 0.237572, -0.961919,
		-0.441619, -0.854619, -0.273128,
		-0.886962, 0.461721, -0.010603,
		30.845427, 36.143780, 34.161938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163055, 35.706146, 33.546055>,  <31.466299, 35.820576, 34.169361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163055, 35.706146, 33.546055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948116, 36.022049, 33.664410>,  <30.819153, 36.211590, 33.735420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948116, 36.022049, 33.664410>,  <31.163055, 35.706146, 33.546055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948116, 36.022049, 33.664410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079485, 0.396704, -0.914499,
		-0.839606, -0.467886, -0.275941,
		-0.537348, 0.789752, 0.295885,
		30.786911, 36.258976, 33.753174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630993, 35.733265, 33.150787>,  <31.163055, 35.706146, 33.546055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630993, 35.733265, 33.150787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707027, 36.098690, 33.294609>,  <30.752649, 36.317944, 33.380901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.707027, 36.098690, 33.294609>,  <30.630993, 35.733265, 33.150787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707027, 36.098690, 33.294609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091871, 0.348069, -0.932957,
		-0.977459, 0.210376, -0.017766,
		0.190088, 0.913559, 0.359550,
		30.764053, 36.372757, 33.402473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464907, 36.080517, 32.555290>,  <30.630993, 35.733265, 33.150787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464907, 36.080517, 32.555290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644178, 36.350449, 32.789810>,  <30.751741, 36.512405, 32.930523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.644178, 36.350449, 32.789810>,  <30.464907, 36.080517, 32.555290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644178, 36.350449, 32.789810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065895, 0.629134, -0.774499,
		-0.891512, 0.385747, 0.237496,
		0.448178, 0.674826, 0.586299,
		30.778631, 36.552895, 32.965698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190203, 36.715874, 32.415588>,  <30.464907, 36.080517, 32.555290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190203, 36.715874, 32.415588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.545916, 36.796078, 32.580013>,  <30.759342, 36.844200, 32.678669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.545916, 36.796078, 32.580013>,  <30.190203, 36.715874, 32.415588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545916, 36.796078, 32.580013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190899, 0.654011, -0.732002,
		-0.415618, 0.729427, 0.543322,
		0.889280, 0.200513, 0.411066,
		30.812700, 36.856232, 32.703335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197071, 37.385036, 32.341881>,  <30.190203, 36.715874, 32.415588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197071, 37.385036, 32.341881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577698, 37.272675, 32.391861>,  <30.806074, 37.205257, 32.421848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.577698, 37.272675, 32.391861>,  <30.197071, 37.385036, 32.341881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577698, 37.272675, 32.391861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250343, 0.472036, -0.845287,
		0.178468, 0.835627, 0.519497,
		0.951566, -0.280909, 0.124950,
		30.863167, 37.188400, 32.429344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584841, 38.051067, 32.270676>,  <30.197071, 37.385036, 32.341881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584841, 38.051067, 32.270676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.851822, 37.760612, 32.204666>,  <31.012011, 37.586342, 32.165062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.851822, 37.760612, 32.204666>,  <30.584841, 38.051067, 32.270676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851822, 37.760612, 32.204666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378624, 0.521763, -0.764465,
		0.641209, 0.447763, 0.623185,
		0.667454, -0.726135, -0.165025,
		31.052057, 37.542770, 32.155159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209974, 38.422256, 32.128448>,  <30.584841, 38.051067, 32.270676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209974, 38.422256, 32.128448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241760, 38.057743, 31.966835>,  <31.260832, 37.839035, 31.869867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.241760, 38.057743, 31.966835>,  <31.209974, 38.422256, 32.128448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241760, 38.057743, 31.966835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530046, 0.381895, -0.757105,
		0.844237, -0.153994, 0.513370,
		0.079464, -0.911286, -0.404034,
		31.265600, 37.784359, 31.845625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852411, 38.475719, 31.777880>,  <31.209974, 38.422256, 32.128448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852411, 38.475719, 31.777880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639275, 38.171413, 31.629654>,  <31.511393, 37.988831, 31.540718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639275, 38.171413, 31.629654>,  <31.852411, 38.475719, 31.777880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639275, 38.171413, 31.629654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215959, 0.301156, -0.928798,
		0.818195, -0.574928, 0.003826,
		-0.532840, -0.760764, -0.370566,
		31.479422, 37.943184, 31.518484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348484, 38.436756, 31.318367>,  <31.852411, 38.475719, 31.777880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348484, 38.436756, 31.318367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.990656, 38.294235, 31.210445>,  <31.775959, 38.208725, 31.145693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.990656, 38.294235, 31.210445>,  <32.348484, 38.436756, 31.318367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990656, 38.294235, 31.210445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121502, 0.387071, -0.914009,
		0.430100, -0.850425, -0.302970,
		-0.894568, -0.356304, -0.269807,
		31.722284, 38.187344, 31.129503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334801, 38.303043, 30.591364>,  <32.348484, 38.436756, 31.318367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334801, 38.303043, 30.591364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938780, 38.268250, 30.635614>,  <31.701168, 38.247372, 30.662165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938780, 38.268250, 30.635614>,  <32.334801, 38.303043, 30.591364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938780, 38.268250, 30.635614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125247, 0.186225, -0.974491,
		0.064162, -0.978649, -0.195266,
		-0.990049, -0.086982, 0.110624,
		31.641766, 38.242153, 30.668802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143795, 38.029980, 29.921680>,  <32.334801, 38.303043, 30.591364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143795, 38.029980, 29.921680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807745, 38.182995, 30.075489>,  <31.606115, 38.274803, 30.167774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807745, 38.182995, 30.075489>,  <32.143795, 38.029980, 29.921680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807745, 38.182995, 30.075489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263557, 0.331699, -0.905822,
		-0.474056, -0.862346, -0.177848,
		-0.840124, 0.382537, 0.384522,
		31.555708, 38.297756, 30.190845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550461, 37.855236, 29.557749>,  <32.143795, 38.029980, 29.921680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550461, 37.855236, 29.557749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406387, 38.179817, 29.741844>,  <31.319942, 38.374565, 29.852301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406387, 38.179817, 29.741844>,  <31.550461, 37.855236, 29.557749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406387, 38.179817, 29.741844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312351, 0.359975, -0.879122,
		-0.879036, -0.460400, 0.123800,
		-0.360183, 0.811449, 0.460238,
		31.298332, 38.423252, 29.879915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853407, 37.967724, 29.379770>,  <31.550461, 37.855236, 29.557749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853407, 37.967724, 29.379770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950060, 38.337757, 29.496962>,  <31.008051, 38.559776, 29.567276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950060, 38.337757, 29.496962>,  <30.853407, 37.967724, 29.379770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950060, 38.337757, 29.496962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329416, 0.362196, -0.871951,
		-0.912742, 0.114180, 0.392255,
		0.241632, 0.925082, 0.292979,
		31.022549, 38.615280, 29.584856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410061, 38.408943, 29.045452>,  <30.853407, 37.967724, 29.379770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410061, 38.408943, 29.045452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683897, 38.678677, 29.156170>,  <30.848198, 38.840515, 29.222601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683897, 38.678677, 29.156170>,  <30.410061, 38.408943, 29.045452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683897, 38.678677, 29.156170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125887, 0.483395, -0.866303,
		-0.717977, 0.558217, 0.415816,
		0.684589, 0.674332, 0.276795,
		30.889273, 38.880978, 29.239208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201042, 39.005688, 28.988358>,  <30.410061, 38.408943, 29.045452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201042, 39.005688, 28.988358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.585859, 39.114395, 28.978418>,  <30.816750, 39.179619, 28.972456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.585859, 39.114395, 28.978418>,  <30.201042, 39.005688, 28.988358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585859, 39.114395, 28.978418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172755, 0.535992, -0.826358,
		-0.211261, 0.799284, 0.562596,
		0.962042, 0.271768, -0.024846,
		30.874472, 39.195927, 28.970964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297609, 39.782440, 28.933662>,  <30.201042, 39.005688, 28.988358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297609, 39.782440, 28.933662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605349, 39.586990, 28.769056>,  <30.789993, 39.469719, 28.670292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605349, 39.586990, 28.769056>,  <30.297609, 39.782440, 28.933662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605349, 39.586990, 28.769056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061887, 0.584137, -0.809292,
		0.635823, 0.648096, 0.419166,
		0.769350, -0.488626, -0.411516,
		30.836153, 39.440403, 28.645601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.355495, 37.155964, 44.293144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.009876, 37.010544, 44.432430>,  <39.802505, 36.923290, 44.516003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.009876, 37.010544, 44.432430>,  <40.355495, 37.155964, 44.293144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009876, 37.010544, 44.432430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341587, 0.084684, 0.936027,
		-0.369781, 0.927717, 0.051013,
		-0.864049, -0.363550, 0.348211,
		39.750660, 36.901478, 44.536892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267056, 37.587074, 44.831104>,  <40.355495, 37.155964, 44.293144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267056, 37.587074, 44.831104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034607, 37.267021, 44.890553>,  <39.895138, 37.074989, 44.926224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034607, 37.267021, 44.890553>,  <40.267056, 37.587074, 44.831104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034607, 37.267021, 44.890553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232895, 0.011481, 0.972434,
		-0.779780, 0.599717, 0.179674,
		-0.581122, -0.800130, 0.148624,
		39.860271, 37.026981, 44.935139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692974, 37.821289, 45.379028>,  <40.267056, 37.587074, 44.831104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692974, 37.821289, 45.379028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735168, 37.423584, 45.372036>,  <39.760487, 37.184959, 45.367840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735168, 37.423584, 45.372036>,  <39.692974, 37.821289, 45.379028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735168, 37.423584, 45.372036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304026, 0.015511, 0.952537,
		-0.946805, -0.105797, 0.303919,
		0.105490, -0.994267, -0.017479,
		39.766815, 37.125305, 45.366791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360645, 37.594273, 45.966877>,  <39.692974, 37.821289, 45.379028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360645, 37.594273, 45.966877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642025, 37.320522, 45.890148>,  <39.810852, 37.156273, 45.844112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642025, 37.320522, 45.890148>,  <39.360645, 37.594273, 45.966877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642025, 37.320522, 45.890148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333390, 0.079365, 0.939443,
		-0.627707, -0.724798, 0.283992,
		0.703446, -0.684375, -0.191822,
		39.853058, 37.115211, 45.832600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558792, 37.259922, 46.667362>,  <39.360645, 37.594273, 45.966877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558792, 37.259922, 46.667362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850548, 37.123398, 46.430214>,  <40.025600, 37.041485, 46.287926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.850548, 37.123398, 46.430214>,  <39.558792, 37.259922, 46.667362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850548, 37.123398, 46.430214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594043, -0.113797, 0.796343,
		-0.339266, -0.933037, 0.119750,
		0.729391, -0.341309, -0.592872,
		40.069366, 37.021004, 46.252354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728386, 36.604061, 46.931629>,  <39.558792, 37.259922, 46.667362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728386, 36.604061, 46.931629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023365, 36.746292, 46.701939>,  <40.200352, 36.831631, 46.564125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023365, 36.746292, 46.701939>,  <39.728386, 36.604061, 46.931629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023365, 36.746292, 46.701939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635708, -0.078238, 0.767955,
		0.228144, -0.931365, -0.283742,
		0.737445, 0.355581, -0.574226,
		40.244598, 36.852966, 46.529671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240108, 36.232529, 47.174702>,  <39.728386, 36.604061, 46.931629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240108, 36.232529, 47.174702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383366, 36.556686, 46.989231>,  <40.469318, 36.751179, 46.877949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.383366, 36.556686, 46.989231>,  <40.240108, 36.232529, 47.174702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383366, 36.556686, 46.989231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786333, 0.005959, 0.617774,
		0.503401, -0.585859, -0.635103,
		0.358144, 0.810391, -0.463681,
		40.490810, 36.799805, 46.850128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875378, 36.119141, 47.211735>,  <40.240108, 36.232529, 47.174702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875378, 36.119141, 47.211735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811703, 36.509865, 47.154457>,  <40.773499, 36.744301, 47.120090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.811703, 36.509865, 47.154457>,  <40.875378, 36.119141, 47.211735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811703, 36.509865, 47.154457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561326, 0.208867, 0.800805,
		0.812141, 0.047101, -0.581557,
		-0.159187, 0.976809, -0.143190,
		40.763947, 36.802906, 47.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527359, 36.261780, 47.309181>,  <40.875378, 36.119141, 47.211735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527359, 36.261780, 47.309181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310955, 36.595036, 47.355125>,  <41.181114, 36.794991, 47.382690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.310955, 36.595036, 47.355125>,  <41.527359, 36.261780, 47.309181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310955, 36.595036, 47.355125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642020, 0.320908, 0.696296,
		0.543251, 0.450443, -0.708505,
		-0.541007, 0.833138, 0.114860,
		41.148651, 36.844978, 47.389584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010811, 36.816555, 47.364597>,  <41.527359, 36.261780, 47.309181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010811, 36.816555, 47.364597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.669357, 36.981346, 47.492088>,  <41.464485, 37.080223, 47.568584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.669357, 36.981346, 47.492088>,  <42.010811, 36.816555, 47.364597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669357, 36.981346, 47.492088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479394, 0.382087, 0.790057,
		0.203707, 0.827213, -0.523662,
		-0.853630, 0.411980, 0.318728,
		41.413269, 37.104939, 47.587708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076759, 37.593281, 47.420536>,  <42.010811, 36.816555, 47.364597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076759, 37.593281, 47.420536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799080, 37.443436, 47.666382>,  <41.632473, 37.353527, 47.813889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.799080, 37.443436, 47.666382>,  <42.076759, 37.593281, 47.420536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799080, 37.443436, 47.666382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533498, 0.305418, 0.788733,
		-0.483185, 0.875434, -0.012165,
		-0.694199, -0.374614, 0.614615,
		41.590820, 37.331051, 47.850765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981037, 38.094975, 47.918488>,  <42.076759, 37.593281, 47.420536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981037, 38.094975, 47.918488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.846344, 37.769093, 48.107319>,  <41.765530, 37.573563, 48.220619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.846344, 37.769093, 48.107319>,  <41.981037, 38.094975, 47.918488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846344, 37.769093, 48.107319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464704, 0.292256, 0.835845,
		-0.818938, 0.500834, 0.280186,
		-0.336734, -0.814709, 0.472079,
		41.745323, 37.524681, 48.248943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651581, 38.511536, 47.815186>,  <41.981037, 38.094975, 47.918488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651581, 38.511536, 47.815186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722176, 38.608078, 47.433483>,  <42.764534, 38.666004, 47.204460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722176, 38.608078, 47.433483>,  <42.651581, 38.511536, 47.815186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722176, 38.608078, 47.433483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369467, 0.882340, 0.291494,
		0.912331, -0.404010, 0.066549,
		0.176485, 0.241352, -0.954255,
		42.775120, 38.680485, 47.147205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245575, 38.815353, 47.810905>,  <42.651581, 38.511536, 47.815186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245575, 38.815353, 47.810905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.109032, 38.938072, 47.455524>,  <43.027103, 39.011703, 47.242294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.109032, 38.938072, 47.455524>,  <43.245575, 38.815353, 47.810905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109032, 38.938072, 47.455524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416163, 0.896866, 0.149800,
		0.842782, -0.318606, -0.433830,
		-0.341360, 0.306792, -0.888455,
		43.006622, 39.030109, 47.188988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168678, 39.466076, 47.494614>,  <43.245575, 38.815353, 47.810905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168678, 39.466076, 47.494614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.231735, 39.850430, 47.585693>,  <43.269569, 40.081043, 47.640343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.231735, 39.850430, 47.585693>,  <43.168678, 39.466076, 47.494614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231735, 39.850430, 47.585693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802463, 0.259034, -0.537545,
		-0.575502, -0.097984, 0.811909,
		0.157642, 0.960885, 0.227703,
		43.279026, 40.138695, 47.654003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560200, 39.740669, 47.616985>,  <43.168678, 39.466076, 47.494614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560200, 39.740669, 47.616985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.794697, 40.051018, 47.523735>,  <42.935394, 40.237225, 47.467785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.794697, 40.051018, 47.523735>,  <42.560200, 39.740669, 47.616985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794697, 40.051018, 47.523735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598412, 0.220737, -0.770180,
		-0.546099, 0.591019, 0.593694,
		0.586241, 0.775869, -0.233129,
		42.970570, 40.283779, 47.453796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110588, 40.255035, 47.513771>,  <42.560200, 39.740669, 47.616985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110588, 40.255035, 47.513771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.443153, 40.348255, 47.312008>,  <42.642693, 40.404186, 47.190948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.443153, 40.348255, 47.312008>,  <42.110588, 40.255035, 47.513771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443153, 40.348255, 47.312008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555385, 0.320628, -0.767298,
		-0.017092, 0.918087, 0.396009,
		0.831418, 0.233052, -0.504412,
		42.692577, 40.418171, 47.160683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080780, 40.869484, 47.229580>,  <42.110588, 40.255035, 47.513771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080780, 40.869484, 47.229580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370804, 40.739307, 46.986805>,  <42.544819, 40.661201, 46.841141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370804, 40.739307, 46.986805>,  <42.080780, 40.869484, 47.229580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370804, 40.739307, 46.986805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428538, 0.476690, -0.767543,
		0.539115, 0.816610, 0.206163,
		0.725059, -0.325445, -0.606939,
		42.588322, 40.641674, 46.804722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215206, 41.445095, 46.726326>,  <42.080780, 40.869484, 47.229580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215206, 41.445095, 46.726326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.382378, 41.113297, 46.578129>,  <42.482681, 40.914215, 46.489212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.382378, 41.113297, 46.578129>,  <42.215206, 41.445095, 46.726326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382378, 41.113297, 46.578129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285310, 0.267341, -0.920395,
		0.862514, 0.490368, -0.124934,
		0.417932, -0.829499, -0.370492,
		42.507759, 40.864449, 46.466980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340443, 41.610970, 46.003120>,  <42.215206, 41.445095, 46.726326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340443, 41.610970, 46.003120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370949, 41.212543, 46.021187>,  <42.389252, 40.973488, 46.032028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.370949, 41.212543, 46.021187>,  <42.340443, 41.610970, 46.003120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370949, 41.212543, 46.021187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330811, -0.068008, -0.941243,
		0.940610, 0.056842, -0.334696,
		0.076264, -0.996064, 0.045165,
		42.393829, 40.913723, 46.034737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752556, 41.417953, 45.402222>,  <42.340443, 41.610970, 46.003120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752556, 41.417953, 45.402222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.528923, 41.113537, 45.533825>,  <42.394745, 40.930885, 45.612785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.528923, 41.113537, 45.533825>,  <42.752556, 41.417953, 45.402222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528923, 41.113537, 45.533825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508861, 0.001671, -0.860847,
		0.654592, -0.648699, -0.388199,
		-0.559079, -0.761043, 0.329004,
		42.361198, 40.885223, 45.632526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839977, 40.758194, 44.933708>,  <42.752556, 41.417953, 45.402222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839977, 40.758194, 44.933708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.485523, 40.665813, 45.094418>,  <42.272850, 40.610386, 45.190842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.485523, 40.665813, 45.094418>,  <42.839977, 40.758194, 44.933708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485523, 40.665813, 45.094418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371225, -0.165200, -0.913729,
		0.277400, -0.958838, 0.060655,
		-0.886139, -0.230952, 0.401772,
		42.219681, 40.596527, 45.214951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624386, 40.153526, 44.650600>,  <42.839977, 40.758194, 44.933708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624386, 40.153526, 44.650600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285835, 40.315571, 44.788898>,  <42.082706, 40.412796, 44.871876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.285835, 40.315571, 44.788898>,  <42.624386, 40.153526, 44.650600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285835, 40.315571, 44.788898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502437, -0.392007, -0.770640,
		-0.176660, -0.825964, 0.535327,
		-0.846373, 0.405109, 0.345744,
		42.031921, 40.437103, 44.892620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200546, 39.729019, 44.393253>,  <42.624386, 40.153526, 44.650600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200546, 39.729019, 44.393253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954288, 40.032856, 44.477158>,  <41.806534, 40.215157, 44.527500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.954288, 40.032856, 44.477158>,  <42.200546, 39.729019, 44.393253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954288, 40.032856, 44.477158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606357, -0.286615, -0.741743,
		-0.503303, -0.583840, 0.637038,
		-0.615644, 0.759594, 0.209761,
		41.769596, 40.260735, 44.540085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569221, 39.464104, 44.485489>,  <42.200546, 39.729019, 44.393253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569221, 39.464104, 44.485489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.482304, 39.838192, 44.373672>,  <41.430153, 40.062645, 44.306583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.482304, 39.838192, 44.373672>,  <41.569221, 39.464104, 44.485489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482304, 39.838192, 44.373672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616093, -0.353538, -0.703875,
		-0.757108, 0.019278, 0.653005,
		-0.217293, 0.935222, -0.279543,
		41.417114, 40.118759, 44.289810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849930, 39.444477, 44.287689>,  <41.569221, 39.464104, 44.485489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849930, 39.444477, 44.287689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.931808, 39.802494, 44.129200>,  <40.980934, 40.017303, 44.034107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.931808, 39.802494, 44.129200>,  <40.849930, 39.444477, 44.287689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931808, 39.802494, 44.129200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662292, -0.171419, -0.729373,
		-0.720743, 0.411711, 0.557694,
		0.204692, 0.895047, -0.396222,
		40.993217, 40.071007, 44.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263340, 39.608856, 44.017727>,  <40.849930, 39.444477, 44.287689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263340, 39.608856, 44.017727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511276, 39.874123, 43.849915>,  <40.660038, 40.033283, 43.749226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.511276, 39.874123, 43.849915>,  <40.263340, 39.608856, 44.017727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511276, 39.874123, 43.849915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425462, -0.165217, -0.889767,
		-0.659378, 0.730008, 0.179745,
		0.619840, 0.663168, -0.419531,
		40.697227, 40.073074, 43.724056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906487, 40.018051, 43.524136>,  <40.263340, 39.608856, 44.017727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906487, 40.018051, 43.524136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286896, 40.022484, 43.400566>,  <40.515141, 40.025143, 43.326424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.286896, 40.022484, 43.400566>,  <39.906487, 40.018051, 43.524136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286896, 40.022484, 43.400566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297749, -0.235797, -0.925065,
		-0.083092, 0.971739, -0.220949,
		0.951021, 0.011079, -0.308927,
		40.572201, 40.025806, 43.307888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413723, 40.602730, 43.833965>,  <39.906487, 40.018051, 43.524136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413723, 40.602730, 43.833965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031826, 40.506790, 43.904327>,  <38.802689, 40.449226, 43.946545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031826, 40.506790, 43.904327>,  <39.413723, 40.602730, 43.833965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031826, 40.506790, 43.904327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209724, -0.123481, 0.969932,
		-0.210916, 0.962925, 0.168195,
		-0.954741, -0.239848, 0.175905,
		38.745403, 40.434837, 43.957100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178024, 41.141376, 44.399105>,  <39.413723, 40.602730, 43.833965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178024, 41.141376, 44.399105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.959904, 40.806091, 44.396271>,  <38.829033, 40.604919, 44.394569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.959904, 40.806091, 44.396271>,  <39.178024, 41.141376, 44.399105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959904, 40.806091, 44.396271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217565, -0.149695, 0.964498,
		-0.809513, 0.524401, 0.263994,
		-0.545302, -0.838210, -0.007089,
		38.796314, 40.554630, 44.394142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704029, 41.175709, 45.072811>,  <39.178024, 41.141376, 44.399105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704029, 41.175709, 45.072811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793552, 40.808167, 44.942814>,  <38.847267, 40.587643, 44.864815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.793552, 40.808167, 44.942814>,  <38.704029, 41.175709, 45.072811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793552, 40.808167, 44.942814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352285, -0.234638, 0.906003,
		-0.908738, -0.317261, 0.271184,
		0.223809, -0.918853, -0.324991,
		38.860695, 40.532509, 44.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328590, 40.775341, 45.556068>,  <38.704029, 41.175709, 45.072811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328590, 40.775341, 45.556068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600666, 40.539413, 45.381966>,  <38.763912, 40.397858, 45.277504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600666, 40.539413, 45.381966>,  <38.328590, 40.775341, 45.556068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600666, 40.539413, 45.381966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273783, -0.346391, 0.897249,
		-0.679988, -0.729466, -0.074128,
		0.680191, -0.589824, -0.435257,
		38.804722, 40.362465, 45.251389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277779, 40.047173, 45.828423>,  <38.328590, 40.775341, 45.556068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277779, 40.047173, 45.828423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638195, 40.091045, 45.660564>,  <38.854443, 40.117371, 45.559849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.638195, 40.091045, 45.660564>,  <38.277779, 40.047173, 45.828423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638195, 40.091045, 45.660564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424770, -0.418862, 0.802575,
		-0.087744, -0.901402, -0.424000,
		0.901039, 0.109681, -0.419641,
		38.908508, 40.123951, 45.534672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577187, 39.445465, 46.074200>,  <38.277779, 40.047173, 45.828423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577187, 39.445465, 46.074200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886917, 39.678658, 45.975769>,  <39.072754, 39.818573, 45.916710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886917, 39.678658, 45.975769>,  <38.577187, 39.445465, 46.074200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886917, 39.678658, 45.975769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444758, -0.224775, 0.866987,
		0.450123, -0.780776, -0.433333,
		0.774325, 0.582979, -0.246081,
		39.119213, 39.853550, 45.901943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224598, 39.144821, 46.481346>,  <38.577187, 39.445465, 46.074200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224598, 39.144821, 46.481346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.337894, 39.510513, 46.365448>,  <39.405872, 39.729927, 46.295910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.337894, 39.510513, 46.365448>,  <39.224598, 39.144821, 46.481346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337894, 39.510513, 46.365448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512830, 0.110921, 0.851294,
		0.810419, -0.389715, -0.437428,
		0.283242, 0.914231, -0.289750,
		39.422867, 39.784782, 46.278522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408848, 38.459332, 46.765453>,  <39.224598, 39.144821, 46.481346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408848, 38.459332, 46.765453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047333, 38.527683, 46.922409>,  <38.830425, 38.568695, 47.016582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047333, 38.527683, 46.922409>,  <39.408848, 38.459332, 46.765453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047333, 38.527683, 46.922409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416662, -0.141841, -0.897928,
		-0.097780, -0.975029, 0.199392,
		-0.903787, 0.170878, 0.392388,
		38.776196, 38.578945, 47.040127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049736, 37.846008, 46.576283>,  <39.408848, 38.459332, 46.765453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049736, 37.846008, 46.576283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752117, 38.079071, 46.707062>,  <38.573544, 38.218910, 46.785530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752117, 38.079071, 46.707062>,  <39.049736, 37.846008, 46.576283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752117, 38.079071, 46.707062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491732, -0.146276, -0.858372,
		-0.452314, -0.799444, 0.395349,
		-0.744051, 0.582659, 0.326950,
		38.528900, 38.253868, 46.805145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520279, 37.536503, 46.331619>,  <39.049736, 37.846008, 46.576283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520279, 37.536503, 46.331619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349987, 37.891350, 46.402931>,  <38.247814, 38.104259, 46.445717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349987, 37.891350, 46.402931>,  <38.520279, 37.536503, 46.331619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349987, 37.891350, 46.402931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602974, -0.131233, -0.786893,
		-0.674669, -0.442496, 0.590778,
		-0.425727, 0.887116, 0.178275,
		38.222267, 38.157486, 46.456413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838337, 37.370491, 46.229362>,  <38.520279, 37.536503, 46.331619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838337, 37.370491, 46.229362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802670, 37.768848, 46.223186>,  <37.781269, 38.007862, 46.219482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802670, 37.768848, 46.223186>,  <37.838337, 37.370491, 46.229362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802670, 37.768848, 46.223186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735193, -0.076269, -0.673554,
		-0.671968, -0.048712, 0.738977,
		-0.089171, 0.995897, -0.015437,
		37.775917, 38.067619, 46.218555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127651, 37.543392, 46.254757>,  <37.838337, 37.370491, 46.229362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127651, 37.543392, 46.254757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320499, 37.848610, 46.082561>,  <37.436211, 38.031738, 45.979244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320499, 37.848610, 46.082561>,  <37.127651, 37.543392, 46.254757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320499, 37.848610, 46.082561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801699, 0.186084, -0.568024,
		-0.353319, 0.618983, 0.701446,
		0.482125, 0.763042, -0.430491,
		37.465137, 38.077522, 45.953415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580898, 38.041664, 46.078903>,  <37.127651, 37.543392, 46.254757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580898, 38.041664, 46.078903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895390, 38.089687, 45.836441>,  <37.084084, 38.118500, 45.690964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.895390, 38.089687, 45.836441>,  <36.580898, 38.041664, 46.078903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895390, 38.089687, 45.836441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615058, 0.057566, -0.786377,
		-0.059517, 0.991097, 0.119103,
		0.786232, 0.120058, -0.606156,
		37.131260, 38.125706, 45.654594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415409, 38.433868, 45.590359>,  <36.580898, 38.041664, 46.078903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415409, 38.433868, 45.590359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741676, 38.290333, 45.408844>,  <36.937435, 38.204212, 45.299934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.741676, 38.290333, 45.408844>,  <36.415409, 38.433868, 45.590359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741676, 38.290333, 45.408844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504001, -0.055654, -0.861908,
		0.284034, 0.931737, -0.226252,
		0.815664, -0.358843, -0.453789,
		36.986374, 38.182678, 45.272709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.110451, 34.549309, 49.844414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.369270, 34.807148, 49.681530>,  <40.524563, 34.961853, 49.583801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.369270, 34.807148, 49.681530>,  <40.110451, 34.549309, 49.844414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369270, 34.807148, 49.681530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111652, -0.448211, -0.886928,
		-0.754228, 0.619352, -0.218044,
		0.647050, 0.644601, -0.407205,
		40.563385, 35.000526, 49.559368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808594, 34.784492, 49.339104>,  <40.110451, 34.549309, 49.844414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808594, 34.784492, 49.339104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.179497, 34.895435, 49.238487>,  <40.402039, 34.962002, 49.178116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.179497, 34.895435, 49.238487>,  <39.808594, 34.784492, 49.339104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179497, 34.895435, 49.238487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221283, -0.136005, -0.965679,
		-0.302047, 0.951092, -0.064737,
		0.927255, 0.277356, -0.251540,
		40.457672, 34.978642, 49.163025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678238, 35.278717, 48.781837>,  <39.808594, 34.784492, 49.339104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678238, 35.278717, 48.781837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.047409, 35.128193, 48.749367>,  <40.268913, 35.037880, 48.729885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.047409, 35.128193, 48.749367>,  <39.678238, 35.278717, 48.781837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047409, 35.128193, 48.749367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117212, -0.073823, -0.990359,
		0.366688, 0.923548, -0.112241,
		0.922931, -0.376309, -0.081180,
		40.324287, 35.015301, 48.725014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074471, 35.646030, 48.218987>,  <39.678238, 35.278717, 48.781837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074471, 35.646030, 48.218987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.281651, 35.309910, 48.283005>,  <40.405960, 35.108238, 48.321415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.281651, 35.309910, 48.283005>,  <40.074471, 35.646030, 48.218987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281651, 35.309910, 48.283005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095984, -0.243011, -0.965263,
		0.850010, 0.484594, -0.206524,
		0.517949, -0.840306, 0.160048,
		40.437035, 35.057819, 48.331020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585743, 35.594757, 47.695217>,  <40.074471, 35.646030, 48.218987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585743, 35.594757, 47.695217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532185, 35.220051, 47.824547>,  <40.500050, 34.995228, 47.902145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532185, 35.220051, 47.824547>,  <40.585743, 35.594757, 47.695217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532185, 35.220051, 47.824547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038107, -0.321149, -0.946261,
		0.990262, -0.139021, 0.007303,
		-0.133896, -0.936769, 0.323320,
		40.492016, 34.939018, 47.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992107, 35.114174, 47.276485>,  <40.585743, 35.594757, 47.695217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992107, 35.114174, 47.276485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.708687, 34.887348, 47.444481>,  <40.538635, 34.751255, 47.545280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.708687, 34.887348, 47.444481>,  <40.992107, 35.114174, 47.276485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708687, 34.887348, 47.444481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273489, -0.327987, -0.904228,
		0.650505, -0.755557, 0.077312,
		-0.708553, -0.567061, 0.419993,
		40.496120, 34.717232, 47.570480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117649, 34.458729, 47.028370>,  <40.992107, 35.114174, 47.276485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117649, 34.458729, 47.028370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732155, 34.461815, 47.135075>,  <40.500858, 34.463665, 47.199097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732155, 34.461815, 47.135075>,  <41.117649, 34.458729, 47.028370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732155, 34.461815, 47.135075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247752, -0.397370, -0.883581,
		0.099187, -0.917626, 0.384870,
		-0.963733, 0.007713, 0.266758,
		40.443035, 34.464130, 47.215103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876785, 33.913574, 46.681282>,  <41.117649, 34.458729, 47.028370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876785, 33.913574, 46.681282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542702, 34.092857, 46.808743>,  <40.342251, 34.200428, 46.885220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542702, 34.092857, 46.808743>,  <40.876785, 33.913574, 46.681282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542702, 34.092857, 46.808743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461133, -0.255067, -0.849881,
		-0.299644, -0.856768, 0.419716,
		-0.835207, 0.448207, 0.318655,
		40.292141, 34.227322, 46.904339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417835, 33.473804, 46.575008>,  <40.876785, 33.913574, 46.681282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417835, 33.473804, 46.575008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.198769, 33.807167, 46.604641>,  <40.067329, 34.007187, 46.622421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.198769, 33.807167, 46.604641>,  <40.417835, 33.473804, 46.575008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198769, 33.807167, 46.604641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427342, -0.202502, -0.881120,
		-0.719331, -0.514221, 0.467055,
		-0.547669, 0.833408, 0.074082,
		40.034466, 34.057190, 46.626865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725491, 33.311924, 46.368565>,  <40.417835, 33.473804, 46.575008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725491, 33.311924, 46.368565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.742851, 33.708473, 46.319092>,  <39.753269, 33.946404, 46.289410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.742851, 33.708473, 46.319092>,  <39.725491, 33.311924, 46.368565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742851, 33.708473, 46.319092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462068, -0.089838, -0.882282,
		-0.885782, 0.095444, 0.454182,
		0.043406, 0.991373, -0.123678,
		39.755875, 34.005886, 46.281990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072582, 33.496933, 46.187725>,  <39.725491, 33.311924, 46.368565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072582, 33.496933, 46.187725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.303398, 33.794502, 46.052906>,  <39.441887, 33.973045, 45.972015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.303398, 33.794502, 46.052906>,  <39.072582, 33.496933, 46.187725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303398, 33.794502, 46.052906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539757, 0.037657, -0.840978,
		-0.612933, 0.667201, 0.423268,
		0.577041, 0.743925, -0.337045,
		39.476509, 34.017681, 45.951794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567860, 34.088985, 46.133469>,  <39.072582, 33.496933, 46.187725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567860, 34.088985, 46.133469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.892269, 34.123543, 45.902027>,  <39.086914, 34.144276, 45.763161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.892269, 34.123543, 45.902027>,  <38.567860, 34.088985, 46.133469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892269, 34.123543, 45.902027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581382, 0.229126, -0.780702,
		0.065128, 0.969555, 0.236052,
		0.811020, 0.086390, -0.578605,
		39.135574, 34.149460, 45.728447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388569, 34.766003, 46.425056>,  <38.567860, 34.088985, 46.133469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388569, 34.766003, 46.425056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049744, 34.962273, 46.506763>,  <37.846447, 35.080032, 46.555790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049744, 34.962273, 46.506763>,  <38.388569, 34.766003, 46.425056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049744, 34.962273, 46.506763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462586, 0.491361, 0.737956,
		0.261724, 0.719587, -0.643191,
		-0.847063, 0.490672, 0.204269,
		37.795624, 35.109474, 46.568043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599068, 35.539886, 46.533157>,  <38.388569, 34.766003, 46.425056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599068, 35.539886, 46.533157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.242668, 35.477982, 46.703884>,  <38.028828, 35.440838, 46.806320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.242668, 35.477982, 46.703884>,  <38.599068, 35.539886, 46.533157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242668, 35.477982, 46.703884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227364, 0.661618, 0.714540,
		-0.392971, 0.733696, -0.554314,
		-0.890999, -0.154763, 0.426813,
		37.975368, 35.431553, 46.831928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353577, 36.268333, 46.632923>,  <38.599068, 35.539886, 46.533157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353577, 36.268333, 46.632923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.181946, 36.000046, 46.874928>,  <38.078968, 35.839073, 47.020130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.181946, 36.000046, 46.874928>,  <38.353577, 36.268333, 46.632923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181946, 36.000046, 46.874928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317995, 0.514753, 0.796184,
		-0.845442, 0.534013, -0.007584,
		-0.429077, -0.670715, 0.605007,
		38.053223, 35.798832, 47.056431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951115, 36.627251, 47.114204>,  <38.353577, 36.268333, 46.632923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951115, 36.627251, 47.114204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024952, 36.280491, 47.299423>,  <38.069256, 36.072433, 47.410553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.024952, 36.280491, 47.299423>,  <37.951115, 36.627251, 47.114204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024952, 36.280491, 47.299423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207710, 0.494910, 0.843754,
		-0.960615, -0.059574, 0.271422,
		0.184596, -0.866900, 0.463044,
		38.080330, 36.020420, 47.438335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934544, 36.852623, 47.730820>,  <37.951115, 36.627251, 47.114204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934544, 36.852623, 47.730820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078854, 36.485302, 47.796005>,  <38.165440, 36.264908, 47.835117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.078854, 36.485302, 47.796005>,  <37.934544, 36.852623, 47.730820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078854, 36.485302, 47.796005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114141, 0.216896, 0.969499,
		-0.925641, -0.331173, 0.183068,
		0.360778, -0.918303, 0.162968,
		38.187088, 36.209812, 47.844894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583286, 36.653370, 48.333775>,  <37.934544, 36.852623, 47.730820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583286, 36.653370, 48.333775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914192, 36.429916, 48.309895>,  <38.112736, 36.295845, 48.295567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.914192, 36.429916, 48.309895>,  <37.583286, 36.653370, 48.333775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914192, 36.429916, 48.309895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236797, 0.250350, 0.938750,
		-0.509469, -0.790732, 0.339388,
		0.827266, -0.558630, -0.059698,
		38.162373, 36.262329, 48.291985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634201, 36.195702, 48.952774>,  <37.583286, 36.653370, 48.333775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634201, 36.195702, 48.952774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.012989, 36.162273, 48.828674>,  <38.240261, 36.142216, 48.754215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.012989, 36.162273, 48.828674>,  <37.634201, 36.195702, 48.952774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012989, 36.162273, 48.828674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315467, 0.058545, 0.947129,
		-0.060993, -0.994780, 0.081805,
		0.946974, -0.083576, -0.310249,
		38.297081, 36.137199, 48.735600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926163, 35.654896, 49.370327>,  <37.634201, 36.195702, 48.952774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926163, 35.654896, 49.370327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225578, 35.888874, 49.245407>,  <38.405228, 36.029263, 49.170456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225578, 35.888874, 49.245407>,  <37.926163, 35.654896, 49.370327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225578, 35.888874, 49.245407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390153, -0.007704, 0.920718,
		0.536167, -0.811033, -0.233987,
		0.748536, 0.584949, -0.312297,
		38.450138, 36.064358, 49.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463223, 35.478619, 49.808380>,  <37.926163, 35.654896, 49.370327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463223, 35.478619, 49.808380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.529572, 35.853580, 49.685902>,  <38.569382, 36.078556, 49.612415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.529572, 35.853580, 49.685902>,  <38.463223, 35.478619, 49.808380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529572, 35.853580, 49.685902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280834, 0.252742, 0.925880,
		0.945315, -0.239566, -0.221333,
		0.165869, 0.937406, -0.306199,
		38.579330, 36.134804, 49.594044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173378, 35.562325, 50.053993>,  <38.463223, 35.478619, 49.808380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173378, 35.562325, 50.053993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994259, 35.915489, 49.997513>,  <38.886787, 36.127388, 49.963623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994259, 35.915489, 49.997513>,  <39.173378, 35.562325, 50.053993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994259, 35.915489, 49.997513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298129, 0.296321, 0.907366,
		0.842967, 0.364222, -0.395914,
		-0.447801, 0.882913, -0.141204,
		38.859921, 36.180363, 49.955151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575306, 35.948353, 50.426220>,  <39.173378, 35.562325, 50.053993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575306, 35.948353, 50.426220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.271187, 36.201336, 50.366970>,  <39.088715, 36.353127, 50.331421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.271187, 36.201336, 50.366970>,  <39.575306, 35.948353, 50.426220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271187, 36.201336, 50.366970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086713, 0.324814, 0.941794,
		0.643763, 0.703198, -0.301798,
		-0.760296, 0.632462, -0.148126,
		39.043098, 36.391075, 50.322533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793312, 36.563835, 50.649521>,  <39.575306, 35.948353, 50.426220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793312, 36.563835, 50.649521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399067, 36.631187, 50.643604>,  <39.162521, 36.671600, 50.640053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.399067, 36.631187, 50.643604>,  <39.793312, 36.563835, 50.649521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399067, 36.631187, 50.643604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083088, 0.558827, 0.825111,
		0.147202, 0.812009, -0.564777,
		-0.985610, 0.168384, -0.014792,
		39.103382, 36.681702, 50.639168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688007, 37.277523, 50.555656>,  <39.793312, 36.563835, 50.649521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688007, 37.277523, 50.555656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.334560, 37.161148, 50.702393>,  <39.122494, 37.091324, 50.790436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.334560, 37.161148, 50.702393>,  <39.688007, 37.277523, 50.555656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334560, 37.161148, 50.702393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111079, 0.630868, 0.767898,
		-0.454840, 0.719277, -0.525129,
		-0.883619, -0.290940, 0.366841,
		39.069473, 37.073868, 50.812447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296646, 37.843521, 50.669514>,  <39.688007, 37.277523, 50.555656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296646, 37.843521, 50.669514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159081, 37.558823, 50.914509>,  <39.076542, 37.388004, 51.061504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.159081, 37.558823, 50.914509>,  <39.296646, 37.843521, 50.669514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159081, 37.558823, 50.914509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113537, 0.615967, 0.779547,
		-0.932113, 0.337633, -0.131027,
		-0.343910, -0.711750, 0.612485,
		39.055908, 37.345299, 51.098255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501148, 38.132275, 50.060631>,  <39.296646, 37.843521, 50.669514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501148, 38.132275, 50.060631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.568958, 38.505821, 49.934681>,  <39.609646, 38.729950, 49.859112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.568958, 38.505821, 49.934681>,  <39.501148, 38.132275, 50.060631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568958, 38.505821, 49.934681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329169, -0.247497, -0.911259,
		-0.928929, 0.258130, 0.265443,
		0.169527, 0.933870, -0.314875,
		39.619816, 38.785984, 49.840218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873539, 38.344185, 49.743942>,  <39.501148, 38.132275, 50.060631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873539, 38.344185, 49.743942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.134193, 38.613083, 49.603397>,  <39.290585, 38.774422, 49.519070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.134193, 38.613083, 49.603397>,  <38.873539, 38.344185, 49.743942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134193, 38.613083, 49.603397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432198, -0.051606, -0.900301,
		-0.623358, 0.738525, 0.256916,
		0.651636, 0.672248, -0.351359,
		39.329685, 38.814758, 49.497990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484573, 38.789204, 49.356945>,  <38.873539, 38.344185, 49.743942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484573, 38.789204, 49.356945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.854309, 38.859451, 49.221447>,  <39.076153, 38.901600, 49.140148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.854309, 38.859451, 49.221447>,  <38.484573, 38.789204, 49.356945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854309, 38.859451, 49.221447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324508, -0.105163, -0.940019,
		-0.200707, 0.978825, -0.040218,
		0.924344, 0.175618, -0.338743,
		39.131611, 38.912136, 49.119823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391327, 39.233585, 48.800312>,  <38.484573, 38.789204, 49.356945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391327, 39.233585, 48.800312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753876, 39.078056, 48.734207>,  <38.971405, 38.984737, 48.694546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.753876, 39.078056, 48.734207>,  <38.391327, 39.233585, 48.800312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753876, 39.078056, 48.734207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255052, -0.191729, -0.947728,
		0.336817, 0.901140, -0.272948,
		0.906368, -0.388827, -0.165260,
		39.025787, 38.961407, 48.684628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757687, 39.646626, 48.246132>,  <38.391327, 39.233585, 48.800312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757687, 39.646626, 48.246132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.844051, 39.257160, 48.275440>,  <38.895870, 39.023483, 48.293026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.844051, 39.257160, 48.275440>,  <38.757687, 39.646626, 48.246132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844051, 39.257160, 48.275440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391960, -0.155161, -0.906804,
		0.894287, 0.167071, -0.415136,
		0.215914, -0.973659, 0.073273,
		38.908825, 38.965061, 48.297421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996384, 39.543919, 47.568859>,  <38.757687, 39.646626, 48.246132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996384, 39.543919, 47.568859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.963585, 39.173912, 47.717251>,  <38.943905, 38.951908, 47.806286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.963585, 39.173912, 47.717251>,  <38.996384, 39.543919, 47.568859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963585, 39.173912, 47.717251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608764, -0.248234, -0.753516,
		0.789103, -0.287622, -0.542762,
		-0.081995, -0.925015, 0.370976,
		38.938988, 38.896408, 47.828545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483719, 39.054394, 47.240463>,  <38.996384, 39.543919, 47.568859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483719, 39.054394, 47.240463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151272, 38.869270, 47.363777>,  <38.951801, 38.758194, 47.437767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151272, 38.869270, 47.363777>,  <39.483719, 39.054394, 47.240463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151272, 38.869270, 47.363777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302531, -0.088850, -0.948989,
		0.466596, -0.881992, -0.066171,
		-0.831121, -0.462814, 0.308287,
		38.901936, 38.730427, 47.456264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966652, 39.085785, 46.591774>,  <39.483719, 39.054394, 47.240463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966652, 39.085785, 46.591774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892532, 39.478661, 46.579285>,  <39.848061, 39.714386, 46.571793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.892532, 39.478661, 46.579285>,  <39.966652, 39.085785, 46.591774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892532, 39.478661, 46.579285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680665, 0.151199, 0.716822,
		0.708773, 0.111577, -0.696557,
		-0.185299, 0.982186, -0.031219,
		39.836941, 39.773315, 46.569920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627819, 39.307980, 46.544727>,  <39.966652, 39.085785, 46.591774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627819, 39.307980, 46.544727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.413364, 39.612965, 46.689621>,  <40.284691, 39.795956, 46.776558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.413364, 39.612965, 46.689621>,  <40.627819, 39.307980, 46.544727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413364, 39.612965, 46.689621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708421, 0.173062, 0.684243,
		0.459022, 0.623456, -0.632930,
		-0.536132, 0.762464, 0.362230,
		40.252525, 39.841705, 46.798290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147270, 39.844139, 46.658195>,  <40.627819, 39.307980, 46.544727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147270, 39.844139, 46.658195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.830364, 39.918808, 46.890564>,  <40.640221, 39.963612, 47.029987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.830364, 39.918808, 46.890564>,  <41.147270, 39.844139, 46.658195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830364, 39.918808, 46.890564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609232, 0.295089, 0.736042,
		-0.034025, 0.937057, -0.347516,
		-0.792261, 0.186674, 0.580926,
		40.592686, 39.974812, 47.064842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387566, 40.474834, 46.977734>,  <41.147270, 39.844139, 46.658195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387566, 40.474834, 46.977734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.083256, 40.360073, 47.210594>,  <40.900669, 40.291218, 47.350311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.083256, 40.360073, 47.210594>,  <41.387566, 40.474834, 46.977734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083256, 40.360073, 47.210594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550968, 0.188546, 0.812948,
		-0.343000, 0.939221, 0.014633,
		-0.760779, -0.286904, 0.582152,
		40.855022, 40.274002, 47.385239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413795, 40.867626, 47.489285>,  <41.387566, 40.474834, 46.977734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413795, 40.867626, 47.489285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.176563, 40.599499, 47.667694>,  <41.034225, 40.438622, 47.774738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.176563, 40.599499, 47.667694>,  <41.413795, 40.867626, 47.489285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176563, 40.599499, 47.667694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523517, 0.099826, 0.846147,
		-0.611709, 0.735332, 0.291716,
		-0.593078, -0.670314, 0.446023,
		40.998638, 40.398403, 47.801502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094501, 41.088451, 48.076630>,  <41.413795, 40.867626, 47.489285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094501, 41.088451, 48.076630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.113232, 40.691277, 48.120232>,  <41.124470, 40.452972, 48.146393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.113232, 40.691277, 48.120232>,  <41.094501, 41.088451, 48.076630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113232, 40.691277, 48.120232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373112, 0.118613, 0.920173,
		-0.926604, -0.002419, 0.376031,
		0.046828, -0.992938, 0.109004,
		41.127281, 40.393394, 48.152931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928429, 41.031601, 48.742027>,  <41.094501, 41.088451, 48.076630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928429, 41.031601, 48.742027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.092037, 40.673798, 48.669861>,  <41.190201, 40.459114, 48.626560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.092037, 40.673798, 48.669861>,  <40.928429, 41.031601, 48.742027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092037, 40.673798, 48.669861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480846, 0.043238, 0.875738,
		-0.775557, -0.444949, 0.447808,
		0.409021, -0.894512, -0.180419,
		41.214745, 40.405445, 48.615734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967232, 40.762245, 49.380337>,  <40.928429, 41.031601, 48.742027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967232, 40.762245, 49.380337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.246975, 40.548485, 49.190468>,  <41.414822, 40.420227, 49.076546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.246975, 40.548485, 49.190468>,  <40.967232, 40.762245, 49.380337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246975, 40.548485, 49.190468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638351, 0.168206, 0.751143,
		-0.321572, -0.828322, 0.458774,
		0.699357, -0.534405, -0.474670,
		41.456783, 40.388165, 49.048065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267601, 40.396126, 49.884724>,  <40.967232, 40.762245, 49.380337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267601, 40.396126, 49.884724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.543690, 40.345024, 49.599831>,  <41.709343, 40.314362, 49.428894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.543690, 40.345024, 49.599831>,  <41.267601, 40.396126, 49.884724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543690, 40.345024, 49.599831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714246, -0.037438, 0.698893,
		-0.115953, -0.991099, 0.065410,
		0.690223, -0.127757, -0.712229,
		41.750755, 40.306698, 49.386162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.306423, 36.575806, 34.930408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604393, 36.806728, 34.796658>,  <36.783176, 36.945282, 34.716408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604393, 36.806728, 34.796658>,  <36.306423, 36.575806, 34.930408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604393, 36.806728, 34.796658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176289, 0.313054, 0.933230,
		0.643437, -0.754132, 0.131429,
		0.744923, 0.577306, -0.334376,
		36.827869, 36.979919, 34.696346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741245, 36.457314, 35.378269>,  <36.306423, 36.575806, 34.930408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741245, 36.457314, 35.378269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842648, 36.813114, 35.226208>,  <36.903488, 37.026596, 35.134972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842648, 36.813114, 35.226208>,  <36.741245, 36.457314, 35.378269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842648, 36.813114, 35.226208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000169, 0.392947, 0.919561,
		0.967334, -0.233177, 0.099463,
		0.253504, 0.889506, -0.380150,
		36.918697, 37.079967, 35.112164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941860, 36.804764, 35.877449>,  <36.741245, 36.457314, 35.378269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941860, 36.804764, 35.877449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963982, 37.130966, 35.647011>,  <36.977257, 37.326687, 35.508747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963982, 37.130966, 35.647011>,  <36.941860, 36.804764, 35.877449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963982, 37.130966, 35.647011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167299, 0.561252, 0.810560,
		0.984354, -0.141210, -0.105392,
		0.055307, 0.815510, -0.576094,
		36.980576, 37.375618, 35.474182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523594, 37.149464, 35.951324>,  <36.941860, 36.804764, 35.877449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523594, 37.149464, 35.951324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283253, 37.435982, 35.809395>,  <37.139050, 37.607891, 35.724239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283253, 37.435982, 35.809395>,  <37.523594, 37.149464, 35.951324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283253, 37.435982, 35.809395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215011, 0.572345, 0.791322,
		0.769902, 0.399175, -0.497906,
		-0.600851, 0.716296, -0.354822,
		37.102997, 37.650871, 35.702950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947750, 37.659565, 35.986885>,  <37.523594, 37.149464, 35.951324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947750, 37.659565, 35.986885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588421, 37.831738, 35.951675>,  <37.372822, 37.935040, 35.930550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588421, 37.831738, 35.951675>,  <37.947750, 37.659565, 35.986885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588421, 37.831738, 35.951675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269488, 0.698082, 0.663368,
		0.346979, 0.572198, -0.743098,
		-0.898322, 0.430431, -0.088020,
		37.318924, 37.960865, 35.925270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111744, 38.452282, 35.981068>,  <37.947750, 37.659565, 35.986885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111744, 38.452282, 35.981068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724766, 38.416183, 36.075642>,  <37.492580, 38.394524, 36.132385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724766, 38.416183, 36.075642>,  <38.111744, 38.452282, 35.981068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724766, 38.416183, 36.075642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157903, 0.514837, 0.842621,
		-0.197773, 0.852524, -0.483826,
		-0.967446, -0.090250, 0.236437,
		37.434532, 38.389107, 36.146572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042774, 39.072865, 36.292965>,  <38.111744, 38.452282, 35.981068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042774, 39.072865, 36.292965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714058, 38.854935, 36.359692>,  <37.516827, 38.724178, 36.399727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714058, 38.854935, 36.359692>,  <38.042774, 39.072865, 36.292965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714058, 38.854935, 36.359692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035815, 0.242793, 0.969417,
		-0.568660, 0.802634, -0.180013,
		-0.821792, -0.544821, 0.166813,
		37.467522, 38.691486, 36.409737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465248, 39.582306, 36.574989>,  <38.042774, 39.072865, 36.292965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465248, 39.582306, 36.574989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437000, 39.206478, 36.708988>,  <37.420052, 38.980980, 36.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437000, 39.206478, 36.708988>,  <37.465248, 39.582306, 36.574989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437000, 39.206478, 36.708988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024761, 0.334077, 0.942220,
		-0.997196, 0.074832, -0.000327,
		-0.070618, -0.939570, 0.334993,
		37.415813, 38.924606, 36.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948132, 39.731728, 37.112640>,  <37.465248, 39.582306, 36.574989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948132, 39.731728, 37.112640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116993, 39.379498, 37.198776>,  <37.218311, 39.168159, 37.250458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116993, 39.379498, 37.198776>,  <36.948132, 39.731728, 37.112640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116993, 39.379498, 37.198776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171467, 0.155693, 0.972810,
		-0.890159, -0.447603, -0.085262,
		0.422157, -0.880574, 0.215341,
		37.243641, 39.115326, 37.263378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424736, 39.321758, 37.529606>,  <36.948132, 39.731728, 37.112640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424736, 39.321758, 37.529606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792221, 39.187874, 37.613441>,  <37.012714, 39.107544, 37.663742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792221, 39.187874, 37.613441>,  <36.424736, 39.321758, 37.529606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792221, 39.187874, 37.613441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221146, 0.003680, 0.975234,
		-0.327198, -0.942312, -0.070641,
		0.918715, -0.334716, 0.209592,
		37.067837, 39.087460, 37.676319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293610, 38.797585, 38.042385>,  <36.424736, 39.321758, 37.529606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293610, 38.797585, 38.042385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679878, 38.898556, 38.066875>,  <36.911640, 38.959141, 38.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679878, 38.898556, 38.066875>,  <36.293610, 38.797585, 38.042385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679878, 38.898556, 38.066875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082048, 0.072791, 0.993967,
		0.246452, -0.964873, 0.091004,
		0.965676, 0.252432, 0.061226,
		36.969582, 38.974285, 38.085243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601395, 38.358398, 38.640110>,  <36.293610, 38.797585, 38.042385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601395, 38.358398, 38.640110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872005, 38.647942, 38.585941>,  <37.034370, 38.821667, 38.553440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872005, 38.647942, 38.585941>,  <36.601395, 38.358398, 38.640110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872005, 38.647942, 38.585941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015984, 0.169415, 0.985415,
		0.736244, -0.668824, 0.103043,
		0.676527, 0.723859, -0.135422,
		37.074963, 38.865101, 38.545315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315853, 37.701580, 38.831223>,  <36.601395, 38.358398, 38.640110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315853, 37.701580, 38.831223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985928, 37.655884, 39.052719>,  <35.787971, 37.628468, 39.185619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985928, 37.655884, 39.052719>,  <36.315853, 37.701580, 38.831223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985928, 37.655884, 39.052719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531045, -0.179687, -0.828073,
		0.194102, -0.977068, 0.087539,
		-0.824813, -0.114243, 0.553744,
		35.738483, 37.621613, 39.218842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982510, 37.197674, 38.418766>,  <36.315853, 37.701580, 38.831223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982510, 37.197674, 38.418766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735584, 37.419945, 38.641529>,  <35.587429, 37.553307, 38.775185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735584, 37.419945, 38.641529>,  <35.982510, 37.197674, 38.418766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735584, 37.419945, 38.641529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706139, -0.079297, -0.703619,
		-0.346826, -0.827607, 0.441338,
		-0.617317, 0.555679, 0.556903,
		35.550388, 37.586647, 38.808601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382759, 36.806007, 38.496227>,  <35.982510, 37.197674, 38.418766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382759, 36.806007, 38.496227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244049, 37.168133, 38.594334>,  <35.160824, 37.385406, 38.653198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244049, 37.168133, 38.594334>,  <35.382759, 36.806007, 38.496227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244049, 37.168133, 38.594334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801184, -0.149935, -0.579330,
		-0.487702, -0.397398, 0.777317,
		-0.346772, 0.905314, 0.245265,
		35.140018, 37.439728, 38.667912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637917, 36.802357, 38.739803>,  <35.382759, 36.806007, 38.496227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637917, 36.802357, 38.739803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672806, 37.190727, 38.650639>,  <34.693741, 37.423748, 38.597137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672806, 37.190727, 38.650639>,  <34.637917, 36.802357, 38.739803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672806, 37.190727, 38.650639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865963, -0.036713, -0.498760,
		-0.492443, 0.236542, 0.837584,
		0.087228, 0.970927, -0.222916,
		34.698975, 37.482006, 38.583763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020557, 37.024307, 38.908382>,  <34.637917, 36.802357, 38.739803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020557, 37.024307, 38.908382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175503, 37.290501, 38.653172>,  <34.268471, 37.450218, 38.500046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175503, 37.290501, 38.653172>,  <34.020557, 37.024307, 38.908382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175503, 37.290501, 38.653172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713632, -0.221711, -0.664510,
		-0.583678, 0.712725, 0.389028,
		0.387361, 0.665483, -0.638031,
		34.291710, 37.490147, 38.461761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526672, 37.453564, 38.731949>,  <34.020557, 37.024307, 38.908382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526672, 37.453564, 38.731949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790001, 37.450256, 38.430870>,  <33.947998, 37.448273, 38.250225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790001, 37.450256, 38.430870>,  <33.526672, 37.453564, 38.731949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790001, 37.450256, 38.430870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717156, -0.310690, -0.623826,
		-0.228696, 0.950476, -0.210462,
		0.658320, -0.008268, -0.752693,
		33.987495, 37.447777, 38.205063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092945, 37.610210, 38.151123>,  <33.526672, 37.453564, 38.731949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092945, 37.610210, 38.151123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431293, 37.458576, 38.001030>,  <33.634300, 37.367596, 37.910976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431293, 37.458576, 38.001030>,  <33.092945, 37.610210, 38.151123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431293, 37.458576, 38.001030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484711, -0.252690, -0.837379,
		0.222625, 0.890190, -0.397491,
		0.845868, -0.379090, -0.375230,
		33.685055, 37.344849, 37.888462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990059, 37.788799, 37.467285>,  <33.092945, 37.610210, 38.151123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990059, 37.788799, 37.467285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271969, 37.505047, 37.464008>,  <33.441116, 37.334797, 37.462044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271969, 37.505047, 37.464008>,  <32.990059, 37.788799, 37.467285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271969, 37.505047, 37.464008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401521, -0.389344, -0.828971,
		0.584865, 0.587531, -0.559232,
		0.704780, -0.709379, -0.008193,
		33.483402, 37.292233, 37.461552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129623, 37.723656, 36.760933>,  <32.990059, 37.788799, 37.467285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129623, 37.723656, 36.760933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284222, 37.391045, 36.920525>,  <33.376980, 37.191479, 37.016281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284222, 37.391045, 36.920525>,  <33.129623, 37.723656, 36.760933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284222, 37.391045, 36.920525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282306, -0.518493, -0.807136,
		0.878022, 0.199323, -0.435141,
		0.386498, -0.831526, 0.398978,
		33.400169, 37.141586, 37.040218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521400, 37.441433, 36.275146>,  <33.129623, 37.723656, 36.760933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521400, 37.441433, 36.275146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473122, 37.104053, 36.484535>,  <33.444153, 36.901627, 36.610168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473122, 37.104053, 36.484535>,  <33.521400, 37.441433, 36.275146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473122, 37.104053, 36.484535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292030, -0.473818, -0.830792,
		0.948762, -0.253146, -0.189123,
		-0.120701, -0.843453, 0.523467,
		33.436913, 36.851017, 36.641575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913879, 36.843750, 35.961239>,  <33.521400, 37.441433, 36.275146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913879, 36.843750, 35.961239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600899, 36.711063, 36.172043>,  <33.413113, 36.631451, 36.298527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600899, 36.711063, 36.172043>,  <33.913879, 36.843750, 35.961239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600899, 36.711063, 36.172043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165563, -0.705036, -0.689575,
		0.600303, -0.626810, 0.496734,
		-0.782448, -0.331713, 0.527012,
		33.366165, 36.611549, 36.330147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978386, 35.983490, 35.914169>,  <33.913879, 36.843750, 35.961239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978386, 35.983490, 35.914169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602623, 36.063229, 36.025719>,  <33.377167, 36.111073, 36.092648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602623, 36.063229, 36.025719>,  <33.978386, 35.983490, 35.914169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602623, 36.063229, 36.025719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340435, -0.637956, -0.690736,
		0.040214, -0.743822, 0.667166,
		-0.939408, 0.199350, 0.278878,
		33.320801, 36.123035, 36.109383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678108, 35.332066, 36.195465>,  <33.978386, 35.983490, 35.914169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678108, 35.332066, 36.195465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358410, 35.555084, 36.105705>,  <33.166592, 35.688896, 36.051849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358410, 35.555084, 36.105705>,  <33.678108, 35.332066, 36.195465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358410, 35.555084, 36.105705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387973, -0.763785, -0.515858,
		-0.459007, -0.325234, 0.826762,
		-0.799242, 0.557544, -0.224401,
		33.118637, 35.722347, 36.038383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068981, 35.028667, 36.443760>,  <33.678108, 35.332066, 36.195465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068981, 35.028667, 36.443760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030521, 35.243484, 36.108540>,  <33.007446, 35.372375, 35.907406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030521, 35.243484, 36.108540>,  <33.068981, 35.028667, 36.443760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030521, 35.243484, 36.108540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499411, -0.754339, -0.426100,
		-0.861013, 0.377563, 0.340739,
		-0.096153, 0.537046, -0.838055,
		33.001675, 35.404598, 35.857124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322380, 34.319668, 36.458233>,  <33.068981, 35.028667, 36.443760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322380, 34.319668, 36.458233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050350, 34.026844, 36.474201>,  <32.887135, 33.851151, 36.483784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050350, 34.026844, 36.474201>,  <33.322380, 34.319668, 36.458233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050350, 34.026844, 36.474201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006043, 0.048851, 0.998788,
		-0.733120, 0.679489, -0.028799,
		-0.680072, -0.732057, 0.039920,
		32.846329, 33.807228, 36.486176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578819, 34.467533, 36.827827>,  <33.322380, 34.319668, 36.458233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578819, 34.467533, 36.827827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751568, 34.110325, 36.878429>,  <32.855217, 33.896000, 36.908791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751568, 34.110325, 36.878429>,  <32.578819, 34.467533, 36.827827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751568, 34.110325, 36.878429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134636, 0.202521, 0.969978,
		-0.891828, -0.401878, 0.207696,
		0.431876, -0.893017, 0.126507,
		32.881130, 33.842419, 36.916382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269726, 34.016312, 37.356327>,  <32.578819, 34.467533, 36.827827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269726, 34.016312, 37.356327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656548, 33.918247, 37.328888>,  <32.888641, 33.859409, 37.312424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656548, 33.918247, 37.328888>,  <32.269726, 34.016312, 37.356327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656548, 33.918247, 37.328888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077645, 0.027413, 0.996604,
		-0.242452, -0.969094, 0.045546,
		0.967051, -0.245165, -0.068599,
		32.946663, 33.844696, 37.308308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351440, 33.632683, 38.055050>,  <32.269726, 34.016312, 37.356327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351440, 33.632683, 38.055050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699322, 33.759186, 37.903473>,  <32.908051, 33.835087, 37.812527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699322, 33.759186, 37.903473>,  <32.351440, 33.632683, 38.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699322, 33.759186, 37.903473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305704, 0.257604, 0.916616,
		0.387503, -0.913029, 0.127358,
		0.869705, 0.316257, -0.378938,
		32.960232, 33.854061, 37.789791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746635, 33.381496, 38.573929>,  <32.351440, 33.632683, 38.055050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746635, 33.381496, 38.573929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986870, 33.646347, 38.394650>,  <33.131012, 33.805256, 38.287083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986870, 33.646347, 38.394650>,  <32.746635, 33.381496, 38.573929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986870, 33.646347, 38.394650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253932, 0.373585, 0.892162,
		0.758162, -0.649636, 0.056237,
		0.600590, 0.662123, -0.448201,
		33.167046, 33.844986, 38.260189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491047, 33.304443, 38.796768>,  <32.746635, 33.381496, 38.573929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491047, 33.304443, 38.796768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478878, 33.680313, 38.660480>,  <33.471577, 33.905834, 38.578709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478878, 33.680313, 38.660480>,  <33.491047, 33.304443, 38.796768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478878, 33.680313, 38.660480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587604, 0.292568, 0.754404,
		0.808577, -0.177257, -0.561055,
		-0.030423, 0.939672, -0.340721,
		33.469749, 33.962215, 38.558266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076469, 33.541138, 38.975231>,  <33.491047, 33.304443, 38.796768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076469, 33.541138, 38.975231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868137, 33.880920, 38.941383>,  <33.743137, 34.084789, 38.921074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868137, 33.880920, 38.941383>,  <34.076469, 33.541138, 38.975231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868137, 33.880920, 38.941383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385669, 0.322576, 0.864409,
		0.761575, 0.417574, -0.495616,
		-0.520829, 0.849456, -0.084620,
		33.711887, 34.135757, 38.915997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557625, 34.041821, 39.206261>,  <34.076469, 33.541138, 38.975231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557625, 34.041821, 39.206261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222992, 34.260864, 39.212730>,  <34.022213, 34.392292, 39.216610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222992, 34.260864, 39.212730>,  <34.557625, 34.041821, 39.206261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222992, 34.260864, 39.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346077, 0.505356, 0.790472,
		0.424696, 0.666889, -0.612285,
		-0.836579, 0.547608, 0.016172,
		33.972019, 34.425148, 39.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819069, 34.721634, 39.453930>,  <34.557625, 34.041821, 39.206261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819069, 34.721634, 39.453930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423920, 34.760025, 39.502747>,  <34.186829, 34.783062, 39.532036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423920, 34.760025, 39.502747>,  <34.819069, 34.721634, 39.453930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423920, 34.760025, 39.502747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154616, 0.536359, 0.829707,
		0.014176, 0.838515, -0.544694,
		-0.987873, 0.095980, 0.122045,
		34.127560, 34.788818, 39.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560162, 35.418777, 39.493275>,  <34.819069, 34.721634, 39.453930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560162, 35.418777, 39.493275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313969, 35.199684, 39.719963>,  <34.166252, 35.068230, 39.855976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313969, 35.199684, 39.719963>,  <34.560162, 35.418777, 39.493275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313969, 35.199684, 39.719963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250633, 0.545701, 0.799621,
		-0.747237, 0.634192, -0.198590,
		-0.615483, -0.547733, 0.566718,
		34.129322, 35.035366, 39.889977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153015, 35.911789, 39.961079>,  <34.560162, 35.418777, 39.493275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153015, 35.911789, 39.961079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067760, 35.551743, 40.113064>,  <34.016609, 35.335716, 40.204254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067760, 35.551743, 40.113064>,  <34.153015, 35.911789, 39.961079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067760, 35.551743, 40.113064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117809, 0.362381, 0.924554,
		-0.969895, 0.241815, 0.028806,
		-0.213132, -0.900114, 0.379959,
		34.003822, 35.281708, 40.227051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646168, 36.007473, 40.561485>,  <34.153015, 35.911789, 39.961079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646168, 36.007473, 40.561485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802864, 35.644875, 40.624489>,  <33.896881, 35.427315, 40.662292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802864, 35.644875, 40.624489>,  <33.646168, 36.007473, 40.561485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802864, 35.644875, 40.624489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089731, 0.208020, 0.974000,
		-0.915689, -0.367422, 0.162831,
		0.391741, -0.906492, 0.157513,
		33.920387, 35.372929, 40.671741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552265, 35.876587, 41.303875>,  <33.646168, 36.007473, 40.561485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552265, 35.876587, 41.303875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836464, 35.615459, 41.198792>,  <34.006985, 35.458782, 41.135742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836464, 35.615459, 41.198792>,  <33.552265, 35.876587, 41.303875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836464, 35.615459, 41.198792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405999, 0.075360, 0.910761,
		-0.574765, -0.753756, 0.318587,
		0.710500, -0.652819, -0.262710,
		34.049614, 35.419613, 41.119980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722748, 35.618725, 41.964298>,  <33.552265, 35.876587, 41.303875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722748, 35.618725, 41.964298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014652, 35.472599, 41.733128>,  <34.189796, 35.384926, 41.594425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014652, 35.472599, 41.733128>,  <33.722748, 35.618725, 41.964298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014652, 35.472599, 41.733128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487214, -0.315159, 0.814431,
		-0.479660, -0.875912, -0.052005,
		0.729760, -0.365312, -0.577926,
		34.233582, 35.363007, 41.559750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910660, 34.911228, 42.229214>,  <33.722748, 35.618725, 41.964298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910660, 34.911228, 42.229214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224808, 35.050846, 42.024719>,  <34.413296, 35.134617, 41.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224808, 35.050846, 42.024719>,  <33.910660, 34.911228, 42.229214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224808, 35.050846, 42.024719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597348, -0.210665, 0.773819,
		0.162400, -0.913119, -0.373952,
		0.785367, 0.349047, -0.511238,
		34.460419, 35.155560, 41.871349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361732, 34.395611, 42.386391>,  <33.910660, 34.911228, 42.229214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361732, 34.395611, 42.386391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561951, 34.730549, 42.298485>,  <34.682083, 34.931511, 42.245739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561951, 34.730549, 42.298485>,  <34.361732, 34.395611, 42.386391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561951, 34.730549, 42.298485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495155, -0.068682, 0.866086,
		0.710122, -0.542338, -0.448996,
		0.500549, 0.837349, -0.219769,
		34.712116, 34.981754, 42.232555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118862, 34.279011, 42.467819>,  <34.361732, 34.395611, 42.386391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118862, 34.279011, 42.467819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090687, 34.676250, 42.505337>,  <35.073780, 34.914593, 42.527847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090687, 34.676250, 42.505337>,  <35.118862, 34.279011, 42.467819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090687, 34.676250, 42.505337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665693, -0.023225, 0.745865,
		0.742894, 0.114975, -0.659461,
		-0.070440, 0.993097, 0.093791,
		35.069553, 34.974178, 42.533474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810570, 34.538143, 42.417091>,  <35.118862, 34.279011, 42.467819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810570, 34.538143, 42.417091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592617, 34.794285, 42.633625>,  <35.461845, 34.947971, 42.763546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592617, 34.794285, 42.633625>,  <35.810570, 34.538143, 42.417091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592617, 34.794285, 42.633625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717136, 0.021330, 0.696607,
		0.434531, 0.767781, -0.470845,
		-0.544885, 0.640357, 0.541335,
		35.429153, 34.986393, 42.796024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390808, 34.921154, 42.674236>,  <35.810570, 34.538143, 42.417091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390808, 34.921154, 42.674236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072548, 35.009258, 42.899956>,  <35.881592, 35.062122, 43.035385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072548, 35.009258, 42.899956>,  <36.390808, 34.921154, 42.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072548, 35.009258, 42.899956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590304, 0.072836, 0.803888,
		0.135964, 0.972718, -0.187973,
		-0.795647, 0.220262, 0.564296,
		35.833855, 35.075336, 43.069244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540630, 35.418461, 43.030071>,  <36.390808, 34.921154, 42.674236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540630, 35.418461, 43.030071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223785, 35.300156, 43.243641>,  <36.033676, 35.229172, 43.371784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223785, 35.300156, 43.243641>,  <36.540630, 35.418461, 43.030071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223785, 35.300156, 43.243641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502575, 0.180353, 0.845512,
		-0.346368, 0.938081, 0.005783,
		-0.792116, -0.295765, 0.533925,
		35.986149, 35.211426, 43.403820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390896, 35.932869, 43.464214>,  <36.540630, 35.418461, 43.030071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390896, 35.932869, 43.464214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241215, 35.613075, 43.652172>,  <36.151405, 35.421200, 43.764946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241215, 35.613075, 43.652172>,  <36.390896, 35.932869, 43.464214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241215, 35.613075, 43.652172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542974, 0.221876, 0.809907,
		-0.751765, 0.558211, 0.351071,
		-0.374205, -0.799482, 0.469893,
		36.128952, 35.373230, 43.793140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271988, 36.116035, 44.145576>,  <36.390896, 35.932869, 43.464214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271988, 36.116035, 44.145576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243176, 35.722065, 44.208481>,  <36.225887, 35.485683, 44.246223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243176, 35.722065, 44.208481>,  <36.271988, 36.116035, 44.145576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243176, 35.722065, 44.208481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451707, 0.108362, 0.885561,
		-0.889253, 0.134828, 0.437092,
		-0.072035, -0.984926, 0.157264,
		36.221565, 35.426586, 44.255661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081341, 35.954262, 44.860363>,  <36.271988, 36.116035, 44.145576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081341, 35.954262, 44.860363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236267, 35.607136, 44.735859>,  <36.329224, 35.398861, 44.661156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236267, 35.607136, 44.735859>,  <36.081341, 35.954262, 44.860363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236267, 35.607136, 44.735859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316803, -0.191780, 0.928900,
		-0.865808, -0.458385, 0.200648,
		0.387313, -0.867815, -0.311263,
		36.352463, 35.346790, 44.642479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886974, 35.418072, 45.335640>,  <36.081341, 35.954262, 44.860363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886974, 35.418072, 45.335640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220478, 35.294201, 45.152798>,  <36.420582, 35.219879, 45.043091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220478, 35.294201, 45.152798>,  <35.886974, 35.418072, 45.335640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220478, 35.294201, 45.152798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335924, -0.372522, 0.865091,
		-0.438180, -0.874831, -0.206566,
		0.833759, -0.309675, -0.457108,
		36.470608, 35.201298, 45.015667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034943, 34.858753, 45.759514>,  <35.886974, 35.418072, 45.335640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034943, 34.858753, 45.759514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377228, 34.949303, 45.573395>,  <36.582600, 35.003632, 45.461723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377228, 34.949303, 45.573395>,  <36.034943, 34.858753, 45.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377228, 34.949303, 45.573395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517219, -0.347438, 0.782158,
		0.015399, -0.909967, -0.414394,
		0.855715, 0.226377, -0.465302,
		36.633942, 35.017216, 45.433804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503021, 34.310314, 45.943184>,  <36.034943, 34.858753, 45.759514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503021, 34.310314, 45.943184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717003, 34.624496, 45.818676>,  <36.845390, 34.813004, 45.743973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717003, 34.624496, 45.818676>,  <36.503021, 34.310314, 45.943184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717003, 34.624496, 45.818676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559868, -0.053641, 0.826844,
		0.632749, -0.616593, -0.468445,
		0.534954, 0.785452, -0.311270,
		36.877491, 34.860130, 45.725296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196220, 34.202454, 46.244301>,  <36.503021, 34.310314, 45.943184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196220, 34.202454, 46.244301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207855, 34.583092, 46.121914>,  <37.214836, 34.811474, 46.048481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207855, 34.583092, 46.121914>,  <37.196220, 34.202454, 46.244301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207855, 34.583092, 46.121914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520412, 0.246924, 0.817436,
		0.853420, -0.183010, -0.488039,
		0.029091, 0.951597, -0.305970,
		37.216583, 34.868572, 46.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828964, 34.347267, 46.054779>,  <37.196220, 34.202454, 46.244301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828964, 34.347267, 46.054779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674686, 34.705368, 46.144016>,  <37.582119, 34.920227, 46.197559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674686, 34.705368, 46.144016>,  <37.828964, 34.347267, 46.054779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674686, 34.705368, 46.144016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628495, 0.077916, 0.773901,
		0.675453, 0.438698, -0.592712,
		-0.385691, 0.895250, 0.223091,
		37.558979, 34.973942, 46.210945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314766, 34.612782, 45.609474>,  <37.828964, 34.347267, 46.054779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314766, 34.612782, 45.609474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643757, 34.429150, 45.475147>,  <38.841152, 34.318970, 45.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643757, 34.429150, 45.475147>,  <38.314766, 34.612782, 45.609474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643757, 34.429150, 45.475147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364502, 0.027828, -0.930787,
		0.436649, 0.887960, -0.144447,
		0.822482, -0.459079, -0.335814,
		38.890503, 34.291428, 45.374405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373680, 34.818695, 44.919109>,  <38.314766, 34.612782, 45.609474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373680, 34.818695, 44.919109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610252, 34.498028, 44.953831>,  <38.752197, 34.305626, 44.974663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610252, 34.498028, 44.953831>,  <38.373680, 34.818695, 44.919109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610252, 34.498028, 44.953831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010473, -0.115272, -0.993279,
		0.806288, 0.586546, -0.076571,
		0.591431, -0.801671, 0.086799,
		38.787682, 34.257526, 44.979870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759224, 34.919266, 44.355644>,  <38.373680, 34.818695, 44.919109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759224, 34.919266, 44.355644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827671, 34.532757, 44.432629>,  <38.868740, 34.300854, 44.478821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827671, 34.532757, 44.432629>,  <38.759224, 34.919266, 44.355644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827671, 34.532757, 44.432629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056390, -0.204630, -0.977214,
		0.983635, 0.156367, -0.089504,
		0.171119, -0.966269, 0.192463,
		38.879005, 34.242874, 44.490368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288849, 34.687153, 43.860695>,  <38.759224, 34.919266, 44.355644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288849, 34.687153, 43.860695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092026, 34.367851, 43.999645>,  <38.973934, 34.176270, 44.083015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092026, 34.367851, 43.999645>,  <39.288849, 34.687153, 43.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092026, 34.367851, 43.999645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054781, -0.426625, -0.902768,
		0.868840, -0.425180, 0.253652,
		-0.492053, -0.798256, 0.347377,
		38.944408, 34.128376, 44.103859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628841, 34.007450, 43.754856>,  <39.288849, 34.687153, 43.860695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628841, 34.007450, 43.754856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237225, 33.929371, 43.778080>,  <39.002254, 33.882523, 43.792015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237225, 33.929371, 43.778080>,  <39.628841, 34.007450, 43.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237225, 33.929371, 43.778080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019720, -0.374627, -0.926966,
		0.202689, -0.906396, 0.370626,
		-0.979044, -0.195195, 0.058059,
		38.943512, 33.870811, 43.795498>
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
