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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<49.022442, 42.268047, 46.973183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.781975, 42.561737, 47.099365>,  <48.637695, 42.737949, 47.175076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.781975, 42.561737, 47.099365>,  <49.022442, 42.268047, 46.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.781975, 42.561737, 47.099365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327484, -0.586442, 0.740838,
		0.728937, 0.342062, 0.592996,
		-0.601170, 0.734221, 0.315459,
		48.601624, 42.782001, 47.194004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.159443, 42.560371, 47.726177>,  <49.022442, 42.268047, 46.973183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.159443, 42.560371, 47.726177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.774887, 42.644569, 47.655277>,  <48.544151, 42.695087, 47.612740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.774887, 42.644569, 47.655277>,  <49.159443, 42.560371, 47.726177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.774887, 42.644569, 47.655277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269489, -0.589870, 0.761203,
		0.055677, 0.779581, 0.623822,
		-0.961393, 0.210494, -0.177246,
		48.486469, 42.707718, 47.602104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.921280, 42.838943, 48.281670>,  <49.159443, 42.560371, 47.726177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.921280, 42.838943, 48.281670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570023, 42.759079, 48.107769>,  <48.359268, 42.711159, 48.003429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.570023, 42.759079, 48.107769>,  <48.921280, 42.838943, 48.281670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.570023, 42.759079, 48.107769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309362, -0.456184, 0.834381,
		-0.364920, 0.867197, 0.338825,
		-0.878139, -0.199663, -0.434748,
		48.306580, 42.699181, 47.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.341061, 43.150867, 48.722816>,  <48.921280, 42.838943, 48.281670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.341061, 43.150867, 48.722816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.197258, 42.870468, 48.476448>,  <48.110977, 42.702229, 48.328625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.197258, 42.870468, 48.476448>,  <48.341061, 43.150867, 48.722816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.197258, 42.870468, 48.476448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589119, -0.341380, 0.732392,
		-0.723668, 0.626150, -0.290243,
		-0.359504, -0.700996, -0.615923,
		48.089405, 42.660168, 48.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.742458, 43.142620, 49.051781>,  <48.341061, 43.150867, 48.722816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.742458, 43.142620, 49.051781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775909, 42.819267, 48.818703>,  <47.795979, 42.625256, 48.678856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775909, 42.819267, 48.818703>,  <47.742458, 43.142620, 49.051781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775909, 42.819267, 48.818703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622445, -0.499010, 0.602952,
		-0.778183, 0.312272, -0.544902,
		0.083626, -0.808378, -0.582693,
		47.800999, 42.576756, 48.643894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175285, 43.122669, 48.835537>,  <47.742458, 43.142620, 49.051781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175285, 43.122669, 48.835537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331650, 42.754501, 48.836815>,  <47.425468, 42.533600, 48.837582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331650, 42.754501, 48.836815>,  <47.175285, 43.122669, 48.835537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331650, 42.754501, 48.836815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714350, -0.301193, 0.631654,
		-0.580426, -0.249204, -0.775244,
		0.390908, -0.920424, 0.003199,
		47.448921, 42.478374, 48.837776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704517, 42.574051, 48.781639>,  <47.175285, 43.122669, 48.835537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704517, 42.574051, 48.781639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995865, 42.351982, 48.942272>,  <47.170673, 42.218742, 49.038654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.995865, 42.351982, 48.942272>,  <46.704517, 42.574051, 48.781639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995865, 42.351982, 48.942272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684429, -0.561897, 0.464574,
		-0.032267, -0.613237, -0.789239,
		0.728365, -0.555169, 0.401587,
		47.214375, 42.185432, 49.062748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.453693, 41.854267, 48.782433>,  <46.704517, 42.574051, 48.781639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.453693, 41.854267, 48.782433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764565, 41.880493, 49.032772>,  <46.951088, 41.896229, 49.182976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764565, 41.880493, 49.032772>,  <46.453693, 41.854267, 48.782433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764565, 41.880493, 49.032772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585897, -0.287471, 0.757684,
		0.229595, -0.955542, -0.185000,
		0.777181, 0.065570, 0.625851,
		46.997719, 41.900166, 49.220528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235809, 41.386269, 49.233303>,  <46.453693, 41.854267, 48.782433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235809, 41.386269, 49.233303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545212, 41.550499, 49.426430>,  <46.730854, 41.649036, 49.542305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.545212, 41.550499, 49.426430>,  <46.235809, 41.386269, 49.233303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545212, 41.550499, 49.426430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451119, -0.178416, 0.874448,
		0.445173, -0.894199, 0.047214,
		0.773506, 0.410580, 0.482816,
		46.777264, 41.673672, 49.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.510544, 40.953087, 49.787434>,  <46.235809, 41.386269, 49.233303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.510544, 40.953087, 49.787434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570854, 41.334930, 49.890182>,  <46.607040, 41.564037, 49.951832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570854, 41.334930, 49.890182>,  <46.510544, 40.953087, 49.787434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570854, 41.334930, 49.890182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423275, -0.172479, 0.889432,
		0.893368, -0.242827, 0.378059,
		0.150771, 0.954613, 0.256870,
		46.616085, 41.621315, 49.967243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650967, 40.911011, 50.450455>,  <46.510544, 40.953087, 49.787434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650967, 40.911011, 50.450455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555000, 41.297318, 50.410992>,  <46.497421, 41.529102, 50.387314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.555000, 41.297318, 50.410992>,  <46.650967, 40.911011, 50.450455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.555000, 41.297318, 50.410992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426637, -0.013600, 0.904321,
		0.872022, 0.259051, 0.415296,
		-0.239913, 0.965768, -0.098661,
		46.483028, 41.587048, 50.381393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646008, 41.148197, 51.134171>,  <46.650967, 40.911011, 50.450455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646008, 41.148197, 51.134171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442146, 41.434662, 50.943439>,  <46.319828, 41.606541, 50.828999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442146, 41.434662, 50.943439>,  <46.646008, 41.148197, 51.134171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442146, 41.434662, 50.943439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616206, 0.082946, 0.783205,
		0.600449, 0.692992, 0.399026,
		-0.509657, 0.716157, -0.476831,
		46.289249, 41.649509, 50.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766636, 41.644985, 51.543823>,  <46.646008, 41.148197, 51.134171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766636, 41.644985, 51.543823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431221, 41.726837, 51.341843>,  <46.229973, 41.775948, 51.220654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.431221, 41.726837, 51.341843>,  <46.766636, 41.644985, 51.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.431221, 41.726837, 51.341843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479655, 0.162328, 0.862312,
		0.258422, 0.965286, -0.037967,
		-0.838540, 0.204629, -0.504953,
		46.179661, 41.788227, 51.190357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530258, 42.236912, 51.891460>,  <46.766636, 41.644985, 51.543823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530258, 42.236912, 51.891460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210670, 42.101730, 51.692490>,  <46.018917, 42.020622, 51.573105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.210670, 42.101730, 51.692490>,  <46.530258, 42.236912, 51.891460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210670, 42.101730, 51.692490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573747, 0.180550, 0.798884,
		-0.180172, 0.923684, -0.338152,
		-0.798969, -0.337950, -0.497431,
		45.970978, 42.000347, 51.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055241, 42.704800, 52.024330>,  <46.530258, 42.236912, 51.891460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055241, 42.704800, 52.024330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862625, 42.365036, 51.937962>,  <45.747055, 42.161179, 51.886143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.862625, 42.365036, 51.937962>,  <46.055241, 42.704800, 52.024330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862625, 42.365036, 51.937962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498291, 0.062670, 0.864742,
		-0.720990, 0.523996, -0.453432,
		-0.481538, -0.849412, -0.215918,
		45.718163, 42.110214, 51.873188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295441, 42.763557, 52.232533>,  <46.055241, 42.704800, 52.024330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295441, 42.763557, 52.232533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394646, 42.376175, 52.222923>,  <45.454166, 42.143745, 52.217159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.394646, 42.376175, 52.222923>,  <45.295441, 42.763557, 52.232533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394646, 42.376175, 52.222923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417316, -0.129179, 0.899533,
		-0.874265, -0.213067, -0.436191,
		0.248008, -0.968460, -0.024020,
		45.469048, 42.085636, 52.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728035, 42.461285, 52.547977>,  <45.295441, 42.763557, 52.232533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728035, 42.461285, 52.547977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018723, 42.187431, 52.570442>,  <45.193134, 42.023121, 52.583920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.018723, 42.187431, 52.570442>,  <44.728035, 42.461285, 52.547977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018723, 42.187431, 52.570442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307509, -0.251125, 0.917810,
		-0.614260, -0.684261, -0.393029,
		0.726720, -0.684634, 0.056160,
		45.236740, 41.982040, 52.587292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.418167, 41.917320, 52.892872>,  <44.728035, 42.461285, 52.547977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.418167, 41.917320, 52.892872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810814, 41.860443, 52.943794>,  <45.046402, 41.826317, 52.974350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810814, 41.860443, 52.943794>,  <44.418167, 41.917320, 52.892872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810814, 41.860443, 52.943794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153601, -0.192661, 0.969169,
		-0.113277, -0.970909, -0.210960,
		0.981619, -0.142188, 0.127308,
		45.105301, 41.817787, 52.981987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381393, 41.283768, 53.203991>,  <44.418167, 41.917320, 52.892872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381393, 41.283768, 53.203991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730095, 41.460014, 53.289688>,  <44.939316, 41.565762, 53.341106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730095, 41.460014, 53.289688>,  <44.381393, 41.283768, 53.203991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730095, 41.460014, 53.289688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228270, -0.021649, 0.973357,
		0.433521, -0.897432, 0.081708,
		0.871753, 0.440622, 0.214242,
		44.991619, 41.592201, 53.353962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641090, 40.828785, 53.671345>,  <44.381393, 41.283768, 53.203991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641090, 40.828785, 53.671345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811661, 41.189346, 53.701374>,  <44.914001, 41.405682, 53.719391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811661, 41.189346, 53.701374>,  <44.641090, 40.828785, 53.671345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811661, 41.189346, 53.701374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211926, 0.018874, 0.977104,
		0.879346, -0.432571, 0.199079,
		0.426424, 0.901402, 0.075076,
		44.939587, 41.459766, 53.723896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116917, 40.719692, 54.211926>,  <44.641090, 40.828785, 53.671345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116917, 40.719692, 54.211926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075241, 41.113708, 54.157021>,  <45.050236, 41.350117, 54.124077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.075241, 41.113708, 54.157021>,  <45.116917, 40.719692, 54.211926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075241, 41.113708, 54.157021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373645, 0.089133, 0.923279,
		0.921702, 0.147481, 0.358769,
		-0.104188, 0.985040, -0.137260,
		45.043983, 41.409222, 54.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406132, 40.942284, 54.724876>,  <45.116917, 40.719692, 54.211926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406132, 40.942284, 54.724876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198952, 41.271255, 54.630783>,  <45.074646, 41.468639, 54.574326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.198952, 41.271255, 54.630783>,  <45.406132, 40.942284, 54.724876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.198952, 41.271255, 54.630783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180381, 0.163805, 0.969861,
		0.836179, 0.544768, 0.063509,
		-0.517946, 0.822433, -0.235236,
		45.043568, 41.517986, 54.560211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495804, 41.356594, 55.272511>,  <45.406132, 40.942284, 54.724876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495804, 41.356594, 55.272511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168022, 41.515099, 55.106876>,  <44.971352, 41.610203, 55.007496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168022, 41.515099, 55.106876>,  <45.495804, 41.356594, 55.272511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168022, 41.515099, 55.106876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308773, 0.303444, 0.901433,
		0.482858, 0.866543, -0.126303,
		-0.819456, 0.396265, -0.414086,
		44.922184, 41.633980, 54.982651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461384, 41.905823, 55.696758>,  <45.495804, 41.356594, 55.272511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461384, 41.905823, 55.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106148, 41.840744, 55.524796>,  <44.893005, 41.801697, 55.421619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106148, 41.840744, 55.524796>,  <45.461384, 41.905823, 55.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106148, 41.840744, 55.524796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453570, 0.158382, 0.877034,
		-0.074601, 0.973881, -0.214453,
		-0.888093, -0.162697, -0.429908,
		44.839722, 41.791935, 55.395824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996590, 42.395538, 55.943607>,  <45.461384, 41.905823, 55.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996590, 42.395538, 55.943607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748047, 42.110703, 55.812862>,  <44.598923, 41.939800, 55.734417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.748047, 42.110703, 55.812862>,  <44.996590, 42.395538, 55.943607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748047, 42.110703, 55.812862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532453, 0.077708, 0.842885,
		-0.574813, 0.697770, -0.427441,
		-0.621356, -0.712094, -0.326862,
		44.561642, 41.897076, 55.714802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317444, 42.679485, 56.058002>,  <44.996590, 42.395538, 55.943607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317444, 42.679485, 56.058002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270370, 42.282700, 56.039436>,  <44.242126, 42.044628, 56.028297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270370, 42.282700, 56.039436>,  <44.317444, 42.679485, 56.058002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270370, 42.282700, 56.039436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614519, 0.036029, 0.788079,
		-0.780076, 0.121261, -0.613822,
		-0.117679, -0.991966, -0.046412,
		44.235065, 41.985111, 56.025513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.672482, 42.608482, 56.077168>,  <44.317444, 42.679485, 56.058002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.672482, 42.608482, 56.077168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812958, 42.249275, 56.183167>,  <43.897243, 42.033752, 56.246765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.812958, 42.249275, 56.183167>,  <43.672482, 42.608482, 56.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812958, 42.249275, 56.183167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608918, -0.004054, 0.793223,
		-0.711255, -0.439937, -0.548244,
		0.351191, -0.898020, 0.265002,
		43.918316, 41.979870, 56.262669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116283, 42.188869, 56.249672>,  <43.672482, 42.608482, 56.077168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116283, 42.188869, 56.249672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418095, 42.001839, 56.433868>,  <43.599182, 41.889622, 56.544388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418095, 42.001839, 56.433868>,  <43.116283, 42.188869, 56.249672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418095, 42.001839, 56.433868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525894, -0.011042, 0.850478,
		-0.392581, -0.883882, -0.254228,
		0.754530, -0.467579, 0.460494,
		43.644455, 41.861565, 56.572018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920650, 41.593678, 56.329235>,  <43.116283, 42.188869, 56.249672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920650, 41.593678, 56.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195503, 41.649414, 56.614456>,  <43.360413, 41.682858, 56.785587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195503, 41.649414, 56.614456>,  <42.920650, 41.593678, 56.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195503, 41.649414, 56.614456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687803, -0.191419, 0.700204,
		0.234059, -0.971567, -0.035689,
		0.687127, 0.139342, 0.713050,
		43.401642, 41.691216, 56.828373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715927, 41.205120, 56.825058>,  <42.920650, 41.593678, 56.329235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715927, 41.205120, 56.825058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977760, 41.416756, 57.041054>,  <43.134861, 41.543736, 57.170650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977760, 41.416756, 57.041054>,  <42.715927, 41.205120, 56.825058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977760, 41.416756, 57.041054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608838, -0.054480, 0.791422,
		0.448148, -0.846818, 0.286465,
		0.654584, 0.529085, 0.539990,
		43.174137, 41.575481, 57.203053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742443, 40.844391, 57.483154>,  <42.715927, 41.205120, 56.825058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742443, 40.844391, 57.483154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871246, 41.220253, 57.529388>,  <42.948528, 41.445770, 57.557129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871246, 41.220253, 57.529388>,  <42.742443, 40.844391, 57.483154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871246, 41.220253, 57.529388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690720, 0.149674, 0.707463,
		0.647471, -0.307644, 0.697235,
		0.322005, 0.939656, 0.115586,
		42.967850, 41.502151, 57.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931496, 40.875309, 58.186516>,  <42.742443, 40.844391, 57.483154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931496, 40.875309, 58.186516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874916, 41.261734, 58.100060>,  <42.840969, 41.493587, 58.048183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874916, 41.261734, 58.100060>,  <42.931496, 40.875309, 58.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874916, 41.261734, 58.100060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511435, 0.115633, 0.851507,
		0.847601, 0.230987, 0.477721,
		-0.141447, 0.966061, -0.216145,
		42.832481, 41.551552, 58.035217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947559, 41.179474, 58.938931>,  <42.931496, 40.875309, 58.186516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947559, 41.179474, 58.938931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776405, 41.446960, 58.695709>,  <42.673714, 41.607452, 58.549778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776405, 41.446960, 58.695709>,  <42.947559, 41.179474, 58.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776405, 41.446960, 58.695709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579438, 0.313356, 0.752369,
		0.693660, 0.674257, 0.253401,
		-0.427886, 0.668719, -0.608053,
		42.648041, 41.647575, 58.513294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074100, 41.903378, 59.219910>,  <42.947559, 41.179474, 58.938931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074100, 41.903378, 59.219910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748772, 41.906502, 58.987206>,  <42.553574, 41.908375, 58.847584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748772, 41.906502, 58.987206>,  <43.074100, 41.903378, 59.219910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748772, 41.906502, 58.987206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518375, 0.444294, 0.730678,
		0.264179, 0.895847, -0.357306,
		-0.813324, 0.007811, -0.581758,
		42.504776, 41.908844, 58.812679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835056, 42.614414, 59.444252>,  <43.074100, 41.903378, 59.219910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835056, 42.614414, 59.444252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540821, 42.436417, 59.239941>,  <42.364281, 42.329617, 59.117355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540821, 42.436417, 59.239941>,  <42.835056, 42.614414, 59.444252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540821, 42.436417, 59.239941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669411, 0.593150, 0.447284,
		0.103927, 0.670934, -0.734198,
		-0.735587, -0.444995, -0.510775,
		42.320145, 42.302917, 59.086708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442657, 43.118706, 59.056297>,  <42.835056, 42.614414, 59.444252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442657, 43.118706, 59.056297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197563, 42.811119, 59.129234>,  <42.050507, 42.626568, 59.172997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197563, 42.811119, 59.129234>,  <42.442657, 43.118706, 59.056297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197563, 42.811119, 59.129234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582975, 0.595582, 0.552650,
		-0.533567, 0.232329, -0.813222,
		-0.612737, -0.768964, 0.182341,
		42.013741, 42.580429, 59.183937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787571, 43.383541, 59.039394>,  <42.442657, 43.118706, 59.056297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787571, 43.383541, 59.039394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742523, 43.041954, 59.242588>,  <41.715492, 42.837002, 59.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742523, 43.041954, 59.242588>,  <41.787571, 43.383541, 59.039394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742523, 43.041954, 59.242588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576867, 0.472453, 0.666343,
		-0.809037, -0.217995, -0.545836,
		-0.112623, -0.853971, 0.507986,
		41.708736, 42.785763, 59.394985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065289, 43.355202, 59.291641>,  <41.787571, 43.383541, 59.039394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065289, 43.355202, 59.291641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226044, 43.070427, 59.521988>,  <41.322498, 42.899563, 59.660194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226044, 43.070427, 59.521988>,  <41.065289, 43.355202, 59.291641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226044, 43.070427, 59.521988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516009, 0.343446, 0.784716,
		-0.756451, -0.612524, -0.229340,
		0.401891, -0.711941, 0.575868,
		41.346611, 42.856846, 59.694748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468956, 42.925201, 59.439880>,  <41.065289, 43.355202, 59.291641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468956, 42.925201, 59.439880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773857, 42.881866, 59.695141>,  <40.956799, 42.855865, 59.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773857, 42.881866, 59.695141>,  <40.468956, 42.925201, 59.439880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773857, 42.881866, 59.695141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588173, 0.295661, 0.752753,
		-0.270230, -0.949129, 0.161645,
		0.762252, -0.108341, 0.638149,
		41.002533, 42.849365, 59.886585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182869, 42.518620, 60.068581>,  <40.468956, 42.925201, 59.439880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182869, 42.518620, 60.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513664, 42.710159, 60.186424>,  <40.712143, 42.825081, 60.257130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513664, 42.710159, 60.186424>,  <40.182869, 42.518620, 60.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513664, 42.710159, 60.186424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470189, 0.301786, 0.829365,
		0.308241, -0.824392, 0.474726,
		0.826988, 0.478855, 0.294597,
		40.761761, 42.853813, 60.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100700, 42.484268, 60.794373>,  <40.182869, 42.518620, 60.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100700, 42.484268, 60.794373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377701, 42.763870, 60.722992>,  <40.543900, 42.931629, 60.680164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377701, 42.763870, 60.722992>,  <40.100700, 42.484268, 60.794373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377701, 42.763870, 60.722992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241735, 0.457891, 0.855512,
		0.679715, -0.549302, 0.486061,
		0.692497, 0.699002, -0.178450,
		40.585449, 42.973572, 60.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348461, 42.659000, 61.563625>,  <40.100700, 42.484268, 60.794373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348461, 42.659000, 61.563625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440491, 42.966934, 61.325493>,  <40.495708, 43.151695, 61.182613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440491, 42.966934, 61.325493>,  <40.348461, 42.659000, 61.563625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440491, 42.966934, 61.325493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446227, 0.627095, 0.638462,
		0.864841, 0.118763, 0.487797,
		0.230070, 0.769836, -0.595333,
		40.509510, 43.197884, 61.146893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805340, 43.038021, 61.934944>,  <40.348461, 42.659000, 61.563625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805340, 43.038021, 61.934944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601570, 43.241341, 61.657204>,  <40.479309, 43.363335, 61.490559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601570, 43.241341, 61.657204>,  <40.805340, 43.038021, 61.934944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601570, 43.241341, 61.657204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315132, 0.640645, 0.700190,
		0.800739, 0.575503, -0.166176,
		-0.509421, 0.508302, -0.694348,
		40.448746, 43.393833, 61.448898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814018, 43.712109, 62.104790>,  <40.805340, 43.038021, 61.934944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814018, 43.712109, 62.104790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482094, 43.673409, 61.884953>,  <40.282940, 43.650188, 61.753052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482094, 43.673409, 61.884953>,  <40.814018, 43.712109, 62.104790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482094, 43.673409, 61.884953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537225, 0.404996, 0.739843,
		0.151002, 0.909185, -0.388048,
		-0.829812, -0.096752, -0.549592,
		40.233150, 43.644382, 61.720074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494682, 44.420792, 61.931141>,  <40.814018, 43.712109, 62.104790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494682, 44.420792, 61.931141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266640, 44.096024, 61.981373>,  <40.129814, 43.901165, 62.011513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266640, 44.096024, 61.981373>,  <40.494682, 44.420792, 61.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266640, 44.096024, 61.981373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579765, 0.505885, 0.638712,
		-0.582110, 0.291326, -0.759129,
		-0.570105, -0.811917, 0.125580,
		40.095608, 43.852448, 62.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172886, 44.608475, 61.303913>,  <40.494682, 44.420792, 61.931141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172886, 44.608475, 61.303913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825043, 44.779182, 61.204590>,  <39.616337, 44.881607, 61.144997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825043, 44.779182, 61.204590>,  <40.172886, 44.608475, 61.303913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825043, 44.779182, 61.204590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455846, -0.500708, 0.735864,
		0.189713, 0.753101, 0.629959,
		-0.869606, 0.426767, -0.248307,
		39.564159, 44.907211, 61.130096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831264, 44.834030, 61.971466>,  <40.172886, 44.608475, 61.303913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831264, 44.834030, 61.971466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560005, 44.794960, 61.680107>,  <39.397247, 44.771519, 61.505291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560005, 44.794960, 61.680107>,  <39.831264, 44.834030, 61.971466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560005, 44.794960, 61.680107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559218, -0.574503, 0.597680,
		-0.476848, 0.812653, 0.334978,
		-0.678152, -0.097677, -0.728401,
		39.356560, 44.765656, 61.461586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391102, 44.403027, 62.369934>,  <39.831264, 44.834030, 61.971466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391102, 44.403027, 62.369934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009747, 44.317307, 62.284966>,  <38.780933, 44.265873, 62.233986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009747, 44.317307, 62.284966>,  <39.391102, 44.403027, 62.369934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009747, 44.317307, 62.284966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021933, 0.751340, -0.659551,
		0.300940, -0.624151, -0.721020,
		-0.953391, -0.214299, -0.212418,
		38.723728, 44.253017, 62.221241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240761, 44.117420, 61.701859>,  <39.391102, 44.403027, 62.369934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240761, 44.117420, 61.701859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954384, 44.340759, 61.869514>,  <38.782558, 44.474762, 61.970108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954384, 44.340759, 61.869514>,  <39.240761, 44.117420, 61.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954384, 44.340759, 61.869514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069239, 0.540603, -0.838423,
		-0.694721, -0.629281, -0.348379,
		-0.715939, 0.558349, 0.419139,
		38.739601, 44.508263, 61.995255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691162, 44.111012, 61.158627>,  <39.240761, 44.117420, 61.701859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691162, 44.111012, 61.158627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719250, 44.435707, 61.390541>,  <38.736103, 44.630524, 61.529690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719250, 44.435707, 61.390541>,  <38.691162, 44.111012, 61.158627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719250, 44.435707, 61.390541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274706, 0.543013, -0.793519,
		-0.958961, 0.214989, -0.184861,
		0.070216, 0.811737, 0.579787,
		38.740314, 44.679230, 61.564476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364574, 44.558769, 60.733585>,  <38.691162, 44.111012, 61.158627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364574, 44.558769, 60.733585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618362, 44.738098, 60.985443>,  <38.770634, 44.845695, 61.136559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618362, 44.738098, 60.985443>,  <38.364574, 44.558769, 60.733585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618362, 44.738098, 60.985443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438912, 0.461561, -0.770920,
		-0.636242, 0.765484, 0.096071,
		0.634470, 0.448325, 0.629645,
		38.808704, 44.872597, 61.174335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379295, 45.340054, 60.770844>,  <38.364574, 44.558769, 60.733585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379295, 45.340054, 60.770844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747795, 45.229431, 60.880249>,  <38.968895, 45.163055, 60.945892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747795, 45.229431, 60.880249>,  <38.379295, 45.340054, 60.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747795, 45.229431, 60.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376726, 0.459378, -0.804393,
		0.096814, 0.844089, 0.527390,
		0.921251, -0.276558, 0.273517,
		39.024170, 45.146465, 60.962303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837330, 45.948288, 60.855053>,  <38.379295, 45.340054, 60.770844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837330, 45.948288, 60.855053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059769, 45.625076, 60.777237>,  <39.193233, 45.431149, 60.730545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059769, 45.625076, 60.777237>,  <38.837330, 45.948288, 60.855053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059769, 45.625076, 60.777237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433740, 0.481820, -0.761393,
		0.708961, 0.339027, 0.618413,
		0.556097, -0.808028, -0.194542,
		39.226597, 45.382668, 60.718876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468227, 46.248741, 60.763081>,  <38.837330, 45.948288, 60.855053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468227, 46.248741, 60.763081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515350, 45.890060, 60.592415>,  <39.543625, 45.674850, 60.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515350, 45.890060, 60.592415>,  <39.468227, 46.248741, 60.763081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515350, 45.890060, 60.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514765, 0.422566, -0.745960,
		0.849199, -0.131755, 0.511372,
		0.117804, -0.896705, -0.426665,
		39.550694, 45.621048, 60.464417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229912, 46.126160, 60.632988>,  <39.468227, 46.248741, 60.763081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229912, 46.126160, 60.632988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033726, 45.879105, 60.387070>,  <39.916016, 45.730873, 60.239521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033726, 45.879105, 60.387070>,  <40.229912, 46.126160, 60.632988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033726, 45.879105, 60.387070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671597, 0.181674, -0.718298,
		0.555339, -0.765193, 0.325698,
		-0.490466, -0.617636, -0.614792,
		39.886585, 45.693813, 60.202633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770885, 45.681072, 60.306435>,  <40.229912, 46.126160, 60.632988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770885, 45.681072, 60.306435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447777, 45.658066, 60.071762>,  <40.253910, 45.644260, 59.930958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447777, 45.658066, 60.071762>,  <40.770885, 45.681072, 60.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447777, 45.658066, 60.071762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544237, 0.309648, -0.779694,
		0.226511, -0.949110, -0.218822,
		-0.807774, -0.057518, -0.586680,
		40.205444, 45.640812, 59.895760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049488, 45.531071, 59.709648>,  <40.770885, 45.681072, 60.306435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049488, 45.531071, 59.709648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681229, 45.603462, 59.571281>,  <40.460274, 45.646896, 59.488262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681229, 45.603462, 59.571281>,  <41.049488, 45.531071, 59.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681229, 45.603462, 59.571281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378328, 0.194970, -0.904906,
		-0.096324, -0.963968, -0.247967,
		-0.920646, 0.180977, -0.345916,
		40.405033, 45.657757, 59.467506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976486, 45.089920, 59.212975>,  <41.049488, 45.531071, 59.709648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976486, 45.089920, 59.212975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723831, 45.394516, 59.154785>,  <40.572239, 45.577274, 59.119873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723831, 45.394516, 59.154785>,  <40.976486, 45.089920, 59.212975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723831, 45.394516, 59.154785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373326, 0.134305, -0.917927,
		-0.679458, -0.634105, -0.369118,
		-0.631637, 0.761494, -0.145473,
		40.534340, 45.622963, 59.111145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626724, 44.856750, 58.703144>,  <40.976486, 45.089920, 59.212975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626724, 44.856750, 58.703144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606472, 45.256226, 58.706390>,  <40.594322, 45.495911, 58.708336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606472, 45.256226, 58.706390>,  <40.626724, 44.856750, 58.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606472, 45.256226, 58.706390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224613, 0.019300, -0.974257,
		-0.973132, -0.047502, -0.225295,
		-0.050627, 0.998685, 0.008112,
		40.591282, 45.555832, 58.708824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377163, 44.965900, 58.067257>,  <40.626724, 44.856750, 58.703144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377163, 44.965900, 58.067257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464294, 45.348465, 58.145050>,  <40.516575, 45.578003, 58.191727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464294, 45.348465, 58.145050>,  <40.377163, 44.965900, 58.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464294, 45.348465, 58.145050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301334, 0.123624, -0.945471,
		-0.928304, 0.264556, -0.261271,
		0.217830, 0.956414, 0.194480,
		40.529644, 45.635387, 58.203396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217140, 45.464348, 57.463711>,  <40.377163, 44.965900, 58.067257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217140, 45.464348, 57.463711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493912, 45.667885, 57.668583>,  <40.659973, 45.790005, 57.791504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493912, 45.667885, 57.668583>,  <40.217140, 45.464348, 57.463711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493912, 45.667885, 57.668583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562481, 0.064805, -0.824267,
		-0.452610, 0.858420, -0.241371,
		0.691925, 0.508838, 0.512176,
		40.701488, 45.820538, 57.822235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425362, 45.954082, 56.960255>,  <40.217140, 45.464348, 57.463711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425362, 45.954082, 56.960255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743134, 45.973206, 57.202446>,  <40.933796, 45.984680, 57.347759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743134, 45.973206, 57.202446>,  <40.425362, 45.954082, 56.960255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743134, 45.973206, 57.202446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598832, 0.104839, -0.793983,
		-0.101433, 0.993340, 0.054660,
		0.794425, 0.047804, 0.605478,
		40.981461, 45.987545, 57.384090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859406, 46.551075, 56.902882>,  <40.425362, 45.954082, 56.960255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859406, 46.551075, 56.902882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121639, 46.287354, 57.050140>,  <41.278980, 46.129120, 57.138496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121639, 46.287354, 57.050140>,  <40.859406, 46.551075, 56.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121639, 46.287354, 57.050140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531583, 0.056694, -0.845107,
		0.536309, 0.749738, 0.387641,
		0.655585, -0.659302, 0.368143,
		41.318314, 46.089561, 57.160583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474476, 46.856091, 56.733150>,  <40.859406, 46.551075, 56.902882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474476, 46.856091, 56.733150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590874, 46.492325, 56.851997>,  <41.660713, 46.274063, 56.923306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590874, 46.492325, 56.851997>,  <41.474476, 46.856091, 56.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590874, 46.492325, 56.851997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477830, -0.130900, -0.868645,
		0.828854, 0.394745, 0.396456,
		0.290997, -0.909418, 0.297119,
		41.678173, 46.219498, 56.941132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155094, 46.797253, 56.423496>,  <41.474476, 46.856091, 56.733150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155094, 46.797253, 56.423496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117626, 46.417572, 56.543663>,  <42.095146, 46.189766, 56.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117626, 46.417572, 56.543663>,  <42.155094, 46.797253, 56.423496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117626, 46.417572, 56.543663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716581, -0.273759, -0.641536,
		0.691186, 0.155179, 0.705820,
		-0.093672, -0.949198, 0.300416,
		42.089523, 46.132812, 56.633789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809807, 46.508743, 56.577816>,  <42.155094, 46.797253, 56.423496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809807, 46.508743, 56.577816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558502, 46.219452, 56.463112>,  <42.407719, 46.045879, 56.394291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558502, 46.219452, 56.463112>,  <42.809807, 46.508743, 56.577816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558502, 46.219452, 56.463112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615845, -0.237070, -0.751354,
		0.475414, -0.648649, 0.594337,
		-0.628264, -0.723224, -0.286761,
		42.370022, 46.002483, 56.377083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196461, 45.949272, 56.352325>,  <42.809807, 46.508743, 56.577816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196461, 45.949272, 56.352325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833923, 45.886749, 56.195301>,  <42.616402, 45.849236, 56.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833923, 45.886749, 56.195301>,  <43.196461, 45.949272, 56.352325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833923, 45.886749, 56.195301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422365, -0.308589, -0.852280,
		0.012081, -0.938264, 0.345709,
		-0.906345, -0.156312, -0.392562,
		42.562019, 45.839855, 56.077534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291107, 45.364929, 56.021591>,  <43.196461, 45.949272, 56.352325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291107, 45.364929, 56.021591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981232, 45.558167, 55.858383>,  <42.795307, 45.674110, 55.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981232, 45.558167, 55.858383>,  <43.291107, 45.364929, 56.021591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981232, 45.558167, 55.858383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398824, -0.127454, -0.908127,
		-0.490714, -0.866242, -0.093932,
		-0.774686, 0.483093, -0.408022,
		42.748825, 45.703094, 55.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041649, 44.978291, 55.501507>,  <43.291107, 45.364929, 56.021591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041649, 44.978291, 55.501507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945366, 45.354012, 55.403721>,  <42.887596, 45.579445, 55.345051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945366, 45.354012, 55.403721>,  <43.041649, 44.978291, 55.501507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945366, 45.354012, 55.403721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395638, -0.135040, -0.908424,
		-0.886301, -0.315386, -0.339120,
		-0.240709, 0.939306, -0.244465,
		42.873154, 45.635803, 55.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854332, 44.932053, 54.727631>,  <43.041649, 44.978291, 55.501507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854332, 44.932053, 54.727631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935066, 45.310318, 54.829597>,  <42.983509, 45.537277, 54.890778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935066, 45.310318, 54.829597>,  <42.854332, 44.932053, 54.727631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935066, 45.310318, 54.829597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518824, 0.117522, -0.846764,
		-0.830712, 0.303168, -0.466912,
		0.201839, 0.945663, 0.254918,
		42.995617, 45.594017, 54.906075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733482, 45.305313, 54.141964>,  <42.854332, 44.932053, 54.727631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733482, 45.305313, 54.141964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970882, 45.550163, 54.350983>,  <43.113323, 45.697075, 54.476395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.970882, 45.550163, 54.350983>,  <42.733482, 45.305313, 54.141964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970882, 45.550163, 54.350983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464539, 0.269648, -0.843501,
		-0.657233, 0.743363, -0.124320,
		0.593505, 0.612129, 0.522543,
		43.148933, 45.733803, 54.507744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857334, 45.960049, 53.676914>,  <42.733482, 45.305313, 54.141964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857334, 45.960049, 53.676914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154457, 45.930466, 53.943077>,  <43.332733, 45.912716, 54.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154457, 45.930466, 53.943077>,  <42.857334, 45.960049, 53.676914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154457, 45.930466, 53.943077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645238, 0.344232, -0.682035,
		-0.178612, 0.935967, 0.303419,
		0.742809, -0.073958, 0.665406,
		43.377300, 45.908279, 54.142700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277370, 46.571976, 53.630482>,  <42.857334, 45.960049, 53.676914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277370, 46.571976, 53.630482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519562, 46.298225, 53.792973>,  <43.664879, 46.133976, 53.890469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.519562, 46.298225, 53.792973>,  <43.277370, 46.571976, 53.630482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519562, 46.298225, 53.792973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715623, 0.244824, -0.654175,
		0.348245, 0.686800, 0.637991,
		0.605482, -0.684374, 0.406231,
		43.701206, 46.092915, 53.914841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917416, 46.944153, 53.683338>,  <43.277370, 46.571976, 53.630482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917416, 46.944153, 53.683338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011116, 46.556549, 53.714699>,  <44.067337, 46.323986, 53.733513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011116, 46.556549, 53.714699>,  <43.917416, 46.944153, 53.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011116, 46.556549, 53.714699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826773, 0.156137, -0.540432,
		0.511444, 0.191413, 0.837727,
		0.234246, -0.969011, 0.078400,
		44.081390, 46.265846, 53.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661507, 47.015171, 53.614201>,  <43.917416, 46.944153, 53.683338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661507, 47.015171, 53.614201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564209, 46.633148, 53.546440>,  <44.505829, 46.403934, 53.505783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564209, 46.633148, 53.546440>,  <44.661507, 47.015171, 53.614201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564209, 46.633148, 53.546440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854080, -0.128112, -0.504117,
		0.459758, -0.267309, 0.846858,
		-0.243248, -0.955057, -0.169403,
		44.491234, 46.346630, 53.495621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334534, 46.641239, 53.492561>,  <44.661507, 47.015171, 53.614201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334534, 46.641239, 53.492561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052330, 46.398178, 53.346680>,  <44.883007, 46.252342, 53.259151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052330, 46.398178, 53.346680>,  <45.334534, 46.641239, 53.492561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052330, 46.398178, 53.346680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685405, -0.454175, -0.569162,
		0.180215, -0.651520, 0.736916,
		-0.705509, -0.607657, -0.364706,
		44.840679, 46.215881, 53.237267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634567, 45.978592, 53.505337>,  <45.334534, 46.641239, 53.492561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634567, 45.978592, 53.505337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351028, 45.990105, 53.223427>,  <45.180904, 45.997013, 53.054279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.351028, 45.990105, 53.223427>,  <45.634567, 45.978592, 53.505337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.351028, 45.990105, 53.223427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657679, -0.334168, -0.675122,
		-0.254947, -0.942074, 0.217943,
		-0.708845, 0.028784, -0.704777,
		45.138374, 45.998741, 53.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742798, 45.347881, 53.070953>,  <45.634567, 45.978592, 53.505337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742798, 45.347881, 53.070953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544617, 45.623810, 52.859798>,  <45.425709, 45.789368, 52.733105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544617, 45.623810, 52.859798>,  <45.742798, 45.347881, 53.070953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544617, 45.623810, 52.859798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561490, -0.209351, -0.800563,
		-0.662762, -0.693047, -0.283605,
		-0.495455, 0.689825, -0.527889,
		45.395981, 45.830757, 52.701431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812145, 45.048187, 52.509560>,  <45.742798, 45.347881, 53.070953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812145, 45.048187, 52.509560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674767, 45.409607, 52.407070>,  <45.592339, 45.626457, 52.345577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674767, 45.409607, 52.407070>,  <45.812145, 45.048187, 52.509560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674767, 45.409607, 52.407070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521333, -0.043512, -0.852244,
		-0.781189, -0.426277, -0.456104,
		-0.343446, 0.903546, -0.256223,
		45.571732, 45.680672, 52.330204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589291, 44.997051, 51.871525>,  <45.812145, 45.048187, 52.509560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589291, 44.997051, 51.871525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618752, 45.394829, 51.901596>,  <45.636429, 45.633495, 51.919640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.618752, 45.394829, 51.901596>,  <45.589291, 44.997051, 51.871525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.618752, 45.394829, 51.901596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334134, 0.046419, -0.941382,
		-0.939643, 0.094457, -0.328859,
		0.073654, 0.994446, 0.075179,
		45.640846, 45.693161, 51.924149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156883, 45.263680, 51.350121>,  <45.589291, 44.997051, 51.871525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156883, 45.263680, 51.350121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432320, 45.544395, 51.423153>,  <45.597584, 45.712826, 51.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432320, 45.544395, 51.423153>,  <45.156883, 45.263680, 51.350121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432320, 45.544395, 51.423153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308355, -0.055492, -0.949651,
		-0.656321, 0.710223, -0.254611,
		0.688593, 0.701787, 0.182581,
		45.638897, 45.754932, 51.477928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120903, 45.764854, 50.795864>,  <45.156883, 45.263680, 51.350121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120903, 45.764854, 50.795864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485954, 45.800430, 50.955463>,  <45.704983, 45.821777, 51.051224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485954, 45.800430, 50.955463>,  <45.120903, 45.764854, 50.795864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485954, 45.800430, 50.955463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407839, -0.131384, -0.903552,
		-0.027939, 0.987334, -0.156178,
		0.912626, 0.088940, 0.399002,
		45.759743, 45.827114, 51.075165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386139, 46.113987, 50.269821>,  <45.120903, 45.764854, 50.795864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386139, 46.113987, 50.269821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699722, 46.004158, 50.492542>,  <45.887871, 45.938263, 50.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699722, 46.004158, 50.492542>,  <45.386139, 46.113987, 50.269821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699722, 46.004158, 50.492542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559573, -0.075922, -0.825296,
		0.268874, 0.958566, 0.094122,
		0.783955, -0.274569, 0.556801,
		45.934910, 45.921787, 50.659584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.916248, 46.625362, 50.217945>,  <45.386139, 46.113987, 50.269821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.916248, 46.625362, 50.217945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064873, 46.262634, 50.297569>,  <46.154049, 46.044998, 50.345345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.064873, 46.262634, 50.297569>,  <45.916248, 46.625362, 50.217945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064873, 46.262634, 50.297569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591479, 0.065944, -0.803620,
		0.715608, 0.416337, 0.560865,
		0.371563, -0.906816, 0.199064,
		46.176342, 45.990589, 50.357288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.519096, 46.608704, 49.819252>,  <45.916248, 46.625362, 50.217945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.519096, 46.608704, 49.819252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514374, 46.228783, 49.944302>,  <46.511539, 46.000828, 50.019329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514374, 46.228783, 49.944302>,  <46.519096, 46.608704, 49.819252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514374, 46.228783, 49.944302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552814, -0.266717, -0.789467,
		0.833221, 0.163503, 0.528214,
		-0.011803, -0.949805, 0.312621,
		46.510834, 45.943840, 50.038090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317978, 46.354679, 50.037334>,  <46.519096, 46.608704, 49.819252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317978, 46.354679, 50.037334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088448, 46.044418, 49.932198>,  <46.950729, 45.858261, 49.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.088448, 46.044418, 49.932198>,  <47.317978, 46.354679, 50.037334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.088448, 46.044418, 49.932198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693359, -0.289309, -0.659965,
		0.435863, -0.560947, 0.703820,
		-0.573827, -0.775654, -0.262838,
		46.916298, 45.811722, 49.853348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.794289, 45.840034, 49.964005>,  <47.317978, 46.354679, 50.037334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.794289, 45.840034, 49.964005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465439, 45.725456, 49.767204>,  <47.268131, 45.656708, 49.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.465439, 45.725456, 49.767204>,  <47.794289, 45.840034, 49.964005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465439, 45.725456, 49.767204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566443, -0.324868, -0.757366,
		0.057109, -0.901337, 0.429337,
		-0.822120, -0.286447, -0.492003,
		47.218803, 45.639523, 49.619602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.875725, 45.128574, 49.725288>,  <47.794289, 45.840034, 49.964005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.875725, 45.128574, 49.725288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579018, 45.274498, 49.500183>,  <47.400993, 45.362053, 49.365120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579018, 45.274498, 49.500183>,  <47.875725, 45.128574, 49.725288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579018, 45.274498, 49.500183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389037, -0.449455, -0.804140,
		-0.546289, -0.815419, 0.191468,
		-0.741767, 0.364805, -0.562760,
		47.356487, 45.383938, 49.331356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.666656, 44.542721, 49.355999>,  <47.875725, 45.128574, 49.725288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.666656, 44.542721, 49.355999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547874, 44.866943, 49.154083>,  <47.476604, 45.061478, 49.032932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547874, 44.866943, 49.154083>,  <47.666656, 44.542721, 49.355999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547874, 44.866943, 49.154083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132048, -0.488703, -0.862400,
		-0.945718, -0.322749, 0.038089,
		-0.296953, 0.810557, -0.504793,
		47.458790, 45.110111, 49.002644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.305637, 44.296238, 48.819290>,  <47.666656, 44.542721, 49.355999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.305637, 44.296238, 48.819290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407471, 44.665527, 48.704155>,  <47.468571, 44.887100, 48.635075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.407471, 44.665527, 48.704155>,  <47.305637, 44.296238, 48.819290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.407471, 44.665527, 48.704155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202274, -0.341898, -0.917710,
		-0.945659, 0.175414, -0.273785,
		0.254586, 0.923220, -0.287838,
		47.483845, 44.942493, 48.617805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936069, 44.385807, 48.109093>,  <47.305637, 44.296238, 48.819290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936069, 44.385807, 48.109093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222542, 44.661316, 48.154125>,  <47.394424, 44.826622, 48.181145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.222542, 44.661316, 48.154125>,  <46.936069, 44.385807, 48.109093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222542, 44.661316, 48.154125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458716, -0.342988, -0.819719,
		-0.525985, 0.638712, -0.561592,
		0.716184, 0.688772, 0.112581,
		47.437397, 44.867947, 48.187901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.971653, 44.758827, 47.476452>,  <46.936069, 44.385807, 48.109093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.971653, 44.758827, 47.476452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330399, 44.805214, 47.647186>,  <47.545647, 44.833046, 47.749626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330399, 44.805214, 47.647186>,  <46.971653, 44.758827, 47.476452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330399, 44.805214, 47.647186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438062, -0.366318, -0.820922,
		0.061162, 0.923235, -0.379336,
		0.896862, 0.115964, 0.426839,
		47.599457, 44.840004, 47.775238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198975, 44.790604, 47.460846>,  <46.971653, 44.758827, 47.476452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198975, 44.790604, 47.460846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930748, 44.649414, 47.199848>,  <45.769810, 44.564701, 47.043251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930748, 44.649414, 47.199848>,  <46.198975, 44.790604, 47.460846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930748, 44.649414, 47.199848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685379, -0.041803, 0.726986,
		-0.283884, 0.934698, -0.213890,
		-0.670571, -0.352975, -0.652490,
		45.729576, 44.543522, 47.004101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683170, 45.350067, 47.395927>,  <46.198975, 44.790604, 47.460846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683170, 45.350067, 47.395927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548637, 44.987511, 47.293682>,  <45.467918, 44.769978, 47.232334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548637, 44.987511, 47.293682>,  <45.683170, 45.350067, 47.395927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548637, 44.987511, 47.293682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647866, 0.025703, 0.761320,
		-0.683484, 0.421657, -0.595865,
		-0.336331, -0.906391, -0.255610,
		45.447739, 44.715591, 47.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996323, 45.452053, 47.225777>,  <45.683170, 45.350067, 47.395927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996323, 45.452053, 47.225777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022522, 45.065590, 47.325569>,  <45.038242, 44.833710, 47.385445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.022522, 45.065590, 47.325569>,  <44.996323, 45.452053, 47.225777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022522, 45.065590, 47.325569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786098, 0.104040, 0.609283,
		-0.614622, -0.236025, -0.752683,
		0.065497, -0.966161, 0.249484,
		45.042171, 44.775742, 47.400414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302776, 45.212414, 47.120220>,  <44.996323, 45.452053, 47.225777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302776, 45.212414, 47.120220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482288, 44.954353, 47.367569>,  <44.589996, 44.799519, 47.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482288, 44.954353, 47.367569>,  <44.302776, 45.212414, 47.120220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482288, 44.954353, 47.367569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749272, 0.105465, 0.653810,
		-0.487022, -0.756743, -0.436062,
		0.448777, -0.645149, 0.618370,
		44.616920, 44.760807, 47.553082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773594, 44.792934, 47.311775>,  <44.302776, 45.212414, 47.120220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773594, 44.792934, 47.311775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049809, 44.746468, 47.597340>,  <44.215538, 44.718590, 47.768677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049809, 44.746468, 47.597340>,  <43.773594, 44.792934, 47.311775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049809, 44.746468, 47.597340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691308, 0.184288, 0.698664,
		-0.212723, -0.975984, 0.046953,
		0.690537, -0.116163, 0.713908,
		44.256969, 44.711620, 47.811512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412773, 44.545406, 47.780304>,  <43.773594, 44.792934, 47.311775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412773, 44.545406, 47.780304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723587, 44.686768, 47.988659>,  <43.910076, 44.771584, 48.113674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723587, 44.686768, 47.988659>,  <43.412773, 44.545406, 47.780304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723587, 44.686768, 47.988659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547439, -0.029044, 0.836341,
		0.310694, -0.935020, 0.170898,
		0.777032, 0.353403, 0.520890,
		43.956696, 44.792789, 48.144924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271183, 44.335232, 48.418522>,  <43.412773, 44.545406, 47.780304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271183, 44.335232, 48.418522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563019, 44.595673, 48.502197>,  <43.738121, 44.751938, 48.552402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563019, 44.595673, 48.502197>,  <43.271183, 44.335232, 48.418522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563019, 44.595673, 48.502197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510837, 0.315484, 0.799697,
		0.454691, -0.690313, 0.562782,
		0.729590, 0.651105, 0.209190,
		43.781895, 44.791004, 48.564953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292660, 44.342464, 49.196808>,  <43.271183, 44.335232, 48.418522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292660, 44.342464, 49.196808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434696, 44.683807, 49.044132>,  <43.519917, 44.888615, 48.952526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434696, 44.683807, 49.044132>,  <43.292660, 44.342464, 49.196808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434696, 44.683807, 49.044132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565873, 0.521207, 0.638851,
		0.744109, -0.010863, 0.667970,
		0.355091, 0.853361, -0.381688,
		43.541225, 44.939816, 48.929626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537552, 44.661900, 49.761047>,  <43.292660, 44.342464, 49.196808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537552, 44.661900, 49.761047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467705, 44.947563, 49.489906>,  <43.425797, 45.118961, 49.327221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467705, 44.947563, 49.489906>,  <43.537552, 44.661900, 49.761047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467705, 44.947563, 49.489906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633969, 0.445201, 0.632360,
		0.753387, 0.540160, 0.375014,
		-0.174619, 0.714159, -0.677853,
		43.415318, 45.161812, 49.286549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650486, 45.261967, 50.179234>,  <43.537552, 44.661900, 49.761047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650486, 45.261967, 50.179234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421398, 45.344551, 49.861904>,  <43.283947, 45.394104, 49.671505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421398, 45.344551, 49.861904>,  <43.650486, 45.261967, 50.179234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421398, 45.344551, 49.861904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735784, 0.297198, 0.608519,
		0.361413, 0.932226, -0.018298,
		-0.572716, 0.206464, -0.793328,
		43.249584, 45.406490, 49.623905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493759, 45.925243, 50.266785>,  <43.650486, 45.261967, 50.179234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493759, 45.925243, 50.266785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219193, 45.782265, 50.013466>,  <43.054455, 45.696480, 49.861473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219193, 45.782265, 50.013466>,  <43.493759, 45.925243, 50.266785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219193, 45.782265, 50.013466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718054, 0.470902, 0.512494,
		0.115035, 0.806528, -0.579897,
		-0.686415, -0.357442, -0.633300,
		43.013268, 45.675034, 49.823475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169888, 46.579830, 50.053204>,  <43.493759, 45.925243, 50.266785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169888, 46.579830, 50.053204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920349, 46.275085, 49.983471>,  <42.770626, 46.092239, 49.941631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920349, 46.275085, 49.983471>,  <43.169888, 46.579830, 50.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920349, 46.275085, 49.983471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671330, 0.408153, 0.618649,
		-0.400169, 0.502975, -0.766082,
		-0.623844, -0.761858, -0.174332,
		42.733196, 46.046528, 49.931171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637634, 46.745544, 50.366901>,  <43.169888, 46.579830, 50.053204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637634, 46.745544, 50.366901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497364, 46.381363, 50.279175>,  <42.413204, 46.162853, 50.226540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497364, 46.381363, 50.279175>,  <42.637634, 46.745544, 50.366901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497364, 46.381363, 50.279175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816464, 0.182517, 0.547791,
		-0.458711, 0.371156, -0.807358,
		-0.350673, -0.910456, -0.219313,
		42.392162, 46.108227, 50.213383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908886, 46.860180, 50.303291>,  <42.637634, 46.745544, 50.366901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908886, 46.860180, 50.303291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969856, 46.471176, 50.373707>,  <42.006439, 46.237774, 50.415955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969856, 46.471176, 50.373707>,  <41.908886, 46.860180, 50.303291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969856, 46.471176, 50.373707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569877, 0.059037, 0.819607,
		-0.807469, -0.225252, -0.545212,
		0.152430, -0.972510, 0.176037,
		42.015587, 46.179424, 50.426517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234512, 46.468880, 50.570732>,  <41.908886, 46.860180, 50.303291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234512, 46.468880, 50.570732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504669, 46.192863, 50.674793>,  <41.666763, 46.027252, 50.737232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.504669, 46.192863, 50.674793>,  <41.234512, 46.468880, 50.570732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504669, 46.192863, 50.674793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553739, -0.241545, 0.796887,
		-0.487049, -0.682271, -0.545243,
		0.675394, -0.690045, 0.260156,
		41.707287, 45.985851, 50.752842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932644, 45.715572, 50.709095>,  <41.234512, 46.468880, 50.570732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932644, 45.715572, 50.709095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269485, 45.706467, 50.924633>,  <41.471588, 45.701004, 51.053955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269485, 45.706467, 50.924633>,  <40.932644, 45.715572, 50.709095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269485, 45.706467, 50.924633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525914, -0.256053, 0.811080,
		0.119507, -0.966395, -0.227595,
		0.842100, -0.022766, 0.538840,
		41.522114, 45.699638, 51.086285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986374, 45.099876, 50.996548>,  <40.932644, 45.715572, 50.709095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986374, 45.099876, 50.996548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194786, 45.347038, 51.232079>,  <41.319836, 45.495335, 51.373398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194786, 45.347038, 51.232079>,  <40.986374, 45.099876, 50.996548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194786, 45.347038, 51.232079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577701, -0.252540, 0.776199,
		0.628319, -0.744593, 0.225382,
		0.521035, 0.617904, 0.588827,
		41.351097, 45.532410, 51.408726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127743, 44.740398, 51.645752>,  <40.986374, 45.099876, 50.996548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127743, 44.740398, 51.645752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208855, 45.118851, 51.746719>,  <41.257523, 45.345921, 51.807301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208855, 45.118851, 51.746719>,  <41.127743, 44.740398, 51.645752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208855, 45.118851, 51.746719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461963, -0.134858, 0.876587,
		0.863407, -0.294363, 0.409731,
		0.202779, 0.946131, 0.252422,
		41.269688, 45.402691, 51.822445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471596, 44.734039, 52.336334>,  <41.127743, 44.740398, 51.645752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471596, 44.734039, 52.336334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309235, 45.095535, 52.281944>,  <41.211819, 45.312435, 52.249310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309235, 45.095535, 52.281944>,  <41.471596, 44.734039, 52.336334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309235, 45.095535, 52.281944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406394, -0.045222, 0.912578,
		0.818587, 0.425680, 0.385631,
		-0.405905, 0.903743, -0.135975,
		41.187462, 45.366657, 52.241150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742287, 45.117729, 52.939476>,  <41.471596, 44.734039, 52.336334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742287, 45.117729, 52.939476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434883, 45.345886, 52.823513>,  <41.250443, 45.482780, 52.753933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434883, 45.345886, 52.823513>,  <41.742287, 45.117729, 52.939476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434883, 45.345886, 52.823513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406932, -0.086059, 0.909396,
		0.493761, 0.816853, 0.298247,
		-0.768510, 0.570390, -0.289911,
		41.204330, 45.517002, 52.736538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702534, 45.591984, 53.432236>,  <41.742287, 45.117729, 52.939476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702534, 45.591984, 53.432236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341358, 45.570564, 53.261665>,  <41.124653, 45.557713, 53.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341358, 45.570564, 53.261665>,  <41.702534, 45.591984, 53.432236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341358, 45.570564, 53.261665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428911, 0.049455, 0.901992,
		-0.027210, 0.997340, -0.067621,
		-0.902937, -0.053547, -0.426424,
		41.070477, 45.554501, 53.133739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301376, 46.102215, 53.708935>,  <41.702534, 45.591984, 53.432236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301376, 46.102215, 53.708935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029869, 45.846573, 53.564262>,  <40.866962, 45.693188, 53.477459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029869, 45.846573, 53.564262>,  <41.301376, 46.102215, 53.708935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029869, 45.846573, 53.564262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505443, 0.049301, 0.861451,
		-0.532727, 0.767536, -0.356496,
		-0.678770, -0.639107, -0.361681,
		40.826237, 45.654842, 53.455757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693413, 46.308376, 53.983913>,  <41.301376, 46.102215, 53.708935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693413, 46.308376, 53.983913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606476, 45.937622, 53.861504>,  <40.554314, 45.715172, 53.788059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606476, 45.937622, 53.861504>,  <40.693413, 46.308376, 53.983913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606476, 45.937622, 53.861504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554162, -0.140923, 0.820393,
		-0.803534, 0.347891, -0.483015,
		-0.217339, -0.926883, -0.306025,
		40.541275, 45.659557, 53.769695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016613, 46.149494, 54.042377>,  <40.693413, 46.308376, 53.983913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016613, 46.149494, 54.042377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173191, 45.781418, 54.044228>,  <40.267139, 45.560574, 54.045338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173191, 45.781418, 54.044228>,  <40.016613, 46.149494, 54.042377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173191, 45.781418, 54.044228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520413, -0.217230, 0.825822,
		-0.758907, -0.325674, -0.563912,
		0.391447, -0.920189, 0.004628,
		40.290627, 45.505360, 54.045616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513630, 45.651043, 54.219936>,  <40.016613, 46.149494, 54.042377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513630, 45.651043, 54.219936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821228, 45.416435, 54.321632>,  <40.005787, 45.275669, 54.382648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821228, 45.416435, 54.321632>,  <39.513630, 45.651043, 54.219936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821228, 45.416435, 54.321632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506833, -0.317032, 0.801630,
		-0.389576, -0.745304, -0.541066,
		0.768993, -0.586526, 0.254237,
		40.051926, 45.240479, 54.397903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289627, 44.989540, 54.345665>,  <39.513630, 45.651043, 54.219936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289627, 44.989540, 54.345665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646450, 44.939026, 54.519230>,  <39.860546, 44.908718, 54.623371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646450, 44.939026, 54.519230>,  <39.289627, 44.989540, 54.345665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646450, 44.939026, 54.519230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438958, -0.470428, 0.765515,
		0.107452, -0.873355, -0.475084,
		0.892059, -0.126286, 0.433915,
		39.914066, 44.901138, 54.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387077, 44.323158, 54.431168>,  <39.289627, 44.989540, 54.345665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387077, 44.323158, 54.431168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661484, 44.469788, 54.682564>,  <39.826130, 44.557766, 54.833401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661484, 44.469788, 54.682564>,  <39.387077, 44.323158, 54.431168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661484, 44.469788, 54.682564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363245, -0.575893, 0.732394,
		0.630422, -0.730732, -0.261915,
		0.686019, 0.366578, 0.628490,
		39.867290, 44.579762, 54.871109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761120, 43.719067, 54.839874>,  <39.387077, 44.323158, 54.431168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761120, 43.719067, 54.839874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811569, 44.050385, 55.058239>,  <39.841839, 44.249176, 55.189259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811569, 44.050385, 55.058239>,  <39.761120, 43.719067, 54.839874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811569, 44.050385, 55.058239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364001, -0.473281, 0.802190,
		0.922819, -0.299890, 0.241806,
		0.126127, 0.828294, 0.545913,
		39.849407, 44.298874, 55.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934509, 43.551704, 55.563663>,  <39.761120, 43.719067, 54.839874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934509, 43.551704, 55.563663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830990, 43.932060, 55.631584>,  <39.768879, 44.160275, 55.672337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830990, 43.932060, 55.631584>,  <39.934509, 43.551704, 55.563663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830990, 43.932060, 55.631584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368594, -0.259704, 0.892576,
		0.892841, 0.168406, 0.417702,
		-0.258794, 0.950891, 0.169801,
		39.753353, 44.217327, 55.682526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159107, 43.639194, 56.257092>,  <39.934509, 43.551704, 55.563663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159107, 43.639194, 56.257092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888443, 43.919205, 56.165794>,  <39.726044, 44.087212, 56.111015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888443, 43.919205, 56.165794>,  <40.159107, 43.639194, 56.257092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888443, 43.919205, 56.165794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381497, -0.068203, 0.921851,
		0.629750, 0.710856, 0.313207,
		-0.676665, 0.700023, -0.228238,
		39.685444, 44.129211, 56.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132965, 44.010872, 56.808994>,  <40.159107, 43.639194, 56.257092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132965, 44.010872, 56.808994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791733, 44.101227, 56.620853>,  <39.586994, 44.155441, 56.507969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791733, 44.101227, 56.620853>,  <40.132965, 44.010872, 56.808994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791733, 44.101227, 56.620853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516646, -0.239479, 0.822026,
		0.073045, 0.944259, 0.320998,
		-0.853078, 0.225887, -0.470354,
		39.535809, 44.168995, 56.479748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701805, 44.356159, 57.306168>,  <40.132965, 44.010872, 56.808994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701805, 44.356159, 57.306168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445297, 44.221222, 57.030495>,  <39.291393, 44.140259, 56.865089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445297, 44.221222, 57.030495>,  <39.701805, 44.356159, 57.306168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445297, 44.221222, 57.030495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609421, -0.321835, 0.724588,
		-0.466236, 0.884660, 0.000802,
		-0.641272, -0.337340, -0.689182,
		39.252914, 44.120022, 56.823742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068329, 44.707722, 57.516487>,  <39.701805, 44.356159, 57.306168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068329, 44.707722, 57.516487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977898, 44.408531, 57.266876>,  <38.923637, 44.229015, 57.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977898, 44.408531, 57.266876>,  <39.068329, 44.707722, 57.516487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977898, 44.408531, 57.266876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793006, -0.230712, 0.563838,
		-0.565710, 0.622334, -0.540992,
		-0.226082, -0.747979, -0.624031,
		38.910072, 44.184139, 57.079666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436035, 44.945232, 57.353737>,  <39.068329, 44.707722, 57.516487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436035, 44.945232, 57.353737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483879, 44.551620, 57.301003>,  <38.512585, 44.315453, 57.269363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483879, 44.551620, 57.301003>,  <38.436035, 44.945232, 57.353737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483879, 44.551620, 57.301003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748353, -0.176619, 0.639354,
		-0.652427, 0.022185, -0.757527,
		0.119610, -0.984029, -0.131834,
		38.519760, 44.256413, 57.261452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784153, 44.700169, 57.180222>,  <38.436035, 44.945232, 57.353737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784153, 44.700169, 57.180222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977219, 44.375877, 57.312744>,  <38.093056, 44.181305, 57.392258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977219, 44.375877, 57.312744>,  <37.784153, 44.700169, 57.180222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977219, 44.375877, 57.312744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674667, -0.102971, 0.730905,
		-0.558447, -0.576301, -0.596669,
		0.482661, -0.810724, 0.331307,
		38.122017, 44.132660, 57.412136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324799, 44.151817, 57.177208>,  <37.784153, 44.700169, 57.180222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324799, 44.151817, 57.177208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604904, 44.057297, 57.446663>,  <37.772968, 44.000584, 57.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604904, 44.057297, 57.446663>,  <37.324799, 44.151817, 57.177208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604904, 44.057297, 57.446663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710046, -0.132872, 0.691506,
		-0.073890, -0.962554, -0.260825,
		0.700268, -0.236293, 0.673639,
		37.814983, 43.986408, 57.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038223, 43.674927, 57.549591>,  <37.324799, 44.151817, 57.177208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038223, 43.674927, 57.549591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334641, 43.793640, 57.790512>,  <37.512493, 43.864868, 57.935066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334641, 43.793640, 57.790512>,  <37.038223, 43.674927, 57.549591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334641, 43.793640, 57.790512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572224, -0.190178, 0.797742,
		0.351300, -0.935817, 0.028895,
		0.741045, 0.296781, 0.602306,
		37.556953, 43.882675, 57.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007282, 43.158653, 58.087727>,  <37.038223, 43.674927, 57.549591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007282, 43.158653, 58.087727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218567, 43.465973, 58.232338>,  <37.345337, 43.650364, 58.319107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218567, 43.465973, 58.232338>,  <37.007282, 43.158653, 58.087727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218567, 43.465973, 58.232338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481584, -0.079601, 0.872777,
		0.699332, -0.635122, 0.327954,
		0.528215, 0.768299, 0.361532,
		37.377033, 43.696461, 58.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052197, 42.564621, 58.564499>,  <37.007282, 43.158653, 58.087727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052197, 42.564621, 58.564499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666092, 42.545937, 58.461670>,  <36.434429, 42.534725, 58.399971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666092, 42.545937, 58.461670>,  <37.052197, 42.564621, 58.564499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666092, 42.545937, 58.461670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260611, -0.242665, -0.934449,
		-0.018733, -0.968985, 0.246409,
		-0.965262, -0.046712, -0.257074,
		36.376514, 42.531921, 58.384548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025162, 42.101273, 58.042908>,  <37.052197, 42.564621, 58.564499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025162, 42.101273, 58.042908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659111, 42.254684, 57.993210>,  <36.439480, 42.346733, 57.963390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659111, 42.254684, 57.993210>,  <37.025162, 42.101273, 58.042908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659111, 42.254684, 57.993210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004650, -0.298120, -0.954517,
		-0.403131, -0.874085, 0.271036,
		-0.915131, 0.383536, -0.124246,
		36.384571, 42.369743, 57.955936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543934, 41.503605, 57.686886>,  <37.025162, 42.101273, 58.042908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543934, 41.503605, 57.686886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367149, 41.859177, 57.638744>,  <36.261078, 42.072517, 57.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367149, 41.859177, 57.638744>,  <36.543934, 41.503605, 57.686886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367149, 41.859177, 57.638744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028703, -0.120085, -0.992349,
		-0.896576, -0.442031, 0.027558,
		-0.441959, 0.888925, -0.120353,
		36.234562, 42.125854, 57.602638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084160, 41.412586, 57.129440>,  <36.543934, 41.503605, 57.686886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084160, 41.412586, 57.129440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185398, 41.797653, 57.167820>,  <36.246140, 42.028694, 57.190849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185398, 41.797653, 57.167820>,  <36.084160, 41.412586, 57.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185398, 41.797653, 57.167820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201791, 0.044465, -0.978419,
		-0.946162, 0.266996, -0.183005,
		0.253097, 0.962671, 0.095948,
		36.261326, 42.086456, 57.196606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679314, 41.673649, 56.603424>,  <36.084160, 41.412586, 57.129440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679314, 41.673649, 56.603424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978153, 41.929520, 56.675705>,  <36.157455, 42.083042, 56.719074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978153, 41.929520, 56.675705>,  <35.679314, 41.673649, 56.603424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978153, 41.929520, 56.675705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114323, 0.144149, -0.982930,
		-0.654809, 0.755003, 0.034563,
		0.747098, 0.639681, 0.180705,
		36.202282, 42.121426, 56.729916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624294, 42.156666, 56.053101>,  <35.679314, 41.673649, 56.603424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624294, 42.156666, 56.053101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992599, 42.192795, 56.204910>,  <36.213581, 42.214470, 56.295994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992599, 42.192795, 56.204910>,  <35.624294, 42.156666, 56.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992599, 42.192795, 56.204910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360658, 0.173795, -0.916363,
		-0.148724, 0.980631, 0.127450,
		0.920765, 0.090320, 0.379520,
		36.268829, 42.219891, 56.318768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903011, 42.787495, 55.916981>,  <35.624294, 42.156666, 56.053101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903011, 42.787495, 55.916981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232906, 42.570770, 55.981789>,  <36.430843, 42.440735, 56.020676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232906, 42.570770, 55.981789>,  <35.903011, 42.787495, 55.916981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232906, 42.570770, 55.981789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412800, 0.380948, -0.827330,
		0.386536, 0.749210, 0.537842,
		0.824734, -0.541814, 0.162024,
		36.480328, 42.408226, 56.030396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393574, 43.225700, 55.630409>,  <35.903011, 42.787495, 55.916981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393574, 43.225700, 55.630409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581272, 42.874313, 55.666428>,  <36.693890, 42.663483, 55.688038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581272, 42.874313, 55.666428>,  <36.393574, 43.225700, 55.630409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581272, 42.874313, 55.666428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536763, 0.202773, -0.819005,
		0.701208, 0.432647, 0.566678,
		0.469247, -0.878465, 0.090043,
		36.722046, 42.610775, 55.693439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077061, 43.384628, 55.579052>,  <36.393574, 43.225700, 55.630409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077061, 43.384628, 55.579052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070000, 42.995758, 55.485615>,  <37.065765, 42.762436, 55.429554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070000, 42.995758, 55.485615>,  <37.077061, 43.384628, 55.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070000, 42.995758, 55.485615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672630, 0.161310, -0.722183,
		0.739769, -0.169865, 0.651067,
		-0.017650, -0.972175, -0.233589,
		37.064705, 42.704105, 55.415539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818752, 43.233822, 55.579773>,  <37.077061, 43.384628, 55.579052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818752, 43.233822, 55.579773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636444, 42.932396, 55.390289>,  <37.527058, 42.751541, 55.276600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636444, 42.932396, 55.390289>,  <37.818752, 43.233822, 55.579773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636444, 42.932396, 55.390289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671682, 0.058032, -0.738563,
		0.584049, -0.654803, 0.479708,
		-0.455775, -0.753568, -0.473713,
		37.499710, 42.706326, 55.248177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340717, 42.880753, 55.302116>,  <37.818752, 43.233822, 55.579773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340717, 42.880753, 55.302116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026871, 42.777191, 55.076782>,  <37.838562, 42.715054, 54.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026871, 42.777191, 55.076782>,  <38.340717, 42.880753, 55.302116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026871, 42.777191, 55.076782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533248, 0.181698, -0.826216,
		0.316268, -0.948659, -0.004503,
		-0.784615, -0.258905, -0.563336,
		37.791485, 42.699520, 54.907780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604259, 42.225040, 54.919430>,  <38.340717, 42.880753, 55.302116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604259, 42.225040, 54.919430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289726, 42.360764, 54.712914>,  <38.101006, 42.442200, 54.589005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289726, 42.360764, 54.712914>,  <38.604259, 42.225040, 54.919430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289726, 42.360764, 54.712914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596870, 0.201518, -0.776619,
		-0.159474, -0.918836, -0.360984,
		-0.786330, 0.339311, -0.516288,
		38.053829, 42.462559, 54.558025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587929, 41.813396, 54.259686>,  <38.604259, 42.225040, 54.919430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587929, 41.813396, 54.259686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368362, 42.142029, 54.198109>,  <38.236622, 42.339207, 54.161163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368362, 42.142029, 54.198109>,  <38.587929, 41.813396, 54.259686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368362, 42.142029, 54.198109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468036, 0.149507, -0.870971,
		-0.692553, -0.550145, -0.466595,
		-0.548919, 0.821577, -0.153946,
		38.203686, 42.388500, 54.151924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407192, 41.811787, 53.493507>,  <38.587929, 41.813396, 54.259686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407192, 41.811787, 53.493507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358742, 42.191597, 53.609249>,  <38.329670, 42.419483, 53.678692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358742, 42.191597, 53.609249>,  <38.407192, 41.811787, 53.493507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358742, 42.191597, 53.609249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349021, 0.313624, -0.883077,
		-0.929254, -0.005973, -0.369393,
		-0.121125, 0.949529, 0.289352,
		38.322403, 42.476456, 53.696056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186977, 42.081039, 52.947220>,  <38.407192, 41.811787, 53.493507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186977, 42.081039, 52.947220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333740, 42.393784, 53.148838>,  <38.421799, 42.581432, 53.269810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333740, 42.393784, 53.148838>,  <38.186977, 42.081039, 52.947220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333740, 42.393784, 53.148838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370488, 0.374195, -0.850128,
		-0.853297, 0.498664, -0.152375,
		0.366910, 0.781865, 0.504048,
		38.443813, 42.628342, 53.300053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117973, 42.625076, 52.505501>,  <38.186977, 42.081039, 52.947220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117973, 42.625076, 52.505501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395412, 42.743195, 52.768322>,  <38.561878, 42.814064, 52.926014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395412, 42.743195, 52.768322>,  <38.117973, 42.625076, 52.505501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395412, 42.743195, 52.768322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496702, 0.464565, -0.733121,
		-0.521731, 0.834853, 0.175549,
		0.693602, 0.295296, 0.657052,
		38.603493, 42.831783, 52.965439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202843, 43.324409, 52.380898>,  <38.117973, 42.625076, 52.505501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202843, 43.324409, 52.380898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555882, 43.225243, 52.540676>,  <38.767704, 43.165745, 52.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555882, 43.225243, 52.540676>,  <38.202843, 43.324409, 52.380898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555882, 43.225243, 52.540676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467287, 0.555843, -0.687518,
		-0.051584, 0.793459, 0.606433,
		0.882599, -0.247913, 0.399446,
		38.820660, 43.150867, 52.660511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597874, 43.857765, 52.300743>,  <38.202843, 43.324409, 52.380898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597874, 43.857765, 52.300743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873955, 43.583435, 52.393066>,  <39.039604, 43.418839, 52.448460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873955, 43.583435, 52.393066>,  <38.597874, 43.857765, 52.300743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873955, 43.583435, 52.393066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679746, 0.505119, -0.531789,
		0.248128, 0.523932, 0.814818,
		0.690201, -0.685821, 0.230807,
		39.081017, 43.377689, 52.462307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160419, 44.265812, 52.465122>,  <38.597874, 43.857765, 52.300743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160419, 44.265812, 52.465122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286007, 43.900513, 52.361282>,  <39.361359, 43.681332, 52.298977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286007, 43.900513, 52.361282>,  <39.160419, 44.265812, 52.465122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286007, 43.900513, 52.361282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558463, 0.398765, -0.727396,
		0.767815, 0.083407, 0.635219,
		0.313973, -0.913252, -0.259598,
		39.380199, 43.626537, 52.283401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869305, 44.262653, 52.385944>,  <39.160419, 44.265812, 52.465122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869305, 44.262653, 52.385944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772964, 43.939674, 52.170528>,  <39.715160, 43.745888, 52.041279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772964, 43.939674, 52.170528>,  <39.869305, 44.262653, 52.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772964, 43.939674, 52.170528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589748, 0.318935, -0.741943,
		0.770836, -0.496300, 0.399373,
		-0.240852, -0.807445, -0.538538,
		39.700710, 43.697441, 52.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458263, 44.108238, 52.141445>,  <39.869305, 44.262653, 52.385944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458263, 44.108238, 52.141445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198589, 43.931236, 51.893982>,  <40.042786, 43.825035, 51.745502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198589, 43.931236, 51.893982>,  <40.458263, 44.108238, 52.141445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198589, 43.931236, 51.893982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511444, 0.348090, -0.785658,
		0.563011, -0.826449, 0.000344,
		-0.649186, -0.442510, -0.618661,
		40.003834, 43.798485, 51.708382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824612, 43.613388, 51.594448>,  <40.458263, 44.108238, 52.141445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824612, 43.613388, 51.594448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463108, 43.700439, 51.447014>,  <40.246204, 43.752670, 51.358555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463108, 43.700439, 51.447014>,  <40.824612, 43.613388, 51.594448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463108, 43.700439, 51.447014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412349, 0.211655, -0.886098,
		-0.114827, -0.952806, -0.281024,
		-0.903761, 0.217628, -0.368585,
		40.191978, 43.765728, 51.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869637, 43.448414, 50.957542>,  <40.824612, 43.613388, 51.594448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869637, 43.448414, 50.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530754, 43.652084, 50.896912>,  <40.327423, 43.774288, 50.860535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530754, 43.652084, 50.896912>,  <40.869637, 43.448414, 50.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530754, 43.652084, 50.896912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236426, 0.105866, -0.965865,
		-0.475749, -0.854126, -0.210074,
		-0.847211, 0.509176, -0.151572,
		40.276592, 43.804836, 50.851440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525063, 43.020817, 50.515850>,  <40.869637, 43.448414, 50.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525063, 43.020817, 50.515850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352676, 43.380775, 50.489166>,  <40.249245, 43.596752, 50.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352676, 43.380775, 50.489166>,  <40.525063, 43.020817, 50.515850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352676, 43.380775, 50.489166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123207, -0.014557, -0.992274,
		-0.893917, -0.435858, -0.104600,
		-0.430967, 0.899898, -0.066714,
		40.223385, 43.650745, 50.469151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295593, 43.000389, 49.843826>,  <40.525063, 43.020817, 50.515850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295593, 43.000389, 49.843826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312996, 43.386795, 49.945747>,  <40.323437, 43.618637, 50.006901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312996, 43.386795, 49.945747>,  <40.295593, 43.000389, 49.843826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312996, 43.386795, 49.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223873, 0.239131, -0.944826,
		-0.973647, 0.098146, -0.205862,
		0.043503, 0.966014, 0.254801,
		40.326046, 43.676598, 50.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936646, 43.342197, 49.389961>,  <40.295593, 43.000389, 49.843826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936646, 43.342197, 49.389961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196579, 43.604378, 49.543896>,  <40.352539, 43.761688, 49.636257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196579, 43.604378, 49.543896>,  <39.936646, 43.342197, 49.389961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196579, 43.604378, 49.543896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235506, 0.307758, -0.921858,
		-0.722671, 0.689685, 0.045628,
		0.649834, 0.655454, 0.384833,
		40.391529, 43.801014, 49.659344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829155, 43.888828, 49.002102>,  <39.936646, 43.342197, 49.389961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829155, 43.888828, 49.002102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184952, 43.973663, 49.164005>,  <40.398430, 44.024567, 49.261147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184952, 43.973663, 49.164005>,  <39.829155, 43.888828, 49.002102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184952, 43.973663, 49.164005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386826, 0.122043, -0.914041,
		-0.243258, 0.969599, 0.026514,
		0.889489, 0.212092, 0.404754,
		40.451797, 44.037292, 49.285431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099564, 44.402966, 48.579353>,  <39.829155, 43.888828, 49.002102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099564, 44.402966, 48.579353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399590, 44.226532, 48.776474>,  <40.579605, 44.120670, 48.894745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399590, 44.226532, 48.776474>,  <40.099564, 44.402966, 48.579353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399590, 44.226532, 48.776474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621561, 0.215524, -0.753135,
		0.225985, 0.871203, 0.435817,
		0.750062, -0.441084, 0.492800,
		40.624607, 44.094208, 48.924313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696831, 44.798409, 48.449863>,  <40.099564, 44.402966, 48.579353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696831, 44.798409, 48.449863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837662, 44.441048, 48.561485>,  <40.922161, 44.226631, 48.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837662, 44.441048, 48.561485>,  <40.696831, 44.798409, 48.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837662, 44.441048, 48.561485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679827, 0.039163, -0.732327,
		0.643334, 0.447546, 0.621147,
		0.352075, -0.893403, 0.279059,
		40.943283, 44.173027, 48.645203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472305, 44.899651, 48.534809>,  <40.696831, 44.798409, 48.449863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472305, 44.899651, 48.534809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382477, 44.516220, 48.464729>,  <41.328579, 44.286160, 48.422680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382477, 44.516220, 48.464729>,  <41.472305, 44.899651, 48.534809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382477, 44.516220, 48.464729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715933, -0.040333, -0.697003,
		0.661065, -0.281960, 0.695335,
		-0.224571, -0.958578, -0.175202,
		41.315105, 44.228645, 48.412170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124680, 44.671844, 48.388176>,  <41.472305, 44.899651, 48.534809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124680, 44.671844, 48.388176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894600, 44.376556, 48.247215>,  <41.756554, 44.199383, 48.162640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894600, 44.376556, 48.247215>,  <42.124680, 44.671844, 48.388176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894600, 44.376556, 48.247215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588451, -0.074163, -0.805124,
		0.568223, -0.670472, 0.477063,
		-0.575194, -0.738219, -0.352398,
		41.722042, 44.155090, 48.141495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559517, 44.090397, 48.203918>,  <42.124680, 44.671844, 48.388176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559517, 44.090397, 48.203918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228592, 44.002029, 47.997330>,  <42.030037, 43.949009, 47.873375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228592, 44.002029, 47.997330>,  <42.559517, 44.090397, 48.203918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228592, 44.002029, 47.997330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561730, -0.321442, -0.762322,
		0.002394, -0.920799, 0.390030,
		-0.827317, -0.220916, -0.516472,
		41.980396, 43.935753, 47.842388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793797, 43.543221, 47.896797>,  <42.559517, 44.090397, 48.203918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793797, 43.543221, 47.896797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485794, 43.672646, 47.676838>,  <42.300991, 43.750301, 47.544861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485794, 43.672646, 47.676838>,  <42.793797, 43.543221, 47.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485794, 43.672646, 47.676838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490766, -0.250392, -0.834537,
		-0.407717, -0.912475, 0.034010,
		-0.770010, 0.323564, -0.549901,
		42.254791, 43.769714, 47.511868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767529, 43.058521, 47.457623>,  <42.793797, 43.543221, 47.896797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767529, 43.058521, 47.457623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585182, 43.379791, 47.304207>,  <42.475773, 43.572552, 47.212158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.585182, 43.379791, 47.304207>,  <42.767529, 43.058521, 47.457623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585182, 43.379791, 47.304207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518849, -0.110319, -0.847718,
		-0.723176, -0.585442, -0.366435,
		-0.455865, 0.803173, -0.383536,
		42.448421, 43.620743, 47.189144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537140, 42.848854, 46.866043>,  <42.767529, 43.058521, 47.457623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537140, 42.848854, 46.866043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561676, 43.246796, 46.833771>,  <42.576397, 43.485561, 46.814407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.561676, 43.246796, 46.833771>,  <42.537140, 42.848854, 46.866043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561676, 43.246796, 46.833771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541487, -0.101074, -0.834612,
		-0.838469, 0.007504, -0.544898,
		0.061338, 0.994851, -0.080684,
		42.580078, 43.545250, 46.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342960, 42.918621, 46.300114>,  <42.537140, 42.848854, 46.866043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342960, 42.918621, 46.300114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511055, 43.274567, 46.371159>,  <42.611912, 43.488132, 46.413788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511055, 43.274567, 46.371159>,  <42.342960, 42.918621, 46.300114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511055, 43.274567, 46.371159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268439, 0.065061, -0.961097,
		-0.866797, 0.451571, -0.211532,
		0.420241, 0.889860, 0.177614,
		42.637127, 43.541523, 46.424442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096893, 43.428261, 45.826035>,  <42.342960, 42.918621, 46.300114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096893, 43.428261, 45.826035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439892, 43.573914, 45.971416>,  <42.645691, 43.661304, 46.058647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439892, 43.573914, 45.971416>,  <42.096893, 43.428261, 45.826035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439892, 43.573914, 45.971416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355443, 0.091452, -0.930213,
		-0.371959, 0.926847, -0.051007,
		0.857500, 0.364132, 0.363457,
		42.697144, 43.683151, 46.080452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257122, 44.053558, 45.494041>,  <42.096893, 43.428261, 45.826035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257122, 44.053558, 45.494041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607826, 43.975090, 45.669682>,  <42.818249, 43.928009, 45.775066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607826, 43.975090, 45.669682>,  <42.257122, 44.053558, 45.494041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607826, 43.975090, 45.669682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474786, 0.207613, -0.855263,
		0.076615, 0.958339, 0.275166,
		0.876760, -0.196171, 0.439099,
		42.870853, 43.916237, 45.801411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668926, 44.569836, 45.307217>,  <42.257122, 44.053558, 45.494041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668926, 44.569836, 45.307217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933731, 44.289284, 45.412895>,  <43.092613, 44.120953, 45.476303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.933731, 44.289284, 45.412895>,  <42.668926, 44.569836, 45.307217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933731, 44.289284, 45.412895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537914, 0.199165, -0.819135,
		0.521906, 0.684397, 0.509132,
		0.662015, -0.701380, 0.264201,
		43.132336, 44.078869, 45.492157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377941, 44.856678, 45.336182>,  <42.668926, 44.569836, 45.307217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377941, 44.856678, 45.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405479, 44.464424, 45.262840>,  <43.422001, 44.229073, 45.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405479, 44.464424, 45.262840>,  <43.377941, 44.856678, 45.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405479, 44.464424, 45.262840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447298, 0.194616, -0.872954,
		0.891732, -0.021916, 0.452033,
		0.068841, -0.980635, -0.183349,
		43.426132, 44.170235, 45.207836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.455776, 40.309875, 53.950912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.796490, 40.334915, 54.158970>,  <42.000916, 40.349937, 54.283806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.796490, 40.334915, 54.158970>,  <41.455776, 40.309875, 53.950912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796490, 40.334915, 54.158970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475920, 0.322616, -0.818180,
		-0.219024, 0.944458, 0.245007,
		0.851780, 0.062597, 0.520147,
		42.052025, 40.353695, 54.315014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758339, 40.957153, 53.857033>,  <41.455776, 40.309875, 53.950912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758339, 40.957153, 53.857033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.063774, 40.718819, 53.956562>,  <42.247036, 40.575817, 54.016281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.063774, 40.718819, 53.956562>,  <41.758339, 40.957153, 53.857033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063774, 40.718819, 53.956562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549699, 0.397678, -0.734631,
		0.338765, 0.697736, 0.631192,
		0.763590, -0.595833, 0.248825,
		42.292850, 40.540070, 54.031208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349396, 41.347065, 53.844856>,  <41.758339, 40.957153, 53.857033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349396, 41.347065, 53.844856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.453732, 40.964226, 53.794384>,  <42.516335, 40.734520, 53.764103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.453732, 40.964226, 53.794384>,  <42.349396, 41.347065, 53.844856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453732, 40.964226, 53.794384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731666, 0.281264, -0.620931,
		0.629782, 0.069646, 0.773643,
		0.260843, -0.957100, -0.126178,
		42.531986, 40.677097, 53.756531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925900, 41.393082, 53.318974>,  <42.349396, 41.347065, 53.844856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925900, 41.393082, 53.318974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.896866, 40.999138, 53.381947>,  <42.879444, 40.762772, 53.419731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.896866, 40.999138, 53.381947>,  <42.925900, 41.393082, 53.318974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896866, 40.999138, 53.381947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789174, -0.153235, -0.594746,
		0.609865, 0.081068, 0.788348,
		-0.072587, -0.984859, 0.157430,
		42.875088, 40.703682, 53.429176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622715, 41.147457, 53.476086>,  <42.925900, 41.393082, 53.318974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622715, 41.147457, 53.476086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386162, 40.854065, 53.342056>,  <43.244228, 40.678032, 53.261639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.386162, 40.854065, 53.342056>,  <43.622715, 41.147457, 53.476086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386162, 40.854065, 53.342056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692706, -0.249351, -0.676744,
		0.412826, -0.632324, 0.655546,
		-0.591383, -0.733478, -0.335076,
		43.208748, 40.634022, 53.241535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028469, 40.616280, 53.323940>,  <43.622715, 41.147457, 53.476086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028469, 40.616280, 53.323940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.707260, 40.505539, 53.112846>,  <43.514534, 40.439095, 52.986191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.707260, 40.505539, 53.112846>,  <44.028469, 40.616280, 53.323940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707260, 40.505539, 53.112846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591501, -0.262302, -0.762446,
		0.072659, -0.924419, 0.374394,
		-0.803024, -0.276853, -0.527736,
		43.466354, 40.422482, 52.954525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.259117, 40.063469, 52.910831>,  <44.028469, 40.616280, 53.323940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.259117, 40.063469, 52.910831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.923786, 40.165062, 52.717876>,  <43.722588, 40.226017, 52.602104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.923786, 40.165062, 52.717876>,  <44.259117, 40.063469, 52.910831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923786, 40.165062, 52.717876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463831, -0.132685, -0.875931,
		-0.286479, -0.958064, -0.006572,
		-0.838326, 0.253984, -0.482392,
		43.672287, 40.241257, 52.573158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149612, 39.563408, 52.349743>,  <44.259117, 40.063469, 52.910831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149612, 39.563408, 52.349743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.933426, 39.876518, 52.226349>,  <43.803715, 40.064384, 52.152313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.933426, 39.876518, 52.226349>,  <44.149612, 39.563408, 52.349743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.933426, 39.876518, 52.226349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275251, -0.181975, -0.943992,
		-0.795070, -0.595104, -0.117108,
		-0.540463, 0.782774, -0.308487,
		43.771286, 40.111351, 52.133804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768040, 39.368416, 51.685261>,  <44.149612, 39.563408, 52.349743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768040, 39.368416, 51.685261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.774120, 39.768204, 51.673798>,  <43.777767, 40.008076, 51.666920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.774120, 39.768204, 51.673798>,  <43.768040, 39.368416, 51.685261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774120, 39.768204, 51.673798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230907, -0.031397, -0.972469,
		-0.972857, 0.008164, -0.231263,
		0.015200, 0.999474, -0.028660,
		43.778679, 40.068047, 51.665199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487556, 39.492428, 51.041943>,  <43.768040, 39.368416, 51.685261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487556, 39.492428, 51.041943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.690372, 39.827438, 51.123386>,  <43.812061, 40.028446, 51.172253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.690372, 39.827438, 51.123386>,  <43.487556, 39.492428, 51.041943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690372, 39.827438, 51.123386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291848, 0.055445, -0.954856,
		-0.811008, 0.543574, -0.216318,
		0.507041, 0.837528, 0.203607,
		43.842484, 40.078697, 51.184467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304565, 39.935658, 50.510445>,  <43.487556, 39.492428, 51.041943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304565, 39.935658, 50.510445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.653595, 40.082489, 50.639355>,  <43.863014, 40.170589, 50.716702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.653595, 40.082489, 50.639355>,  <43.304565, 39.935658, 50.510445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653595, 40.082489, 50.639355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364897, -0.051220, -0.929638,
		-0.324744, 0.928778, -0.178639,
		0.872578, 0.367079, 0.322275,
		43.915367, 40.192612, 50.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422726, 40.441898, 50.032742>,  <43.304565, 39.935658, 50.510445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422726, 40.441898, 50.032742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768181, 40.336250, 50.204498>,  <43.975452, 40.272861, 50.307552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.768181, 40.336250, 50.204498>,  <43.422726, 40.441898, 50.032742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768181, 40.336250, 50.204498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416569, -0.105802, -0.902927,
		0.283912, 0.958669, 0.018651,
		0.863634, -0.264121, 0.429390,
		44.027271, 40.257015, 50.333317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888393, 40.803722, 49.714985>,  <43.422726, 40.441898, 50.032742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888393, 40.803722, 49.714985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.109390, 40.501610, 49.856014>,  <44.241989, 40.320343, 49.940632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.109390, 40.501610, 49.856014>,  <43.888393, 40.803722, 49.714985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109390, 40.501610, 49.856014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439420, -0.095514, -0.893190,
		0.708284, 0.648405, 0.279114,
		0.552490, -0.755280, 0.352573,
		44.275139, 40.275024, 49.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625053, 40.934944, 49.532684>,  <43.888393, 40.803722, 49.714985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625053, 40.934944, 49.532684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.622704, 40.542000, 49.607449>,  <44.621292, 40.306232, 49.652306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.622704, 40.542000, 49.607449>,  <44.625053, 40.934944, 49.532684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622704, 40.542000, 49.607449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522948, -0.162336, -0.836763,
		0.852344, 0.092828, 0.514677,
		-0.005876, -0.982359, 0.186911,
		44.620941, 40.247292, 49.663521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321991, 40.673817, 49.504810>,  <44.625053, 40.934944, 49.532684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321991, 40.673817, 49.504810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.066910, 40.369507, 49.456551>,  <44.913860, 40.186920, 49.427593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.066910, 40.369507, 49.456551>,  <45.321991, 40.673817, 49.504810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066910, 40.369507, 49.456551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393278, -0.186891, -0.900225,
		0.662316, -0.621530, 0.418376,
		-0.637707, -0.760771, -0.120654,
		44.875599, 40.141277, 49.420353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721073, 40.115829, 49.230801>,  <45.321991, 40.673817, 49.504810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721073, 40.115829, 49.230801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.340973, 40.044189, 49.128860>,  <45.112911, 40.001205, 49.067696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.340973, 40.044189, 49.128860>,  <45.721073, 40.115829, 49.230801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340973, 40.044189, 49.128860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301352, -0.321618, -0.897635,
		0.078800, -0.929777, 0.359589,
		-0.950251, -0.179097, -0.254846,
		45.055897, 39.990459, 49.052406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667370, 39.472935, 48.872799>,  <45.721073, 40.115829, 49.230801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667370, 39.472935, 48.872799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321228, 39.636162, 48.756420>,  <45.113544, 39.734097, 48.686592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.321228, 39.636162, 48.756420>,  <45.667370, 39.472935, 48.872799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321228, 39.636162, 48.756420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224444, -0.203511, -0.952999,
		-0.448098, -0.889980, 0.084521,
		-0.865351, 0.408066, -0.290944,
		45.061623, 39.758583, 48.669136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493271, 39.031971, 48.301796>,  <45.667370, 39.472935, 48.872799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493271, 39.031971, 48.301796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.264122, 39.358826, 48.276180>,  <45.126633, 39.554939, 48.260811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.264122, 39.358826, 48.276180>,  <45.493271, 39.031971, 48.301796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264122, 39.358826, 48.276180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066868, -0.031282, -0.997271,
		-0.816912, -0.575592, -0.036720,
		-0.572873, 0.817139, -0.064043,
		45.092258, 39.603966, 48.256966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976875, 38.889114, 47.857136>,  <45.493271, 39.031971, 48.301796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976875, 38.889114, 47.857136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995529, 39.288506, 47.845375>,  <45.006721, 39.528141, 47.838318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.995529, 39.288506, 47.845375>,  <44.976875, 38.889114, 47.857136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995529, 39.288506, 47.845375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038874, -0.031230, -0.998756,
		-0.998155, 0.045434, -0.040271,
		0.046635, 0.998479, -0.029406,
		45.009521, 39.588051, 47.836552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439484, 39.223694, 47.279999>,  <44.976875, 38.889114, 47.857136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439484, 39.223694, 47.279999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.699005, 39.520706, 47.346565>,  <44.854717, 39.698914, 47.386505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.699005, 39.520706, 47.346565>,  <44.439484, 39.223694, 47.279999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699005, 39.520706, 47.346565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120513, 0.115666, -0.985950,
		-0.751352, 0.659744, -0.014440,
		0.648805, 0.742536, 0.166413,
		44.893646, 39.743465, 47.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263836, 39.723404, 46.740105>,  <44.439484, 39.223694, 47.279999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263836, 39.723404, 46.740105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.621929, 39.812912, 46.894238>,  <44.836784, 39.866615, 46.986717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.621929, 39.812912, 46.894238>,  <44.263836, 39.723404, 46.740105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621929, 39.812912, 46.894238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338516, 0.220810, -0.914685,
		-0.289765, 0.949300, 0.121927,
		0.895234, 0.223769, 0.385337,
		44.890499, 39.880043, 47.009838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541756, 40.302029, 46.224823>,  <44.263836, 39.723404, 46.740105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541756, 40.302029, 46.224823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.852730, 40.133049, 46.411217>,  <45.039314, 40.031662, 46.523052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.852730, 40.133049, 46.411217>,  <44.541756, 40.302029, 46.224823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852730, 40.133049, 46.411217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471662, -0.098554, -0.876255,
		0.416094, 0.901015, 0.122633,
		0.777432, -0.422445, 0.465982,
		45.085960, 40.006317, 46.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526047, 41.105911, 46.151997>,  <44.541756, 40.302029, 46.224823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526047, 41.105911, 46.151997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.182007, 41.150757, 45.952934>,  <43.975582, 41.177666, 45.833496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.182007, 41.150757, 45.952934>,  <44.526047, 41.105911, 46.151997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182007, 41.150757, 45.952934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509578, -0.234198, 0.827938,
		-0.023725, 0.965703, 0.258566,
		-0.860098, 0.112117, -0.497657,
		43.923977, 41.184391, 45.803638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.105885, 41.613880, 46.505520>,  <44.526047, 41.105911, 46.151997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.105885, 41.613880, 46.505520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868713, 41.370438, 46.294605>,  <43.726410, 41.224373, 46.168056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868713, 41.370438, 46.294605>,  <44.105885, 41.613880, 46.505520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868713, 41.370438, 46.294605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560116, -0.158730, 0.813065,
		-0.578534, 0.777431, -0.246776,
		-0.592932, -0.608609, -0.527283,
		43.690834, 41.187855, 46.136421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480648, 41.839626, 46.716118>,  <44.105885, 41.613880, 46.505520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480648, 41.839626, 46.716118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.416985, 41.476791, 46.560242>,  <43.378788, 41.259090, 46.466717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.416985, 41.476791, 46.560242>,  <43.480648, 41.839626, 46.716118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416985, 41.476791, 46.560242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570609, -0.237596, 0.786100,
		-0.805652, 0.347475, -0.479777,
		-0.159157, -0.907088, -0.389692,
		43.369236, 41.204666, 46.443333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729801, 41.800945, 46.752575>,  <43.480648, 41.839626, 46.716118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729801, 41.800945, 46.752575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.884422, 41.433067, 46.725029>,  <42.977196, 41.212341, 46.708500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.884422, 41.433067, 46.725029>,  <42.729801, 41.800945, 46.752575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884422, 41.433067, 46.725029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653549, -0.325845, 0.683154,
		-0.650733, -0.219064, -0.727020,
		0.386550, -0.919693, -0.068869,
		43.000389, 41.157158, 46.704369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089382, 41.371590, 46.730648>,  <42.729801, 41.800945, 46.752575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089382, 41.371590, 46.730648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.399563, 41.155037, 46.860626>,  <42.585670, 41.025105, 46.938614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.399563, 41.155037, 46.860626>,  <42.089382, 41.371590, 46.730648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399563, 41.155037, 46.860626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512602, -0.239287, 0.824610,
		-0.368677, -0.806005, -0.463069,
		0.775446, -0.541384, 0.324940,
		42.632198, 40.992622, 46.958107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716976, 40.857029, 46.945683>,  <42.089382, 41.371590, 46.730648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716976, 40.857029, 46.945683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.089436, 40.820091, 47.086781>,  <42.312912, 40.797928, 47.171440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.089436, 40.820091, 47.086781>,  <41.716976, 40.857029, 46.945683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089436, 40.820091, 47.086781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360120, -0.384591, 0.849943,
		0.057175, -0.918456, -0.391368,
		0.931152, -0.092344, 0.352744,
		42.368782, 40.792389, 47.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781147, 40.131332, 47.236378>,  <41.716976, 40.857029, 46.945683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781147, 40.131332, 47.236378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.044189, 40.371414, 47.418503>,  <42.202015, 40.515465, 47.527779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.044189, 40.371414, 47.418503>,  <41.781147, 40.131332, 47.236378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044189, 40.371414, 47.418503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211215, -0.433249, 0.876176,
		0.723150, -0.672345, -0.158134,
		0.657604, 0.600206, 0.455313,
		42.241470, 40.551476, 47.555096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027107, 39.694229, 47.785393>,  <41.781147, 40.131332, 47.236378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027107, 39.694229, 47.785393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.107754, 40.070511, 47.894512>,  <42.156139, 40.296280, 47.959984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.107754, 40.070511, 47.894512>,  <42.027107, 39.694229, 47.785393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107754, 40.070511, 47.894512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362809, -0.186984, 0.912911,
		0.909792, -0.283030, 0.303599,
		0.201613, 0.940708, 0.272803,
		42.168236, 40.352722, 47.976353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270657, 39.696079, 48.541885>,  <42.027107, 39.694229, 47.785393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270657, 39.696079, 48.541885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.190300, 40.083961, 48.486290>,  <42.142086, 40.316689, 48.452930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.190300, 40.083961, 48.486290>,  <42.270657, 39.696079, 48.541885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190300, 40.083961, 48.486290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357889, 0.059426, 0.931871,
		0.911898, 0.236946, 0.335109,
		-0.200889, 0.969704, -0.138991,
		42.130032, 40.374874, 48.444592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554310, 40.024933, 49.112579>,  <42.270657, 39.696079, 48.541885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554310, 40.024933, 49.112579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270458, 40.264854, 48.964706>,  <42.100147, 40.408806, 48.875984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.270458, 40.264854, 48.964706>,  <42.554310, 40.024933, 49.112579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270458, 40.264854, 48.964706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343073, 0.164132, 0.924857,
		0.615405, 0.783136, 0.089302,
		-0.709632, 0.599799, -0.369681,
		42.057568, 40.444794, 48.853802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489273, 40.541763, 49.595982>,  <42.554310, 40.024933, 49.112579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489273, 40.541763, 49.595982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.142212, 40.573036, 49.399590>,  <41.933975, 40.591801, 49.281754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.142212, 40.573036, 49.399590>,  <42.489273, 40.541763, 49.595982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142212, 40.573036, 49.399590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438712, 0.344181, 0.830103,
		0.233885, 0.935642, -0.264331,
		-0.867658, 0.078183, -0.490976,
		41.881916, 40.596493, 49.252296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278923, 41.171455, 49.740700>,  <42.489273, 40.541763, 49.595982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278923, 41.171455, 49.740700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.963413, 40.965324, 49.606674>,  <41.774109, 40.841644, 49.526257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.963413, 40.965324, 49.606674>,  <42.278923, 41.171455, 49.740700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963413, 40.965324, 49.606674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530167, 0.294509, 0.795102,
		-0.311059, 0.804798, -0.505512,
		-0.788775, -0.515329, -0.335068,
		41.726780, 40.810726, 49.506153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739426, 41.667667, 49.726936>,  <42.278923, 41.171455, 49.740700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739426, 41.667667, 49.726936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552414, 41.314095, 49.723274>,  <41.440208, 41.101952, 49.721077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.552414, 41.314095, 49.723274>,  <41.739426, 41.667667, 49.726936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552414, 41.314095, 49.723274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417942, 0.211908, 0.883414,
		-0.778937, 0.416846, -0.468505,
		-0.467527, -0.883932, -0.009154,
		41.412155, 41.048916, 49.720528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171078, 41.825344, 50.023621>,  <41.739426, 41.667667, 49.726936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171078, 41.825344, 50.023621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.186684, 41.428009, 50.066978>,  <41.196045, 41.189606, 50.092995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.186684, 41.428009, 50.066978>,  <41.171078, 41.825344, 50.023621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186684, 41.428009, 50.066978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452571, 0.079151, 0.888208,
		-0.890875, -0.083707, -0.446470,
		0.039010, -0.993342, 0.108397,
		41.198387, 41.130005, 50.099499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528553, 41.614964, 50.261261>,  <41.171078, 41.825344, 50.023621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528553, 41.614964, 50.261261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753403, 41.296577, 50.351109>,  <40.888313, 41.105545, 50.405018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.753403, 41.296577, 50.351109>,  <40.528553, 41.614964, 50.261261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753403, 41.296577, 50.351109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449257, -0.065849, 0.890972,
		-0.694393, -0.601749, -0.394609,
		0.562126, -0.795966, 0.224615,
		40.922039, 41.057789, 50.418491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083694, 41.142448, 50.541424>,  <40.528553, 41.614964, 50.261261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083694, 41.142448, 50.541424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453506, 41.059654, 50.669430>,  <40.675392, 41.009975, 50.746231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.453506, 41.059654, 50.669430>,  <40.083694, 41.142448, 50.541424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453506, 41.059654, 50.669430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342262, -0.081559, 0.936058,
		-0.167656, -0.974937, -0.146248,
		0.924526, -0.206991, 0.320010,
		40.730865, 40.997559, 50.765434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980591, 40.621998, 50.943909>,  <40.083694, 41.142448, 50.541424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980591, 40.621998, 50.943909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350967, 40.714310, 51.063488>,  <40.573193, 40.769699, 51.135235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350967, 40.714310, 51.063488>,  <39.980591, 40.621998, 50.943909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350967, 40.714310, 51.063488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255483, -0.200194, 0.945860,
		0.278137, -0.952188, -0.126406,
		0.925941, 0.230784, 0.298949,
		40.628750, 40.783546, 51.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160168, 40.117004, 51.394245>,  <39.980591, 40.621998, 50.943909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160168, 40.117004, 51.394245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.416710, 40.413490, 51.473503>,  <40.570637, 40.591381, 51.521057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.416710, 40.413490, 51.473503>,  <40.160168, 40.117004, 51.394245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416710, 40.413490, 51.473503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213535, -0.075603, 0.974006,
		0.736929, -0.666995, 0.109787,
		0.641357, 0.741216, 0.198141,
		40.609116, 40.635857, 51.532944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.862656, 39.815556, 52.049801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.812988, 40.211655, 52.024498>,  <40.783188, 40.449314, 52.009315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.812988, 40.211655, 52.024498>,  <40.862656, 39.815556, 52.049801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812988, 40.211655, 52.024498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079675, 0.053592, 0.995379,
		0.989058, 0.128631, 0.072243,
		-0.124165, 0.990243, -0.063254,
		40.775738, 40.508728, 52.005520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254013, 40.124653, 52.592175>,  <40.862656, 39.815556, 52.049801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254013, 40.124653, 52.592175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958298, 40.376694, 52.497166>,  <40.780869, 40.527920, 52.440159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.958298, 40.376694, 52.497166>,  <41.254013, 40.124653, 52.592175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958298, 40.376694, 52.497166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257848, 0.060958, 0.964261,
		0.622062, 0.774116, 0.117405,
		-0.739293, 0.630102, -0.237524,
		40.736511, 40.565723, 52.425907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380440, 40.758297, 53.106884>,  <41.254013, 40.124653, 52.592175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380440, 40.758297, 53.106884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011909, 40.809891, 52.960178>,  <40.790791, 40.840847, 52.872154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.011909, 40.809891, 52.960178>,  <41.380440, 40.758297, 53.106884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011909, 40.809891, 52.960178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366774, 0.024570, 0.929986,
		0.128964, 0.991342, 0.024671,
		-0.921328, 0.128984, -0.366767,
		40.735512, 40.848587, 52.850147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021763, 41.232906, 53.618923>,  <41.380440, 40.758297, 53.106884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021763, 41.232906, 53.618923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716377, 41.076355, 53.413422>,  <40.533146, 40.982426, 53.290119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716377, 41.076355, 53.413422>,  <41.021763, 41.232906, 53.618923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716377, 41.076355, 53.413422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575599, 0.051541, 0.816106,
		-0.292924, 0.918787, -0.264624,
		-0.763467, -0.391375, -0.513755,
		40.487339, 40.958942, 53.259296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394508, 41.697861, 53.626511>,  <41.021763, 41.232906, 53.618923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394508, 41.697861, 53.626511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285324, 41.316414, 53.575745>,  <40.219814, 41.087547, 53.545284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285324, 41.316414, 53.575745>,  <40.394508, 41.697861, 53.626511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285324, 41.316414, 53.575745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585184, 0.059877, 0.808687,
		-0.763578, 0.295010, -0.574385,
		-0.272963, -0.953616, -0.126914,
		40.203434, 41.030331, 53.537670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666744, 41.614925, 53.628017>,  <40.394508, 41.697861, 53.626511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666744, 41.614925, 53.628017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789894, 41.244484, 53.715237>,  <39.863785, 41.022221, 53.767570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789894, 41.244484, 53.715237>,  <39.666744, 41.614925, 53.628017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789894, 41.244484, 53.715237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609109, -0.015795, 0.792929,
		-0.730891, -0.376936, -0.568962,
		0.307870, -0.926105, 0.218051,
		39.882256, 40.966652, 53.780651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045753, 41.368465, 53.852333>,  <39.666744, 41.614925, 53.628017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045753, 41.368465, 53.852333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330715, 41.108849, 53.959091>,  <39.501694, 40.953079, 54.023148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.330715, 41.108849, 53.959091>,  <39.045753, 41.368465, 53.852333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330715, 41.108849, 53.959091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434709, -0.109572, 0.893880,
		-0.550919, -0.752823, -0.360202,
		0.712402, -0.649038, 0.266894,
		39.544437, 40.914139, 54.039158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740242, 40.709198, 54.038845>,  <39.045753, 41.368465, 53.852333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740242, 40.709198, 54.038845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091965, 40.692932, 54.228653>,  <39.302998, 40.683174, 54.342537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091965, 40.692932, 54.228653>,  <38.740242, 40.709198, 54.038845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091965, 40.692932, 54.228653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460417, -0.327447, 0.825103,
		0.121831, -0.943994, -0.306646,
		0.879303, -0.040662, 0.474524,
		39.355755, 40.680733, 54.371010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798378, 40.031460, 54.463516>,  <38.740242, 40.709198, 54.038845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798378, 40.031460, 54.463516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066559, 40.262230, 54.650131>,  <39.227467, 40.400692, 54.762100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.066559, 40.262230, 54.650131>,  <38.798378, 40.031460, 54.463516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066559, 40.262230, 54.650131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399411, -0.249269, 0.882233,
		0.625276, -0.777831, 0.063309,
		0.670448, 0.576926, 0.466536,
		39.267693, 40.435307, 54.790092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997707, 39.614475, 55.019104>,  <38.798378, 40.031460, 54.463516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997707, 39.614475, 55.019104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094513, 39.982605, 55.142029>,  <39.152596, 40.203484, 55.215782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.094513, 39.982605, 55.142029>,  <38.997707, 39.614475, 55.019104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094513, 39.982605, 55.142029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363481, -0.207667, 0.908161,
		0.899617, -0.331487, 0.284261,
		0.242012, 0.920321, 0.307311,
		39.167118, 40.258701, 55.234222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159325, 39.572506, 55.765381>,  <38.997707, 39.614475, 55.019104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159325, 39.572506, 55.765381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.170109, 39.970566, 55.727520>,  <39.176579, 40.209400, 55.704803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.170109, 39.970566, 55.727520>,  <39.159325, 39.572506, 55.765381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170109, 39.970566, 55.727520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284728, 0.098408, 0.953544,
		0.958229, 0.001244, 0.285998,
		0.026958, 0.995146, -0.094652,
		39.178196, 40.269108, 55.699123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456070, 39.954693, 56.463497>,  <39.159325, 39.572506, 55.765381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456070, 39.954693, 56.463497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227734, 40.226685, 56.279419>,  <39.090733, 40.389877, 56.168972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.227734, 40.226685, 56.279419>,  <39.456070, 39.954693, 56.463497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227734, 40.226685, 56.279419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435995, 0.223900, 0.871652,
		0.695740, 0.698213, 0.168656,
		-0.570836, 0.679976, -0.460194,
		39.056484, 40.430676, 56.141361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497643, 40.546532, 56.882404>,  <39.456070, 39.954693, 56.463497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497643, 40.546532, 56.882404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162888, 40.539902, 56.663555>,  <38.962036, 40.535923, 56.532246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162888, 40.539902, 56.663555>,  <39.497643, 40.546532, 56.882404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162888, 40.539902, 56.663555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546901, 0.066808, 0.834527,
		0.022720, 0.997628, -0.064975,
		-0.836889, -0.016574, -0.547122,
		38.911819, 40.534931, 56.499420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104233, 41.135052, 57.169056>,  <39.497643, 40.546532, 56.882404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104233, 41.135052, 57.169056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843094, 40.903305, 56.973862>,  <38.686413, 40.764256, 56.856747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843094, 40.903305, 56.973862>,  <39.104233, 41.135052, 57.169056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843094, 40.903305, 56.973862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660554, 0.120110, 0.741108,
		-0.370761, 0.806169, -0.461115,
		-0.652843, -0.579366, -0.487987,
		38.647240, 40.729496, 56.827465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441387, 41.471455, 57.091572>,  <39.104233, 41.135052, 57.169056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441387, 41.471455, 57.091572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355362, 41.082565, 57.054626>,  <38.303745, 40.849232, 57.032459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355362, 41.082565, 57.054626>,  <38.441387, 41.471455, 57.091572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355362, 41.082565, 57.054626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791245, 0.118029, 0.600001,
		-0.572431, 0.202127, -0.794649,
		-0.215068, -0.972221, -0.092368,
		38.290840, 40.790897, 57.026917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727814, 41.473969, 57.129757>,  <38.441387, 41.471455, 57.091572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727814, 41.473969, 57.129757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827091, 41.091927, 57.194466>,  <37.886658, 40.862701, 57.233292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827091, 41.091927, 57.194466>,  <37.727814, 41.473969, 57.129757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827091, 41.091927, 57.194466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693810, -0.058726, 0.717760,
		-0.676038, -0.290379, -0.677239,
		0.248194, -0.955108, 0.161767,
		37.901550, 40.805393, 57.242996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114880, 41.095325, 57.154968>,  <37.727814, 41.473969, 57.129757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114880, 41.095325, 57.154968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379837, 40.861160, 57.341957>,  <37.538811, 40.720661, 57.454151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379837, 40.861160, 57.341957>,  <37.114880, 41.095325, 57.154968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379837, 40.861160, 57.341957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691310, -0.237212, 0.682511,
		-0.288664, -0.775254, -0.561832,
		0.662393, -0.585416, 0.467465,
		37.578556, 40.685535, 57.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811157, 40.446590, 57.335945>,  <37.114880, 41.095325, 57.154968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811157, 40.446590, 57.335945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110928, 40.493065, 57.596672>,  <37.290791, 40.520950, 57.753109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110928, 40.493065, 57.596672>,  <36.811157, 40.446590, 57.335945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110928, 40.493065, 57.596672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642955, -0.107257, 0.758356,
		0.158024, -0.987419, -0.005677,
		0.749424, 0.116189, 0.651815,
		37.335754, 40.527920, 57.792217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650146, 39.968391, 57.875618>,  <36.811157, 40.446590, 57.335945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650146, 39.968391, 57.875618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946411, 40.167931, 58.055649>,  <37.124168, 40.287655, 58.163666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.946411, 40.167931, 58.055649>,  <36.650146, 39.968391, 57.875618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946411, 40.167931, 58.055649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532243, 0.026802, 0.846167,
		0.410048, -0.866273, 0.285361,
		0.740660, 0.498851, 0.450077,
		37.168610, 40.317585, 58.190674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688015, 39.700840, 58.572094>,  <36.650146, 39.968391, 57.875618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688015, 39.700840, 58.572094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914547, 40.026642, 58.622456>,  <37.050468, 40.222122, 58.652672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.914547, 40.026642, 58.622456>,  <36.688015, 39.700840, 58.572094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914547, 40.026642, 58.622456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329913, 0.084050, 0.940262,
		0.755266, -0.574037, 0.316315,
		0.566331, 0.814504, 0.125902,
		37.084446, 40.270992, 58.660225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101635, 39.538189, 59.097054>,  <36.688015, 39.700840, 58.572094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101635, 39.538189, 59.097054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071716, 39.936287, 59.072079>,  <37.053764, 40.175144, 59.057095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071716, 39.936287, 59.072079>,  <37.101635, 39.538189, 59.097054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071716, 39.936287, 59.072079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241023, 0.042714, 0.969579,
		0.967633, 0.087572, 0.236681,
		-0.074798, 0.995242, -0.062439,
		37.049278, 40.234859, 59.053349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518772, 39.780800, 59.629192>,  <37.101635, 39.538189, 59.097054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518772, 39.780800, 59.629192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249088, 40.059990, 59.532631>,  <37.087276, 40.227505, 59.474693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249088, 40.059990, 59.532631>,  <37.518772, 39.780800, 59.629192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249088, 40.059990, 59.532631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311592, 0.027521, 0.949817,
		0.669590, 0.715595, 0.198928,
		-0.674209, 0.697973, -0.241402,
		37.046825, 40.269382, 59.460209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236309, 39.910561, 60.323238>,  <37.518772, 39.780800, 59.629192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236309, 39.910561, 60.323238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003952, 40.136848, 60.089134>,  <36.864536, 40.272621, 59.948673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.003952, 40.136848, 60.089134>,  <37.236309, 39.910561, 60.323238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003952, 40.136848, 60.089134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673790, 0.069215, 0.735674,
		0.456691, 0.821690, 0.340967,
		-0.580896, 0.565716, -0.585256,
		36.829681, 40.306564, 59.913559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021843, 40.522964, 60.770935>,  <37.236309, 39.910561, 60.323238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021843, 40.522964, 60.770935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783287, 40.375481, 60.485733>,  <36.640152, 40.286991, 60.314613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783287, 40.375481, 60.485733>,  <37.021843, 40.522964, 60.770935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783287, 40.375481, 60.485733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767903, 0.003399, 0.640557,
		-0.233754, 0.929540, -0.285157,
		-0.596392, -0.368705, -0.713002,
		36.604370, 40.264870, 60.271832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647846, 40.535549, 61.172100>,  <37.021843, 40.522964, 60.770935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647846, 40.535549, 61.172100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983604, 40.401840, 61.343529>,  <38.185059, 40.321617, 61.446388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.983604, 40.401840, 61.343529>,  <37.647846, 40.535549, 61.172100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983604, 40.401840, 61.343529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527275, 0.309482, -0.791329,
		0.131881, 0.890216, 0.436030,
		0.839398, -0.334269, 0.428574,
		38.235424, 40.301559, 61.472099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171803, 41.135094, 61.172543>,  <37.647846, 40.535549, 61.172100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171803, 41.135094, 61.172543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396103, 40.810699, 61.239315>,  <38.530682, 40.616062, 61.279377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.396103, 40.810699, 61.239315>,  <38.171803, 41.135094, 61.172543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396103, 40.810699, 61.239315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643054, 0.299558, -0.704803,
		0.521579, 0.502562, 0.689483,
		0.560748, -0.810985, 0.166932,
		38.564327, 40.567406, 61.289394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861446, 41.380413, 60.956635>,  <38.171803, 41.135094, 61.172543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861446, 41.380413, 60.956635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910851, 40.983589, 60.966064>,  <38.940491, 40.745495, 60.971722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910851, 40.983589, 60.966064>,  <38.861446, 41.380413, 60.956635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910851, 40.983589, 60.966064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658066, 0.064097, -0.750228,
		0.742762, 0.108173, 0.660759,
		0.123507, -0.992064, 0.023576,
		38.947903, 40.685970, 60.973137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542065, 41.334167, 61.005592>,  <38.861446, 41.380413, 60.956635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542065, 41.334167, 61.005592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403534, 40.995216, 60.844589>,  <39.320415, 40.791847, 60.747986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.403534, 40.995216, 60.844589>,  <39.542065, 41.334167, 61.005592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403534, 40.995216, 60.844589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764957, -0.006716, -0.644046,
		0.543047, -0.530949, 0.650533,
		-0.346325, -0.847377, -0.402506,
		39.299637, 40.741005, 60.723839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120934, 40.868843, 60.820259>,  <39.542065, 41.334167, 61.005592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120934, 40.868843, 60.820259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817383, 40.730171, 60.599747>,  <39.635250, 40.646969, 60.467438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817383, 40.730171, 60.599747>,  <40.120934, 40.868843, 60.820259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817383, 40.730171, 60.599747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621029, -0.130444, -0.772856,
		0.196026, -0.928867, 0.314292,
		-0.758879, -0.346685, -0.551283,
		39.589718, 40.626167, 60.434361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317978, 40.252113, 60.415108>,  <40.120934, 40.868843, 60.820259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317978, 40.252113, 60.415108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998371, 40.354843, 60.197628>,  <39.806606, 40.416481, 60.067139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.998371, 40.354843, 60.197628>,  <40.317978, 40.252113, 60.415108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998371, 40.354843, 60.197628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528979, -0.129718, -0.838663,
		-0.285917, -0.957713, -0.032208,
		-0.799020, 0.256825, -0.543698,
		39.758663, 40.431889, 60.034519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290138, 39.743469, 59.916321>,  <40.317978, 40.252113, 60.415108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290138, 39.743469, 59.916321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062378, 40.033218, 59.760849>,  <39.925724, 40.207069, 59.667564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.062378, 40.033218, 59.760849>,  <40.290138, 39.743469, 59.916321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062378, 40.033218, 59.760849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382013, -0.185504, -0.905348,
		-0.727910, -0.663984, -0.171094,
		-0.569398, 0.724371, -0.388681,
		39.891560, 40.250530, 59.644245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917500, 39.570358, 59.282707>,  <40.290138, 39.743469, 59.916321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917500, 39.570358, 59.282707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972580, 39.966011, 59.262096>,  <40.005630, 40.203403, 59.249729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972580, 39.966011, 59.262096>,  <39.917500, 39.570358, 59.282707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972580, 39.966011, 59.262096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480624, -0.112215, -0.869717,
		-0.866047, 0.095000, -0.490854,
		0.137704, 0.989132, -0.051525,
		40.013893, 40.262753, 59.246639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929958, 39.648426, 58.581806>,  <39.917500, 39.570358, 59.282707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929958, 39.648426, 58.581806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022934, 40.022926, 58.687195>,  <40.078720, 40.247627, 58.750427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.022934, 40.022926, 58.687195>,  <39.929958, 39.648426, 58.581806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022934, 40.022926, 58.687195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349320, 0.172454, -0.920997,
		-0.907717, 0.306106, -0.286966,
		0.232434, 0.936247, 0.263468,
		40.092663, 40.303799, 58.766235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568123, 40.208050, 58.115284>,  <39.929958, 39.648426, 58.581806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568123, 40.208050, 58.115284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896626, 40.374123, 58.271828>,  <40.093727, 40.473766, 58.365753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896626, 40.374123, 58.271828>,  <39.568123, 40.208050, 58.115284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896626, 40.374123, 58.271828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329133, 0.215552, -0.919353,
		-0.466054, 0.883835, 0.040375,
		0.821259, 0.415179, 0.391357,
		40.143002, 40.498676, 58.389236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611412, 40.890209, 57.866039>,  <39.568123, 40.208050, 58.115284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611412, 40.890209, 57.866039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979134, 40.773735, 57.971939>,  <40.199764, 40.703850, 58.035480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979134, 40.773735, 57.971939>,  <39.611412, 40.890209, 57.866039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979134, 40.773735, 57.971939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319076, 0.157664, -0.934523,
		0.230381, 0.943584, 0.237852,
		0.919302, -0.291189, 0.264752,
		40.254925, 40.686378, 58.051365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162266, 41.418018, 57.604851>,  <39.611412, 40.890209, 57.866039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162266, 41.418018, 57.604851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354515, 41.078987, 57.694843>,  <40.469864, 40.875568, 57.748840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.354515, 41.078987, 57.694843>,  <40.162266, 41.418018, 57.604851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354515, 41.078987, 57.694843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584776, 0.118587, -0.802480,
		0.653485, 0.517251, 0.552639,
		0.480619, -0.847578, 0.224981,
		40.498699, 40.824715, 57.762337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830296, 41.551830, 57.531956>,  <40.162266, 41.418018, 57.604851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830296, 41.551830, 57.531956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.831551, 41.152374, 57.511124>,  <40.832306, 40.912701, 57.498623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.831551, 41.152374, 57.511124>,  <40.830296, 41.551830, 57.531956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831551, 41.152374, 57.511124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509909, 0.046401, -0.858976,
		0.860223, -0.023857, 0.509360,
		0.003142, -0.998638, -0.052080,
		40.832493, 40.852783, 57.495499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410236, 41.440514, 57.189644>,  <40.830296, 41.551830, 57.531956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410236, 41.440514, 57.189644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245083, 41.079117, 57.143639>,  <41.145992, 40.862278, 57.116035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.245083, 41.079117, 57.143639>,  <41.410236, 41.440514, 57.189644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245083, 41.079117, 57.143639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414460, -0.073934, -0.907059,
		0.811018, -0.422178, 0.404988,
		-0.412883, -0.903493, -0.115014,
		41.121220, 40.808067, 57.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942345, 41.081722, 56.855431>,  <41.410236, 41.440514, 57.189644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942345, 41.081722, 56.855431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598053, 40.888237, 56.791985>,  <41.391476, 40.772144, 56.753918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.598053, 40.888237, 56.791985>,  <41.942345, 41.081722, 56.855431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.598053, 40.888237, 56.791985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271591, -0.172816, -0.946770,
		0.430554, -0.857995, 0.280121,
		-0.860733, -0.483713, -0.158617,
		41.339832, 40.743122, 56.744400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112110, 40.584129, 56.538979>,  <41.942345, 41.081722, 56.855431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112110, 40.584129, 56.538979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.723221, 40.589722, 56.445522>,  <41.489887, 40.593075, 56.389450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.723221, 40.589722, 56.445522>,  <42.112110, 40.584129, 56.538979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723221, 40.589722, 56.445522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215200, -0.339133, -0.915794,
		-0.092033, -0.940635, 0.326706,
		-0.972224, 0.013977, -0.233636,
		41.431553, 40.593914, 56.375431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990501, 39.898518, 56.150459>,  <42.112110, 40.584129, 56.538979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990501, 39.898518, 56.150459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725632, 40.172852, 56.029697>,  <41.566708, 40.337452, 55.957241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.725632, 40.172852, 56.029697>,  <41.990501, 39.898518, 56.150459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725632, 40.172852, 56.029697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251562, -0.176052, -0.951694,
		-0.705858, -0.706140, -0.055953,
		-0.662179, 0.685837, -0.301905,
		41.526978, 40.378601, 55.939125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513332, 39.527622, 55.762470>,  <41.990501, 39.898518, 56.150459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513332, 39.527622, 55.762470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540466, 39.911308, 55.652699>,  <41.556747, 40.141518, 55.586834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.540466, 39.911308, 55.652699>,  <41.513332, 39.527622, 55.762470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540466, 39.911308, 55.652699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242076, -0.282671, -0.928168,
		-0.967883, -0.003475, -0.251376,
		0.067831, 0.959211, -0.274434,
		41.560814, 40.199070, 55.570370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183323, 39.585373, 55.069561>,  <41.513332, 39.527622, 55.762470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183323, 39.585373, 55.069561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428146, 39.901009, 55.090424>,  <41.575039, 40.090389, 55.102943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428146, 39.901009, 55.090424>,  <41.183323, 39.585373, 55.069561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428146, 39.901009, 55.090424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380558, -0.236078, -0.894116,
		-0.693225, 0.567100, -0.444788,
		0.612058, 0.789091, 0.052159,
		41.611763, 40.137737, 55.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388073, 39.780846, 54.432018>,  <41.183323, 39.585373, 55.069561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388073, 39.780846, 54.432018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.667015, 40.017960, 54.593163>,  <41.834381, 40.160229, 54.689850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.667015, 40.017960, 54.593163>,  <41.388073, 39.780846, 54.432018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667015, 40.017960, 54.593163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509950, -0.015397, -0.860066,
		-0.503635, 0.805210, -0.313030,
		0.697354, 0.592789, 0.402863,
		41.876221, 40.195797, 54.714020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.558369, 40.385979, 49.095062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928741, 40.480461, 49.212952>,  <41.150963, 40.537151, 49.283688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.928741, 40.480461, 49.212952>,  <40.558369, 40.385979, 49.095062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928741, 40.480461, 49.212952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297076, 0.026424, -0.954488,
		-0.233248, 0.971343, -0.045705,
		0.925927, 0.236210, 0.294726,
		41.206520, 40.551323, 49.301369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763897, 40.851112, 48.639236>,  <40.558369, 40.385979, 49.095062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763897, 40.851112, 48.639236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110321, 40.747017, 48.809986>,  <41.318176, 40.684559, 48.912437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.110321, 40.747017, 48.809986>,  <40.763897, 40.851112, 48.639236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110321, 40.747017, 48.809986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445427, 0.013916, -0.895210,
		0.227029, 0.965444, 0.127969,
		0.866056, -0.260240, 0.426875,
		41.370136, 40.668945, 48.938049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136585, 41.373379, 48.479145>,  <40.763897, 40.851112, 48.639236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136585, 41.373379, 48.479145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393711, 41.079712, 48.566593>,  <41.547985, 40.903511, 48.619064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.393711, 41.079712, 48.566593>,  <41.136585, 41.373379, 48.479145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393711, 41.079712, 48.566593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598623, 0.303371, -0.741361,
		0.477956, 0.607430, 0.634498,
		0.642813, -0.734163, 0.218623,
		41.586555, 40.859463, 48.632179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735332, 41.553844, 48.199856>,  <41.136585, 41.373379, 48.479145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735332, 41.553844, 48.199856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870735, 41.186768, 48.283058>,  <41.951977, 40.966522, 48.332977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.870735, 41.186768, 48.283058>,  <41.735332, 41.553844, 48.199856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870735, 41.186768, 48.283058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689652, 0.091573, -0.718328,
		0.640154, 0.386604, 0.663883,
		0.338502, -0.917688, 0.208002,
		41.972286, 40.911461, 48.345459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500813, 41.566692, 48.362099>,  <41.735332, 41.553844, 48.199856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500813, 41.566692, 48.362099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398148, 41.202698, 48.231834>,  <42.336548, 40.984303, 48.153675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398148, 41.202698, 48.231834>,  <42.500813, 41.566692, 48.362099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398148, 41.202698, 48.231834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703333, 0.055254, -0.708709,
		0.662908, -0.410946, 0.625840,
		-0.256661, -0.909984, -0.325660,
		42.321148, 40.929703, 48.134136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122162, 41.278797, 48.201191>,  <42.500813, 41.566692, 48.362099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122162, 41.278797, 48.201191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854218, 41.045219, 48.017757>,  <42.693451, 40.905075, 47.907700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.854218, 41.045219, 48.017757>,  <43.122162, 41.278797, 48.201191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854218, 41.045219, 48.017757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579979, -0.025895, -0.814220,
		0.463583, -0.811382, 0.356020,
		-0.669863, -0.583942, -0.458580,
		42.653259, 40.870037, 47.880184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537865, 40.864258, 47.819057>,  <43.122162, 41.278797, 48.201191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537865, 40.864258, 47.819057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183239, 40.824043, 47.638439>,  <42.970463, 40.799915, 47.530067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.183239, 40.824043, 47.638439>,  <43.537865, 40.864258, 47.819057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183239, 40.824043, 47.638439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457527, -0.046309, -0.887989,
		0.068364, -0.993855, 0.087054,
		-0.886564, -0.100536, -0.451550,
		42.917271, 40.793884, 47.502975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.585274, 40.216946, 47.469967>,  <43.537865, 40.864258, 47.819057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.585274, 40.216946, 47.469967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297966, 40.438438, 47.301460>,  <43.125580, 40.571335, 47.200356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.297966, 40.438438, 47.301460>,  <43.585274, 40.216946, 47.469967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297966, 40.438438, 47.301460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439490, -0.108297, -0.891695,
		-0.539382, -0.825623, -0.165573,
		-0.718273, 0.553733, -0.421266,
		43.082485, 40.604557, 47.175079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311779, 39.932156, 46.739094>,  <43.585274, 40.216946, 47.469967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311779, 39.932156, 46.739094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240578, 40.325768, 46.738663>,  <43.197857, 40.561935, 46.738403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240578, 40.325768, 46.738663>,  <43.311779, 39.932156, 46.739094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240578, 40.325768, 46.738663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394213, 0.070304, -0.916326,
		-0.901616, -0.163536, -0.400432,
		-0.178004, 0.984029, -0.001081,
		43.187176, 40.620975, 46.738338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056103, 40.036343, 46.038303>,  <43.311779, 39.932156, 46.739094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056103, 40.036343, 46.038303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173607, 40.396324, 46.167164>,  <43.244110, 40.612312, 46.244480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173607, 40.396324, 46.167164>,  <43.056103, 40.036343, 46.038303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173607, 40.396324, 46.167164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354603, 0.210371, -0.911044,
		-0.887672, 0.381863, -0.257329,
		0.293760, 0.899958, 0.322151,
		43.261734, 40.666313, 46.263809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865749, 40.482185, 45.448071>,  <43.056103, 40.036343, 46.038303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865749, 40.482185, 45.448071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134941, 40.668137, 45.678192>,  <43.296455, 40.779709, 45.816265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134941, 40.668137, 45.678192>,  <42.865749, 40.482185, 45.448071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134941, 40.668137, 45.678192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397382, 0.428774, -0.811321,
		-0.623845, 0.774622, 0.103822,
		0.672982, 0.464881, 0.575309,
		43.336834, 40.807602, 45.850784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739216, 41.267391, 45.306267>,  <42.865749, 40.482185, 45.448071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739216, 41.267391, 45.306267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110146, 41.230675, 45.451397>,  <43.332703, 41.208645, 45.538475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110146, 41.230675, 45.451397>,  <42.739216, 41.267391, 45.306267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110146, 41.230675, 45.451397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353539, 0.532917, -0.768771,
		-0.122786, 0.841174, 0.526641,
		0.927326, -0.091794, 0.362822,
		43.388344, 41.203136, 45.560242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129169, 41.948254, 45.311375>,  <42.739216, 41.267391, 45.306267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129169, 41.948254, 45.311375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395832, 41.651428, 45.283318>,  <43.555828, 41.473335, 45.266483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395832, 41.651428, 45.283318>,  <43.129169, 41.948254, 45.311375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395832, 41.651428, 45.283318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378332, 0.417956, -0.825940,
		0.642213, 0.524080, 0.559377,
		0.666654, -0.742060, -0.070141,
		43.595829, 41.428810, 45.262276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831406, 42.288879, 45.130978>,  <43.129169, 41.948254, 45.311375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831406, 42.288879, 45.130978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793858, 41.904121, 45.028252>,  <43.771328, 41.673267, 44.966618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793858, 41.904121, 45.028252>,  <43.831406, 42.288879, 45.130978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793858, 41.904121, 45.028252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527966, 0.170601, -0.831954,
		0.844062, -0.213681, 0.491832,
		-0.093866, -0.961892, -0.256814,
		43.765697, 41.615555, 44.951206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548206, 42.910332, 45.131611>,  <43.831406, 42.288879, 45.130978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548206, 42.910332, 45.131611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532326, 43.309624, 45.149338>,  <43.522797, 43.549198, 45.159973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532326, 43.309624, 45.149338>,  <43.548206, 42.910332, 45.131611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532326, 43.309624, 45.149338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213474, -0.051806, 0.975574,
		0.976142, 0.029269, 0.215152,
		-0.039700, 0.998228, 0.044322,
		43.520416, 43.609093, 45.162636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024117, 43.151993, 45.641102>,  <43.548206, 42.910332, 45.131611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024117, 43.151993, 45.641102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767281, 43.457329, 45.612724>,  <43.613178, 43.640530, 45.595699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.767281, 43.457329, 45.612724>,  <44.024117, 43.151993, 45.641102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767281, 43.457329, 45.612724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108807, 0.000864, 0.994062,
		0.758870, 0.645995, 0.082502,
		-0.642088, 0.763341, -0.070945,
		43.574654, 43.686333, 45.591442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084209, 43.592545, 46.242352>,  <44.024117, 43.151993, 45.641102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084209, 43.592545, 46.242352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716354, 43.673279, 46.107574>,  <43.495640, 43.721722, 46.026707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.716354, 43.673279, 46.107574>,  <44.084209, 43.592545, 46.242352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716354, 43.673279, 46.107574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318948, 0.116877, 0.940538,
		0.229218, 0.972420, -0.043108,
		-0.919636, 0.201840, -0.336942,
		43.440464, 43.733829, 46.006493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801472, 44.168247, 46.611233>,  <44.084209, 43.592545, 46.242352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801472, 44.168247, 46.611233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469330, 44.039299, 46.429420>,  <43.270046, 43.961929, 46.320335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.469330, 44.039299, 46.429420>,  <43.801472, 44.168247, 46.611233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469330, 44.039299, 46.429420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528240, 0.195651, 0.826247,
		-0.177430, 0.926173, -0.332749,
		-0.830350, -0.322372, -0.454527,
		43.220226, 43.942589, 46.293064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261269, 44.686302, 46.720535>,  <43.801472, 44.168247, 46.611233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261269, 44.686302, 46.720535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082748, 44.339714, 46.631058>,  <42.975636, 44.131760, 46.577374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.082748, 44.339714, 46.631058>,  <43.261269, 44.686302, 46.720535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082748, 44.339714, 46.631058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619932, 0.119091, 0.775566,
		-0.645368, 0.484809, -0.590305,
		-0.446301, -0.866474, -0.223691,
		42.948856, 44.079773, 46.563950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579651, 44.863113, 46.804226>,  <43.261269, 44.686302, 46.720535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579651, 44.863113, 46.804226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561291, 44.463600, 46.797028>,  <42.550274, 44.223892, 46.792709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.561291, 44.463600, 46.797028>,  <42.579651, 44.863113, 46.804226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561291, 44.463600, 46.797028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744728, 0.022207, 0.666999,
		-0.665788, 0.044024, -0.744841,
		-0.045905, -0.998784, -0.018000,
		42.547520, 44.163963, 46.791626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901581, 44.662743, 46.689877>,  <42.579651, 44.863113, 46.804226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901581, 44.662743, 46.689877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078056, 44.338943, 46.844826>,  <42.183941, 44.144665, 46.937794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078056, 44.338943, 46.844826>,  <41.901581, 44.662743, 46.689877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078056, 44.338943, 46.844826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700775, -0.041127, 0.712196,
		-0.560592, -0.585676, -0.585423,
		0.441193, -0.809501, 0.387372,
		42.210415, 44.096092, 46.961037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324608, 44.282146, 46.766621>,  <41.901581, 44.662743, 46.689877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324608, 44.282146, 46.766621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590408, 44.112839, 47.012966>,  <41.749889, 44.011253, 47.160774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.590408, 44.112839, 47.012966>,  <41.324608, 44.282146, 46.766621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590408, 44.112839, 47.012966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688440, -0.026171, 0.724821,
		-0.290674, -0.905628, -0.308783,
		0.664499, -0.423265, 0.615863,
		41.789757, 43.985859, 47.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997776, 43.593048, 47.076645>,  <41.324608, 44.282146, 46.766621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997776, 43.593048, 47.076645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292690, 43.735825, 47.306080>,  <41.469639, 43.821491, 47.443741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292690, 43.735825, 47.306080>,  <40.997776, 43.593048, 47.076645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292690, 43.735825, 47.306080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554974, -0.164151, 0.815511,
		0.385241, -0.919592, 0.077065,
		0.737287, 0.356937, 0.573588,
		41.513878, 43.842907, 47.478157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985184, 43.196121, 47.745323>,  <40.997776, 43.593048, 47.076645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985184, 43.196121, 47.745323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212811, 43.499619, 47.872108>,  <41.349388, 43.681717, 47.948177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.212811, 43.499619, 47.872108>,  <40.985184, 43.196121, 47.745323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212811, 43.499619, 47.872108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392519, -0.088055, 0.915519,
		0.722557, -0.645407, 0.247713,
		0.569070, 0.758747, 0.316959,
		41.383530, 43.727242, 47.967197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171021, 42.952530, 48.395359>,  <40.985184, 43.196121, 47.745323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171021, 42.952530, 48.395359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.238266, 43.346832, 48.397205>,  <41.278614, 43.583412, 48.398315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.238266, 43.346832, 48.397205>,  <41.171021, 42.952530, 48.395359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238266, 43.346832, 48.397205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346439, 0.054696, 0.936476,
		0.922885, -0.159036, 0.350700,
		0.168115, 0.985756, 0.004618,
		41.288700, 43.642559, 48.398590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512844, 43.095940, 49.090466>,  <41.171021, 42.952530, 48.395359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512844, 43.095940, 49.090466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316277, 43.416725, 48.954605>,  <41.198338, 43.609196, 48.873089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316277, 43.416725, 48.954605>,  <41.512844, 43.095940, 49.090466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316277, 43.416725, 48.954605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265129, 0.233722, 0.935457,
		0.829586, 0.549753, 0.097768,
		-0.491420, 0.801963, -0.339648,
		41.168850, 43.657314, 48.852711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573563, 43.484932, 49.590008>,  <41.512844, 43.095940, 49.090466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573563, 43.484932, 49.590008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.284721, 43.676598, 49.390423>,  <41.111416, 43.791595, 49.270672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.284721, 43.676598, 49.390423>,  <41.573563, 43.484932, 49.590008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284721, 43.676598, 49.390423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387399, 0.317476, 0.865524,
		0.573135, 0.818299, -0.043624,
		-0.722106, 0.479162, -0.498965,
		41.068089, 43.820347, 49.240734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640198, 44.241211, 49.714840>,  <41.573563, 43.484932, 49.590008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640198, 44.241211, 49.714840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254906, 44.200874, 49.615231>,  <41.023731, 44.176670, 49.555466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254906, 44.200874, 49.615231>,  <41.640198, 44.241211, 49.714840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254906, 44.200874, 49.615231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266090, 0.229918, 0.936127,
		-0.037147, 0.967971, -0.248298,
		-0.963232, -0.100844, -0.249027,
		40.965935, 44.170620, 49.540524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953671, 44.992619, 49.596298>,  <41.640198, 44.241211, 49.714840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953671, 44.992619, 49.596298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183601, 45.305176, 49.693455>,  <42.321560, 45.492710, 49.751747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183601, 45.305176, 49.693455>,  <41.953671, 44.992619, 49.596298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183601, 45.305176, 49.693455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682791, -0.294443, -0.668655,
		-0.450969, 0.550201, -0.702784,
		0.574825, 0.781397, 0.242888,
		42.356049, 45.539597, 49.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168579, 45.213272, 48.965977>,  <41.953671, 44.992619, 49.596298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168579, 45.213272, 48.965977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422600, 45.382179, 49.224712>,  <42.575012, 45.483524, 49.379951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422600, 45.382179, 49.224712>,  <42.168579, 45.213272, 48.965977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422600, 45.382179, 49.224712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765167, -0.228996, -0.601732,
		-0.105970, 0.877069, -0.468531,
		0.635051, 0.422269, 0.646837,
		42.613113, 45.508862, 49.418762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451260, 45.701084, 48.602371>,  <42.168579, 45.213272, 48.965977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451260, 45.701084, 48.602371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707325, 45.628304, 48.900925>,  <42.860962, 45.584633, 49.080055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.707325, 45.628304, 48.900925>,  <42.451260, 45.701084, 48.602371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707325, 45.628304, 48.900925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731444, -0.152725, -0.664578,
		0.234915, 0.971374, 0.035321,
		0.640160, -0.181955, 0.746383,
		42.899372, 45.573719, 49.124840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110432, 46.126572, 48.464603>,  <42.451260, 45.701084, 48.602371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110432, 46.126572, 48.464603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210316, 45.825211, 48.707924>,  <43.270248, 45.644394, 48.853916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.210316, 45.825211, 48.707924>,  <43.110432, 46.126572, 48.464603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210316, 45.825211, 48.707924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803087, -0.189848, -0.564809,
		0.541012, 0.629558, 0.557640,
		0.249713, -0.753402, 0.608300,
		43.285229, 45.599190, 48.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863888, 46.153854, 48.502636>,  <43.110432, 46.126572, 48.464603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863888, 46.153854, 48.502636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775768, 45.778770, 48.610092>,  <43.722897, 45.553719, 48.674564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.775768, 45.778770, 48.610092>,  <43.863888, 46.153854, 48.502636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775768, 45.778770, 48.610092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840008, -0.322370, -0.436421,
		0.495839, 0.129519, 0.858702,
		-0.220295, -0.937711, 0.268640,
		43.709679, 45.497456, 48.690685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542114, 45.850018, 48.691166>,  <43.863888, 46.153854, 48.502636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542114, 45.850018, 48.691166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299553, 45.536339, 48.638546>,  <44.154015, 45.348129, 48.606976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299553, 45.536339, 48.638546>,  <44.542114, 45.850018, 48.691166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299553, 45.536339, 48.638546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752893, -0.513043, -0.412235,
		0.255786, -0.349022, 0.901531,
		-0.606403, -0.784200, -0.131547,
		44.117630, 45.301079, 48.599083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961563, 45.217804, 48.807537>,  <44.542114, 45.850018, 48.691166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961563, 45.217804, 48.807537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645599, 45.118965, 48.583046>,  <44.456020, 45.059662, 48.448349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645599, 45.118965, 48.583046>,  <44.961563, 45.217804, 48.807537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645599, 45.118965, 48.583046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580430, -0.596544, -0.554289,
		-0.197833, -0.763594, 0.614642,
		-0.789913, -0.247100, -0.561230,
		44.408627, 45.044834, 48.414677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155350, 44.492481, 48.620037>,  <44.961563, 45.217804, 48.807537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155350, 44.492481, 48.620037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865883, 44.616089, 48.373196>,  <44.692204, 44.690254, 48.225090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.865883, 44.616089, 48.373196>,  <45.155350, 44.492481, 48.620037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865883, 44.616089, 48.373196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515453, -0.352582, -0.781021,
		-0.458931, -0.883285, 0.095866,
		-0.723665, 0.309020, -0.617103,
		44.648785, 44.708794, 48.188065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172806, 43.848381, 48.288010>,  <45.155350, 44.492481, 48.620037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172806, 43.848381, 48.288010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.012119, 44.146378, 48.074989>,  <44.915707, 44.325176, 47.947178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.012119, 44.146378, 48.074989>,  <45.172806, 43.848381, 48.288010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012119, 44.146378, 48.074989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543840, -0.273809, -0.793263,
		-0.736793, -0.608288, -0.295164,
		-0.401714, 0.744993, -0.532551,
		44.891605, 44.369877, 47.915222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075172, 43.502544, 47.613071>,  <45.172806, 43.848381, 48.288010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075172, 43.502544, 47.613071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066833, 43.899437, 47.564007>,  <45.061832, 44.137573, 47.534569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066833, 43.899437, 47.564007>,  <45.075172, 43.502544, 47.613071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066833, 43.899437, 47.564007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447668, -0.100436, -0.888542,
		-0.893957, -0.073432, -0.442096,
		-0.020845, 0.992230, -0.122658,
		45.060581, 44.197105, 47.527210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972099, 43.497036, 46.901016>,  <45.075172, 43.502544, 47.613071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972099, 43.497036, 46.901016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109467, 43.863541, 46.983517>,  <45.191887, 44.083443, 47.033016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109467, 43.863541, 46.983517>,  <44.972099, 43.497036, 46.901016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109467, 43.863541, 46.983517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607985, -0.049502, -0.792404,
		-0.715836, 0.397520, -0.574071,
		0.343414, 0.916258, 0.206250,
		45.212490, 44.138416, 47.045391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986301, 43.783989, 46.280388>,  <44.972099, 43.497036, 46.901016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986301, 43.783989, 46.280388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213604, 44.021339, 46.508415>,  <45.349987, 44.163750, 46.645233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.213604, 44.021339, 46.508415>,  <44.986301, 43.783989, 46.280388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213604, 44.021339, 46.508415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612603, 0.157457, -0.774548,
		-0.549362, 0.789372, -0.274029,
		0.568259, 0.593379, 0.570073,
		45.384083, 44.199352, 46.679436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.852608, 45.606213, 52.589787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218666, 45.576660, 52.748306>,  <40.438301, 45.558929, 52.843418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218666, 45.576660, 52.748306>,  <39.852608, 45.606213, 52.589787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218666, 45.576660, 52.748306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398463, 0.314931, -0.861421,
		-0.061162, 0.946235, 0.317646,
		0.915143, -0.073884, 0.396302,
		40.493210, 45.554497, 52.867195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225563, 46.252686, 52.484077>,  <39.852608, 45.606213, 52.589787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225563, 46.252686, 52.484077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513405, 45.977226, 52.519699>,  <40.686108, 45.811951, 52.541073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513405, 45.977226, 52.519699>,  <40.225563, 46.252686, 52.484077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513405, 45.977226, 52.519699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429547, 0.340698, -0.836310,
		0.545585, 0.640065, 0.540976,
		0.719602, -0.688652, 0.089058,
		40.729286, 45.770630, 52.546417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764187, 46.584457, 52.139915>,  <40.225563, 46.252686, 52.484077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764187, 46.584457, 52.139915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870621, 46.199486, 52.161579>,  <40.934479, 45.968502, 52.174580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870621, 46.199486, 52.161579>,  <40.764187, 46.584457, 52.139915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870621, 46.199486, 52.161579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660313, 0.141045, -0.737627,
		0.702273, 0.232034, 0.673033,
		0.266082, -0.962428, 0.054163,
		40.950447, 45.910759, 52.177830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561436, 46.661751, 52.062183>,  <40.764187, 46.584457, 52.139915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561436, 46.661751, 52.062183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487343, 46.272308, 52.008846>,  <41.442886, 46.038643, 51.976845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487343, 46.272308, 52.008846>,  <41.561436, 46.661751, 52.062183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487343, 46.272308, 52.008846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645642, -0.018283, -0.763421,
		0.740834, -0.227501, 0.631988,
		-0.185234, -0.973606, -0.133340,
		41.431774, 45.980225, 51.968845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183681, 46.305458, 52.039223>,  <41.561436, 46.661751, 52.062183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183681, 46.305458, 52.039223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916901, 46.076965, 51.847862>,  <41.756832, 45.939869, 51.733047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916901, 46.076965, 51.847862>,  <42.183681, 46.305458, 52.039223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916901, 46.076965, 51.847862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679016, -0.201616, -0.705895,
		0.306778, -0.795640, 0.522345,
		-0.666952, -0.571234, -0.478401,
		41.716816, 45.905594, 51.704342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627247, 45.846043, 51.661354>,  <42.183681, 46.305458, 52.039223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627247, 45.846043, 51.661354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268848, 45.779732, 51.496567>,  <42.053810, 45.739944, 51.397694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268848, 45.779732, 51.496567>,  <42.627247, 45.846043, 51.661354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268848, 45.779732, 51.496567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430466, -0.096380, -0.897446,
		0.109070, -0.981442, 0.157717,
		-0.895993, -0.165776, -0.411965,
		42.000050, 45.730000, 51.372978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579334, 45.216568, 51.319092>,  <42.627247, 45.846043, 51.661354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579334, 45.216568, 51.319092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320793, 45.463753, 51.140053>,  <42.165668, 45.612064, 51.032631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320793, 45.463753, 51.140053>,  <42.579334, 45.216568, 51.319092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320793, 45.463753, 51.140053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371066, -0.258003, -0.892045,
		-0.666734, -0.742667, -0.062543,
		-0.646356, 0.617964, -0.447598,
		42.126884, 45.649143, 51.005772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411789, 44.922401, 50.801521>,  <42.579334, 45.216568, 51.319092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411789, 44.922401, 50.801521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264153, 45.271721, 50.674320>,  <42.175571, 45.481312, 50.598000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264153, 45.271721, 50.674320>,  <42.411789, 44.922401, 50.801521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264153, 45.271721, 50.674320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353993, -0.184277, -0.916914,
		-0.859339, -0.450992, -0.241127,
		-0.369086, 0.873297, -0.318004,
		42.153427, 45.533710, 50.578918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931057, 44.891472, 50.329781>,  <42.411789, 44.922401, 50.801521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931057, 44.891472, 50.329781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078541, 45.256546, 50.259281>,  <42.167030, 45.475590, 50.216984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078541, 45.256546, 50.259281>,  <41.931057, 44.891472, 50.329781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078541, 45.256546, 50.259281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503520, -0.355480, -0.787466,
		-0.781359, 0.201603, -0.590623,
		0.368710, 0.912683, -0.176246,
		42.189152, 45.530350, 50.206406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112282, 44.713062, 50.230896>,  <41.931057, 44.891472, 50.329781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112282, 44.713062, 50.230896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890160, 44.442055, 50.037983>,  <40.756886, 44.279449, 49.922234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890160, 44.442055, 50.037983>,  <41.112282, 44.713062, 50.230896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890160, 44.442055, 50.037983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664975, 0.013468, 0.746744,
		-0.499441, 0.735378, -0.458015,
		-0.555308, -0.677524, -0.482281,
		40.723568, 44.238796, 49.893299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421059, 44.935169, 50.307945>,  <41.112282, 44.713062, 50.230896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421059, 44.935169, 50.307945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370361, 44.546921, 50.226143>,  <40.339943, 44.313972, 50.177063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370361, 44.546921, 50.226143>,  <40.421059, 44.935169, 50.307945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370361, 44.546921, 50.226143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631810, -0.079937, 0.770990,
		-0.764690, 0.226928, -0.603119,
		-0.126747, -0.970626, -0.204502,
		40.332336, 44.255733, 50.164791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802856, 44.939240, 50.423656>,  <40.421059, 44.935169, 50.307945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802856, 44.939240, 50.423656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902397, 44.551949, 50.413750>,  <39.962124, 44.319576, 50.407806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902397, 44.551949, 50.413750>,  <39.802856, 44.939240, 50.423656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902397, 44.551949, 50.413750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422155, -0.131451, 0.896942,
		-0.871697, -0.212752, -0.441453,
		0.248856, -0.968224, -0.024771,
		39.977055, 44.261482, 50.406319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187595, 44.385990, 50.517490>,  <39.802856, 44.939240, 50.423656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187595, 44.385990, 50.517490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533722, 44.234459, 50.648777>,  <39.741398, 44.143539, 50.727547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533722, 44.234459, 50.648777>,  <39.187595, 44.385990, 50.517490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533722, 44.234459, 50.648777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470623, -0.388730, 0.792088,
		-0.172480, -0.839867, -0.514659,
		0.865312, -0.378829, 0.328213,
		39.793316, 44.120811, 50.747242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932072, 43.859264, 50.912445>,  <39.187595, 44.385990, 50.517490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932072, 43.859264, 50.912445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313393, 43.814262, 51.024559>,  <39.542187, 43.787262, 51.091827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313393, 43.814262, 51.024559>,  <38.932072, 43.859264, 50.912445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313393, 43.814262, 51.024559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293136, -0.568123, 0.768965,
		0.072724, -0.815217, -0.574572,
		0.953301, -0.112505, 0.280286,
		39.599384, 43.780510, 51.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960102, 43.181656, 51.174831>,  <38.932072, 43.859264, 50.912445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960102, 43.181656, 51.174831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287315, 43.368179, 51.309521>,  <39.483643, 43.480095, 51.390335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287315, 43.368179, 51.309521>,  <38.960102, 43.181656, 51.174831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287315, 43.368179, 51.309521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120491, -0.433505, 0.893060,
		0.562414, -0.771121, -0.298433,
		0.818030, 0.466311, 0.336723,
		39.532722, 43.508072, 51.410538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471203, 42.645302, 51.315979>,  <38.960102, 43.181656, 51.174831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471203, 42.645302, 51.315979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525383, 42.981003, 51.526619>,  <39.557892, 43.182423, 51.653004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525383, 42.981003, 51.526619>,  <39.471203, 42.645302, 51.315979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525383, 42.981003, 51.526619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115119, -0.514569, 0.849686,
		0.984073, -0.175716, 0.026913,
		0.135455, 0.839251, 0.526602,
		39.566021, 43.232777, 51.684601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738834, 42.421215, 51.955410>,  <39.471203, 42.645302, 51.315979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738834, 42.421215, 51.955410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637165, 42.793152, 52.061829>,  <39.576164, 43.016315, 52.125679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637165, 42.793152, 52.061829>,  <39.738834, 42.421215, 51.955410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637165, 42.793152, 52.061829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311697, -0.339160, 0.887590,
		0.915556, 0.142673, 0.376035,
		-0.254171, 0.929847, 0.266050,
		39.560913, 43.072105, 52.141644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871548, 42.413368, 52.642857>,  <39.738834, 42.421215, 51.955410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871548, 42.413368, 52.642857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638733, 42.734940, 52.593994>,  <39.499043, 42.927883, 52.564674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638733, 42.734940, 52.593994>,  <39.871548, 42.413368, 52.642857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638733, 42.734940, 52.593994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564312, -0.291170, 0.772510,
		0.585477, 0.518567, 0.623141,
		-0.582039, 0.803933, -0.122161,
		39.464123, 42.976120, 52.557346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874146, 42.763947, 53.314613>,  <39.871548, 42.413368, 52.642857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874146, 42.763947, 53.314613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564816, 42.910591, 53.107704>,  <39.379219, 42.998577, 52.983559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564816, 42.910591, 53.107704>,  <39.874146, 42.763947, 53.314613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564816, 42.910591, 53.107704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561850, -0.018234, 0.827038,
		0.293769, 0.930195, 0.220081,
		-0.773320, 0.366611, -0.517274,
		39.332821, 43.020573, 52.952522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577797, 43.346840, 53.672523>,  <39.874146, 42.763947, 53.314613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577797, 43.346840, 53.672523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280365, 43.179337, 53.464012>,  <39.101906, 43.078835, 53.338905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280365, 43.179337, 53.464012>,  <39.577797, 43.346840, 53.672523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280365, 43.179337, 53.464012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549458, -0.061591, 0.833248,
		-0.381035, 0.906007, -0.184292,
		-0.743577, -0.418758, -0.521281,
		39.057293, 43.053711, 53.307629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935802, 43.630104, 53.913200>,  <39.577797, 43.346840, 53.672523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935802, 43.630104, 53.913200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815735, 43.293602, 53.733341>,  <38.743694, 43.091702, 53.625423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815735, 43.293602, 53.733341>,  <38.935802, 43.630104, 53.913200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815735, 43.293602, 53.733341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663541, -0.154499, 0.732013,
		-0.685280, 0.518094, -0.511830,
		-0.300174, -0.841254, -0.449652,
		38.725681, 43.041225, 53.598446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230827, 43.691238, 54.034634>,  <38.935802, 43.630104, 53.913200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230827, 43.691238, 54.034634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244419, 43.306175, 53.927204>,  <38.252575, 43.075138, 53.862747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244419, 43.306175, 53.927204>,  <38.230827, 43.691238, 54.034634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244419, 43.306175, 53.927204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657864, -0.223840, 0.719104,
		-0.752370, 0.152249, -0.640905,
		0.033978, -0.962661, -0.268570,
		38.254612, 43.017376, 53.846634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552959, 43.506184, 54.019634>,  <38.230827, 43.691238, 54.034634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552959, 43.506184, 54.019634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759598, 43.165520, 54.054970>,  <37.883579, 42.961121, 54.076172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759598, 43.165520, 54.054970>,  <37.552959, 43.506184, 54.019634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759598, 43.165520, 54.054970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688463, -0.351819, 0.634226,
		-0.509067, -0.388454, -0.768085,
		0.516595, -0.851661, 0.088336,
		37.914577, 42.910023, 54.081470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.514648, 41.142879, 57.177616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.248150, 41.377327, 56.993191>,  <44.088253, 41.517998, 56.882534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.248150, 41.377327, 56.993191>,  <44.514648, 41.142879, 57.177616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248150, 41.377327, 56.993191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474815, -0.143339, -0.868334,
		-0.575039, -0.797442, -0.182801,
		-0.666243, 0.586123, -0.461064,
		44.048275, 41.553165, 56.854870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376892, 40.825493, 56.599236>,  <44.514648, 41.142879, 57.177616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376892, 40.825493, 56.599236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.219818, 41.177963, 56.493916>,  <44.125572, 41.389446, 56.430721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.219818, 41.177963, 56.493916>,  <44.376892, 40.825493, 56.599236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219818, 41.177963, 56.493916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360401, -0.115956, -0.925562,
		-0.846113, -0.458353, -0.272041,
		-0.392689, 0.881174, -0.263303,
		44.102013, 41.442314, 56.414925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078770, 40.694622, 55.906769>,  <44.376892, 40.825493, 56.599236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078770, 40.694622, 55.906769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.124504, 41.090660, 55.939354>,  <44.151943, 41.328281, 55.958904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.124504, 41.090660, 55.939354>,  <44.078770, 40.694622, 55.906769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124504, 41.090660, 55.939354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353263, 0.036120, -0.934827,
		-0.928511, 0.135662, -0.345634,
		0.114336, 0.990097, 0.081462,
		44.158806, 41.387688, 55.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885738, 40.881508, 55.239620>,  <44.078770, 40.694622, 55.906769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885738, 40.881508, 55.239620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066628, 41.209869, 55.379108>,  <44.175159, 41.406887, 55.462803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.066628, 41.209869, 55.379108>,  <43.885738, 40.881508, 55.239620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066628, 41.209869, 55.379108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447182, 0.129606, -0.885003,
		-0.771701, 0.556162, -0.308484,
		0.452224, 0.820906, 0.348723,
		44.202293, 41.456142, 55.483727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737873, 41.399090, 54.832405>,  <43.885738, 40.881508, 55.239620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737873, 41.399090, 54.832405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.071602, 41.532486, 55.007996>,  <44.271839, 41.612526, 55.113350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.071602, 41.532486, 55.007996>,  <43.737873, 41.399090, 54.832405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071602, 41.532486, 55.007996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334935, 0.325823, -0.884114,
		-0.437873, 0.884659, 0.160141,
		0.834318, 0.333493, 0.438972,
		44.321896, 41.632534, 55.139687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838673, 42.114265, 54.555164>,  <43.737873, 41.399090, 54.832405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838673, 42.114265, 54.555164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.192528, 41.962517, 54.663597>,  <44.404842, 41.871468, 54.728657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.192528, 41.962517, 54.663597>,  <43.838673, 42.114265, 54.555164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192528, 41.962517, 54.663597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422011, 0.404214, -0.811492,
		0.198286, 0.832277, 0.517684,
		0.884641, -0.379376, 0.271080,
		44.457920, 41.848705, 54.744923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368050, 42.643955, 54.381065>,  <43.838673, 42.114265, 54.555164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368050, 42.643955, 54.381065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.559929, 42.295135, 54.419884>,  <44.675056, 42.085842, 54.443176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.559929, 42.295135, 54.419884>,  <44.368050, 42.643955, 54.381065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559929, 42.295135, 54.419884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565326, 0.222587, -0.794268,
		0.671039, 0.435875, 0.599767,
		0.479702, -0.872048, 0.097047,
		44.703838, 42.033520, 54.448997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956470, 42.711731, 54.114754>,  <44.368050, 42.643955, 54.381065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956470, 42.711731, 54.114754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.953983, 42.311829, 54.123211>,  <44.952492, 42.071888, 54.128284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.953983, 42.311829, 54.123211>,  <44.956470, 42.711731, 54.114754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953983, 42.311829, 54.123211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485612, -0.021500, -0.873910,
		0.874152, 0.004838, 0.485628,
		-0.006213, -0.999757, 0.021143,
		44.952118, 42.011902, 54.129555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640774, 42.544716, 53.987846>,  <44.956470, 42.711731, 54.114754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640774, 42.544716, 53.987846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.410805, 42.230614, 53.895897>,  <45.272823, 42.042152, 53.840729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.410805, 42.230614, 53.895897>,  <45.640774, 42.544716, 53.987846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410805, 42.230614, 53.895897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450888, -0.069626, -0.889861,
		0.682762, -0.615246, 0.394092,
		-0.574922, -0.785255, -0.229869,
		45.238327, 41.995037, 53.826935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077866, 42.300823, 53.500404>,  <45.640774, 42.544716, 53.987846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077866, 42.300823, 53.500404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.754784, 42.067368, 53.467018>,  <45.560932, 41.927292, 53.446987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.754784, 42.067368, 53.467018>,  <46.077866, 42.300823, 53.500404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754784, 42.067368, 53.467018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371747, -0.394276, -0.840447,
		0.457613, -0.709864, 0.535428,
		-0.807709, -0.583643, -0.083464,
		45.512470, 41.892273, 53.441978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331707, 41.733162, 53.249420>,  <46.077866, 42.300823, 53.500404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331707, 41.733162, 53.249420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.942528, 41.732269, 53.157017>,  <45.709019, 41.731735, 53.101574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.942528, 41.732269, 53.157017>,  <46.331707, 41.733162, 53.249420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942528, 41.732269, 53.157017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219305, -0.323286, -0.920539,
		-0.072627, -0.946299, 0.315030,
		-0.972950, -0.002232, -0.231007,
		45.650642, 41.731602, 53.087715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236317, 41.164814, 52.731049>,  <46.331707, 41.733162, 53.249420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236317, 41.164814, 52.731049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.908501, 41.389984, 52.688217>,  <45.711811, 41.525085, 52.662518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.908501, 41.389984, 52.688217>,  <46.236317, 41.164814, 52.731049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908501, 41.389984, 52.688217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068988, -0.088575, -0.993677,
		-0.568851, -0.821747, 0.033756,
		-0.819542, 0.562926, -0.107077,
		45.662640, 41.558861, 52.656094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742596, 40.838383, 52.193439>,  <46.236317, 41.164814, 52.731049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742596, 40.838383, 52.193439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.657509, 41.228592, 52.215702>,  <45.606457, 41.462719, 52.229061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.657509, 41.228592, 52.215702>,  <45.742596, 40.838383, 52.193439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657509, 41.228592, 52.215702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066155, 0.071209, -0.995265,
		-0.974871, -0.208032, -0.079684,
		-0.212721, 0.975526, 0.055657,
		45.593693, 41.521252, 52.232399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219906, 40.946281, 51.712513>,  <45.742596, 40.838383, 52.193439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219906, 40.946281, 51.712513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.387444, 41.307106, 51.754196>,  <45.487965, 41.523602, 51.779205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.387444, 41.307106, 51.754196>,  <45.219906, 40.946281, 51.712513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387444, 41.307106, 51.754196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260158, -0.009253, -0.965522,
		-0.869993, 0.431514, -0.238554,
		0.418843, 0.902059, 0.104212,
		45.513096, 41.577724, 51.785461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544029, 41.145157, 51.352966>,  <45.219906, 40.946281, 51.712513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544029, 41.145157, 51.352966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.317070, 40.819321, 51.304798>,  <44.180897, 40.623817, 51.275898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.317070, 40.819321, 51.304798>,  <44.544029, 41.145157, 51.352966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317070, 40.819321, 51.304798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373802, 0.124496, 0.919115,
		-0.733713, 0.566515, -0.375135,
		-0.567395, -0.814593, -0.120420,
		44.146851, 40.574944, 51.268673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832203, 41.371082, 51.614750>,  <44.544029, 41.145157, 51.352966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832203, 41.371082, 51.614750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.824020, 40.971169, 51.616352>,  <43.819111, 40.731220, 51.617313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.824020, 40.971169, 51.616352>,  <43.832203, 41.371082, 51.614750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824020, 40.971169, 51.616352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522729, 0.014111, 0.852382,
		-0.852253, 0.015343, -0.522904,
		-0.020457, -0.999783, 0.004006,
		43.817883, 40.671234, 51.617554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116135, 41.210640, 51.839653>,  <43.832203, 41.371082, 51.614750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116135, 41.210640, 51.839653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.321323, 40.875473, 51.914215>,  <43.444439, 40.674374, 51.958954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.321323, 40.875473, 51.914215>,  <43.116135, 41.210640, 51.839653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321323, 40.875473, 51.914215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482803, -0.102081, 0.869759,
		-0.709760, -0.536162, -0.456915,
		0.512974, -0.837921, 0.186407,
		43.475216, 40.624096, 51.970139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594566, 40.741646, 52.058331>,  <43.116135, 41.210640, 51.839653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594566, 40.741646, 52.058331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924313, 40.571045, 52.207207>,  <43.122158, 40.468685, 52.296532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924313, 40.571045, 52.207207>,  <42.594566, 40.741646, 52.058331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924313, 40.571045, 52.207207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480986, -0.181085, 0.857823,
		-0.298464, -0.886175, -0.354421,
		0.824361, -0.426501, 0.372190,
		43.171619, 40.443096, 52.318863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432728, 40.037994, 52.269939>,  <42.594566, 40.741646, 52.058331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432728, 40.037994, 52.269939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.747650, 40.165428, 52.481091>,  <42.936604, 40.241886, 52.607780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.747650, 40.165428, 52.481091>,  <42.432728, 40.037994, 52.269939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747650, 40.165428, 52.481091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433961, -0.321866, 0.841475,
		0.437987, -0.891576, -0.115153,
		0.787303, 0.318583, 0.527882,
		42.983841, 40.261002, 52.639454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457020, 39.591999, 52.890999>,  <42.432728, 40.037994, 52.269939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457020, 39.591999, 52.890999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.680256, 39.914909, 52.967773>,  <42.814198, 40.108658, 53.013840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.680256, 39.914909, 52.967773>,  <42.457020, 39.591999, 52.890999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680256, 39.914909, 52.967773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228624, -0.072760, 0.970792,
		0.797666, -0.585667, 0.143958,
		0.558086, 0.807279, 0.191936,
		42.847683, 40.157093, 53.025352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656792, 39.417442, 53.513222>,  <42.457020, 39.591999, 52.890999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656792, 39.417442, 53.513222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.725216, 39.809669, 53.474804>,  <42.766270, 40.045006, 53.451756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.725216, 39.809669, 53.474804>,  <42.656792, 39.417442, 53.513222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725216, 39.809669, 53.474804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158180, 0.123547, 0.979651,
		0.972480, -0.152391, 0.176240,
		0.171063, 0.980568, -0.096041,
		42.776535, 40.103840, 53.445992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066002, 39.554825, 53.995113>,  <42.656792, 39.417442, 53.513222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066002, 39.554825, 53.995113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.909794, 39.906754, 53.886742>,  <42.816067, 40.117912, 53.821716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.909794, 39.906754, 53.886742>,  <43.066002, 39.554825, 53.995113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909794, 39.906754, 53.886742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258752, 0.177533, 0.949489,
		0.883481, 0.440901, 0.158325,
		-0.390523, 0.879823, -0.270931,
		42.792637, 40.170700, 53.805462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350655, 39.926804, 54.456642>,  <43.066002, 39.554825, 53.995113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350655, 39.926804, 54.456642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.021767, 40.118553, 54.333900>,  <42.824432, 40.233604, 54.260258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.021767, 40.118553, 54.333900>,  <43.350655, 39.926804, 54.456642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021767, 40.118553, 54.333900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327239, 0.042964, 0.943964,
		0.465695, 0.876559, 0.121543,
		-0.822218, 0.479373, -0.306852,
		42.775101, 40.262363, 54.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167488, 40.257084, 55.032955>,  <43.350655, 39.926804, 54.456642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167488, 40.257084, 55.032955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.826607, 40.307213, 54.829762>,  <42.622078, 40.337292, 54.707844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.826607, 40.307213, 54.829762>,  <43.167488, 40.257084, 55.032955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826607, 40.307213, 54.829762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509595, 0.021294, 0.860151,
		0.118614, 0.991887, 0.045718,
		-0.852199, 0.125324, -0.507986,
		42.570946, 40.344810, 54.677364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824074, 40.901936, 55.216225>,  <43.167488, 40.257084, 55.032955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824074, 40.901936, 55.216225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.540604, 40.663757, 55.064850>,  <42.370522, 40.520851, 54.974026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.540604, 40.663757, 55.064850>,  <42.824074, 40.901936, 55.216225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540604, 40.663757, 55.064850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595374, 0.216923, 0.773611,
		-0.378553, 0.773554, -0.508243,
		-0.708680, -0.595448, -0.378437,
		42.327999, 40.485123, 54.951317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226166, 41.247154, 55.449383>,  <42.824074, 40.901936, 55.216225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226166, 41.247154, 55.449383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046310, 40.918343, 55.309612>,  <41.938396, 40.721054, 55.225750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.046310, 40.918343, 55.309612>,  <42.226166, 41.247154, 55.449383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046310, 40.918343, 55.309612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803346, 0.201162, 0.560508,
		-0.390462, 0.532733, -0.750822,
		-0.449638, -0.822027, -0.349423,
		41.911419, 40.671734, 55.204784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633121, 41.425831, 55.185703>,  <42.226166, 41.247154, 55.449383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633121, 41.425831, 55.185703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.590904, 41.045998, 55.303795>,  <41.565575, 40.818100, 55.374649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.590904, 41.045998, 55.303795>,  <41.633121, 41.425831, 55.185703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590904, 41.045998, 55.303795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660841, 0.288824, 0.692726,
		-0.743067, -0.121982, -0.658006,
		-0.105548, -0.949579, 0.295226,
		41.559238, 40.761124, 55.392365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908340, 41.345116, 55.324253>,  <41.633121, 41.425831, 55.185703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908340, 41.345116, 55.324253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.074169, 41.043854, 55.528557>,  <41.173668, 40.863094, 55.651138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.074169, 41.043854, 55.528557>,  <40.908340, 41.345116, 55.324253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074169, 41.043854, 55.528557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552931, 0.237302, 0.798721,
		-0.722769, -0.613546, -0.318066,
		0.414574, -0.753160, 0.510763,
		41.198540, 40.817905, 55.681786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522293, 40.768944, 54.926140>,  <40.908340, 41.345116, 55.324253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522293, 40.768944, 54.926140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154503, 40.720604, 54.776489>,  <39.933830, 40.691601, 54.686699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154503, 40.720604, 54.776489>,  <40.522293, 40.768944, 54.926140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154503, 40.720604, 54.776489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390567, -0.171696, -0.904421,
		0.045060, -0.977710, 0.205068,
		-0.919471, -0.120846, -0.374125,
		39.878662, 40.684349, 54.664253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612434, 40.202999, 54.472523>,  <40.522293, 40.768944, 54.926140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612434, 40.202999, 54.472523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291542, 40.414879, 54.362366>,  <40.099007, 40.542007, 54.296272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291542, 40.414879, 54.362366>,  <40.612434, 40.202999, 54.472523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291542, 40.414879, 54.362366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261397, -0.103066, -0.959713,
		-0.536743, -0.841900, -0.055779,
		-0.802233, 0.529700, -0.275390,
		40.050873, 40.573788, 54.279747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236637, 39.762077, 53.833820>,  <40.612434, 40.202999, 54.472523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236637, 39.762077, 53.833820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141987, 40.150711, 53.831577>,  <40.085197, 40.383892, 53.830231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.141987, 40.150711, 53.831577>,  <40.236637, 39.762077, 53.833820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141987, 40.150711, 53.831577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394192, 0.090726, -0.914539,
		-0.888043, -0.218616, -0.404459,
		-0.236628, 0.971584, -0.005608,
		40.070999, 40.442184, 53.829895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766136, 39.858871, 53.250576>,  <40.236637, 39.762077, 53.833820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766136, 39.858871, 53.250576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892334, 40.225922, 53.347256>,  <39.968052, 40.446152, 53.405266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.892334, 40.225922, 53.347256>,  <39.766136, 39.858871, 53.250576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892334, 40.225922, 53.347256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258317, 0.162040, -0.952374,
		-0.913091, 0.362906, -0.185916,
		0.315496, 0.917629, 0.241702,
		39.986984, 40.501209, 53.419765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516350, 40.288765, 52.675320>,  <39.766136, 39.858871, 53.250576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516350, 40.288765, 52.675320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803158, 40.504509, 52.851944>,  <39.975243, 40.633957, 52.957916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803158, 40.504509, 52.851944>,  <39.516350, 40.288765, 52.675320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803158, 40.504509, 52.851944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347814, 0.272129, -0.897202,
		-0.604075, 0.796892, 0.007525,
		0.717021, 0.539360, 0.441556,
		40.018265, 40.666317, 52.984409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486263, 41.025990, 52.367443>,  <39.516350, 40.288765, 52.675320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486263, 41.025990, 52.367443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859711, 41.006477, 52.509418>,  <40.083778, 40.994770, 52.594604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.859711, 41.006477, 52.509418>,  <39.486263, 41.025990, 52.367443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859711, 41.006477, 52.509418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358169, 0.150556, -0.921438,
		-0.008490, 0.987397, 0.158033,
		0.933618, -0.048779, 0.354934,
		40.139797, 40.991844, 52.615898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974018, 41.583027, 52.201561>,  <39.486263, 41.025990, 52.367443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974018, 41.583027, 52.201561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215515, 41.270744, 52.266045>,  <40.360413, 41.083374, 52.304733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.215515, 41.270744, 52.266045>,  <39.974018, 41.583027, 52.201561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215515, 41.270744, 52.266045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412404, 0.132822, -0.901266,
		0.682215, 0.610616, 0.402158,
		0.603743, -0.780709, 0.161208,
		40.396637, 41.036533, 52.314407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650719, 41.791279, 52.002777>,  <39.974018, 41.583027, 52.201561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650719, 41.791279, 52.002777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687428, 41.393173, 52.015640>,  <40.709454, 41.154312, 52.023357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.687428, 41.393173, 52.015640>,  <40.650719, 41.791279, 52.002777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687428, 41.393173, 52.015640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605998, 0.030197, -0.794893,
		0.790155, 0.092439, 0.605897,
		0.091776, -0.995260, 0.032157,
		40.714962, 41.094597, 52.025288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320168, 41.681408, 51.816303>,  <40.650719, 41.791279, 52.002777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320168, 41.681408, 51.816303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.120327, 41.342064, 51.746239>,  <41.000423, 41.138458, 51.704201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.120327, 41.342064, 51.746239>,  <41.320168, 41.681408, 51.816303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120327, 41.342064, 51.746239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389472, -0.039365, -0.920197,
		0.773761, -0.527956, 0.350079,
		-0.499605, -0.848359, -0.175165,
		40.970444, 41.087555, 51.693687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738720, 41.137169, 51.650673>,  <41.320168, 41.681408, 51.816303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738720, 41.137169, 51.650673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393173, 41.002792, 51.500538>,  <41.185844, 40.922169, 51.410458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.393173, 41.002792, 51.500538>,  <41.738720, 41.137169, 51.650673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393173, 41.002792, 51.500538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447769, -0.170842, -0.877677,
		0.230722, -0.926261, 0.298008,
		-0.863870, -0.335938, -0.375334,
		41.134014, 40.902012, 51.387939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763004, 40.429806, 51.269196>,  <41.738720, 41.137169, 51.650673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763004, 40.429806, 51.269196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.445953, 40.609573, 51.104385>,  <41.255722, 40.717434, 51.005501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.445953, 40.609573, 51.104385>,  <41.763004, 40.429806, 51.269196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445953, 40.609573, 51.104385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231690, -0.403068, -0.885356,
		-0.563973, -0.797218, 0.215356,
		-0.792625, 0.449421, -0.412027,
		41.208164, 40.744400, 50.980778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574883, 40.005959, 50.662727>,  <41.763004, 40.429806, 51.269196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574883, 40.005959, 50.662727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.350857, 40.333473, 50.612251>,  <41.216442, 40.529980, 50.581966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.350857, 40.333473, 50.612251>,  <41.574883, 40.005959, 50.662727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350857, 40.333473, 50.612251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050159, -0.185556, -0.981353,
		-0.826930, -0.543291, 0.144992,
		-0.560064, 0.818782, -0.126191,
		41.182838, 40.579109, 50.574394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090012, 39.786736, 50.225040>,  <41.574883, 40.005959, 50.662727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090012, 39.786736, 50.225040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118355, 40.183678, 50.184631>,  <41.135361, 40.421844, 50.160385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.118355, 40.183678, 50.184631>,  <41.090012, 39.786736, 50.225040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118355, 40.183678, 50.184631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051976, -0.104817, -0.993132,
		-0.996132, 0.065118, -0.059006,
		0.070856, 0.992357, -0.101027,
		41.139610, 40.481384, 50.154324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563919, 40.053089, 49.739780>,  <41.090012, 39.786736, 50.225040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563919, 40.053089, 49.739780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865105, 40.316040, 49.727840>,  <41.045818, 40.473812, 49.720676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.865105, 40.316040, 49.727840>,  <40.563919, 40.053089, 49.739780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865105, 40.316040, 49.727840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065592, -0.120103, -0.990592,
		-0.654781, 0.743926, -0.133553,
		0.752967, 0.657381, -0.029846,
		41.090996, 40.513256, 49.718887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.062370, 42.932457, 53.884472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371300, 42.785263, 54.091583>,  <37.556660, 42.696945, 54.215851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371300, 42.785263, 54.091583>,  <37.062370, 42.932457, 53.884472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371300, 42.785263, 54.091583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634990, -0.469440, 0.613526,
		0.017297, -0.802628, -0.596229,
		0.772327, -0.367987, 0.517781,
		37.602997, 42.674866, 54.246918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809921, 42.325176, 54.114155>,  <37.062370, 42.932457, 53.884472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809921, 42.325176, 54.114155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121284, 42.396019, 54.355057>,  <37.308102, 42.438526, 54.499599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.121284, 42.396019, 54.355057>,  <36.809921, 42.325176, 54.114155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121284, 42.396019, 54.355057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526287, -0.338865, 0.779867,
		0.342204, -0.924015, -0.170566,
		0.778407, 0.177107, 0.602258,
		37.354805, 42.449150, 54.535732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907169, 41.729099, 54.515156>,  <36.809921, 42.325176, 54.114155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907169, 41.729099, 54.515156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087433, 42.027100, 54.711880>,  <37.195591, 42.205898, 54.829914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.087433, 42.027100, 54.711880>,  <36.907169, 41.729099, 54.515156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087433, 42.027100, 54.711880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474300, -0.266901, 0.838930,
		0.756269, -0.611339, 0.233072,
		0.450663, 0.745002, 0.491807,
		37.222633, 42.250599, 54.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085690, 41.444210, 55.153004>,  <36.907169, 41.729099, 54.515156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085690, 41.444210, 55.153004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096107, 41.834236, 55.241154>,  <37.102360, 42.068253, 55.294044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.096107, 41.834236, 55.241154>,  <37.085690, 41.444210, 55.153004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096107, 41.834236, 55.241154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558986, -0.168559, 0.811863,
		0.828768, -0.144335, 0.540658,
		0.026047, 0.975067, 0.220378,
		37.103920, 42.126755, 55.307266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360508, 41.464695, 55.801140>,  <37.085690, 41.444210, 55.153004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360508, 41.464695, 55.801140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.148666, 41.801224, 55.757862>,  <37.021561, 42.003139, 55.731895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.148666, 41.801224, 55.757862>,  <37.360508, 41.464695, 55.801140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148666, 41.801224, 55.757862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334769, -0.090107, 0.937982,
		0.779394, 0.532975, 0.329368,
		-0.529599, 0.841320, -0.108195,
		36.989788, 42.053619, 55.725403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572777, 41.792492, 56.411617>,  <37.360508, 41.464695, 55.801140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572777, 41.792492, 56.411617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233200, 41.953682, 56.274849>,  <37.029453, 42.050396, 56.192787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233200, 41.953682, 56.274849>,  <37.572777, 41.792492, 56.411617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233200, 41.953682, 56.274849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352207, 0.050963, 0.934534,
		0.394017, 0.913792, 0.098665,
		-0.848941, 0.402973, -0.341925,
		36.978519, 42.074574, 56.172272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546146, 42.388908, 56.805988>,  <37.572777, 41.792492, 56.411617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546146, 42.388908, 56.805988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176987, 42.339897, 56.659981>,  <36.955490, 42.310490, 56.572376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.176987, 42.339897, 56.659981>,  <37.546146, 42.388908, 56.805988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176987, 42.339897, 56.659981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381172, 0.156702, 0.911127,
		-0.054442, 0.980016, -0.191326,
		-0.922900, -0.122531, -0.365023,
		36.900116, 42.303139, 56.550472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183697, 42.951382, 57.058987>,  <37.546146, 42.388908, 56.805988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183697, 42.951382, 57.058987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899170, 42.690704, 56.953667>,  <36.728455, 42.534298, 56.890476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.899170, 42.690704, 56.953667>,  <37.183697, 42.951382, 57.058987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899170, 42.690704, 56.953667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505241, 0.213654, 0.836112,
		-0.488635, 0.727768, -0.481238,
		-0.711314, -0.651695, -0.263300,
		36.685776, 42.495197, 56.874676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569382, 43.340538, 57.139301>,  <37.183697, 42.951382, 57.058987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569382, 43.340538, 57.139301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460571, 42.955750, 57.149193>,  <36.395287, 42.724876, 57.155128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460571, 42.955750, 57.149193>,  <36.569382, 43.340538, 57.139301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460571, 42.955750, 57.149193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300004, 0.109190, 0.947668,
		-0.914331, 0.250371, -0.318298,
		-0.272024, -0.961973, 0.024724,
		36.378963, 42.667156, 57.156609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794231, 43.302288, 57.402088>,  <36.569382, 43.340538, 57.139301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794231, 43.302288, 57.402088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940247, 42.933258, 57.452065>,  <36.027855, 42.711842, 57.482048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940247, 42.933258, 57.452065>,  <35.794231, 43.302288, 57.402088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940247, 42.933258, 57.452065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155353, 0.071954, 0.985235,
		-0.917939, -0.379058, -0.117059,
		0.365039, -0.922571, 0.124937,
		36.049759, 42.656487, 57.489544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252911, 42.882179, 57.728474>,  <35.794231, 43.302288, 57.402088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252911, 42.882179, 57.728474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610695, 42.721924, 57.807899>,  <35.825367, 42.625771, 57.855556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610695, 42.721924, 57.807899>,  <35.252911, 42.882179, 57.728474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610695, 42.721924, 57.807899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125561, 0.201157, 0.971478,
		-0.429156, -0.893881, 0.129622,
		0.894460, -0.400641, 0.198565,
		35.879032, 42.601730, 57.867470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060654, 42.621067, 58.281670>,  <35.252911, 42.882179, 57.728474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060654, 42.621067, 58.281670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459320, 42.590530, 58.293186>,  <35.698521, 42.572208, 58.300098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459320, 42.590530, 58.293186>,  <35.060654, 42.621067, 58.281670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459320, 42.590530, 58.293186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021537, 0.094248, 0.995316,
		-0.078702, -0.992617, 0.092289,
		0.996666, -0.076346, 0.028795,
		35.758320, 42.567627, 58.301826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245655, 42.036396, 58.691406>,  <35.060654, 42.621067, 58.281670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245655, 42.036396, 58.691406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487625, 42.351738, 58.646572>,  <35.632809, 42.540943, 58.619671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487625, 42.351738, 58.646572>,  <35.245655, 42.036396, 58.691406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487625, 42.351738, 58.646572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007153, 0.135377, 0.990768,
		0.796249, -0.600144, 0.076254,
		0.604926, 0.788353, -0.112087,
		35.669102, 42.588245, 58.612946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938431, 41.981525, 59.098511>,  <35.245655, 42.036396, 58.691406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938431, 41.981525, 59.098511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821976, 42.360451, 59.045097>,  <35.752102, 42.587807, 59.013050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.821976, 42.360451, 59.045097>,  <35.938431, 41.981525, 59.098511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821976, 42.360451, 59.045097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114268, 0.173010, 0.978269,
		0.949831, 0.269558, -0.158618,
		-0.291142, 0.947315, -0.133529,
		35.734634, 42.644646, 59.005039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343670, 41.374737, 59.191158>,  <35.938431, 41.981525, 59.098511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343670, 41.374737, 59.191158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568462, 41.055290, 59.277313>,  <36.703339, 40.863621, 59.329006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568462, 41.055290, 59.277313>,  <36.343670, 41.374737, 59.191158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568462, 41.055290, 59.277313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379502, 0.017575, -0.925024,
		0.734952, 0.601586, 0.312953,
		0.561981, -0.798615, 0.215386,
		36.737057, 40.815704, 59.341930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005150, 41.512539, 59.004894>,  <36.343670, 41.374737, 59.191158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005150, 41.512539, 59.004894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996681, 41.112656, 59.000328>,  <36.991600, 40.872726, 58.997589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.996681, 41.112656, 59.000328>,  <37.005150, 41.512539, 59.004894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996681, 41.112656, 59.000328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568812, -0.002653, -0.822463,
		0.822195, -0.023903, 0.568704,
		-0.021169, -0.999711, -0.011415,
		36.990330, 40.812744, 58.996902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615971, 41.413799, 58.946037>,  <37.005150, 41.512539, 59.004894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615971, 41.413799, 58.946037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449776, 41.068359, 58.831795>,  <37.350060, 40.861095, 58.763248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.449776, 41.068359, 58.831795>,  <37.615971, 41.413799, 58.946037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449776, 41.068359, 58.831795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664450, -0.073727, -0.743687,
		0.621189, -0.498763, 0.604450,
		-0.415488, -0.863597, -0.285605,
		37.325130, 40.809280, 58.746113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151421, 40.914925, 58.755791>,  <37.615971, 41.413799, 58.946037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151421, 40.914925, 58.755791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835415, 40.741386, 58.582516>,  <37.645809, 40.637264, 58.478550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.835415, 40.741386, 58.582516>,  <38.151421, 40.914925, 58.755791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835415, 40.741386, 58.582516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548268, -0.183752, -0.815866,
		0.274359, -0.882051, 0.383030,
		-0.790018, -0.433844, -0.433186,
		37.598408, 40.611233, 58.452560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446407, 40.278778, 58.530479>,  <38.151421, 40.914925, 58.755791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446407, 40.278778, 58.530479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122086, 40.368973, 58.314423>,  <37.927494, 40.423088, 58.184788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.122086, 40.368973, 58.314423>,  <38.446407, 40.278778, 58.530479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122086, 40.368973, 58.314423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495640, -0.226370, -0.838509,
		-0.311346, -0.947582, 0.071780,
		-0.810805, 0.225490, -0.540139,
		37.878845, 40.436619, 58.152382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460266, 39.849758, 57.971825>,  <38.446407, 40.278778, 58.530479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460266, 39.849758, 57.971825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161522, 40.087990, 57.853508>,  <37.982277, 40.230927, 57.782516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161522, 40.087990, 57.853508>,  <38.460266, 39.849758, 57.971825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161522, 40.087990, 57.853508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402326, 0.050535, -0.914100,
		-0.529468, -0.801708, -0.277358,
		-0.746858, 0.595575, -0.295792,
		37.937466, 40.266663, 57.764771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171062, 39.518063, 57.398724>,  <38.460266, 39.849758, 57.971825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171062, 39.518063, 57.398724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108467, 39.910912, 57.356869>,  <38.070911, 40.146622, 57.331757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108467, 39.910912, 57.356869>,  <38.171062, 39.518063, 57.398724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108467, 39.910912, 57.356869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447627, -0.023919, -0.893900,
		-0.880421, -0.186724, -0.435881,
		-0.156487, 0.982121, -0.104641,
		38.061520, 40.205547, 57.325478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901478, 39.577152, 56.760735>,  <38.171062, 39.518063, 57.398724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901478, 39.577152, 56.760735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021202, 39.952393, 56.830452>,  <38.093037, 40.177536, 56.872280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.021202, 39.952393, 56.830452>,  <37.901478, 39.577152, 56.760735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021202, 39.952393, 56.830452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381483, 0.049775, -0.923035,
		-0.874577, 0.342762, -0.342972,
		0.299309, 0.938103, 0.174290,
		38.110996, 40.233822, 56.882740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726883, 40.019470, 56.183460>,  <37.901478, 39.577152, 56.760735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726883, 40.019470, 56.183460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.014992, 40.225357, 56.369480>,  <38.187859, 40.348888, 56.481091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.014992, 40.225357, 56.369480>,  <37.726883, 40.019470, 56.183460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014992, 40.225357, 56.369480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410063, 0.224797, -0.883920,
		-0.559510, 0.827365, -0.049150,
		0.720276, 0.514716, 0.465048,
		38.231075, 40.379772, 56.508995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850403, 40.514854, 55.754936>,  <37.726883, 40.019470, 56.183460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850403, 40.514854, 55.754936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176163, 40.535484, 55.986137>,  <38.371620, 40.547863, 56.124859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176163, 40.535484, 55.986137>,  <37.850403, 40.514854, 55.754936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176163, 40.535484, 55.986137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554818, 0.222739, -0.801601,
		-0.170087, 0.973513, 0.152784,
		0.814400, 0.051575, 0.578007,
		38.420483, 40.550957, 56.159538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187843, 41.076706, 55.453293>,  <37.850403, 40.514854, 55.754936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187843, 41.076706, 55.453293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.462189, 40.896835, 55.682163>,  <38.626797, 40.788914, 55.819485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.462189, 40.896835, 55.682163>,  <38.187843, 41.076706, 55.453293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462189, 40.896835, 55.682163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676510, 0.104221, -0.729022,
		0.268189, 0.887092, 0.375689,
		0.685864, -0.449673, 0.572176,
		38.667950, 40.761932, 55.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768570, 41.425049, 55.451561>,  <38.187843, 41.076706, 55.453293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768570, 41.425049, 55.451561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915527, 41.071121, 55.566181>,  <39.003704, 40.858765, 55.634953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.915527, 41.071121, 55.566181>,  <38.768570, 41.425049, 55.451561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915527, 41.071121, 55.566181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720614, 0.076033, -0.689154,
		0.587991, 0.459685, 0.665549,
		0.367398, -0.884821, 0.286549,
		39.025745, 40.805676, 55.652145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554256, 41.464306, 55.549801>,  <38.768570, 41.425049, 55.451561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554256, 41.464306, 55.549801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440590, 41.092873, 55.454315>,  <39.372391, 40.870014, 55.397026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440590, 41.092873, 55.454315>,  <39.554256, 41.464306, 55.549801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440590, 41.092873, 55.454315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635340, 0.004086, -0.772222,
		0.718047, -0.371104, 0.588805,
		-0.284169, -0.928582, -0.238711,
		39.355339, 40.814297, 55.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152107, 40.971214, 55.504440>,  <39.554256, 41.464306, 55.549801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152107, 40.971214, 55.504440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.877136, 40.791115, 55.276505>,  <39.712154, 40.683056, 55.139744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.877136, 40.791115, 55.276505>,  <40.152107, 40.971214, 55.504440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877136, 40.791115, 55.276505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633686, 0.011468, -0.773505,
		0.354803, -0.892831, 0.277431,
		-0.687427, -0.450246, -0.569843,
		39.670906, 40.656040, 55.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165501, 40.718754, 56.185745>,  <40.152107, 40.971214, 55.504440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165501, 40.718754, 56.185745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560844, 40.660721, 56.204079>,  <40.798050, 40.625900, 56.215076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.560844, 40.660721, 56.204079>,  <40.165501, 40.718754, 56.185745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560844, 40.660721, 56.204079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085725, -0.282133, 0.955538,
		-0.125703, -0.948341, -0.291286,
		0.988357, -0.145084, 0.045832,
		40.857353, 40.617195, 56.217827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277187, 40.078785, 56.407028>,  <40.165501, 40.718754, 56.185745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277187, 40.078785, 56.407028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597595, 40.290245, 56.519386>,  <40.789841, 40.417122, 56.586800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.597595, 40.290245, 56.519386>,  <40.277187, 40.078785, 56.407028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597595, 40.290245, 56.519386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169237, -0.250110, 0.953312,
		0.574223, -0.811156, -0.110875,
		0.801016, 0.528650, 0.280897,
		40.837898, 40.448841, 56.603657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547237, 39.692505, 56.907528>,  <40.277187, 40.078785, 56.407028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547237, 39.692505, 56.907528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696960, 40.059372, 56.962227>,  <40.786797, 40.279491, 56.995045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696960, 40.059372, 56.962227>,  <40.547237, 39.692505, 56.907528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696960, 40.059372, 56.962227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150652, -0.085362, 0.984894,
		0.914984, -0.389259, 0.106221,
		0.374311, 0.917165, 0.136748,
		40.809254, 40.334522, 57.003250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872223, 39.557087, 57.516014>,  <40.547237, 39.692505, 56.907528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872223, 39.557087, 57.516014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.846519, 39.955742, 57.495674>,  <40.831097, 40.194935, 57.483471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.846519, 39.955742, 57.495674>,  <40.872223, 39.557087, 57.516014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846519, 39.955742, 57.495674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167286, 0.039478, 0.985118,
		0.983812, 0.071813, 0.164187,
		-0.064263, 0.996636, -0.050852,
		40.827240, 40.254734, 57.480419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247070, 39.836445, 58.035309>,  <40.872223, 39.557087, 57.516014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247070, 39.836445, 58.035309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002548, 40.141449, 57.950562>,  <40.855835, 40.324451, 57.899712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002548, 40.141449, 57.950562>,  <41.247070, 39.836445, 58.035309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002548, 40.141449, 57.950562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201169, 0.109205, 0.973450,
		0.765402, 0.637695, 0.086636,
		-0.611303, 0.762509, -0.211870,
		40.819157, 40.370201, 57.887001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410461, 40.269085, 58.577911>,  <41.247070, 39.836445, 58.035309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410461, 40.269085, 58.577911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.069740, 40.405434, 58.418797>,  <40.865307, 40.487244, 58.323330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.069740, 40.405434, 58.418797>,  <41.410461, 40.269085, 58.577911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069740, 40.405434, 58.418797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350915, 0.192507, 0.916406,
		0.388954, 0.920189, -0.044362,
		-0.851806, 0.340872, -0.397785,
		40.814198, 40.507694, 58.299461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245426, 40.970310, 58.831799>,  <41.410461, 40.269085, 58.577911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245426, 40.970310, 58.831799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909977, 40.783554, 58.719566>,  <40.708706, 40.671501, 58.652225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.909977, 40.783554, 58.719566>,  <41.245426, 40.970310, 58.831799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909977, 40.783554, 58.719566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433213, 0.259412, 0.863153,
		-0.330207, 0.845413, -0.419810,
		-0.838624, -0.466886, -0.280584,
		40.658390, 40.643490, 58.635391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244328, 41.668369, 58.650795>,  <41.245426, 40.970310, 58.831799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244328, 41.668369, 58.650795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580387, 41.856468, 58.758881>,  <41.782024, 41.969326, 58.823730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580387, 41.856468, 58.758881>,  <41.244328, 41.668369, 58.650795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580387, 41.856468, 58.758881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453239, -0.335142, -0.825987,
		-0.297858, 0.816424, -0.494704,
		0.840152, 0.470246, 0.270211,
		41.832432, 41.997543, 58.839943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528931, 42.093533, 58.032547>,  <41.244328, 41.668369, 58.650795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528931, 42.093533, 58.032547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841309, 42.041451, 58.276901>,  <42.028736, 42.010201, 58.423512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841309, 42.041451, 58.276901>,  <41.528931, 42.093533, 58.032547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841309, 42.041451, 58.276901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567269, -0.261477, -0.780920,
		0.261411, 0.956387, -0.130337,
		0.780942, -0.130205, 0.610881,
		42.075592, 42.002388, 58.460167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047665, 42.542816, 57.773304>,  <41.528931, 42.093533, 58.032547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047665, 42.542816, 57.773304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225876, 42.255386, 57.986904>,  <42.332802, 42.082928, 58.115063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.225876, 42.255386, 57.986904>,  <42.047665, 42.542816, 57.773304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225876, 42.255386, 57.986904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653840, -0.146278, -0.742358,
		0.611553, 0.679891, 0.404663,
		0.445529, -0.718576, 0.533997,
		42.359535, 42.039814, 58.147102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695152, 42.787151, 57.822758>,  <42.047665, 42.542816, 57.773304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695152, 42.787151, 57.822758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.714153, 42.390518, 57.870941>,  <42.725552, 42.152538, 57.899853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.714153, 42.390518, 57.870941>,  <42.695152, 42.787151, 57.822758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714153, 42.390518, 57.870941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627318, -0.064235, -0.776110,
		0.777314, 0.112432, 0.618985,
		0.047499, -0.991581, 0.120461,
		42.728401, 42.093044, 57.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428181, 42.653202, 57.932724>,  <42.695152, 42.787151, 57.822758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428181, 42.653202, 57.932724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271622, 42.308769, 57.802898>,  <43.177685, 42.102108, 57.725002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.271622, 42.308769, 57.802898>,  <43.428181, 42.653202, 57.932724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271622, 42.308769, 57.802898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785117, -0.128503, -0.605870,
		0.479999, -0.491955, 0.726348,
		-0.391398, -0.861085, -0.324561,
		43.154202, 42.050446, 57.705528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979488, 42.310394, 57.882278>,  <43.428181, 42.653202, 57.932724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979488, 42.310394, 57.882278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.722973, 42.089943, 57.668736>,  <43.569061, 41.957672, 57.540607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.722973, 42.089943, 57.668736>,  <43.979488, 42.310394, 57.882278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722973, 42.089943, 57.668736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726125, -0.211051, -0.654371,
		0.247968, -0.807292, 0.535530,
		-0.641292, -0.551124, -0.533861,
		43.530586, 41.924606, 57.508579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368454, 41.774231, 57.703487>,  <43.979488, 42.310394, 57.882278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368454, 41.774231, 57.703487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071243, 41.751350, 57.436760>,  <43.892918, 41.737621, 57.276722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.071243, 41.751350, 57.436760>,  <44.368454, 41.774231, 57.703487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071243, 41.751350, 57.436760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669249, -0.070755, -0.739662,
		-0.004873, -0.995853, 0.090852,
		-0.743022, -0.057199, -0.666818,
		43.848335, 41.734192, 57.236713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.093704, 44.685379, 58.777794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886654, 44.373566, 58.636719>,  <37.762424, 44.186478, 58.552074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.886654, 44.373566, 58.636719>,  <38.093704, 44.685379, 58.777794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886654, 44.373566, 58.636719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639982, -0.079160, -0.764301,
		0.567879, -0.621338, 0.539863,
		-0.517625, -0.779533, -0.352692,
		37.731365, 44.139706, 58.530910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600056, 44.228638, 58.602844>,  <38.093704, 44.685379, 58.777794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600056, 44.228638, 58.602844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.275139, 44.096947, 58.410267>,  <38.080189, 44.017933, 58.294720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.275139, 44.096947, 58.410267>,  <38.600056, 44.228638, 58.602844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275139, 44.096947, 58.410267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536981, -0.099947, -0.837653,
		0.227662, -0.938945, 0.257977,
		-0.812294, -0.329230, -0.481442,
		38.031452, 43.998177, 58.265835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789455, 43.535908, 58.308796>,  <38.600056, 44.228638, 58.602844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789455, 43.535908, 58.308796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477867, 43.693062, 58.113308>,  <38.290916, 43.787354, 57.996014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.477867, 43.693062, 58.113308>,  <38.789455, 43.535908, 58.308796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477867, 43.693062, 58.113308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467144, -0.156323, -0.870252,
		-0.418311, -0.906201, -0.061766,
		-0.778969, 0.392890, -0.488718,
		38.244175, 43.810928, 57.966694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703197, 43.038010, 57.737175>,  <38.789455, 43.535908, 58.308796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703197, 43.038010, 57.737175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520802, 43.375443, 57.623718>,  <38.411366, 43.577900, 57.555645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520802, 43.375443, 57.623718>,  <38.703197, 43.038010, 57.737175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520802, 43.375443, 57.623718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547166, 0.014374, -0.836901,
		-0.701914, -0.536815, -0.468131,
		-0.455990, 0.843577, -0.283637,
		38.384003, 43.628517, 57.538628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570835, 42.978115, 57.027161>,  <38.703197, 43.038010, 57.737175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570835, 42.978115, 57.027161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.553036, 43.372337, 57.092525>,  <38.542355, 43.608871, 57.131744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.553036, 43.372337, 57.092525>,  <38.570835, 42.978115, 57.027161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553036, 43.372337, 57.092525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456482, 0.165560, -0.874193,
		-0.888619, 0.035692, -0.457256,
		-0.044501, 0.985554, 0.163413,
		38.539684, 43.668003, 57.141548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541634, 43.205830, 56.364223>,  <38.570835, 42.978115, 57.027161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541634, 43.205830, 56.364223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.620068, 43.538109, 56.572647>,  <38.667126, 43.737476, 56.697701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.620068, 43.538109, 56.572647>,  <38.541634, 43.205830, 56.364223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620068, 43.538109, 56.572647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614034, 0.310279, -0.725733,
		-0.764535, 0.462249, -0.449234,
		0.196082, 0.830694, 0.521056,
		38.678890, 43.787315, 56.728966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424099, 43.798702, 55.917130>,  <38.541634, 43.205830, 56.364223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424099, 43.798702, 55.917130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667973, 43.928528, 56.206387>,  <38.814297, 44.006424, 56.379940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667973, 43.928528, 56.206387>,  <38.424099, 43.798702, 55.917130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667973, 43.928528, 56.206387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564767, 0.462263, -0.683631,
		-0.556166, 0.825209, 0.098531,
		0.609686, 0.324565, 0.723146,
		38.850880, 44.025898, 56.423332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411945, 44.519108, 55.906250>,  <38.424099, 43.798702, 55.917130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411945, 44.519108, 55.906250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755531, 44.440247, 56.095276>,  <38.961681, 44.392929, 56.208691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.755531, 44.440247, 56.095276>,  <38.411945, 44.519108, 55.906250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755531, 44.440247, 56.095276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503584, 0.492316, -0.709950,
		-0.092681, 0.847794, 0.522164,
		0.858961, -0.197154, 0.472564,
		39.013218, 44.381100, 56.237045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775810, 45.140659, 56.115658>,  <38.411945, 44.519108, 55.906250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775810, 45.140659, 56.115658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043518, 44.846359, 56.074184>,  <39.204144, 44.669777, 56.049301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.043518, 44.846359, 56.074184>,  <38.775810, 45.140659, 56.115658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043518, 44.846359, 56.074184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518627, 0.562501, -0.643909,
		0.532080, 0.377173, 0.758044,
		0.669266, -0.735753, -0.103684,
		39.244297, 44.625633, 56.043079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365601, 45.430511, 55.813015>,  <38.775810, 45.140659, 56.115658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365601, 45.430511, 55.813015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.495087, 45.052559, 55.793369>,  <39.572777, 44.825787, 55.781582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.495087, 45.052559, 55.793369>,  <39.365601, 45.430511, 55.813015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495087, 45.052559, 55.793369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696143, 0.273009, -0.663966,
		0.640775, 0.180750, 0.746148,
		0.323716, -0.944879, -0.049109,
		39.592201, 44.769096, 55.778637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126911, 45.374519, 55.972782>,  <39.365601, 45.430511, 55.813015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126911, 45.374519, 55.972782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021820, 45.070053, 55.735596>,  <39.958767, 44.887375, 55.593285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.021820, 45.070053, 55.735596>,  <40.126911, 45.374519, 55.972782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021820, 45.070053, 55.735596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595779, 0.355430, -0.720220,
		0.758962, -0.542497, 0.360103,
		-0.262725, -0.761161, -0.592966,
		39.943001, 44.841705, 55.557705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704285, 45.109970, 55.740898>,  <40.126911, 45.374519, 55.972782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704285, 45.109970, 55.740898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431999, 44.976196, 55.480194>,  <40.268627, 44.895931, 55.323772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431999, 44.976196, 55.480194>,  <40.704285, 45.109970, 55.740898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431999, 44.976196, 55.480194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603832, 0.247567, -0.757692,
		0.414752, -0.909320, 0.033421,
		-0.680711, -0.334435, -0.651756,
		40.227787, 44.875866, 55.284668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422153, 45.192616, 56.028736>,  <40.704285, 45.109970, 55.740898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422153, 45.192616, 56.028736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709023, 45.442520, 56.152245>,  <41.881142, 45.592464, 56.226349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.709023, 45.442520, 56.152245>,  <41.422153, 45.192616, 56.028736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709023, 45.442520, 56.152245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400861, 0.007394, 0.916109,
		0.570067, -0.780780, 0.255745,
		0.717171, 0.624762, 0.308770,
		41.924175, 45.629948, 56.244877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736523, 44.913334, 56.686768>,  <41.422153, 45.192616, 56.028736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736523, 44.913334, 56.686768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862667, 45.292824, 56.678093>,  <41.938354, 45.520519, 56.672886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.862667, 45.292824, 56.678093>,  <41.736523, 44.913334, 56.686768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862667, 45.292824, 56.678093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235873, 0.100504, 0.966573,
		0.919190, -0.299704, 0.255474,
		0.315362, 0.948724, -0.021691,
		41.957275, 45.577442, 56.671585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145367, 45.005825, 57.225368>,  <41.736523, 44.913334, 56.686768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145367, 45.005825, 57.225368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995583, 45.366119, 57.137321>,  <41.905712, 45.582298, 57.084492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.995583, 45.366119, 57.137321>,  <42.145367, 45.005825, 57.225368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995583, 45.366119, 57.137321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467555, 0.021579, 0.883700,
		0.800733, 0.433826, 0.413064,
		-0.374458, 0.900738, -0.220117,
		41.883244, 45.636341, 57.071285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233841, 45.389610, 57.786579>,  <42.145367, 45.005825, 57.225368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233841, 45.389610, 57.786579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.956940, 45.593552, 57.582294>,  <41.790798, 45.715916, 57.459724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.956940, 45.593552, 57.582294>,  <42.233841, 45.389610, 57.786579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956940, 45.593552, 57.582294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556071, 0.074206, 0.827816,
		0.459963, 0.857055, 0.232145,
		-0.692257, 0.509854, -0.510715,
		41.749264, 45.746510, 57.429081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006489, 45.983677, 58.161015>,  <42.233841, 45.389610, 57.786579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006489, 45.983677, 58.161015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680939, 45.984573, 57.928596>,  <41.485611, 45.985111, 57.789146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680939, 45.984573, 57.928596>,  <42.006489, 45.983677, 58.161015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680939, 45.984573, 57.928596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552682, 0.305636, 0.775325,
		0.179323, 0.952146, -0.247510,
		-0.813870, 0.002239, -0.581042,
		41.436779, 45.985245, 57.754284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612453, 46.511978, 58.452446>,  <42.006489, 45.983677, 58.161015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612453, 46.511978, 58.452446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344254, 46.281395, 58.265633>,  <41.183334, 46.143044, 58.153545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.344254, 46.281395, 58.265633>,  <41.612453, 46.511978, 58.452446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344254, 46.281395, 58.265633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514108, -0.092848, 0.852685,
		-0.534900, 0.811835, -0.234106,
		-0.670503, -0.576458, -0.467035,
		41.143101, 46.108459, 58.125523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063442, 46.710396, 58.668274>,  <41.612453, 46.511978, 58.452446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063442, 46.710396, 58.668274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893776, 46.378830, 58.522400>,  <40.791977, 46.179890, 58.434875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.893776, 46.378830, 58.522400>,  <41.063442, 46.710396, 58.668274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893776, 46.378830, 58.522400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591322, -0.051484, 0.804790,
		-0.685875, 0.557006, -0.468316,
		-0.424163, -0.828911, -0.364682,
		40.766525, 46.130157, 58.412994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381927, 46.820656, 58.661457>,  <41.063442, 46.710396, 58.668274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381927, 46.820656, 58.661457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.423992, 46.423096, 58.674725>,  <40.449230, 46.184559, 58.682686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.423992, 46.423096, 58.674725>,  <40.381927, 46.820656, 58.661457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423992, 46.423096, 58.674725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543441, -0.029499, 0.838929,
		-0.832834, -0.106248, -0.543230,
		0.105159, -0.993902, 0.033171,
		40.455540, 46.124924, 58.684677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803200, 46.660278, 59.041298>,  <40.381927, 46.820656, 58.661457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803200, 46.660278, 59.041298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025673, 46.328285, 59.024384>,  <40.159157, 46.129089, 59.014236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025673, 46.328285, 59.024384>,  <39.803200, 46.660278, 59.041298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025673, 46.328285, 59.024384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400822, -0.312474, 0.861222,
		-0.728015, -0.462045, -0.506468,
		0.556180, -0.829985, -0.042288,
		40.192528, 46.079288, 59.011696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279839, 46.168228, 59.121941>,  <39.803200, 46.660278, 59.041298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279839, 46.168228, 59.121941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.628815, 45.991364, 59.205215>,  <39.838200, 45.885242, 59.255180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.628815, 45.991364, 59.205215>,  <39.279839, 46.168228, 59.121941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628815, 45.991364, 59.205215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448808, -0.556225, 0.699418,
		-0.193458, -0.703636, -0.683718,
		0.872437, -0.442166, 0.208191,
		39.890545, 45.858715, 59.267673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123714, 45.489162, 59.100594>,  <39.279839, 46.168228, 59.121941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123714, 45.489162, 59.100594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446148, 45.528938, 59.333946>,  <39.639606, 45.552803, 59.473957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.446148, 45.528938, 59.333946>,  <39.123714, 45.489162, 59.100594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446148, 45.528938, 59.333946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463670, -0.506442, 0.726998,
		0.367746, -0.856520, -0.362126,
		0.806085, 0.099444, 0.583385,
		39.687973, 45.558773, 59.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232727, 44.818569, 59.428307>,  <39.123714, 45.489162, 59.100594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232727, 44.818569, 59.428307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425068, 45.082947, 59.658760>,  <39.540470, 45.241573, 59.797031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.425068, 45.082947, 59.658760>,  <39.232727, 44.818569, 59.428307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425068, 45.082947, 59.658760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450827, -0.377203, 0.808995,
		0.752024, -0.648742, 0.116595,
		0.480849, 0.660948, 0.576136,
		39.569324, 45.281231, 59.831600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671185, 44.477997, 59.939842>,  <39.232727, 44.818569, 59.428307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671185, 44.477997, 59.939842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633392, 44.836716, 60.112740>,  <39.610718, 45.051945, 60.216476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633392, 44.836716, 60.112740>,  <39.671185, 44.477997, 59.939842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633392, 44.836716, 60.112740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272430, -0.440902, 0.855212,
		0.957526, -0.036958, 0.285969,
		-0.094477, 0.896794, 0.432244,
		39.605049, 45.105755, 60.242413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106792, 44.418644, 60.593410>,  <39.671185, 44.477997, 59.939842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106792, 44.418644, 60.593410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848106, 44.719879, 60.641773>,  <39.692894, 44.900620, 60.670792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.848106, 44.719879, 60.641773>,  <40.106792, 44.418644, 60.593410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848106, 44.719879, 60.641773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189811, -0.312438, 0.930782,
		0.738734, 0.579004, 0.345003,
		-0.646718, 0.753085, 0.120907,
		39.654091, 44.945805, 60.678047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834156, 44.230831, 60.411118>,  <40.106792, 44.418644, 60.593410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834156, 44.230831, 60.411118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752193, 43.905930, 60.629570>,  <40.703014, 43.710991, 60.760643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.752193, 43.905930, 60.629570>,  <40.834156, 44.230831, 60.411118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752193, 43.905930, 60.629570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555252, -0.555967, -0.618544,
		0.806044, 0.176496, 0.564927,
		-0.204910, -0.812250, 0.546133,
		40.690720, 43.662254, 60.793411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423138, 43.883770, 60.485962>,  <40.834156, 44.230831, 60.411118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423138, 43.883770, 60.485962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.145367, 43.600716, 60.538147>,  <40.978703, 43.430885, 60.569458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.145367, 43.600716, 60.538147>,  <41.423138, 43.883770, 60.485962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145367, 43.600716, 60.538147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513517, -0.614380, -0.599031,
		0.504049, -0.348989, 0.790026,
		-0.694431, -0.707633, 0.130466,
		40.937038, 43.388428, 60.577286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877758, 43.381954, 60.641285>,  <41.423138, 43.883770, 60.485962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877758, 43.381954, 60.641285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.528702, 43.228989, 60.519791>,  <41.319267, 43.137211, 60.446896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.528702, 43.228989, 60.519791>,  <41.877758, 43.381954, 60.641285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528702, 43.228989, 60.519791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488236, -0.696934, -0.525270,
		-0.010811, -0.606666, 0.794883,
		-0.872645, -0.382412, -0.303731,
		41.266907, 43.114265, 60.428673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942596, 42.666153, 60.779655>,  <41.877758, 43.381954, 60.641285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942596, 42.666153, 60.779655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.659500, 42.717041, 60.501686>,  <41.489643, 42.747574, 60.334904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.659500, 42.717041, 60.501686>,  <41.942596, 42.666153, 60.779655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659500, 42.717041, 60.501686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487946, -0.623310, -0.611059,
		-0.510891, -0.771557, 0.379066,
		-0.707742, 0.127221, -0.694922,
		41.447178, 42.755207, 60.293209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871292, 42.016842, 60.497654>,  <41.942596, 42.666153, 60.779655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871292, 42.016842, 60.497654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.720966, 42.282455, 60.239098>,  <41.630772, 42.441822, 60.083965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.720966, 42.282455, 60.239098>,  <41.871292, 42.016842, 60.497654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720966, 42.282455, 60.239098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246527, -0.600749, -0.760477,
		-0.893300, -0.445154, 0.062071,
		-0.375819, 0.664032, -0.646391,
		41.608219, 42.481667, 60.045181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409451, 41.676773, 60.084572>,  <41.871292, 42.016842, 60.497654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409451, 41.676773, 60.084572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517048, 41.996681, 59.869904>,  <41.581604, 42.188625, 59.741100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517048, 41.996681, 59.869904>,  <41.409451, 41.676773, 60.084572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517048, 41.996681, 59.869904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446566, -0.597260, -0.666228,
		-0.853360, -0.060452, -0.517805,
		0.268990, 0.799766, -0.536674,
		41.597744, 42.236610, 59.708900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311478, 41.490273, 59.401546>,  <41.409451, 41.676773, 60.084572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311478, 41.490273, 59.401546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543121, 41.813469, 59.358124>,  <41.682106, 42.007385, 59.332069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543121, 41.813469, 59.358124>,  <41.311478, 41.490273, 59.401546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543121, 41.813469, 59.358124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454741, -0.430665, -0.779575,
		-0.676641, 0.402093, -0.616829,
		0.579108, 0.807990, -0.108558,
		41.716854, 42.055866, 59.325558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671612, 41.388359, 59.074512>,  <41.311478, 41.490273, 59.401546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671612, 41.388359, 59.074512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469719, 41.053207, 58.991364>,  <40.348583, 40.852116, 58.941475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.469719, 41.053207, 58.991364>,  <40.671612, 41.388359, 59.074512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469719, 41.053207, 58.991364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635902, 0.198005, 0.745938,
		-0.583844, 0.508683, -0.632746,
		-0.504733, -0.837876, -0.207868,
		40.318298, 40.801846, 58.929005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974419, 41.587372, 58.979156>,  <40.671612, 41.388359, 59.074512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974419, 41.587372, 58.979156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.993111, 41.198326, 59.070229>,  <40.004326, 40.964897, 59.124870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.993111, 41.198326, 59.070229>,  <39.974419, 41.587372, 58.979156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993111, 41.198326, 59.070229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662152, 0.140497, 0.736081,
		-0.747912, -0.185153, -0.637453,
		0.046727, -0.972615, 0.227679,
		40.007130, 40.906540, 59.138531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328506, 41.343773, 59.363510>,  <39.974419, 41.587372, 58.979156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328506, 41.343773, 59.363510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493462, 40.984039, 59.421665>,  <39.592434, 40.768200, 59.456558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493462, 40.984039, 59.421665>,  <39.328506, 41.343773, 59.363510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493462, 40.984039, 59.421665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610291, -0.154231, 0.777018,
		-0.676375, -0.409159, -0.612458,
		0.412384, -0.899334, 0.145388,
		39.617176, 40.714241, 59.465282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690998, 40.852165, 59.527672>,  <39.328506, 41.343773, 59.363510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690998, 40.852165, 59.527672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.035057, 40.698181, 59.661507>,  <39.241493, 40.605789, 59.741806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.035057, 40.698181, 59.661507>,  <38.690998, 40.852165, 59.527672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035057, 40.698181, 59.661507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424995, -0.178274, 0.887467,
		-0.281995, -0.905551, -0.316950,
		0.860150, -0.384963, 0.334582,
		39.293102, 40.582691, 59.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667992, 40.095989, 59.715351>,  <38.690998, 40.852165, 59.527672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667992, 40.095989, 59.715351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947769, 40.280739, 59.933510>,  <39.115635, 40.391590, 60.064404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.947769, 40.280739, 59.933510>,  <38.667992, 40.095989, 59.715351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947769, 40.280739, 59.933510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445287, -0.315267, 0.838049,
		0.559020, -0.829021, -0.014843,
		0.699440, 0.461877, 0.545393,
		39.157600, 40.419300, 60.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826950, 39.619572, 60.208103>,  <38.667992, 40.095989, 59.715351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826950, 39.619572, 60.208103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956627, 39.961678, 60.369804>,  <39.034431, 40.166943, 60.466824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956627, 39.961678, 60.369804>,  <38.826950, 39.619572, 60.208103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956627, 39.961678, 60.369804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336587, -0.295083, 0.894223,
		0.884087, -0.425965, 0.192208,
		0.324191, 0.855266, 0.404253,
		39.053883, 40.218258, 60.491081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891361, 39.390003, 60.880600>,  <38.826950, 39.619572, 60.208103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891361, 39.390003, 60.880600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.913933, 39.788078, 60.912647>,  <38.927475, 40.026924, 60.931877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.913933, 39.788078, 60.912647>,  <38.891361, 39.390003, 60.880600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913933, 39.788078, 60.912647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309759, -0.058837, 0.948993,
		0.949139, -0.078365, 0.304948,
		0.056426, 0.995187, 0.080119,
		38.930859, 40.086636, 60.936684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372253, 39.562328, 61.447018>,  <38.891361, 39.390003, 60.880600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372253, 39.562328, 61.447018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101280, 39.851990, 61.395340>,  <38.938698, 40.025787, 61.364334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.101280, 39.851990, 61.395340>,  <39.372253, 39.562328, 61.447018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101280, 39.851990, 61.395340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365990, -0.179466, 0.913150,
		0.638070, 0.665883, 0.386608,
		-0.677434, 0.724149, -0.129195,
		38.898048, 40.069233, 61.356583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318176, 39.876827, 62.114983>,  <39.372253, 39.562328, 61.447018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318176, 39.876827, 62.114983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992870, 39.989342, 61.911224>,  <38.797688, 40.056850, 61.788971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.992870, 39.989342, 61.911224>,  <39.318176, 39.876827, 62.114983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992870, 39.989342, 61.911224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535972, -0.021226, 0.843969,
		0.226586, 0.959388, 0.168025,
		-0.813260, 0.281289, -0.509396,
		38.748894, 40.073727, 61.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<46.098507, 39.492451, 47.139679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.796776, 39.681412, 46.957329>,  <45.615738, 39.794788, 46.847919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.796776, 39.681412, 46.957329>,  <46.098507, 39.492451, 47.139679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796776, 39.681412, 46.957329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360285, 0.282607, 0.889004,
		0.548802, 0.834847, -0.042979,
		-0.754328, 0.472402, -0.455878,
		45.570477, 39.823132, 46.820564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095726, 40.244621, 47.385822>,  <46.098507, 39.492451, 47.139679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095726, 40.244621, 47.385822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.737854, 40.109261, 47.269184>,  <45.523129, 40.028046, 47.199200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.737854, 40.109261, 47.269184>,  <46.095726, 40.244621, 47.385822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737854, 40.109261, 47.269184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389625, 0.271893, 0.879924,
		-0.218485, 0.900865, -0.375108,
		-0.894683, -0.338402, -0.291595,
		45.469448, 40.007740, 47.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635193, 40.749180, 47.551754>,  <46.095726, 40.244621, 47.385822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635193, 40.749180, 47.551754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.401642, 40.428726, 47.499187>,  <45.261513, 40.236454, 47.467648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.401642, 40.428726, 47.499187>,  <45.635193, 40.749180, 47.551754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401642, 40.428726, 47.499187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434220, 0.171395, 0.884351,
		-0.685960, 0.573417, -0.447943,
		-0.583877, -0.801135, -0.131419,
		45.226479, 40.188385, 47.459763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973442, 40.904221, 47.758438>,  <45.635193, 40.749180, 47.551754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973442, 40.904221, 47.758438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.983025, 40.505241, 47.785351>,  <44.988773, 40.265854, 47.801498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.983025, 40.505241, 47.785351>,  <44.973442, 40.904221, 47.758438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983025, 40.505241, 47.785351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291994, 0.057383, 0.954697,
		-0.956120, -0.042519, -0.289874,
		0.023959, -0.997446, 0.067280,
		44.990211, 40.206009, 47.805534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322712, 40.690048, 47.997524>,  <44.973442, 40.904221, 47.758438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322712, 40.690048, 47.997524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.559994, 40.377060, 48.073261>,  <44.702362, 40.189266, 48.118702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.559994, 40.377060, 48.073261>,  <44.322712, 40.690048, 47.997524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559994, 40.377060, 48.073261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359518, -0.047049, 0.931951,
		-0.720315, -0.620910, -0.309221,
		0.593206, -0.782469, 0.189338,
		44.737957, 40.142319, 48.130062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901012, 40.199989, 48.330666>,  <44.322712, 40.690048, 47.997524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901012, 40.199989, 48.330666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.266426, 40.075447, 48.435371>,  <44.485672, 40.000721, 48.498196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.266426, 40.075447, 48.435371>,  <43.901012, 40.199989, 48.330666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266426, 40.075447, 48.435371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250949, 0.075079, 0.965084,
		-0.320135, -0.947324, -0.009547,
		0.913530, -0.311353, 0.261766,
		44.540485, 39.982040, 48.513901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824810, 39.632607, 48.754288>,  <43.901012, 40.199989, 48.330666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824810, 39.632607, 48.754288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.187378, 39.779816, 48.837189>,  <44.404919, 39.868141, 48.886929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.187378, 39.779816, 48.837189>,  <43.824810, 39.632607, 48.754288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.187378, 39.779816, 48.837189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215024, -0.020265, 0.976399,
		0.363541, -0.929594, 0.060765,
		0.906423, 0.368026, 0.207252,
		44.459305, 39.890224, 48.899364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991177, 39.199116, 49.311508>,  <43.824810, 39.632607, 48.754288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991177, 39.199116, 49.311508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.260509, 39.494812, 49.316467>,  <44.422108, 39.672230, 49.319443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.260509, 39.494812, 49.316467>,  <43.991177, 39.199116, 49.311508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.260509, 39.494812, 49.316467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000086, -0.016845, 0.999858,
		0.739344, -0.673232, -0.011405,
		0.673328, 0.739240, 0.012396,
		44.462509, 39.716583, 49.320187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372200, 39.016693, 49.884987>,  <43.991177, 39.199116, 49.311508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372200, 39.016693, 49.884987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.480980, 39.398689, 49.837608>,  <44.546249, 39.627888, 49.809181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.480980, 39.398689, 49.837608>,  <44.372200, 39.016693, 49.884987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480980, 39.398689, 49.837608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199029, 0.176244, 0.964015,
		0.941505, -0.238587, 0.238001,
		0.271948, 0.954994, -0.118448,
		44.562565, 39.685188, 49.802074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864681, 39.323746, 50.523300>,  <44.372200, 39.016693, 49.884987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864681, 39.323746, 50.523300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.687897, 39.630989, 50.337967>,  <44.581825, 39.815334, 50.226768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.687897, 39.630989, 50.337967>,  <44.864681, 39.323746, 50.523300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687897, 39.630989, 50.337967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291564, 0.365462, 0.883984,
		0.848326, 0.525780, 0.062432,
		-0.441965, 0.768110, -0.463330,
		44.555305, 39.861423, 50.198967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192169, 39.986359, 50.740055>,  <44.864681, 39.323746, 50.523300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192169, 39.986359, 50.740055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.820103, 40.061523, 50.613895>,  <44.596863, 40.106621, 50.538200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.820103, 40.061523, 50.613895>,  <45.192169, 39.986359, 50.740055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820103, 40.061523, 50.613895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243759, 0.326286, 0.913301,
		0.274530, 0.926405, -0.257696,
		-0.930169, 0.187913, -0.315395,
		44.541054, 40.117897, 50.519276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084549, 40.638290, 51.055374>,  <45.192169, 39.986359, 50.740055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084549, 40.638290, 51.055374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.711056, 40.523849, 50.969315>,  <44.486961, 40.455185, 50.917679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.711056, 40.523849, 50.969315>,  <45.084549, 40.638290, 51.055374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711056, 40.523849, 50.969315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303173, 0.312432, 0.900263,
		-0.190349, 0.905831, -0.378467,
		-0.933731, -0.286105, -0.215152,
		44.430935, 40.438019, 50.904770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044899, 41.392418, 50.857460>,  <45.084549, 40.638290, 51.055374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044899, 41.392418, 50.857460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.312134, 41.591087, 51.079082>,  <45.472473, 41.710289, 51.212055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.312134, 41.591087, 51.079082>,  <45.044899, 41.392418, 50.857460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312134, 41.591087, 51.079082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443175, 0.332534, -0.832476,
		-0.597709, 0.801711, 0.002050,
		0.668087, 0.496670, 0.554057,
		45.512558, 41.740089, 51.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077740, 42.063652, 50.552910>,  <45.044899, 41.392418, 50.857460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077740, 42.063652, 50.552910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.427971, 41.977295, 50.725769>,  <45.638111, 41.925480, 50.829487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.427971, 41.977295, 50.725769>,  <45.077740, 42.063652, 50.552910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427971, 41.977295, 50.725769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470706, 0.180130, -0.863706,
		0.108623, 0.959658, 0.259340,
		0.875578, -0.215891, 0.432151,
		45.690643, 41.912529, 50.855415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664577, 42.523613, 50.165142>,  <45.077740, 42.063652, 50.552910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664577, 42.523613, 50.165142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.871422, 42.242401, 50.360428>,  <45.995529, 42.073673, 50.477600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.871422, 42.242401, 50.360428>,  <45.664577, 42.523613, 50.165142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.871422, 42.242401, 50.360428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741660, 0.083317, -0.665581,
		0.427247, 0.706263, 0.564493,
		0.517107, -0.703030, 0.488210,
		46.026554, 42.031490, 50.506889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338554, 42.846844, 50.376770>,  <45.664577, 42.523613, 50.165142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338554, 42.846844, 50.376770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.369209, 42.448692, 50.353645>,  <46.387604, 42.209801, 50.339771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.369209, 42.448692, 50.353645>,  <46.338554, 42.846844, 50.376770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369209, 42.448692, 50.353645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795016, 0.095998, -0.598944,
		0.601728, -0.000062, 0.798701,
		0.076636, -0.995382, -0.057814,
		46.392200, 42.150078, 50.336300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.034950, 42.756294, 50.407516>,  <46.338554, 42.846844, 50.376770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.034950, 42.756294, 50.407516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.893555, 42.410301, 50.265057>,  <46.808716, 42.202705, 50.179581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.893555, 42.410301, 50.265057>,  <47.034950, 42.756294, 50.407516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893555, 42.410301, 50.265057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704769, 0.004083, -0.709425,
		0.615096, -0.501782, 0.608171,
		-0.353494, -0.864985, -0.356151,
		46.787506, 42.150806, 50.158211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.681644, 42.355366, 50.201157>,  <47.034950, 42.756294, 50.407516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.681644, 42.355366, 50.201157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.421715, 42.128731, 49.998493>,  <47.265759, 41.992748, 49.876896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.421715, 42.128731, 49.998493>,  <47.681644, 42.355366, 50.201157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421715, 42.128731, 49.998493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630200, -0.028948, -0.775893,
		0.424947, -0.823490, 0.375877,
		-0.649822, -0.566591, -0.506662,
		47.226768, 41.958752, 49.846493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.073101, 41.831284, 49.922638>,  <47.681644, 42.355366, 50.201157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.073101, 41.831284, 49.922638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.739174, 41.837082, 49.702503>,  <47.538818, 41.840561, 49.570423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.739174, 41.837082, 49.702503>,  <48.073101, 41.831284, 49.922638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739174, 41.837082, 49.702503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547161, -0.088621, -0.832323,
		-0.060831, -0.995960, 0.066055,
		-0.834814, 0.014488, -0.550341,
		47.488731, 41.841431, 49.537399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.177822, 41.357109, 49.326839>,  <48.073101, 41.831284, 49.922638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.177822, 41.357109, 49.326839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.883034, 41.611107, 49.234184>,  <47.706161, 41.763504, 49.178593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.883034, 41.611107, 49.234184>,  <48.177822, 41.357109, 49.326839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.883034, 41.611107, 49.234184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358149, 0.076219, -0.930548,
		-0.573240, -0.768746, -0.283594,
		-0.736971, 0.634996, -0.231634,
		47.661942, 41.801605, 49.164696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.994953, 41.224106, 48.623997>,  <48.177822, 41.357109, 49.326839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.994953, 41.224106, 48.623997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.833702, 41.586075, 48.678558>,  <47.736954, 41.803257, 48.711296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.833702, 41.586075, 48.678558>,  <47.994953, 41.224106, 48.623997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.833702, 41.586075, 48.678558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128318, 0.203476, -0.970635,
		-0.906104, -0.373784, -0.198144,
		-0.403125, 0.904921, 0.136407,
		47.712765, 41.857552, 48.719482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.969749, 41.490131, 47.945221>,  <47.994953, 41.224106, 48.623997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.969749, 41.490131, 47.945221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.899506, 41.834129, 48.136875>,  <47.857361, 42.040527, 48.251869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.899506, 41.834129, 48.136875>,  <47.969749, 41.490131, 47.945221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.899506, 41.834129, 48.136875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292218, 0.510302, -0.808826,
		-0.940090, -0.002026, -0.340920,
		-0.175611, 0.859993, 0.479138,
		47.846821, 42.092129, 48.280617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.424686, 41.785404, 47.613884>,  <47.969749, 41.490131, 47.945221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.424686, 41.785404, 47.613884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.610420, 42.074715, 47.818340>,  <47.721863, 42.248302, 47.941013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.610420, 42.074715, 47.818340>,  <47.424686, 41.785404, 47.613884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610420, 42.074715, 47.818340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265365, 0.436997, -0.859427,
		-0.844969, 0.534703, 0.010981,
		0.464337, 0.723275, 0.511140,
		47.749722, 42.291698, 47.971684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.224548, 42.430279, 47.322361>,  <47.424686, 41.785404, 47.613884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.224548, 42.430279, 47.322361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.547577, 42.511581, 47.543819>,  <47.741394, 42.560364, 47.676693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.547577, 42.511581, 47.543819>,  <47.224548, 42.430279, 47.322361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547577, 42.511581, 47.543819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208704, 0.779510, -0.590599,
		-0.551614, 0.592496, 0.587086,
		0.807567, 0.203256, 0.553644,
		47.789848, 42.572559, 47.709911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288429, 43.124580, 47.412151>,  <47.224548, 42.430279, 47.322361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288429, 43.124580, 47.412151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.663353, 42.990761, 47.451183>,  <47.888309, 42.910469, 47.474602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.663353, 42.990761, 47.451183>,  <47.288429, 43.124580, 47.412151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663353, 42.990761, 47.451183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331026, 0.767186, -0.549407,
		0.108939, 0.547268, 0.829837,
		0.937312, -0.334550, 0.097583,
		47.944546, 42.890396, 47.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.705101, 43.686047, 47.439869>,  <47.288429, 43.124580, 47.412151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.705101, 43.686047, 47.439869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.980492, 43.404335, 47.370594>,  <48.145725, 43.235310, 47.329029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.980492, 43.404335, 47.370594>,  <47.705101, 43.686047, 47.439869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.980492, 43.404335, 47.370594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525796, 0.649170, -0.549652,
		0.499537, 0.287360, 0.817244,
		0.688478, -0.704275, -0.173191,
		48.187035, 43.193054, 47.318638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.380905, 43.877491, 47.657433>,  <47.705101, 43.686047, 47.439869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.380905, 43.877491, 47.657433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.424126, 43.634590, 47.342583>,  <48.450058, 43.488850, 47.153671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.424126, 43.634590, 47.342583>,  <48.380905, 43.877491, 47.657433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.424126, 43.634590, 47.342583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479010, 0.725596, -0.494024,
		0.871134, -0.323663, 0.369280,
		0.108051, -0.607250, -0.787129,
		48.456543, 43.452415, 47.106445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.427326, 44.215145, 48.321972>,  <48.380905, 43.877491, 47.657433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.427326, 44.215145, 48.321972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.342407, 44.469696, 48.025337>,  <48.291454, 44.622425, 47.847355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.342407, 44.469696, 48.025337>,  <48.427326, 44.215145, 48.321972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.342407, 44.469696, 48.025337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188656, 0.717921, 0.670073,
		0.958821, 0.282161, -0.032357,
		-0.212298, 0.636376, -0.741590,
		48.278717, 44.660610, 47.802860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.733234, 45.017498, 48.393059>,  <48.427326, 44.215145, 48.321972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.733234, 45.017498, 48.393059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.384178, 44.982681, 48.200840>,  <48.174744, 44.961792, 48.085510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.384178, 44.982681, 48.200840>,  <48.733234, 45.017498, 48.393059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.384178, 44.982681, 48.200840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398110, 0.696705, 0.596751,
		0.282855, 0.712058, -0.642625,
		-0.872641, -0.087041, -0.480543,
		48.122387, 44.956570, 48.056679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.477318, 45.696251, 48.351116>,  <48.733234, 45.017498, 48.393059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.477318, 45.696251, 48.351116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.169296, 45.448029, 48.291882>,  <47.984482, 45.299095, 48.256340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.169296, 45.448029, 48.291882>,  <48.477318, 45.696251, 48.351116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.169296, 45.448029, 48.291882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558276, 0.543110, 0.627184,
		-0.308774, 0.565639, -0.764664,
		-0.770056, -0.620552, -0.148084,
		47.938278, 45.261864, 48.247456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.822315, 46.114651, 48.305264>,  <48.477318, 45.696251, 48.351116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.822315, 46.114651, 48.305264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.695099, 45.749084, 48.406147>,  <47.618771, 45.529743, 48.466675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.695099, 45.749084, 48.406147>,  <47.822315, 46.114651, 48.305264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695099, 45.749084, 48.406147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583727, 0.398378, 0.707501,
		-0.747069, 0.077796, -0.660178,
		-0.318042, -0.913916, 0.252204,
		47.599686, 45.474911, 48.481808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.040001, 46.162991, 48.299480>,  <47.822315, 46.114651, 48.305264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.040001, 46.162991, 48.299480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.129913, 45.836700, 48.512672>,  <47.183861, 45.640926, 48.640587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.129913, 45.836700, 48.512672>,  <47.040001, 46.162991, 48.299480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.129913, 45.836700, 48.512672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632586, 0.293881, 0.716567,
		-0.741154, -0.498224, -0.449959,
		0.224776, -0.815725, 0.532981,
		47.197346, 45.591984, 48.672565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458321, 45.913681, 48.548908>,  <47.040001, 46.162991, 48.299480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458321, 45.913681, 48.548908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.728935, 45.737915, 48.785286>,  <46.891304, 45.632458, 48.927113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.728935, 45.737915, 48.785286>,  <46.458321, 45.913681, 48.548908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728935, 45.737915, 48.785286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617665, 0.098350, 0.780268,
		-0.400978, -0.892885, -0.204872,
		0.676540, -0.439412, 0.590940,
		46.931896, 45.606091, 48.962566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100536, 45.417511, 48.902180>,  <46.458321, 45.913681, 48.548908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100536, 45.417511, 48.902180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.438263, 45.469444, 49.110130>,  <46.640900, 45.500603, 49.234901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.438263, 45.469444, 49.110130>,  <46.100536, 45.417511, 48.902180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438263, 45.469444, 49.110130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527008, 0.025781, 0.849469,
		0.096888, -0.991200, 0.090192,
		0.844320, 0.129835, 0.519872,
		46.691559, 45.508392, 49.266090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.157265, 44.848133, 49.367214>,  <46.100536, 45.417511, 48.902180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.157265, 44.848133, 49.367214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.374481, 45.149185, 49.516159>,  <46.504810, 45.329815, 49.605526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.374481, 45.149185, 49.516159>,  <46.157265, 44.848133, 49.367214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374481, 45.149185, 49.516159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497356, -0.069004, 0.864798,
		0.676565, -0.654822, 0.336851,
		0.543044, 0.752627, 0.372365,
		46.537395, 45.374973, 49.627869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288147, 44.682545, 50.089016>,  <46.157265, 44.848133, 49.367214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288147, 44.682545, 50.089016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.354279, 45.077011, 50.084106>,  <46.393959, 45.313690, 50.081161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.354279, 45.077011, 50.084106>,  <46.288147, 44.682545, 50.089016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354279, 45.077011, 50.084106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490846, 0.093073, 0.866260,
		0.855415, -0.137195, 0.499442,
		0.165331, 0.986161, -0.012275,
		46.403877, 45.372860, 50.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.689354, 44.826912, 50.731678>,  <46.288147, 44.682545, 50.089016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.689354, 44.826912, 50.731678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.543091, 45.183075, 50.623260>,  <46.455334, 45.396774, 50.558208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.543091, 45.183075, 50.623260>,  <46.689354, 44.826912, 50.731678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.543091, 45.183075, 50.623260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249953, 0.186573, 0.950113,
		0.896559, 0.415164, 0.154339,
		-0.365657, 0.890410, -0.271046,
		46.433395, 45.450199, 50.541946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002914, 45.364471, 51.216003>,  <46.689354, 44.826912, 50.731678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002914, 45.364471, 51.216003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.663101, 45.516220, 51.069378>,  <46.459213, 45.607269, 50.981403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.663101, 45.516220, 51.069378>,  <47.002914, 45.364471, 51.216003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663101, 45.516220, 51.069378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319092, 0.183802, 0.929729,
		0.420089, 0.906804, -0.035091,
		-0.849532, 0.379372, -0.366568,
		46.408241, 45.630032, 50.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963917, 46.029213, 51.630417>,  <47.002914, 45.364471, 51.216003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963917, 46.029213, 51.630417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614647, 45.959999, 51.448151>,  <46.405087, 45.918472, 51.338791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614647, 45.959999, 51.448151>,  <46.963917, 46.029213, 51.630417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614647, 45.959999, 51.448151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484832, 0.404452, 0.775472,
		0.050116, 0.898042, -0.437046,
		-0.873170, -0.173031, -0.455669,
		46.352695, 45.908089, 51.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564064, 46.636517, 51.819714>,  <46.963917, 46.029213, 51.630417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564064, 46.636517, 51.819714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.295181, 46.362549, 51.707268>,  <46.133850, 46.198170, 51.639801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.295181, 46.362549, 51.707268>,  <46.564064, 46.636517, 51.819714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295181, 46.362549, 51.707268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538344, 0.191524, 0.820673,
		-0.508257, 0.702995, -0.497467,
		-0.672206, -0.684921, -0.281110,
		46.093521, 46.157074, 51.622936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952602, 46.963177, 51.927952>,  <46.564064, 46.636517, 51.819714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952602, 46.963177, 51.927952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.861557, 46.573677, 51.929333>,  <45.806931, 46.339977, 51.930161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.861557, 46.573677, 51.929333>,  <45.952602, 46.963177, 51.927952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861557, 46.573677, 51.929333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692740, 0.164416, 0.702196,
		-0.684328, 0.157436, -0.711976,
		-0.227611, -0.973746, 0.003452,
		45.793274, 46.281551, 51.930370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233288, 46.870007, 51.888908>,  <45.952602, 46.963177, 51.927952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233288, 46.870007, 51.888908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.340363, 46.514534, 52.037819>,  <45.404606, 46.301250, 52.127167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.340363, 46.514534, 52.037819>,  <45.233288, 46.870007, 51.888908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340363, 46.514534, 52.037819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804023, 0.006879, 0.594559,
		-0.530934, -0.458474, -0.712679,
		0.267687, -0.888681, 0.372275,
		45.420670, 46.247929, 52.149502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651657, 46.453053, 51.859985>,  <45.233288, 46.870007, 51.888908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651657, 46.453053, 51.859985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.886192, 46.271454, 52.128342>,  <45.026913, 46.162495, 52.289356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.886192, 46.271454, 52.128342>,  <44.651657, 46.453053, 51.859985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886192, 46.271454, 52.128342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759326, -0.019520, 0.650417,
		-0.282193, -0.890788, -0.356178,
		0.586337, -0.453999, 0.670891,
		45.062092, 46.135254, 52.329609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211044, 46.005714, 52.125446>,  <44.651657, 46.453053, 51.859985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211044, 46.005714, 52.125446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.510448, 45.995575, 52.390503>,  <44.690090, 45.989491, 52.549538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.510448, 45.995575, 52.390503>,  <44.211044, 46.005714, 52.125446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510448, 45.995575, 52.390503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659176, 0.080486, 0.747669,
		-0.072288, -0.996433, 0.043534,
		0.748506, -0.025351, 0.662643,
		44.735001, 45.987968, 52.589294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098869, 45.398869, 52.680931>,  <44.211044, 46.005714, 52.125446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098869, 45.398869, 52.680931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.306557, 45.694527, 52.852547>,  <44.431168, 45.871922, 52.955517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.306557, 45.694527, 52.852547>,  <44.098869, 45.398869, 52.680931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306557, 45.694527, 52.852547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562573, -0.082316, 0.822640,
		0.643370, -0.668493, 0.373085,
		0.519218, 0.739149, 0.429035,
		44.462322, 45.916271, 52.981258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140335, 45.094185, 53.288548>,  <44.098869, 45.398869, 52.680931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140335, 45.094185, 53.288548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.227707, 45.480156, 53.346794>,  <44.280128, 45.711739, 53.381744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.227707, 45.480156, 53.346794>,  <44.140335, 45.094185, 53.288548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227707, 45.480156, 53.346794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408237, -0.045184, 0.911757,
		0.886359, -0.258598, 0.384050,
		0.218425, 0.964928, 0.145619,
		44.293236, 45.769634, 53.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497631, 45.037712, 53.974087>,  <44.140335, 45.094185, 53.288548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497631, 45.037712, 53.974087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.388577, 45.415131, 53.898846>,  <44.323143, 45.641582, 53.853703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.388577, 45.415131, 53.898846>,  <44.497631, 45.037712, 53.974087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.388577, 45.415131, 53.898846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624331, -0.024752, 0.780767,
		0.732038, 0.330301, 0.595837,
		-0.272637, 0.943551, -0.188098,
		44.306786, 45.698196, 53.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526691, 45.359627, 54.580376>,  <44.497631, 45.037712, 53.974087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526691, 45.359627, 54.580376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.271397, 45.586754, 54.372437>,  <44.118221, 45.723030, 54.247673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.271397, 45.586754, 54.372437>,  <44.526691, 45.359627, 54.580376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271397, 45.586754, 54.372437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651701, -0.039048, 0.757470,
		0.409806, 0.822228, 0.394969,
		-0.638236, 0.567817, -0.519845,
		44.079926, 45.757099, 54.216484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327724, 45.972073, 55.047997>,  <44.526691, 45.359627, 54.580376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327724, 45.972073, 55.047997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.043739, 45.960777, 54.766525>,  <43.873348, 45.953999, 54.597645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.043739, 45.960777, 54.766525>,  <44.327724, 45.972073, 55.047997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.043739, 45.960777, 54.766525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704242, 0.028982, 0.709368,
		0.000361, 0.999181, -0.040465,
		-0.709960, -0.028241, -0.703676,
		43.830753, 45.952305, 54.555424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.910454, 46.483944, 55.232349>,  <44.327724, 45.972073, 55.047997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.910454, 46.483944, 55.232349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679962, 46.238785, 55.016087>,  <43.541668, 46.091690, 54.886330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.679962, 46.238785, 55.016087>,  <43.910454, 46.483944, 55.232349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679962, 46.238785, 55.016087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760279, 0.159248, 0.629775,
		-0.299888, 0.773950, -0.557736,
		-0.576232, -0.612896, -0.540661,
		43.507092, 46.054916, 54.853889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168186, 46.814236, 55.211250>,  <43.910454, 46.483944, 55.232349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168186, 46.814236, 55.211250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119644, 46.434853, 55.094147>,  <43.090519, 46.207222, 55.023884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.119644, 46.434853, 55.094147>,  <43.168186, 46.814236, 55.211250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119644, 46.434853, 55.094147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777702, -0.092426, 0.621802,
		-0.616809, 0.303138, -0.726398,
		-0.121354, -0.948454, -0.292760,
		43.083237, 46.150318, 55.006317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434311, 46.739689, 54.960754>,  <43.168186, 46.814236, 55.211250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434311, 46.739689, 54.960754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582214, 46.389381, 55.084885>,  <42.670956, 46.179195, 55.159363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.582214, 46.389381, 55.084885>,  <42.434311, 46.739689, 54.960754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582214, 46.389381, 55.084885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801774, -0.131976, 0.582873,
		-0.469507, -0.464335, -0.750970,
		0.369758, -0.875772, 0.310328,
		42.693142, 46.126652, 55.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843807, 46.343418, 55.112206>,  <42.434311, 46.739689, 54.960754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843807, 46.343418, 55.112206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124210, 46.134911, 55.306881>,  <42.292450, 46.009808, 55.423687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.124210, 46.134911, 55.306881>,  <41.843807, 46.343418, 55.112206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124210, 46.134911, 55.306881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645347, -0.173227, 0.743989,
		-0.303511, -0.835626, -0.457833,
		0.701005, -0.521270, 0.486692,
		42.334511, 45.978531, 55.452888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455238, 45.782352, 55.443115>,  <41.843807, 46.343418, 55.112206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455238, 45.782352, 55.443115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796051, 45.792503, 55.652267>,  <42.000538, 45.798595, 55.777760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.796051, 45.792503, 55.652267>,  <41.455238, 45.782352, 55.443115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796051, 45.792503, 55.652267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518214, -0.100652, 0.849308,
		0.074187, -0.994598, -0.072605,
		0.852027, 0.025382, 0.522881,
		42.051659, 45.800117, 55.809132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110126, 45.049980, 55.141430>,  <41.455238, 45.782352, 55.443115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110126, 45.049980, 55.141430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.743164, 44.971596, 55.002888>,  <40.522987, 44.924564, 54.919762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.743164, 44.971596, 55.002888>,  <41.110126, 45.049980, 55.141430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743164, 44.971596, 55.002888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303255, 0.219311, -0.927329,
		0.257686, -0.955772, -0.141769,
		-0.917406, -0.195968, -0.346356,
		40.467941, 44.912807, 54.898983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090656, 44.515430, 54.606468>,  <41.110126, 45.049980, 55.141430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090656, 44.515430, 54.606468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765297, 44.742363, 54.555050>,  <40.570080, 44.878521, 54.524200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765297, 44.742363, 54.555050>,  <41.090656, 44.515430, 54.606468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765297, 44.742363, 54.555050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238803, 0.124164, -0.963097,
		-0.530432, -0.814077, -0.236474,
		-0.813397, 0.567329, -0.128543,
		40.521278, 44.912563, 54.516487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792980, 44.357143, 53.879868>,  <41.090656, 44.515430, 54.606468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792980, 44.357143, 53.879868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612549, 44.709488, 53.937298>,  <40.504288, 44.920895, 53.971756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.612549, 44.709488, 53.937298>,  <40.792980, 44.357143, 53.879868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612549, 44.709488, 53.937298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163353, 0.239647, -0.957019,
		-0.877405, -0.408241, -0.251991,
		-0.451083, 0.880857, 0.143580,
		40.477222, 44.973743, 53.980373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305996, 44.437698, 53.363922>,  <40.792980, 44.357143, 53.879868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305996, 44.437698, 53.363922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.365696, 44.811729, 53.492516>,  <40.401516, 45.036148, 53.569672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.365696, 44.811729, 53.492516>,  <40.305996, 44.437698, 53.363922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365696, 44.811729, 53.492516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233498, 0.282601, -0.930384,
		-0.960834, 0.213930, -0.176160,
		0.149254, 0.935078, 0.321485,
		40.410473, 45.092255, 53.588963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948410, 44.881638, 52.917171>,  <40.305996, 44.437698, 53.363922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948410, 44.881638, 52.917171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226089, 45.105629, 53.098061>,  <40.392696, 45.240025, 53.206593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226089, 45.105629, 53.098061>,  <39.948410, 44.881638, 52.917171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226089, 45.105629, 53.098061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332121, 0.308192, -0.891467,
		-0.638577, 0.769050, 0.027965,
		0.694201, 0.559982, 0.452222,
		40.434349, 45.273624, 53.233727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
