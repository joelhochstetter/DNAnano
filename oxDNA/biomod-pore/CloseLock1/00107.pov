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
	<24.553093, 35.134556, 34.727303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439058, 34.924179, 35.047829>,  <24.370638, 34.797951, 35.240143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.439058, 34.924179, 35.047829>,  <24.553093, 35.134556, 34.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.439058, 34.924179, 35.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625172, -0.735736, -0.260484,
		0.726558, 0.426699, 0.538555,
		-0.285086, -0.525946, 0.801316,
		24.353533, 34.766396, 35.288223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162199, 34.855339, 35.156208>,  <24.553093, 35.134556, 34.727303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.162199, 34.855339, 35.156208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841196, 34.621338, 35.203121>,  <24.648594, 34.480938, 35.231270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841196, 34.621338, 35.203121>,  <25.162199, 34.855339, 35.156208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841196, 34.621338, 35.203121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531643, -0.790349, -0.304474,
		0.270809, -0.181992, 0.945273,
		-0.802507, -0.585002, 0.117279,
		24.600445, 34.445839, 35.238304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172226, 34.317410, 35.772484>,  <25.162199, 34.855339, 35.156208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172226, 34.317410, 35.772484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943947, 34.203526, 35.464394>,  <24.806980, 34.135193, 35.279541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.943947, 34.203526, 35.464394>,  <25.172226, 34.317410, 35.772484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.943947, 34.203526, 35.464394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547894, -0.830681, -0.098899,
		-0.611652, -0.478442, 0.630060,
		-0.570696, -0.284714, -0.770223,
		24.772738, 34.118111, 35.233326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.823296, 33.620167, 35.848255>,  <25.172226, 34.317410, 35.772484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.823296, 33.620167, 35.848255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938408, 33.741924, 35.485043>,  <25.007475, 33.814980, 35.267113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938408, 33.741924, 35.485043>,  <24.823296, 33.620167, 35.848255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938408, 33.741924, 35.485043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746657, -0.665068, 0.013691,
		-0.599737, -0.681930, -0.418672,
		0.287782, 0.304394, -0.908034,
		25.024742, 33.833244, 35.212631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.883434, 33.083237, 35.445274>,  <24.823296, 33.620167, 35.848255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.883434, 33.083237, 35.445274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133377, 33.358669, 35.298084>,  <25.283342, 33.523930, 35.209770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133377, 33.358669, 35.298084>,  <24.883434, 33.083237, 35.445274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133377, 33.358669, 35.298084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726413, -0.685492, -0.049234,
		-0.286144, -0.236536, -0.928532,
		0.624856, 0.688586, -0.367972,
		25.320833, 33.565247, 35.187691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352684, 32.680450, 34.908607>,  <24.883434, 33.083237, 35.445274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352684, 32.680450, 34.908607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506123, 33.049061, 34.932785>,  <25.598185, 33.270226, 34.947292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.506123, 33.049061, 34.932785>,  <25.352684, 32.680450, 34.908607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506123, 33.049061, 34.932785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880004, -0.344894, -0.326560,
		-0.280086, 0.178455, -0.943242,
		0.383595, 0.921522, 0.060441,
		25.621201, 33.325516, 34.950916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.580832, 32.752235, 34.291256>,  <25.352684, 32.680450, 34.908607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.580832, 32.752235, 34.291256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781778, 32.993641, 34.538933>,  <25.902348, 33.138485, 34.687538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.781778, 32.993641, 34.538933>,  <25.580832, 32.752235, 34.291256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.781778, 32.993641, 34.538933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859634, -0.271561, -0.432763,
		-0.093030, 0.749684, -0.655225,
		0.502369, 0.603513, 0.619191,
		25.932489, 33.174694, 34.724689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077263, 33.084908, 33.885487>,  <25.580832, 32.752235, 34.291256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077263, 33.084908, 33.885487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221682, 33.107052, 34.257847>,  <26.308332, 33.120338, 34.481262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221682, 33.107052, 34.257847>,  <26.077263, 33.084908, 33.885487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221682, 33.107052, 34.257847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928393, -0.115466, -0.353204,
		0.087934, 0.991768, -0.093085,
		0.361044, 0.055360, 0.930904,
		26.329994, 33.123661, 34.537117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724844, 33.308712, 33.748062>,  <26.077263, 33.084908, 33.885487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724844, 33.308712, 33.748062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726709, 33.162346, 34.120316>,  <26.727829, 33.074528, 34.343670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.726709, 33.162346, 34.120316>,  <26.724844, 33.308712, 33.748062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726709, 33.162346, 34.120316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922701, -0.357182, -0.145064,
		0.385488, 0.859376, 0.335964,
		0.004664, -0.365915, 0.930637,
		26.728109, 33.052570, 34.399506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314276, 33.634735, 34.042492>,  <26.724844, 33.308712, 33.748062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314276, 33.634735, 34.042492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244188, 33.289680, 34.232296>,  <27.202135, 33.082649, 34.346180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244188, 33.289680, 34.232296>,  <27.314276, 33.634735, 34.042492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244188, 33.289680, 34.232296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941864, -0.287218, -0.174350,
		0.286689, 0.416377, 0.862809,
		-0.175219, -0.862633, 0.474513,
		27.191622, 33.030891, 34.374649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871426, 33.566353, 34.466091>,  <27.314276, 33.634735, 34.042492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871426, 33.566353, 34.466091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714521, 33.205673, 34.393349>,  <27.620378, 32.989265, 34.349701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714521, 33.205673, 34.393349>,  <27.871426, 33.566353, 34.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714521, 33.205673, 34.393349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896183, -0.330063, -0.296504,
		0.207332, -0.279285, 0.937557,
		-0.392262, -0.901697, -0.181858,
		27.596844, 32.935165, 34.338791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349874, 33.111568, 34.784302>,  <27.871426, 33.566353, 34.466091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349874, 33.111568, 34.784302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141273, 32.912006, 34.507423>,  <28.016113, 32.792271, 34.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141273, 32.912006, 34.507423>,  <28.349874, 33.111568, 34.784302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141273, 32.912006, 34.507423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853070, -0.321531, -0.410962,
		-0.017532, -0.804807, 0.593277,
		-0.521502, -0.498902, -0.692194,
		27.984823, 32.762337, 34.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547255, 32.465370, 34.782101>,  <28.349874, 33.111568, 34.784302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547255, 32.465370, 34.782101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402859, 32.472366, 34.409138>,  <28.316221, 32.476566, 34.185360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402859, 32.472366, 34.409138>,  <28.547255, 32.465370, 34.782101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402859, 32.472366, 34.409138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780708, -0.541197, -0.312412,
		-0.510080, -0.840714, 0.181709,
		-0.360989, 0.017494, -0.932406,
		28.294561, 32.477615, 34.129417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881371, 31.893101, 34.546711>,  <28.547255, 32.465370, 34.782101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881371, 31.893101, 34.546711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740097, 32.092754, 34.230198>,  <28.655333, 32.212547, 34.040291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740097, 32.092754, 34.230198>,  <28.881371, 31.893101, 34.546711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740097, 32.092754, 34.230198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699748, -0.420462, -0.577551,
		-0.620979, -0.757678, -0.200769,
		-0.353182, 0.499135, -0.791282,
		28.634142, 32.242496, 33.992813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177465, 31.542524, 34.015347>,  <28.881371, 31.893101, 34.546711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177465, 31.542524, 34.015347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069748, 31.866159, 33.806404>,  <29.005117, 32.060341, 33.681038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069748, 31.866159, 33.806404>,  <29.177465, 31.542524, 34.015347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069748, 31.866159, 33.806404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669764, -0.232409, -0.705268,
		-0.692023, -0.539782, -0.479311,
		-0.269295, 0.809087, -0.522359,
		28.988960, 32.108887, 33.649696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150385, 31.360758, 33.257664>,  <29.177465, 31.542524, 34.015347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150385, 31.360758, 33.257664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228928, 31.751564, 33.290848>,  <29.276054, 31.986048, 33.310760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228928, 31.751564, 33.290848>,  <29.150385, 31.360758, 33.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228928, 31.751564, 33.290848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824991, -0.118888, -0.552499,
		-0.529937, 0.176932, -0.829374,
		0.196358, 0.977016, 0.082964,
		29.287834, 32.044670, 33.315739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235083, 31.681244, 32.553238>,  <29.150385, 31.360758, 33.257664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235083, 31.681244, 32.553238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425932, 31.931280, 32.800335>,  <29.540442, 32.081303, 32.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425932, 31.931280, 32.800335>,  <29.235083, 31.681244, 32.553238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425932, 31.931280, 32.800335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750138, 0.076547, -0.656836,
		-0.457870, 0.776789, -0.432382,
		0.477125, 0.625092, 0.617747,
		29.569069, 32.118809, 32.985661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467161, 32.195877, 32.097897>,  <29.235083, 31.681244, 32.553238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467161, 32.195877, 32.097897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695919, 32.234322, 32.423767>,  <29.833174, 32.257389, 32.619289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695919, 32.234322, 32.423767>,  <29.467161, 32.195877, 32.097897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695919, 32.234322, 32.423767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804497, 0.128460, -0.579899,
		-0.160386, 0.987047, -0.003853,
		0.571893, 0.096108, 0.814679,
		29.867487, 32.263153, 32.668171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888611, 32.672287, 31.850359>,  <29.467161, 32.195877, 32.097897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888611, 32.672287, 31.850359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076273, 32.522667, 32.170353>,  <30.188871, 32.432896, 32.362350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076273, 32.522667, 32.170353>,  <29.888611, 32.672287, 31.850359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076273, 32.522667, 32.170353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846887, -0.066233, -0.527633,
		0.250349, 0.925039, 0.285708,
		0.469158, -0.374054, 0.799984,
		30.217020, 32.410450, 32.410347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361195, 33.203201, 32.014614>,  <29.888611, 32.672287, 31.850359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361195, 33.203201, 32.014614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457752, 32.833469, 32.132835>,  <30.515686, 32.611629, 32.203770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457752, 32.833469, 32.132835>,  <30.361195, 33.203201, 32.014614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457752, 32.833469, 32.132835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852797, 0.056713, -0.519154,
		0.463106, 0.377368, 0.801952,
		0.241393, -0.924325, 0.295554,
		30.530170, 32.556171, 32.221500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000938, 33.345585, 31.995605>,  <30.361195, 33.203201, 32.014614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000938, 33.345585, 31.995605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974878, 32.948219, 32.033302>,  <30.959242, 32.709801, 32.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974878, 32.948219, 32.033302>,  <31.000938, 33.345585, 31.995605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974878, 32.948219, 32.033302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869387, -0.102865, -0.483307,
		0.489818, 0.050446, 0.870364,
		-0.065149, -0.993415, 0.094242,
		30.955334, 32.650196, 32.061573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657631, 33.183380, 32.329151>,  <31.000938, 33.345585, 31.995605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657631, 33.183380, 32.329151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514822, 32.864765, 32.133980>,  <31.429136, 32.673595, 32.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514822, 32.864765, 32.133980>,  <31.657631, 33.183380, 32.329151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514822, 32.864765, 32.133980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843919, -0.051136, -0.534028,
		0.400420, -0.602428, 0.690467,
		-0.357021, -0.796534, -0.487924,
		31.407715, 32.625805, 31.987602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227440, 32.731285, 32.411480>,  <31.657631, 33.183380, 32.329151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227440, 32.731285, 32.411480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000469, 32.586689, 32.115547>,  <31.864286, 32.499931, 31.937988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000469, 32.586689, 32.115547>,  <32.227440, 32.731285, 32.411480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000469, 32.586689, 32.115547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813377, -0.106164, -0.571967,
		0.128215, -0.926313, 0.354266,
		-0.567431, -0.361487, -0.739830,
		31.830240, 32.478245, 31.893599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621647, 32.243618, 32.002979>,  <32.227440, 32.731285, 32.411480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621647, 32.243618, 32.002979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323795, 32.326324, 31.749123>,  <32.145084, 32.375946, 31.596807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323795, 32.326324, 31.749123>,  <32.621647, 32.243618, 32.002979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323795, 32.326324, 31.749123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603672, -0.197067, -0.772493,
		-0.284793, -0.958338, 0.021923,
		-0.744630, 0.206766, -0.634645,
		32.100407, 32.388355, 31.558729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622940, 31.711061, 31.392345>,  <32.621647, 32.243618, 32.002979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622940, 31.711061, 31.392345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440704, 32.044014, 31.266121>,  <32.331364, 32.243786, 31.190386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440704, 32.044014, 31.266121>,  <32.622940, 31.711061, 31.392345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440704, 32.044014, 31.266121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382485, -0.137061, -0.913740,
		-0.803832, -0.536987, -0.255930,
		-0.455588, 0.832382, -0.315563,
		32.304028, 32.293728, 31.171452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117985, 31.559216, 30.779446>,  <32.622940, 31.711061, 31.392345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117985, 31.559216, 30.779446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256191, 31.934504, 30.787045>,  <32.339115, 32.159676, 30.791603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256191, 31.934504, 30.787045>,  <32.117985, 31.559216, 30.779446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256191, 31.934504, 30.787045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439961, -0.144076, -0.886384,
		-0.828887, 0.314616, -0.462561,
		0.345514, 0.938221, 0.018996,
		32.359844, 32.215969, 30.792744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122047, 31.724293, 30.074099>,  <32.117985, 31.559216, 30.779446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122047, 31.724293, 30.074099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330212, 32.015411, 30.252750>,  <32.455112, 32.190083, 30.359941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330212, 32.015411, 30.252750>,  <32.122047, 31.724293, 30.074099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330212, 32.015411, 30.252750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470658, 0.191943, -0.861184,
		-0.712497, 0.658382, -0.242655,
		0.520413, 0.727799, 0.446632,
		32.486336, 32.233749, 30.386740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802418, 32.486824, 29.897032>,  <32.122047, 31.724293, 30.074099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802418, 32.486824, 29.897032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192810, 32.419655, 29.952545>,  <32.427044, 32.379353, 29.985853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192810, 32.419655, 29.952545>,  <31.802418, 32.486824, 29.897032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192810, 32.419655, 29.952545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178969, 0.254783, -0.950292,
		0.124217, 0.952306, 0.278717,
		0.975982, -0.167924, 0.138785,
		32.485603, 32.369278, 29.994181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133610, 33.013264, 29.548378>,  <31.802418, 32.486824, 29.897032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133610, 33.013264, 29.548378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405754, 32.720211, 29.555979>,  <32.569042, 32.544380, 29.560539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405754, 32.720211, 29.555979>,  <32.133610, 33.013264, 29.548378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405754, 32.720211, 29.555979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396986, 0.346621, -0.849856,
		0.616044, 0.585753, 0.526672,
		0.680361, -0.732631, 0.019002,
		32.609863, 32.500423, 29.561680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884583, 33.267559, 29.575500>,  <32.133610, 33.013264, 29.548378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884583, 33.267559, 29.575500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876381, 32.902485, 29.412241>,  <32.871460, 32.683441, 29.314285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876381, 32.902485, 29.412241>,  <32.884583, 33.267559, 29.575500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876381, 32.902485, 29.412241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426932, 0.361146, -0.829037,
		0.904051, -0.191252, 0.382249,
		-0.020507, -0.912686, -0.408146,
		32.870228, 32.628677, 29.289797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329472, 33.430218, 28.975935>,  <32.884583, 33.267559, 29.575500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329472, 33.430218, 28.975935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184868, 33.061924, 28.917192>,  <33.098106, 32.840950, 28.881947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184868, 33.061924, 28.917192>,  <33.329472, 33.430218, 28.975935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184868, 33.061924, 28.917192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352712, 0.010755, -0.935670,
		0.863080, -0.390050, 0.320865,
		-0.361508, -0.920731, -0.146858,
		33.076416, 32.785706, 28.873135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919788, 32.921471, 28.914030>,  <33.329472, 33.430218, 28.975935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919788, 32.921471, 28.914030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561382, 32.891792, 28.738920>,  <33.346336, 32.873985, 28.633854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561382, 32.891792, 28.738920>,  <33.919788, 32.921471, 28.914030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561382, 32.891792, 28.738920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420352, 0.175838, -0.890160,
		0.143021, -0.981619, -0.126367,
		-0.896018, -0.074193, -0.437774,
		33.292576, 32.869534, 28.607588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803135, 32.465664, 28.214445>,  <33.919788, 32.921471, 28.914030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803135, 32.465664, 28.214445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589115, 32.798485, 28.272976>,  <33.460705, 32.998177, 28.308094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589115, 32.798485, 28.272976>,  <33.803135, 32.465664, 28.214445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589115, 32.798485, 28.272976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286746, 0.341780, -0.894965,
		-0.794672, -0.436888, -0.421456,
		-0.535045, 0.832055, 0.146327,
		33.428600, 33.048100, 28.316874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284409, 32.595970, 27.735027>,  <33.803135, 32.465664, 28.214445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284409, 32.595970, 27.735027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383469, 32.957348, 27.875004>,  <33.442905, 33.174175, 27.958990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383469, 32.957348, 27.875004>,  <33.284409, 32.595970, 27.735027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383469, 32.957348, 27.875004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237256, 0.293646, -0.926003,
		-0.939351, 0.312349, -0.141626,
		0.247648, 0.903443, 0.349944,
		33.457764, 33.228382, 27.979986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741249, 33.129745, 27.644619>,  <33.284409, 32.595970, 27.735027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741249, 33.129745, 27.644619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549454, 33.415989, 27.441446>,  <32.434376, 33.587734, 27.319544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549454, 33.415989, 27.441446>,  <32.741249, 33.129745, 27.644619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549454, 33.415989, 27.441446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396051, 0.340039, 0.852946,
		0.783091, 0.610148, 0.120371,
		-0.479492, 0.715607, -0.507931,
		32.405605, 33.630672, 27.289066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798939, 33.799129, 28.030418>,  <32.741249, 33.129745, 27.644619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798939, 33.799129, 28.030418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483707, 33.811615, 27.784504>,  <32.294571, 33.819107, 27.636955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483707, 33.811615, 27.784504>,  <32.798939, 33.799129, 28.030418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483707, 33.811615, 27.784504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520928, 0.498302, 0.693058,
		0.327979, 0.866442, -0.376442,
		-0.788076, 0.031209, -0.614786,
		32.247284, 33.820976, 27.600069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542812, 34.422215, 27.956812>,  <32.798939, 33.799129, 28.030418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542812, 34.422215, 27.956812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233353, 34.183514, 27.871634>,  <32.047676, 34.040295, 27.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.233353, 34.183514, 27.871634>,  <32.542812, 34.422215, 27.956812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233353, 34.183514, 27.871634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536747, 0.438666, 0.720747,
		-0.336695, 0.671906, -0.659680,
		-0.773653, -0.596753, -0.212947,
		32.001255, 34.004486, 27.807749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060417, 34.772526, 28.208265>,  <32.542812, 34.422215, 27.956812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060417, 34.772526, 28.208265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835667, 34.444630, 28.163847>,  <31.700817, 34.247894, 28.137196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835667, 34.444630, 28.163847>,  <32.060417, 34.772526, 28.208265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835667, 34.444630, 28.163847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671744, 0.373798, 0.639559,
		-0.482762, 0.433944, -0.760679,
		-0.561873, -0.819736, -0.111044,
		31.667105, 34.198708, 28.130533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293030, 34.958439, 27.993185>,  <32.060417, 34.772526, 28.208265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293030, 34.958439, 27.993185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302933, 34.596722, 28.163664>,  <31.308874, 34.379692, 28.265951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302933, 34.596722, 28.163664>,  <31.293030, 34.958439, 27.993185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302933, 34.596722, 28.163664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679262, 0.297579, 0.670858,
		-0.733478, -0.306108, -0.606884,
		0.024759, -0.904292, 0.426195,
		31.310360, 34.325436, 28.291523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606050, 34.844501, 28.201748>,  <31.293030, 34.958439, 27.993185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606050, 34.844501, 28.201748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835991, 34.602764, 28.422407>,  <30.973955, 34.457722, 28.554802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.835991, 34.602764, 28.422407>,  <30.606050, 34.844501, 28.201748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835991, 34.602764, 28.422407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607437, 0.136520, 0.782549,
		-0.548238, -0.784941, -0.288621,
		0.574852, -0.604342, 0.551648,
		31.008446, 34.421463, 28.587902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129852, 34.516796, 28.545773>,  <30.606050, 34.844501, 28.201748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129852, 34.516796, 28.545773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442966, 34.410446, 28.770826>,  <30.630835, 34.346638, 28.905859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.442966, 34.410446, 28.770826>,  <30.129852, 34.516796, 28.545773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442966, 34.410446, 28.770826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516196, 0.227528, 0.825695,
		-0.347546, -0.936772, 0.040863,
		0.782785, -0.265874, 0.562634,
		30.677803, 34.330685, 28.939617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845959, 34.170826, 29.074373>,  <30.129852, 34.516796, 28.545773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845959, 34.170826, 29.074373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210604, 34.265652, 29.208694>,  <30.429390, 34.322548, 29.289288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.210604, 34.265652, 29.208694>,  <29.845959, 34.170826, 29.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210604, 34.265652, 29.208694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363057, 0.081281, 0.928215,
		0.192759, -0.968086, 0.160167,
		0.911611, 0.237071, 0.335803,
		30.484087, 34.336773, 29.309435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002815, 33.779930, 29.607664>,  <29.845959, 34.170826, 29.074373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002815, 33.779930, 29.607664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239737, 34.096684, 29.667120>,  <30.381889, 34.286736, 29.702793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239737, 34.096684, 29.667120>,  <30.002815, 33.779930, 29.607664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239737, 34.096684, 29.667120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348712, 0.085636, 0.933309,
		0.726346, -0.604634, 0.326863,
		0.592301, 0.791887, 0.148642,
		30.417427, 34.334248, 29.711712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178558, 33.612705, 30.288088>,  <30.002815, 33.779930, 29.607664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178558, 33.612705, 30.288088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251293, 34.000286, 30.221075>,  <30.294933, 34.232834, 30.180868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251293, 34.000286, 30.221075>,  <30.178558, 33.612705, 30.288088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251293, 34.000286, 30.221075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298858, 0.216768, 0.929353,
		0.936814, -0.118921, 0.328995,
		0.181835, 0.968953, -0.167531,
		30.305843, 34.290974, 30.170816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652342, 33.939018, 30.861059>,  <30.178558, 33.612705, 30.288088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652342, 33.939018, 30.861059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435097, 34.236721, 30.705570>,  <30.304749, 34.415344, 30.612276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435097, 34.236721, 30.705570>,  <30.652342, 33.939018, 30.861059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435097, 34.236721, 30.705570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318976, 0.245367, 0.915451,
		0.776712, 0.621187, 0.104138,
		-0.543114, 0.744259, -0.388723,
		30.272163, 34.459999, 30.588953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699831, 34.420742, 31.376406>,  <30.652342, 33.939018, 30.861059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699831, 34.420742, 31.376406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387907, 34.545853, 31.159492>,  <30.200752, 34.620918, 31.029345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387907, 34.545853, 31.159492>,  <30.699831, 34.420742, 31.376406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387907, 34.545853, 31.159492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515734, 0.170039, 0.839705,
		0.354847, 0.934483, 0.028711,
		-0.779809, 0.312774, -0.542283,
		30.153965, 34.639687, 30.996807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540274, 34.957359, 31.701870>,  <30.699831, 34.420742, 31.376406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540274, 34.957359, 31.701870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207521, 34.861950, 31.501440>,  <30.007870, 34.804703, 31.381182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207521, 34.861950, 31.501440>,  <30.540274, 34.957359, 31.701870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207521, 34.861950, 31.501440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543351, 0.166419, 0.822845,
		-0.112880, 0.956771, -0.268043,
		-0.831882, -0.238524, -0.501077,
		29.957956, 34.790394, 31.351116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098618, 35.513916, 31.828232>,  <30.540274, 34.957359, 31.701870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098618, 35.513916, 31.828232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880388, 35.185848, 31.759333>,  <29.749451, 34.989006, 31.717993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880388, 35.185848, 31.759333>,  <30.098618, 35.513916, 31.828232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880388, 35.185848, 31.759333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503642, 0.156593, 0.849602,
		-0.669847, 0.550270, -0.498506,
		-0.545573, -0.820172, -0.172246,
		29.716717, 34.939796, 31.707659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371340, 35.692299, 31.915499>,  <30.098618, 35.513916, 31.828232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371340, 35.692299, 31.915499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386711, 35.295052, 31.959749>,  <29.395933, 35.056702, 31.986300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386711, 35.295052, 31.959749>,  <29.371340, 35.692299, 31.915499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386711, 35.295052, 31.959749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608130, 0.064603, 0.791204,
		-0.792907, -0.097678, -0.601463,
		0.038427, -0.993119, 0.110626,
		29.398239, 34.997116, 31.992937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819326, 35.586300, 32.308289>,  <29.371340, 35.692299, 31.915499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819326, 35.586300, 32.308289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939459, 35.204979, 32.321060>,  <29.011539, 34.976189, 32.328724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939459, 35.204979, 32.321060>,  <28.819326, 35.586300, 32.308289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939459, 35.204979, 32.321060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377737, -0.088132, 0.921709,
		-0.875851, -0.288880, -0.386566,
		0.300332, -0.953300, 0.031930,
		29.029558, 34.918987, 32.330639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269121, 35.207481, 32.452770>,  <28.819326, 35.586300, 32.308289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269121, 35.207481, 32.452770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549774, 34.945869, 32.565876>,  <28.718166, 34.788902, 32.633739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549774, 34.945869, 32.565876>,  <28.269121, 35.207481, 32.452770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549774, 34.945869, 32.565876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373945, -0.000183, 0.927451,
		-0.606530, -0.756468, -0.244700,
		0.701631, -0.654031, 0.282766,
		28.760263, 34.749660, 32.650707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891613, 34.656712, 32.865402>,  <28.269121, 35.207481, 32.452770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891613, 34.656712, 32.865402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283754, 34.646061, 32.943577>,  <28.519039, 34.639671, 32.990482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283754, 34.646061, 32.943577>,  <27.891613, 34.656712, 32.865402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283754, 34.646061, 32.943577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196940, -0.186846, 0.962446,
		0.010896, -0.982028, -0.188418,
		0.980355, -0.026620, 0.195437,
		28.577862, 34.638073, 33.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980938, 34.126957, 33.246647>,  <27.891613, 34.656712, 32.865402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980938, 34.126957, 33.246647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307896, 34.335289, 33.345119>,  <28.504070, 34.460289, 33.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307896, 34.335289, 33.345119>,  <27.980938, 34.126957, 33.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307896, 34.335289, 33.345119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142018, -0.231972, 0.962299,
		0.558299, -0.821540, -0.115646,
		0.817394, 0.520827, 0.246183,
		28.553114, 34.491535, 33.418976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235262, 33.762470, 33.767479>,  <27.980938, 34.126957, 33.246647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235262, 33.762470, 33.767479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404127, 34.122692, 33.809021>,  <28.505445, 34.338825, 33.833946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404127, 34.122692, 33.809021>,  <28.235262, 33.762470, 33.767479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404127, 34.122692, 33.809021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074964, -0.079488, 0.994013,
		0.903416, -0.427418, 0.033952,
		0.422161, 0.900553, 0.103852,
		28.530775, 34.392857, 33.840176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720242, 33.699097, 34.300915>,  <28.235262, 33.762470, 33.767479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720242, 33.699097, 34.300915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641064, 34.091110, 34.308414>,  <28.593557, 34.326317, 34.312916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641064, 34.091110, 34.308414>,  <28.720242, 33.699097, 34.300915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641064, 34.091110, 34.308414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008841, -0.020914, 0.999742,
		0.980173, 0.197730, 0.012804,
		-0.197947, 0.980033, 0.018751,
		28.581680, 34.385120, 34.314041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154503, 33.908302, 34.884212>,  <28.720242, 33.699097, 34.300915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154503, 33.908302, 34.884212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889254, 34.197433, 34.806454>,  <28.730104, 34.370911, 34.759796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889254, 34.197433, 34.806454>,  <29.154503, 33.908302, 34.884212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889254, 34.197433, 34.806454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041844, 0.223512, 0.973803,
		0.747339, 0.653886, -0.117970,
		-0.663124, 0.722824, -0.194401,
		28.690317, 34.414280, 34.748135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487610, 34.406052, 35.169724>,  <29.154503, 33.908302, 34.884212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487610, 34.406052, 35.169724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093040, 34.469475, 35.152626>,  <28.856298, 34.507526, 35.142368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093040, 34.469475, 35.152626>,  <29.487610, 34.406052, 35.169724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093040, 34.469475, 35.152626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016482, 0.163386, 0.986425,
		0.163386, 0.973738, -0.158554,
		-0.986425, 0.158554, -0.042744,
		28.797113, 34.517040, 35.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371620, 34.907227, 35.616398>,  <29.487610, 34.406052, 35.169724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371620, 34.907227, 35.616398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037012, 34.693348, 35.568516>,  <28.836246, 34.565022, 35.539787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037012, 34.693348, 35.568516>,  <29.371620, 34.907227, 35.616398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037012, 34.693348, 35.568516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106169, -0.056157, 0.992761,
		-0.537549, 0.843176, -0.009792,
		-0.836522, -0.534697, -0.119706,
		28.786055, 34.532940, 35.532604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574146, 35.167015, 34.911179>,  <29.371620, 34.907227, 35.616398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574146, 35.167015, 34.911179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969307, 35.134514, 34.858341>,  <30.206404, 35.115013, 34.826637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969307, 35.134514, 34.858341>,  <29.574146, 35.167015, 34.911179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969307, 35.134514, 34.858341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096299, -0.989054, -0.111793,
		-0.121566, 0.123161, -0.984913,
		0.987901, -0.081256, -0.132095,
		30.265676, 35.110138, 34.818714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625082, 34.635124, 34.344284>,  <29.574146, 35.167015, 34.911179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625082, 34.635124, 34.344284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949532, 34.658398, 34.577072>,  <30.144201, 34.672359, 34.716747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949532, 34.658398, 34.577072>,  <29.625082, 34.635124, 34.344284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949532, 34.658398, 34.577072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055644, -0.998203, 0.022235,
		0.582220, 0.014348, -0.812905,
		0.811125, 0.058179, 0.581972,
		30.192869, 34.675850, 34.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126480, 34.101669, 34.208328>,  <29.625082, 34.635124, 34.344284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126480, 34.101669, 34.208328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295555, 34.195324, 34.558533>,  <30.396999, 34.251518, 34.768654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295555, 34.195324, 34.558533>,  <30.126480, 34.101669, 34.208328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295555, 34.195324, 34.558533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305622, -0.946289, 0.105514,
		0.853189, 0.222975, -0.471541,
		0.422687, 0.234137, 0.875509,
		30.422361, 34.265564, 34.821186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931288, 34.205223, 34.407162>,  <30.126480, 34.101669, 34.208328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931288, 34.205223, 34.407162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697235, 34.005081, 34.662430>,  <30.556803, 33.884995, 34.815590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697235, 34.005081, 34.662430>,  <30.931288, 34.205223, 34.407162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697235, 34.005081, 34.662430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541759, -0.826769, -0.151496,
		0.603423, 0.257090, 0.754841,
		-0.585131, -0.500358, 0.638172,
		30.521696, 33.854973, 34.853882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315001, 34.046455, 35.028294>,  <30.931288, 34.205223, 34.407162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315001, 34.046455, 35.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037718, 33.771042, 34.943073>,  <30.871349, 33.605793, 34.891941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037718, 33.771042, 34.943073>,  <31.315001, 34.046455, 35.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037718, 33.771042, 34.943073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713619, -0.697136, -0.068919,
		-0.101071, -0.199810, 0.974608,
		-0.693205, -0.688533, -0.213048,
		30.829756, 33.564484, 34.879158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378359, 33.608517, 35.554482>,  <31.315001, 34.046455, 35.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378359, 33.608517, 35.554482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250935, 33.499374, 35.191368>,  <31.174480, 33.433891, 34.973499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250935, 33.499374, 35.191368>,  <31.378359, 33.608517, 35.554482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250935, 33.499374, 35.191368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700218, -0.713241, -0.031344,
		-0.638915, -0.645631, 0.418267,
		-0.318562, -0.272852, -0.907783,
		31.155365, 33.417519, 34.919033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297865, 32.863544, 35.492661>,  <31.378359, 33.608517, 35.554482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297865, 32.863544, 35.492661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349632, 32.978809, 35.113144>,  <31.380693, 33.047970, 34.885433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349632, 32.978809, 35.113144>,  <31.297865, 32.863544, 35.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349632, 32.978809, 35.113144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590495, -0.791079, -0.159719,
		-0.796596, -0.539587, -0.272543,
		0.129421, 0.288166, -0.948794,
		31.388458, 33.065258, 34.828506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093822, 32.862118, 35.423904>,  <31.297865, 32.863544, 35.492661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093822, 32.862118, 35.423904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378059, 32.865784, 35.705322>,  <32.548603, 32.867985, 35.874172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378059, 32.865784, 35.705322>,  <32.093822, 32.862118, 35.423904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378059, 32.865784, 35.705322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703217, -0.023937, 0.710573,
		0.023359, -0.999671, -0.010559,
		0.710592, 0.009173, 0.703545,
		32.591236, 32.868534, 35.916386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992348, 32.375431, 35.872005>,  <32.093822, 32.862118, 35.423904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992348, 32.375431, 35.872005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212536, 32.626266, 36.092457>,  <32.344650, 32.776768, 36.224728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212536, 32.626266, 36.092457>,  <31.992348, 32.375431, 35.872005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212536, 32.626266, 36.092457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684276, -0.039291, 0.728164,
		0.478276, -0.777957, 0.407473,
		0.550470, 0.627088, 0.551130,
		32.377678, 32.814392, 36.257797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945892, 32.014336, 36.582047>,  <31.992348, 32.375431, 35.872005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945892, 32.014336, 36.582047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055058, 32.397896, 36.613094>,  <32.120556, 32.628033, 36.631725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055058, 32.397896, 36.613094>,  <31.945892, 32.014336, 36.582047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055058, 32.397896, 36.613094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566013, 0.094802, 0.818927,
		0.777912, -0.267434, 0.568624,
		0.272915, 0.958901, 0.077624,
		32.136932, 32.685566, 36.636383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391510, 32.113998, 37.181911>,  <31.945892, 32.014336, 36.582047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391510, 32.113998, 37.181911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253475, 32.486225, 37.132988>,  <32.170654, 32.709560, 37.103634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253475, 32.486225, 37.132988>,  <32.391510, 32.113998, 37.181911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253475, 32.486225, 37.132988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200100, 0.054376, 0.978265,
		0.916993, 0.362061, 0.167442,
		-0.345086, 0.930567, -0.122311,
		32.149948, 32.765396, 37.096294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509537, 32.466946, 37.796825>,  <32.391510, 32.113998, 37.181911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509537, 32.466946, 37.796825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230103, 32.691048, 37.618797>,  <32.062443, 32.825508, 37.511978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230103, 32.691048, 37.618797>,  <32.509537, 32.466946, 37.796825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230103, 32.691048, 37.618797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263545, 0.376821, 0.888003,
		0.665223, 0.737643, -0.115589,
		-0.698586, 0.560257, -0.445072,
		32.020527, 32.859123, 37.485275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595085, 33.199295, 38.123890>,  <32.509537, 32.466946, 37.796825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595085, 33.199295, 38.123890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221897, 33.141804, 37.991886>,  <31.997984, 33.107311, 37.912685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221897, 33.141804, 37.991886>,  <32.595085, 33.199295, 38.123890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221897, 33.141804, 37.991886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358558, 0.290633, 0.887113,
		-0.031590, 0.945979, -0.322686,
		-0.932973, -0.143726, -0.330007,
		31.942005, 33.098686, 37.892883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215694, 33.646351, 38.452560>,  <32.595085, 33.199295, 38.123890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215694, 33.646351, 38.452560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922798, 33.403164, 38.329796>,  <31.747061, 33.257252, 38.256138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922798, 33.403164, 38.329796>,  <32.215694, 33.646351, 38.452560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922798, 33.403164, 38.329796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337679, -0.067251, 0.938856,
		-0.591433, 0.791110, -0.156054,
		-0.732243, -0.607966, -0.306916,
		31.703125, 33.220776, 38.237720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652983, 33.819187, 38.755581>,  <32.215694, 33.646351, 38.452560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652983, 33.819187, 38.755581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514891, 33.461952, 38.640194>,  <31.432035, 33.247612, 38.570961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514891, 33.461952, 38.640194>,  <31.652983, 33.819187, 38.755581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514891, 33.461952, 38.640194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163357, -0.245493, 0.955535,
		-0.924191, 0.377004, -0.061140,
		-0.345231, -0.893085, -0.288468,
		31.411322, 33.194027, 38.553654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979280, 33.731354, 39.118809>,  <31.652983, 33.819187, 38.755581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979280, 33.731354, 39.118809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118956, 33.370514, 39.017391>,  <31.202761, 33.154011, 38.956543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118956, 33.370514, 39.017391>,  <30.979280, 33.731354, 39.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118956, 33.370514, 39.017391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258749, -0.352878, 0.899181,
		-0.900620, -0.248379, -0.356638,
		0.349187, -0.902100, -0.253541,
		31.223711, 33.099884, 38.941330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396109, 33.245262, 39.024334>,  <30.979280, 33.731354, 39.118809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396109, 33.245262, 39.024334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733795, 33.062279, 39.136070>,  <30.936407, 32.952488, 39.203114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733795, 33.062279, 39.136070>,  <30.396109, 33.245262, 39.024334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733795, 33.062279, 39.136070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453295, -0.331207, 0.827542,
		-0.286037, -0.825253, -0.486971,
		0.844220, -0.457449, 0.279346,
		30.987061, 32.925041, 39.219872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184895, 32.691685, 39.428139>,  <30.396109, 33.245262, 39.024334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184895, 32.691685, 39.428139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572498, 32.709076, 39.525406>,  <30.805059, 32.719509, 39.583767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572498, 32.709076, 39.525406>,  <30.184895, 32.691685, 39.428139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572498, 32.709076, 39.525406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199635, -0.441960, 0.874538,
		0.145497, -0.895981, -0.419583,
		0.969008, 0.043479, 0.243173,
		30.863201, 32.722118, 39.598358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335459, 32.059845, 39.769699>,  <30.184895, 32.691685, 39.428139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335459, 32.059845, 39.769699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627750, 32.311676, 39.875282>,  <30.803125, 32.462772, 39.938633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627750, 32.311676, 39.875282>,  <30.335459, 32.059845, 39.769699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627750, 32.311676, 39.875282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022081, -0.408250, 0.912603,
		0.682312, -0.661036, -0.312221,
		0.730728, 0.629574, 0.263957,
		30.846970, 32.500549, 39.954468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822142, 31.620920, 39.893169>,  <30.335459, 32.059845, 39.769699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822142, 31.620920, 39.893169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914450, 31.957470, 40.088654>,  <30.969835, 32.159401, 40.205944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914450, 31.957470, 40.088654>,  <30.822142, 31.620920, 39.893169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914450, 31.957470, 40.088654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160332, -0.528282, 0.833794,
		0.959707, -0.114059, -0.256811,
		0.230770, 0.841373, 0.488709,
		30.983681, 32.209881, 40.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360989, 31.441816, 40.243290>,  <30.822142, 31.620920, 39.893169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360989, 31.441816, 40.243290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247213, 31.769396, 40.442654>,  <31.178947, 31.965944, 40.562271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247213, 31.769396, 40.442654>,  <31.360989, 31.441816, 40.243290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247213, 31.769396, 40.442654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131802, -0.481544, 0.866454,
		0.949590, 0.312146, 0.029031,
		-0.284440, 0.818950, 0.498412,
		31.161880, 32.015079, 40.592178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860271, 31.567249, 40.723129>,  <31.360989, 31.441816, 40.243290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860271, 31.567249, 40.723129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541611, 31.765417, 40.861641>,  <31.350414, 31.884317, 40.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541611, 31.765417, 40.861641>,  <31.860271, 31.567249, 40.723129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541611, 31.765417, 40.861641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155238, -0.385976, 0.909353,
		0.584165, 0.778192, 0.230580,
		-0.796651, 0.495418, 0.346279,
		31.302616, 31.914043, 40.965523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989641, 31.752821, 41.444714>,  <31.860271, 31.567249, 40.723129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989641, 31.752821, 41.444714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592730, 31.785267, 41.407192>,  <31.354582, 31.804735, 41.384678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592730, 31.785267, 41.407192>,  <31.989641, 31.752821, 41.444714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592730, 31.785267, 41.407192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118067, -0.386561, 0.914675,
		0.037933, 0.918690, 0.393154,
		-0.992281, 0.081115, -0.093804,
		31.295046, 31.809601, 41.379051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805857, 32.074200, 42.046074>,  <31.989641, 31.752821, 41.444714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805857, 32.074200, 42.046074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475372, 31.887489, 41.919903>,  <31.277082, 31.775463, 41.844200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475372, 31.887489, 41.919903>,  <31.805857, 32.074200, 42.046074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475372, 31.887489, 41.919903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204100, -0.273858, 0.939864,
		-0.525088, 0.840906, 0.130995,
		-0.826211, -0.466775, -0.315429,
		31.227509, 31.747458, 41.825275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299215, 32.122932, 42.653999>,  <31.805857, 32.074200, 42.046074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299215, 32.122932, 42.653999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147392, 31.840103, 42.415340>,  <31.056297, 31.670406, 42.272144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147392, 31.840103, 42.415340>,  <31.299215, 32.122932, 42.653999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147392, 31.840103, 42.415340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436240, -0.431932, 0.789386,
		-0.815861, 0.559900, -0.144508,
		-0.379559, -0.707069, -0.596648,
		31.033525, 31.627983, 42.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617409, 32.226921, 42.672657>,  <31.299215, 32.122932, 42.653999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617409, 32.226921, 42.672657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668743, 31.846001, 42.561905>,  <30.699545, 31.617449, 42.495453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668743, 31.846001, 42.561905>,  <30.617409, 32.226921, 42.672657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668743, 31.846001, 42.561905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534661, -0.301577, 0.789423,
		-0.835265, 0.046722, -0.547860,
		0.128338, -0.952296, -0.276877,
		30.707245, 31.560312, 42.478844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974934, 31.972429, 42.609360>,  <30.617409, 32.226921, 42.672657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974934, 31.972429, 42.609360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231342, 31.672016, 42.672665>,  <30.385187, 31.491768, 42.710648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231342, 31.672016, 42.672665>,  <29.974934, 31.972429, 42.609360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231342, 31.672016, 42.672665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499267, -0.251411, 0.829171,
		-0.582946, -0.610529, -0.536125,
		0.641020, -0.751031, 0.158257,
		30.423649, 31.446707, 42.720142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575628, 31.421400, 42.723816>,  <29.974934, 31.972429, 42.609360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575628, 31.421400, 42.723816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928450, 31.300295, 42.868214>,  <30.140142, 31.227631, 42.954853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928450, 31.300295, 42.868214>,  <29.575628, 31.421400, 42.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928450, 31.300295, 42.868214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460063, -0.388246, 0.798503,
		-0.101603, -0.870402, -0.481744,
		0.882054, -0.302763, 0.360993,
		30.193066, 31.209465, 42.976513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477535, 30.710995, 42.985329>,  <29.575628, 31.421400, 42.723816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477535, 30.710995, 42.985329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798965, 30.832653, 43.189980>,  <29.991823, 30.905647, 43.312771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798965, 30.832653, 43.189980>,  <29.477535, 30.710995, 42.985329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798965, 30.832653, 43.189980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430812, -0.295913, 0.852547,
		0.410697, -0.905500, -0.106758,
		0.803573, 0.304146, 0.511630,
		30.040037, 30.923897, 43.343468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770555, 30.109644, 43.492188>,  <29.477535, 30.710995, 42.985329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770555, 30.109644, 43.492188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925644, 30.450527, 43.632710>,  <30.018698, 30.655058, 43.717022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925644, 30.450527, 43.632710>,  <29.770555, 30.109644, 43.492188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925644, 30.450527, 43.632710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312926, -0.236789, 0.919787,
		0.867034, -0.466554, 0.174870,
		0.387723, 0.852208, 0.351301,
		30.041962, 30.706190, 43.738098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163235, 29.947224, 44.136478>,  <29.770555, 30.109644, 43.492188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163235, 29.947224, 44.136478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125843, 30.343582, 44.175224>,  <30.103409, 30.581398, 44.198471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125843, 30.343582, 44.175224>,  <30.163235, 29.947224, 44.136478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125843, 30.343582, 44.175224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283125, -0.119731, 0.951580,
		0.954517, 0.061527, 0.291740,
		-0.093478, 0.990898, 0.096866,
		30.097799, 30.640852, 44.204285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648335, 30.091379, 44.647858>,  <30.163235, 29.947224, 44.136478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648335, 30.091379, 44.647858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396013, 30.400791, 44.623398>,  <30.244621, 30.586439, 44.608723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396013, 30.400791, 44.623398>,  <30.648335, 30.091379, 44.647858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396013, 30.400791, 44.623398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147279, -0.041988, 0.988203,
		0.761837, 0.632368, 0.140411,
		-0.630804, 0.773530, -0.061146,
		30.206772, 30.632851, 44.605053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915596, 30.604004, 45.001976>,  <30.648335, 30.091379, 44.647858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915596, 30.604004, 45.001976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519093, 30.655224, 44.989250>,  <30.281191, 30.685957, 44.981617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519093, 30.655224, 44.989250>,  <30.915596, 30.604004, 45.001976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519093, 30.655224, 44.989250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046374, -0.112391, 0.992581,
		0.123526, 0.985379, 0.117346,
		-0.991257, 0.128051, -0.031812,
		30.221716, 30.693640, 44.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767017, 31.182833, 45.419353>,  <30.915596, 30.604004, 45.001976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767017, 31.182833, 45.419353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439581, 30.956327, 45.380863>,  <30.243120, 30.820425, 45.357769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439581, 30.956327, 45.380863>,  <30.767017, 31.182833, 45.419353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439581, 30.956327, 45.380863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161872, 0.066696, 0.984555,
		-0.551097, 0.821523, -0.146258,
		-0.818590, -0.566261, -0.096226,
		30.194004, 30.786449, 45.351994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246149, 31.461321, 45.848091>,  <30.767017, 31.182833, 45.419353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246149, 31.461321, 45.848091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154850, 31.074415, 45.803726>,  <30.100071, 30.842272, 45.777107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154850, 31.074415, 45.803726>,  <30.246149, 31.461321, 45.848091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154850, 31.074415, 45.803726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036187, -0.105415, 0.993770,
		-0.972930, 0.230839, -0.010942,
		-0.228248, -0.967265, -0.110915,
		30.086376, 30.784235, 45.770451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722969, 31.352715, 46.352089>,  <30.246149, 31.461321, 45.848091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722969, 31.352715, 46.352089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830812, 30.983524, 46.242233>,  <29.895519, 30.762011, 46.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830812, 30.983524, 46.242233>,  <29.722969, 31.352715, 46.352089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830812, 30.983524, 46.242233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134445, -0.318481, 0.938347,
		-0.953538, -0.216065, -0.209955,
		0.269610, -0.922977, -0.274635,
		29.911695, 30.706631, 46.159843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331884, 30.921688, 46.679466>,  <29.722969, 31.352715, 46.352089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331884, 30.921688, 46.679466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614773, 30.648445, 46.606579>,  <29.784506, 30.484499, 46.562847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614773, 30.648445, 46.606579>,  <29.331884, 30.921688, 46.679466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614773, 30.648445, 46.606579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145084, -0.392476, 0.908248,
		-0.691947, -0.615895, -0.376675,
		0.707220, -0.683108, -0.182216,
		29.826939, 30.443512, 46.551914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041327, 30.241510, 46.949909>,  <29.331884, 30.921688, 46.679466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041327, 30.241510, 46.949909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440464, 30.217081, 46.940289>,  <29.679947, 30.202423, 46.934517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440464, 30.217081, 46.940289>,  <29.041327, 30.241510, 46.949909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440464, 30.217081, 46.940289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008693, -0.240183, 0.970689,
		-0.065059, -0.968805, -0.239134,
		0.997843, -0.061074, -0.024048,
		29.739817, 30.198759, 46.933075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154966, 29.530252, 47.212383>,  <29.041327, 30.241510, 46.949909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154966, 29.530252, 47.212383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497036, 29.737354, 47.222240>,  <29.702278, 29.861614, 47.228153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497036, 29.737354, 47.222240>,  <29.154966, 29.530252, 47.212383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497036, 29.737354, 47.222240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185703, -0.350414, 0.918000,
		0.483931, -0.780475, -0.395814,
		0.855175, 0.517753, 0.024639,
		29.753588, 29.892681, 47.229633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774382, 29.082661, 47.405033>,  <29.154966, 29.530252, 47.212383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774382, 29.082661, 47.405033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835623, 29.463539, 47.510777>,  <29.872368, 29.692066, 47.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835623, 29.463539, 47.510777>,  <29.774382, 29.082661, 47.405033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835623, 29.463539, 47.510777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229591, -0.294468, 0.927673,
		0.961170, -0.081336, -0.263699,
		0.153104, 0.952194, 0.264360,
		29.881554, 29.749197, 47.590084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450335, 29.028612, 47.642292>,  <29.774382, 29.082661, 47.405033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450335, 29.028612, 47.642292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243145, 29.329802, 47.804642>,  <30.118832, 29.510515, 47.902050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243145, 29.329802, 47.804642>,  <30.450335, 29.028612, 47.642292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243145, 29.329802, 47.804642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230038, -0.334388, 0.913930,
		0.823883, 0.566760, -0.000008,
		-0.517976, 0.752973, 0.405873,
		30.087751, 29.555693, 47.926403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815626, 29.194662, 48.324074>,  <30.450335, 29.028612, 47.642292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815626, 29.194662, 48.324074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479139, 29.404556, 48.376240>,  <30.277248, 29.530493, 48.407539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479139, 29.404556, 48.376240>,  <30.815626, 29.194662, 48.324074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479139, 29.404556, 48.376240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013349, -0.261280, 0.965171,
		0.540535, 0.810175, 0.226798,
		-0.841215, 0.524737, 0.130416,
		30.226774, 29.561977, 48.415363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892258, 29.355381, 49.060589>,  <30.815626, 29.194662, 48.324074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892258, 29.355381, 49.060589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515409, 29.412539, 48.939270>,  <30.289301, 29.446833, 48.866478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515409, 29.412539, 48.939270>,  <30.892258, 29.355381, 49.060589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515409, 29.412539, 48.939270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332226, -0.276244, 0.901840,
		0.045085, 0.950405, 0.307729,
		-0.942122, 0.142895, -0.303295,
		30.232773, 29.455406, 48.848282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727034, 29.910681, 49.454910>,  <30.892258, 29.355381, 49.060589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727034, 29.910681, 49.454910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420467, 29.688169, 49.326435>,  <30.236528, 29.554663, 49.249348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420467, 29.688169, 49.326435>,  <30.727034, 29.910681, 49.454910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420467, 29.688169, 49.326435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251531, -0.200195, 0.946918,
		-0.591052, 0.806521, 0.013510,
		-0.766414, -0.556279, -0.321190,
		30.190544, 29.521286, 49.230080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207809, 30.031820, 49.801373>,  <30.727034, 29.910681, 49.454910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207809, 30.031820, 49.801373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072206, 29.678684, 49.671349>,  <29.990845, 29.466803, 49.593334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072206, 29.678684, 49.671349>,  <30.207809, 30.031820, 49.801373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072206, 29.678684, 49.671349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341378, -0.206531, 0.916955,
		-0.876661, 0.421824, -0.231367,
		-0.339009, -0.882842, -0.325060,
		29.970505, 29.413832, 49.573830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578440, 29.835670, 50.226292>,  <30.207809, 30.031820, 49.801373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578440, 29.835670, 50.226292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683033, 29.492765, 50.048874>,  <29.745789, 29.287024, 49.942425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.683033, 29.492765, 50.048874>,  <29.578440, 29.835670, 50.226292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683033, 29.492765, 50.048874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367599, -0.513348, 0.775464,
		-0.892467, -0.039726, -0.449361,
		0.261484, -0.857261, -0.443543,
		29.761478, 29.235588, 49.915810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928844, 29.445023, 50.169292>,  <29.578440, 29.835670, 50.226292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928844, 29.445023, 50.169292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228376, 29.180183, 50.157410>,  <29.408094, 29.021280, 50.150280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228376, 29.180183, 50.157410>,  <28.928844, 29.445023, 50.169292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228376, 29.180183, 50.157410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493954, -0.587421, 0.641051,
		-0.441888, -0.465364, -0.766923,
		0.748829, -0.662097, -0.029706,
		29.453026, 28.981554, 50.148499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631048, 28.795534, 50.106457>,  <28.928844, 29.445023, 50.169292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631048, 28.795534, 50.106457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991102, 28.756159, 50.276196>,  <29.207134, 28.732534, 50.378036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991102, 28.756159, 50.276196>,  <28.631048, 28.795534, 50.106457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991102, 28.756159, 50.276196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396872, -0.586906, 0.705715,
		0.179581, -0.803649, -0.567362,
		0.900135, -0.098438, 0.424343,
		29.261143, 28.726627, 50.403500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771362, 28.020006, 50.101032>,  <28.631048, 28.795534, 50.106457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771362, 28.020006, 50.101032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959679, 28.227060, 50.386803>,  <29.072668, 28.351294, 50.558266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959679, 28.227060, 50.386803>,  <28.771362, 28.020006, 50.101032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959679, 28.227060, 50.386803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282087, -0.678957, 0.677823,
		0.835933, -0.520643, -0.173628,
		0.470790, 0.517637, 0.714429,
		29.100916, 28.382351, 50.601131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131929, 27.565809, 50.646091>,  <28.771362, 28.020006, 50.101032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131929, 27.565809, 50.646091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031782, 27.901985, 50.838333>,  <28.971695, 28.103691, 50.953678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031782, 27.901985, 50.838333>,  <29.131929, 27.565809, 50.646091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031782, 27.901985, 50.838333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259702, -0.536518, 0.802934,
		0.932669, 0.076215, 0.352590,
		-0.250367, 0.840440, 0.480600,
		28.956673, 28.154118, 50.982513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577906, 27.805214, 51.299294>,  <29.131929, 27.565809, 50.646091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577906, 27.805214, 51.299294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187283, 27.891272, 51.296623>,  <28.952908, 27.942907, 51.295021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187283, 27.891272, 51.296623>,  <29.577906, 27.805214, 51.299294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187283, 27.891272, 51.296623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129178, -0.560978, 0.817690,
		0.172179, 0.799385, 0.575620,
		-0.976559, 0.215146, -0.006674,
		28.894316, 27.955816, 51.294621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604843, 28.240667, 51.868496>,  <29.577906, 27.805214, 51.299294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604843, 28.240667, 51.868496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301138, 28.003834, 51.760452>,  <29.118916, 27.861732, 51.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301138, 28.003834, 51.760452>,  <29.604843, 28.240667, 51.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301138, 28.003834, 51.760452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026389, -0.386695, 0.921830,
		-0.650251, 0.707037, 0.277978,
		-0.759261, -0.592086, -0.270107,
		29.073360, 27.826208, 51.679420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059526, 28.409363, 52.215275>,  <29.604843, 28.240667, 51.868496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059526, 28.409363, 52.215275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120813, 28.024454, 52.125336>,  <29.157585, 27.793509, 52.071373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120813, 28.024454, 52.125336>,  <29.059526, 28.409363, 52.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120813, 28.024454, 52.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156241, -0.201085, 0.967033,
		-0.975763, -0.183298, 0.119537,
		0.153218, -0.962272, -0.224849,
		29.166779, 27.735773, 52.057880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709198, 28.806149, 52.313168>,  <29.059526, 28.409363, 52.215275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709198, 28.806149, 52.313168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063082, 28.872982, 52.487236>,  <30.275412, 28.913082, 52.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063082, 28.872982, 52.487236>,  <29.709198, 28.806149, 52.313168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063082, 28.872982, 52.487236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459144, -0.151150, -0.875409,
		-0.080491, 0.974288, -0.210439,
		0.884708, 0.167084, 0.435172,
		30.328495, 28.923107, 52.617786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143335, 29.446367, 52.057178>,  <29.709198, 28.806149, 52.313168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143335, 29.446367, 52.057178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328182, 29.112619, 52.177361>,  <30.439091, 28.912371, 52.249470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328182, 29.112619, 52.177361>,  <30.143335, 29.446367, 52.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328182, 29.112619, 52.177361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218155, -0.221429, -0.950462,
		0.859567, 0.504770, 0.079696,
		0.462117, -0.834372, 0.300451,
		30.466818, 28.862309, 52.267494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696861, 29.271469, 51.675220>,  <30.143335, 29.446367, 52.057178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696861, 29.271469, 51.675220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679590, 28.902643, 51.829067>,  <30.669228, 28.681347, 51.921375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679590, 28.902643, 51.829067>,  <30.696861, 29.271469, 51.675220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679590, 28.902643, 51.829067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431031, -0.364499, -0.825441,
		0.901303, 0.130144, 0.413177,
		-0.043176, -0.922065, 0.384620,
		30.666637, 28.626024, 51.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359030, 28.905092, 51.735023>,  <30.696861, 29.271469, 51.675220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359030, 28.905092, 51.735023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077383, 28.623726, 51.696178>,  <30.908396, 28.454906, 51.672871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077383, 28.623726, 51.696178>,  <31.359030, 28.905092, 51.735023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077383, 28.623726, 51.696178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417167, -0.299105, -0.858200,
		0.574625, -0.644782, 0.504046,
		-0.704115, -0.703415, -0.097109,
		30.866148, 28.412701, 51.667046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643023, 28.147087, 51.586876>,  <31.359030, 28.905092, 51.735023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643023, 28.147087, 51.586876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273327, 28.203554, 51.444969>,  <31.051510, 28.237434, 51.359825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273327, 28.203554, 51.444969>,  <31.643023, 28.147087, 51.586876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273327, 28.203554, 51.444969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274255, -0.401000, -0.874062,
		-0.265651, -0.905136, 0.331903,
		-0.924237, 0.141169, -0.354763,
		30.996056, 28.245905, 51.338539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443350, 27.499893, 51.312206>,  <31.643023, 28.147087, 51.586876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443350, 27.499893, 51.312206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197412, 27.764359, 51.140236>,  <31.049850, 27.923037, 51.037056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197412, 27.764359, 51.140236>,  <31.443350, 27.499893, 51.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197412, 27.764359, 51.140236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331611, -0.277870, -0.901567,
		-0.715544, -0.696888, -0.048403,
		-0.614841, 0.661162, -0.429924,
		31.012960, 27.962708, 51.011257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966349, 27.142075, 50.822224>,  <31.443350, 27.499893, 51.312206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966349, 27.142075, 50.822224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048332, 27.520481, 50.721786>,  <31.097523, 27.747524, 50.661522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048332, 27.520481, 50.721786>,  <30.966349, 27.142075, 50.822224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048332, 27.520481, 50.721786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286201, -0.303254, -0.908915,
		-0.935993, 0.114425, -0.332904,
		0.204957, 0.946015, -0.251095,
		31.109819, 27.804285, 50.646458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719851, 27.193575, 50.133766>,  <30.966349, 27.142075, 50.822224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719851, 27.193575, 50.133766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953230, 27.515785, 50.175186>,  <31.093258, 27.709110, 50.200039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953230, 27.515785, 50.175186>,  <30.719851, 27.193575, 50.133766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953230, 27.515785, 50.175186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296285, -0.092401, -0.950619,
		-0.756178, 0.585315, -0.292576,
		0.583446, 0.805523, 0.103548,
		31.128263, 27.757442, 50.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570190, 27.589996, 49.564686>,  <30.719851, 27.193575, 50.133766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570190, 27.589996, 49.564686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912443, 27.731655, 49.715668>,  <31.117794, 27.816650, 49.806259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912443, 27.731655, 49.715668>,  <30.570190, 27.589996, 49.564686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912443, 27.731655, 49.715668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404463, -0.002445, -0.914551,
		-0.322961, 0.935187, -0.145331,
		0.855632, 0.354145, 0.377459,
		31.169132, 27.837898, 49.828907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749760, 28.206120, 49.175495>,  <30.570190, 27.589996, 49.564686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749760, 28.206120, 49.175495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092377, 28.077362, 49.336849>,  <31.297947, 28.000107, 49.433662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092377, 28.077362, 49.336849>,  <30.749760, 28.206120, 49.175495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092377, 28.077362, 49.336849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451398, 0.088434, -0.887930,
		0.250147, 0.942636, 0.221050,
		0.856543, -0.321895, 0.403382,
		31.349340, 27.980793, 49.457863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295200, 28.648350, 48.975433>,  <30.749760, 28.206120, 49.175495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295200, 28.648350, 48.975433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477581, 28.301966, 49.057629>,  <31.587009, 28.094135, 49.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477581, 28.301966, 49.057629>,  <31.295200, 28.648350, 48.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477581, 28.301966, 49.057629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599139, 0.127918, -0.790360,
		0.658134, 0.483479, 0.577155,
		0.455951, -0.865959, 0.205484,
		31.614367, 28.042177, 49.119274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056530, 28.748121, 48.815098>,  <31.295200, 28.648350, 48.975433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056530, 28.748121, 48.815098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004681, 28.351971, 48.834496>,  <31.973572, 28.114281, 48.846134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004681, 28.351971, 48.834496>,  <32.056530, 28.748121, 48.815098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004681, 28.351971, 48.834496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403970, -0.097406, -0.909572,
		0.905542, -0.098311, 0.412708,
		-0.129621, -0.990377, 0.048491,
		31.965794, 28.054857, 48.849041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700787, 28.565319, 48.579147>,  <32.056530, 28.748121, 48.815098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700787, 28.565319, 48.579147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468750, 28.240206, 48.557705>,  <32.329529, 28.045137, 48.544842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468750, 28.240206, 48.557705>,  <32.700787, 28.565319, 48.579147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468750, 28.240206, 48.557705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399805, -0.226775, -0.888104,
		0.709682, -0.536613, 0.456506,
		-0.580092, -0.812785, -0.053603,
		32.294724, 27.996370, 48.541626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152451, 27.954433, 48.487671>,  <32.700787, 28.565319, 48.579147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152451, 27.954433, 48.487671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792553, 27.868883, 48.335506>,  <32.576614, 27.817553, 48.244209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792553, 27.868883, 48.335506>,  <33.152451, 27.954433, 48.487671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792553, 27.868883, 48.335506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417494, -0.167957, -0.893023,
		0.127102, -0.962314, 0.240410,
		-0.899747, -0.213875, -0.380412,
		32.522629, 27.804720, 48.221382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347012, 27.526186, 48.015949>,  <33.152451, 27.954433, 48.487671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347012, 27.526186, 48.015949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968460, 27.589489, 47.903297>,  <32.741329, 27.627472, 47.835709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968460, 27.589489, 47.903297>,  <33.347012, 27.526186, 48.015949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968460, 27.589489, 47.903297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276168, -0.055955, -0.959479,
		-0.167606, -0.985811, 0.009248,
		-0.946382, 0.158260, -0.281628,
		32.684544, 27.636967, 47.818810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239861, 27.150595, 47.432442>,  <33.347012, 27.526186, 48.015949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239861, 27.150595, 47.432442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929558, 27.402927, 47.426048>,  <32.743378, 27.554327, 47.422211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929558, 27.402927, 47.426048>,  <33.239861, 27.150595, 47.432442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929558, 27.402927, 47.426048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170365, 0.184979, -0.967863,
		-0.607603, -0.753546, -0.250971,
		-0.775754, 0.630833, -0.015984,
		32.696831, 27.592176, 47.421253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905102, 26.914337, 46.904350>,  <33.239861, 27.150595, 47.432442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905102, 26.914337, 46.904350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800488, 27.297632, 46.950623>,  <32.737720, 27.527609, 46.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800488, 27.297632, 46.950623>,  <32.905102, 26.914337, 46.904350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800488, 27.297632, 46.950623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033088, 0.128684, -0.991134,
		-0.964626, -0.255390, -0.065362,
		-0.261536, 0.958236, 0.115682,
		32.722027, 27.585104, 46.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432583, 26.987720, 46.368095>,  <32.905102, 26.914337, 46.904350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432583, 26.987720, 46.368095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532780, 27.363590, 46.461273>,  <32.592899, 27.589111, 46.517181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532780, 27.363590, 46.461273>,  <32.432583, 26.987720, 46.368095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532780, 27.363590, 46.461273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066857, 0.256835, -0.964140,
		-0.965807, 0.225937, 0.127160,
		0.250494, 0.939675, 0.232948,
		32.607929, 27.645493, 46.531158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998516, 27.460108, 46.067383>,  <32.432583, 26.987720, 46.368095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998516, 27.460108, 46.067383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297459, 27.715614, 46.140522>,  <32.476826, 27.868919, 46.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297459, 27.715614, 46.140522>,  <31.998516, 27.460108, 46.067383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297459, 27.715614, 46.140522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083455, 0.363269, -0.927939,
		-0.659161, 0.678242, 0.324800,
		0.747357, 0.638767, 0.182849,
		32.521667, 27.907244, 46.195377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764219, 28.134333, 45.907566>,  <31.998516, 27.460108, 46.067383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764219, 28.134333, 45.907566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161858, 28.159164, 45.871975>,  <32.400440, 28.174063, 45.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.161858, 28.159164, 45.871975>,  <31.764219, 28.134333, 45.907566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161858, 28.159164, 45.871975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108470, 0.552711, -0.826284,
		-0.002118, 0.831057, 0.556183,
		0.994097, 0.062079, -0.088974,
		32.460087, 28.177788, 45.845284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866060, 28.819923, 45.660912>,  <31.764219, 28.134333, 45.907566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866060, 28.819923, 45.660912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213688, 28.641264, 45.575851>,  <32.422264, 28.534069, 45.524815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213688, 28.641264, 45.575851>,  <31.866060, 28.819923, 45.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213688, 28.641264, 45.575851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041515, 0.362505, -0.931057,
		0.492942, 0.817983, 0.296500,
		0.869071, -0.446648, -0.212652,
		32.474411, 28.507269, 45.512054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276249, 29.291483, 45.155533>,  <31.866060, 28.819923, 45.660912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276249, 29.291483, 45.155533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382736, 28.909855, 45.100582>,  <32.446629, 28.680878, 45.067612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382736, 28.909855, 45.100582>,  <32.276249, 29.291483, 45.155533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382736, 28.909855, 45.100582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074097, 0.162358, -0.983946,
		0.961060, 0.251766, 0.113917,
		0.266219, -0.954072, -0.137381,
		32.462601, 28.623632, 45.059368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817894, 29.361429, 44.665184>,  <32.276249, 29.291483, 45.155533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817894, 29.361429, 44.665184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743919, 28.968813, 44.645691>,  <32.699535, 28.733244, 44.633995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743919, 28.968813, 44.645691>,  <32.817894, 29.361429, 44.665184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743919, 28.968813, 44.645691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321356, -0.013539, -0.946862,
		0.928724, -0.190772, 0.317928,
		-0.184939, -0.981541, -0.048732,
		32.688438, 28.674351, 44.631073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366547, 29.081425, 44.334988>,  <32.817894, 29.361429, 44.665184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366547, 29.081425, 44.334988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119923, 28.767694, 44.307594>,  <32.971947, 28.579456, 44.291157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119923, 28.767694, 44.307594>,  <33.366547, 29.081425, 44.334988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119923, 28.767694, 44.307594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307292, -0.159649, -0.938128,
		0.724862, -0.599457, 0.339449,
		-0.616560, -0.784323, -0.068484,
		32.934956, 28.532398, 44.287048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683968, 28.516508, 43.950653>,  <33.366547, 29.081425, 44.334988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683968, 28.516508, 43.950653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287071, 28.480459, 43.916389>,  <33.048935, 28.458830, 43.895832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287071, 28.480459, 43.916389>,  <33.683968, 28.516508, 43.950653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287071, 28.480459, 43.916389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106902, -0.266590, -0.957863,
		0.063491, -0.959587, 0.274156,
		-0.992241, -0.090124, -0.085655,
		32.989399, 28.453423, 43.890694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597542, 27.917360, 43.477051>,  <33.683968, 28.516508, 43.950653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597542, 27.917360, 43.477051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241367, 28.099401, 43.478424>,  <33.027664, 28.208626, 43.479248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241367, 28.099401, 43.478424>,  <33.597542, 27.917360, 43.477051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241367, 28.099401, 43.478424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116249, -0.220131, -0.968519,
		-0.440020, -0.862799, 0.248918,
		-0.890432, 0.455104, 0.003438,
		32.974239, 28.235933, 43.479454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121681, 27.556738, 43.068428>,  <33.597542, 27.917360, 43.477051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121681, 27.556738, 43.068428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 27.926771, 43.074005>,  <32.878796, 28.148790, 43.077351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969879, 27.926771, 43.074005>,  <33.121681, 27.556738, 43.068428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969879, 27.926771, 43.074005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105791, -0.028419, -0.993982,
		-0.919120, -0.378700, 0.108651,
		-0.379509, 0.925083, 0.013943,
		32.856026, 28.204296, 43.078190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688591, 27.599203, 42.503639>,  <33.121681, 27.556738, 43.068428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688591, 27.599203, 42.503639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732777, 27.985172, 42.598907>,  <32.759289, 28.216753, 42.656067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732777, 27.985172, 42.598907>,  <32.688591, 27.599203, 42.503639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732777, 27.985172, 42.598907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119403, 0.225013, -0.967012,
		-0.986681, 0.135261, -0.090358,
		0.110467, 0.964922, 0.238167,
		32.765915, 28.274649, 42.670357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185432, 27.975388, 42.087769>,  <32.688591, 27.599203, 42.503639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185432, 27.975388, 42.087769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456684, 28.244333, 42.206467>,  <32.619434, 28.405701, 42.277687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456684, 28.244333, 42.206467>,  <32.185432, 27.975388, 42.087769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456684, 28.244333, 42.206467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052174, 0.358713, -0.931989,
		-0.733085, 0.647495, 0.208175,
		0.678133, 0.672366, 0.296749,
		32.660126, 28.446043, 42.295490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110271, 28.578402, 41.656754>,  <32.185432, 27.975388, 42.087769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110271, 28.578402, 41.656754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482121, 28.633404, 41.793510>,  <32.705231, 28.666405, 41.875565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482121, 28.633404, 41.793510>,  <32.110271, 28.578402, 41.656754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482121, 28.633404, 41.793510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219920, 0.537440, -0.814121,
		-0.295693, 0.832016, 0.469377,
		0.929624, 0.137505, 0.341894,
		32.761009, 28.674656, 41.896080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302776, 29.255056, 41.501030>,  <32.110271, 28.578402, 41.656754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302776, 29.255056, 41.501030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661682, 29.087214, 41.555939>,  <32.877026, 28.986507, 41.588882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661682, 29.087214, 41.555939>,  <32.302776, 29.255056, 41.501030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661682, 29.087214, 41.555939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370531, 0.546681, -0.750897,
		0.240041, 0.724617, 0.645996,
		0.897267, -0.419608, 0.137267,
		32.930862, 28.961330, 41.597118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791927, 29.868608, 41.565922>,  <32.302776, 29.255056, 41.501030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791927, 29.868608, 41.565922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003891, 29.555025, 41.436550>,  <33.131069, 29.366875, 41.358925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.003891, 29.555025, 41.436550>,  <32.791927, 29.868608, 41.565922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003891, 29.555025, 41.436550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324163, 0.539664, -0.776970,
		0.783655, 0.306879, 0.540102,
		0.529909, -0.783957, -0.323431,
		33.162865, 29.319838, 41.339520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394493, 30.163992, 41.495537>,  <32.791927, 29.868608, 41.565922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394493, 30.163992, 41.495537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435280, 29.815889, 41.302765>,  <33.459751, 29.607029, 41.187099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435280, 29.815889, 41.302765>,  <33.394493, 30.163992, 41.495537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435280, 29.815889, 41.302765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336927, 0.486037, -0.806380,
		0.935993, -0.080152, 0.342772,
		0.101967, -0.870255, -0.481933,
		33.465870, 29.554813, 41.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955696, 30.186148, 41.267754>,  <33.394493, 30.163992, 41.495537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955696, 30.186148, 41.267754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832550, 29.898926, 41.018074>,  <33.758663, 29.726593, 40.868267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832550, 29.898926, 41.018074>,  <33.955696, 30.186148, 41.267754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832550, 29.898926, 41.018074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277737, 0.559658, -0.780798,
		0.909989, -0.413744, 0.027130,
		-0.307866, -0.718053, -0.624195,
		33.740189, 29.683510, 40.830814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515526, 30.065409, 40.861923>,  <33.955696, 30.186148, 41.267754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515526, 30.065409, 40.861923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191410, 29.940479, 40.663578>,  <33.996941, 29.865520, 40.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191410, 29.940479, 40.663578>,  <34.515526, 30.065409, 40.861923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191410, 29.940479, 40.663578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378665, 0.366732, -0.849777,
		0.447257, -0.876333, -0.178893,
		-0.810293, -0.312328, -0.495860,
		33.948322, 29.846781, 40.514820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719330, 29.650808, 40.266773>,  <34.515526, 30.065409, 40.861923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719330, 29.650808, 40.266773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354366, 29.786932, 40.175823>,  <34.135387, 29.868607, 40.121254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354366, 29.786932, 40.175823>,  <34.719330, 29.650808, 40.266773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354366, 29.786932, 40.175823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335271, 0.302831, -0.892125,
		-0.234740, -0.890215, -0.390401,
		-0.912409, 0.340308, -0.227377,
		34.080643, 29.889025, 40.107609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735336, 29.474449, 39.604198>,  <34.719330, 29.650808, 40.266773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735336, 29.474449, 39.604198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487476, 29.770582, 39.708462>,  <34.338760, 29.948261, 39.771019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487476, 29.770582, 39.708462>,  <34.735336, 29.474449, 39.604198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487476, 29.770582, 39.708462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043229, 0.363785, -0.930480,
		-0.783686, -0.565305, -0.257424,
		-0.619651, 0.740332, 0.260655,
		34.301582, 29.992682, 39.786659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228600, 29.400152, 39.156574>,  <34.735336, 29.474449, 39.604198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228600, 29.400152, 39.156574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191013, 29.766958, 39.311623>,  <34.168461, 29.987041, 39.404652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191013, 29.766958, 39.311623>,  <34.228600, 29.400152, 39.156574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191013, 29.766958, 39.311623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071408, 0.394548, -0.916096,
		-0.993011, -0.058402, -0.102557,
		-0.093966, 0.917017, 0.387621,
		34.162823, 30.042063, 39.427910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933990, 29.827917, 38.633335>,  <34.228600, 29.400152, 39.156574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933990, 29.827917, 38.633335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065262, 30.118132, 38.875294>,  <34.144024, 30.292261, 39.020470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065262, 30.118132, 38.875294>,  <33.933990, 29.827917, 38.633335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065262, 30.118132, 38.875294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283326, 0.535271, -0.795746,
		-0.901125, 0.432527, -0.029900,
		0.328177, 0.725538, 0.604892,
		34.163715, 30.335793, 39.056763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803974, 30.556952, 38.257133>,  <33.933990, 29.827917, 38.633335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803974, 30.556952, 38.257133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090057, 30.626730, 38.527851>,  <34.261707, 30.668596, 38.690281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090057, 30.626730, 38.527851>,  <33.803974, 30.556952, 38.257133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090057, 30.626730, 38.527851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408610, 0.681253, -0.607397,
		-0.567025, 0.710959, 0.415957,
		0.715206, 0.174445, 0.676793,
		34.304619, 30.679064, 38.730888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973286, 31.284191, 38.202831>,  <33.803974, 30.556952, 38.257133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973286, 31.284191, 38.202831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291119, 31.113607, 38.375698>,  <34.481819, 31.011257, 38.479420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291119, 31.113607, 38.375698>,  <33.973286, 31.284191, 38.202831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291119, 31.113607, 38.375698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607121, 0.550427, -0.573091,
		0.006522, 0.717748, 0.696272,
		0.794583, -0.426459, 0.432170,
		34.529495, 30.985670, 38.505348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361530, 31.817986, 38.419559>,  <33.973286, 31.284191, 38.202831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361530, 31.817986, 38.419559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617336, 31.511854, 38.390461>,  <34.770821, 31.328176, 38.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617336, 31.511854, 38.390461>,  <34.361530, 31.817986, 38.419559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617336, 31.511854, 38.390461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547050, 0.519517, -0.656383,
		0.540142, 0.379970, 0.750912,
		0.639517, -0.765327, -0.072750,
		34.809193, 31.282257, 38.368637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980644, 32.137016, 38.434414>,  <34.361530, 31.817986, 38.419559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980644, 32.137016, 38.434414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079670, 31.775505, 38.294758>,  <35.139084, 31.558599, 38.210964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079670, 31.775505, 38.294758>,  <34.980644, 32.137016, 38.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079670, 31.775505, 38.294758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582362, 0.426805, -0.691875,
		0.774317, -0.032045, 0.631986,
		0.247564, -0.903776, -0.349144,
		35.153938, 31.504372, 38.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676674, 32.031616, 38.442596>,  <34.980644, 32.137016, 38.434414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676674, 32.031616, 38.442596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514851, 31.815998, 38.147095>,  <35.417755, 31.686628, 37.969791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514851, 31.815998, 38.147095>,  <35.676674, 32.031616, 38.442596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514851, 31.815998, 38.147095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428659, 0.601805, -0.673856,
		0.807826, -0.589291, -0.012401,
		-0.404560, -0.539042, -0.738758,
		35.393482, 31.654285, 37.925468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173534, 31.979773, 37.899502>,  <35.676674, 32.031616, 38.442596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173534, 31.979773, 37.899502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825634, 31.889322, 37.724049>,  <35.616894, 31.835052, 37.618778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825634, 31.889322, 37.724049>,  <36.173534, 31.979773, 37.899502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825634, 31.889322, 37.724049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302677, 0.457575, -0.836069,
		0.389760, -0.859938, -0.329536,
		-0.869755, -0.226123, -0.438628,
		35.564709, 31.821484, 37.592461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685829, 31.742409, 38.335373>,  <36.173534, 31.979773, 37.899502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685829, 31.742409, 38.335373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 32.084793, 38.326000>,  <37.016396, 32.290226, 38.320377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892433, 32.084793, 38.326000>,  <36.685829, 31.742409, 38.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892433, 32.084793, 38.326000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441914, -0.243024, 0.863511,
		0.733439, -0.456363, -0.503786,
		0.516506, 0.855963, -0.023430,
		37.047386, 32.341583, 38.318970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503220, 31.587055, 38.369930>,  <36.685829, 31.742409, 38.335373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503220, 31.587055, 38.369930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375591, 31.933783, 38.523197>,  <37.299015, 32.141819, 38.615158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375591, 31.933783, 38.523197>,  <37.503220, 31.587055, 38.369930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375591, 31.933783, 38.523197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332259, -0.276331, 0.901801,
		0.887581, 0.415046, -0.199841,
		-0.319067, 0.866821, 0.383169,
		37.279873, 32.193829, 38.638149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068508, 31.961956, 38.705811>,  <37.503220, 31.587055, 38.369930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068508, 31.961956, 38.705811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702976, 32.046082, 38.844765>,  <37.483658, 32.096558, 38.928139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702976, 32.046082, 38.844765>,  <38.068508, 31.961956, 38.705811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702976, 32.046082, 38.844765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296430, -0.239208, 0.924613,
		0.277555, 0.947918, 0.156253,
		-0.913834, 0.210312, 0.347385,
		37.428825, 32.109177, 38.948978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160660, 32.442593, 39.337894>,  <38.068508, 31.961956, 38.705811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160660, 32.442593, 39.337894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820740, 32.232513, 39.355770>,  <37.616787, 32.106464, 39.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820740, 32.232513, 39.355770>,  <38.160660, 32.442593, 39.337894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820740, 32.232513, 39.355770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161751, -0.179151, 0.970434,
		-0.501666, 0.831907, 0.237195,
		-0.849805, -0.525200, 0.044688,
		37.565800, 32.074955, 39.369175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972317, 32.627663, 39.987423>,  <38.160660, 32.442593, 39.337894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972317, 32.627663, 39.987423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697018, 32.347656, 39.911213>,  <37.531837, 32.179653, 39.865486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697018, 32.347656, 39.911213>,  <37.972317, 32.627663, 39.987423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697018, 32.347656, 39.911213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038497, -0.297493, 0.953948,
		-0.724455, 0.649216, 0.231697,
		-0.688247, -0.700012, -0.190527,
		37.490543, 32.137653, 39.854053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308857, 32.761871, 40.351818>,  <37.972317, 32.627663, 39.987423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308857, 32.761871, 40.351818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323360, 32.364796, 40.305767>,  <37.332062, 32.126549, 40.278137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323360, 32.364796, 40.305767>,  <37.308857, 32.761871, 40.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323360, 32.364796, 40.305767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240761, -0.120487, 0.963077,
		-0.969907, -0.007198, -0.243369,
		0.036255, -0.992689, -0.115128,
		37.334236, 32.066990, 40.271229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661999, 32.510845, 40.528156>,  <37.308857, 32.761871, 40.351818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661999, 32.510845, 40.528156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903816, 32.193558, 40.557369>,  <37.048908, 32.003185, 40.574898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903816, 32.193558, 40.557369>,  <36.661999, 32.510845, 40.528156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903816, 32.193558, 40.557369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436410, -0.253114, 0.863411,
		-0.666386, -0.553844, -0.499186,
		0.604546, -0.793215, 0.073031,
		37.085178, 31.955593, 40.579277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244858, 31.993507, 41.034130>,  <36.661999, 32.510845, 40.528156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244858, 31.993507, 41.034130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618347, 31.850395, 41.039040>,  <36.842442, 31.764528, 41.041985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618347, 31.850395, 41.039040>,  <36.244858, 31.993507, 41.034130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618347, 31.850395, 41.039040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104887, -0.240616, 0.964937,
		-0.342285, -0.902272, -0.262195,
		0.933723, -0.357784, 0.012277,
		36.898464, 31.743061, 41.042725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166142, 31.336065, 41.303516>,  <36.244858, 31.993507, 41.034130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166142, 31.336065, 41.303516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553257, 31.405577, 41.376385>,  <36.785526, 31.447283, 41.420105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553257, 31.405577, 41.376385>,  <36.166142, 31.336065, 41.303516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553257, 31.405577, 41.376385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072411, -0.500882, 0.862481,
		0.241126, -0.847891, -0.472164,
		0.967788, 0.173777, 0.182173,
		36.843594, 31.457710, 41.431038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495934, 30.636183, 41.412651>,  <36.166142, 31.336065, 41.303516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495934, 30.636183, 41.412651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741646, 30.901102, 41.584240>,  <36.889072, 31.060053, 41.687195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741646, 30.901102, 41.584240>,  <36.495934, 30.636183, 41.412651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741646, 30.901102, 41.584240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058645, -0.503814, 0.861819,
		0.786904, -0.554558, -0.270644,
		0.614283, 0.662297, 0.428975,
		36.925930, 31.099791, 41.712933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967125, 30.219772, 41.816650>,  <36.495934, 30.636183, 41.412651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967125, 30.219772, 41.816650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010826, 30.588795, 41.964684>,  <37.037045, 30.810207, 42.053501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010826, 30.588795, 41.964684>,  <36.967125, 30.219772, 41.816650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010826, 30.588795, 41.964684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152393, -0.352363, 0.923373,
		0.982263, -0.157275, 0.102096,
		0.109249, 0.922554, 0.370081,
		37.043602, 30.865561, 42.075706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616959, 30.245497, 42.340359>,  <36.967125, 30.219772, 41.816650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616959, 30.245497, 42.340359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328175, 30.514210, 42.406666>,  <37.154903, 30.675438, 42.446449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328175, 30.514210, 42.406666>,  <37.616959, 30.245497, 42.340359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328175, 30.514210, 42.406666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006720, -0.246370, 0.969153,
		0.691901, 0.698576, 0.182384,
		-0.721961, 0.671783, 0.165770,
		37.111588, 30.715744, 42.456398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778770, 30.466803, 42.979351>,  <37.616959, 30.245497, 42.340359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778770, 30.466803, 42.979351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399239, 30.587090, 42.940781>,  <37.171520, 30.659262, 42.917641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399239, 30.587090, 42.940781>,  <37.778770, 30.466803, 42.979351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399239, 30.587090, 42.940781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170447, -0.230623, 0.957998,
		0.265847, 0.925410, 0.270078,
		-0.948827, 0.300715, -0.096423,
		37.114590, 30.677303, 42.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615227, 30.776493, 43.586021>,  <37.778770, 30.466803, 42.979351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615227, 30.776493, 43.586021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256901, 30.710379, 43.420998>,  <37.041904, 30.670710, 43.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256901, 30.710379, 43.420998>,  <37.615227, 30.776493, 43.586021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256901, 30.710379, 43.420998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377416, -0.207266, 0.902551,
		-0.234689, 0.964220, 0.123289,
		-0.895812, -0.165288, -0.412555,
		36.988159, 30.660791, 43.297230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146126, 31.074678, 44.075829>,  <37.615227, 30.776493, 43.586021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146126, 31.074678, 44.075829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900673, 30.850458, 43.853394>,  <36.753403, 30.715925, 43.719933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900673, 30.850458, 43.853394>,  <37.146126, 31.074678, 44.075829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900673, 30.850458, 43.853394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621812, -0.090980, 0.777864,
		-0.486626, 0.823107, -0.292729,
		-0.613633, -0.560551, -0.556091,
		36.716583, 30.682293, 43.686565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538185, 31.408073, 44.157681>,  <37.146126, 31.074678, 44.075829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538185, 31.408073, 44.157681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477501, 31.021187, 44.076214>,  <36.441090, 30.789055, 44.027336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477501, 31.021187, 44.076214>,  <36.538185, 31.408073, 44.157681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477501, 31.021187, 44.076214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538393, -0.091933, 0.837664,
		-0.828924, 0.236736, -0.506794,
		-0.151714, -0.967215, -0.203662,
		36.431988, 30.731022, 44.015114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931053, 31.288916, 44.104691>,  <36.538185, 31.408073, 44.157681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931053, 31.288916, 44.104691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984543, 30.907211, 44.211655>,  <36.016636, 30.678188, 44.275833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984543, 30.907211, 44.211655>,  <35.931053, 31.288916, 44.104691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984543, 30.907211, 44.211655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748433, 0.079626, 0.658413,
		-0.649589, -0.288183, -0.703551,
		0.133723, -0.954259, 0.267410,
		36.024658, 30.620934, 44.291878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301666, 31.008064, 44.177391>,  <35.931053, 31.288916, 44.104691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301666, 31.008064, 44.177391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542507, 30.747663, 44.362289>,  <35.687012, 30.591423, 44.473228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542507, 30.747663, 44.362289>,  <35.301666, 31.008064, 44.177391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542507, 30.747663, 44.362289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663539, -0.085990, 0.743184,
		-0.444066, -0.754189, -0.483740,
		0.602098, -0.651003, 0.462248,
		35.723137, 30.552362, 44.500965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903904, 30.413189, 44.324089>,  <35.301666, 31.008064, 44.177391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903904, 30.413189, 44.324089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201584, 30.331186, 44.578377>,  <35.380192, 30.281984, 44.730949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201584, 30.331186, 44.578377>,  <34.903904, 30.413189, 44.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201584, 30.331186, 44.578377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663451, -0.116504, 0.739094,
		-0.077454, -0.971802, -0.222713,
		0.744200, -0.205005, 0.635719,
		35.424843, 30.269684, 44.769093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772133, 29.755617, 44.684212>,  <34.903904, 30.413189, 44.324089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772133, 29.755617, 44.684212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032406, 29.954250, 44.913998>,  <35.188568, 30.073431, 45.051868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032406, 29.954250, 44.913998>,  <34.772133, 29.755617, 44.684212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032406, 29.954250, 44.913998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583542, -0.157084, 0.796746,
		0.485892, -0.853655, 0.187567,
		0.650683, 0.496585, 0.574469,
		35.227612, 30.103226, 45.086338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905853, 29.264647, 45.141670>,  <34.772133, 29.755617, 44.684212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905853, 29.264647, 45.141670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014160, 29.607571, 45.316807>,  <35.079144, 29.813326, 45.421886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014160, 29.607571, 45.316807>,  <34.905853, 29.264647, 45.141670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014160, 29.607571, 45.316807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287814, -0.361928, 0.886663,
		0.918612, -0.366096, 0.148748,
		0.270768, 0.857311, 0.437839,
		35.095390, 29.864763, 45.448158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332958, 29.046976, 45.722023>,  <34.905853, 29.264647, 45.141670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332958, 29.046976, 45.722023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179768, 29.408062, 45.800438>,  <35.087852, 29.624714, 45.847488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179768, 29.408062, 45.800438>,  <35.332958, 29.046976, 45.722023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179768, 29.408062, 45.800438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360977, -0.341594, 0.867761,
		0.850307, 0.261571, 0.456683,
		-0.382981, 0.902715, 0.196039,
		35.064873, 29.678877, 45.859249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420315, 29.182558, 46.408310>,  <35.332958, 29.046976, 45.722023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420315, 29.182558, 46.408310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119686, 29.428709, 46.313267>,  <34.939308, 29.576399, 46.256241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119686, 29.428709, 46.313267>,  <35.420315, 29.182558, 46.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119686, 29.428709, 46.313267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493690, -0.285820, 0.821327,
		0.437511, 0.734588, 0.518618,
		-0.751568, 0.615376, -0.237609,
		34.894215, 29.613321, 46.241985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447334, 29.484335, 47.061195>,  <35.420315, 29.182558, 46.408310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447334, 29.484335, 47.061195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121700, 29.657867, 46.906765>,  <34.926319, 29.761988, 46.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.121700, 29.657867, 46.906765>,  <35.447334, 29.484335, 47.061195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121700, 29.657867, 46.906765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478631, -0.124694, 0.869117,
		0.328910, 0.892323, 0.309157,
		-0.814083, 0.433833, -0.386080,
		34.877476, 29.788017, 46.790939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209358, 30.100031, 47.452686>,  <35.447334, 29.484335, 47.061195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209358, 30.100031, 47.452686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882389, 29.968533, 47.263477>,  <34.686207, 29.889633, 47.149952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882389, 29.968533, 47.263477>,  <35.209358, 30.100031, 47.452686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882389, 29.968533, 47.263477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530588, 0.109977, 0.840465,
		-0.224279, 0.937993, -0.264327,
		-0.817420, -0.328747, -0.473023,
		34.637161, 29.869909, 47.121571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634247, 30.562155, 47.692356>,  <35.209358, 30.100031, 47.452686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634247, 30.562155, 47.692356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443527, 30.235899, 47.561272>,  <34.329098, 30.040146, 47.482620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443527, 30.235899, 47.561272>,  <34.634247, 30.562155, 47.692356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443527, 30.235899, 47.561272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793774, 0.239361, 0.559133,
		-0.377610, 0.526722, -0.761561,
		-0.476796, -0.815641, -0.327713,
		34.300488, 29.991207, 47.462959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023312, 30.818363, 47.569324>,  <34.634247, 30.562155, 47.692356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023312, 30.818363, 47.569324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968273, 30.426664, 47.628849>,  <33.935249, 30.191645, 47.664566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968273, 30.426664, 47.628849>,  <34.023312, 30.818363, 47.569324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968273, 30.426664, 47.628849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739045, 0.201529, 0.642805,
		-0.659455, -0.021534, -0.751436,
		-0.137594, -0.979246, 0.148814,
		33.926994, 30.132891, 47.673492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362503, 30.833336, 47.526035>,  <34.023312, 30.818363, 47.569324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362503, 30.833336, 47.526035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433189, 30.494572, 47.726639>,  <33.475601, 30.291313, 47.847000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433189, 30.494572, 47.726639>,  <33.362503, 30.833336, 47.526035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433189, 30.494572, 47.726639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659235, 0.276516, 0.699248,
		-0.730876, -0.454184, -0.509447,
		0.176717, -0.846909, 0.501513,
		33.486206, 30.240499, 47.877094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729294, 30.503954, 47.694653>,  <33.362503, 30.833336, 47.526035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729294, 30.503954, 47.694653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007610, 30.375111, 47.951439>,  <33.174599, 30.297806, 48.105511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007610, 30.375111, 47.951439>,  <32.729294, 30.503954, 47.694653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007610, 30.375111, 47.951439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647171, 0.106504, 0.754869,
		-0.311520, -0.940694, -0.134354,
		0.695791, -0.322107, 0.641968,
		33.216347, 30.278479, 48.144028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337082, 30.134066, 48.233276>,  <32.729294, 30.503954, 47.694653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337082, 30.134066, 48.233276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700798, 30.184120, 48.392040>,  <32.919025, 30.214153, 48.487297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700798, 30.184120, 48.392040>,  <32.337082, 30.134066, 48.233276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700798, 30.184120, 48.392040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409053, 0.093125, 0.907746,
		0.076602, -0.987763, 0.135853,
		0.909290, 0.125107, 0.396914,
		32.973583, 30.221661, 48.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403896, 29.715357, 48.886944>,  <32.337082, 30.134066, 48.233276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403896, 29.715357, 48.886944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680016, 30.001820, 48.928146>,  <32.845688, 30.173697, 48.952869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680016, 30.001820, 48.928146>,  <32.403896, 29.715357, 48.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680016, 30.001820, 48.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279065, 0.132181, 0.951131,
		0.667544, -0.685308, 0.291098,
		0.690296, 0.716157, 0.103009,
		32.887104, 30.216667, 48.959049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744465, 29.581236, 49.514423>,  <32.403896, 29.715357, 48.886944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744465, 29.581236, 49.514423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802559, 29.973276, 49.460304>,  <32.837418, 30.208500, 49.427834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802559, 29.973276, 49.460304>,  <32.744465, 29.581236, 49.514423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802559, 29.973276, 49.460304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098123, 0.150347, 0.983752,
		0.984519, -0.129601, 0.118007,
		0.145237, 0.980102, -0.135302,
		32.846130, 30.267307, 49.419712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310112, 29.766108, 49.983322>,  <32.744465, 29.581236, 49.514423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310112, 29.766108, 49.983322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093826, 30.095119, 49.912815>,  <32.964054, 30.292526, 49.870510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.093826, 30.095119, 49.912815>,  <33.310112, 29.766108, 49.983322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093826, 30.095119, 49.912815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220593, 0.063563, 0.973293,
		0.811767, 0.565158, 0.147075,
		-0.540716, 0.822530, -0.176268,
		32.931610, 30.341879, 49.859936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317249, 30.124798, 50.544945>,  <33.310112, 29.766108, 49.983322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317249, 30.124798, 50.544945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032181, 30.350626, 50.378395>,  <32.861141, 30.486124, 50.278465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032181, 30.350626, 50.378395>,  <33.317249, 30.124798, 50.544945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032181, 30.350626, 50.378395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316849, 0.270489, 0.909089,
		0.625869, 0.779805, -0.013884,
		-0.712667, 0.564571, -0.416371,
		32.818382, 30.519997, 50.253483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291027, 30.742641, 50.954918>,  <33.317249, 30.124798, 50.544945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291027, 30.742641, 50.954918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937969, 30.735510, 50.767036>,  <32.726135, 30.731232, 50.654308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937969, 30.735510, 50.767036>,  <33.291027, 30.742641, 50.954918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937969, 30.735510, 50.767036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464119, 0.191165, 0.864899,
		0.074370, 0.981396, -0.177006,
		-0.882645, -0.017829, -0.469701,
		32.673176, 30.730162, 50.626125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035137, 31.370359, 50.963543>,  <33.291027, 30.742641, 50.954918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035137, 31.370359, 50.963543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717911, 31.129343, 50.927788>,  <32.527576, 30.984734, 50.906334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717911, 31.129343, 50.927788>,  <33.035137, 31.370359, 50.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717911, 31.129343, 50.927788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307582, 0.269465, 0.912569,
		-0.525774, 0.751221, -0.399034,
		-0.793067, -0.602541, -0.089384,
		32.479992, 30.948582, 50.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494659, 31.816053, 51.121830>,  <33.035137, 31.370359, 50.963543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494659, 31.816053, 51.121830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341248, 31.450111, 51.172348>,  <32.249203, 31.230547, 51.202660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341248, 31.450111, 51.172348>,  <32.494659, 31.816053, 51.121830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341248, 31.450111, 51.172348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409053, 0.290886, 0.864905,
		-0.827999, 0.280052, -0.485786,
		-0.383527, -0.914853, 0.126298,
		32.226189, 31.175655, 51.210236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724228, 31.801867, 51.221226>,  <32.494659, 31.816053, 51.121830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724228, 31.801867, 51.221226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889122, 31.490526, 51.410637>,  <31.988058, 31.303722, 51.524284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889122, 31.490526, 51.410637>,  <31.724228, 31.801867, 51.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889122, 31.490526, 51.410637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581063, 0.175708, 0.794665,
		-0.701732, -0.602741, -0.379838,
		0.412237, -0.778351, 0.473531,
		32.012794, 31.257021, 51.552696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517939, 32.562878, 50.925072>,  <31.724228, 31.801867, 51.221226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517939, 32.562878, 50.925072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652418, 32.895718, 51.101517>,  <31.733107, 33.095421, 51.207386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652418, 32.895718, 51.101517>,  <31.517939, 32.562878, 50.925072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652418, 32.895718, 51.101517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672299, 0.115962, -0.731141,
		-0.659533, 0.542371, -0.520433,
		0.336199, 0.832098, 0.441116,
		31.753279, 33.145348, 51.233852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610310, 32.966614, 50.331783>,  <31.517939, 32.562878, 50.925072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610310, 32.966614, 50.331783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836069, 33.118252, 50.625107>,  <31.971525, 33.209232, 50.801102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836069, 33.118252, 50.625107>,  <31.610310, 32.966614, 50.331783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836069, 33.118252, 50.625107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704306, 0.242218, -0.667296,
		-0.430587, 0.893096, -0.130289,
		0.564400, 0.379092, 0.733308,
		32.005390, 33.231979, 50.845100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842577, 33.630142, 50.162613>,  <31.610310, 32.966614, 50.331783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842577, 33.630142, 50.162613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105171, 33.508709, 50.438835>,  <32.262730, 33.435848, 50.604568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105171, 33.508709, 50.438835>,  <31.842577, 33.630142, 50.162613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105171, 33.508709, 50.438835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754041, 0.238425, -0.612026,
		0.021156, 0.922491, 0.385438,
		0.656487, -0.303584, 0.690552,
		32.302116, 33.417633, 50.646000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364960, 34.174526, 50.282894>,  <31.842577, 33.630142, 50.162613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364960, 34.174526, 50.282894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558094, 33.850300, 50.415470>,  <32.673973, 33.655766, 50.495014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558094, 33.850300, 50.415470>,  <32.364960, 34.174526, 50.282894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558094, 33.850300, 50.415470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800251, 0.254708, -0.542883,
		0.355622, 0.527358, 0.771639,
		0.482836, -0.810566, 0.331440,
		32.702946, 33.607128, 50.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098328, 34.380413, 50.365421>,  <32.364960, 34.174526, 50.282894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098328, 34.380413, 50.365421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120884, 33.981312, 50.350910>,  <33.134418, 33.741852, 50.342205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120884, 33.981312, 50.350910>,  <33.098328, 34.380413, 50.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120884, 33.981312, 50.350910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838865, 0.067055, -0.540194,
		0.541411, 0.000033, 0.840758,
		0.056395, -0.997749, -0.036277,
		33.137802, 33.681988, 50.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810837, 34.220272, 50.506916>,  <33.098328, 34.380413, 50.365421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810837, 34.220272, 50.506916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661770, 33.901840, 50.316181>,  <33.572327, 33.710781, 50.201740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661770, 33.901840, 50.316181>,  <33.810837, 34.220272, 50.506916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661770, 33.901840, 50.316181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726022, 0.069895, -0.684110,
		0.577934, -0.601144, 0.551923,
		-0.372672, -0.796078, -0.476838,
		33.549969, 33.663017, 50.173130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414665, 33.789444, 50.340519>,  <33.810837, 34.220272, 50.506916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414665, 33.789444, 50.340519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121368, 33.710796, 50.080151>,  <33.945389, 33.663609, 49.923931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121368, 33.710796, 50.080151>,  <34.414665, 33.789444, 50.340519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121368, 33.710796, 50.080151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642898, 0.111285, -0.757825,
		0.221439, -0.974144, 0.044806,
		-0.733244, -0.196618, -0.650918,
		33.901394, 33.651810, 49.884876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742313, 33.317493, 49.902233>,  <34.414665, 33.789444, 50.340519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742313, 33.317493, 49.902233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414669, 33.442425, 49.709774>,  <34.218082, 33.517384, 49.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414669, 33.442425, 49.709774>,  <34.742313, 33.317493, 49.902233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414669, 33.442425, 49.709774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513375, 0.024906, -0.857803,
		-0.255931, -0.949648, -0.180742,
		-0.819112, 0.312327, -0.481151,
		34.168934, 33.536121, 49.565430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585644, 32.835484, 49.385315>,  <34.742313, 33.317493, 49.902233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585644, 32.835484, 49.385315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406071, 33.163597, 49.243561>,  <34.298328, 33.360466, 49.158508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406071, 33.163597, 49.243561>,  <34.585644, 32.835484, 49.385315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406071, 33.163597, 49.243561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510917, -0.089734, -0.854934,
		-0.733092, -0.564867, -0.378815,
		-0.448931, 0.820289, -0.354383,
		34.271393, 33.409683, 49.137245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407345, 32.689339, 48.772804>,  <34.585644, 32.835484, 49.385315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407345, 32.689339, 48.772804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398006, 33.087139, 48.731960>,  <34.392403, 33.325817, 48.707455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398006, 33.087139, 48.731960>,  <34.407345, 32.689339, 48.772804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398006, 33.087139, 48.731960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464997, -0.079612, -0.881725,
		-0.885004, -0.068065, -0.460580,
		-0.023347, 0.994499, -0.102107,
		34.391003, 33.385490, 48.701328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030205, 32.808140, 48.211079>,  <34.407345, 32.689339, 48.772804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030205, 32.808140, 48.211079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242622, 33.142780, 48.264877>,  <34.370075, 33.343563, 48.297157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242622, 33.142780, 48.264877>,  <34.030205, 32.808140, 48.211079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242622, 33.142780, 48.264877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393298, -0.102771, -0.913649,
		-0.750538, 0.538086, -0.383610,
		0.531046, 0.836601, 0.134494,
		34.401936, 33.393761, 48.305225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971401, 33.226093, 47.603329>,  <34.030205, 32.808140, 48.211079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971401, 33.226093, 47.603329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302776, 33.339874, 47.796318>,  <34.501602, 33.408142, 47.912113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302776, 33.339874, 47.796318>,  <33.971401, 33.226093, 47.603329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302776, 33.339874, 47.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510255, -0.028110, -0.859564,
		-0.230939, 0.958279, -0.168429,
		0.828436, 0.284449, 0.482475,
		34.551308, 33.425209, 47.941059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276527, 33.616741, 47.088924>,  <33.971401, 33.226093, 47.603329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276527, 33.616741, 47.088924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561047, 33.555603, 47.363354>,  <34.731758, 33.518921, 47.528011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561047, 33.555603, 47.363354>,  <34.276527, 33.616741, 47.088924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561047, 33.555603, 47.363354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692384, -0.015805, -0.721356,
		0.121098, 0.988124, 0.094585,
		0.711295, -0.152844, 0.686075,
		34.774433, 33.509750, 47.569176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742634, 34.039841, 46.973125>,  <34.276527, 33.616741, 47.088924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742634, 34.039841, 46.973125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948303, 33.750599, 47.157623>,  <35.071705, 33.577053, 47.268322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948303, 33.750599, 47.157623>,  <34.742634, 34.039841, 46.973125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948303, 33.750599, 47.157623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614766, -0.064284, -0.786085,
		0.598070, 0.687744, 0.411485,
		0.514174, -0.723101, 0.461248,
		35.102554, 33.533669, 47.295998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435486, 34.214516, 46.936794>,  <34.742634, 34.039841, 46.973125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435486, 34.214516, 46.936794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433701, 33.817871, 46.988480>,  <35.432629, 33.579884, 47.019489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433701, 33.817871, 46.988480>,  <35.435486, 34.214516, 46.936794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433701, 33.817871, 46.988480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800685, -0.080955, -0.593590,
		0.599069, 0.100805, 0.794327,
		-0.004468, -0.991607, 0.129211,
		35.432362, 33.520390, 47.027245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139484, 34.063972, 47.025963>,  <35.435486, 34.214516, 46.936794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139484, 34.063972, 47.025963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945660, 33.730766, 46.919163>,  <35.829365, 33.530842, 46.855083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945660, 33.730766, 46.919163>,  <36.139484, 34.063972, 47.025963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945660, 33.730766, 46.919163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572961, -0.071599, -0.816449,
		0.660997, -0.548599, 0.511979,
		-0.484560, -0.833014, -0.266999,
		35.800293, 33.480862, 46.839062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658287, 33.604053, 46.758907>,  <36.139484, 34.063972, 47.025963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658287, 33.604053, 46.758907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 33.473392, 46.619015>,  <36.096329, 33.394997, 46.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307064, 33.473392, 46.619015>,  <36.658287, 33.604053, 46.758907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307064, 33.473392, 46.619015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452944, -0.331404, -0.827655,
		0.154456, -0.885137, 0.438949,
		-0.878058, -0.326655, -0.349730,
		36.043648, 33.375397, 46.514095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855911, 33.170624, 46.325653>,  <36.658287, 33.604053, 46.758907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855911, 33.170624, 46.325653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473927, 33.195461, 46.209587>,  <36.244736, 33.210365, 46.139950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473927, 33.195461, 46.209587>,  <36.855911, 33.170624, 46.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473927, 33.195461, 46.209587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277458, -0.159802, -0.947354,
		-0.105192, -0.985194, 0.135376,
		-0.954961, 0.062093, -0.290160,
		36.187439, 33.214088, 46.122540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833755, 32.623436, 45.865509>,  <36.855911, 33.170624, 46.325653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833755, 32.623436, 45.865509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518654, 32.861221, 45.800945>,  <36.329594, 33.003895, 45.762207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518654, 32.861221, 45.800945>,  <36.833755, 32.623436, 45.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518654, 32.861221, 45.800945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277211, 0.108127, -0.954705,
		-0.550089, -0.796817, -0.249970,
		-0.787754, 0.594467, -0.161407,
		36.282326, 33.039562, 45.752522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364479, 32.330349, 45.371708>,  <36.833755, 32.623436, 45.865509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364479, 32.330349, 45.371708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280972, 32.721188, 45.355263>,  <36.230869, 32.955692, 45.345394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280972, 32.721188, 45.355263>,  <36.364479, 32.330349, 45.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280972, 32.721188, 45.355263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099383, -0.020630, -0.994835,
		-0.972903, -0.211773, -0.092800,
		-0.208765, 0.977101, -0.041117,
		36.218342, 33.014317, 45.342926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642708, 32.375538, 44.962124>,  <36.364479, 32.330349, 45.371708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642708, 32.375538, 44.962124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828815, 32.728989, 44.941235>,  <35.940479, 32.941059, 44.928699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828815, 32.728989, 44.941235>,  <35.642708, 32.375538, 44.962124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828815, 32.728989, 44.941235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013899, -0.051696, -0.998566,
		-0.885059, 0.465329, -0.011771,
		0.465271, 0.883627, -0.052222,
		35.968395, 32.994076, 44.925568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360359, 32.797092, 44.339561>,  <35.642708, 32.375538, 44.962124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360359, 32.797092, 44.339561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691391, 33.007870, 44.416962>,  <35.890011, 33.134335, 44.463402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691391, 33.007870, 44.416962>,  <35.360359, 32.797092, 44.339561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691391, 33.007870, 44.416962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028615, 0.304664, -0.952030,
		-0.560621, 0.793416, 0.237055,
		0.827578, 0.526945, 0.193505,
		35.939663, 33.165955, 44.475014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272892, 33.403458, 44.022060>,  <35.360359, 32.797092, 44.339561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272892, 33.403458, 44.022060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664211, 33.326885, 44.053753>,  <35.899002, 33.280941, 44.072769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664211, 33.326885, 44.053753>,  <35.272892, 33.403458, 44.022060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664211, 33.326885, 44.053753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150461, 0.393555, -0.906904,
		0.142428, 0.899148, 0.413819,
		0.978302, -0.191433, 0.079234,
		35.957703, 33.269455, 44.077522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603970, 33.830078, 43.574688>,  <35.272892, 33.403458, 44.022060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603970, 33.830078, 43.574688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909653, 33.585194, 43.655865>,  <36.093063, 33.438263, 43.704571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909653, 33.585194, 43.655865>,  <35.603970, 33.830078, 43.574688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909653, 33.585194, 43.655865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469292, 0.311960, -0.826103,
		0.442443, 0.726550, 0.525708,
		0.764205, -0.612214, 0.202940,
		36.138916, 33.401531, 43.716747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232067, 34.205921, 43.512955>,  <35.603970, 33.830078, 43.574688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232067, 34.205921, 43.512955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343964, 33.822987, 43.483955>,  <36.411102, 33.593227, 43.466557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343964, 33.822987, 43.483955>,  <36.232067, 34.205921, 43.512955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343964, 33.822987, 43.483955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573858, 0.227269, -0.786788,
		0.769697, 0.178491, 0.612950,
		0.279739, -0.957335, -0.072499,
		36.427887, 33.535786, 43.462204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991467, 34.220337, 43.411327>,  <36.232067, 34.205921, 43.512955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991467, 34.220337, 43.411327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903072, 33.857536, 43.267929>,  <36.850037, 33.639854, 43.181892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903072, 33.857536, 43.267929>,  <36.991467, 34.220337, 43.411327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903072, 33.857536, 43.267929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556791, 0.184462, -0.809912,
		0.800719, -0.378582, 0.464247,
		-0.220982, -0.907000, -0.358493,
		36.836777, 33.585438, 43.160381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661530, 33.818596, 43.285847>,  <36.991467, 34.220337, 43.411327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661530, 33.818596, 43.285847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376938, 33.669521, 43.047554>,  <37.206181, 33.580078, 42.904579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376938, 33.669521, 43.047554>,  <37.661530, 33.818596, 43.285847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376938, 33.669521, 43.047554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521521, 0.288142, -0.803113,
		0.470963, -0.882089, -0.010646,
		-0.711484, -0.372685, -0.595732,
		37.163494, 33.557716, 42.868835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027096, 33.551777, 42.766010>,  <37.661530, 33.818596, 43.285847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027096, 33.551777, 42.766010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647434, 33.563705, 42.640648>,  <37.419640, 33.570862, 42.565430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647434, 33.563705, 42.640648>,  <38.027096, 33.551777, 42.766010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647434, 33.563705, 42.640648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312532, 0.209012, -0.926627,
		0.037869, -0.977458, -0.207705,
		-0.949152, 0.029825, -0.313402,
		37.362690, 33.572651, 42.546627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085911, 33.310375, 42.032749>,  <38.027096, 33.551777, 42.766010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085911, 33.310375, 42.032749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730103, 33.492161, 42.051601>,  <37.516617, 33.601231, 42.062912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730103, 33.492161, 42.051601>,  <38.085911, 33.310375, 42.032749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730103, 33.492161, 42.051601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119803, 0.331544, -0.935802,
		-0.440913, -0.826767, -0.349361,
		-0.889518, 0.454462, 0.047133,
		37.463245, 33.628498, 42.065742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689049, 33.025913, 41.527191>,  <38.085911, 33.310375, 42.032749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689049, 33.025913, 41.527191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571209, 33.401981, 41.595646>,  <37.500504, 33.627621, 41.636719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571209, 33.401981, 41.595646>,  <37.689049, 33.025913, 41.527191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571209, 33.401981, 41.595646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137449, 0.218915, -0.966015,
		-0.945684, -0.261067, -0.193718,
		-0.294602, 0.940170, 0.171141,
		37.482830, 33.684032, 41.646988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214779, 33.186008, 40.939339>,  <37.689049, 33.025913, 41.527191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214779, 33.186008, 40.939339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355316, 33.532375, 41.081741>,  <37.439640, 33.740196, 41.167183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355316, 33.532375, 41.081741>,  <37.214779, 33.186008, 40.939339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355316, 33.532375, 41.081741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268290, 0.271182, -0.924381,
		-0.896982, 0.420290, -0.137039,
		0.351346, 0.865920, 0.356005,
		37.460720, 33.792152, 41.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051224, 33.687923, 40.484600>,  <37.214779, 33.186008, 40.939339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051224, 33.687923, 40.484600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334297, 33.892220, 40.679874>,  <37.504143, 34.014797, 40.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334297, 33.892220, 40.679874>,  <37.051224, 33.687923, 40.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334297, 33.892220, 40.679874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193449, 0.524495, -0.829145,
		-0.679530, 0.681212, 0.272374,
		0.707683, 0.510739, 0.488190,
		37.546600, 34.045441, 40.826332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947266, 34.446678, 40.420193>,  <37.051224, 33.687923, 40.484600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947266, 34.446678, 40.420193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335014, 34.419888, 40.514706>,  <37.567665, 34.403812, 40.571411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335014, 34.419888, 40.514706>,  <36.947266, 34.446678, 40.420193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335014, 34.419888, 40.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230130, 0.583656, -0.778708,
		-0.085752, 0.809234, 0.581194,
		0.969374, -0.066975, 0.236279,
		37.625828, 34.399796, 40.585590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169331, 35.000938, 40.249336>,  <36.947266, 34.446678, 40.420193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169331, 35.000938, 40.249336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527370, 34.823841, 40.270412>,  <37.742195, 34.717583, 40.283058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527370, 34.823841, 40.270412>,  <37.169331, 35.000938, 40.249336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527370, 34.823841, 40.270412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329755, 0.577823, -0.746581,
		0.300097, 0.685639, 0.663205,
		0.895100, -0.442742, 0.052690,
		37.795898, 34.691017, 40.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843414, 35.495857, 40.337463>,  <37.169331, 35.000938, 40.249336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843414, 35.495857, 40.337463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994652, 35.173172, 40.155796>,  <38.085392, 34.979561, 40.046795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994652, 35.173172, 40.155796>,  <37.843414, 35.495857, 40.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994652, 35.173172, 40.155796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445470, 0.588586, -0.674628,
		0.811545, 0.052753, 0.581903,
		0.378089, -0.806712, -0.454164,
		38.108078, 34.931160, 40.019547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420406, 35.764084, 39.929657>,  <37.843414, 35.495857, 40.337463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420406, 35.764084, 39.929657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360680, 35.399567, 39.776165>,  <38.324844, 35.180855, 39.684071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360680, 35.399567, 39.776165>,  <38.420406, 35.764084, 39.929657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360680, 35.399567, 39.776165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222047, 0.347267, -0.911098,
		0.963535, -0.221247, 0.150498,
		-0.149314, -0.911293, -0.383732,
		38.315884, 35.126179, 39.661045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949310, 35.731556, 39.425285>,  <38.420406, 35.764084, 39.929657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949310, 35.731556, 39.425285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667019, 35.463871, 39.332237>,  <38.497646, 35.303261, 39.276409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667019, 35.463871, 39.332237>,  <38.949310, 35.731556, 39.425285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667019, 35.463871, 39.332237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204565, 0.121878, -0.971236,
		0.678310, -0.733011, 0.050884,
		-0.705725, -0.669208, -0.232620,
		38.455303, 35.263107, 39.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177681, 35.351585, 38.845093>,  <38.949310, 35.731556, 39.425285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177681, 35.351585, 38.845093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780930, 35.303883, 38.827408>,  <38.542877, 35.275261, 38.816795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780930, 35.303883, 38.827408>,  <39.177681, 35.351585, 38.845093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780930, 35.303883, 38.827408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037455, 0.058319, -0.997595,
		0.121547, -0.991150, -0.053378,
		-0.991879, -0.119255, -0.044212,
		38.483364, 35.268108, 38.814144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101803, 34.591087, 38.732265>,  <39.177681, 35.351585, 38.845093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101803, 34.591087, 38.732265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883400, 34.875141, 38.554462>,  <38.752357, 35.045574, 38.447781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883400, 34.875141, 38.554462>,  <39.101803, 34.591087, 38.732265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883400, 34.875141, 38.554462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448845, -0.200047, -0.870930,
		-0.707402, -0.675045, -0.209515,
		-0.546004, 0.710137, -0.444504,
		38.719597, 35.088181, 38.421112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750801, 34.393940, 38.123444>,  <39.101803, 34.591087, 38.732265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750801, 34.393940, 38.123444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862583, 34.777637, 38.140236>,  <38.929653, 35.007854, 38.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862583, 34.777637, 38.140236>,  <38.750801, 34.393940, 38.123444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862583, 34.777637, 38.140236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512956, -0.112190, -0.851052,
		-0.811653, 0.259369, -0.523400,
		0.279457, 0.959240, 0.041985,
		38.946419, 35.065411, 38.152832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603497, 34.741524, 37.499317>,  <38.750801, 34.393940, 38.123444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603497, 34.741524, 37.499317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901569, 34.936047, 37.681835>,  <39.080414, 35.052761, 37.791348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901569, 34.936047, 37.681835>,  <38.603497, 34.741524, 37.499317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901569, 34.936047, 37.681835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503382, 0.038589, -0.863202,
		-0.437388, 0.872936, -0.216042,
		0.745183, 0.486306, 0.456299,
		39.125126, 35.081940, 37.818726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726292, 35.334595, 37.147018>,  <38.603497, 34.741524, 37.499317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726292, 35.334595, 37.147018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061516, 35.233196, 37.340263>,  <39.262650, 35.172356, 37.456211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061516, 35.233196, 37.340263>,  <38.726292, 35.334595, 37.147018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061516, 35.233196, 37.340263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513615, 0.067938, -0.855327,
		0.184003, 0.964947, 0.187137,
		0.838059, -0.253499, 0.483110,
		39.312935, 35.157146, 37.485195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420826, 35.067928, 36.913513>,  <38.726292, 35.334595, 37.147018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420826, 35.067928, 36.913513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673145, 34.772717, 36.817669>,  <39.824535, 34.595589, 36.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673145, 34.772717, 36.817669>,  <39.420826, 35.067928, 36.913513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673145, 34.772717, 36.817669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523316, 0.632632, -0.570891,
		0.572921, 0.234720, 0.785282,
		0.630794, -0.738027, -0.239615,
		39.862385, 34.551308, 36.745785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038540, 35.362831, 36.895496>,  <39.420826, 35.067928, 36.913513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038540, 35.362831, 36.895496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110012, 35.032063, 36.682228>,  <40.152897, 34.833599, 36.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110012, 35.032063, 36.682228>,  <40.038540, 35.362831, 36.895496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110012, 35.032063, 36.682228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618009, 0.515980, -0.593152,
		0.765597, -0.223519, 0.603242,
		0.178680, -0.826925, -0.533169,
		40.163616, 34.783985, 36.522278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819778, 35.377914, 36.772522>,  <40.038540, 35.362831, 36.895496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819778, 35.377914, 36.772522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628620, 35.197933, 36.470753>,  <40.513924, 35.089943, 36.289692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628620, 35.197933, 36.470753>,  <40.819778, 35.377914, 36.772522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628620, 35.197933, 36.470753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532572, 0.534577, -0.656197,
		0.698555, -0.715380, -0.015842,
		-0.477899, -0.449953, -0.754423,
		40.485249, 35.062946, 36.244427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233711, 35.306011, 36.235661>,  <40.819778, 35.377914, 36.772522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233711, 35.306011, 36.235661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864586, 35.318966, 36.082104>,  <40.643112, 35.326740, 35.989971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864586, 35.318966, 36.082104>,  <41.233711, 35.306011, 36.235661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864586, 35.318966, 36.082104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353551, 0.467034, -0.810482,
		0.153041, -0.883646, -0.442434,
		-0.922811, 0.032386, -0.383889,
		40.587742, 35.328682, 35.966938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563534, 36.001965, 36.237541>,  <41.233711, 35.306011, 36.235661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563534, 36.001965, 36.237541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952415, 35.924908, 36.184307>,  <42.185745, 35.878674, 36.152367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952415, 35.924908, 36.184307>,  <41.563534, 36.001965, 36.237541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952415, 35.924908, 36.184307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209709, -0.969218, -0.128988,
		-0.104140, 0.153312, -0.982675,
		0.972202, -0.192643, -0.133085,
		42.244076, 35.867115, 36.144382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640209, 35.542130, 35.592163>,  <41.563534, 36.001965, 36.237541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640209, 35.542130, 35.592163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945789, 35.505653, 35.847683>,  <42.129135, 35.483768, 36.000996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945789, 35.505653, 35.847683>,  <41.640209, 35.542130, 35.592163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945789, 35.505653, 35.847683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095201, -0.995059, -0.028191,
		0.638216, -0.039278, -0.768854,
		0.763948, -0.091188, 0.638802,
		42.174973, 35.478298, 36.039322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192173, 35.049511, 35.354324>,  <41.640209, 35.542130, 35.592163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192173, 35.049511, 35.354324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226376, 35.054516, 35.752827>,  <42.246899, 35.057518, 35.991928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226376, 35.054516, 35.752827>,  <42.192173, 35.049511, 35.354324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226376, 35.054516, 35.752827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039259, -0.999187, 0.009177,
		0.995564, 0.038327, -0.085930,
		0.085508, 0.012510, 0.996259,
		42.252029, 35.058270, 36.051704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735497, 34.636097, 35.490612>,  <42.192173, 35.049511, 35.354324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735497, 34.636097, 35.490612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531555, 34.654297, 35.834236>,  <42.409191, 34.665215, 36.040409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531555, 34.654297, 35.834236>,  <42.735497, 34.636097, 35.490612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531555, 34.654297, 35.834236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051510, -0.998423, 0.022307,
		0.858717, -0.032876, 0.511395,
		-0.509855, 0.045497, 0.859056,
		42.378597, 34.667946, 36.091953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071907, 34.170334, 35.963989>,  <42.735497, 34.636097, 35.490612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071907, 34.170334, 35.963989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702648, 34.226734, 36.107052>,  <42.481094, 34.260574, 36.192890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702648, 34.226734, 36.107052>,  <43.071907, 34.170334, 35.963989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702648, 34.226734, 36.107052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077323, -0.979401, 0.186534,
		0.376591, 0.144543, 0.915034,
		-0.923147, 0.141000, 0.357657,
		42.425705, 34.269035, 36.214348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001099, 33.865356, 36.639091>,  <43.071907, 34.170334, 35.963989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001099, 33.865356, 36.639091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614216, 33.896889, 36.542511>,  <42.382088, 33.915806, 36.484562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614216, 33.896889, 36.542511>,  <43.001099, 33.865356, 36.639091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614216, 33.896889, 36.542511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152965, -0.939671, 0.305974,
		-0.202762, 0.332873, 0.920914,
		-0.967207, 0.078828, -0.241448,
		42.324055, 33.920536, 36.470078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662544, 33.497410, 37.089760>,  <43.001099, 33.865356, 36.639091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.662544, 33.497410, 37.089760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401985, 33.516022, 36.786835>,  <42.245651, 33.527191, 36.605080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.401985, 33.516022, 36.786835>,  <42.662544, 33.497410, 37.089760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401985, 33.516022, 36.786835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196158, -0.974513, 0.108845,
		-0.732941, 0.219453, 0.643924,
		-0.651398, 0.046533, -0.757308,
		42.206566, 33.529984, 36.559643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019836, 33.085167, 37.315388>,  <42.662544, 33.497410, 37.089760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019836, 33.085167, 37.315388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956337, 33.103397, 36.920883>,  <41.918236, 33.114338, 36.684181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956337, 33.103397, 36.920883>,  <42.019836, 33.085167, 37.315388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956337, 33.103397, 36.920883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159032, -0.987070, -0.020019,
		-0.974426, 0.153670, 0.163947,
		-0.158751, 0.045579, -0.986266,
		41.908710, 33.117073, 36.625004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274391, 32.876778, 37.129860>,  <42.019836, 33.085167, 37.315388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274391, 32.876778, 37.129860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498711, 32.832531, 36.801647>,  <41.633301, 32.805981, 36.604721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498711, 32.832531, 36.801647>,  <41.274391, 32.876778, 37.129860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498711, 32.832531, 36.801647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392489, -0.908123, -0.145822,
		-0.729010, 0.403825, -0.552693,
		0.560800, -0.110621, -0.820528,
		41.666950, 32.799343, 36.555489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743385, 32.775177, 36.652927>,  <41.274391, 32.876778, 37.129860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743385, 32.775177, 36.652927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084591, 32.649170, 36.486488>,  <41.289314, 32.573566, 36.386627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084591, 32.649170, 36.486488>,  <40.743385, 32.775177, 36.652927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084591, 32.649170, 36.486488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475830, -0.796937, -0.372125,
		-0.214376, 0.515418, -0.829691,
		0.853012, -0.315017, -0.416095,
		41.340496, 32.554665, 36.361660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590656, 32.507736, 35.976864>,  <40.743385, 32.775177, 36.652927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590656, 32.507736, 35.976864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948883, 32.348553, 36.056446>,  <41.163818, 32.253040, 36.104195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948883, 32.348553, 36.056446>,  <40.590656, 32.507736, 35.976864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948883, 32.348553, 36.056446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310735, -0.879489, -0.360477,
		0.318439, 0.261008, -0.911302,
		0.895567, -0.397964, 0.198960,
		41.217552, 32.229164, 36.116135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705116, 32.086861, 35.400612>,  <40.590656, 32.507736, 35.976864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705116, 32.086861, 35.400612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948135, 31.939779, 35.682232>,  <41.093945, 31.851532, 35.851204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948135, 31.939779, 35.682232>,  <40.705116, 32.086861, 35.400612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948135, 31.939779, 35.682232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157587, -0.924574, -0.346886,
		0.778497, 0.099799, -0.619664,
		0.607544, -0.367700, 0.704051,
		41.130398, 31.829470, 35.893448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150772, 31.716240, 35.019974>,  <40.705116, 32.086861, 35.400612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150772, 31.716240, 35.019974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173782, 31.579336, 35.395111>,  <41.187588, 31.497194, 35.620193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173782, 31.579336, 35.395111>,  <41.150772, 31.716240, 35.019974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173782, 31.579336, 35.395111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111411, -0.935731, -0.334657,
		0.992108, -0.085236, -0.091956,
		0.057521, -0.342261, 0.937843,
		41.191040, 31.476658, 35.676464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706829, 31.264843, 34.987713>,  <41.150772, 31.716240, 35.019974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706829, 31.264843, 34.987713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487400, 31.156509, 35.304123>,  <41.355743, 31.091509, 35.493969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487400, 31.156509, 35.304123>,  <41.706829, 31.264843, 34.987713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487400, 31.156509, 35.304123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097891, -0.918772, -0.382460,
		0.830352, -0.287241, 0.477501,
		-0.548573, -0.270833, 0.791023,
		41.322826, 31.075260, 35.541431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863293, 30.549242, 35.045712>,  <41.706829, 31.264843, 34.987713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863293, 30.549242, 35.045712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548504, 30.573334, 35.291328>,  <41.359631, 30.587790, 35.438698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548504, 30.573334, 35.291328>,  <41.863293, 30.549242, 35.045712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548504, 30.573334, 35.291328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227108, -0.953627, -0.197530,
		0.573671, -0.294904, 0.764155,
		-0.786971, 0.060229, 0.614043,
		41.312412, 30.591402, 35.475540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959435, 29.958841, 35.443096>,  <41.863293, 30.549242, 35.045712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959435, 29.958841, 35.443096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574440, 30.062569, 35.475033>,  <41.343445, 30.124805, 35.494194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574440, 30.062569, 35.475033>,  <41.959435, 29.958841, 35.443096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574440, 30.062569, 35.475033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264930, -0.961713, -0.070138,
		0.058592, -0.088658, 0.994337,
		-0.962486, 0.259321, 0.079837,
		41.285694, 30.140366, 35.498985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739452, 29.520592, 35.856796>,  <41.959435, 29.958841, 35.443096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739452, 29.520592, 35.856796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397594, 29.651970, 35.695942>,  <41.192482, 29.730797, 35.599430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397594, 29.651970, 35.695942>,  <41.739452, 29.520592, 35.856796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397594, 29.651970, 35.695942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243736, -0.937645, -0.247820,
		-0.458457, -0.113781, 0.881403,
		-0.854640, 0.328444, -0.402137,
		41.141201, 29.750504, 35.575302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136692, 29.148169, 36.122128>,  <41.739452, 29.520592, 35.856796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136692, 29.148169, 36.122128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047791, 29.288378, 35.758205>,  <40.994450, 29.372503, 35.539852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047791, 29.288378, 35.758205>,  <41.136692, 29.148169, 36.122128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047791, 29.288378, 35.758205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129868, -0.935467, -0.328687,
		-0.966302, 0.045104, 0.253429,
		-0.222249, 0.350523, -0.909802,
		40.981117, 29.393534, 35.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738052, 28.703358, 35.851685>,  <41.136692, 29.148169, 36.122128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738052, 28.703358, 35.851685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825066, 28.870718, 35.498955>,  <40.877274, 28.971134, 35.287315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825066, 28.870718, 35.498955>,  <40.738052, 28.703358, 35.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825066, 28.870718, 35.498955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069002, -0.894611, -0.441487,
		-0.973610, 0.156887, -0.165741,
		0.217537, 0.418400, -0.881827,
		40.890327, 28.996239, 35.234406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154171, 28.536900, 35.348492>,  <40.738052, 28.703358, 35.851685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154171, 28.536900, 35.348492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485443, 28.642670, 35.150826>,  <40.684208, 28.706131, 35.032227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485443, 28.642670, 35.150826>,  <40.154171, 28.536900, 35.348492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485443, 28.642670, 35.150826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016879, -0.869540, -0.493574,
		-0.560207, 0.417109, -0.715673,
		0.828180, 0.264423, -0.494163,
		40.733898, 28.721996, 35.002575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983448, 28.330280, 34.664753>,  <40.154171, 28.536900, 35.348492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983448, 28.330280, 34.664753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379654, 28.380999, 34.643566>,  <40.617378, 28.411428, 34.630852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.379654, 28.380999, 34.643566>,  <39.983448, 28.330280, 34.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379654, 28.380999, 34.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070400, -0.799291, -0.596806,
		-0.118011, 0.587415, -0.800635,
		0.990514, 0.126795, -0.052972,
		40.676807, 28.419037, 34.627674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224480, 28.468143, 34.004742>,  <39.983448, 28.330280, 34.664753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224480, 28.468143, 34.004742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523087, 28.261496, 34.172459>,  <40.702251, 28.137506, 34.273090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523087, 28.261496, 34.172459>,  <40.224480, 28.468143, 34.004742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523087, 28.261496, 34.172459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113045, -0.719497, -0.685234,
		0.655688, 0.464142, -0.595521,
		0.746521, -0.516620, 0.419297,
		40.747044, 28.106510, 34.298248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476303, 28.161186, 33.529892>,  <40.224480, 28.468143, 34.004742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476303, 28.161186, 33.529892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610863, 27.953449, 33.844120>,  <40.691597, 27.828808, 34.032658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610863, 27.953449, 33.844120>,  <40.476303, 28.161186, 33.529892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610863, 27.953449, 33.844120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102685, -0.808985, -0.578792,
		0.936104, 0.275371, -0.218814,
		0.336399, -0.519341, 0.785571,
		40.711784, 27.797647, 34.079792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278156, 27.790491, 33.426476>,  <40.476303, 28.161186, 33.529892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278156, 27.790491, 33.426476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032310, 27.584433, 33.665432>,  <40.884804, 27.460798, 33.808804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032310, 27.584433, 33.665432>,  <41.278156, 27.790491, 33.426476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032310, 27.584433, 33.665432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269675, -0.848900, -0.454582,
		0.741298, -0.118293, 0.660669,
		-0.614616, -0.515146, 0.597387,
		40.847927, 27.429888, 33.844646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728306, 27.302731, 33.738384>,  <41.278156, 27.790491, 33.426476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728306, 27.302731, 33.738384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342976, 27.206572, 33.690697>,  <41.111778, 27.148876, 33.662083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342976, 27.206572, 33.690697>,  <41.728306, 27.302731, 33.738384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342976, 27.206572, 33.690697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265512, -0.789640, -0.553147,
		0.038835, -0.564515, 0.824509,
		-0.963325, -0.240398, -0.119220,
		41.053978, 27.134453, 33.654930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878632, 26.513706, 33.768715>,  <41.728306, 27.302731, 33.738384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878632, 26.513706, 33.768715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912605, 26.141005, 33.909920>,  <41.932987, 25.917383, 33.994644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912605, 26.141005, 33.909920>,  <41.878632, 26.513706, 33.768715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912605, 26.141005, 33.909920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920940, 0.208649, 0.329144,
		-0.380338, 0.297149, 0.875811,
		0.084932, -0.931755, 0.353014,
		41.938084, 25.861479, 34.015823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245670, 26.526453, 34.476978>,  <41.878632, 26.513706, 33.768715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245670, 26.526453, 34.476978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298477, 26.186031, 34.273693>,  <42.330162, 25.981779, 34.151722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298477, 26.186031, 34.273693>,  <42.245670, 26.526453, 34.476978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298477, 26.186031, 34.273693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987987, 0.071428, 0.137042,
		-0.080329, -0.520200, 0.850259,
		0.132021, -0.851053, -0.508212,
		42.338085, 25.930716, 34.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802746, 25.982365, 34.646919>,  <42.245670, 26.526453, 34.476978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802746, 25.982365, 34.646919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415409, 25.912033, 34.717796>,  <42.183006, 25.869835, 34.760323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.415409, 25.912033, 34.717796>,  <42.802746, 25.982365, 34.646919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415409, 25.912033, 34.717796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238921, -0.858471, 0.453810,
		0.072325, 0.481780, 0.873302,
		-0.968342, -0.175829, 0.177197,
		42.124908, 25.859285, 34.770954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.795746, 25.621201, 35.261757>,  <42.802746, 25.982365, 34.646919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.795746, 25.621201, 35.261757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472092, 25.504135, 35.057934>,  <42.277901, 25.433895, 34.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.472092, 25.504135, 35.057934>,  <42.795746, 25.621201, 35.261757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472092, 25.504135, 35.057934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140838, -0.938461, 0.315365,
		-0.570500, 0.183406, 0.800557,
		-0.809132, -0.292665, -0.509561,
		42.229351, 25.416336, 34.905064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430695, 25.924715, 35.031784>,  <42.795746, 25.621201, 35.261757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430695, 25.924715, 35.031784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397049, 26.116392, 34.682316>,  <43.376862, 26.231400, 34.472633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397049, 26.116392, 34.682316>,  <43.430695, 25.924715, 35.031784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397049, 26.116392, 34.682316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018099, 0.875897, 0.482158,
		0.996292, 0.056367, -0.065000,
		-0.084111, 0.479194, -0.873670,
		43.371815, 26.260151, 34.420216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996986, 26.476377, 35.080299>,  <43.430695, 25.924715, 35.031784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996986, 26.476377, 35.080299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694336, 26.598240, 34.848885>,  <43.512745, 26.671358, 34.710037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694336, 26.598240, 34.848885>,  <43.996986, 26.476377, 35.080299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694336, 26.598240, 34.848885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145537, 0.941088, 0.305241,
		0.637446, 0.146755, -0.756390,
		-0.756625, 0.304657, -0.578534,
		43.467350, 26.689636, 34.675323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199070, 27.065210, 34.678696>,  <43.996986, 26.476377, 35.080299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199070, 27.065210, 34.678696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811592, 27.072052, 34.777763>,  <43.579105, 27.076157, 34.837204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811592, 27.072052, 34.777763>,  <44.199070, 27.065210, 34.678696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811592, 27.072052, 34.777763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069129, 0.976753, 0.202915,
		-0.238443, 0.213683, -0.947357,
		-0.968693, 0.017106, 0.247671,
		43.520985, 27.077185, 34.852066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914173, 27.630049, 34.280075>,  <44.199070, 27.065210, 34.678696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914173, 27.630049, 34.280075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676376, 27.570223, 34.596104>,  <43.533699, 27.534328, 34.785721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.676376, 27.570223, 34.596104>,  <43.914173, 27.630049, 34.280075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676376, 27.570223, 34.596104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076417, 0.967594, 0.240669,
		-0.800462, 0.203451, -0.563798,
		-0.594492, -0.149562, 0.790070,
		43.498028, 27.525354, 34.833126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481689, 28.216255, 34.313950>,  <43.914173, 27.630049, 34.280075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481689, 28.216255, 34.313950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447727, 28.044436, 34.673565>,  <43.427349, 27.941343, 34.889336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447727, 28.044436, 34.673565>,  <43.481689, 28.216255, 34.313950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447727, 28.044436, 34.673565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124992, 0.890581, 0.437312,
		-0.988518, 0.149504, -0.021925,
		-0.084906, -0.429551, 0.899042,
		43.422256, 27.915569, 34.943279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985649, 28.574135, 34.618214>,  <43.481689, 28.216255, 34.313950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985649, 28.574135, 34.618214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 28.393513, 34.915607>,  <43.301353, 28.285139, 35.094044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.182964, 28.393513, 34.915607>,  <42.985649, 28.574135, 34.618214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182964, 28.393513, 34.915607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056511, 0.869537, 0.490623,
		-0.868030, -0.200002, 0.454448,
		0.493285, -0.451557, 0.743482,
		43.330952, 28.258045, 35.138653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649967, 28.756468, 35.219055>,  <42.985649, 28.574135, 34.618214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649967, 28.756468, 35.219055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008018, 28.643003, 35.356628>,  <43.222847, 28.574924, 35.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008018, 28.643003, 35.356628>,  <42.649967, 28.756468, 35.219055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008018, 28.643003, 35.356628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094152, 0.874347, 0.476081,
		-0.435759, -0.393770, 0.809357,
		0.895125, -0.283659, 0.343930,
		43.276558, 28.557905, 35.459808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674671, 28.984512, 35.988350>,  <42.649967, 28.756468, 35.219055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674671, 28.984512, 35.988350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046837, 28.914227, 35.859695>,  <43.270138, 28.872055, 35.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046837, 28.914227, 35.859695>,  <42.674671, 28.984512, 35.988350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046837, 28.914227, 35.859695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287481, 0.894228, 0.343089,
		0.227329, -0.411679, 0.882520,
		0.930417, -0.175714, -0.321634,
		43.325962, 28.861513, 35.763206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082294, 29.179209, 36.522453>,  <42.674671, 28.984512, 35.988350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.082294, 29.179209, 36.522453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352268, 29.171892, 36.227394>,  <43.514252, 29.167503, 36.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352268, 29.171892, 36.227394>,  <43.082294, 29.179209, 36.522453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352268, 29.171892, 36.227394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470185, 0.781109, 0.410847,
		0.568669, -0.624127, 0.535800,
		0.674939, -0.018289, -0.737647,
		43.554749, 29.166405, 36.006100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.760525, 29.335426, 36.797028>,  <43.082294, 29.179209, 36.522453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.760525, 29.335426, 36.797028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773392, 29.440634, 36.411327>,  <43.781113, 29.503757, 36.179905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773392, 29.440634, 36.411327>,  <43.760525, 29.335426, 36.797028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773392, 29.440634, 36.411327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440707, 0.862171, 0.249877,
		0.897074, -0.432993, -0.088178,
		0.032171, 0.263019, -0.964254,
		43.783043, 29.519539, 36.122051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.414394, 29.614540, 36.733089>,  <43.760525, 29.335426, 36.797028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.414394, 29.614540, 36.733089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194550, 29.761749, 36.433094>,  <44.062645, 29.850075, 36.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194550, 29.761749, 36.433094>,  <44.414394, 29.614540, 36.733089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194550, 29.761749, 36.433094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324359, 0.921317, 0.214397,
		0.769883, -0.125432, -0.625737,
		-0.549610, 0.368024, -0.749992,
		44.029667, 29.872156, 36.208096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812080, 30.038944, 36.262829>,  <44.414394, 29.614540, 36.733089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812080, 30.038944, 36.262829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448360, 30.165245, 36.154404>,  <44.230129, 30.241026, 36.089348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448360, 30.165245, 36.154404>,  <44.812080, 30.038944, 36.262829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448360, 30.165245, 36.154404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349876, 0.932731, -0.087177,
		0.225304, -0.174109, -0.958605,
		-0.909299, 0.315752, -0.271064,
		44.175571, 30.259970, 36.073086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922974, 30.480280, 35.766697>,  <44.812080, 30.038944, 36.262829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922974, 30.480280, 35.766697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560299, 30.592398, 35.892780>,  <44.342693, 30.659668, 35.968430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560299, 30.592398, 35.892780>,  <44.922974, 30.480280, 35.766697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560299, 30.592398, 35.892780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270459, 0.959767, -0.075499,
		-0.323688, 0.016797, -0.946015,
		-0.906685, 0.280297, 0.315208,
		44.288292, 30.676487, 35.987343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718079, 31.023674, 35.338600>,  <44.922974, 30.480280, 35.766697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718079, 31.023674, 35.338600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479748, 31.062937, 35.657436>,  <44.336750, 31.086494, 35.848740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479748, 31.062937, 35.657436>,  <44.718079, 31.023674, 35.338600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479748, 31.062937, 35.657436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001682, 0.992348, -0.123462,
		-0.803109, -0.074904, -0.591106,
		-0.595830, 0.098159, 0.797089,
		44.300999, 31.092384, 35.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233101, 31.449591, 35.134754>,  <44.718079, 31.023674, 35.338600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233101, 31.449591, 35.134754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204605, 31.459541, 35.533615>,  <44.187508, 31.465511, 35.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204605, 31.459541, 35.533615>,  <44.233101, 31.449591, 35.134754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204605, 31.459541, 35.533615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053662, 0.998146, -0.028733,
		-0.996015, -0.055556, -0.069771,
		-0.071238, 0.024875, 0.997149,
		44.183235, 31.467003, 35.832760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649265, 31.871872, 35.324669>,  <44.233101, 31.449591, 35.134754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649265, 31.871872, 35.324669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895367, 31.869104, 35.639988>,  <44.043026, 31.867445, 35.829182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.895367, 31.869104, 35.639988>,  <43.649265, 31.871872, 35.324669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.895367, 31.869104, 35.639988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042219, 0.998816, -0.024187,
		-0.787201, 0.048163, 0.614813,
		0.615250, -0.006917, 0.788302,
		44.079941, 31.867029, 35.876480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326992, 32.263470, 35.853828>,  <43.649265, 31.871872, 35.324669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326992, 32.263470, 35.853828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716488, 32.269989, 35.944653>,  <43.950188, 32.273899, 35.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716488, 32.269989, 35.944653>,  <43.326992, 32.263470, 35.853828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716488, 32.269989, 35.944653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041531, 0.993414, 0.106791,
		-0.223828, -0.113417, 0.968007,
		0.973743, 0.016299, 0.227064,
		44.008610, 32.274879, 36.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445961, 32.694073, 36.447865>,  <43.326992, 32.263470, 35.853828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445961, 32.694073, 36.447865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819153, 32.662014, 36.307507>,  <44.043068, 32.642780, 36.223289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819153, 32.662014, 36.307507>,  <43.445961, 32.694073, 36.447865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819153, 32.662014, 36.307507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135770, 0.981239, 0.136880,
		0.333346, -0.175348, 0.926355,
		0.932978, -0.080142, -0.350899,
		44.099045, 32.637970, 36.202236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722580, 33.240021, 36.819710>,  <43.445961, 32.694073, 36.447865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722580, 33.240021, 36.819710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015388, 33.171494, 36.555954>,  <44.191074, 33.130379, 36.397701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015388, 33.171494, 36.555954>,  <43.722580, 33.240021, 36.819710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015388, 33.171494, 36.555954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334439, 0.933585, 0.128725,
		0.593540, -0.314754, 0.740703,
		0.732025, -0.171317, -0.659386,
		44.234997, 33.120098, 36.358139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406738, 33.594666, 37.150478>,  <43.722580, 33.240021, 36.819710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406738, 33.594666, 37.150478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415886, 33.557167, 36.752346>,  <44.421375, 33.534668, 36.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415886, 33.557167, 36.752346>,  <44.406738, 33.594666, 37.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415886, 33.557167, 36.752346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230906, 0.969170, -0.085977,
		0.972707, -0.227862, 0.043811,
		0.022869, -0.093747, -0.995333,
		44.422749, 33.529041, 36.453747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080032, 33.806648, 36.899010>,  <44.406738, 33.594666, 37.150478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080032, 33.806648, 36.899010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855820, 33.850277, 36.570641>,  <44.721291, 33.876453, 36.373619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855820, 33.850277, 36.570641>,  <45.080032, 33.806648, 36.899010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855820, 33.850277, 36.570641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459678, 0.865533, -0.198870,
		0.688841, -0.488831, -0.535296,
		-0.560530, 0.109074, -0.820919,
		44.687660, 33.882999, 36.324364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591145, 34.045883, 36.325325>,  <45.080032, 33.806648, 36.899010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591145, 34.045883, 36.325325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230064, 34.141426, 36.182171>,  <45.013416, 34.198753, 36.096279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230064, 34.141426, 36.182171>,  <45.591145, 34.045883, 36.325325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230064, 34.141426, 36.182171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332989, 0.914578, -0.229490,
		0.272501, -0.326332, -0.905125,
		-0.902697, 0.238861, -0.357888,
		44.959255, 34.213085, 36.074806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654282, 34.256317, 35.625412>,  <45.591145, 34.045883, 36.325325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654282, 34.256317, 35.625412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319164, 34.418037, 35.772186>,  <45.118095, 34.515072, 35.860252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319164, 34.418037, 35.772186>,  <45.654282, 34.256317, 35.625412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319164, 34.418037, 35.772186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294361, 0.900490, -0.320108,
		-0.459843, -0.160173, -0.873435,
		-0.837793, 0.404304, 0.366935,
		45.067825, 34.539330, 35.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384102, 34.193031, 35.362957>,  <45.654282, 34.256317, 35.625412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384102, 34.193031, 35.362957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478020, 34.579865, 35.402203>,  <46.534370, 34.811962, 35.425751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478020, 34.579865, 35.402203>,  <46.384102, 34.193031, 35.362957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478020, 34.579865, 35.402203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929815, -0.194023, -0.312729,
		-0.283397, 0.164659, -0.944761,
		0.234799, 0.967079, 0.098116,
		46.548458, 34.869987, 35.431637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751396, 34.534557, 34.743130>,  <46.384102, 34.193031, 35.362957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751396, 34.534557, 34.743130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858242, 34.669037, 35.104378>,  <46.922348, 34.749725, 35.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858242, 34.669037, 35.104378>,  <46.751396, 34.534557, 34.743130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858242, 34.669037, 35.104378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955114, 0.032202, -0.294482,
		-0.128087, 0.941240, -0.312507,
		0.267115, 0.336199, 0.903116,
		46.938377, 34.769897, 35.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203709, 35.098007, 34.668087>,  <46.751396, 34.534557, 34.743130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203709, 35.098007, 34.668087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.273434, 34.943100, 35.030224>,  <47.315269, 34.850155, 35.247505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.273434, 34.943100, 35.030224>,  <47.203709, 35.098007, 34.668087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.273434, 34.943100, 35.030224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964944, 0.250381, -0.078689,
		-0.196206, 0.887319, 0.417335,
		0.174315, -0.387265, 0.905340,
		47.325729, 34.826920, 35.301826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855736, 35.381363, 35.012257>,  <47.203709, 35.098007, 34.668087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855736, 35.381363, 35.012257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769924, 35.021313, 35.163918>,  <47.718437, 34.805283, 35.254913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.769924, 35.021313, 35.163918>,  <47.855736, 35.381363, 35.012257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.769924, 35.021313, 35.163918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972913, -0.231166, 0.001678,
		0.086136, 0.369239, 0.925334,
		-0.214525, -0.900125, 0.379150,
		47.705566, 34.751274, 35.277664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.807898, 34.588604, 44.618008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653769, 34.261780, 44.446457>,  <30.561291, 34.065685, 44.343525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.653769, 34.261780, 44.446457>,  <30.807898, 34.588604, 44.618008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653769, 34.261780, 44.446457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417505, 0.260116, -0.870649,
		0.822931, -0.514541, 0.240898,
		-0.385323, -0.817060, -0.428881,
		30.538172, 34.016663, 44.317791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392483, 34.150539, 44.308540>,  <30.807898, 34.588604, 44.618008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392483, 34.150539, 44.308540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050827, 34.055134, 44.123692>,  <30.845833, 33.997890, 44.012783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.050827, 34.055134, 44.123692>,  <31.392483, 34.150539, 44.308540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050827, 34.055134, 44.123692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451361, 0.101342, -0.886568,
		0.258296, -0.965835, 0.021098,
		-0.854141, -0.238520, -0.462117,
		30.794584, 33.983578, 43.985058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652979, 33.870945, 43.753078>,  <31.392483, 34.150539, 44.308540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652979, 33.870945, 43.753078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269947, 33.934322, 43.656796>,  <31.040129, 33.972351, 43.599026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269947, 33.934322, 43.656796>,  <31.652979, 33.870945, 43.753078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269947, 33.934322, 43.656796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248623, 0.031893, -0.968075,
		-0.145712, -0.986852, -0.069933,
		-0.957577, 0.158447, -0.240707,
		30.982674, 33.981857, 43.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563826, 33.428154, 43.220768>,  <31.652979, 33.870945, 43.753078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563826, 33.428154, 43.220768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.245272, 33.668713, 43.195183>,  <31.054138, 33.813049, 43.179832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.245272, 33.668713, 43.195183>,  <31.563826, 33.428154, 43.220768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245272, 33.668713, 43.195183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200839, 0.163220, -0.965931,
		-0.570467, -0.782101, -0.250770,
		-0.796387, 0.601396, -0.063965,
		31.006355, 33.849133, 43.175995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325291, 33.189041, 42.552826>,  <31.563826, 33.428154, 43.220768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325291, 33.189041, 42.552826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.171698, 33.547848, 42.640385>,  <31.079542, 33.763130, 42.692921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.171698, 33.547848, 42.640385>,  <31.325291, 33.189041, 42.552826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171698, 33.547848, 42.640385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123148, 0.284706, -0.950672,
		-0.915091, -0.338085, -0.219788,
		-0.383983, 0.897018, 0.218897,
		31.056503, 33.816952, 42.706055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847849, 33.298595, 42.102226>,  <31.325291, 33.189041, 42.552826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847849, 33.298595, 42.102226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936777, 33.672001, 42.214741>,  <30.990133, 33.896046, 42.282249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.936777, 33.672001, 42.214741>,  <30.847849, 33.298595, 42.102226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936777, 33.672001, 42.214741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045852, 0.278173, -0.959436,
		-0.973895, 0.226198, 0.019040,
		0.222319, 0.933517, 0.281282,
		31.003473, 33.952057, 42.299126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526588, 33.691730, 41.621231>,  <30.847849, 33.298595, 42.102226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526588, 33.691730, 41.621231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.800333, 33.921043, 41.801449>,  <30.964581, 34.058632, 41.909580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.800333, 33.921043, 41.801449>,  <30.526588, 33.691730, 41.621231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800333, 33.921043, 41.801449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132788, 0.509589, -0.850110,
		-0.716948, 0.641611, 0.272619,
		0.684364, 0.573283, 0.450547,
		31.005642, 34.093029, 41.936611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340729, 34.449032, 41.535023>,  <30.526588, 33.691730, 41.621231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340729, 34.449032, 41.535023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734243, 34.410156, 41.595310>,  <30.970352, 34.386829, 41.631481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.734243, 34.410156, 41.595310>,  <30.340729, 34.449032, 41.535023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734243, 34.410156, 41.595310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179337, 0.534500, -0.825923,
		-0.000285, 0.839562, 0.543264,
		0.983788, -0.097192, 0.150716,
		31.029379, 34.380997, 41.640526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631977, 35.120876, 41.337532>,  <30.340729, 34.449032, 41.535023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631977, 35.120876, 41.337532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922287, 34.846039, 41.323933>,  <31.096474, 34.681137, 41.315773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922287, 34.846039, 41.323933>,  <30.631977, 35.120876, 41.337532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922287, 34.846039, 41.323933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437959, 0.499597, -0.747392,
		0.530513, 0.527547, 0.663513,
		0.725774, -0.687092, -0.033999,
		31.140018, 34.639912, 41.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036879, 35.333145, 40.943527>,  <30.631977, 35.120876, 41.337532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036879, 35.333145, 40.943527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.241890, 34.989681, 40.941696>,  <31.364897, 34.783604, 40.940598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.241890, 34.989681, 40.941696>,  <31.036879, 35.333145, 40.943527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241890, 34.989681, 40.941696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509739, 0.308541, -0.803100,
		0.690998, 0.409282, 0.595827,
		0.512531, -0.858657, -0.004574,
		31.395649, 34.732082, 40.940323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786245, 35.563011, 40.982525>,  <31.036879, 35.333145, 40.943527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786245, 35.563011, 40.982525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.732172, 35.193260, 40.839836>,  <31.699728, 34.971409, 40.754223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.732172, 35.193260, 40.839836>,  <31.786245, 35.563011, 40.982525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732172, 35.193260, 40.839836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783757, 0.120497, -0.609266,
		0.606176, -0.361944, 0.708200,
		-0.135184, -0.924379, -0.356719,
		31.691616, 34.915947, 40.732819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412018, 35.189251, 41.098877>,  <31.786245, 35.563011, 40.982525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412018, 35.189251, 41.098877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210716, 35.029919, 40.792133>,  <32.089935, 34.934319, 40.608089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.210716, 35.029919, 40.792133>,  <32.412018, 35.189251, 41.098877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210716, 35.029919, 40.792133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807073, 0.100481, -0.581839,
		0.308818, -0.911722, 0.270913,
		-0.503254, -0.398329, -0.766857,
		32.059742, 34.910419, 40.562077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864784, 34.651432, 40.737156>,  <32.412018, 35.189251, 41.098877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864784, 34.651432, 40.737156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603848, 34.754288, 40.451969>,  <32.447285, 34.816002, 40.280857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603848, 34.754288, 40.451969>,  <32.864784, 34.651432, 40.737156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603848, 34.754288, 40.451969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743636, 0.035351, -0.667650,
		-0.146478, -0.965726, -0.214283,
		-0.652342, 0.257144, -0.712970,
		32.408146, 34.831432, 40.238079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965389, 34.273895, 40.170670>,  <32.864784, 34.651432, 40.737156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965389, 34.273895, 40.170670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786461, 34.603333, 40.031181>,  <32.679104, 34.800995, 39.947491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786461, 34.603333, 40.031181>,  <32.965389, 34.273895, 40.170670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786461, 34.603333, 40.031181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671389, 0.051627, -0.739304,
		-0.590881, -0.564831, -0.576043,
		-0.447321, 0.823591, -0.348716,
		32.652264, 34.850410, 39.926567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242153, 34.256363, 39.509563>,  <32.965389, 34.273895, 40.170670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242153, 34.256363, 39.509563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.049767, 34.605377, 39.543842>,  <32.934334, 34.814785, 39.564407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.049767, 34.605377, 39.543842>,  <33.242153, 34.256363, 39.509563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049767, 34.605377, 39.543842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621245, 0.408145, -0.668934,
		-0.618647, -0.268499, -0.738366,
		-0.480968, 0.872540, 0.085695,
		32.905476, 34.867138, 39.569550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261353, 34.509312, 38.846310>,  <33.242153, 34.256363, 39.509563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261353, 34.509312, 38.846310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155285, 34.832733, 39.056423>,  <33.091644, 35.026787, 39.182491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.155285, 34.832733, 39.056423>,  <33.261353, 34.509312, 38.846310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155285, 34.832733, 39.056423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591539, 0.566635, -0.573591,
		-0.761425, 0.158631, -0.628544,
		-0.265166, 0.808555, 0.525286,
		33.075733, 35.075298, 39.214008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026043, 34.985416, 38.370625>,  <33.261353, 34.509312, 38.846310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026043, 34.985416, 38.370625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.136116, 35.203808, 38.687153>,  <33.202160, 35.334843, 38.877068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.136116, 35.203808, 38.687153>,  <33.026043, 34.985416, 38.370625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136116, 35.203808, 38.687153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484539, 0.632147, -0.604659,
		-0.830359, 0.549816, -0.090591,
		0.275184, 0.545979, 0.791316,
		33.218670, 35.367603, 38.924549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943214, 35.686699, 38.115498>,  <33.026043, 34.985416, 38.370625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943214, 35.686699, 38.115498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217228, 35.690880, 38.406872>,  <33.381638, 35.693390, 38.581696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217228, 35.690880, 38.406872>,  <32.943214, 35.686699, 38.115498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217228, 35.690880, 38.406872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528718, 0.680750, -0.506988,
		-0.501184, 0.732441, 0.460809,
		0.685035, 0.010456, 0.728436,
		33.422737, 35.694016, 38.625404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164738, 36.406513, 38.175049>,  <32.943214, 35.686699, 38.115498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164738, 36.406513, 38.175049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446510, 36.194954, 38.364380>,  <33.615574, 36.068020, 38.477978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.446510, 36.194954, 38.364380>,  <33.164738, 36.406513, 38.175049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446510, 36.194954, 38.364380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692950, 0.656796, -0.297386,
		-0.153590, 0.537480, 0.829171,
		0.704436, -0.528899, 0.473325,
		33.657841, 36.036285, 38.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635994, 36.850903, 38.296173>,  <33.164738, 36.406513, 38.175049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635994, 36.850903, 38.296173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.852215, 36.514870, 38.314342>,  <33.981949, 36.313251, 38.325245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.852215, 36.514870, 38.314342>,  <33.635994, 36.850903, 38.296173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852215, 36.514870, 38.314342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749214, 0.456119, -0.480243,
		0.382725, 0.293629, 0.875959,
		0.540554, -0.840082, 0.045423,
		34.014381, 36.262844, 38.327969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453594, 36.937740, 38.501823>,  <33.635994, 36.850903, 38.296173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453594, 36.937740, 38.501823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467823, 36.581932, 38.319622>,  <34.476360, 36.368446, 38.210300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467823, 36.581932, 38.319622>,  <34.453594, 36.937740, 38.501823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467823, 36.581932, 38.319622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860612, 0.258964, -0.438502,
		0.508017, -0.376408, 0.774749,
		0.035576, -0.889525, -0.455499,
		34.478497, 36.315075, 38.182972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154732, 36.858757, 38.379635>,  <34.453594, 36.937740, 38.501823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154732, 36.858757, 38.379635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996071, 36.577332, 38.143780>,  <34.900875, 36.408478, 38.002266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.996071, 36.577332, 38.143780>,  <35.154732, 36.858757, 38.379635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996071, 36.577332, 38.143780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778667, 0.082298, -0.622017,
		0.486152, -0.705854, 0.515196,
		-0.396654, -0.703560, -0.589634,
		34.877075, 36.366264, 37.966888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807487, 37.121723, 38.546898>,  <35.154732, 36.858757, 38.379635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807487, 37.121723, 38.546898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163563, 37.262306, 38.662865>,  <36.377209, 37.346657, 38.732445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163563, 37.262306, 38.662865>,  <35.807487, 37.121723, 38.546898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163563, 37.262306, 38.662865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304347, -0.014804, 0.952446,
		0.339033, -0.936088, 0.093785,
		0.890185, 0.351454, 0.289914,
		36.430618, 37.367741, 38.749840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100574, 36.562683, 38.867912>,  <35.807487, 37.121723, 38.546898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100574, 36.562683, 38.867912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250904, 36.915108, 38.982796>,  <36.341103, 37.126560, 39.051727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250904, 36.915108, 38.982796>,  <36.100574, 36.562683, 38.867912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250904, 36.915108, 38.982796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328397, -0.163191, 0.930335,
		0.866551, -0.443963, 0.228006,
		0.375826, 0.881060, 0.287210,
		36.363651, 37.179424, 39.068958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354969, 36.355480, 39.500927>,  <36.100574, 36.562683, 38.867912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354969, 36.355480, 39.500927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328003, 36.754318, 39.486744>,  <36.311825, 36.993622, 39.478233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328003, 36.754318, 39.486744>,  <36.354969, 36.355480, 39.500927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328003, 36.754318, 39.486744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288245, 0.014559, 0.957446,
		0.955181, 0.074766, 0.286426,
		-0.067414, 0.997095, -0.035458,
		36.307777, 37.053448, 39.476105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774712, 36.673012, 40.083820>,  <36.354969, 36.355480, 39.500927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774712, 36.673012, 40.083820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461716, 36.900257, 39.981880>,  <36.273918, 37.036606, 39.920715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461716, 36.900257, 39.981880>,  <36.774712, 36.673012, 40.083820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461716, 36.900257, 39.981880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350583, -0.063735, 0.934360,
		0.514584, 0.820476, 0.249044,
		-0.782493, 0.568117, -0.254848,
		36.226967, 37.070694, 39.905426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655823, 37.074368, 40.600937>,  <36.774712, 36.673012, 40.083820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655823, 37.074368, 40.600937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297348, 37.132774, 40.433350>,  <36.082264, 37.167816, 40.332798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.297348, 37.132774, 40.433350>,  <36.655823, 37.074368, 40.600937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297348, 37.132774, 40.433350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425712, -0.016950, 0.904700,
		0.124997, 0.989138, 0.077350,
		-0.896184, 0.146013, -0.418969,
		36.028492, 37.176579, 40.307659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310513, 37.583275, 40.910019>,  <36.655823, 37.074368, 40.600937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310513, 37.583275, 40.910019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010265, 37.382046, 40.738678>,  <35.830116, 37.261311, 40.635872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010265, 37.382046, 40.738678>,  <36.310513, 37.583275, 40.910019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010265, 37.382046, 40.738678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547721, 0.111157, 0.829244,
		-0.369553, 0.857068, -0.358978,
		-0.750621, -0.503070, -0.428356,
		35.785080, 37.231125, 40.610172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719112, 37.955639, 40.952168>,  <36.310513, 37.583275, 40.910019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719112, 37.955639, 40.952168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585678, 37.582981, 40.894539>,  <35.505619, 37.359386, 40.859962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585678, 37.582981, 40.894539>,  <35.719112, 37.955639, 40.952168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585678, 37.582981, 40.894539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604189, 0.093973, 0.791281,
		-0.723656, 0.351002, -0.594238,
		-0.333583, -0.931647, -0.144067,
		35.485603, 37.303486, 40.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914352, 38.103889, 41.016754>,  <35.719112, 37.955639, 40.952168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914352, 38.103889, 41.016754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935703, 37.704731, 41.031490>,  <34.948513, 37.465237, 41.040333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.935703, 37.704731, 41.031490>,  <34.914352, 38.103889, 41.016754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935703, 37.704731, 41.031490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594632, -0.002131, 0.803995,
		-0.802224, -0.064822, -0.593494,
		0.053381, -0.997895, 0.036836,
		34.951717, 37.405361, 41.042542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221401, 37.794754, 41.164757>,  <34.914352, 38.103889, 41.016754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221401, 37.794754, 41.164757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480503, 37.504044, 41.256149>,  <34.635963, 37.329617, 41.310986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.480503, 37.504044, 41.256149>,  <34.221401, 37.794754, 41.164757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480503, 37.504044, 41.256149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616587, -0.323964, 0.717543,
		-0.447475, -0.605672, -0.657972,
		0.647755, -0.726780, 0.228484,
		34.674831, 37.286011, 41.324696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898052, 37.224632, 41.177799>,  <34.221401, 37.794754, 41.164757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898052, 37.224632, 41.177799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203129, 37.157421, 41.427624>,  <34.386173, 37.117092, 41.577518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.203129, 37.157421, 41.427624>,  <33.898052, 37.224632, 41.177799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203129, 37.157421, 41.427624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637907, -0.354707, 0.683562,
		0.106677, -0.919755, -0.377719,
		0.762689, -0.168029, 0.624557,
		34.431934, 37.107014, 41.614990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826706, 36.510292, 41.406921>,  <33.898052, 37.224632, 41.177799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826706, 36.510292, 41.406921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.074886, 36.680981, 41.670116>,  <34.223793, 36.783394, 41.828033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.074886, 36.680981, 41.670116>,  <33.826706, 36.510292, 41.406921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074886, 36.680981, 41.670116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357873, -0.592502, 0.721712,
		0.697831, -0.683262, -0.214905,
		0.620451, 0.426724, 0.657987,
		34.261021, 36.808998, 41.867512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061031, 35.913177, 41.880180>,  <33.826706, 36.510292, 41.406921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061031, 35.913177, 41.880180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 36.253296, 42.071815>,  <34.200478, 36.457367, 42.186798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148186, 36.253296, 42.071815>,  <34.061031, 35.913177, 41.880180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148186, 36.253296, 42.071815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326105, -0.399246, 0.856889,
		0.919881, -0.342938, 0.190295,
		0.217885, 0.850292, 0.479092,
		34.213551, 36.508385, 42.215542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327240, 35.700710, 42.561909>,  <34.061031, 35.913177, 41.880180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327240, 35.700710, 42.561909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225979, 36.085907, 42.598927>,  <34.165222, 36.317024, 42.621136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225979, 36.085907, 42.598927>,  <34.327240, 35.700710, 42.561909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225979, 36.085907, 42.598927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433711, -0.198481, 0.878920,
		0.864760, 0.182362, 0.467905,
		-0.253152, 0.962990, 0.092546,
		34.150032, 36.374805, 42.626690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635414, 36.001766, 43.168728>,  <34.327240, 35.700710, 42.561909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635414, 36.001766, 43.168728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313705, 36.230183, 43.102921>,  <34.120682, 36.367233, 43.063435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.313705, 36.230183, 43.102921>,  <34.635414, 36.001766, 43.168728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313705, 36.230183, 43.102921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310196, -0.167263, 0.935843,
		0.506884, 0.803703, 0.311658,
		-0.804268, 0.571038, -0.164523,
		34.072426, 36.401493, 43.053562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611649, 36.492630, 43.768841>,  <34.635414, 36.001766, 43.168728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611649, 36.492630, 43.768841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245876, 36.514397, 43.608410>,  <34.026413, 36.527454, 43.512154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.245876, 36.514397, 43.608410>,  <34.611649, 36.492630, 43.768841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245876, 36.514397, 43.608410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404720, -0.110877, 0.907694,
		0.004922, 0.992343, 0.123412,
		-0.914428, 0.054415, -0.401075,
		33.971546, 36.530720, 43.488087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277000, 36.906876, 44.277477>,  <34.611649, 36.492630, 43.768841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277000, 36.906876, 44.277477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.002506, 36.704067, 44.068859>,  <33.837811, 36.582382, 43.943687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.002506, 36.704067, 44.068859>,  <34.277000, 36.906876, 44.277477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002506, 36.704067, 44.068859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559578, -0.090093, 0.823867,
		-0.464702, 0.857215, -0.221890,
		-0.686240, -0.507017, -0.521544,
		33.796635, 36.551964, 43.912395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555874, 37.170403, 44.420193>,  <34.277000, 36.906876, 44.277477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555874, 37.170403, 44.420193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.472946, 36.814743, 44.257008>,  <33.423191, 36.601345, 44.159096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.472946, 36.814743, 44.257008>,  <33.555874, 37.170403, 44.420193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472946, 36.814743, 44.257008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527054, -0.249804, 0.812288,
		-0.824156, 0.383418, -0.416842,
		-0.207317, -0.889151, -0.407959,
		33.410751, 36.547997, 44.134621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811646, 37.139130, 44.367722>,  <33.555874, 37.170403, 44.420193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811646, 37.139130, 44.367722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972282, 36.772816, 44.364784>,  <33.068665, 36.553028, 44.363022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972282, 36.772816, 44.364784>,  <32.811646, 37.139130, 44.367722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972282, 36.772816, 44.364784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666234, -0.297639, 0.683771,
		-0.628376, -0.269705, -0.729660,
		0.401592, -0.915789, -0.007342,
		33.092758, 36.498077, 44.362583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.283073, 36.740585, 44.657646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599472, 36.496197, 44.670506>,  <32.789310, 36.349564, 44.678219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599472, 36.496197, 44.670506>,  <32.283073, 36.740585, 44.657646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599472, 36.496197, 44.670506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488536, -0.599106, 0.634354,
		-0.368318, -0.517476, -0.772374,
		0.790996, -0.610976, 0.032144,
		32.836769, 36.312904, 44.680149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998373, 36.067013, 44.633018>,  <32.283073, 36.740585, 44.657646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998373, 36.067013, 44.633018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360462, 35.999275, 44.788914>,  <32.577717, 35.958633, 44.882450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360462, 35.999275, 44.788914>,  <31.998373, 36.067013, 44.633018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360462, 35.999275, 44.788914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413751, -0.560345, 0.717512,
		0.096881, -0.810762, -0.577303,
		0.905221, -0.169347, 0.389740,
		32.632027, 35.948471, 44.905834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049473, 35.416359, 44.656391>,  <31.998373, 36.067013, 44.633018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049473, 35.416359, 44.656391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285366, 35.556499, 44.947453>,  <32.426903, 35.640583, 45.122089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.285366, 35.556499, 44.947453>,  <32.049473, 35.416359, 44.656391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285366, 35.556499, 44.947453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441323, -0.614772, 0.653673,
		0.676352, -0.706620, -0.207933,
		0.589730, 0.350347, 0.727650,
		32.462284, 35.661602, 45.165749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336872, 34.850639, 44.924843>,  <32.049473, 35.416359, 44.656391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336872, 34.850639, 44.924843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388725, 35.130356, 45.206036>,  <32.419838, 35.298187, 45.374752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.388725, 35.130356, 45.206036>,  <32.336872, 34.850639, 44.924843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388725, 35.130356, 45.206036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197752, -0.676491, 0.709404,
		0.971643, -0.230979, 0.050591,
		0.129633, 0.699292, 0.702984,
		32.427616, 35.340145, 45.416931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443233, 34.496098, 45.610901>,  <32.336872, 34.850639, 44.924843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443233, 34.496098, 45.610901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363785, 34.870682, 45.726547>,  <32.316116, 35.095432, 45.795937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363785, 34.870682, 45.726547>,  <32.443233, 34.496098, 45.610901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363785, 34.870682, 45.726547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311626, -0.340030, 0.887282,
		0.929215, 0.086135, 0.359362,
		-0.198620, 0.936462, 0.289119,
		32.304199, 35.151619, 45.813282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627583, 34.612564, 46.286579>,  <32.443233, 34.496098, 45.610901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627583, 34.612564, 46.286579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369537, 34.914848, 46.241432>,  <32.214710, 35.096218, 46.214344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.369537, 34.914848, 46.241432>,  <32.627583, 34.612564, 46.286579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369537, 34.914848, 46.241432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340108, -0.151726, 0.928066,
		0.684221, 0.637092, 0.354902,
		-0.645111, 0.755707, -0.112866,
		32.176003, 35.141560, 46.207573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516438, 34.926205, 46.983860>,  <32.627583, 34.612564, 46.286579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516438, 34.926205, 46.983860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201008, 35.061413, 46.778378>,  <32.011749, 35.142536, 46.655087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.201008, 35.061413, 46.778378>,  <32.516438, 34.926205, 46.983860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201008, 35.061413, 46.778378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566888, -0.075856, 0.820295,
		0.238308, 0.938077, 0.251438,
		-0.788573, 0.338020, -0.513707,
		31.964436, 35.162819, 46.624264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305302, 35.443302, 47.392929>,  <32.516438, 34.926205, 46.983860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305302, 35.443302, 47.392929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009804, 35.302460, 47.163052>,  <31.832504, 35.217953, 47.025127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009804, 35.302460, 47.163052>,  <32.305302, 35.443302, 47.392929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009804, 35.302460, 47.163052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565704, -0.139569, 0.812711,
		-0.366373, 0.925494, -0.096084,
		-0.738749, -0.352111, -0.574690,
		31.788179, 35.196827, 46.990646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759455, 35.932617, 47.492607>,  <32.305302, 35.443302, 47.392929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759455, 35.932617, 47.492607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624453, 35.573753, 47.378628>,  <31.543451, 35.358437, 47.310242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624453, 35.573753, 47.378628>,  <31.759455, 35.932617, 47.492607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624453, 35.573753, 47.378628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554608, -0.055071, 0.830288,
		-0.760592, 0.438261, -0.478985,
		-0.337505, -0.897159, -0.284950,
		31.523201, 35.304607, 47.293144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109068, 35.990791, 47.729572>,  <31.759455, 35.932617, 47.492607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109068, 35.990791, 47.729572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175941, 35.599255, 47.682392>,  <31.216066, 35.364330, 47.654083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.175941, 35.599255, 47.682392>,  <31.109068, 35.990791, 47.729572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175941, 35.599255, 47.682392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515324, -0.188751, 0.835951,
		-0.840530, -0.078974, -0.535978,
		0.167185, -0.978844, -0.117954,
		31.226097, 35.305603, 47.647007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473623, 35.687916, 47.863880>,  <31.109068, 35.990791, 47.729572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473623, 35.687916, 47.863880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742384, 35.395588, 47.911953>,  <30.903641, 35.220192, 47.940796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742384, 35.395588, 47.911953>,  <30.473623, 35.687916, 47.863880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742384, 35.395588, 47.911953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565152, -0.401026, 0.720958,
		-0.478698, -0.552334, -0.682477,
		0.671901, -0.730825, 0.120182,
		30.943954, 35.176342, 47.948009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926418, 35.168404, 48.084293>,  <30.473623, 35.687916, 47.863880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926418, 35.168404, 48.084293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302757, 35.052666, 48.154819>,  <30.528561, 34.983223, 48.197136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.302757, 35.052666, 48.154819>,  <29.926418, 35.168404, 48.084293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302757, 35.052666, 48.154819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309279, -0.520841, 0.795658,
		-0.138384, -0.803123, -0.579519,
		0.940849, -0.289340, 0.176313,
		30.585012, 34.965862, 48.207714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815763, 34.491264, 48.205620>,  <29.926418, 35.168404, 48.084293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815763, 34.491264, 48.205620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167595, 34.577618, 48.375202>,  <30.378693, 34.629429, 48.476952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167595, 34.577618, 48.375202>,  <29.815763, 34.491264, 48.205620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167595, 34.577618, 48.375202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274739, -0.497035, 0.823089,
		0.388409, -0.840448, -0.377870,
		0.879578, 0.215879, 0.423957,
		30.431469, 34.642380, 48.502388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938345, 33.935150, 48.550426>,  <29.815763, 34.491264, 48.205620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938345, 33.935150, 48.550426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212500, 34.163761, 48.730919>,  <30.376991, 34.300926, 48.839214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.212500, 34.163761, 48.730919>,  <29.938345, 33.935150, 48.550426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212500, 34.163761, 48.730919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174725, -0.472486, 0.863845,
		0.706908, -0.670907, -0.223975,
		0.685385, 0.571525, 0.451228,
		30.418116, 34.335220, 48.866287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508234, 33.566406, 48.931694>,  <29.938345, 33.935150, 48.550426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508234, 33.566406, 48.931694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.510847, 33.924232, 49.110447>,  <30.512415, 34.138927, 49.217701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.510847, 33.924232, 49.110447>,  <30.508234, 33.566406, 48.931694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510847, 33.924232, 49.110447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, -0.446808, 0.894569,
		0.999924, -0.010514, 0.006428,
		0.006534, 0.894568, 0.446884,
		30.512808, 34.192604, 49.244511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953688, 33.584961, 49.454708>,  <30.508234, 33.566406, 48.931694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953688, 33.584961, 49.454708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.716780, 33.878235, 49.588367>,  <30.574635, 34.054199, 49.668564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.716780, 33.878235, 49.588367>,  <30.953688, 33.584961, 49.454708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716780, 33.878235, 49.588367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046528, -0.445142, 0.894251,
		0.804396, 0.514090, 0.297758,
		-0.592270, 0.733185, 0.334150,
		30.539099, 34.098190, 49.688614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960924, 33.484127, 50.170090>,  <30.953688, 33.584961, 49.454708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960924, 33.484127, 50.170090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664633, 33.747768, 50.118080>,  <30.486858, 33.905952, 50.086876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.664633, 33.747768, 50.118080>,  <30.960924, 33.484127, 50.170090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664633, 33.747768, 50.118080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423130, -0.307390, 0.852334,
		0.521808, 0.686364, 0.506578,
		-0.740728, 0.659103, -0.130022,
		30.442415, 33.945499, 50.079075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905151, 33.832741, 50.795670>,  <30.960924, 33.484127, 50.170090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905151, 33.832741, 50.795670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547749, 33.879223, 50.622169>,  <30.333307, 33.907112, 50.518070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547749, 33.879223, 50.622169>,  <30.905151, 33.832741, 50.795670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547749, 33.879223, 50.622169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447912, -0.299335, 0.842480,
		-0.031941, 0.947046, 0.319506,
		-0.893507, 0.116201, -0.433755,
		30.279697, 33.914082, 50.492043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510185, 34.096367, 51.250000>,  <30.905151, 33.832741, 50.795670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510185, 34.096367, 51.250000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239763, 33.936817, 51.002174>,  <30.077511, 33.841087, 50.853481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239763, 33.936817, 51.002174>,  <30.510185, 34.096367, 51.250000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239763, 33.936817, 51.002174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474793, -0.407194, 0.780234,
		-0.563493, 0.821643, 0.085904,
		-0.676053, -0.398870, -0.619561,
		30.036947, 33.817158, 50.816307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795332, 34.171471, 51.584969>,  <30.510185, 34.096367, 51.250000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795332, 34.171471, 51.584969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748899, 33.858795, 51.339863>,  <29.721041, 33.671188, 51.192799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748899, 33.858795, 51.339863>,  <29.795332, 34.171471, 51.584969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748899, 33.858795, 51.339863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651246, -0.405911, 0.641183,
		-0.749936, 0.473491, -0.461955,
		-0.116081, -0.781692, -0.612766,
		29.714075, 33.624287, 51.156033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105009, 34.091099, 51.445190>,  <29.795332, 34.171471, 51.584969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105009, 34.091099, 51.445190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266466, 33.728996, 51.392151>,  <29.363340, 33.511734, 51.360329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.266466, 33.728996, 51.392151>,  <29.105009, 34.091099, 51.445190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266466, 33.728996, 51.392151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677912, -0.393251, 0.621119,
		-0.614417, -0.160819, -0.772417,
		0.403642, -0.905257, -0.132599,
		29.387558, 33.457420, 51.352371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594301, 33.611965, 51.273121>,  <29.105009, 34.091099, 51.445190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594301, 33.611965, 51.273121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875826, 33.363724, 51.411400>,  <29.044741, 33.214779, 51.494366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.875826, 33.363724, 51.411400>,  <28.594301, 33.611965, 51.273121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875826, 33.363724, 51.411400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705880, -0.556233, 0.438564,
		-0.079886, -0.552685, -0.829553,
		0.703812, -0.620600, 0.345694,
		29.086969, 33.177544, 51.515106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359753, 32.971470, 51.087212>,  <28.594301, 33.611965, 51.273121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359753, 32.971470, 51.087212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.635612, 32.910271, 51.370331>,  <28.801128, 32.873550, 51.540203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.635612, 32.910271, 51.370331>,  <28.359753, 32.971470, 51.087212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635612, 32.910271, 51.370331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622315, -0.625015, 0.471254,
		0.370279, -0.765472, -0.526257,
		0.689650, -0.153002, 0.707795,
		28.842508, 32.864368, 51.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508068, 32.174828, 51.252392>,  <28.359753, 32.971470, 51.087212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508068, 32.174828, 51.252392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609144, 32.404327, 51.564022>,  <28.669790, 32.542027, 51.750999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.609144, 32.404327, 51.564022>,  <28.508068, 32.174828, 51.252392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609144, 32.404327, 51.564022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564564, -0.566486, 0.600301,
		0.785758, -0.591528, 0.180774,
		0.252689, 0.573750, 0.779076,
		28.684952, 32.576450, 51.797745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341869, 31.676414, 51.765770>,  <28.508068, 32.174828, 51.252392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341869, 31.676414, 51.765770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.148060, 31.397963, 51.553867>,  <28.031775, 31.230890, 51.426727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.148060, 31.397963, 51.553867>,  <28.341869, 31.676414, 51.765770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148060, 31.397963, 51.553867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471193, 0.302541, -0.828520,
		0.737032, -0.651053, 0.181425,
		-0.484522, -0.696132, -0.529754,
		28.002703, 31.189123, 51.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778645, 31.367603, 51.358158>,  <28.341869, 31.676414, 51.765770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778645, 31.367603, 51.358158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.445711, 31.296585, 51.148132>,  <28.245951, 31.253973, 51.022118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.445711, 31.296585, 51.148132>,  <28.778645, 31.367603, 51.358158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445711, 31.296585, 51.148132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523690, 0.058414, -0.849904,
		0.181570, -0.982377, 0.044360,
		-0.832335, -0.177548, -0.525067,
		28.196011, 31.243320, 50.990612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945471, 30.904715, 50.897503>,  <28.778645, 31.367603, 51.358158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945471, 30.904715, 50.897503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598970, 31.028439, 50.740562>,  <28.391071, 31.102673, 50.646397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.598970, 31.028439, 50.740562>,  <28.945471, 30.904715, 50.897503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598970, 31.028439, 50.740562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405115, -0.024733, -0.913931,
		-0.292394, -0.950639, -0.103882,
		-0.866249, 0.309312, -0.392350,
		28.339096, 31.121233, 50.622856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085394, 30.548841, 50.339748>,  <28.945471, 30.904715, 50.897503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085394, 30.548841, 50.339748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.809727, 30.829691, 50.268112>,  <28.644327, 30.998199, 50.225128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.809727, 30.829691, 50.268112>,  <29.085394, 30.548841, 50.339748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809727, 30.829691, 50.268112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391375, 0.152677, -0.907478,
		-0.609816, -0.695496, -0.380012,
		-0.689166, 0.702121, -0.179095,
		28.602978, 31.040327, 50.214382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810959, 30.406528, 49.700050>,  <29.085394, 30.548841, 50.339748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810959, 30.406528, 49.700050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.743364, 30.797270, 49.752518>,  <28.702808, 31.031713, 49.784000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.743364, 30.797270, 49.752518>,  <28.810959, 30.406528, 49.700050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743364, 30.797270, 49.752518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103016, 0.149861, -0.983326,
		-0.980220, -0.152654, -0.125956,
		-0.168985, 0.976851, 0.131171,
		28.692669, 31.090324, 49.791870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260355, 30.595949, 49.282940>,  <28.810959, 30.406528, 49.700050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260355, 30.595949, 49.282940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470467, 30.928551, 49.355247>,  <28.596535, 31.128113, 49.398632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.470467, 30.928551, 49.355247>,  <28.260355, 30.595949, 49.282940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470467, 30.928551, 49.355247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066148, 0.251699, -0.965542,
		-0.848354, 0.495223, 0.187215,
		0.525281, 0.831506, 0.180772,
		28.628052, 31.178003, 49.409477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178516, 31.139776, 48.715839>,  <28.260355, 30.595949, 49.282940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178516, 31.139776, 48.715839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480015, 31.333515, 48.893501>,  <28.660913, 31.449759, 49.000099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.480015, 31.333515, 48.893501>,  <28.178516, 31.139776, 48.715839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480015, 31.333515, 48.893501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286235, 0.366423, -0.885327,
		-0.591554, 0.794445, 0.137554,
		0.753747, 0.484346, 0.444157,
		28.706139, 31.478819, 49.026749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155432, 31.926853, 48.588047>,  <28.178516, 31.139776, 48.715839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155432, 31.926853, 48.588047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529375, 31.820202, 48.681812>,  <28.753740, 31.756210, 48.738071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.529375, 31.820202, 48.681812>,  <28.155432, 31.926853, 48.588047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529375, 31.820202, 48.681812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347591, 0.552993, -0.757218,
		0.072265, 0.789372, 0.609647,
		0.934857, -0.266628, 0.234417,
		28.809832, 31.740213, 48.752136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569168, 32.555859, 48.504814>,  <28.155432, 31.926853, 48.588047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569168, 32.555859, 48.504814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856159, 32.277325, 48.512234>,  <29.028355, 32.110207, 48.516685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.856159, 32.277325, 48.512234>,  <28.569168, 32.555859, 48.504814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856159, 32.277325, 48.512234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494600, 0.490504, -0.717479,
		0.490504, 0.523953, 0.696333,
		0.717479, -0.696333, 0.018553,
		29.071404, 32.068424, 48.517799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148891, 32.935799, 48.545380>,  <28.569168, 32.555859, 48.504814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148891, 32.935799, 48.545380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250484, 32.585926, 48.380249>,  <29.311441, 32.376003, 48.281170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.250484, 32.585926, 48.380249>,  <29.148891, 32.935799, 48.545380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250484, 32.585926, 48.380249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447110, 0.484659, -0.751797,
		0.857663, 0.006366, 0.514174,
		0.253985, -0.874680, -0.412828,
		29.326679, 32.323521, 48.256401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851868, 32.975819, 48.368977>,  <29.148891, 32.935799, 48.545380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851868, 32.975819, 48.368977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710222, 32.692444, 48.124775>,  <29.625235, 32.522419, 47.978252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710222, 32.692444, 48.124775>,  <29.851868, 32.975819, 48.368977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710222, 32.692444, 48.124775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431560, 0.455356, -0.778721,
		0.829674, -0.539226, 0.144487,
		-0.354113, -0.708439, -0.610506,
		29.603989, 32.479912, 47.941624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482531, 32.674152, 48.000580>,  <29.851868, 32.975819, 48.368977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482531, 32.674152, 48.000580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146313, 32.595261, 47.798752>,  <29.944582, 32.547924, 47.677654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146313, 32.595261, 47.798752>,  <30.482531, 32.674152, 48.000580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146313, 32.595261, 47.798752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371506, 0.468031, -0.801829,
		0.394296, -0.861422, -0.320129,
		-0.840544, -0.197228, -0.504566,
		29.894150, 32.536091, 47.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662901, 32.614342, 47.322998>,  <30.482531, 32.674152, 48.000580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662901, 32.614342, 47.322998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266363, 32.631824, 47.273479>,  <30.028440, 32.642315, 47.243767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.266363, 32.631824, 47.273479>,  <30.662901, 32.614342, 47.322998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266363, 32.631824, 47.273479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131121, 0.281786, -0.950475,
		-0.006660, -0.958481, -0.285078,
		-0.991344, 0.043711, -0.123801,
		29.968960, 32.644936, 47.236340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572552, 32.248749, 46.750660>,  <30.662901, 32.614342, 47.322998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572552, 32.248749, 46.750660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271633, 32.509163, 46.791058>,  <30.091082, 32.665413, 46.815296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.271633, 32.509163, 46.791058>,  <30.572552, 32.248749, 46.750660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271633, 32.509163, 46.791058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163744, 0.333251, -0.928510,
		-0.638153, -0.681977, -0.357307,
		-0.752295, 0.651039, 0.100996,
		30.045944, 32.704475, 46.821358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139330, 32.174232, 46.157776>,  <30.572552, 32.248749, 46.750660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139330, 32.174232, 46.157776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023531, 32.538807, 46.274715>,  <29.954052, 32.757553, 46.344879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.023531, 32.538807, 46.274715>,  <30.139330, 32.174232, 46.157776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023531, 32.538807, 46.274715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034289, 0.315111, -0.948435,
		-0.956564, -0.264546, -0.122477,
		-0.289499, 0.911439, 0.292353,
		29.936682, 32.812237, 46.362423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557734, 32.383759, 45.759750>,  <30.139330, 32.174232, 46.157776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557734, 32.383759, 45.759750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703213, 32.727451, 45.903660>,  <29.790501, 32.933666, 45.990005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703213, 32.727451, 45.903660>,  <29.557734, 32.383759, 45.759750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703213, 32.727451, 45.903660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008624, 0.383106, -0.923664,
		-0.931476, 0.339039, 0.131925,
		0.363699, 0.859234, 0.359778,
		29.812323, 32.985222, 46.011593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173719, 32.927429, 45.461273>,  <29.557734, 32.383759, 45.759750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173719, 32.927429, 45.461273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501585, 33.121029, 45.583847>,  <29.698303, 33.237186, 45.657391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501585, 33.121029, 45.583847>,  <29.173719, 32.927429, 45.461273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501585, 33.121029, 45.583847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021775, 0.508218, -0.860953,
		-0.572432, 0.712364, 0.406028,
		0.819663, 0.483996, 0.306432,
		29.747484, 33.266228, 45.675777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118309, 33.483635, 44.957943>,  <29.173719, 32.927429, 45.461273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118309, 33.483635, 44.957943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.492785, 33.487492, 45.098488>,  <29.717470, 33.489807, 45.182816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.492785, 33.487492, 45.098488>,  <29.118309, 33.483635, 44.957943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492785, 33.487492, 45.098488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303710, 0.481040, -0.822412,
		-0.176949, 0.876646, 0.447416,
		0.936189, 0.009640, 0.351366,
		29.773642, 33.490383, 45.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424854, 34.150097, 44.870792>,  <29.118309, 33.483635, 44.957943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424854, 34.150097, 44.870792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738562, 33.907001, 44.920719>,  <29.926786, 33.761147, 44.950676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738562, 33.907001, 44.920719>,  <29.424854, 34.150097, 44.870792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738562, 33.907001, 44.920719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436249, 0.397131, -0.807449,
		0.441145, 0.687710, 0.576581,
		0.784269, -0.607735, 0.124821,
		29.973843, 33.724682, 44.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947792, 34.593109, 44.748737>,  <29.424854, 34.150097, 44.870792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947792, 34.593109, 44.748737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058115, 34.218681, 44.661373>,  <30.124310, 33.994026, 44.608955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.058115, 34.218681, 44.661373>,  <29.947792, 34.593109, 44.748737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058115, 34.218681, 44.661373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482168, 0.331298, -0.811021,
		0.831531, 0.118377, 0.542718,
		0.275807, -0.936071, -0.218407,
		30.140858, 33.937859, 44.595852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.913788, 28.534687, 34.548023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516991, 28.505507, 34.506790>,  <41.278912, 28.487999, 34.482048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.516991, 28.505507, 34.506790>,  <41.913788, 28.534687, 34.548023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516991, 28.505507, 34.506790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101033, 0.948179, 0.301246,
		0.075769, 0.309250, -0.947958,
		-0.991994, -0.072950, -0.103087,
		41.219391, 28.483622, 34.475864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603012, 29.136675, 34.068344>,  <41.913788, 28.534687, 34.548023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603012, 29.136675, 34.068344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368954, 29.000692, 34.362839>,  <41.228519, 28.919102, 34.539536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368954, 29.000692, 34.362839>,  <41.603012, 29.136675, 34.068344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368954, 29.000692, 34.362839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113400, 0.933267, 0.340813,
		-0.802963, 0.115935, -0.584644,
		-0.585142, -0.339959, 0.736232,
		41.193413, 28.898705, 34.583710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069874, 29.573996, 34.075436>,  <41.603012, 29.136675, 34.068344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069874, 29.573996, 34.075436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038044, 29.414413, 34.440842>,  <41.018948, 29.318665, 34.660084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038044, 29.414413, 34.440842>,  <41.069874, 29.573996, 34.075436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038044, 29.414413, 34.440842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273882, 0.889898, 0.364787,
		-0.958466, -0.221167, -0.180079,
		-0.079573, -0.398956, 0.913511,
		41.014172, 29.294727, 34.714893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567062, 29.966761, 34.396229>,  <41.069874, 29.573996, 34.075436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567062, 29.966761, 34.396229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720757, 29.782553, 34.716301>,  <40.812973, 29.672028, 34.908344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720757, 29.782553, 34.716301>,  <40.567062, 29.966761, 34.396229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720757, 29.782553, 34.716301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231791, 0.790834, 0.566440,
		-0.893666, -0.403119, 0.197119,
		0.384231, -0.460518, 0.800181,
		40.836025, 29.644398, 34.956356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082848, 30.196123, 34.926575>,  <40.567062, 29.966761, 34.396229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082848, 30.196123, 34.926575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396244, 30.055071, 35.131237>,  <40.584282, 29.970440, 35.254032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396244, 30.055071, 35.131237>,  <40.082848, 30.196123, 34.926575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396244, 30.055071, 35.131237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069669, 0.768348, 0.636230,
		-0.617483, -0.534128, 0.577427,
		0.783493, -0.352632, 0.511654,
		40.631290, 29.949282, 35.284733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999001, 30.490068, 35.481613>,  <40.082848, 30.196123, 34.926575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999001, 30.490068, 35.481613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377148, 30.370386, 35.533386>,  <40.604034, 30.298576, 35.564449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377148, 30.370386, 35.533386>,  <39.999001, 30.490068, 35.481613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377148, 30.370386, 35.533386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226491, 0.888380, 0.399353,
		-0.234477, -0.348220, 0.907614,
		0.945369, -0.299206, 0.129436,
		40.660759, 30.280624, 35.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161598, 30.650108, 36.121918>,  <39.999001, 30.490068, 35.481613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161598, 30.650108, 36.121918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504230, 30.642382, 35.915657>,  <40.709808, 30.637745, 35.791901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.504230, 30.642382, 35.915657>,  <40.161598, 30.650108, 36.121918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504230, 30.642382, 35.915657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287179, 0.848088, 0.445280,
		0.428714, -0.529503, 0.732005,
		0.856582, -0.019318, -0.515650,
		40.761204, 30.636587, 35.760963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644642, 30.828892, 36.616375>,  <40.161598, 30.650108, 36.121918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644642, 30.828892, 36.616375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840378, 30.918755, 36.279312>,  <40.957821, 30.972673, 36.077076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840378, 30.918755, 36.279312>,  <40.644642, 30.828892, 36.616375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840378, 30.918755, 36.279312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353533, 0.832190, 0.427170,
		0.797219, -0.506940, 0.327801,
		0.489342, 0.224660, -0.842658,
		40.987179, 30.986153, 36.026516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223480, 31.040781, 36.890652>,  <40.644642, 30.828892, 36.616375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223480, 31.040781, 36.890652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231560, 31.182974, 36.516865>,  <41.236408, 31.268290, 36.292595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231560, 31.182974, 36.516865>,  <41.223480, 31.040781, 36.890652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231560, 31.182974, 36.516865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324085, 0.881862, 0.342474,
		0.945813, -0.309763, -0.097394,
		0.020198, 0.355480, -0.934466,
		41.237617, 31.289618, 36.236526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950214, 31.317682, 36.742214>,  <41.223480, 31.040781, 36.890652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950214, 31.317682, 36.742214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677895, 31.491890, 36.506645>,  <41.514503, 31.596415, 36.365303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677895, 31.491890, 36.506645>,  <41.950214, 31.317682, 36.742214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677895, 31.491890, 36.506645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436484, 0.886900, 0.151297,
		0.588208, -0.154052, -0.793901,
		-0.680803, 0.435519, -0.588923,
		41.473652, 31.622545, 36.329967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360126, 31.711491, 36.415756>,  <41.950214, 31.317682, 36.742214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360126, 31.711491, 36.415756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002316, 31.867741, 36.328831>,  <41.787628, 31.961491, 36.276676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002316, 31.867741, 36.328831>,  <42.360126, 31.711491, 36.415756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002316, 31.867741, 36.328831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410269, 0.910468, -0.052222,
		0.177461, -0.135873, -0.974703,
		-0.894532, 0.390623, -0.217317,
		41.733955, 31.984928, 36.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585899, 32.272366, 35.977684>,  <42.360126, 31.711491, 36.415756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585899, 32.272366, 35.977684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204033, 32.320435, 36.086620>,  <41.974911, 32.349277, 36.151981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.204033, 32.320435, 36.086620>,  <42.585899, 32.272366, 35.977684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.204033, 32.320435, 36.086620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138045, 0.989292, 0.047376,
		-0.263727, 0.082823, -0.961035,
		-0.954668, 0.120172, 0.272337,
		41.917633, 32.356487, 36.168320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320091, 32.668476, 35.474407>,  <42.585899, 32.272366, 35.977684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320091, 32.668476, 35.474407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091503, 32.720978, 35.798431>,  <41.954350, 32.752480, 35.992847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.091503, 32.720978, 35.798431>,  <42.320091, 32.668476, 35.474407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091503, 32.720978, 35.798431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008615, 0.988031, -0.154012,
		-0.820579, -0.081034, -0.565759,
		-0.571468, 0.131253, 0.810060,
		41.920063, 32.760353, 36.041451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816895, 33.170631, 35.355381>,  <42.320091, 32.668476, 35.474407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816895, 33.170631, 35.355381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864658, 33.148041, 35.751877>,  <41.893318, 33.134487, 35.989773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.864658, 33.148041, 35.751877>,  <41.816895, 33.170631, 35.355381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864658, 33.148041, 35.751877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011240, 0.998240, 0.058233,
		-0.992781, -0.018095, 0.118567,
		0.119412, -0.056480, 0.991237,
		41.900482, 33.131096, 36.049248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337975, 33.645531, 35.631248>,  <41.816895, 33.170631, 35.355381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337975, 33.645531, 35.631248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604900, 33.597450, 35.925251>,  <41.765057, 33.568604, 36.101654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.604900, 33.597450, 35.925251>,  <41.337975, 33.645531, 35.631248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604900, 33.597450, 35.925251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057858, 0.992275, 0.109741,
		-0.742522, -0.030706, 0.669118,
		0.667319, -0.120199, 0.735009,
		41.805096, 33.561390, 36.145752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084671, 34.052879, 36.165779>,  <41.337975, 33.645531, 35.631248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084671, 34.052879, 36.165779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469791, 34.005913, 36.263130>,  <41.700863, 33.977734, 36.321541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.469791, 34.005913, 36.263130>,  <41.084671, 34.052879, 36.165779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469791, 34.005913, 36.263130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040762, 0.953467, 0.298728,
		-0.267126, -0.277695, 0.922784,
		0.962799, -0.117413, 0.243376,
		41.758633, 33.970688, 36.336143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219006, 34.520439, 36.642288>,  <41.084671, 34.052879, 36.165779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219006, 34.520439, 36.642288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588554, 34.432568, 36.516937>,  <41.810284, 34.379845, 36.441727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588554, 34.432568, 36.516937>,  <41.219006, 34.520439, 36.642288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588554, 34.432568, 36.516937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265845, 0.957420, 0.112574,
		0.275305, -0.187314, 0.942932,
		0.923869, -0.219681, -0.313379,
		41.865715, 34.366665, 36.422924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761368, 34.773945, 37.206604>,  <41.219006, 34.520439, 36.642288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761368, 34.773945, 37.206604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950871, 34.746140, 36.855438>,  <42.064571, 34.729458, 36.644741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.950871, 34.746140, 36.855438>,  <41.761368, 34.773945, 37.206604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950871, 34.746140, 36.855438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396903, 0.906749, 0.142389,
		0.786146, -0.415903, 0.457164,
		0.473753, -0.069511, -0.877910,
		42.092995, 34.725285, 36.592064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442944, 35.090946, 37.315178>,  <41.761368, 34.773945, 37.206604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442944, 35.090946, 37.315178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383358, 35.084156, 36.919701>,  <42.347607, 35.080082, 36.682415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383358, 35.084156, 36.919701>,  <42.442944, 35.090946, 37.315178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383358, 35.084156, 36.919701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379684, 0.922229, -0.073039,
		0.913045, -0.386273, -0.130933,
		-0.148963, -0.016975, -0.988697,
		42.338669, 35.079063, 36.623093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067287, 35.405949, 36.970444>,  <42.442944, 35.090946, 37.315178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067287, 35.405949, 36.970444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785267, 35.427544, 36.687603>,  <42.616055, 35.440502, 36.517899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785267, 35.427544, 36.687603>,  <43.067287, 35.405949, 36.970444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785267, 35.427544, 36.687603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402726, 0.851197, -0.336563,
		0.583710, -0.522061, -0.621880,
		-0.705049, 0.053991, -0.707100,
		42.573753, 35.443741, 36.475471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435070, 35.544521, 36.352215>,  <43.067287, 35.405949, 36.970444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435070, 35.544521, 36.352215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056938, 35.665131, 36.302525>,  <42.830059, 35.737495, 36.272713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056938, 35.665131, 36.302525>,  <43.435070, 35.544521, 36.352215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056938, 35.665131, 36.302525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326113, 0.873166, -0.362260,
		-0.000763, -0.382966, -0.923762,
		-0.945331, 0.301527, -0.124224,
		42.773338, 35.755589, 36.265259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915619, 34.963696, 36.180813>,  <43.435070, 35.544521, 36.352215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915619, 34.963696, 36.180813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282711, 34.859051, 36.061268>,  <44.502968, 34.796265, 35.989540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282711, 34.859051, 36.061268>,  <43.915619, 34.963696, 36.180813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282711, 34.859051, 36.061268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325226, -0.926900, -0.187308,
		-0.228016, 0.269098, -0.935732,
		0.917735, -0.261615, -0.298866,
		44.558033, 34.780567, 35.971607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797367, 34.548927, 35.536461>,  <43.915619, 34.963696, 36.180813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797367, 34.548927, 35.536461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145927, 34.440361, 35.699924>,  <44.355064, 34.375221, 35.798004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.145927, 34.440361, 35.699924>,  <43.797367, 34.548927, 35.536461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145927, 34.440361, 35.699924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323750, -0.944019, 0.063361,
		0.368583, -0.187516, -0.910486,
		0.871397, -0.271415, 0.408658,
		44.407345, 34.358936, 35.822521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.021744, 33.901463, 35.254402>,  <43.797367, 34.548927, 35.536461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.021744, 33.901463, 35.254402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253895, 33.902245, 35.580139>,  <44.393185, 33.902714, 35.775581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.253895, 33.902245, 35.580139>,  <44.021744, 33.901463, 35.254402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253895, 33.902245, 35.580139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140882, -0.984678, 0.102768,
		0.802069, -0.174371, -0.571208,
		0.580376, 0.001954, 0.814346,
		44.428009, 33.902832, 35.824444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605953, 33.456234, 35.156620>,  <44.021744, 33.901463, 35.254402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605953, 33.456234, 35.156620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555950, 33.458744, 35.553474>,  <44.525948, 33.460251, 35.791588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555950, 33.458744, 35.553474>,  <44.605953, 33.456234, 35.156620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555950, 33.458744, 35.553474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186742, -0.982256, -0.017318,
		0.974423, -0.187438, 0.123959,
		-0.125006, 0.006273, 0.992136,
		44.518448, 33.460625, 35.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170799, 32.949047, 35.435665>,  <44.605953, 33.456234, 35.156620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170799, 32.949047, 35.435665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885361, 32.988827, 35.713051>,  <44.714100, 33.012695, 35.879482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885361, 32.988827, 35.713051>,  <45.170799, 32.949047, 35.435665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885361, 32.988827, 35.713051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079256, -0.994978, 0.061128,
		0.696062, -0.011341, 0.717892,
		-0.713593, 0.099446, 0.693466,
		44.671284, 33.018661, 35.921089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313480, 32.492489, 35.840656>,  <45.170799, 32.949047, 35.435665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313480, 32.492489, 35.840656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938881, 32.536362, 35.973885>,  <44.714119, 32.562687, 36.053822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938881, 32.536362, 35.973885>,  <45.313480, 32.492489, 35.840656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938881, 32.536362, 35.973885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035091, -0.974367, 0.222208,
		0.348902, 0.196411, 0.916346,
		-0.936502, 0.109685, 0.333066,
		44.657928, 32.569267, 36.073803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271008, 32.051605, 36.432331>,  <45.313480, 32.492489, 35.840656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271008, 32.051605, 36.432331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888851, 32.130138, 36.344074>,  <44.659557, 32.177258, 36.291119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888851, 32.130138, 36.344074>,  <45.271008, 32.051605, 36.432331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888851, 32.130138, 36.344074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243074, -0.947044, 0.209817,
		-0.167767, 0.254091, 0.952519,
		-0.955389, 0.196332, -0.220646,
		44.602234, 32.189037, 36.277882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766014, 31.776899, 36.984009>,  <45.271008, 32.051605, 36.432331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766014, 31.776899, 36.984009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552654, 31.797667, 36.646301>,  <44.424637, 31.810127, 36.443676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.552654, 31.797667, 36.646301>,  <44.766014, 31.776899, 36.984009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552654, 31.797667, 36.646301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323889, -0.934580, 0.147160,
		-0.781396, 0.351944, 0.515320,
		-0.533401, 0.051916, -0.844268,
		44.392635, 31.813242, 36.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014233, 31.485811, 37.124561>,  <44.766014, 31.776899, 36.984009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014233, 31.485811, 37.124561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069050, 31.482233, 36.728352>,  <44.101940, 31.480085, 36.490627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069050, 31.482233, 36.728352>,  <44.014233, 31.485811, 37.124561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069050, 31.482233, 36.728352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361363, -0.931498, -0.041583,
		-0.922299, 0.363638, -0.130893,
		0.137047, -0.008948, -0.990524,
		44.110165, 31.479549, 36.431194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338528, 31.241919, 36.736938>,  <44.014233, 31.485811, 37.124561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338528, 31.241919, 36.736938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653992, 31.188707, 36.496834>,  <43.843269, 31.156780, 36.352772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.653992, 31.188707, 36.496834>,  <43.338528, 31.241919, 36.736938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653992, 31.188707, 36.496834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234426, -0.967621, -0.093561,
		-0.568383, 0.214505, -0.794310,
		0.788661, -0.133029, -0.600265,
		43.890591, 31.148798, 36.316753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990536, 30.871363, 36.218338>,  <43.338528, 31.241919, 36.736938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990536, 30.871363, 36.218338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380093, 30.826025, 36.139668>,  <43.613827, 30.798822, 36.092464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.380093, 30.826025, 36.139668>,  <42.990536, 30.871363, 36.218338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380093, 30.826025, 36.139668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158734, -0.959405, -0.233122,
		-0.162268, 0.258256, -0.952351,
		0.973896, -0.113342, -0.196675,
		43.672260, 30.792023, 36.080666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057350, 30.606794, 35.591896>,  <42.990536, 30.871363, 36.218338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057350, 30.606794, 35.591896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395515, 30.516916, 35.785721>,  <43.598415, 30.462990, 35.902016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395515, 30.516916, 35.785721>,  <43.057350, 30.606794, 35.591896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395515, 30.516916, 35.785721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102763, -0.958684, -0.265262,
		0.524141, 0.174461, -0.833571,
		0.845409, -0.224695, 0.484558,
		43.649139, 30.449509, 35.931087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340355, 30.191851, 35.145069>,  <43.057350, 30.606794, 35.591896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340355, 30.191851, 35.145069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.531364, 30.101942, 35.484821>,  <43.645969, 30.047997, 35.688675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.531364, 30.101942, 35.484821>,  <43.340355, 30.191851, 35.145069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.531364, 30.101942, 35.484821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142841, -0.934003, -0.327468,
		0.866932, 0.277699, -0.413898,
		0.477519, -0.224771, 0.849384,
		43.674622, 30.034512, 35.739635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973549, 29.904203, 34.887245>,  <43.340355, 30.191851, 35.145069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973549, 29.904203, 34.887245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911488, 29.783449, 35.263500>,  <43.874249, 29.710997, 35.489254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911488, 29.783449, 35.263500>,  <43.973549, 29.904203, 34.887245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911488, 29.783449, 35.263500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163624, -0.946866, -0.276897,
		0.974245, 0.110948, 0.196306,
		-0.155155, -0.301886, 0.940634,
		43.864941, 29.692883, 35.545689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305614, 29.276609, 34.952675>,  <43.973549, 29.904203, 34.887245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305614, 29.276609, 34.952675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081142, 29.243021, 35.282043>,  <43.946457, 29.222868, 35.479664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081142, 29.243021, 35.282043>,  <44.305614, 29.276609, 34.952675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081142, 29.243021, 35.282043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080649, -0.984559, -0.155370,
		0.823753, -0.153599, 0.545745,
		-0.561183, -0.083972, 0.823421,
		43.912788, 29.217829, 35.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603012, 28.714783, 35.339096>,  <44.305614, 29.276609, 34.952675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603012, 28.714783, 35.339096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224346, 28.779730, 35.450424>,  <43.997147, 28.818697, 35.517223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.224346, 28.779730, 35.450424>,  <44.603012, 28.714783, 35.339096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224346, 28.779730, 35.450424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177793, -0.983582, -0.030932,
		0.268732, -0.078767, 0.959989,
		-0.946664, 0.162366, 0.278324,
		43.940346, 28.828440, 35.533920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394234, 28.142645, 35.793518>,  <44.603012, 28.714783, 35.339096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394234, 28.142645, 35.793518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032185, 28.272512, 35.683727>,  <43.814953, 28.350433, 35.617851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.032185, 28.272512, 35.683727>,  <44.394234, 28.142645, 35.793518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032185, 28.272512, 35.683727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303925, -0.945576, -0.116251,
		-0.297285, -0.021800, 0.954540,
		-0.905125, 0.324669, -0.274480,
		43.760647, 28.369913, 35.601383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976238, 27.621464, 36.110523>,  <44.394234, 28.142645, 35.793518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976238, 27.621464, 36.110523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756161, 27.813644, 35.837334>,  <43.624115, 27.928953, 35.673420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.756161, 27.813644, 35.837334>,  <43.976238, 27.621464, 36.110523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756161, 27.813644, 35.837334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321390, -0.876730, -0.357844,
		-0.770711, 0.022618, 0.636783,
		-0.550194, 0.480450, -0.682975,
		43.591103, 27.957779, 35.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325039, 27.285297, 36.114647>,  <43.976238, 27.621464, 36.110523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325039, 27.285297, 36.114647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329723, 27.483749, 35.767380>,  <43.332535, 27.602821, 35.559021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329723, 27.483749, 35.767380>,  <43.325039, 27.285297, 36.114647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329723, 27.483749, 35.767380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257903, -0.837354, -0.482000,
		-0.966100, 0.229549, 0.118146,
		0.011713, 0.496130, -0.868169,
		43.333237, 27.632589, 35.506927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751144, 27.270918, 35.848736>,  <43.325039, 27.285297, 36.114647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751144, 27.270918, 35.848736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977070, 27.341642, 35.526314>,  <43.112625, 27.384077, 35.332863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977070, 27.341642, 35.526314>,  <42.751144, 27.270918, 35.848736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977070, 27.341642, 35.526314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447530, -0.755032, -0.479212,
		-0.693324, 0.631400, -0.347327,
		0.564817, 0.176810, -0.806052,
		43.146515, 27.394686, 35.284496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253342, 27.053530, 35.248814>,  <42.751144, 27.270918, 35.848736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253342, 27.053530, 35.248814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639240, 27.049252, 35.143635>,  <42.870781, 27.046684, 35.080528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639240, 27.049252, 35.143635>,  <42.253342, 27.053530, 35.248814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639240, 27.049252, 35.143635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153835, -0.833608, -0.530502,
		-0.213523, 0.552253, -0.805869,
		0.964750, -0.010696, -0.262950,
		42.928665, 27.046043, 35.064751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.433212, 37.645336, 42.834965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357151, 37.306015, 42.637287>,  <34.311512, 37.102421, 42.518681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357151, 37.306015, 42.637287>,  <34.433212, 37.645336, 42.834965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357151, 37.306015, 42.637287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740937, 0.206243, -0.639121,
		0.644092, -0.487697, 0.589320,
		-0.190155, -0.848301, -0.494192,
		34.300106, 37.051525, 42.489029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097668, 37.383713, 42.716263>,  <34.433212, 37.645336, 42.834965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097668, 37.383713, 42.716263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854420, 37.199329, 42.457741>,  <34.708473, 37.088699, 42.302628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854420, 37.199329, 42.457741>,  <35.097668, 37.383713, 42.716263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854420, 37.199329, 42.457741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678097, 0.121700, -0.724826,
		0.412771, -0.879037, 0.238567,
		-0.608115, -0.460959, -0.646307,
		34.671986, 37.061043, 42.263847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445984, 36.796772, 42.379333>,  <35.097668, 37.383713, 42.716263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445984, 36.796772, 42.379333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144875, 36.881714, 42.130100>,  <34.964211, 36.932678, 41.980560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144875, 36.881714, 42.130100>,  <35.445984, 36.796772, 42.379333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144875, 36.881714, 42.130100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636367, -0.007421, -0.771350,
		-0.168425, -0.977164, -0.129551,
		-0.752774, 0.212357, -0.623085,
		34.919041, 36.945419, 41.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468700, 36.401176, 41.794891>,  <35.445984, 36.796772, 42.379333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468700, 36.401176, 41.794891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224503, 36.674782, 41.635181>,  <35.077984, 36.838947, 41.539356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224503, 36.674782, 41.635181>,  <35.468700, 36.401176, 41.794891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224503, 36.674782, 41.635181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443367, -0.122585, -0.887918,
		-0.656296, -0.719093, -0.228433,
		-0.610493, 0.684017, -0.399274,
		35.041355, 36.879986, 41.515400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334995, 36.148369, 41.145851>,  <35.468700, 36.401176, 41.794891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334995, 36.148369, 41.145851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221313, 36.530941, 41.119122>,  <35.153103, 36.760487, 41.103085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221313, 36.530941, 41.119122>,  <35.334995, 36.148369, 41.145851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221313, 36.530941, 41.119122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417718, 0.060787, -0.906541,
		-0.862983, -0.285555, -0.416795,
		-0.284203, 0.956432, -0.066823,
		35.136051, 36.817871, 41.099075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858509, 36.209267, 40.622379>,  <35.334995, 36.148369, 41.145851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858509, 36.209267, 40.622379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038273, 36.561981, 40.679626>,  <35.146130, 36.773609, 40.713974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038273, 36.561981, 40.679626>,  <34.858509, 36.209267, 40.622379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038273, 36.561981, 40.679626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367087, -0.036229, -0.929481,
		-0.814421, 0.470251, -0.339975,
		0.449406, 0.881789, 0.143118,
		35.173096, 36.826519, 40.722561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827038, 36.627937, 39.980122>,  <34.858509, 36.209267, 40.622379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827038, 36.627937, 39.980122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079731, 36.879723, 40.161091>,  <35.231346, 37.030796, 40.269672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079731, 36.879723, 40.161091>,  <34.827038, 36.627937, 39.980122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079731, 36.879723, 40.161091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448254, 0.179533, -0.875692,
		-0.632445, 0.756001, -0.168745,
		0.631729, 0.629468, 0.452426,
		35.269249, 37.068562, 40.296818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996101, 37.314095, 39.586510>,  <34.827038, 36.627937, 39.980122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996101, 37.314095, 39.586510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312401, 37.288326, 39.830009>,  <35.502178, 37.272865, 39.976109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312401, 37.288326, 39.830009>,  <34.996101, 37.314095, 39.586510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312401, 37.288326, 39.830009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569229, 0.443175, -0.692513,
		-0.225169, 0.894117, 0.387109,
		0.790745, -0.064421, 0.608746,
		35.549625, 37.269001, 40.012634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348980, 37.992023, 39.641071>,  <34.996101, 37.314095, 39.586510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348980, 37.992023, 39.641071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594761, 37.684875, 39.713539>,  <35.742229, 37.500587, 39.757019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594761, 37.684875, 39.713539>,  <35.348980, 37.992023, 39.641071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594761, 37.684875, 39.713539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520943, 0.222427, -0.824102,
		0.592505, 0.600753, 0.536687,
		0.614456, -0.767868, 0.181169,
		35.779099, 37.454514, 39.767891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924561, 38.304970, 39.488060>,  <35.348980, 37.992023, 39.641071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924561, 38.304970, 39.488060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037273, 37.922421, 39.457203>,  <36.104900, 37.692890, 39.438690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037273, 37.922421, 39.457203>,  <35.924561, 38.304970, 39.488060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037273, 37.922421, 39.457203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703277, 0.260564, -0.661444,
		0.652686, 0.132134, 0.746017,
		0.281784, -0.956372, -0.077140,
		36.121807, 37.635509, 39.434059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717266, 38.334728, 39.436153>,  <35.924561, 38.304970, 39.488060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717266, 38.334728, 39.436153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613571, 37.971531, 39.304493>,  <36.551353, 37.753613, 39.225498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613571, 37.971531, 39.304493>,  <36.717266, 38.334728, 39.436153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613571, 37.971531, 39.304493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734810, 0.035737, -0.677331,
		0.626777, -0.417451, 0.657940,
		-0.259239, -0.907996, -0.329147,
		36.535801, 37.699131, 39.205750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381191, 37.894680, 39.435184>,  <36.717266, 38.334728, 39.436153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381191, 37.894680, 39.435184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096542, 37.769276, 39.183689>,  <36.925755, 37.694035, 39.032791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096542, 37.769276, 39.183689>,  <37.381191, 37.894680, 39.435184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096542, 37.769276, 39.183689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637397, 0.088315, -0.765458,
		0.295504, -0.945470, 0.136982,
		-0.711619, -0.313508, -0.628737,
		36.883057, 37.675224, 38.995068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508057, 37.273544, 38.978962>,  <37.381191, 37.894680, 39.435184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508057, 37.273544, 38.978962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226208, 37.461666, 38.766426>,  <37.057098, 37.574539, 38.638905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226208, 37.461666, 38.766426>,  <37.508057, 37.273544, 38.978962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226208, 37.461666, 38.766426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592079, -0.023027, -0.805551,
		-0.391087, -0.882205, -0.262230,
		-0.704623, 0.470301, -0.531341,
		37.014820, 37.602757, 38.607025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546837, 36.418365, 39.067818>,  <37.508057, 37.273544, 38.978962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546837, 36.418365, 39.067818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630409, 36.623936, 38.735016>,  <37.680553, 36.747280, 38.535336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630409, 36.623936, 38.735016>,  <37.546837, 36.418365, 39.067818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630409, 36.623936, 38.735016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976036, -0.162518, 0.144715,
		-0.060842, -0.842298, -0.535567,
		0.208933, 0.513928, -0.832001,
		37.693089, 36.778114, 38.485416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515686, 35.817364, 38.552177>,  <37.546837, 36.418365, 39.067818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515686, 35.817364, 38.552177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786690, 35.528702, 38.495331>,  <37.949291, 35.355503, 38.461224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786690, 35.528702, 38.495331>,  <37.515686, 35.817364, 38.552177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786690, 35.528702, 38.495331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284387, -0.435213, 0.854233,
		-0.678312, -0.538334, -0.500089,
		0.677508, -0.721655, -0.142115,
		37.989941, 35.312206, 38.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219582, 35.068855, 38.651424>,  <37.515686, 35.817364, 38.552177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219582, 35.068855, 38.651424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614452, 35.088692, 38.712116>,  <37.851376, 35.100594, 38.748531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614452, 35.088692, 38.712116>,  <37.219582, 35.068855, 38.651424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614452, 35.088692, 38.712116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126097, -0.340586, 0.931719,
		0.097883, -0.938905, -0.329966,
		0.987177, 0.049592, 0.151730,
		37.910606, 35.103569, 38.757637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527744, 34.430901, 38.890610>,  <37.219582, 35.068855, 38.651424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527744, 34.430901, 38.890610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799534, 34.700310, 39.007011>,  <37.962608, 34.861954, 39.076851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799534, 34.700310, 39.007011>,  <37.527744, 34.430901, 38.890610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799534, 34.700310, 39.007011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076377, -0.459402, 0.884939,
		0.729715, -0.579066, -0.363593,
		0.679473, 0.673523, 0.291005,
		38.003376, 34.902367, 39.094315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014660, 33.994011, 39.161907>,  <37.527744, 34.430901, 38.890610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014660, 33.994011, 39.161907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106167, 34.350903, 39.317650>,  <38.161072, 34.565037, 39.411095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106167, 34.350903, 39.317650>,  <38.014660, 33.994011, 39.161907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106167, 34.350903, 39.317650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113672, -0.421708, 0.899578,
		0.966822, -0.161535, -0.197894,
		0.228767, 0.892227, 0.389354,
		38.174797, 34.618572, 39.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664612, 33.869678, 39.607998>,  <38.014660, 33.994011, 39.161907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664612, 33.869678, 39.607998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504215, 34.203957, 39.758106>,  <38.407978, 34.404522, 39.848171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504215, 34.203957, 39.758106>,  <38.664612, 33.869678, 39.607998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504215, 34.203957, 39.758106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066179, -0.435002, 0.897994,
		0.913689, 0.335252, 0.229737,
		-0.400990, 0.835691, 0.375269,
		38.383919, 34.454662, 39.870686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960545, 34.194389, 40.324215>,  <38.664612, 33.869678, 39.607998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960545, 34.194389, 40.324215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585758, 34.332409, 40.302158>,  <38.360886, 34.415222, 40.288925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585758, 34.332409, 40.302158>,  <38.960545, 34.194389, 40.324215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585758, 34.332409, 40.302158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166881, -0.303233, 0.938190,
		0.307002, 0.888251, 0.341701,
		-0.936963, 0.345049, -0.055139,
		38.304668, 34.435925, 40.285618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824295, 34.414242, 40.976105>,  <38.960545, 34.194389, 40.324215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824295, 34.414242, 40.976105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443169, 34.414013, 40.854687>,  <38.214493, 34.413876, 40.781837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443169, 34.414013, 40.854687>,  <38.824295, 34.414242, 40.976105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443169, 34.414013, 40.854687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289773, -0.296079, 0.910148,
		-0.090397, 0.955163, 0.281942,
		-0.952817, -0.000575, -0.303546,
		38.157322, 34.413841, 40.763622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493584, 34.547462, 41.532879>,  <38.824295, 34.414242, 40.976105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493584, 34.547462, 41.532879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185223, 34.439884, 41.301926>,  <38.000206, 34.375340, 41.163353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185223, 34.439884, 41.301926>,  <38.493584, 34.547462, 41.532879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185223, 34.439884, 41.301926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506737, -0.290243, 0.811773,
		-0.385902, 0.918384, 0.087467,
		-0.770906, -0.268943, -0.577385,
		37.953949, 34.359200, 41.128712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777378, 34.909004, 41.790195>,  <38.493584, 34.547462, 41.532879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777378, 34.909004, 41.790195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679802, 34.576958, 41.589634>,  <37.621254, 34.377731, 41.469296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679802, 34.576958, 41.589634>,  <37.777378, 34.909004, 41.790195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679802, 34.576958, 41.589634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460505, -0.355862, 0.813202,
		-0.853480, 0.429273, -0.295461,
		-0.243943, -0.830113, -0.501403,
		37.606621, 34.327923, 41.439213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043381, 34.855438, 41.931797>,  <37.777378, 34.909004, 41.790195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043381, 34.855438, 41.931797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183571, 34.492634, 41.838413>,  <37.267685, 34.274952, 41.782383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183571, 34.492634, 41.838413>,  <37.043381, 34.855438, 41.931797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183571, 34.492634, 41.838413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329833, -0.352835, 0.875624,
		-0.876571, -0.229880, -0.422821,
		0.350475, -0.907008, -0.233463,
		37.288712, 34.220531, 41.768375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516312, 34.449444, 42.209690>,  <37.043381, 34.855438, 41.931797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516312, 34.449444, 42.209690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816006, 34.189407, 42.159035>,  <36.995823, 34.033386, 42.128639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816006, 34.189407, 42.159035>,  <36.516312, 34.449444, 42.209690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816006, 34.189407, 42.159035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277841, -0.482079, 0.830905,
		-0.601214, -0.587353, -0.541810,
		0.749230, -0.650089, -0.126642,
		37.040775, 33.994381, 42.121044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158184, 33.819176, 42.171017>,  <36.516312, 34.449444, 42.209690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158184, 33.819176, 42.171017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539688, 33.736603, 42.258408>,  <36.768589, 33.687061, 42.310844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539688, 33.736603, 42.258408>,  <36.158184, 33.819176, 42.171017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539688, 33.736603, 42.258408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300319, -0.624300, 0.721150,
		-0.012467, -0.753417, -0.657425,
		0.953757, -0.206428, 0.218482,
		36.825817, 33.674675, 42.323952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164639, 33.069855, 42.098969>,  <36.158184, 33.819176, 42.171017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164639, 33.069855, 42.098969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436508, 33.233402, 42.342564>,  <36.599628, 33.331532, 42.488720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436508, 33.233402, 42.342564>,  <36.164639, 33.069855, 42.098969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436508, 33.233402, 42.342564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363347, -0.533551, 0.763742,
		0.637199, -0.740370, -0.214079,
		0.679674, 0.408870, 0.608990,
		36.640411, 33.356064, 42.525261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446533, 32.542145, 42.589794>,  <36.164639, 33.069855, 42.098969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446533, 32.542145, 42.589794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557484, 32.882145, 42.768932>,  <36.624054, 33.086143, 42.876415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557484, 32.882145, 42.768932>,  <36.446533, 32.542145, 42.589794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557484, 32.882145, 42.768932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418935, -0.312484, 0.852554,
		0.864613, -0.424097, 0.269417,
		0.277377, 0.849997, 0.447847,
		36.640697, 33.137142, 42.903286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133533, 32.089912, 42.559452>,  <36.446533, 32.542145, 42.589794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133533, 32.089912, 42.559452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134743, 31.713886, 42.423058>,  <37.135468, 31.488272, 42.341221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134743, 31.713886, 42.423058>,  <37.133533, 32.089912, 42.559452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134743, 31.713886, 42.423058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361755, 0.318919, -0.876027,
		0.932268, -0.120702, 0.341038,
		0.003025, -0.940064, -0.340983,
		37.135651, 31.431868, 42.320763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745701, 31.982918, 42.112076>,  <37.133533, 32.089912, 42.559452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745701, 31.982918, 42.112076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501385, 31.690306, 41.990879>,  <37.354797, 31.514738, 41.918159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501385, 31.690306, 41.990879>,  <37.745701, 31.982918, 42.112076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501385, 31.690306, 41.990879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239434, 0.194109, -0.951311,
		0.754725, -0.653596, 0.056594,
		-0.610788, -0.731529, -0.302992,
		37.318150, 31.470848, 41.899982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084602, 31.763268, 41.549328>,  <37.745701, 31.982918, 42.112076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084602, 31.763268, 41.549328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695671, 31.673883, 41.522091>,  <37.462311, 31.620253, 41.505749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695671, 31.673883, 41.522091>,  <38.084602, 31.763268, 41.549328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695671, 31.673883, 41.522091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022100, 0.202194, -0.979096,
		0.232560, -0.953510, -0.191661,
		-0.972331, -0.223463, -0.068095,
		37.403973, 31.606846, 41.501663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098488, 31.325928, 40.998085>,  <38.084602, 31.763268, 41.549328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098488, 31.325928, 40.998085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725163, 31.464493, 41.035858>,  <37.501167, 31.547632, 41.058521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725163, 31.464493, 41.035858>,  <38.098488, 31.325928, 40.998085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725163, 31.464493, 41.035858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036598, 0.169844, -0.984791,
		-0.357184, -0.922578, -0.145840,
		-0.933316, 0.346414, 0.094431,
		37.445168, 31.568417, 41.064186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815929, 30.875343, 40.575150>,  <38.098488, 31.325928, 40.998085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815929, 30.875343, 40.575150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589439, 31.204313, 40.597084>,  <37.453545, 31.401695, 40.610245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589439, 31.204313, 40.597084>,  <37.815929, 30.875343, 40.575150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589439, 31.204313, 40.597084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003777, 0.063937, -0.997947,
		-0.824242, -0.565270, -0.033096,
		-0.566225, 0.822425, 0.054834,
		37.419571, 31.451040, 40.613533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324554, 30.777380, 39.955399>,  <37.815929, 30.875343, 40.575150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324554, 30.777380, 39.955399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304943, 31.164249, 40.055138>,  <37.293175, 31.396370, 40.114983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304943, 31.164249, 40.055138>,  <37.324554, 30.777380, 39.955399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304943, 31.164249, 40.055138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123915, 0.241832, -0.962373,
		-0.991081, -0.078083, 0.107990,
		-0.049029, 0.967171, 0.249350,
		37.290234, 31.454401, 40.129944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807762, 31.092430, 39.476608>,  <37.324554, 30.777380, 39.955399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807762, 31.092430, 39.476608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019688, 31.404915, 39.608669>,  <37.146843, 31.592405, 39.687908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019688, 31.404915, 39.608669>,  <36.807762, 31.092430, 39.476608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019688, 31.404915, 39.608669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084552, 0.435998, -0.895967,
		-0.843886, 0.446784, 0.297053,
		0.529818, 0.781210, 0.330156,
		37.178635, 31.639278, 39.707718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347839, 31.672119, 39.462139>,  <36.807762, 31.092430, 39.476608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347839, 31.672119, 39.462139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728130, 31.794813, 39.444126>,  <36.956306, 31.868429, 39.433319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728130, 31.794813, 39.444126>,  <36.347839, 31.672119, 39.462139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728130, 31.794813, 39.444126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211719, 0.536278, -0.817056,
		-0.226469, 0.786333, 0.574797,
		0.950730, 0.306734, -0.045031,
		37.013348, 31.886833, 39.430618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271931, 32.442207, 39.407177>,  <36.347839, 31.672119, 39.462139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271931, 32.442207, 39.407177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634556, 32.327984, 39.282852>,  <36.852131, 32.259449, 39.208256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634556, 32.327984, 39.282852>,  <36.271931, 32.442207, 39.407177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634556, 32.327984, 39.282852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105750, 0.559231, -0.822239,
		0.408613, 0.778278, 0.476779,
		0.906561, -0.285558, -0.310812,
		36.906525, 32.242317, 39.189610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578014, 33.047817, 39.305225>,  <36.271931, 32.442207, 39.407177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578014, 33.047817, 39.305225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730263, 32.774162, 39.056358>,  <36.821609, 32.609970, 38.907040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730263, 32.774162, 39.056358>,  <36.578014, 33.047817, 39.305225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730263, 32.774162, 39.056358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024766, 0.665022, -0.746413,
		0.924401, 0.299507, 0.236176,
		0.380618, -0.684136, -0.622164,
		36.844448, 32.568920, 38.869709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314274, 33.215137, 38.991180>,  <36.578014, 33.047817, 39.305225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314274, 33.215137, 38.991180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055698, 33.010044, 38.765182>,  <36.900555, 32.886986, 38.629585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055698, 33.010044, 38.765182>,  <37.314274, 33.215137, 38.991180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055698, 33.010044, 38.765182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108280, 0.671375, -0.733165,
		0.755245, -0.535123, -0.378482,
		-0.646437, -0.512737, -0.564996,
		36.861767, 32.856224, 38.595684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626003, 32.846626, 38.318924>,  <37.314274, 33.215137, 38.991180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626003, 32.846626, 38.318924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250931, 32.976723, 38.269985>,  <37.025887, 33.054779, 38.240623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250931, 32.976723, 38.269985>,  <37.626003, 32.846626, 38.318924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250931, 32.976723, 38.269985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337930, 0.771477, -0.539097,
		-0.080949, -0.546847, -0.833310,
		-0.937683, 0.325240, -0.122346,
		36.969627, 33.074295, 38.233280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.983006, 30.647772, 45.925449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775082, 30.458708, 45.640804>,  <35.650326, 30.345270, 45.470016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775082, 30.458708, 45.640804>,  <35.983006, 30.647772, 45.925449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775082, 30.458708, 45.640804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754617, 0.136408, -0.641830,
		0.400437, -0.870623, 0.285771,
		-0.519811, -0.472661, -0.711610,
		35.619137, 30.316910, 45.427322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460339, 30.195534, 45.557491>,  <35.983006, 30.647772, 45.925449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460339, 30.195534, 45.557491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150684, 30.165680, 45.306049>,  <35.964893, 30.147768, 45.155186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150684, 30.165680, 45.306049>,  <36.460339, 30.195534, 45.557491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150684, 30.165680, 45.306049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633017, -0.087587, -0.769167,
		0.002349, -0.993357, 0.115048,
		-0.774135, -0.074634, -0.628606,
		35.918446, 30.143290, 45.117466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531391, 29.682026, 44.968151>,  <36.460339, 30.195534, 45.557491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531391, 29.682026, 44.968151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256931, 29.928455, 44.813412>,  <36.092255, 30.076313, 44.720570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.256931, 29.928455, 44.813412>,  <36.531391, 29.682026, 44.968151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256931, 29.928455, 44.813412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419108, -0.099872, -0.902427,
		-0.594597, -0.781331, -0.189675,
		-0.686151, 0.616075, -0.386846,
		36.051086, 30.113277, 44.697357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554451, 29.467802, 44.335705>,  <36.531391, 29.682026, 44.968151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554451, 29.467802, 44.335705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.366360, 29.820711, 44.326935>,  <36.253506, 30.032455, 44.321671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.366360, 29.820711, 44.326935>,  <36.554451, 29.467802, 44.335705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366360, 29.820711, 44.326935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423403, 0.203725, -0.882738,
		-0.774347, -0.424373, -0.469354,
		-0.470230, 0.882271, -0.021927,
		36.225292, 30.085392, 44.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223030, 29.476856, 43.704502>,  <36.554451, 29.467802, 44.335705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223030, 29.476856, 43.704502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300694, 29.855627, 43.806980>,  <36.347294, 30.082890, 43.868465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.300694, 29.855627, 43.806980>,  <36.223030, 29.476856, 43.704502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300694, 29.855627, 43.806980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406338, 0.160070, -0.899593,
		-0.892856, 0.278766, -0.353692,
		0.194160, 0.946925, 0.256192,
		36.358940, 30.139704, 43.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903679, 29.861767, 43.135822>,  <36.223030, 29.476856, 43.704502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903679, 29.861767, 43.135822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154022, 30.132591, 43.290688>,  <36.304226, 30.295086, 43.383606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154022, 30.132591, 43.290688>,  <35.903679, 29.861767, 43.135822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154022, 30.132591, 43.290688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227996, 0.315898, -0.920992,
		-0.745870, 0.664680, 0.043340,
		0.625856, 0.677059, 0.387164,
		36.341778, 30.335709, 43.406837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751835, 30.566383, 42.907364>,  <35.903679, 29.861767, 43.135822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751835, 30.566383, 42.907364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135197, 30.597858, 43.017109>,  <36.365211, 30.616743, 43.082958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.135197, 30.597858, 43.017109>,  <35.751835, 30.566383, 42.907364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135197, 30.597858, 43.017109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223723, 0.389828, -0.893298,
		-0.177248, 0.917520, 0.356007,
		0.958400, 0.078688, 0.274367,
		36.422718, 30.621466, 43.099419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935833, 31.284658, 42.902119>,  <35.751835, 30.566383, 42.907364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935833, 31.284658, 42.902119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271954, 31.069204, 42.877556>,  <36.473625, 30.939932, 42.862816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271954, 31.069204, 42.877556>,  <35.935833, 31.284658, 42.902119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271954, 31.069204, 42.877556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172834, 0.373535, -0.911373,
		0.513837, 0.755211, 0.406975,
		0.840298, -0.538636, -0.061410,
		36.524044, 30.907614, 42.859135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466969, 31.799313, 42.731579>,  <35.935833, 31.284658, 42.902119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466969, 31.799313, 42.731579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663471, 31.461967, 42.644493>,  <36.781372, 31.259560, 42.592243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.663471, 31.461967, 42.644493>,  <36.466969, 31.799313, 42.731579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663471, 31.461967, 42.644493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326855, 0.410187, -0.851418,
		0.807359, 0.347107, 0.477167,
		0.491260, -0.843365, -0.217714,
		36.810848, 31.208958, 42.579178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832878, 32.297543, 43.228741>,  <36.466969, 31.799313, 42.731579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832878, 32.297543, 43.228741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689114, 32.666492, 43.285381>,  <36.602856, 32.887863, 43.319366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689114, 32.666492, 43.285381>,  <36.832878, 32.297543, 43.228741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689114, 32.666492, 43.285381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169631, -0.213790, 0.962039,
		0.917631, 0.321749, 0.233302,
		-0.359413, 0.922373, 0.141602,
		36.581291, 32.943203, 43.327862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088867, 32.639393, 43.907837>,  <36.832878, 32.297543, 43.228741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088867, 32.639393, 43.907837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.801697, 32.912327, 43.852695>,  <36.629395, 33.076088, 43.819611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.801697, 32.912327, 43.852695>,  <37.088867, 32.639393, 43.907837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801697, 32.912327, 43.852695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188117, 0.000501, 0.982147,
		0.670223, 0.731039, 0.127999,
		-0.717923, 0.682336, -0.137857,
		36.586319, 33.117027, 43.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219395, 33.122982, 44.365742>,  <37.088867, 32.639393, 43.907837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219395, 33.122982, 44.365742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835110, 33.187054, 44.275085>,  <36.604538, 33.225494, 44.220692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.835110, 33.187054, 44.275085>,  <37.219395, 33.122982, 44.365742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835110, 33.187054, 44.275085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211216, 0.107758, 0.971481,
		0.180030, 0.981189, -0.069693,
		-0.960717, 0.160176, -0.226643,
		36.546894, 33.235107, 44.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012897, 33.830727, 44.635563>,  <37.219395, 33.122982, 44.365742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012897, 33.830727, 44.635563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686089, 33.602299, 44.603661>,  <36.490005, 33.465244, 44.584518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.686089, 33.602299, 44.603661>,  <37.012897, 33.830727, 44.635563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686089, 33.602299, 44.603661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214910, 0.173232, 0.961148,
		-0.535063, 0.802417, -0.264261,
		-0.817020, -0.571067, -0.079757,
		36.440983, 33.430977, 44.579735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477818, 34.235935, 44.974380>,  <37.012897, 33.830727, 44.635563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477818, 34.235935, 44.974380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337387, 33.861790, 44.957222>,  <36.253128, 33.637302, 44.946926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337387, 33.861790, 44.957222>,  <36.477818, 34.235935, 44.974380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337387, 33.861790, 44.957222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350098, 0.088637, 0.932510,
		-0.868433, 0.342402, -0.358588,
		-0.351078, -0.935363, -0.042899,
		36.232063, 33.581181, 44.944351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957729, 34.278507, 45.446041>,  <36.477818, 34.235935, 44.974380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957729, 34.278507, 45.446041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018608, 33.886143, 45.397640>,  <36.055138, 33.650723, 45.368599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018608, 33.886143, 45.397640>,  <35.957729, 34.278507, 45.446041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018608, 33.886143, 45.397640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369800, -0.170056, 0.913416,
		-0.916561, -0.094275, -0.388624,
		0.152200, -0.980915, -0.121004,
		36.064266, 33.591869, 45.361340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299107, 33.880169, 45.486912>,  <35.957729, 34.278507, 45.446041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299107, 33.880169, 45.486912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593079, 33.627071, 45.584488>,  <35.769463, 33.475212, 45.643032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.593079, 33.627071, 45.584488>,  <35.299107, 33.880169, 45.486912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593079, 33.627071, 45.584488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389995, -0.100080, 0.915362,
		-0.554781, -0.767863, -0.320320,
		0.734930, -0.632749, 0.243940,
		35.813557, 33.437248, 45.657669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025295, 33.182529, 45.588989>,  <35.299107, 33.880169, 45.486912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025295, 33.182529, 45.588989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377205, 33.198547, 45.778469>,  <35.588352, 33.208157, 45.892159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377205, 33.198547, 45.778469>,  <35.025295, 33.182529, 45.588989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377205, 33.198547, 45.778469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459886, -0.180729, 0.869392,
		0.120428, -0.982717, -0.140583,
		0.879774, 0.040047, 0.473702,
		35.641136, 33.210560, 45.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931564, 32.734566, 46.183041>,  <35.025295, 33.182529, 45.588989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931564, 32.734566, 46.183041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267834, 32.934666, 46.265995>,  <35.469597, 33.054726, 46.315765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267834, 32.934666, 46.265995>,  <34.931564, 32.734566, 46.183041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267834, 32.934666, 46.265995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200534, -0.068152, 0.977314,
		0.503038, -0.863193, 0.043024,
		0.840677, 0.500254, 0.207382,
		35.520039, 33.084743, 46.328209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189747, 32.326557, 46.718540>,  <34.931564, 32.734566, 46.183041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189747, 32.326557, 46.718540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343704, 32.695328, 46.736008>,  <35.436081, 32.916592, 46.746487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343704, 32.695328, 46.736008>,  <35.189747, 32.326557, 46.718540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343704, 32.695328, 46.736008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291792, 0.076666, 0.953404,
		0.875620, -0.379704, 0.298519,
		0.384898, 0.921926, 0.043665,
		35.459175, 32.971905, 46.749107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537334, 32.257256, 47.315804>,  <35.189747, 32.326557, 46.718540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537334, 32.257256, 47.315804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517941, 32.649654, 47.240654>,  <35.506302, 32.885094, 47.195564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517941, 32.649654, 47.240654>,  <35.537334, 32.257256, 47.315804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517941, 32.649654, 47.240654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229917, 0.172080, 0.957876,
		0.972002, 0.089640, 0.217204,
		-0.048487, 0.980996, -0.187872,
		35.503395, 32.943954, 47.184292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764400, 32.628494, 47.882530>,  <35.537334, 32.257256, 47.315804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764400, 32.628494, 47.882530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550476, 32.913216, 47.700401>,  <35.422123, 33.084049, 47.591125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550476, 32.913216, 47.700401>,  <35.764400, 32.628494, 47.882530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550476, 32.913216, 47.700401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515619, 0.151982, 0.843231,
		0.669416, 0.685738, 0.285738,
		-0.534808, 0.711804, -0.455319,
		35.390034, 33.126759, 47.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816555, 33.212006, 48.307545>,  <35.764400, 32.628494, 47.882530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816555, 33.212006, 48.307545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492794, 33.306839, 48.092640>,  <35.298538, 33.363739, 47.963696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492794, 33.306839, 48.092640>,  <35.816555, 33.212006, 48.307545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492794, 33.306839, 48.092640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446399, 0.346049, 0.825214,
		0.381561, 0.907768, -0.174262,
		-0.809406, 0.237079, -0.537266,
		35.249973, 33.377964, 47.931461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585674, 33.941544, 48.509827>,  <35.816555, 33.212006, 48.307545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585674, 33.941544, 48.509827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271294, 33.760567, 48.341270>,  <35.082664, 33.651981, 48.240135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.271294, 33.760567, 48.341270>,  <35.585674, 33.941544, 48.509827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271294, 33.760567, 48.341270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536499, 0.160301, 0.828536,
		-0.307314, 0.877269, -0.368723,
		-0.785956, -0.452441, -0.421391,
		35.035507, 33.624836, 48.214851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.998531, 31.047077, 44.851391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387505, 30.974880, 44.910446>,  <29.620888, 30.931562, 44.945881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387505, 30.974880, 44.910446>,  <28.998531, 31.047077, 44.851391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387505, 30.974880, 44.910446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209343, 0.396843, -0.893695,
		0.102714, 0.899966, 0.423688,
		0.972433, -0.180491, 0.147640,
		29.679234, 30.920732, 44.954739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290373, 31.573872, 44.477291>,  <28.998531, 31.047077, 44.851391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290373, 31.573872, 44.477291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.587954, 31.315998, 44.547626>,  <29.766502, 31.161274, 44.589828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.587954, 31.315998, 44.547626>,  <29.290373, 31.573872, 44.477291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587954, 31.315998, 44.547626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381374, 0.193557, -0.903930,
		0.548714, 0.739541, 0.389862,
		0.743954, -0.644682, 0.175835,
		29.811140, 31.122593, 44.600376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887089, 31.889675, 44.294914>,  <29.290373, 31.573872, 44.477291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887089, 31.889675, 44.294914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.958241, 31.496346, 44.279785>,  <30.000931, 31.260347, 44.270706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.958241, 31.496346, 44.279785>,  <29.887089, 31.889675, 44.294914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958241, 31.496346, 44.279785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524375, 0.127242, -0.841927,
		0.832700, 0.129928, 0.538265,
		0.177880, -0.983325, -0.037824,
		30.011604, 31.201347, 44.268436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674902, 31.745739, 44.253864>,  <29.887089, 31.889675, 44.294914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674902, 31.745739, 44.253864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478085, 31.439428, 44.088223>,  <30.359993, 31.255642, 43.988838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.478085, 31.439428, 44.088223>,  <30.674902, 31.745739, 44.253864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478085, 31.439428, 44.088223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616357, 0.029498, -0.786914,
		0.614814, -0.642432, 0.457476,
		-0.492045, -0.765775, -0.414103,
		30.330471, 31.209696, 43.963993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130947, 31.379957, 43.901306>,  <30.674902, 31.745739, 44.253864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130947, 31.379957, 43.901306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794369, 31.242012, 43.734913>,  <30.592422, 31.159245, 43.635078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794369, 31.242012, 43.734913>,  <31.130947, 31.379957, 43.901306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794369, 31.242012, 43.734913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431586, 0.034272, -0.901420,
		0.325122, -0.938028, 0.120000,
		-0.841445, -0.344862, -0.415982,
		30.541935, 31.138554, 43.610119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348156, 30.868671, 43.414822>,  <31.130947, 31.379957, 43.901306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348156, 30.868671, 43.414822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973282, 30.952021, 43.302921>,  <30.748358, 31.002029, 43.235779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973282, 30.952021, 43.302921>,  <31.348156, 30.868671, 43.414822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973282, 30.952021, 43.302921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296260, 0.052078, -0.953687,
		-0.184153, -0.976662, -0.110539,
		-0.937186, 0.208373, -0.279755,
		30.692125, 31.014532, 43.218994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166672, 30.372404, 42.840393>,  <31.348156, 30.868671, 43.414822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166672, 30.372404, 42.840393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923765, 30.688866, 42.811275>,  <30.778021, 30.878742, 42.793804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.923765, 30.688866, 42.811275>,  <31.166672, 30.372404, 42.840393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923765, 30.688866, 42.811275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261116, 0.112209, -0.958764,
		-0.750364, -0.601233, -0.274724,
		-0.607267, 0.791157, -0.072794,
		30.741585, 30.926212, 42.789436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862825, 30.291172, 42.249237>,  <31.166672, 30.372404, 42.840393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862825, 30.291172, 42.249237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794746, 30.682903, 42.292965>,  <30.753899, 30.917942, 42.319202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794746, 30.682903, 42.292965>,  <30.862825, 30.291172, 42.249237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794746, 30.682903, 42.292965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307165, 0.158140, -0.938425,
		-0.936313, -0.126138, -0.327730,
		-0.170198, 0.979327, 0.109323,
		30.743687, 30.976702, 42.325764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576221, 30.592653, 41.618198>,  <30.862825, 30.291172, 42.249237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576221, 30.592653, 41.618198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702278, 30.927803, 41.796482>,  <30.777912, 31.128893, 41.903454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702278, 30.927803, 41.796482>,  <30.576221, 30.592653, 41.618198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702278, 30.927803, 41.796482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209580, 0.396603, -0.893746,
		-0.925615, 0.375066, -0.050616,
		0.315140, 0.837873, 0.445708,
		30.796820, 31.179165, 41.930195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180305, 31.177898, 41.383095>,  <30.576221, 30.592653, 41.618198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180305, 31.177898, 41.383095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509485, 31.349239, 41.532372>,  <30.706993, 31.452044, 41.621937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.509485, 31.349239, 41.532372>,  <30.180305, 31.177898, 41.383095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509485, 31.349239, 41.532372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000706, 0.657665, -0.753311,
		-0.568117, 0.619671, 0.541526,
		0.822947, 0.428351, 0.373193,
		30.756369, 31.477745, 41.644329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975895, 31.904890, 41.488346>,  <30.180305, 31.177898, 41.383095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975895, 31.904890, 41.488346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368734, 31.869497, 41.421833>,  <30.604439, 31.848261, 41.381924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.368734, 31.869497, 41.421833>,  <29.975895, 31.904890, 41.488346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368734, 31.869497, 41.421833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060045, 0.689686, -0.721615,
		0.178536, 0.718683, 0.672027,
		0.982100, -0.088482, -0.166287,
		30.663364, 31.842953, 41.371948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154182, 32.546230, 41.240662>,  <29.975895, 31.904890, 41.488346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154182, 32.546230, 41.240662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486666, 32.335468, 41.169712>,  <30.686155, 32.209011, 41.127140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486666, 32.335468, 41.169712>,  <30.154182, 32.546230, 41.240662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486666, 32.335468, 41.169712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275054, 0.667004, -0.692424,
		0.483154, 0.526760, 0.699347,
		0.831208, -0.526905, -0.177379,
		30.736029, 32.177395, 41.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637037, 33.017666, 41.249580>,  <30.154182, 32.546230, 41.240662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637037, 33.017666, 41.249580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781498, 32.709919, 41.038815>,  <30.868174, 32.525269, 40.912354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.781498, 32.709919, 41.038815>,  <30.637037, 33.017666, 41.249580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781498, 32.709919, 41.038815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238774, 0.622510, -0.745297,
		0.901419, 0.143352, 0.408526,
		0.361152, -0.769371, -0.526914,
		30.889843, 32.479107, 40.880741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330545, 33.306976, 40.867035>,  <30.637037, 33.017666, 41.249580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330545, 33.306976, 40.867035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234571, 32.970573, 40.673069>,  <31.176987, 32.768734, 40.556690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.234571, 32.970573, 40.673069>,  <31.330545, 33.306976, 40.867035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234571, 32.970573, 40.673069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123773, 0.468929, -0.874520,
		0.962867, -0.269846, -0.008418,
		-0.239933, -0.841004, -0.484916,
		31.162592, 32.718273, 40.527596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960289, 33.734543, 40.804630>,  <31.330545, 33.306976, 40.867035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960289, 33.734543, 40.804630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.871418, 34.107674, 40.918098>,  <31.818096, 34.331551, 40.986179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.871418, 34.107674, 40.918098>,  <31.960289, 33.734543, 40.804630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871418, 34.107674, 40.918098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252837, -0.336113, 0.907249,
		0.941653, 0.129847, 0.310530,
		-0.222177, 0.932828, 0.283672,
		31.804766, 34.387524, 41.003201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210117, 33.781498, 41.477432>,  <31.960289, 33.734543, 40.804630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210117, 33.781498, 41.477432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932308, 34.066669, 41.438713>,  <31.765623, 34.237774, 41.415482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.932308, 34.066669, 41.438713>,  <32.210117, 33.781498, 41.477432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932308, 34.066669, 41.438713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218693, -0.081021, 0.972424,
		0.685427, 0.696540, 0.212183,
		-0.694524, 0.712929, -0.096795,
		31.723951, 34.280548, 41.409676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285690, 34.353409, 42.045460>,  <32.210117, 33.781498, 41.477432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285690, 34.353409, 42.045460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909214, 34.364029, 41.910732>,  <31.683327, 34.370403, 41.829895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909214, 34.364029, 41.910732>,  <32.285690, 34.353409, 42.045460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909214, 34.364029, 41.910732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337729, -0.102485, 0.935647,
		-0.009675, 0.994380, 0.105426,
		-0.941194, 0.026553, -0.336823,
		31.626856, 34.371994, 41.809685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912848, 34.918854, 42.372757>,  <32.285690, 34.353409, 42.045460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912848, 34.918854, 42.372757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640860, 34.646683, 42.263458>,  <31.477667, 34.483379, 42.197880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.640860, 34.646683, 42.263458>,  <31.912848, 34.918854, 42.372757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640860, 34.646683, 42.263458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384781, 0.013902, 0.922903,
		-0.624167, 0.732687, -0.271267,
		-0.679970, -0.680424, -0.273247,
		31.436869, 34.442554, 42.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318552, 35.157585, 42.634296>,  <31.912848, 34.918854, 42.372757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318552, 35.157585, 42.634296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238466, 34.773739, 42.555248>,  <31.190414, 34.543430, 42.507820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238466, 34.773739, 42.555248>,  <31.318552, 35.157585, 42.634296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238466, 34.773739, 42.555248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375611, -0.111118, 0.920092,
		-0.904893, 0.258447, -0.338193,
		-0.200216, -0.959614, -0.197625,
		31.178402, 34.485855, 42.495960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565762, 35.036953, 42.840034>,  <31.318552, 35.157585, 42.634296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565762, 35.036953, 42.840034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718655, 34.667850, 42.820377>,  <30.810390, 34.446388, 42.808582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.718655, 34.667850, 42.820377>,  <30.565762, 35.036953, 42.840034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718655, 34.667850, 42.820377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412666, -0.218036, 0.884402,
		-0.826805, -0.317767, -0.464131,
		0.382231, -0.922759, -0.049142,
		30.833324, 34.391022, 42.805634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015486, 34.681065, 43.099419>,  <30.565762, 35.036953, 42.840034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015486, 34.681065, 43.099419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.328079, 34.432564, 43.122501>,  <30.515635, 34.283463, 43.136353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.328079, 34.432564, 43.122501>,  <30.015486, 34.681065, 43.099419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328079, 34.432564, 43.122501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343667, -0.351403, 0.870867,
		-0.520750, -0.700399, -0.488119,
		0.781481, -0.621254, 0.057711,
		30.562523, 34.246189, 43.139816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703682, 34.038326, 43.278637>,  <30.015486, 34.681065, 43.099419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703682, 34.038326, 43.278637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.090467, 34.004238, 43.374737>,  <30.322538, 33.983784, 43.432396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.090467, 34.004238, 43.374737>,  <29.703682, 34.038326, 43.278637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090467, 34.004238, 43.374737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240500, -0.617433, 0.748957,
		0.084511, -0.781994, -0.617531,
		0.966964, -0.085221, 0.240249,
		30.380556, 33.978672, 43.446812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735723, 33.442520, 43.556339>,  <29.703682, 34.038326, 43.278637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735723, 33.442520, 43.556339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099686, 33.574905, 43.656364>,  <30.318064, 33.654339, 43.716381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099686, 33.574905, 43.656364>,  <29.735723, 33.442520, 43.556339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099686, 33.574905, 43.656364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060654, -0.490206, 0.869494,
		0.410356, -0.806325, -0.425967,
		0.909906, 0.330966, 0.250066,
		30.372658, 33.674194, 43.731384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105219, 32.869717, 43.842583>,  <29.735723, 33.442520, 43.556339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105219, 32.869717, 43.842583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.241259, 33.219261, 43.981548>,  <30.322882, 33.428989, 44.064930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.241259, 33.219261, 43.981548>,  <30.105219, 32.869717, 43.842583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241259, 33.219261, 43.981548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159730, -0.310392, 0.937093,
		0.926725, -0.374197, 0.034018,
		0.340099, 0.873861, 0.347418,
		30.343288, 33.481419, 44.085773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566133, 32.692341, 44.423866>,  <30.105219, 32.869717, 43.842583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566133, 32.692341, 44.423866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434687, 33.067383, 44.469318>,  <30.355818, 33.292408, 44.496590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.434687, 33.067383, 44.469318>,  <30.566133, 32.692341, 44.423866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434687, 33.067383, 44.469318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293230, -0.215652, 0.931402,
		0.897789, 0.272756, 0.345801,
		-0.328618, 0.937602, 0.113630,
		30.336102, 33.348663, 44.503407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918669, 32.852859, 45.030396>,  <30.566133, 32.692341, 44.423866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918669, 32.852859, 45.030396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.620428, 33.117329, 44.997093>,  <30.441484, 33.276009, 44.977112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.620428, 33.117329, 44.997093>,  <30.918669, 32.852859, 45.030396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620428, 33.117329, 44.997093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055279, 0.063133, 0.996473,
		0.664097, 0.747573, -0.010523,
		-0.745600, 0.661173, -0.083252,
		30.396748, 33.315681, 44.972118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056976, 33.466072, 45.473549>,  <30.918669, 32.852859, 45.030396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056976, 33.466072, 45.473549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663765, 33.437241, 45.406067>,  <30.427837, 33.419941, 45.365578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.663765, 33.437241, 45.406067>,  <31.056976, 33.466072, 45.473549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663765, 33.437241, 45.406067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165368, -0.050027, 0.984962,
		-0.079430, 0.996144, 0.037259,
		-0.983028, -0.072074, -0.168704,
		30.368856, 33.415619, 45.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762541, 33.956165, 45.957386>,  <31.056976, 33.466072, 45.473549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762541, 33.956165, 45.957386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436277, 33.737236, 45.882401>,  <30.240519, 33.605881, 45.837410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.436277, 33.737236, 45.882401>,  <30.762541, 33.956165, 45.957386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436277, 33.737236, 45.882401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154438, -0.106283, 0.982269,
		-0.557540, 0.830147, 0.002163,
		-0.815658, -0.547320, -0.187463,
		30.191580, 33.573040, 45.826160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854374, 34.689869, 46.177925>,  <30.762541, 33.956165, 45.957386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854374, 34.689869, 46.177925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115183, 34.861237, 46.428150>,  <31.271667, 34.964058, 46.578285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.115183, 34.861237, 46.428150>,  <30.854374, 34.689869, 46.177925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115183, 34.861237, 46.428150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463521, 0.427691, -0.776033,
		-0.600015, 0.795951, 0.080282,
		0.652020, 0.428419, 0.625561,
		31.310789, 34.989761, 46.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898180, 35.515667, 46.029289>,  <30.854374, 34.689869, 46.177925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898180, 35.515667, 46.029289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233177, 35.389328, 46.207657>,  <31.434175, 35.313522, 46.314678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233177, 35.389328, 46.207657>,  <30.898180, 35.515667, 46.029289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233177, 35.389328, 46.207657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534637, 0.304857, -0.788179,
		0.113006, 0.898499, 0.424181,
		0.837492, -0.315852, 0.445920,
		31.484425, 35.294571, 46.341434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353416, 36.114399, 46.132835>,  <30.898180, 35.515667, 46.029289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353416, 36.114399, 46.132835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580347, 35.785038, 46.127979>,  <31.716505, 35.587421, 46.125065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580347, 35.785038, 46.127979>,  <31.353416, 36.114399, 46.132835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580347, 35.785038, 46.127979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489298, 0.348908, -0.799281,
		0.662367, 0.447513, 0.600834,
		0.567325, -0.823405, -0.012137,
		31.750544, 35.538017, 46.124336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965055, 36.383949, 45.959877>,  <31.353416, 36.114399, 46.132835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965055, 36.383949, 45.959877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061523, 35.998020, 45.917999>,  <32.119404, 35.766464, 45.892872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061523, 35.998020, 45.917999>,  <31.965055, 36.383949, 45.959877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061523, 35.998020, 45.917999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711697, 0.249166, -0.656814,
		0.659792, 0.083896, 0.746750,
		0.241169, -0.964820, -0.104690,
		32.133873, 35.708572, 45.886593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706203, 36.239964, 46.264153>,  <31.965055, 36.383949, 45.959877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706203, 36.239964, 46.264153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625908, 35.981289, 45.969807>,  <32.577728, 35.826084, 45.793198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.625908, 35.981289, 45.969807>,  <32.706203, 36.239964, 46.264153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625908, 35.981289, 45.969807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796024, 0.330151, -0.507294,
		0.571008, -0.687600, 0.448505,
		-0.200741, -0.646689, -0.735864,
		32.565685, 35.787281, 45.749046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356812, 36.023933, 46.053322>,  <32.706203, 36.239964, 46.264153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356812, 36.023933, 46.053322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097576, 35.922428, 45.766102>,  <32.942036, 35.861526, 45.593769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.097576, 35.922428, 45.766102>,  <33.356812, 36.023933, 46.053322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097576, 35.922428, 45.766102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644388, 0.319795, -0.694619,
		0.405894, -0.912873, -0.043735,
		-0.648085, -0.253759, -0.718047,
		32.903152, 35.846302, 45.550686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733929, 35.637508, 45.476967>,  <33.356812, 36.023933, 46.053322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733929, 35.637508, 45.476967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396378, 35.736462, 45.286526>,  <33.193848, 35.795834, 45.172260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.396378, 35.736462, 45.286526>,  <33.733929, 35.637508, 45.476967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396378, 35.736462, 45.286526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534309, 0.306707, -0.787683,
		-0.048836, -0.919093, -0.391003,
		-0.843878, 0.247383, -0.476101,
		33.143215, 35.810677, 45.143696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870972, 35.489273, 44.777733>,  <33.733929, 35.637508, 45.476967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870972, 35.489273, 44.777733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551929, 35.729889, 44.759964>,  <33.360504, 35.874256, 44.749302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551929, 35.729889, 44.759964>,  <33.870972, 35.489273, 44.777733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551929, 35.729889, 44.759964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316701, 0.354978, -0.879597,
		-0.513342, -0.715642, -0.473641,
		-0.797609, 0.601537, -0.044419,
		33.312645, 35.910351, 44.746639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536964, 35.298412, 44.168926>,  <33.870972, 35.489273, 44.777733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536964, 35.298412, 44.168926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381931, 35.659496, 44.243652>,  <33.288914, 35.876144, 44.288486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.381931, 35.659496, 44.243652>,  <33.536964, 35.298412, 44.168926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381931, 35.659496, 44.243652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190153, 0.276587, -0.941988,
		-0.902011, -0.329572, -0.278853,
		-0.387580, 0.902708, 0.186815,
		33.265656, 35.930309, 44.299698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090897, 35.370117, 43.637497>,  <33.536964, 35.298412, 44.168926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090897, 35.370117, 43.637497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193363, 35.728512, 43.782593>,  <33.254845, 35.943550, 43.869652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.193363, 35.728512, 43.782593>,  <33.090897, 35.370117, 43.637497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193363, 35.728512, 43.782593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365178, 0.257751, -0.894544,
		-0.894998, 0.361622, -0.261167,
		0.256171, 0.895988, 0.362743,
		33.270214, 35.997307, 43.891415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874611, 35.954727, 43.133636>,  <33.090897, 35.370117, 43.637497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874611, 35.954727, 43.133636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148682, 36.130238, 43.366192>,  <33.313126, 36.235542, 43.505726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148682, 36.130238, 43.366192>,  <32.874611, 35.954727, 43.133636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148682, 36.130238, 43.366192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363231, 0.486029, -0.794883,
		-0.631346, 0.755812, 0.173639,
		0.685176, 0.438775, 0.581387,
		33.354233, 36.261871, 43.540607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807354, 36.659645, 43.019295>,  <32.874611, 35.954727, 43.133636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807354, 36.659645, 43.019295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167591, 36.589756, 43.178497>,  <33.383732, 36.547825, 43.274021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167591, 36.589756, 43.178497>,  <32.807354, 36.659645, 43.019295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167591, 36.589756, 43.178497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430383, 0.486712, -0.760185,
		-0.060896, 0.855912, 0.513524,
		0.900590, -0.174720, 0.398009,
		33.437767, 36.537338, 43.297901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042500, 37.268047, 42.854252>,  <32.807354, 36.659645, 43.019295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042500, 37.268047, 42.854252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342777, 37.010208, 42.912163>,  <33.522942, 36.855507, 42.946907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342777, 37.010208, 42.912163>,  <33.042500, 37.268047, 42.854252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342777, 37.010208, 42.912163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454469, 0.344805, -0.821321,
		0.479499, 0.682354, 0.551791,
		0.750692, -0.644595, 0.144775,
		33.567986, 36.816830, 42.955597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708996, 37.680542, 42.789009>,  <33.042500, 37.268047, 42.854252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708996, 37.680542, 42.789009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815838, 37.298241, 42.739716>,  <33.879944, 37.068859, 42.710140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815838, 37.298241, 42.739716>,  <33.708996, 37.680542, 42.789009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815838, 37.298241, 42.739716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656166, 0.274032, -0.703103,
		0.705765, 0.106939, 0.700329,
		0.267101, -0.955757, -0.123232,
		33.895969, 37.011513, 42.702747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.747187, 33.359219, 30.752676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.908781, 33.015087, 30.877018>,  <32.005737, 32.808609, 30.951624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.908781, 33.015087, 30.877018>,  <31.747187, 33.359219, 30.752676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908781, 33.015087, 30.877018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736327, -0.104193, 0.668555,
		-0.542788, -0.498978, -0.675575,
		0.403985, -0.860328, 0.310856,
		32.029976, 32.756989, 30.970276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264069, 32.814415, 30.712421>,  <31.747187, 33.359219, 30.752676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264069, 32.814415, 30.712421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525085, 32.686634, 30.987270>,  <31.681696, 32.609966, 31.152180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525085, 32.686634, 30.987270>,  <31.264069, 32.814415, 30.712421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525085, 32.686634, 30.987270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757493, -0.251366, 0.602511,
		-0.019753, -0.913655, -0.406009,
		0.652544, -0.319451, 0.687122,
		31.720848, 32.590797, 31.193407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050621, 32.138191, 30.872023>,  <31.264069, 32.814415, 30.712421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050621, 32.138191, 30.872023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289860, 32.245380, 31.174141>,  <31.433403, 32.309692, 31.355412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.289860, 32.245380, 31.174141>,  <31.050621, 32.138191, 30.872023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289860, 32.245380, 31.174141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690038, -0.307118, 0.655382,
		0.407588, -0.913165, 0.001223,
		0.598097, 0.267969, 0.755296,
		31.469290, 32.325771, 31.400730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045256, 31.533634, 31.396215>,  <31.050621, 32.138191, 30.872023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045256, 31.533634, 31.396215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.124781, 31.878960, 31.581758>,  <31.172495, 32.086155, 31.693085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.124781, 31.878960, 31.581758>,  <31.045256, 31.533634, 31.396215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124781, 31.878960, 31.581758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654204, -0.235510, 0.718716,
		0.729721, -0.446345, 0.517961,
		0.198811, 0.863314, 0.463857,
		31.184423, 32.137955, 31.720915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061071, 31.362516, 32.115021>,  <31.045256, 31.533634, 31.396215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061071, 31.362516, 32.115021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998785, 31.756140, 32.080658>,  <30.961414, 31.992313, 32.060040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.998785, 31.756140, 32.080658>,  <31.061071, 31.362516, 32.115021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998785, 31.756140, 32.080658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755447, -0.062599, 0.652213,
		0.636438, 0.166460, 0.753152,
		-0.155714, 0.984059, -0.085911,
		30.952070, 32.051357, 32.054886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956991, 31.495405, 32.815922>,  <31.061071, 31.362516, 32.115021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956991, 31.495405, 32.815922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817434, 31.818003, 32.624989>,  <30.733700, 32.011562, 32.510429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.817434, 31.818003, 32.624989>,  <30.956991, 31.495405, 32.815922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817434, 31.818003, 32.624989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705244, 0.109483, 0.700460,
		0.617175, 0.581020, 0.530576,
		-0.348892, 0.806492, -0.477331,
		30.712767, 32.059952, 32.481789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894993, 31.964712, 33.395935>,  <30.956991, 31.495405, 32.815922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894993, 31.964712, 33.395935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683624, 32.124031, 33.096035>,  <30.556803, 32.219624, 32.916096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683624, 32.124031, 33.096035>,  <30.894993, 31.964712, 33.395935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683624, 32.124031, 33.096035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728191, 0.241388, 0.641459,
		0.436474, 0.884923, 0.162484,
		-0.528421, 0.398300, -0.749752,
		30.525099, 32.243523, 32.871109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652163, 32.626606, 33.661427>,  <30.894993, 31.964712, 33.395935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652163, 32.626606, 33.661427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396944, 32.509796, 33.376438>,  <30.243813, 32.439709, 33.205444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.396944, 32.509796, 33.376438>,  <30.652163, 32.626606, 33.661427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396944, 32.509796, 33.376438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769894, 0.226645, 0.596570,
		-0.012734, 0.929168, -0.369438,
		-0.638045, -0.292025, -0.712474,
		30.205530, 32.422188, 33.162697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005234, 33.044464, 33.738010>,  <30.652163, 32.626606, 33.661427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005234, 33.044464, 33.738010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861734, 32.771633, 33.483116>,  <29.775635, 32.607933, 33.330181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861734, 32.771633, 33.483116>,  <30.005234, 33.044464, 33.738010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861734, 32.771633, 33.483116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926250, 0.175587, 0.333513,
		-0.115593, 0.709884, -0.694768,
		-0.358747, -0.682081, -0.637233,
		29.754110, 32.567009, 33.291946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375340, 33.362587, 33.483017>,  <30.005234, 33.044464, 33.738010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375340, 33.362587, 33.483017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349623, 32.969067, 33.416080>,  <29.334192, 32.732956, 33.375919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.349623, 32.969067, 33.416080>,  <29.375340, 33.362587, 33.483017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349623, 32.969067, 33.416080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938938, 0.002833, 0.344074,
		-0.338026, 0.179243, -0.923910,
		-0.064291, -0.983801, -0.167340,
		29.330336, 32.673927, 33.365879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777014, 33.286732, 33.023529>,  <29.375340, 33.362587, 33.483017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777014, 33.286732, 33.023529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839178, 32.954552, 33.237522>,  <28.876476, 32.755245, 33.365917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.839178, 32.954552, 33.237522>,  <28.777014, 33.286732, 33.023529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839178, 32.954552, 33.237522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913058, 0.085953, 0.398670,
		-0.377058, -0.550423, -0.744890,
		0.155412, -0.830449, 0.534977,
		28.885801, 32.705418, 33.398014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121786, 33.006016, 33.082561>,  <28.777014, 33.286732, 33.023529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121786, 33.006016, 33.082561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295076, 32.757706, 33.343929>,  <28.399052, 32.608719, 33.500748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295076, 32.757706, 33.343929>,  <28.121786, 33.006016, 33.082561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295076, 32.757706, 33.343929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867672, -0.091118, 0.488716,
		-0.243846, -0.778674, -0.578105,
		0.433226, -0.620777, 0.653415,
		28.425045, 32.571472, 33.539955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689779, 32.436588, 33.047775>,  <28.121786, 33.006016, 33.082561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689779, 32.436588, 33.047775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879799, 32.476799, 33.397453>,  <27.993811, 32.500927, 33.607262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879799, 32.476799, 33.397453>,  <27.689779, 32.436588, 33.047775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879799, 32.476799, 33.397453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869393, -0.099870, 0.483923,
		0.135956, -0.989909, 0.039960,
		0.475049, 0.100533, 0.874198,
		28.022314, 32.506958, 33.659714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192736, 31.999062, 33.559357>,  <27.689779, 32.436588, 33.047775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192736, 31.999062, 33.559357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437119, 32.230278, 33.775726>,  <27.583748, 32.369007, 33.905548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.437119, 32.230278, 33.775726>,  <27.192736, 31.999062, 33.559357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437119, 32.230278, 33.775726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724914, 0.133883, 0.675704,
		0.318167, -0.804947, 0.500830,
		0.610958, 0.578045, 0.540920,
		27.620405, 32.403690, 33.938004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072487, 31.785494, 34.142540>,  <27.192736, 31.999062, 33.559357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072487, 31.785494, 34.142540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224497, 32.148991, 34.211555>,  <27.315702, 32.367088, 34.252964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.224497, 32.148991, 34.211555>,  <27.072487, 31.785494, 34.142540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224497, 32.148991, 34.211555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757024, 0.198382, 0.622542,
		0.531502, -0.367196, 0.763330,
		0.380026, 0.908741, 0.172536,
		27.338505, 32.421612, 34.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964712, 31.886271, 34.930454>,  <27.072487, 31.785494, 34.142540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964712, 31.886271, 34.930454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022537, 32.232666, 34.738972>,  <27.057232, 32.440502, 34.624081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.022537, 32.232666, 34.738972>,  <26.964712, 31.886271, 34.930454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022537, 32.232666, 34.738972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673708, 0.440477, 0.593378,
		0.724721, 0.236732, 0.647100,
		0.144561, 0.865990, -0.478711,
		27.065907, 32.492462, 34.595360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.009361, 32.430340, 35.505444>,  <26.964712, 31.886271, 34.930454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.009361, 32.430340, 35.505444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910954, 32.624107, 35.169632>,  <26.851910, 32.740368, 34.968143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910954, 32.624107, 35.169632>,  <27.009361, 32.430340, 35.505444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910954, 32.624107, 35.169632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783375, 0.410690, 0.466537,
		0.570787, 0.772443, 0.278448,
		-0.246018, 0.484423, -0.839529,
		26.837149, 32.769436, 34.917774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854864, 33.081703, 35.765938>,  <27.009361, 32.430340, 35.505444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854864, 33.081703, 35.765938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691078, 33.069942, 35.401196>,  <26.592808, 33.062885, 35.182350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.691078, 33.069942, 35.401196>,  <26.854864, 33.081703, 35.765938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691078, 33.069942, 35.401196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790582, 0.510256, 0.338554,
		0.455323, 0.859520, -0.232177,
		-0.409464, -0.029404, -0.911853,
		26.568239, 33.061123, 35.127640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727648, 33.791782, 35.493298>,  <26.854864, 33.081703, 35.765938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727648, 33.791782, 35.493298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484236, 33.503178, 35.361168>,  <26.338188, 33.330013, 35.281891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484236, 33.503178, 35.361168>,  <26.727648, 33.791782, 35.493298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484236, 33.503178, 35.361168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782481, 0.476377, 0.400984,
		-0.131957, 0.502481, -0.854459,
		-0.608532, -0.721510, -0.330320,
		26.301676, 33.286724, 35.262074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455313, 34.199169, 35.323776>,  <26.727648, 33.791782, 35.493298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455313, 34.199169, 35.323776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828979, 34.326324, 35.388618>,  <28.053179, 34.402618, 35.427525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828979, 34.326324, 35.388618>,  <27.455313, 34.199169, 35.323776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828979, 34.326324, 35.388618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035595, 0.369009, -0.928744,
		-0.355060, 0.873371, 0.333400,
		0.934166, 0.317893, 0.162108,
		28.109230, 34.421692, 35.437252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515736, 34.889565, 35.098644>,  <27.455313, 34.199169, 35.323776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515736, 34.889565, 35.098644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900766, 34.781517, 35.107445>,  <28.131784, 34.716690, 35.112724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.900766, 34.781517, 35.107445>,  <27.515736, 34.889565, 35.098644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900766, 34.781517, 35.107445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074404, 0.185325, -0.979856,
		0.260599, 0.944823, 0.198487,
		0.962576, -0.270118, 0.022004,
		28.189539, 34.700481, 35.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764629, 35.300968, 34.574909>,  <27.515736, 34.889565, 35.098644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764629, 35.300968, 34.574909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063286, 35.041611, 34.634388>,  <28.242479, 34.885994, 34.670074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063286, 35.041611, 34.634388>,  <27.764629, 35.300968, 34.574909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063286, 35.041611, 34.634388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238163, 0.051837, -0.969841,
		0.621132, 0.759537, 0.193128,
		0.746641, -0.648395, 0.148696,
		28.287279, 34.847092, 34.678997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336807, 35.643097, 34.425289>,  <27.764629, 35.300968, 34.574909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336807, 35.643097, 34.425289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425980, 35.256069, 34.377766>,  <28.479483, 35.023853, 34.349251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425980, 35.256069, 34.377766>,  <28.336807, 35.643097, 34.425289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425980, 35.256069, 34.377766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355805, 0.194233, -0.914153,
		0.907581, 0.161521, 0.387566,
		0.222933, -0.967566, -0.118812,
		28.492859, 34.965797, 34.342121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993387, 35.580235, 34.076427>,  <28.336807, 35.643097, 34.425289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993387, 35.580235, 34.076427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849474, 35.216511, 33.992802>,  <28.763126, 34.998276, 33.942627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849474, 35.216511, 33.992802>,  <28.993387, 35.580235, 34.076427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849474, 35.216511, 33.992802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377588, 0.063007, -0.923828,
		0.853219, -0.411321, 0.320675,
		-0.359785, -0.909310, -0.209069,
		28.741539, 34.943718, 33.930080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.535917, 35.259537, 33.758739>,  <28.993387, 35.580235, 34.076427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.535917, 35.259537, 33.758739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225534, 35.028584, 33.657139>,  <29.039305, 34.890011, 33.596180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.225534, 35.028584, 33.657139>,  <29.535917, 35.259537, 33.758739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225534, 35.028584, 33.657139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336492, -0.038298, -0.940907,
		0.533538, -0.815573, 0.224003,
		-0.775957, -0.577385, -0.254001,
		28.992746, 34.855370, 33.580940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811182, 34.654469, 33.415180>,  <29.535917, 35.259537, 33.758739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811182, 34.654469, 33.415180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435471, 34.666969, 33.278484>,  <29.210045, 34.674469, 33.196468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.435471, 34.666969, 33.278484>,  <29.811182, 34.654469, 33.415180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435471, 34.666969, 33.278484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331132, -0.178829, -0.926484,
		-0.090064, -0.983384, 0.157623,
		-0.939276, 0.031249, -0.341736,
		29.153688, 34.676346, 33.175964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739998, 34.015759, 33.040100>,  <29.811182, 34.654469, 33.415180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739998, 34.015759, 33.040100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439631, 34.253216, 32.924370>,  <29.259411, 34.395691, 32.854931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439631, 34.253216, 32.924370>,  <29.739998, 34.015759, 33.040100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439631, 34.253216, 32.924370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249782, -0.150249, -0.956574,
		-0.611338, -0.790575, -0.035457,
		-0.750917, 0.593646, -0.289324,
		29.214355, 34.431309, 32.837574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464844, 33.685760, 32.467102>,  <29.739998, 34.015759, 33.040100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464844, 33.685760, 32.467102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318012, 34.054634, 32.418392>,  <29.229914, 34.275959, 32.389168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318012, 34.054634, 32.418392>,  <29.464844, 33.685760, 32.467102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318012, 34.054634, 32.418392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378454, 0.028473, -0.925182,
		-0.849721, -0.385702, -0.359456,
		-0.367079, 0.922184, -0.121776,
		29.207888, 34.331291, 32.381859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239233, 33.728817, 31.784140>,  <29.464844, 33.685760, 32.467102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239233, 33.728817, 31.784140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275263, 34.120220, 31.858345>,  <29.296881, 34.355061, 31.902868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275263, 34.120220, 31.858345>,  <29.239233, 33.728817, 31.784140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275263, 34.120220, 31.858345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195690, 0.165248, -0.966643,
		-0.976520, 0.123374, -0.176599,
		0.090076, 0.978505, 0.185511,
		29.302286, 34.413773, 31.913998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761810, 34.068340, 31.281317>,  <29.239233, 33.728817, 31.784140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761810, 34.068340, 31.281317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053688, 34.311707, 31.406141>,  <29.228815, 34.457726, 31.481035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.053688, 34.311707, 31.406141>,  <28.761810, 34.068340, 31.281317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053688, 34.311707, 31.406141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351835, 0.057245, -0.934310,
		-0.586308, 0.791555, -0.172289,
		0.729695, 0.608411, 0.312060,
		29.272596, 34.494228, 31.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894661, 34.475689, 30.604174>,  <28.761810, 34.068340, 31.281317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894661, 34.475689, 30.604174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210167, 34.585686, 30.824074>,  <29.399471, 34.651684, 30.956015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210167, 34.585686, 30.824074>,  <28.894661, 34.475689, 30.604174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210167, 34.585686, 30.824074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519073, 0.181078, -0.835328,
		-0.329256, 0.944241, 0.000088,
		0.788767, 0.274991, 0.549751,
		29.446796, 34.668182, 30.988998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099216, 35.069405, 30.318710>,  <28.894661, 34.475689, 30.604174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099216, 35.069405, 30.318710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413988, 34.932560, 30.524118>,  <29.602852, 34.850452, 30.647364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413988, 34.932560, 30.524118>,  <29.099216, 35.069405, 30.318710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413988, 34.932560, 30.524118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569221, 0.081238, -0.818162,
		0.238182, 0.936142, 0.258664,
		0.786929, -0.342108, 0.513522,
		29.650066, 34.829929, 30.678175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600977, 35.454781, 30.075817>,  <29.099216, 35.069405, 30.318710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600977, 35.454781, 30.075817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809122, 35.146965, 30.223888>,  <29.934010, 34.962276, 30.312731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.809122, 35.146965, 30.223888>,  <29.600977, 35.454781, 30.075817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809122, 35.146965, 30.223888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558565, -0.021172, -0.829191,
		0.645932, 0.638250, 0.418819,
		0.520364, -0.769538, 0.370180,
		29.965231, 34.916103, 30.334942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364801, 35.588669, 29.916780>,  <29.600977, 35.454781, 30.075817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364801, 35.588669, 29.916780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357944, 35.195007, 29.987379>,  <30.353830, 34.958813, 30.029739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357944, 35.195007, 29.987379>,  <30.364801, 35.588669, 29.916780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357944, 35.195007, 29.987379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735844, -0.131930, -0.664175,
		0.676934, 0.118490, 0.726443,
		-0.017141, -0.984152, 0.176498,
		30.352802, 34.899761, 30.040329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035900, 35.461967, 29.914801>,  <30.364801, 35.588669, 29.916780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035900, 35.461967, 29.914801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836449, 35.123528, 29.839457>,  <30.716778, 34.920464, 29.794250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836449, 35.123528, 29.839457>,  <31.035900, 35.461967, 29.914801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836449, 35.123528, 29.839457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624773, -0.200178, -0.754710,
		0.600857, -0.494003, 0.628436,
		-0.498628, -0.846103, -0.188361,
		30.686861, 34.869698, 29.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571819, 34.995316, 29.668200>,  <31.035900, 35.461967, 29.914801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571819, 34.995316, 29.668200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246714, 34.788490, 29.560820>,  <31.051651, 34.664394, 29.496391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246714, 34.788490, 29.560820>,  <31.571819, 34.995316, 29.668200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246714, 34.788490, 29.560820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524597, -0.449113, -0.723254,
		0.253401, -0.728662, 0.636270,
		-0.812765, -0.517059, -0.268448,
		31.002884, 34.633373, 29.480286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766666, 34.299160, 29.634121>,  <31.571819, 34.995316, 29.668200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766666, 34.299160, 29.634121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437681, 34.305550, 29.406685>,  <31.240290, 34.309383, 29.270224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.437681, 34.305550, 29.406685>,  <31.766666, 34.299160, 29.634121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437681, 34.305550, 29.406685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419982, -0.657103, -0.625964,
		-0.383623, -0.753631, 0.533735,
		-0.822465, 0.015975, -0.568591,
		31.190941, 34.310341, 29.236107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660812, 33.643360, 29.256916>,  <31.766666, 34.299160, 29.634121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660812, 33.643360, 29.256916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403389, 33.863232, 29.043867>,  <31.248936, 33.995155, 28.916039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.403389, 33.863232, 29.043867>,  <31.660812, 33.643360, 29.256916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403389, 33.863232, 29.043867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231201, -0.523758, -0.819893,
		-0.729644, -0.650790, 0.209982,
		-0.643557, 0.549682, -0.532620,
		31.210321, 34.028137, 28.884081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123264, 33.138287, 28.822060>,  <31.660812, 33.643360, 29.256916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123264, 33.138287, 28.822060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204691, 33.493084, 28.656263>,  <31.253546, 33.705963, 28.556786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.204691, 33.493084, 28.656263>,  <31.123264, 33.138287, 28.822060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204691, 33.493084, 28.656263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169353, -0.448876, -0.877399,
		-0.964303, 0.108413, -0.241591,
		0.203566, 0.886993, -0.414493,
		31.265760, 33.759182, 28.531916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194118, 33.045109, 28.136868>,  <31.123264, 33.138287, 28.822060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194118, 33.045109, 28.136868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297939, 33.426373, 28.074751>,  <31.360231, 33.655132, 28.037481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.297939, 33.426373, 28.074751>,  <31.194118, 33.045109, 28.136868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297939, 33.426373, 28.074751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477257, -0.266392, -0.837413,
		-0.839559, 0.143238, -0.524046,
		0.259551, 0.953162, -0.155291,
		31.375805, 33.712322, 28.028164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856728, 33.445415, 27.465473>,  <31.194118, 33.045109, 28.136868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856728, 33.445415, 27.465473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221071, 33.591072, 27.543175>,  <31.439678, 33.678467, 27.589796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221071, 33.591072, 27.543175>,  <30.856728, 33.445415, 27.465473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221071, 33.591072, 27.543175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306535, -0.281731, -0.909211,
		-0.276355, 0.887709, -0.368240,
		0.910859, 0.364143, 0.194256,
		31.494329, 33.700314, 27.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272446, 33.711712, 26.839828>,  <30.856728, 33.445415, 27.465473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272446, 33.711712, 26.839828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545929, 33.659348, 27.126995>,  <31.710020, 33.627930, 27.299295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545929, 33.659348, 27.126995>,  <31.272446, 33.711712, 26.839828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545929, 33.659348, 27.126995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714530, -0.079805, -0.695038,
		0.148282, 0.988177, 0.038976,
		0.683710, -0.130911, 0.717916,
		31.751041, 33.620075, 27.342369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.038239, 34.509346, 48.486217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842285, 34.164375, 48.435238>,  <34.724712, 33.957394, 48.404652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842285, 34.164375, 48.435238>,  <35.038239, 34.509346, 48.486217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842285, 34.164375, 48.435238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577378, 0.211423, 0.788628,
		-0.653187, 0.459918, -0.601517,
		-0.489879, -0.862425, -0.127447,
		34.695320, 33.905647, 48.397003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373772, 34.675747, 48.628216>,  <35.038239, 34.509346, 48.486217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373772, 34.675747, 48.628216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381840, 34.277702, 48.666897>,  <34.386681, 34.038876, 48.690105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381840, 34.277702, 48.666897>,  <34.373772, 34.675747, 48.628216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381840, 34.277702, 48.666897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580405, 0.067101, 0.811559,
		-0.814078, -0.072502, -0.576212,
		0.020175, -0.995109, 0.096706,
		34.387894, 33.979168, 48.695908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645367, 34.496777, 48.722744>,  <34.373772, 34.675747, 48.628216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645367, 34.496777, 48.722744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838440, 34.171848, 48.853680>,  <33.954285, 33.976891, 48.932240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.838440, 34.171848, 48.853680>,  <33.645367, 34.496777, 48.722744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838440, 34.171848, 48.853680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657012, -0.088722, 0.748641,
		-0.579096, -0.576419, -0.576531,
		0.482683, -0.812323, 0.327336,
		33.983246, 33.928150, 48.951881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084682, 34.024982, 48.868534>,  <33.645367, 34.496777, 48.722744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084682, 34.024982, 48.868534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386715, 33.847614, 49.061710>,  <33.567936, 33.741192, 49.177616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.386715, 33.847614, 49.061710>,  <33.084682, 34.024982, 48.868534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386715, 33.847614, 49.061710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608760, -0.200667, 0.767557,
		-0.243437, -0.873564, -0.421454,
		0.755082, -0.443417, 0.482942,
		33.613239, 33.714588, 49.206593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884277, 33.335793, 49.137703>,  <33.084682, 34.024982, 48.868534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884277, 33.335793, 49.137703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197914, 33.423969, 49.369774>,  <33.386097, 33.476875, 49.509018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197914, 33.423969, 49.369774>,  <32.884277, 33.335793, 49.137703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197914, 33.423969, 49.369774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515056, -0.290456, 0.806444,
		0.346290, -0.931150, -0.114205,
		0.784093, 0.220442, 0.580177,
		33.433144, 33.490101, 49.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990494, 32.679756, 49.611980>,  <32.884277, 33.335793, 49.137703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990494, 32.679756, 49.611980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176495, 32.991882, 49.779255>,  <33.288097, 33.179157, 49.879620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176495, 32.991882, 49.779255>,  <32.990494, 32.679756, 49.611980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176495, 32.991882, 49.779255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549103, -0.116317, 0.827621,
		0.694447, -0.614475, 0.374385,
		0.465005, 0.780315, 0.418186,
		33.315998, 33.225975, 49.904709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096935, 32.370796, 50.247265>,  <32.990494, 32.679756, 49.611980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096935, 32.370796, 50.247265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115139, 32.769844, 50.267956>,  <33.126060, 33.009274, 50.280373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115139, 32.769844, 50.267956>,  <33.096935, 32.370796, 50.247265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115139, 32.769844, 50.267956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637259, -0.010887, 0.770573,
		0.769305, -0.068032, 0.635249,
		0.045508, 0.997624, 0.051730,
		33.128792, 33.069130, 50.283474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190285, 32.511387, 50.944538>,  <33.096935, 32.370796, 50.247265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190285, 32.511387, 50.944538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063797, 32.868786, 50.817001>,  <32.987904, 33.083225, 50.740479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063797, 32.868786, 50.817001>,  <33.190285, 32.511387, 50.944538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063797, 32.868786, 50.817001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687725, 0.015607, 0.725804,
		0.653483, 0.448788, 0.609548,
		-0.316219, 0.893502, -0.318842,
		32.968933, 33.136837, 50.721348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142185, 32.975670, 51.452950>,  <33.190285, 32.511387, 50.944538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142185, 32.975670, 51.452950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883129, 33.134651, 51.192921>,  <32.727695, 33.230042, 51.036903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883129, 33.134651, 51.192921>,  <33.142185, 32.975670, 51.452950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883129, 33.134651, 51.192921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728676, -0.073700, 0.680882,
		0.222709, 0.914657, 0.337347,
		-0.647636, 0.397455, -0.650075,
		32.688839, 33.253887, 50.997898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802982, 33.540184, 51.776314>,  <33.142185, 32.975670, 51.452950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802982, 33.540184, 51.776314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554417, 33.422745, 51.485756>,  <32.405277, 33.352280, 51.311420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.554417, 33.422745, 51.485756>,  <32.802982, 33.540184, 51.776314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554417, 33.422745, 51.485756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754486, -0.025647, 0.655815,
		-0.211178, 0.955584, -0.205581,
		-0.621413, -0.293602, -0.726391,
		32.367992, 33.334663, 51.267838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209892, 33.957081, 51.886311>,  <32.802982, 33.540184, 51.776314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209892, 33.957081, 51.886311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113186, 33.604645, 51.723717>,  <32.055161, 33.393181, 51.626160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113186, 33.604645, 51.723717>,  <32.209892, 33.957081, 51.886311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113186, 33.604645, 51.723717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713653, -0.122376, 0.689727,
		-0.657457, 0.456838, -0.599208,
		-0.241765, -0.881092, -0.406480,
		32.040657, 33.340317, 51.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411282, 33.796375, 51.950104>,  <32.209892, 33.957081, 51.886311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411282, 33.796375, 51.950104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615021, 33.457310, 51.890724>,  <31.737265, 33.253872, 51.855095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615021, 33.457310, 51.890724>,  <31.411282, 33.796375, 51.950104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615021, 33.457310, 51.890724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596757, -0.472204, 0.648771,
		-0.620038, -0.241859, -0.746363,
		0.509347, -0.847660, -0.148453,
		31.767824, 33.203011, 51.846188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846748, 33.204880, 51.926373>,  <31.411282, 33.796375, 51.950104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846748, 33.204880, 51.926373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200363, 33.026581, 51.982639>,  <31.412533, 32.919601, 52.016399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.200363, 33.026581, 51.982639>,  <30.846748, 33.204880, 51.926373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200363, 33.026581, 51.982639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426866, -0.647300, 0.631497,
		-0.190433, -0.618313, -0.762512,
		0.884037, -0.445748, 0.140669,
		31.465574, 32.892857, 52.024841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715559, 32.485161, 52.091652>,  <30.846748, 33.204880, 51.926373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715559, 32.485161, 52.091652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.096973, 32.532776, 52.202362>,  <31.325821, 32.561344, 52.268787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.096973, 32.532776, 52.202362>,  <30.715559, 32.485161, 52.091652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096973, 32.532776, 52.202362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182612, -0.502324, 0.845176,
		0.239636, -0.856446, -0.457246,
		0.953534, 0.119036, 0.276772,
		31.383034, 32.568485, 52.285393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033741, 32.466167, 51.746769>,  <30.715559, 32.485161, 52.091652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033741, 32.466167, 51.746769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.691854, 32.627510, 51.616070>,  <29.486721, 32.724316, 51.537651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.691854, 32.627510, 51.616070>,  <30.033741, 32.466167, 51.746769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691854, 32.627510, 51.616070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506262, 0.508659, -0.696394,
		-0.114692, -0.760639, -0.638963,
		-0.854719, 0.403354, -0.326744,
		29.435438, 32.748516, 51.518047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982351, 32.391739, 50.987381>,  <30.033741, 32.466167, 51.746769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982351, 32.391739, 50.987381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765671, 32.707264, 51.103546>,  <29.635662, 32.896580, 51.173244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.765671, 32.707264, 51.103546>,  <29.982351, 32.391739, 50.987381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765671, 32.707264, 51.103546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438591, 0.559974, -0.702899,
		-0.717077, -0.253388, -0.649303,
		-0.541699, 0.788812, 0.290411,
		29.603161, 32.943909, 51.190670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673613, 32.618233, 50.416435>,  <29.982351, 32.391739, 50.987381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673613, 32.618233, 50.416435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689325, 32.938164, 50.656013>,  <29.698753, 33.130123, 50.799763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689325, 32.938164, 50.656013>,  <29.673613, 32.618233, 50.416435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689325, 32.938164, 50.656013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373799, 0.544128, -0.751132,
		-0.926678, 0.253392, -0.277598,
		0.039282, 0.799823, 0.598949,
		29.701111, 33.178112, 50.835697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211203, 33.191177, 49.994961>,  <29.673613, 32.618233, 50.416435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211203, 33.191177, 49.994961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454372, 33.389454, 50.243061>,  <29.600275, 33.508419, 50.391922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454372, 33.389454, 50.243061>,  <29.211203, 33.191177, 49.994961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454372, 33.389454, 50.243061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216971, 0.647735, -0.730318,
		-0.763773, 0.578556, 0.286224,
		0.607926, 0.495695, 0.620252,
		29.636751, 33.538162, 50.429138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129726, 33.932590, 49.853539>,  <29.211203, 33.191177, 49.994961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129726, 33.932590, 49.853539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487967, 33.936836, 50.031433>,  <29.702909, 33.939384, 50.138168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.487967, 33.936836, 50.031433>,  <29.129726, 33.932590, 49.853539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487967, 33.936836, 50.031433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325472, 0.665879, -0.671322,
		-0.303267, 0.745984, 0.592905,
		0.895599, 0.010617, 0.444736,
		29.756647, 33.940022, 50.164852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308207, 34.634178, 49.950417>,  <29.129726, 33.932590, 49.853539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308207, 34.634178, 49.950417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650780, 34.435017, 50.004986>,  <29.856323, 34.315521, 50.037727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.650780, 34.435017, 50.004986>,  <29.308207, 34.634178, 49.950417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650780, 34.435017, 50.004986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469309, 0.640771, -0.607587,
		0.215105, 0.584383, 0.782449,
		0.856434, -0.497905, 0.136423,
		29.907709, 34.285645, 50.045914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906860, 35.149876, 50.116917>,  <29.308207, 34.634178, 49.950417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906860, 35.149876, 50.116917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086372, 34.822720, 49.972885>,  <30.194080, 34.626427, 49.886467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.086372, 34.822720, 49.972885>,  <29.906860, 35.149876, 50.116917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086372, 34.822720, 49.972885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419316, 0.548548, -0.723374,
		0.789157, 0.173652, 0.589131,
		0.448782, -0.817888, -0.360075,
		30.221006, 34.577354, 49.864864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320362, 35.428391, 49.600082>,  <29.906860, 35.149876, 50.116917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320362, 35.428391, 49.600082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397343, 35.047115, 49.506798>,  <30.443531, 34.818348, 49.450825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397343, 35.047115, 49.506798>,  <30.320362, 35.428391, 49.600082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397343, 35.047115, 49.506798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474518, 0.298419, -0.828118,
		0.858950, 0.048710, 0.509738,
		0.192453, -0.953191, -0.233213,
		30.455078, 34.761158, 49.436832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077284, 35.352165, 49.447304>,  <30.320362, 35.428391, 49.600082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077284, 35.352165, 49.447304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889582, 35.042004, 49.278286>,  <30.776960, 34.855907, 49.176876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.889582, 35.042004, 49.278286>,  <31.077284, 35.352165, 49.447304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889582, 35.042004, 49.278286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549903, 0.117805, -0.826879,
		0.690944, -0.620378, 0.371117,
		-0.469258, -0.775405, -0.422544,
		30.748804, 34.809383, 49.151524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532560, 34.922619, 49.109447>,  <31.077284, 35.352165, 49.447304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532560, 34.922619, 49.109447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189266, 34.856186, 48.915188>,  <30.983290, 34.816326, 48.798634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.189266, 34.856186, 48.915188>,  <31.532560, 34.922619, 49.109447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189266, 34.856186, 48.915188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479823, 0.076304, -0.874041,
		0.182219, -0.983155, 0.014203,
		-0.858234, -0.166082, -0.485645,
		30.931795, 34.806362, 48.769493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812702, 34.607235, 48.481171>,  <31.532560, 34.922619, 49.109447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812702, 34.607235, 48.481171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442617, 34.729340, 48.391014>,  <31.220568, 34.802601, 48.336922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442617, 34.729340, 48.391014>,  <31.812702, 34.607235, 48.481171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442617, 34.729340, 48.391014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228336, -0.026529, -0.973221,
		-0.303066, -0.951899, -0.045158,
		-0.925210, 0.305261, -0.225393,
		31.165054, 34.820919, 48.323395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667091, 34.166325, 47.997456>,  <31.812702, 34.607235, 48.481171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667091, 34.166325, 47.997456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413628, 34.472717, 47.954094>,  <31.261549, 34.656551, 47.928078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413628, 34.472717, 47.954094>,  <31.667091, 34.166325, 47.997456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413628, 34.472717, 47.954094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126962, -0.035258, -0.991281,
		-0.763124, -0.641896, -0.074909,
		-0.633658, 0.765981, -0.108403,
		31.223530, 34.702511, 47.921574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234919, 33.999275, 47.440361>,  <31.667091, 34.166325, 47.997456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234919, 33.999275, 47.440361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209593, 34.396275, 47.482178>,  <31.194397, 34.634476, 47.507267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209593, 34.396275, 47.482178>,  <31.234919, 33.999275, 47.440361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209593, 34.396275, 47.482178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373354, 0.120706, -0.919803,
		-0.925526, -0.019205, -0.378197,
		-0.063316, 0.992503, 0.104546,
		31.190598, 34.694027, 47.513542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938915, 34.155663, 46.831314>,  <31.234919, 33.999275, 47.440361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938915, 34.155663, 46.831314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120613, 34.486420, 46.963928>,  <31.229631, 34.684872, 47.043499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120613, 34.486420, 46.963928>,  <30.938915, 34.155663, 46.831314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120613, 34.486420, 46.963928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439336, 0.115829, -0.890824,
		-0.775014, 0.550308, -0.310667,
		0.454243, 0.826889, 0.331539,
		31.256886, 34.734486, 47.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251680, 34.165848, 46.550426>,  <30.938915, 34.155663, 46.831314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251680, 34.165848, 46.550426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121855, 33.823002, 46.390419>,  <30.043961, 33.617294, 46.294415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.121855, 33.823002, 46.390419>,  <30.251680, 34.165848, 46.550426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121855, 33.823002, 46.390419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239682, -0.334583, 0.911376,
		-0.914993, 0.391675, -0.096842,
		-0.324562, -0.857114, -0.400019,
		30.024487, 33.565868, 46.270412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570686, 33.966183, 46.798950>,  <30.251680, 34.165848, 46.550426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570686, 33.966183, 46.798950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718023, 33.614258, 46.678776>,  <29.806425, 33.403103, 46.606670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718023, 33.614258, 46.678776>,  <29.570686, 33.966183, 46.798950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718023, 33.614258, 46.678776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302892, -0.419087, 0.855933,
		-0.878966, -0.224277, -0.420855,
		0.368341, -0.879810, -0.300432,
		29.828526, 33.350315, 46.588646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041981, 33.502129, 46.980148>,  <29.570686, 33.966183, 46.798950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041981, 33.502129, 46.980148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342598, 33.248360, 46.907822>,  <29.522968, 33.096100, 46.864426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342598, 33.248360, 46.907822>,  <29.041981, 33.502129, 46.980148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342598, 33.248360, 46.907822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293738, -0.567249, 0.769380,
		-0.590680, -0.525108, -0.612665,
		0.751542, -0.634421, -0.180818,
		29.568062, 33.058033, 46.853577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709623, 32.938885, 47.192413>,  <29.041981, 33.502129, 46.980148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709623, 32.938885, 47.192413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095575, 32.833809, 47.192966>,  <29.327147, 32.770763, 47.193298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.095575, 32.833809, 47.192966>,  <28.709623, 32.938885, 47.192413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095575, 32.833809, 47.192966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164470, -0.599997, 0.782913,
		-0.204838, -0.755643, -0.622130,
		0.964879, -0.262692, 0.001378,
		29.385038, 32.755001, 47.193378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797331, 32.243687, 47.037579>,  <28.709623, 32.938885, 47.192413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797331, 32.243687, 47.037579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133005, 32.337563, 47.233818>,  <29.334410, 32.393890, 47.351562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.133005, 32.337563, 47.233818>,  <28.797331, 32.243687, 47.037579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133005, 32.337563, 47.233818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203476, -0.701083, 0.683433,
		0.504348, -0.673351, -0.540583,
		0.839184, 0.234692, 0.490601,
		29.384760, 32.407970, 47.380997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115927, 31.504404, 47.218266>,  <28.797331, 32.243687, 47.037579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115927, 31.504404, 47.218266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282099, 31.787476, 47.446865>,  <29.381802, 31.957319, 47.584023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282099, 31.787476, 47.446865>,  <29.115927, 31.504404, 47.218266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282099, 31.787476, 47.446865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147394, -0.567603, 0.810001,
		0.897604, -0.420735, -0.131492,
		0.415431, 0.707678, 0.571497,
		29.406729, 31.999779, 47.618313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760719, 31.250767, 47.673470>,  <29.115927, 31.504404, 47.218266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760719, 31.250767, 47.673470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.587954, 31.564152, 47.852192>,  <29.484295, 31.752182, 47.959427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.587954, 31.564152, 47.852192>,  <29.760719, 31.250767, 47.673470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587954, 31.564152, 47.852192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214260, -0.570349, 0.792966,
		0.876096, 0.246759, 0.414205,
		-0.431913, 0.783462, 0.446809,
		29.458380, 31.799191, 47.986237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371901, 30.856569, 47.961311>,  <29.760719, 31.250767, 47.673470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371901, 30.856569, 47.961311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215845, 30.508097, 47.842091>,  <30.122211, 30.299013, 47.770557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215845, 30.508097, 47.842091>,  <30.371901, 30.856569, 47.961311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215845, 30.508097, 47.842091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110197, 0.277202, -0.954472,
		0.914137, -0.405222, -0.012146,
		-0.390140, -0.871180, -0.298055,
		30.098803, 30.246742, 47.752674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800957, 30.606668, 47.389729>,  <30.371901, 30.856569, 47.961311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800957, 30.606668, 47.389729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476488, 30.379316, 47.334675>,  <30.281807, 30.242905, 47.301643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.476488, 30.379316, 47.334675>,  <30.800957, 30.606668, 47.389729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476488, 30.379316, 47.334675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059790, 0.153506, -0.986337,
		0.581741, -0.808319, -0.090536,
		-0.811173, -0.568380, -0.137630,
		30.233135, 30.208803, 47.293385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994539, 30.139442, 46.756802>,  <30.800957, 30.606668, 47.389729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994539, 30.139442, 46.756802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599825, 30.138882, 46.821609>,  <30.362997, 30.138546, 46.860493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.599825, 30.138882, 46.821609>,  <30.994539, 30.139442, 46.756802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599825, 30.138882, 46.821609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156212, 0.273716, -0.949040,
		-0.043019, -0.961809, -0.270318,
		-0.986786, -0.001400, 0.162021,
		30.303789, 30.138462, 46.870216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785984, 29.655727, 46.320766>,  <30.994539, 30.139442, 46.756802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785984, 29.655727, 46.320766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480951, 29.896631, 46.415215>,  <30.297932, 30.041174, 46.471882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.480951, 29.896631, 46.415215>,  <30.785984, 29.655727, 46.320766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480951, 29.896631, 46.415215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040994, 0.319284, -0.946772,
		-0.645594, -0.731669, -0.218791,
		-0.762580, 0.602261, 0.236122,
		30.252178, 30.077309, 46.486050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106712, 29.450182, 45.922054>,  <30.785984, 29.655727, 46.320766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106712, 29.450182, 45.922054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.115883, 29.843710, 45.993134>,  <30.121386, 30.079826, 46.035782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.115883, 29.843710, 45.993134>,  <30.106712, 29.450182, 45.922054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115883, 29.843710, 45.993134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146032, 0.179130, -0.972927,
		-0.989014, -0.003645, 0.147775,
		0.022925, 0.983819, 0.177694,
		30.122761, 30.138855, 46.046440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556458, 29.585953, 45.527954>,  <30.106712, 29.450182, 45.922054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556458, 29.585953, 45.527954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.697844, 29.951057, 45.609863>,  <29.782675, 30.170120, 45.659008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.697844, 29.951057, 45.609863>,  <29.556458, 29.585953, 45.527954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697844, 29.951057, 45.609863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187777, 0.283680, -0.940354,
		-0.916407, 0.293931, 0.271666,
		0.353465, 0.912760, 0.204773,
		29.803883, 30.224886, 45.671295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096508, 30.115013, 45.299866>,  <29.556458, 29.585953, 45.527954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096508, 30.115013, 45.299866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.444025, 30.312172, 45.318844>,  <29.652536, 30.430468, 45.330231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.444025, 30.312172, 45.318844>,  <29.096508, 30.115013, 45.299866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444025, 30.312172, 45.318844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179753, 0.403216, -0.897277,
		-0.461395, 0.771020, 0.438911,
		0.868794, 0.492895, 0.047449,
		29.704664, 30.460041, 45.333080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.624357, 29.984724, 51.281715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788418, 30.348886, 51.260052>,  <31.886854, 30.567385, 51.247051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.788418, 30.348886, 51.260052>,  <31.624357, 29.984724, 51.281715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788418, 30.348886, 51.260052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253462, -0.170832, -0.952141,
		-0.876090, 0.376793, -0.300821,
		0.410151, 0.910408, -0.054162,
		31.911463, 30.622009, 51.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371906, 30.262262, 50.698116>,  <31.624357, 29.984724, 51.281715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371906, 30.262262, 50.698116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724026, 30.439671, 50.765480>,  <31.935297, 30.546116, 50.805897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724026, 30.439671, 50.765480>,  <31.371906, 30.262262, 50.698116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724026, 30.439671, 50.765480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296482, -0.237191, -0.925116,
		-0.370365, 0.864308, -0.340296,
		0.880300, 0.443522, 0.168405,
		31.988115, 30.572727, 50.816002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469070, 30.773369, 50.227402>,  <31.371906, 30.262262, 50.698116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469070, 30.773369, 50.227402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839552, 30.704859, 50.361752>,  <32.061840, 30.663752, 50.442360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.839552, 30.704859, 50.361752>,  <31.469070, 30.773369, 50.227402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839552, 30.704859, 50.361752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318219, -0.122619, -0.940054,
		0.202193, 0.977563, -0.059067,
		0.926204, -0.171276, 0.335872,
		32.117413, 30.653477, 50.462513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769730, 31.078632, 49.717133>,  <31.469070, 30.773369, 50.227402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769730, 31.078632, 49.717133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095421, 30.917908, 49.884743>,  <32.290836, 30.821472, 49.985310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.095421, 30.917908, 49.884743>,  <31.769730, 31.078632, 49.717133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095421, 30.917908, 49.884743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464289, 0.017390, -0.885513,
		0.348523, 0.915557, 0.200716,
		0.814228, -0.401812, 0.419022,
		32.339691, 30.797363, 50.010448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383053, 31.437088, 49.515190>,  <31.769730, 31.078632, 49.717133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383053, 31.437088, 49.515190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.521580, 31.071421, 49.599442>,  <32.604694, 30.852020, 49.649990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.521580, 31.071421, 49.599442>,  <32.383053, 31.437088, 49.515190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521580, 31.071421, 49.599442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587620, 0.036373, -0.808319,
		0.731278, 0.403702, 0.549779,
		0.346317, -0.914167, 0.210625,
		32.625473, 30.797171, 49.662628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126717, 31.519104, 49.310524>,  <32.383053, 31.437088, 49.515190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126717, 31.519104, 49.310524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042767, 31.128798, 49.335293>,  <32.992397, 30.894613, 49.350155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.042767, 31.128798, 49.335293>,  <33.126717, 31.519104, 49.310524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042767, 31.128798, 49.335293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390453, -0.141711, -0.909651,
		0.896380, -0.166736, 0.410733,
		-0.209877, -0.975765, 0.061924,
		32.979805, 30.836067, 49.353870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766670, 31.153688, 49.140404>,  <33.126717, 31.519104, 49.310524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766670, 31.153688, 49.140404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481079, 30.880301, 49.079594>,  <33.309727, 30.716269, 49.043106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481079, 30.880301, 49.079594>,  <33.766670, 31.153688, 49.140404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481079, 30.880301, 49.079594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431482, -0.258494, -0.864294,
		0.551419, -0.682680, 0.479463,
		-0.713975, -0.683468, -0.152026,
		33.266888, 30.675261, 49.033985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150974, 30.428940, 48.970089>,  <33.766670, 31.153688, 49.140404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150974, 30.428940, 48.970089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779263, 30.370935, 48.834198>,  <33.556236, 30.336134, 48.752663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779263, 30.370935, 48.834198>,  <34.150974, 30.428940, 48.970089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779263, 30.370935, 48.834198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369352, -0.354075, -0.859192,
		0.004303, -0.923907, 0.382594,
		-0.929280, -0.145009, -0.339723,
		33.500477, 30.327433, 48.732281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107212, 29.752399, 48.957535>,  <34.150974, 30.428940, 48.970089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107212, 29.752399, 48.957535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847427, 29.912090, 48.698669>,  <33.691555, 30.007904, 48.543350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.847427, 29.912090, 48.698669>,  <34.107212, 29.752399, 48.957535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847427, 29.912090, 48.698669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329181, -0.619586, -0.712568,
		-0.685447, -0.675819, 0.270981,
		-0.649463, 0.399226, -0.647161,
		33.652588, 30.031858, 48.504520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811344, 29.191498, 48.650330>,  <34.107212, 29.752399, 48.957535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811344, 29.191498, 48.650330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.707382, 29.491047, 48.406483>,  <33.645004, 29.670776, 48.260174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.707382, 29.491047, 48.406483>,  <33.811344, 29.191498, 48.650330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707382, 29.491047, 48.406483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271611, -0.549131, -0.790368,
		-0.926647, -0.371003, -0.060678,
		-0.259909, 0.748873, -0.609619,
		33.629410, 29.715710, 48.223598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620098, 28.887346, 47.874901>,  <33.811344, 29.191498, 48.650330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620098, 28.887346, 47.874901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.714172, 29.267843, 47.795074>,  <33.770618, 29.496141, 47.747177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.714172, 29.267843, 47.795074>,  <33.620098, 28.887346, 47.874901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714172, 29.267843, 47.795074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340596, -0.272967, -0.899713,
		-0.910320, 0.143627, -0.388186,
		0.235185, 0.951242, -0.199568,
		33.784729, 29.553215, 47.735203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582672, 28.944082, 47.113029>,  <33.620098, 28.887346, 47.874901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582672, 28.944082, 47.113029> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806599, 29.256214, 47.224522>,  <33.940956, 29.443493, 47.291416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806599, 29.256214, 47.224522>,  <33.582672, 28.944082, 47.113029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806599, 29.256214, 47.224522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430917, 0.013149, -0.902296,
		-0.707754, 0.625229, -0.328896,
		0.559817, 0.780331, 0.278728,
		33.974545, 29.490313, 47.308140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995937, 28.869930, 46.818310>,  <33.582672, 28.944082, 47.113029>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995937, 28.869930, 46.818310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876205, 28.498138, 46.732082>,  <32.804367, 28.275064, 46.680347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876205, 28.498138, 46.732082>,  <32.995937, 28.869930, 46.818310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876205, 28.498138, 46.732082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320563, -0.114831, 0.940241,
		-0.898688, 0.350548, -0.263584,
		-0.299332, -0.929478, -0.215570,
		32.786407, 28.219296, 46.667412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239822, 28.778833, 47.046021>,  <32.995937, 28.869930, 46.818310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239822, 28.778833, 47.046021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371578, 28.401392, 47.032673>,  <32.450630, 28.174927, 47.024666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371578, 28.401392, 47.032673>,  <32.239822, 28.778833, 47.046021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371578, 28.401392, 47.032673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289724, -0.134641, 0.947592,
		-0.898646, -0.302457, -0.317734,
		0.329386, -0.943606, -0.033366,
		32.470394, 28.118311, 47.022663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743330, 28.480354, 47.328533>,  <32.239822, 28.778833, 47.046021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743330, 28.480354, 47.328533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050327, 28.227497, 47.371143>,  <32.234524, 28.075783, 47.396709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050327, 28.227497, 47.371143>,  <31.743330, 28.480354, 47.328533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050327, 28.227497, 47.371143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397782, -0.339303, 0.852434,
		-0.502718, -0.696610, -0.511868,
		0.767492, -0.632146, 0.106525,
		32.280575, 28.037853, 47.403103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418406, 27.866554, 47.444595>,  <31.743330, 28.480354, 47.328533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418406, 27.866554, 47.444595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792356, 27.817654, 47.577896>,  <32.016727, 27.788313, 47.657875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.792356, 27.817654, 47.577896>,  <31.418406, 27.866554, 47.444595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792356, 27.817654, 47.577896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353938, -0.392401, 0.848970,
		0.026982, -0.911634, -0.410117,
		0.934880, -0.122249, 0.333249,
		32.072819, 27.780979, 47.677872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313164, 27.405081, 47.865585>,  <31.418406, 27.866554, 47.444595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313164, 27.405081, 47.865585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682329, 27.517775, 47.970551>,  <31.903828, 27.585390, 48.033527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682329, 27.517775, 47.970551>,  <31.313164, 27.405081, 47.865585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682329, 27.517775, 47.970551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181893, -0.281651, 0.942119,
		0.339336, -0.917223, -0.208694,
		0.922911, 0.281735, 0.262411,
		31.959202, 27.602295, 48.049274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417871, 27.020004, 48.425411>,  <31.313164, 27.405081, 47.865585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417871, 27.020004, 48.425411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705515, 27.297077, 48.447590>,  <31.878101, 27.463322, 48.460896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.705515, 27.297077, 48.447590>,  <31.417871, 27.020004, 48.425411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705515, 27.297077, 48.447590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007463, -0.087479, 0.996138,
		0.694859, -0.715916, -0.068076,
		0.719107, 0.692684, 0.055443,
		31.921247, 27.504883, 48.464222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845278, 26.779215, 49.033936>,  <31.417871, 27.020004, 48.425411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845278, 26.779215, 49.033936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881947, 27.170803, 48.961040>,  <31.903948, 27.405756, 48.917305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881947, 27.170803, 48.961040>,  <31.845278, 26.779215, 49.033936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881947, 27.170803, 48.961040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062010, 0.188266, 0.980159,
		0.993857, -0.078552, 0.077965,
		0.091671, 0.978972, -0.182238,
		31.909449, 27.464495, 48.906368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193775, 27.011786, 49.574451>,  <31.845278, 26.779215, 49.033936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193775, 27.011786, 49.574451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035088, 27.345615, 49.421558>,  <31.939875, 27.545914, 49.329823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035088, 27.345615, 49.421558>,  <32.193775, 27.011786, 49.574451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035088, 27.345615, 49.421558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135817, 0.358448, 0.923617,
		0.907837, 0.418330, -0.028853,
		-0.396719, 0.834575, -0.382228,
		31.916073, 27.595987, 49.306889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521648, 27.709072, 49.869236>,  <32.193775, 27.011786, 49.574451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521648, 27.709072, 49.869236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149437, 27.789253, 49.746647>,  <31.926109, 27.837362, 49.673092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149437, 27.789253, 49.746647>,  <32.521648, 27.709072, 49.869236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149437, 27.789253, 49.746647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237123, 0.307957, 0.921377,
		0.279074, 0.930044, -0.239032,
		-0.930533, 0.200452, -0.306477,
		31.870277, 27.849388, 49.654705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294094, 28.297468, 50.215477>,  <32.521648, 27.709072, 49.869236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294094, 28.297468, 50.215477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945873, 28.167034, 50.068069>,  <31.736940, 28.088774, 49.979626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945873, 28.167034, 50.068069>,  <32.294094, 28.297468, 50.215477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945873, 28.167034, 50.068069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486020, 0.452648, 0.747592,
		-0.076967, 0.829927, -0.552537,
		-0.870552, -0.326084, -0.368523,
		31.684708, 28.069208, 49.957512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866262, 28.879864, 50.254189>,  <32.294094, 28.297468, 50.215477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866262, 28.879864, 50.254189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.644176, 28.547192, 50.251495>,  <31.510925, 28.347588, 50.249878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.644176, 28.547192, 50.251495>,  <31.866262, 28.879864, 50.254189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644176, 28.547192, 50.251495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527932, 0.346161, 0.775539,
		-0.642670, 0.434144, -0.631264,
		-0.555215, -0.831680, -0.006731,
		31.477612, 28.297688, 50.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140648, 29.147284, 50.446976>,  <31.866262, 28.879864, 50.254189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140648, 29.147284, 50.446976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.103218, 28.749178, 50.457474>,  <31.080761, 28.510315, 50.463772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.103218, 28.749178, 50.457474>,  <31.140648, 29.147284, 50.446976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103218, 28.749178, 50.457474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674723, 0.082777, 0.733415,
		-0.732116, 0.050919, -0.679274,
		-0.093573, -0.995266, 0.026247,
		31.075146, 28.450598, 50.465347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461170, 28.992540, 50.399906>,  <31.140648, 29.147284, 50.446976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461170, 28.992540, 50.399906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.626289, 28.681431, 50.589500>,  <30.725361, 28.494764, 50.703259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.626289, 28.681431, 50.589500>,  <30.461170, 28.992540, 50.399906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626289, 28.681431, 50.589500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666470, 0.096774, 0.739224,
		-0.620819, -0.621049, -0.478415,
		0.412796, -0.777774, 0.473990,
		30.750128, 28.448099, 50.731697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944035, 28.496620, 50.642056>,  <30.461170, 28.992540, 50.399906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944035, 28.496620, 50.642056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.266466, 28.455814, 50.875237>,  <30.459925, 28.431332, 51.015144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.266466, 28.455814, 50.875237>,  <29.944035, 28.496620, 50.642056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266466, 28.455814, 50.875237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577343, 0.080901, 0.812484,
		-0.130045, -0.991488, 0.006317,
		0.806079, -0.102013, 0.582950,
		30.508289, 28.425211, 51.050121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263824, 27.995041, 50.234554>,  <29.944035, 28.496620, 50.642056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263824, 27.995041, 50.234554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.000643, 28.291899, 50.183456>,  <29.842733, 28.470013, 50.152798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.000643, 28.291899, 50.183456>,  <30.263824, 27.995041, 50.234554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000643, 28.291899, 50.183456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505712, 0.309751, -0.805177,
		-0.557988, -0.594371, -0.579113,
		-0.657955, 0.742143, -0.127743,
		29.803257, 28.514542, 50.145134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007565, 28.027529, 49.453159>,  <30.263824, 27.995041, 50.234554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007565, 28.027529, 49.453159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.922115, 28.394001, 49.588795>,  <29.870846, 28.613884, 49.670174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.922115, 28.394001, 49.588795>,  <30.007565, 28.027529, 49.453159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922115, 28.394001, 49.588795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231003, 0.384627, -0.893700,
		-0.949211, -0.112587, -0.293806,
		-0.213625, 0.916180, 0.339084,
		29.858028, 28.668856, 49.690521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613443, 28.345991, 48.923103>,  <30.007565, 28.027529, 49.453159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613443, 28.345991, 48.923103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706858, 28.672417, 49.134575>,  <29.762905, 28.868273, 49.261456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706858, 28.672417, 49.134575>,  <29.613443, 28.345991, 48.923103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706858, 28.672417, 49.134575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050855, 0.553218, -0.831483,
		-0.971018, 0.167294, 0.170697,
		0.233534, 0.816065, 0.528677,
		29.776918, 28.917236, 49.293179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134411, 28.827284, 48.875065>,  <29.613443, 28.345991, 48.923103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134411, 28.827284, 48.875065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.454107, 29.046064, 48.974709>,  <29.645926, 29.177334, 49.034496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.454107, 29.046064, 48.974709>,  <29.134411, 28.827284, 48.875065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454107, 29.046064, 48.974709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092045, 0.520993, -0.848583,
		-0.593921, 0.655293, 0.466743,
		0.799241, 0.546953, 0.249113,
		29.693880, 29.210150, 49.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850780, 29.481569, 48.749187>,  <29.134411, 28.827284, 48.875065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850780, 29.481569, 48.749187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.250072, 29.493460, 48.769794>,  <29.489647, 29.500595, 48.782158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.250072, 29.493460, 48.769794>,  <28.850780, 29.481569, 48.749187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250072, 29.493460, 48.769794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015909, 0.701168, -0.712818,
		-0.057315, 0.712375, 0.699454,
		0.998229, 0.029728, 0.051520,
		29.549541, 29.502378, 48.785252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141262, 30.177292, 48.706146>,  <28.850780, 29.481569, 48.749187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141262, 30.177292, 48.706146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474092, 29.982281, 48.600346>,  <29.673792, 29.865274, 48.536865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.474092, 29.982281, 48.600346>,  <29.141262, 30.177292, 48.706146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474092, 29.982281, 48.600346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069539, 0.564807, -0.822288,
		0.550282, 0.665815, 0.503866,
		0.832078, -0.487528, -0.264503,
		29.723717, 29.836021, 48.520996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625595, 30.643740, 48.460125>,  <29.141262, 30.177292, 48.706146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625595, 30.643740, 48.460125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761284, 30.304731, 48.296837>,  <29.842697, 30.101326, 48.198864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761284, 30.304731, 48.296837>,  <29.625595, 30.643740, 48.460125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761284, 30.304731, 48.296837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194954, 0.487862, -0.850872,
		0.920283, 0.209051, 0.330721,
		0.339222, -0.847519, -0.408216,
		29.863050, 30.050476, 48.174374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104130, 31.351128, 48.433052>,  <29.625595, 30.643740, 48.460125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104130, 31.351128, 48.433052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.764479, 31.561438, 48.453209>,  <29.560688, 31.687624, 48.465302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.764479, 31.561438, 48.453209>,  <30.104130, 31.351128, 48.433052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764479, 31.561438, 48.453209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159097, -0.345581, 0.924804,
		0.503654, 0.777260, 0.377093,
		-0.849129, 0.525776, 0.050393,
		29.509741, 31.719170, 48.468327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999729, 31.366007, 49.120152>,  <30.104130, 31.351128, 48.433052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999729, 31.366007, 49.120152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.642345, 31.482431, 48.983322>,  <29.427916, 31.552286, 48.901226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.642345, 31.482431, 48.983322>,  <29.999729, 31.366007, 49.120152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642345, 31.482431, 48.983322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427696, -0.318791, 0.845842,
		0.137142, 0.902029, 0.409313,
		-0.893459, 0.291061, -0.342074,
		29.374308, 31.569750, 48.880699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726334, 31.994633, 49.576637>,  <29.999729, 31.366007, 49.120152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726334, 31.994633, 49.576637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.434435, 31.788082, 49.397381>,  <29.259296, 31.664152, 49.289829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.434435, 31.788082, 49.397381>,  <29.726334, 31.994633, 49.576637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434435, 31.788082, 49.397381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455226, -0.122084, 0.881966,
		-0.510136, 0.847615, -0.145977,
		-0.729747, -0.516375, -0.448137,
		29.215511, 31.633169, 49.262939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120821, 32.352638, 49.840462>,  <29.726334, 31.994633, 49.576637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120821, 32.352638, 49.840462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970484, 32.003220, 49.716751>,  <28.880281, 31.793568, 49.642525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970484, 32.003220, 49.716751>,  <29.120821, 32.352638, 49.840462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970484, 32.003220, 49.716751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510674, -0.083255, 0.855734,
		-0.773275, 0.479563, -0.414808,
		-0.375843, -0.873549, -0.309280,
		28.857731, 31.741156, 49.623966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394344, 32.345562, 49.920021>,  <29.120821, 32.352638, 49.840462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394344, 32.345562, 49.920021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.492588, 31.958828, 49.891991>,  <28.551535, 31.726788, 49.875172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.492588, 31.958828, 49.891991>,  <28.394344, 32.345562, 49.920021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492588, 31.958828, 49.891991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570079, -0.202532, 0.796235,
		-0.784019, -0.155613, -0.600915,
		0.245609, -0.966833, -0.070077,
		28.566271, 31.668777, 49.870968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742760, 32.030510, 49.971298>,  <28.394344, 32.345562, 49.920021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742760, 32.030510, 49.971298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.998339, 31.728380, 50.029583>,  <28.151686, 31.547102, 50.064552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.998339, 31.728380, 50.029583>,  <27.742760, 32.030510, 49.971298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998339, 31.728380, 50.029583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503594, -0.267531, 0.821475,
		-0.581498, -0.598258, -0.551315,
		0.638948, -0.755324, 0.145710,
		28.190023, 31.501783, 50.073296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341703, 31.475435, 49.905609>,  <27.742760, 32.030510, 49.971298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341703, 31.475435, 49.905609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.662886, 31.375772, 50.122192>,  <27.855595, 31.315975, 50.252144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.662886, 31.375772, 50.122192>,  <27.341703, 31.475435, 49.905609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662886, 31.375772, 50.122192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595974, -0.322465, 0.735412,
		-0.008632, -0.913201, -0.407418,
		0.802958, -0.249159, 0.541460,
		27.903772, 31.301025, 50.284630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058594, 30.951784, 50.473965>,  <27.341703, 31.475435, 49.905609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058594, 30.951784, 50.473965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.408144, 31.073008, 50.626015>,  <27.617874, 31.145742, 50.717243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.408144, 31.073008, 50.626015>,  <27.058594, 30.951784, 50.473965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408144, 31.073008, 50.626015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201292, -0.486174, 0.850362,
		0.442519, -0.819627, -0.363852,
		0.873876, 0.303061, 0.380126,
		27.670307, 31.163925, 50.740051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362703, 30.290922, 50.610443>,  <27.058594, 30.951784, 50.473965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362703, 30.290922, 50.610443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.564840, 30.538851, 50.850594>,  <27.686123, 30.687607, 50.994682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.564840, 30.538851, 50.850594>,  <27.362703, 30.290922, 50.610443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564840, 30.538851, 50.850594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203014, -0.590826, 0.780839,
		0.838698, -0.516476, -0.172737,
		0.505343, 0.619820, 0.600377,
		27.716442, 30.724796, 51.030708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.053257, 35.729038, 37.351616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194275, 35.362186, 37.277241>,  <34.278885, 35.142075, 37.232616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194275, 35.362186, 37.277241>,  <34.053257, 35.729038, 37.351616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194275, 35.362186, 37.277241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928779, -0.318647, -0.189298,
		0.114362, 0.239435, -0.964154,
		0.352549, -0.917134, -0.185941,
		34.300041, 35.087048, 37.221458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590141, 35.105736, 37.756401>,  <34.053257, 35.729038, 37.351616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590141, 35.105736, 37.756401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554958, 35.479301, 37.895000>,  <34.533848, 35.703442, 37.978161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554958, 35.479301, 37.895000>,  <34.590141, 35.105736, 37.756401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554958, 35.479301, 37.895000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623229, -0.322951, 0.712242,
		0.777077, -0.153300, 0.610451,
		-0.087959, 0.933918, 0.346498,
		34.528572, 35.759476, 37.998951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640617, 35.155678, 38.484314>,  <34.590141, 35.105736, 37.756401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640617, 35.155678, 38.484314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441864, 35.497929, 38.426342>,  <34.322613, 35.703278, 38.391560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441864, 35.497929, 38.426342>,  <34.640617, 35.155678, 38.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441864, 35.497929, 38.426342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541235, -0.175002, 0.822459,
		0.678357, 0.487108, 0.550052,
		-0.496887, 0.855628, -0.144926,
		34.292797, 35.754616, 38.382866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567123, 35.342339, 39.094803>,  <34.640617, 35.155678, 38.484314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567123, 35.342339, 39.094803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283733, 35.565403, 38.921795>,  <34.113697, 35.699242, 38.817989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283733, 35.565403, 38.921795>,  <34.567123, 35.342339, 39.094803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283733, 35.565403, 38.921795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595731, -0.143983, 0.790173,
		0.378372, 0.817486, 0.434224,
		-0.708477, 0.557660, -0.432523,
		34.071190, 35.732700, 38.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274658, 35.745911, 39.612122>,  <34.567123, 35.342339, 39.094803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274658, 35.745911, 39.612122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004852, 35.716274, 39.318310>,  <33.842968, 35.698494, 39.142021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004852, 35.716274, 39.318310>,  <34.274658, 35.745911, 39.612122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004852, 35.716274, 39.318310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700293, -0.250741, 0.668370,
		-0.233696, 0.965215, 0.117245,
		-0.674519, -0.074090, -0.734531,
		33.802498, 35.694046, 39.097950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696636, 36.050190, 39.897938>,  <34.274658, 35.745911, 39.612122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696636, 36.050190, 39.897938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545082, 35.826435, 39.603043>,  <33.454151, 35.692181, 39.426105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545082, 35.826435, 39.603043>,  <33.696636, 36.050190, 39.897938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545082, 35.826435, 39.603043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766324, -0.256981, 0.588819,
		-0.518838, 0.788062, -0.331309,
		-0.378886, -0.559392, -0.737243,
		33.431416, 35.658619, 39.381870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011478, 36.108089, 39.942924>,  <33.696636, 36.050190, 39.897938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011478, 36.108089, 39.942924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010838, 35.792282, 39.697433>,  <33.010452, 35.602798, 39.550140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010838, 35.792282, 39.697433>,  <33.011478, 36.108089, 39.942924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010838, 35.792282, 39.697433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809851, -0.359011, 0.463953,
		-0.586633, 0.497768, -0.638818,
		-0.001598, -0.789518, -0.613725,
		33.010357, 35.555428, 39.513317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298347, 35.992756, 39.621189>,  <33.011478, 36.108089, 39.942924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298347, 35.992756, 39.621189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507298, 35.651676, 39.623394>,  <32.632668, 35.447029, 39.624718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507298, 35.651676, 39.623394>,  <32.298347, 35.992756, 39.621189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507298, 35.651676, 39.623394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728626, -0.442983, 0.522371,
		-0.442983, -0.276890, -0.852701,
		-0.522371, 0.852701, -0.005516,
		32.664009, 35.395866, 39.625050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786436, 35.626640, 39.420643>,  <32.298347, 35.992756, 39.621189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786436, 35.626640, 39.420643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081490, 35.401443, 39.569740>,  <32.258522, 35.266327, 39.659199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081490, 35.401443, 39.569740>,  <31.786436, 35.626640, 39.420643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081490, 35.401443, 39.569740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658679, -0.478625, 0.580569,
		-0.148447, -0.673768, -0.723878,
		0.737635, -0.562987, 0.372747,
		32.302780, 35.232548, 39.681564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501549, 34.962189, 39.311737>,  <31.786436, 35.626640, 39.420643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501549, 34.962189, 39.311737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785318, 34.938667, 39.592667>,  <31.955580, 34.924553, 39.761223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785318, 34.938667, 39.592667>,  <31.501549, 34.962189, 39.311737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785318, 34.938667, 39.592667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618676, -0.529267, 0.580617,
		0.337573, -0.846415, -0.411857,
		0.709425, -0.058806, 0.702323,
		31.998146, 34.921024, 39.803364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404600, 34.244926, 39.613583>,  <31.501549, 34.962189, 39.311737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404600, 34.244926, 39.613583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602583, 34.452011, 39.892723>,  <31.721373, 34.576263, 40.060207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602583, 34.452011, 39.892723>,  <31.404600, 34.244926, 39.613583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602583, 34.452011, 39.892723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538806, -0.447210, 0.713926,
		0.681693, -0.729368, 0.057597,
		0.494957, 0.517712, 0.697848,
		31.751070, 34.607327, 40.102077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493107, 33.773693, 40.116474>,  <31.404600, 34.244926, 39.613583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493107, 33.773693, 40.116474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537498, 34.127197, 40.298309>,  <31.564133, 34.339298, 40.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537498, 34.127197, 40.298309>,  <31.493107, 33.773693, 40.116474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537498, 34.127197, 40.298309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460096, -0.359758, 0.811718,
		0.880906, -0.299239, 0.366689,
		0.110978, 0.883759, 0.454591,
		31.570791, 34.392326, 40.434689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863466, 33.197277, 40.318024>,  <31.493107, 33.773693, 40.116474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863466, 33.197277, 40.318024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581055, 32.943062, 40.193054>,  <31.411608, 32.790531, 40.118073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581055, 32.943062, 40.193054>,  <31.863466, 33.197277, 40.318024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581055, 32.943062, 40.193054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041440, 0.403336, -0.914113,
		0.706970, -0.658337, -0.258430,
		-0.706028, -0.635541, -0.312427,
		31.369246, 32.752399, 40.099327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169228, 32.675667, 39.788265>,  <31.863466, 33.197277, 40.318024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169228, 32.675667, 39.788265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774817, 32.651688, 39.726086>,  <31.538170, 32.637302, 39.688778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774817, 32.651688, 39.726086>,  <32.169228, 32.675667, 39.788265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774817, 32.651688, 39.726086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147292, 0.122382, -0.981493,
		0.077857, -0.990671, -0.111842,
		-0.986024, -0.059943, -0.155446,
		31.479010, 32.633705, 39.679451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099083, 32.252747, 39.226696>,  <32.169228, 32.675667, 39.788265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099083, 32.252747, 39.226696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743513, 32.433830, 39.254581>,  <31.530170, 32.542480, 39.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743513, 32.433830, 39.254581>,  <32.099083, 32.252747, 39.226696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743513, 32.433830, 39.254581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017826, 0.117882, -0.992868,
		-0.457700, -0.883830, -0.096718,
		-0.888928, 0.452711, 0.069710,
		31.476835, 32.569645, 39.275494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610920, 31.890537, 38.746086>,  <32.099083, 32.252747, 39.226696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610920, 31.890537, 38.746086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472866, 32.263927, 38.785084>,  <31.390034, 32.487961, 38.808483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472866, 32.263927, 38.785084>,  <31.610920, 31.890537, 38.746086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472866, 32.263927, 38.785084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017154, 0.110139, -0.993768,
		-0.938397, -0.341311, -0.054026,
		-0.345134, 0.933475, 0.097499,
		31.369326, 32.543968, 38.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034031, 32.012344, 38.307152>,  <31.610920, 31.890537, 38.746086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034031, 32.012344, 38.307152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143349, 32.390491, 38.378246>,  <31.208939, 32.617378, 38.420902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143349, 32.390491, 38.378246>,  <31.034031, 32.012344, 38.307152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143349, 32.390491, 38.378246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065702, 0.165993, -0.983936,
		-0.959684, 0.280582, -0.016747,
		0.273294, 0.945368, 0.177735,
		31.225336, 32.674103, 38.431568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767029, 32.400459, 37.805340>,  <31.034031, 32.012344, 38.307152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767029, 32.400459, 37.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061785, 32.639328, 37.932072>,  <31.238638, 32.782650, 38.008110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061785, 32.639328, 37.932072>,  <30.767029, 32.400459, 37.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061785, 32.639328, 37.932072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205519, 0.248595, -0.946553,
		-0.644014, 0.762621, 0.060458,
		0.736891, 0.597168, 0.316831,
		31.282852, 32.818478, 38.027122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742134, 33.065411, 37.393452>,  <30.767029, 32.400459, 37.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742134, 33.065411, 37.393452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113724, 33.040749, 37.539440>,  <31.336678, 33.025951, 37.627033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113724, 33.040749, 37.539440>,  <30.742134, 33.065411, 37.393452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113724, 33.040749, 37.539440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365330, 0.311173, -0.877328,
		-0.059477, 0.948351, 0.311597,
		0.928976, -0.061655, 0.364969,
		31.392416, 33.022251, 37.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105995, 33.682526, 37.212322>,  <30.742134, 33.065411, 37.393452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105995, 33.682526, 37.212322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406107, 33.428761, 37.286724>,  <31.586174, 33.276501, 37.331364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406107, 33.428761, 37.286724>,  <31.105995, 33.682526, 37.212322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406107, 33.428761, 37.286724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305118, 0.082688, -0.948718,
		0.586502, 0.768556, 0.255611,
		0.750279, -0.634417, 0.186004,
		31.631191, 33.238434, 37.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692186, 33.933025, 36.881630>,  <31.105995, 33.682526, 37.212322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692186, 33.933025, 36.881630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807087, 33.553135, 36.931427>,  <31.876028, 33.325199, 36.961304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807087, 33.553135, 36.931427>,  <31.692186, 33.933025, 36.881630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807087, 33.553135, 36.931427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666908, 0.105015, -0.737703,
		0.687546, 0.294930, 0.663548,
		0.287253, -0.949731, 0.124489,
		31.893263, 33.268215, 36.968773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335499, 33.958317, 36.834068>,  <31.692186, 33.933025, 36.881630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335499, 33.958317, 36.834068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297245, 33.564205, 36.777397>,  <32.274292, 33.327736, 36.743397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297245, 33.564205, 36.777397>,  <32.335499, 33.958317, 36.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297245, 33.564205, 36.777397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818229, 0.003239, -0.574884,
		0.566882, -0.170903, 0.805877,
		-0.095639, -0.985283, -0.141674,
		32.268555, 33.268620, 36.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964146, 33.747093, 36.915089>,  <32.335499, 33.958317, 36.834068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964146, 33.747093, 36.915089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785873, 33.448254, 36.717823>,  <32.678909, 33.268948, 36.599464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785873, 33.448254, 36.717823>,  <32.964146, 33.747093, 36.915089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785873, 33.448254, 36.717823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840976, -0.160615, -0.516684,
		0.306805, -0.645014, 0.699877,
		-0.445679, -0.747101, -0.493164,
		32.652168, 33.224125, 36.569874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424721, 33.240147, 36.843552>,  <32.964146, 33.747093, 36.915089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424721, 33.240147, 36.843552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186848, 33.129448, 36.541618>,  <33.044125, 33.063030, 36.360458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186848, 33.129448, 36.541618>,  <33.424721, 33.240147, 36.843552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186848, 33.129448, 36.541618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803525, -0.173577, -0.569403,
		0.026557, -0.945137, 0.325593,
		-0.594679, -0.276744, -0.754831,
		33.008446, 33.046425, 36.315170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569702, 32.505810, 37.009480>,  <33.424721, 33.240147, 36.843552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569702, 32.505810, 37.009480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418678, 32.141438, 37.075993>,  <33.328064, 31.922813, 37.115898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418678, 32.141438, 37.075993>,  <33.569702, 32.505810, 37.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418678, 32.141438, 37.075993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335781, -0.302035, -0.892203,
		0.862959, -0.281028, 0.419911,
		-0.377562, -0.910932, 0.166280,
		33.305408, 31.868158, 37.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034203, 32.018856, 37.121765>,  <33.569702, 32.505810, 37.009480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034203, 32.018856, 37.121765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714947, 31.853849, 36.946129>,  <33.523392, 31.754845, 36.840748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714947, 31.853849, 36.946129>,  <34.034203, 32.018856, 37.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714947, 31.853849, 36.946129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584406, -0.352954, -0.730679,
		0.146439, -0.839792, 0.522785,
		-0.798138, -0.412519, -0.439093,
		33.475506, 31.730093, 36.814400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592819, 31.977388, 37.541035>,  <34.034203, 32.018856, 37.121765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592819, 31.977388, 37.541035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472710, 32.282398, 37.770256>,  <34.400642, 32.465405, 37.907787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472710, 32.282398, 37.770256>,  <34.592819, 31.977388, 37.541035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472710, 32.282398, 37.770256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039170, -0.610130, 0.791333,
		0.953047, 0.215172, 0.213076,
		-0.300277, 0.762524, 0.573054,
		34.382626, 32.511154, 37.942173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780071, 31.384489, 37.089836>,  <34.592819, 31.977388, 37.541035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780071, 31.384489, 37.089836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150902, 31.440781, 37.228817>,  <35.373402, 31.474556, 37.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150902, 31.440781, 37.228817>,  <34.780071, 31.384489, 37.089836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150902, 31.440781, 37.228817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237524, -0.496538, 0.834885,
		0.290015, -0.856531, -0.426903,
		0.927078, 0.140729, 0.347450,
		35.429024, 31.483000, 37.333054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171700, 30.656946, 37.136051>,  <34.780071, 31.384489, 37.089836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171700, 30.656946, 37.136051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279934, 30.933416, 37.404099>,  <35.344875, 31.099298, 37.564926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279934, 30.933416, 37.404099>,  <35.171700, 30.656946, 37.136051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279934, 30.933416, 37.404099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377050, -0.564385, 0.734372,
		0.885786, -0.451378, 0.107894,
		0.270586, 0.691178, 0.670117,
		35.361111, 31.140770, 37.605133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404228, 30.295568, 37.754807>,  <35.171700, 30.656946, 37.136051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404228, 30.295568, 37.754807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334278, 30.664570, 37.892448>,  <35.292309, 30.885971, 37.975033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334278, 30.664570, 37.892448>,  <35.404228, 30.295568, 37.754807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334278, 30.664570, 37.892448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446966, -0.385786, 0.807087,
		0.877292, -0.012667, 0.479790,
		-0.174873, 0.922501, 0.344109,
		35.281815, 30.941320, 37.995682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544743, 30.237635, 38.397205>,  <35.404228, 30.295568, 37.754807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544743, 30.237635, 38.397205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313255, 30.563009, 38.373871>,  <35.174362, 30.758234, 38.359871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313255, 30.563009, 38.373871>,  <35.544743, 30.237635, 38.397205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313255, 30.563009, 38.373871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553953, -0.339597, 0.760138,
		0.598515, 0.472220, 0.647138,
		-0.578719, 0.813438, -0.058334,
		35.139641, 30.807041, 38.356369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635265, 30.619156, 38.979874>,  <35.544743, 30.237635, 38.397205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635265, 30.619156, 38.979874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275871, 30.696133, 38.822041>,  <35.060234, 30.742319, 38.727341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275871, 30.696133, 38.822041>,  <35.635265, 30.619156, 38.979874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275871, 30.696133, 38.822041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439007, -0.392588, 0.808176,
		0.000621, 0.899356, 0.437218,
		-0.898483, 0.192444, -0.394579,
		35.006325, 30.753866, 38.703667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262302, 30.722761, 39.562740>,  <35.635265, 30.619156, 38.979874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262302, 30.722761, 39.562740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959862, 30.754406, 39.302879>,  <34.778397, 30.773392, 39.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959862, 30.754406, 39.302879>,  <35.262302, 30.722761, 39.562740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959862, 30.754406, 39.302879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646751, -0.242145, 0.723242,
		-0.100093, 0.967009, 0.234252,
		-0.756104, 0.079111, -0.649652,
		34.733032, 30.778139, 39.107983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724533, 31.196951, 39.824600>,  <35.262302, 30.722761, 39.562740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724533, 31.196951, 39.824600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559299, 30.937778, 39.568615>,  <34.460159, 30.782276, 39.415024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559299, 30.937778, 39.568615>,  <34.724533, 31.196951, 39.824600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559299, 30.937778, 39.568615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628816, -0.305381, 0.715076,
		-0.658750, 0.697804, -0.281280,
		-0.413085, -0.647930, -0.639959,
		34.435375, 30.743399, 39.376629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035912, 31.241758, 39.896965>,  <34.724533, 31.196951, 39.824600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035912, 31.241758, 39.896965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088776, 30.870123, 39.758789>,  <34.120495, 30.647142, 39.675884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088776, 30.870123, 39.758789>,  <34.035912, 31.241758, 39.896965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088776, 30.870123, 39.758789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511719, -0.362421, 0.778970,
		-0.848927, 0.073821, -0.523329,
		0.132161, -0.929087, -0.345444,
		34.128426, 30.591396, 39.655155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327328, 30.800447, 40.104622>,  <34.035912, 31.241758, 39.896965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327328, 30.800447, 40.104622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625534, 30.545639, 40.026230>,  <33.804459, 30.392754, 39.979195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625534, 30.545639, 40.026230>,  <33.327328, 30.800447, 40.104622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625534, 30.545639, 40.026230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404318, -0.666027, 0.626845,
		-0.529839, -0.388087, -0.754095,
		0.745518, -0.637021, -0.195977,
		33.849190, 30.354532, 39.967438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944191, 30.262220, 39.764626>,  <33.327328, 30.800447, 40.104622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944191, 30.262220, 39.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293922, 30.108953, 39.883778>,  <33.503761, 30.016993, 39.955269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293922, 30.108953, 39.883778>,  <32.944191, 30.262220, 39.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293922, 30.108953, 39.883778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485198, -0.675372, 0.555388,
		-0.011626, -0.630123, -0.776408,
		0.874327, -0.383169, 0.297883,
		33.556221, 29.994003, 39.973141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882305, 29.503860, 39.846481>,  <32.944191, 30.262220, 39.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882305, 29.503860, 39.846481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209564, 29.597246, 40.056675>,  <33.405918, 29.653278, 40.182793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209564, 29.597246, 40.056675>,  <32.882305, 29.503860, 39.846481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209564, 29.597246, 40.056675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249055, -0.679819, 0.689795,
		0.518279, -0.695226, -0.498043,
		0.818143, 0.233466, 0.525486,
		33.455006, 29.667286, 40.214321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136181, 28.869276, 40.050781>,  <32.882305, 29.503860, 39.846481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136181, 28.869276, 40.050781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331596, 29.116798, 40.296841>,  <33.448845, 29.265312, 40.444477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331596, 29.116798, 40.296841>,  <33.136181, 28.869276, 40.050781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331596, 29.116798, 40.296841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264196, -0.567004, 0.780197,
		0.831581, -0.543678, -0.113519,
		0.488542, 0.618805, 0.615148,
		33.478161, 29.302441, 40.481384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501949, 28.420689, 40.510315>,  <33.136181, 28.869276, 40.050781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501949, 28.420689, 40.510315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482788, 28.774689, 40.695564>,  <33.471291, 28.987089, 40.806713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482788, 28.774689, 40.695564>,  <33.501949, 28.420689, 40.510315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482788, 28.774689, 40.695564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137864, -0.465074, 0.874471,
		0.989292, -0.021955, 0.144289,
		-0.047906, 0.885000, 0.463121,
		33.468418, 29.040188, 40.834499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989815, 28.387575, 41.055801>,  <33.501949, 28.420689, 40.510315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989815, 28.387575, 41.055801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708370, 28.654844, 41.152534>,  <33.539505, 28.815205, 41.210575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708370, 28.654844, 41.152534>,  <33.989815, 28.387575, 41.055801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708370, 28.654844, 41.152534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080637, -0.413207, 0.907060,
		0.705997, 0.618715, 0.344616,
		-0.703609, 0.668171, 0.241832,
		33.497288, 28.855295, 41.225082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167080, 28.567516, 41.719955>,  <33.989815, 28.387575, 41.055801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167080, 28.567516, 41.719955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781128, 28.663229, 41.676590>,  <33.549557, 28.720655, 41.650570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781128, 28.663229, 41.676590>,  <34.167080, 28.567516, 41.719955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781128, 28.663229, 41.676590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168171, -0.245569, 0.954680,
		0.201812, 0.939384, 0.277184,
		-0.964879, 0.239280, -0.108418,
		33.491665, 28.735012, 41.644066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973801, 28.812077, 42.334518>,  <34.167080, 28.567516, 41.719955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973801, 28.812077, 42.334518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599930, 28.756014, 42.203838>,  <33.375607, 28.722376, 42.125431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599930, 28.756014, 42.203838>,  <33.973801, 28.812077, 42.334518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599930, 28.756014, 42.203838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304745, -0.157329, 0.939350,
		-0.183057, 0.977549, 0.104340,
		-0.934677, -0.140158, -0.326704,
		33.319527, 28.713966, 42.105827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571537, 29.240850, 42.722492>,  <33.973801, 28.812077, 42.334518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571537, 29.240850, 42.722492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291359, 28.989817, 42.586540>,  <33.123253, 28.839195, 42.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291359, 28.989817, 42.586540>,  <33.571537, 29.240850, 42.722492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291359, 28.989817, 42.586540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309370, -0.162166, 0.937013,
		-0.643172, 0.761471, -0.080568,
		-0.700443, -0.627586, -0.339877,
		33.081226, 28.801540, 42.484577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996262, 29.494183, 43.033085>,  <33.571537, 29.240850, 42.722492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996262, 29.494183, 43.033085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917328, 29.120363, 42.914646>,  <32.869968, 28.896070, 42.843582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917328, 29.120363, 42.914646>,  <32.996262, 29.494183, 43.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917328, 29.120363, 42.914646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413387, -0.194549, 0.889529,
		-0.888915, 0.297939, -0.347939,
		-0.197334, -0.934550, -0.296101,
		32.858128, 28.839998, 42.825817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206467, 29.312157, 43.060459>,  <32.996262, 29.494183, 43.033085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206467, 29.312157, 43.060459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413830, 28.971279, 43.088799>,  <32.538250, 28.766752, 43.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413830, 28.971279, 43.088799>,  <32.206467, 29.312157, 43.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413830, 28.971279, 43.088799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504419, -0.237843, 0.830056,
		-0.690516, -0.466047, -0.553162,
		0.518410, -0.852192, 0.070848,
		32.569351, 28.715622, 43.110054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805410, 28.828903, 43.290581>,  <32.206467, 29.312157, 43.060459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805410, 28.828903, 43.290581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160709, 28.657953, 43.357956>,  <32.373890, 28.555384, 43.398380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160709, 28.657953, 43.357956>,  <31.805410, 28.828903, 43.290581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160709, 28.657953, 43.357956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308152, -0.282416, 0.908451,
		-0.340681, -0.858831, -0.382552,
		0.888245, -0.427376, 0.168437,
		32.427181, 28.529741, 43.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678791, 28.347204, 43.815247>,  <31.805410, 28.828903, 43.290581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678791, 28.347204, 43.815247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077133, 28.374790, 43.838959>,  <32.316139, 28.391342, 43.853188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077133, 28.374790, 43.838959>,  <31.678791, 28.347204, 43.815247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077133, 28.374790, 43.838959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048998, -0.142278, 0.988613,
		0.076612, -0.987421, -0.138309,
		0.995856, 0.068963, 0.059282,
		32.375889, 28.395479, 43.856743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832169, 27.839048, 44.321846>,  <31.678791, 28.347204, 43.815247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832169, 27.839048, 44.321846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188629, 28.018604, 44.295483>,  <32.402504, 28.126339, 44.279663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188629, 28.018604, 44.295483>,  <31.832169, 27.839048, 44.321846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188629, 28.018604, 44.295483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079866, -0.012209, 0.996731,
		0.446619, -0.893503, -0.046731,
		0.891153, 0.448892, -0.065908,
		32.455975, 28.153271, 44.275711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399597, 27.391392, 44.488491>,  <31.832169, 27.839048, 44.321846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399597, 27.391392, 44.488491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496052, 27.774681, 44.550022>,  <32.553925, 28.004654, 44.586941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496052, 27.774681, 44.550022>,  <32.399597, 27.391392, 44.488491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496052, 27.774681, 44.550022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119807, -0.186689, 0.975086,
		0.963068, -0.216699, -0.159820,
		0.241137, 0.958222, 0.153832,
		32.568394, 28.062147, 44.596172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931171, 27.365700, 45.094830>,  <32.399597, 27.391392, 44.488491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931171, 27.365700, 45.094830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820946, 27.748672, 45.060455>,  <32.754810, 27.978456, 45.039829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820946, 27.748672, 45.060455>,  <32.931171, 27.365700, 45.094830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820946, 27.748672, 45.060455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260858, 0.160522, 0.951938,
		0.925211, 0.239907, -0.293988,
		-0.275568, 0.957433, -0.085935,
		32.738274, 28.035902, 45.034676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532753, 27.810383, 45.290092>,  <32.931171, 27.365700, 45.094830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532753, 27.810383, 45.290092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198441, 28.018890, 45.359085>,  <32.997852, 28.143995, 45.400482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198441, 28.018890, 45.359085>,  <33.532753, 27.810383, 45.290092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198441, 28.018890, 45.359085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180583, -0.035701, 0.982911,
		0.518521, 0.852644, -0.064295,
		-0.835778, 0.521271, 0.172485,
		32.947708, 28.175272, 45.410831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696224, 28.425699, 45.779297>,  <33.532753, 27.810383, 45.290092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696224, 28.425699, 45.779297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309456, 28.327627, 45.807465>,  <33.077396, 28.268784, 45.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309456, 28.327627, 45.807465>,  <33.696224, 28.425699, 45.779297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309456, 28.327627, 45.807465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109207, -0.148379, 0.982882,
		-0.230534, 0.958056, 0.170246,
		-0.966917, -0.245179, 0.070420,
		33.019382, 28.254074, 45.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562111, 28.698862, 46.350502>,  <33.696224, 28.425699, 45.779297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562111, 28.698862, 46.350502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250172, 28.451195, 46.313709>,  <33.063007, 28.302593, 46.291634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250172, 28.451195, 46.313709>,  <33.562111, 28.698862, 46.350502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250172, 28.451195, 46.313709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045839, -0.203043, 0.978096,
		-0.624285, 0.758552, 0.186725,
		-0.779851, -0.619170, -0.091985,
		33.016216, 28.265444, 46.286114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570576, 29.438606, 46.584877>,  <33.562111, 28.698862, 46.350502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570576, 29.438606, 46.584877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902363, 29.563068, 46.770416>,  <34.101437, 29.637747, 46.881741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902363, 29.563068, 46.770416>,  <33.570576, 29.438606, 46.584877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902363, 29.563068, 46.770416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449660, 0.120628, -0.885017,
		-0.331333, 0.942672, -0.039857,
		0.829472, 0.311158, 0.463850,
		34.151203, 29.656416, 46.909573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660019, 30.077374, 46.333351>,  <33.570576, 29.438606, 46.584877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660019, 30.077374, 46.333351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028961, 29.971439, 46.445862>,  <34.250328, 29.907879, 46.513371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028961, 29.971439, 46.445862>,  <33.660019, 30.077374, 46.333351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028961, 29.971439, 46.445862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325761, 0.141736, -0.934768,
		0.207694, 0.953820, 0.217005,
		0.922357, -0.264838, 0.281280,
		34.305668, 29.891989, 46.530247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097855, 30.563040, 46.057171>,  <33.660019, 30.077374, 46.333351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097855, 30.563040, 46.057171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360149, 30.275597, 46.149792>,  <34.517525, 30.103130, 46.205364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360149, 30.275597, 46.149792>,  <34.097855, 30.563040, 46.057171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360149, 30.275597, 46.149792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583921, 0.288302, -0.758893,
		0.478590, 0.632839, 0.608659,
		0.655735, -0.718607, 0.231550,
		34.556870, 30.060015, 46.219257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681061, 30.887243, 46.198692>,  <34.097855, 30.563040, 46.057171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681061, 30.887243, 46.198692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808735, 30.522917, 46.093979>,  <34.885338, 30.304321, 46.031151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808735, 30.522917, 46.093979>,  <34.681061, 30.887243, 46.198692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808735, 30.522917, 46.093979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486051, 0.394470, -0.779839,
		0.813559, 0.121667, 0.568611,
		0.319181, -0.910819, -0.261788,
		34.904488, 30.249672, 46.015442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339539, 31.045702, 45.929466>,  <34.681061, 30.887243, 46.198692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339539, 31.045702, 45.929466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251003, 30.679178, 45.795967>,  <35.197884, 30.459265, 45.715866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251003, 30.679178, 45.795967>,  <35.339539, 31.045702, 45.929466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251003, 30.679178, 45.795967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663761, 0.109178, -0.739933,
		0.714445, -0.385304, 0.584045,
		-0.221334, -0.916309, -0.333751,
		35.184605, 30.404285, 45.695843>
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
