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
	<24.447855, 35.200531, 34.526169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246677, 34.962273, 34.776691>,  <24.125971, 34.819317, 34.927006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246677, 34.962273, 34.776691>,  <24.447855, 35.200531, 34.526169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246677, 34.962273, 34.776691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859263, 0.422844, -0.287874,
		-0.093358, -0.682943, -0.724481,
		-0.502944, -0.595645, 0.626303,
		24.095795, 34.783581, 34.964581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730471, 35.933456, 34.447586>,  <24.447855, 35.200531, 34.526169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730471, 35.933456, 34.447586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078037, 35.753433, 34.365189>,  <25.286577, 35.645420, 34.315750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078037, 35.753433, 34.365189>,  <24.730471, 35.933456, 34.447586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078037, 35.753433, 34.365189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484176, 0.686487, 0.542503,
		-0.102745, -0.571127, 0.814406,
		0.868917, -0.450055, -0.205993,
		25.338713, 35.618416, 34.303391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115593, 36.073494, 35.054077>,  <24.730471, 35.933456, 34.447586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115593, 36.073494, 35.054077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363548, 36.009525, 34.746788>,  <25.512321, 35.971146, 34.562416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363548, 36.009525, 34.746788>,  <25.115593, 36.073494, 35.054077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363548, 36.009525, 34.746788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451540, 0.873378, 0.182543,
		0.641753, -0.460038, 0.613611,
		0.619891, -0.159923, -0.768219,
		25.549515, 35.961548, 34.516323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900351, 36.087105, 35.169865>,  <25.115593, 36.073494, 35.054077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900351, 36.087105, 35.169865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852249, 36.201054, 34.789467>,  <25.823387, 36.269424, 34.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852249, 36.201054, 34.789467>,  <25.900351, 36.087105, 35.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852249, 36.201054, 34.789467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384278, 0.896624, 0.219992,
		0.915352, -0.338990, -0.217293,
		-0.120255, 0.284871, -0.950993,
		25.816174, 36.286514, 34.504169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385132, 36.536915, 34.736851>,  <25.900351, 36.087105, 35.169865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385132, 36.536915, 34.736851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018591, 36.596226, 34.588089>,  <25.798666, 36.631813, 34.498833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018591, 36.596226, 34.588089>,  <26.385132, 36.536915, 34.736851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018591, 36.596226, 34.588089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052254, 0.876656, 0.478271,
		0.396950, 0.457698, -0.795577,
		-0.916351, 0.148277, -0.371906,
		25.743685, 36.640709, 34.476517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468864, 37.227203, 34.431126>,  <26.385132, 36.536915, 34.736851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468864, 37.227203, 34.431126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097492, 37.152164, 34.559387>,  <25.874668, 37.107140, 34.636345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097492, 37.152164, 34.559387>,  <26.468864, 37.227203, 34.431126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097492, 37.152164, 34.559387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016244, 0.882805, 0.469459,
		-0.371147, 0.430652, -0.822672,
		-0.928432, -0.187602, 0.320655,
		25.818962, 37.095882, 34.655582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208464, 37.864090, 34.004955>,  <26.468864, 37.227203, 34.431126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208464, 37.864090, 34.004955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185619, 37.994469, 33.627491>,  <26.171913, 38.072697, 33.401012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185619, 37.994469, 33.627491>,  <26.208464, 37.864090, 34.004955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185619, 37.994469, 33.627491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626644, -0.724121, -0.288041,
		-0.777211, -0.607789, -0.162899,
		-0.057110, 0.325948, -0.943661,
		26.168486, 38.092255, 33.344391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295109, 38.620552, 33.752193>,  <26.208464, 37.864090, 34.004955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295109, 38.620552, 33.752193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620571, 38.563641, 33.526726>,  <26.815849, 38.529495, 33.391445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620571, 38.563641, 33.526726>,  <26.295109, 38.620552, 33.752193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620571, 38.563641, 33.526726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382542, 0.599063, -0.703410,
		0.437750, 0.787961, 0.433005,
		0.813656, -0.142275, -0.563668,
		26.864668, 38.520958, 33.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423555, 39.158932, 33.440464>,  <26.295109, 38.620552, 33.752193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423555, 39.158932, 33.440464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644489, 38.945942, 33.183903>,  <26.777050, 38.818150, 33.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644489, 38.945942, 33.183903>,  <26.423555, 39.158932, 33.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644489, 38.945942, 33.183903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536927, 0.361329, -0.762333,
		0.637678, 0.765451, -0.086323,
		0.552337, -0.532472, -0.641403,
		26.810190, 38.786201, 32.991482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633718, 39.614750, 32.843739>,  <26.423555, 39.158932, 33.440464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633718, 39.614750, 32.843739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687302, 39.253773, 32.679958>,  <26.719452, 39.037186, 32.581688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687302, 39.253773, 32.679958>,  <26.633718, 39.614750, 32.843739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687302, 39.253773, 32.679958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311804, 0.353812, -0.881813,
		0.940656, 0.245794, -0.233990,
		0.133956, -0.902442, -0.409455,
		26.727488, 38.983040, 32.557121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845098, 39.755600, 32.096657>,  <26.633718, 39.614750, 32.843739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845098, 39.755600, 32.096657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740286, 39.369781, 32.084076>,  <26.677399, 39.138290, 32.076527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740286, 39.369781, 32.084076>,  <26.845098, 39.755600, 32.096657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740286, 39.369781, 32.084076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265081, 0.103278, -0.958679,
		0.927939, -0.242866, -0.282745,
		-0.262032, -0.964546, -0.031456,
		26.661676, 39.080418, 32.074638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227043, 39.587883, 31.551168>,  <26.845098, 39.755600, 32.096657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227043, 39.587883, 31.551168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921501, 39.337482, 31.613966>,  <26.738176, 39.187241, 31.651644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921501, 39.337482, 31.613966>,  <27.227043, 39.587883, 31.551168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921501, 39.337482, 31.613966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318924, 0.154651, -0.935078,
		0.561081, -0.764333, -0.317778,
		-0.763855, -0.626002, 0.156993,
		26.692345, 39.149681, 31.661064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147007, 39.136662, 30.994287>,  <27.227043, 39.587883, 31.551168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147007, 39.136662, 30.994287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790709, 39.070763, 31.163723>,  <26.576929, 39.031223, 31.265385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790709, 39.070763, 31.163723>,  <27.147007, 39.136662, 30.994287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790709, 39.070763, 31.163723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414936, -0.085547, -0.905820,
		0.185467, -0.982619, 0.007842,
		-0.890747, -0.164746, 0.423591,
		26.523485, 39.021339, 31.290800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880907, 38.562977, 30.735943>,  <27.147007, 39.136662, 30.994287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880907, 38.562977, 30.735943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557703, 38.752151, 30.876488>,  <26.363781, 38.865654, 30.960814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557703, 38.752151, 30.876488>,  <26.880907, 38.562977, 30.735943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557703, 38.752151, 30.876488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494582, -0.220390, -0.840724,
		-0.320171, -0.853090, 0.411982,
		-0.808010, 0.472934, 0.351360,
		26.315300, 38.894032, 30.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275410, 38.070366, 30.720886>,  <26.880907, 38.562977, 30.735943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275410, 38.070366, 30.720886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146191, 38.448441, 30.701839>,  <26.068659, 38.675285, 30.690413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146191, 38.448441, 30.701839>,  <26.275410, 38.070366, 30.720886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146191, 38.448441, 30.701839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515191, -0.217843, -0.828928,
		-0.793862, -0.243253, 0.557325,
		-0.323049, 0.945184, -0.047616,
		26.049276, 38.731995, 30.687555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567284, 38.005478, 30.488121>,  <26.275410, 38.070366, 30.720886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567284, 38.005478, 30.488121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657385, 38.388527, 30.416330>,  <25.711445, 38.618359, 30.373257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.657385, 38.388527, 30.416330>,  <25.567284, 38.005478, 30.488121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.657385, 38.388527, 30.416330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385821, -0.081477, -0.918969,
		-0.894653, 0.276247, 0.351119,
		0.225254, 0.957627, -0.179476,
		25.724960, 38.675816, 30.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930586, 38.266426, 30.067028>,  <25.567284, 38.005478, 30.488121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930586, 38.266426, 30.067028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212078, 38.547039, 30.022085>,  <25.380974, 38.715405, 29.995119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.212078, 38.547039, 30.022085>,  <24.930586, 38.266426, 30.067028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212078, 38.547039, 30.022085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342002, 0.195877, -0.919058,
		-0.622737, 0.685193, 0.377768,
		0.703728, 0.701528, -0.112357,
		25.423197, 38.757496, 29.988379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.619272, 38.829418, 29.623133>,  <24.930586, 38.266426, 30.067028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.619272, 38.829418, 29.623133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013504, 38.885292, 29.584938>,  <25.250044, 38.918816, 29.562021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013504, 38.885292, 29.584938>,  <24.619272, 38.829418, 29.623133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013504, 38.885292, 29.584938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114839, 0.137769, -0.983784,
		-0.124264, 0.980565, 0.151824,
		0.985581, 0.139685, -0.095488,
		25.309179, 38.927197, 29.556292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785631, 39.371052, 29.157928>,  <24.619272, 38.829418, 29.623133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785631, 39.371052, 29.157928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113604, 39.142502, 29.172031>,  <25.310387, 39.005371, 29.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113604, 39.142502, 29.172031>,  <24.785631, 39.371052, 29.157928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113604, 39.142502, 29.172031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082658, -0.179109, -0.980351,
		0.566462, 0.800906, -0.194086,
		0.819932, -0.571375, 0.035257,
		25.359583, 38.971088, 29.182608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131809, 39.606602, 28.576799>,  <24.785631, 39.371052, 29.157928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131809, 39.606602, 28.576799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304779, 39.255013, 28.657213>,  <25.408562, 39.044060, 28.705462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304779, 39.255013, 28.657213>,  <25.131809, 39.606602, 28.576799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304779, 39.255013, 28.657213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, -0.245480, -0.968169,
		0.900344, 0.408834, -0.149114,
		0.432425, -0.878973, 0.201034,
		25.434507, 38.991322, 28.717524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563765, 39.521019, 27.978247>,  <25.131809, 39.606602, 28.576799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563765, 39.521019, 27.978247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492430, 39.159252, 28.133284>,  <25.449629, 38.942192, 28.226307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492430, 39.159252, 28.133284>,  <25.563765, 39.521019, 27.978247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492430, 39.159252, 28.133284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183771, -0.356364, -0.916097,
		0.966656, -0.234602, -0.102652,
		-0.178336, -0.904415, 0.387594,
		25.438929, 38.887928, 28.249561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013445, 39.031807, 27.630360>,  <25.563765, 39.521019, 27.978247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013445, 39.031807, 27.630360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681740, 38.847305, 27.756580>,  <25.482718, 38.736607, 27.832312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681740, 38.847305, 27.756580>,  <26.013445, 39.031807, 27.630360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681740, 38.847305, 27.756580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209014, -0.267681, -0.940564,
		0.518302, -0.845929, 0.125570,
		-0.829262, -0.461250, 0.315551,
		25.432961, 38.708931, 27.851246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013105, 38.489132, 27.258076>,  <26.013445, 39.031807, 27.630360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013105, 38.489132, 27.258076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635904, 38.493992, 27.391102>,  <25.409584, 38.496906, 27.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635904, 38.493992, 27.391102>,  <26.013105, 38.489132, 27.258076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635904, 38.493992, 27.391102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301836, -0.452089, -0.839351,
		0.140152, -0.891890, 0.429988,
		-0.943001, 0.012149, 0.332566,
		25.353004, 38.497639, 27.490871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722160, 37.728085, 27.173046>,  <26.013105, 38.489132, 27.258076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722160, 37.728085, 27.173046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426853, 37.997181, 27.192572>,  <25.249670, 38.158638, 27.204287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426853, 37.997181, 27.192572>,  <25.722160, 37.728085, 27.173046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426853, 37.997181, 27.192572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466317, -0.456772, -0.757567,
		-0.487346, -0.582052, 0.650930,
		-0.738270, 0.672737, 0.048815,
		25.205374, 38.199001, 27.207214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225103, 37.418785, 26.826233>,  <25.722160, 37.728085, 27.173046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225103, 37.418785, 26.826233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102917, 37.799664, 26.825289>,  <25.029604, 38.028191, 26.824722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.102917, 37.799664, 26.825289>,  <25.225103, 37.418785, 26.826233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.102917, 37.799664, 26.825289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519092, -0.168603, -0.837924,
		-0.798269, -0.254733, 0.545782,
		-0.305468, 0.952200, -0.002361,
		25.011276, 38.085323, 26.824581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.495586, 37.149288, 26.827021>,  <25.225103, 37.418785, 26.826233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.495586, 37.149288, 26.827021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500532, 37.546238, 26.876078>,  <24.503500, 37.784409, 26.905512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500532, 37.546238, 26.876078>,  <24.495586, 37.149288, 26.827021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500532, 37.546238, 26.876078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274174, 0.114588, -0.954829,
		-0.961600, 0.045433, -0.270666,
		0.012366, 0.992374, 0.122644,
		24.504242, 37.843948, 26.912870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199436, 37.088352, 26.110313>,  <24.495586, 37.149288, 26.827021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199436, 37.088352, 26.110313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545166, 37.057533, 25.911516>,  <24.752604, 37.039040, 25.792238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545166, 37.057533, 25.911516>,  <24.199436, 37.088352, 26.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545166, 37.057533, 25.911516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245109, -0.798357, 0.550043,
		-0.439160, -0.597235, -0.671155,
		0.864327, -0.077050, -0.496994,
		24.804464, 37.034420, 25.762419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.348276, 36.443195, 25.693071>,  <24.199436, 37.088352, 26.110313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.348276, 36.443195, 25.693071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683836, 36.600098, 25.844006>,  <24.885172, 36.694241, 25.934566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683836, 36.600098, 25.844006>,  <24.348276, 36.443195, 25.693071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683836, 36.600098, 25.844006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211839, -0.873911, 0.437498,
		0.501369, -0.287082, -0.816219,
		0.838900, 0.392255, 0.377336,
		24.935507, 36.717773, 25.957207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044788, 36.079334, 25.495678>,  <24.348276, 36.443195, 25.693071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044788, 36.079334, 25.495678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007702, 36.246437, 25.857204>,  <24.985451, 36.346699, 26.074120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.007702, 36.246437, 25.857204>,  <25.044788, 36.079334, 25.495678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007702, 36.246437, 25.857204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309775, -0.850574, 0.424927,
		0.946279, 0.319376, -0.050552,
		-0.092714, 0.417759, 0.903815,
		24.979887, 36.371765, 26.128349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693813, 35.802902, 25.722130>,  <25.044788, 36.079334, 25.495678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693813, 35.802902, 25.722130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409048, 35.910995, 25.981405>,  <25.238188, 35.975853, 26.136971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409048, 35.910995, 25.981405>,  <25.693813, 35.802902, 25.722130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409048, 35.910995, 25.981405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121008, -0.861989, 0.492272,
		0.691762, 0.428892, 0.580962,
		-0.711915, 0.270234, 0.648191,
		25.195475, 35.992065, 26.175863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033073, 35.856747, 26.384132>,  <25.693813, 35.802902, 25.722130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033073, 35.856747, 26.384132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649775, 35.748978, 26.422447>,  <25.419796, 35.684315, 26.445436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649775, 35.748978, 26.422447>,  <26.033073, 35.856747, 26.384132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649775, 35.748978, 26.422447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274909, -0.775853, 0.567871,
		-0.078681, 0.570493, 0.817525,
		-0.958246, -0.269425, 0.095789,
		25.362301, 35.668152, 26.451183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870417, 35.875622, 27.094252>,  <26.033073, 35.856747, 26.384132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870417, 35.875622, 27.094252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611744, 35.623676, 26.922171>,  <25.456541, 35.472507, 26.818922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611744, 35.623676, 26.922171>,  <25.870417, 35.875622, 27.094252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611744, 35.623676, 26.922171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279903, -0.720620, 0.634319,
		-0.709548, 0.289787, 0.642313,
		-0.646681, -0.629865, -0.430202,
		25.417740, 35.434715, 26.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433769, 35.480556, 27.587582>,  <25.870417, 35.875622, 27.094252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433769, 35.480556, 27.587582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487591, 35.276588, 27.247728>,  <25.519884, 35.154209, 27.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487591, 35.276588, 27.247728>,  <25.433769, 35.480556, 27.587582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487591, 35.276588, 27.247728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157588, -0.835506, 0.526398,
		-0.978295, -0.204721, -0.032065,
		0.134555, -0.509920, -0.849633,
		25.527958, 35.123611, 26.992838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078840, 34.811241, 27.540852>,  <25.433769, 35.480556, 27.587582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078840, 34.811241, 27.540852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392361, 34.763515, 27.297075>,  <25.580473, 34.734882, 27.150810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392361, 34.763515, 27.297075>,  <25.078840, 34.811241, 27.540852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392361, 34.763515, 27.297075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198002, -0.882138, 0.427350,
		-0.588598, -0.455629, -0.667799,
		0.783803, -0.119312, -0.609440,
		25.627502, 34.727722, 27.114243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003254, 34.125999, 27.206514>,  <25.078840, 34.811241, 27.540852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003254, 34.125999, 27.206514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371931, 34.277348, 27.240730>,  <25.593138, 34.368156, 27.261259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371931, 34.277348, 27.240730>,  <25.003254, 34.125999, 27.206514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371931, 34.277348, 27.240730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306588, -0.845613, 0.436971,
		0.237670, -0.376528, -0.895399,
		0.921692, 0.378373, 0.085538,
		25.648439, 34.390858, 27.266392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575966, 33.690819, 26.853441>,  <25.003254, 34.125999, 27.206514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575966, 33.690819, 26.853441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699507, 33.879620, 27.183733>,  <25.773632, 33.992901, 27.381908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.699507, 33.879620, 27.183733>,  <25.575966, 33.690819, 26.853441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.699507, 33.879620, 27.183733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489913, -0.823089, 0.287246,
		0.815227, 0.315817, -0.485452,
		0.308853, 0.472000, 0.825727,
		25.792162, 34.021221, 27.431452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457418, 33.002796, 26.731255>,  <25.575966, 33.690819, 26.853441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457418, 33.002796, 26.731255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769878, 33.026386, 26.482634>,  <25.957354, 33.040539, 26.333462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769878, 33.026386, 26.482634>,  <25.457418, 33.002796, 26.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769878, 33.026386, 26.482634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597882, 0.216106, 0.771904,
		0.179840, -0.974587, 0.133555,
		0.781150, 0.058969, -0.621552,
		26.004223, 33.044079, 26.296167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968025, 32.463085, 26.886118>,  <25.457418, 33.002796, 26.731255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968025, 32.463085, 26.886118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170868, 32.777660, 26.745058>,  <26.292574, 32.966404, 26.660423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170868, 32.777660, 26.745058>,  <25.968025, 32.463085, 26.886118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170868, 32.777660, 26.745058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446648, 0.110143, 0.887904,
		0.737123, -0.607771, -0.295407,
		0.507105, 0.786437, -0.352649,
		26.323000, 33.013592, 26.639263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520151, 32.475872, 27.326782>,  <25.968025, 32.463085, 26.886118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520151, 32.475872, 27.326782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599743, 32.816708, 27.133141>,  <26.647497, 33.021210, 27.016954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599743, 32.816708, 27.133141>,  <26.520151, 32.475872, 27.326782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599743, 32.816708, 27.133141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669938, 0.242265, 0.701777,
		0.715256, -0.463960, -0.522638,
		0.198979, 0.852085, -0.484106,
		26.659437, 33.072334, 26.987909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241304, 32.542065, 27.145908>,  <26.520151, 32.475872, 27.326782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241304, 32.542065, 27.145908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096979, 32.913792, 27.177361>,  <27.010384, 33.136829, 27.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096979, 32.913792, 27.177361>,  <27.241304, 32.542065, 27.145908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096979, 32.913792, 27.177361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691960, 0.210220, 0.690651,
		0.625305, 0.303606, -0.718900,
		-0.360813, 0.929318, 0.078631,
		26.988735, 33.192589, 27.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836857, 32.860180, 27.269070>,  <27.241304, 32.542065, 27.145908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836857, 32.860180, 27.269070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558014, 33.126053, 27.376577>,  <27.390709, 33.285576, 27.441082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.558014, 33.126053, 27.376577>,  <27.836857, 32.860180, 27.269070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558014, 33.126053, 27.376577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578886, 0.300632, 0.757965,
		0.423007, 0.683970, -0.594349,
		-0.697106, 0.664685, 0.268771,
		27.348883, 33.325459, 27.457209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184660, 33.478062, 27.438126>,  <27.836857, 32.860180, 27.269070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184660, 33.478062, 27.438126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837669, 33.511848, 27.634226>,  <27.629475, 33.532120, 27.751886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837669, 33.511848, 27.634226>,  <28.184660, 33.478062, 27.438126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837669, 33.511848, 27.634226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472161, 0.450162, 0.757904,
		-0.156671, 0.888942, -0.430390,
		-0.867478, 0.084471, 0.490251,
		27.577425, 33.537189, 27.781301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218481, 34.137505, 27.810825>,  <28.184660, 33.478062, 27.438126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218481, 34.137505, 27.810825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918686, 33.943256, 27.990801>,  <27.738810, 33.826710, 28.098785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918686, 33.943256, 27.990801>,  <28.218481, 34.137505, 27.810825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918686, 33.943256, 27.990801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334992, 0.308013, 0.890454,
		-0.571008, 0.818109, -0.068173,
		-0.749487, -0.485618, 0.449938,
		27.693840, 33.797569, 28.125782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785864, 34.714985, 28.119219>,  <28.218481, 34.137505, 27.810825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785864, 34.714985, 28.119219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730707, 34.375488, 28.323427>,  <27.697613, 34.171791, 28.445951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730707, 34.375488, 28.323427>,  <27.785864, 34.714985, 28.119219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730707, 34.375488, 28.323427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100866, 0.500730, 0.859707,
		-0.985298, 0.170040, 0.016563,
		-0.137891, -0.848738, 0.510519,
		27.689341, 34.120869, 28.476583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386538, 34.916683, 28.587700>,  <27.785864, 34.714985, 28.119219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386538, 34.916683, 28.587700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532047, 34.569023, 28.721710>,  <27.619352, 34.360428, 28.802116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532047, 34.569023, 28.721710>,  <27.386538, 34.916683, 28.587700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532047, 34.569023, 28.721710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011579, 0.355420, 0.934635,
		-0.931415, -0.343875, 0.119229,
		0.363774, -0.869153, 0.335025,
		27.641180, 34.308277, 28.822218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014570, 34.754227, 29.134804>,  <27.386538, 34.916683, 28.587700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014570, 34.754227, 29.134804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341721, 34.533360, 29.199537>,  <27.538012, 34.400841, 29.238377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341721, 34.533360, 29.199537>,  <27.014570, 34.754227, 29.134804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341721, 34.533360, 29.199537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159577, 0.487895, 0.858192,
		-0.552822, -0.676070, 0.487151,
		0.817877, -0.552166, 0.161834,
		27.587084, 34.367710, 29.248087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922331, 34.448467, 29.862411>,  <27.014570, 34.754227, 29.134804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922331, 34.448467, 29.862411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310083, 34.425510, 29.766905>,  <27.542734, 34.411736, 29.709600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310083, 34.425510, 29.766905>,  <26.922331, 34.448467, 29.862411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310083, 34.425510, 29.766905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245114, 0.285067, 0.926637,
		0.014883, -0.956788, 0.290406,
		0.969380, -0.057392, -0.238764,
		27.600897, 34.408295, 29.695276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245499, 34.053749, 30.460100>,  <26.922331, 34.448467, 29.862411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245499, 34.053749, 30.460100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514675, 34.277206, 30.266165>,  <27.676182, 34.411282, 30.149803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514675, 34.277206, 30.266165>,  <27.245499, 34.053749, 30.460100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514675, 34.277206, 30.266165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356785, 0.329032, 0.874324,
		0.647963, -0.761351, 0.022103,
		0.672940, 0.558644, -0.484839,
		27.716557, 34.444801, 30.120712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738237, 34.022106, 30.814154>,  <27.245499, 34.053749, 30.460100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738237, 34.022106, 30.814154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834478, 34.353405, 30.611721>,  <27.892223, 34.552185, 30.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834478, 34.353405, 30.611721>,  <27.738237, 34.022106, 30.814154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834478, 34.353405, 30.611721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326386, 0.421997, 0.845808,
		0.914102, -0.368681, -0.168794,
		0.240603, 0.828247, -0.506080,
		27.906660, 34.601879, 30.459896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471678, 34.079647, 30.970079>,  <27.738237, 34.022106, 30.814154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471678, 34.079647, 30.970079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366388, 34.441055, 30.834812>,  <28.303215, 34.657902, 30.753653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366388, 34.441055, 30.834812>,  <28.471678, 34.079647, 30.970079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366388, 34.441055, 30.834812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471603, 0.426303, 0.771917,
		0.841608, 0.043708, -0.538318,
		-0.263225, 0.903524, -0.338167,
		28.287420, 34.712112, 30.733362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978569, 34.513111, 31.227697>,  <28.471678, 34.079647, 30.970079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978569, 34.513111, 31.227697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699797, 34.789383, 31.150503>,  <28.532534, 34.955147, 31.104187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.699797, 34.789383, 31.150503>,  <28.978569, 34.513111, 31.227697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.699797, 34.789383, 31.150503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297807, 0.523546, 0.798254,
		0.652377, 0.498857, -0.570567,
		-0.696933, 0.690681, -0.192986,
		28.490717, 34.996586, 31.092607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281834, 35.279106, 31.269768>,  <28.978569, 34.513111, 31.227697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281834, 35.279106, 31.269768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888334, 35.278362, 31.341589>,  <28.652235, 35.277916, 31.384682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888334, 35.278362, 31.341589>,  <29.281834, 35.279106, 31.269768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888334, 35.278362, 31.341589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127519, 0.696768, 0.705871,
		-0.126417, 0.717295, -0.685206,
		-0.983747, -0.001858, 0.179552,
		28.593210, 35.277805, 31.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045572, 36.055416, 31.317408>,  <29.281834, 35.279106, 31.269768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045572, 36.055416, 31.317408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743172, 35.863422, 31.495430>,  <28.561731, 35.748226, 31.602243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743172, 35.863422, 31.495430>,  <29.045572, 36.055416, 31.317408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743172, 35.863422, 31.495430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002308, 0.681870, 0.731470,
		-0.654564, 0.551966, -0.516603,
		-0.756003, -0.479986, 0.445054,
		28.516371, 35.719425, 31.628946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597662, 36.617004, 31.608522>,  <29.045572, 36.055416, 31.317408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597662, 36.617004, 31.608522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469456, 36.297565, 31.812290>,  <28.392532, 36.105904, 31.934551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469456, 36.297565, 31.812290>,  <28.597662, 36.617004, 31.608522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469456, 36.297565, 31.812290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128411, 0.569460, 0.811927,
		-0.938499, 0.194820, -0.285070,
		-0.320516, -0.798599, 0.509421,
		28.373301, 36.057987, 31.965117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946999, 36.939716, 31.966053>,  <28.597662, 36.617004, 31.608522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946999, 36.939716, 31.966053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026505, 36.594860, 32.152477>,  <28.074207, 36.387947, 32.264332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026505, 36.594860, 32.152477>,  <27.946999, 36.939716, 31.966053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026505, 36.594860, 32.152477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113282, 0.452149, 0.884719,
		-0.973479, -0.228645, -0.007794,
		0.198763, -0.862138, 0.466059,
		28.086134, 36.336220, 32.292294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367836, 36.740112, 32.406250>,  <27.946999, 36.939716, 31.966053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367836, 36.740112, 32.406250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710077, 36.592472, 32.551414>,  <27.915422, 36.503887, 32.638515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710077, 36.592472, 32.551414>,  <27.367836, 36.740112, 32.406250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710077, 36.592472, 32.551414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175859, 0.452131, 0.874443,
		-0.486841, -0.811999, 0.321937,
		0.855605, -0.369099, 0.362913,
		27.966759, 36.481743, 32.660290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250486, 36.538143, 33.110626>,  <27.367836, 36.740112, 32.406250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250486, 36.538143, 33.110626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649797, 36.553307, 33.092720>,  <27.889383, 36.562405, 33.081974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649797, 36.553307, 33.092720>,  <27.250486, 36.538143, 33.110626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649797, 36.553307, 33.092720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017872, 0.530366, 0.847580,
		0.055872, -0.846921, 0.528776,
		0.998278, 0.037906, -0.044769,
		27.949282, 36.564678, 33.079288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525181, 36.270687, 33.739307>,  <27.250486, 36.538143, 33.110626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525181, 36.270687, 33.739307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797134, 36.509281, 33.568684>,  <27.960308, 36.652439, 33.466309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797134, 36.509281, 33.568684>,  <27.525181, 36.270687, 33.739307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797134, 36.509281, 33.568684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142707, 0.462944, 0.874824,
		0.719298, -0.655654, 0.229626,
		0.679886, 0.596490, -0.426561,
		28.001101, 36.688229, 33.440716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111938, 36.092823, 34.072311>,  <27.525181, 36.270687, 33.739307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111938, 36.092823, 34.072311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155325, 36.469044, 33.943569>,  <28.181356, 36.694778, 33.866322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155325, 36.469044, 33.943569>,  <28.111938, 36.092823, 34.072311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155325, 36.469044, 33.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264000, 0.284891, 0.921489,
		0.958404, -0.184923, -0.217405,
		0.108468, 0.940553, -0.321860,
		28.187866, 36.751209, 33.847012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547646, 36.224693, 34.613201>,  <28.111938, 36.092823, 34.072311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547646, 36.224693, 34.613201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371935, 36.547806, 34.455959>,  <28.266508, 36.741673, 34.361614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371935, 36.547806, 34.455959>,  <28.547646, 36.224693, 34.613201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371935, 36.547806, 34.455959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032980, 0.451785, 0.891517,
		0.897746, 0.378659, -0.225099,
		-0.439278, 0.807779, -0.393100,
		28.240152, 36.790138, 34.338028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891169, 35.848919, 34.881790>,  <28.547646, 36.224693, 34.613201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891169, 35.848919, 34.881790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503332, 35.933807, 34.930546>,  <27.270630, 35.984741, 34.959797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503332, 35.933807, 34.930546>,  <27.891169, 35.848919, 34.881790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503332, 35.933807, 34.930546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111030, -0.062389, 0.991857,
		0.218094, 0.975229, 0.036930,
		-0.969591, 0.212217, 0.121887,
		27.212454, 35.997471, 34.967113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709587, 36.456223, 35.251732>,  <27.891169, 35.848919, 34.881790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709587, 36.456223, 35.251732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426270, 36.183094, 35.323368>,  <27.256279, 36.019215, 35.366348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426270, 36.183094, 35.323368>,  <27.709587, 36.456223, 35.251732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426270, 36.183094, 35.323368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058372, 0.196174, 0.978830,
		-0.703501, 0.703752, -0.099091,
		-0.708293, -0.682824, 0.179088,
		27.213781, 35.978249, 35.377094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063286, 36.733582, 35.511372>,  <27.709587, 36.456223, 35.251732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063286, 36.733582, 35.511372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118069, 36.363525, 35.652992>,  <27.150938, 36.141491, 35.737965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118069, 36.363525, 35.652992>,  <27.063286, 36.733582, 35.511372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118069, 36.363525, 35.652992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085335, 0.345076, 0.934688,
		-0.986895, -0.158225, -0.031687,
		0.136957, -0.925142, 0.354056,
		27.159155, 36.085983, 35.759209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601646, 36.567799, 36.076641>,  <27.063286, 36.733582, 35.511372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601646, 36.567799, 36.076641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903509, 36.313461, 36.141388>,  <27.084627, 36.160858, 36.180237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903509, 36.313461, 36.141388>,  <26.601646, 36.567799, 36.076641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903509, 36.313461, 36.141388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081025, 0.154496, 0.984666,
		-0.651098, -0.756199, 0.065072,
		0.754656, -0.635841, 0.161863,
		27.129906, 36.122707, 36.189945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518774, 36.370552, 36.685139>,  <26.601646, 36.567799, 36.076641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518774, 36.370552, 36.685139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896833, 36.240753, 36.670177>,  <27.123669, 36.162876, 36.661201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896833, 36.240753, 36.670177>,  <26.518774, 36.370552, 36.685139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896833, 36.240753, 36.670177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112490, 0.215854, 0.969924,
		-0.306664, -0.920928, 0.240516,
		0.945147, -0.324496, -0.037400,
		27.180378, 36.143406, 36.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614359, 35.962891, 37.295944>,  <26.518774, 36.370552, 36.685139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614359, 35.962891, 37.295944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993065, 36.019032, 37.180058>,  <27.220289, 36.052715, 37.110527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993065, 36.019032, 37.180058>,  <26.614359, 35.962891, 37.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993065, 36.019032, 37.180058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294874, -0.017024, 0.955385,
		0.129158, -0.989955, -0.057504,
		0.946767, 0.140352, -0.289713,
		27.277096, 36.061138, 37.093143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965136, 35.426384, 37.599201>,  <26.614359, 35.962891, 37.295944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965136, 35.426384, 37.599201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217543, 35.730873, 37.539391>,  <27.368986, 35.913567, 37.503506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217543, 35.730873, 37.539391>,  <26.965136, 35.426384, 37.599201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217543, 35.730873, 37.539391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325526, -0.084869, 0.941717,
		0.704167, -0.642912, -0.301351,
		0.631016, 0.761223, -0.149523,
		27.406847, 35.959240, 37.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502460, 35.294235, 38.037918>,  <26.965136, 35.426384, 37.599201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502460, 35.294235, 38.037918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542547, 35.680035, 37.940186>,  <27.566599, 35.911514, 37.881546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542547, 35.680035, 37.940186>,  <27.502460, 35.294235, 38.037918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542547, 35.680035, 37.940186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330888, 0.199280, 0.922389,
		0.938333, -0.173285, -0.299170,
		0.100217, 0.964500, -0.244329,
		27.572613, 35.969383, 37.866886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150187, 35.456215, 38.355309>,  <27.502460, 35.294235, 38.037918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150187, 35.456215, 38.355309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968456, 35.806652, 38.290752>,  <27.859419, 36.016914, 38.252018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968456, 35.806652, 38.290752>,  <28.150187, 35.456215, 38.355309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968456, 35.806652, 38.290752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200719, 0.277181, 0.939618,
		0.867930, 0.394497, -0.301779,
		-0.454324, 0.876095, -0.161390,
		27.832159, 36.069481, 38.242336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559162, 35.979206, 38.571190>,  <28.150187, 35.456215, 38.355309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559162, 35.979206, 38.571190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185740, 36.122143, 38.582352>,  <27.961687, 36.207905, 38.589046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185740, 36.122143, 38.582352>,  <28.559162, 35.979206, 38.571190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185740, 36.122143, 38.582352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122230, 0.244207, 0.961989,
		0.336949, 0.901480, -0.271659,
		-0.933555, 0.357346, 0.027902,
		27.905672, 36.229347, 38.590721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593586, 36.721596, 38.851730>,  <28.559162, 35.979206, 38.571190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593586, 36.721596, 38.851730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202253, 36.648079, 38.889866>,  <27.967455, 36.603970, 38.912746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202253, 36.648079, 38.889866>,  <28.593586, 36.721596, 38.851730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202253, 36.648079, 38.889866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014078, 0.400361, 0.916249,
		-0.206573, 0.897736, -0.389098,
		-0.978330, -0.183794, 0.095342,
		27.908754, 36.592941, 38.918468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182289, 37.281593, 39.132713>,  <28.593586, 36.721596, 38.851730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182289, 37.281593, 39.132713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955881, 36.961567, 39.212231>,  <27.820036, 36.769550, 39.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.955881, 36.961567, 39.212231>,  <28.182289, 37.281593, 39.132713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955881, 36.961567, 39.212231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046393, 0.271667, 0.961272,
		-0.823084, 0.534878, -0.190886,
		-0.566021, -0.800064, 0.198791,
		27.786076, 36.721546, 39.271870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887188, 37.542770, 39.664371>,  <28.182289, 37.281593, 39.132713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887188, 37.542770, 39.664371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824831, 37.148693, 39.692898>,  <27.787416, 36.912247, 39.710014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.824831, 37.148693, 39.692898>,  <27.887188, 37.542770, 39.664371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.824831, 37.148693, 39.692898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075157, 0.083818, 0.993643,
		-0.984910, 0.149543, -0.087111,
		-0.155894, -0.985196, 0.071314,
		27.778063, 36.853134, 39.714291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466887, 37.497177, 40.258869>,  <27.887188, 37.542770, 39.664371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466887, 37.497177, 40.258869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537176, 37.109482, 40.189930>,  <27.579350, 36.876865, 40.148567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537176, 37.109482, 40.189930>,  <27.466887, 37.497177, 40.258869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537176, 37.109482, 40.189930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045397, -0.182865, 0.982089,
		-0.983392, -0.164755, -0.076135,
		0.175726, -0.969235, -0.172349,
		27.589893, 36.818710, 40.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953941, 37.144146, 40.593212>,  <27.466887, 37.497177, 40.258869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953941, 37.144146, 40.593212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282749, 36.916897, 40.577579>,  <27.480034, 36.780548, 40.568199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282749, 36.916897, 40.577579>,  <26.953941, 37.144146, 40.593212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282749, 36.916897, 40.577579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018659, -0.095465, 0.995258,
		-0.569156, -0.817391, -0.089075,
		0.822018, -0.568119, -0.039083,
		27.529354, 36.746460, 40.565853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816685, 36.555702, 40.945164>,  <26.953941, 37.144146, 40.593212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816685, 36.555702, 40.945164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215971, 36.531887, 40.946819>,  <27.455544, 36.517597, 40.947811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.215971, 36.531887, 40.946819>,  <26.816685, 36.555702, 40.945164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215971, 36.531887, 40.946819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018404, -0.241162, 0.970310,
		-0.056775, -0.968657, -0.241828,
		0.998218, -0.059540, 0.004135,
		27.515436, 36.514023, 40.948059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984995, 35.899677, 41.126453>,  <26.816685, 36.555702, 40.945164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984995, 35.899677, 41.126453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303162, 36.124672, 41.216713>,  <27.494062, 36.259670, 41.270870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.303162, 36.124672, 41.216713>,  <26.984995, 35.899677, 41.126453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303162, 36.124672, 41.216713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004625, -0.366681, 0.930335,
		0.606043, -0.741050, -0.289063,
		0.795419, 0.562486, 0.225652,
		27.541788, 36.293419, 41.284409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520998, 35.436607, 41.217995>,  <26.984995, 35.899677, 41.126453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520998, 35.436607, 41.217995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652546, 35.752159, 41.425655>,  <27.731474, 35.941490, 41.550251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652546, 35.752159, 41.425655>,  <27.520998, 35.436607, 41.217995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652546, 35.752159, 41.425655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171751, -0.590528, 0.788529,
		0.928627, -0.170156, -0.329695,
		0.328868, 0.788875, 0.519156,
		27.751205, 35.988823, 41.581402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791494, 35.183731, 41.794777>,  <27.520998, 35.436607, 41.217995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791494, 35.183731, 41.794777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877426, 35.558113, 41.906368>,  <27.928986, 35.782742, 41.973324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877426, 35.558113, 41.906368>,  <27.791494, 35.183731, 41.794777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877426, 35.558113, 41.906368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087813, -0.303004, 0.948935,
		0.972695, -0.179363, -0.147284,
		0.214831, 0.935958, 0.278980,
		27.941875, 35.838902, 41.990063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430073, 35.236523, 42.169186>,  <27.791494, 35.183731, 41.794777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430073, 35.236523, 42.169186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190800, 35.541111, 42.269054>,  <28.047235, 35.723866, 42.328976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190800, 35.541111, 42.269054>,  <28.430073, 35.236523, 42.169186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190800, 35.541111, 42.269054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224298, -0.140013, 0.964410,
		0.769328, 0.632896, -0.087043,
		-0.598184, 0.761472, 0.249674,
		28.011345, 35.769554, 42.343956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743366, 35.798531, 42.676987>,  <28.430073, 35.236523, 42.169186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743366, 35.798531, 42.676987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363834, 35.915798, 42.723923>,  <28.136114, 35.986160, 42.752087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363834, 35.915798, 42.723923>,  <28.743366, 35.798531, 42.676987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363834, 35.915798, 42.723923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069690, -0.168034, 0.983315,
		0.307995, 0.941178, 0.139005,
		-0.948832, 0.293169, 0.117344,
		28.079185, 36.003750, 42.759125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737717, 36.317886, 43.281860>,  <28.743366, 35.798531, 42.676987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737717, 36.317886, 43.281860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374077, 36.157784, 43.235676>,  <28.155893, 36.061722, 43.207966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374077, 36.157784, 43.235676>,  <28.737717, 36.317886, 43.281860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374077, 36.157784, 43.235676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019339, -0.236306, 0.971486,
		-0.416131, 0.885410, 0.207085,
		-0.909099, -0.400261, -0.115457,
		28.101347, 36.037704, 43.201038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197029, 36.656834, 43.818199>,  <28.737717, 36.317886, 43.281860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197029, 36.656834, 43.818199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097080, 36.289570, 43.695210>,  <28.037111, 36.069210, 43.621414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097080, 36.289570, 43.695210>,  <28.197029, 36.656834, 43.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097080, 36.289570, 43.695210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105268, -0.341426, 0.933995,
		-0.962540, 0.201011, 0.181966,
		-0.249871, -0.918163, -0.307476,
		28.022120, 36.014122, 43.602966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557476, 36.566887, 44.193573>,  <28.197029, 36.656834, 43.818199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557476, 36.566887, 44.193573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706297, 36.222076, 44.055882>,  <27.795589, 36.015190, 43.973267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.706297, 36.222076, 44.055882>,  <27.557476, 36.566887, 44.193573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706297, 36.222076, 44.055882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000262, -0.370948, 0.928654,
		-0.928212, -0.345416, -0.138238,
		0.372051, -0.862024, -0.344228,
		27.817913, 35.963470, 43.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204712, 36.071121, 44.625778>,  <27.557476, 36.566887, 44.193573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204712, 36.071121, 44.625778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508846, 35.866127, 44.466156>,  <27.691328, 35.743130, 44.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508846, 35.866127, 44.466156>,  <27.204712, 36.071121, 44.625778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508846, 35.866127, 44.466156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027061, -0.638835, 0.768868,
		-0.648974, -0.573794, -0.499593,
		0.760329, -0.512495, -0.399060,
		27.736948, 35.712379, 44.346439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958862, 35.391445, 44.550957>,  <27.204712, 36.071121, 44.625778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958862, 35.391445, 44.550957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358770, 35.384426, 44.546104>,  <27.598717, 35.380215, 44.543194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358770, 35.384426, 44.546104>,  <26.958862, 35.391445, 44.550957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358770, 35.384426, 44.546104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003146, -0.683780, 0.729681,
		-0.021094, -0.729477, -0.683680,
		0.999773, -0.017543, -0.012129,
		27.658703, 35.379162, 44.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174603, 34.684628, 44.413227>,  <26.958862, 35.391445, 44.550957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174603, 34.684628, 44.413227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488592, 34.857368, 44.590912>,  <27.676985, 34.961014, 44.697521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.488592, 34.857368, 44.590912>,  <27.174603, 34.684628, 44.413227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488592, 34.857368, 44.590912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032233, -0.744505, 0.666838,
		0.618692, -0.509131, -0.598336,
		0.784972, 0.431854, 0.444209,
		27.724083, 34.986923, 44.724174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549589, 34.050858, 44.736706>,  <27.174603, 34.684628, 44.413227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549589, 34.050858, 44.736706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723572, 34.370960, 44.901829>,  <27.827961, 34.563023, 45.000900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723572, 34.370960, 44.901829>,  <27.549589, 34.050858, 44.736706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723572, 34.370960, 44.901829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067590, -0.486163, 0.871251,
		0.897912, -0.351053, -0.265548,
		0.434955, 0.800255, 0.412804,
		27.854059, 34.611038, 45.025669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933804, 33.696499, 45.184933>,  <27.549589, 34.050858, 44.736706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933804, 33.696499, 45.184933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883553, 34.069950, 45.319134>,  <27.853403, 34.294022, 45.399654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883553, 34.069950, 45.319134>,  <27.933804, 33.696499, 45.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883553, 34.069950, 45.319134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103528, -0.323995, 0.940377,
		0.986661, 0.152869, -0.055954,
		-0.125626, 0.933626, 0.335499,
		27.845865, 34.350037, 45.419785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438509, 33.727612, 45.584522>,  <27.933804, 33.696499, 45.184933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438509, 33.727612, 45.584522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177629, 34.010204, 45.694447>,  <28.021103, 34.179760, 45.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177629, 34.010204, 45.694447>,  <28.438509, 33.727612, 45.584522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177629, 34.010204, 45.694447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068442, -0.306169, 0.949514,
		0.754953, 0.638079, 0.151330,
		-0.652197, 0.706481, 0.274815,
		27.981970, 34.222149, 45.776890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745762, 34.112297, 46.132095>,  <28.438509, 33.727612, 45.584522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745762, 34.112297, 46.132095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351242, 34.169586, 46.164841>,  <28.114531, 34.203960, 46.184490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351242, 34.169586, 46.164841>,  <28.745762, 34.112297, 46.132095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351242, 34.169586, 46.164841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039740, -0.275357, 0.960520,
		0.160113, 0.950613, 0.265893,
		-0.986298, 0.143225, 0.081865,
		28.055353, 34.212555, 46.189400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722960, 34.544720, 46.682823>,  <28.745762, 34.112297, 46.132095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722960, 34.544720, 46.682823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371662, 34.358776, 46.637932>,  <28.160885, 34.247208, 46.610996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.371662, 34.358776, 46.637932>,  <28.722960, 34.544720, 46.682823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371662, 34.358776, 46.637932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024580, -0.190493, 0.981381,
		-0.477584, 0.864648, 0.155873,
		-0.878242, -0.464861, -0.112230,
		28.108189, 34.219318, 46.604263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240452, 34.919949, 47.200565>,  <28.722960, 34.544720, 46.682823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240452, 34.919949, 47.200565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096491, 34.559566, 47.103615>,  <28.010115, 34.343338, 47.045444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096491, 34.559566, 47.103615>,  <28.240452, 34.919949, 47.200565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096491, 34.559566, 47.103615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196861, -0.180604, 0.963653,
		-0.911984, 0.394538, -0.112363,
		-0.359905, -0.900956, -0.242377,
		27.988520, 34.289280, 47.030903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630690, 34.779388, 47.637642>,  <28.240452, 34.919949, 47.200565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630690, 34.779388, 47.637642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685465, 34.409824, 47.494732>,  <27.718330, 34.188087, 47.408985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685465, 34.409824, 47.494732>,  <27.630690, 34.779388, 47.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685465, 34.409824, 47.494732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293571, -0.382323, 0.876153,
		-0.946078, -0.015091, -0.323586,
		0.136937, -0.923905, -0.357277,
		27.726545, 34.132652, 47.387550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039324, 34.413841, 47.873798>,  <27.630690, 34.779388, 47.637642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039324, 34.413841, 47.873798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309732, 34.129448, 47.796337>,  <27.471977, 33.958813, 47.749859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309732, 34.129448, 47.796337>,  <27.039324, 34.413841, 47.873798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309732, 34.129448, 47.796337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074339, -0.327268, 0.942003,
		-0.733122, -0.622418, -0.274094,
		0.676022, -0.710980, -0.193657,
		27.512539, 33.916153, 47.738239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826725, 33.804291, 48.146309>,  <27.039324, 34.413841, 47.873798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826725, 33.804291, 48.146309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217852, 33.727821, 48.112064>,  <27.452528, 33.681938, 48.091518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217852, 33.727821, 48.112064>,  <26.826725, 33.804291, 48.146309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217852, 33.727821, 48.112064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028915, -0.527989, 0.848759,
		-0.207462, -0.827454, -0.521804,
		0.977816, -0.191173, -0.085612,
		27.511196, 33.670467, 48.086380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935467, 33.075310, 48.362717>,  <26.826725, 33.804291, 48.146309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935467, 33.075310, 48.362717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271540, 33.280830, 48.432121>,  <27.473183, 33.404140, 48.473763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271540, 33.280830, 48.432121>,  <26.935467, 33.075310, 48.362717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271540, 33.280830, 48.432121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095837, -0.455587, 0.885017,
		0.533770, -0.726946, -0.432017,
		0.840181, 0.513799, 0.173510,
		27.523594, 33.434971, 48.484173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321466, 32.590618, 48.623028>,  <26.935467, 33.075310, 48.362717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321466, 32.590618, 48.623028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536335, 32.921116, 48.690876>,  <27.665257, 33.119415, 48.731586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536335, 32.921116, 48.690876>,  <27.321466, 32.590618, 48.623028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536335, 32.921116, 48.690876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202701, -0.321662, 0.924903,
		0.818755, -0.462448, -0.340267,
		0.537171, 0.826242, 0.169624,
		27.697487, 33.168987, 48.741764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988543, 32.440006, 48.674217>,  <27.321466, 32.590618, 48.623028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988543, 32.440006, 48.674217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971979, 32.788670, 48.869560>,  <27.962042, 32.997868, 48.986767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971979, 32.788670, 48.869560>,  <27.988543, 32.440006, 48.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971979, 32.788670, 48.869560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220513, -0.468751, 0.855363,
		0.974505, 0.143109, -0.172802,
		-0.041409, 0.871661, 0.488358,
		27.959557, 33.050167, 49.016068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560545, 32.425434, 49.133297>,  <27.988543, 32.440006, 48.674217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560545, 32.425434, 49.133297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319723, 32.706112, 49.285694>,  <28.175230, 32.874519, 49.377132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319723, 32.706112, 49.285694>,  <28.560545, 32.425434, 49.133297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319723, 32.706112, 49.285694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059219, -0.436611, 0.897699,
		0.796254, 0.563028, 0.221311,
		-0.602057, 0.701691, 0.380996,
		28.139107, 32.916618, 49.399994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877665, 32.584599, 49.680614>,  <28.560545, 32.425434, 49.133297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877665, 32.584599, 49.680614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498163, 32.691929, 49.747391>,  <28.270462, 32.756325, 49.787457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498163, 32.691929, 49.747391>,  <28.877665, 32.584599, 49.680614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498163, 32.691929, 49.747391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031383, -0.605646, 0.795115,
		0.314452, 0.749130, 0.583030,
		-0.948755, 0.268323, 0.166937,
		28.213537, 32.772427, 49.797470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805758, 32.856339, 50.450199>,  <28.877665, 32.584599, 49.680614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805758, 32.856339, 50.450199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437757, 32.769325, 50.319794>,  <28.216957, 32.717117, 50.241550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437757, 32.769325, 50.319794>,  <28.805758, 32.856339, 50.450199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437757, 32.769325, 50.319794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136615, -0.601666, 0.786978,
		-0.367342, 0.768557, 0.523814,
		-0.919998, -0.217529, -0.326013,
		28.161758, 32.704067, 50.221989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264191, 32.964302, 51.042351>,  <28.805758, 32.856339, 50.450199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264191, 32.964302, 51.042351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076868, 32.710381, 50.796516>,  <27.964476, 32.558029, 50.649017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076868, 32.710381, 50.796516>,  <28.264191, 32.964302, 51.042351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076868, 32.710381, 50.796516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441266, -0.434587, 0.785123,
		-0.765490, 0.638873, -0.076598,
		-0.468305, -0.634803, -0.614585,
		27.936377, 32.519939, 50.612141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678471, 32.902443, 51.288280>,  <28.264191, 32.964302, 51.042351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678471, 32.902443, 51.288280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637249, 32.580780, 51.054115>,  <27.612516, 32.387783, 50.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.637249, 32.580780, 51.054115>,  <27.678471, 32.902443, 51.288280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637249, 32.580780, 51.054115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470801, -0.479011, 0.740874,
		-0.876200, 0.351964, -0.329234,
		-0.103054, -0.804157, -0.585415,
		27.606333, 32.339531, 50.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968039, 32.557625, 51.332832>,  <27.678471, 32.902443, 51.288280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968039, 32.557625, 51.332832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271702, 32.311100, 51.249088>,  <27.453899, 32.163185, 51.198841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271702, 32.311100, 51.249088>,  <26.968039, 32.557625, 51.332832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271702, 32.311100, 51.249088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223484, -0.548901, 0.805458,
		-0.611337, -0.564680, -0.554440,
		0.759159, -0.616315, -0.209367,
		27.499451, 32.126205, 51.186279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602428, 31.890869, 51.246788>,  <26.968039, 32.557625, 51.332832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602428, 31.890869, 51.246788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977942, 31.888657, 51.384575>,  <27.203249, 31.887329, 51.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977942, 31.888657, 51.384575>,  <26.602428, 31.890869, 51.246788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977942, 31.888657, 51.384575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282429, -0.584937, 0.760318,
		0.197286, -0.811060, -0.550690,
		0.938782, -0.005531, 0.344467,
		27.259577, 31.886997, 51.487915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634024, 31.329136, 51.667435>,  <26.602428, 31.890869, 51.246788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634024, 31.329136, 51.667435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977312, 31.516996, 51.750267>,  <27.183285, 31.629713, 51.799965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.977312, 31.516996, 51.750267>,  <26.634024, 31.329136, 51.667435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977312, 31.516996, 51.750267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031280, -0.354843, 0.934403,
		0.512323, -0.808403, -0.289843,
		0.858223, 0.469650, 0.207081,
		27.234779, 31.657892, 51.812393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226629, 30.888294, 51.967133>,  <26.634024, 31.329136, 51.667435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226629, 30.888294, 51.967133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278534, 31.268509, 52.080013>,  <27.309677, 31.496637, 52.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278534, 31.268509, 52.080013>,  <27.226629, 30.888294, 51.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278534, 31.268509, 52.080013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092625, -0.294984, 0.951002,
		0.987210, -0.097262, -0.126320,
		0.129759, 0.950539, 0.282202,
		27.317461, 31.553671, 52.164673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879898, 30.926697, 52.369595>,  <27.226629, 30.888294, 51.967133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879898, 30.926697, 52.369595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595982, 31.180014, 52.492973>,  <27.425632, 31.332003, 52.567001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595982, 31.180014, 52.492973>,  <27.879898, 30.926697, 52.369595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595982, 31.180014, 52.492973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012177, -0.448845, 0.893526,
		0.704308, 0.630460, 0.326298,
		-0.709790, 0.633291, 0.308448,
		27.383045, 31.370001, 52.585506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476511, 30.782206, 52.785889>,  <27.879898, 30.926697, 52.369595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476511, 30.782206, 52.785889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423948, 30.385677, 52.784554>,  <28.392410, 30.147760, 52.783752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423948, 30.385677, 52.784554>,  <28.476511, 30.782206, 52.785889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423948, 30.385677, 52.784554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051223, -0.003429, -0.998681,
		0.990004, -0.131406, 0.051229,
		-0.131408, -0.991323, -0.003337,
		28.384525, 30.088280, 52.783554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927723, 30.368980, 52.279636>,  <28.476511, 30.782206, 52.785889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927723, 30.368980, 52.279636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584620, 30.177893, 52.355572>,  <28.378757, 30.063240, 52.401131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584620, 30.177893, 52.355572>,  <28.927723, 30.368980, 52.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584620, 30.177893, 52.355572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134151, -0.148473, -0.979775,
		0.496244, -0.865875, 0.063267,
		-0.857756, -0.477720, 0.189836,
		28.327293, 30.034576, 52.412521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982246, 29.696924, 52.092232>,  <28.927723, 30.368980, 52.279636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982246, 29.696924, 52.092232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602545, 29.815170, 52.049290>,  <28.374723, 29.886118, 52.023525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602545, 29.815170, 52.049290>,  <28.982246, 29.696924, 52.092232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602545, 29.815170, 52.049290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056128, -0.176635, -0.982675,
		-0.309455, -0.938836, 0.151079,
		-0.949256, 0.295614, -0.107356,
		28.317768, 29.903854, 52.017082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701963, 29.125927, 51.789165>,  <28.982246, 29.696924, 52.092232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701963, 29.125927, 51.789165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447489, 29.412931, 51.675716>,  <28.294804, 29.585135, 51.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447489, 29.412931, 51.675716>,  <28.701963, 29.125927, 51.789165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447489, 29.412931, 51.675716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232230, -0.172480, -0.957246,
		-0.735756, -0.674853, -0.056899,
		-0.636186, 0.717513, -0.283624,
		28.256634, 29.628185, 51.590630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423868, 28.920557, 51.188004>,  <28.701963, 29.125927, 51.789165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423868, 28.920557, 51.188004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320517, 29.306974, 51.188580>,  <28.258507, 29.538824, 51.188927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320517, 29.306974, 51.188580>,  <28.423868, 28.920557, 51.188004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320517, 29.306974, 51.188580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012393, -0.001820, -0.999922,
		-0.965964, -0.258375, 0.012443,
		-0.258378, 0.966043, 0.001444,
		28.243004, 29.596786, 51.189014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422693, 29.202606, 50.461876>,  <28.423868, 28.920557, 51.188004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422693, 29.202606, 50.461876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193153, 29.494045, 50.611458>,  <28.055429, 29.668909, 50.701206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193153, 29.494045, 50.611458>,  <28.422693, 29.202606, 50.461876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193153, 29.494045, 50.611458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272469, 0.260757, -0.926157,
		-0.772308, -0.633365, 0.048885,
		-0.573848, 0.728598, 0.373957,
		28.020998, 29.712626, 50.723644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880945, 29.209600, 49.990353>,  <28.422693, 29.202606, 50.461876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880945, 29.209600, 49.990353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953667, 29.553469, 50.181316>,  <27.997299, 29.759789, 50.295895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.953667, 29.553469, 50.181316>,  <27.880945, 29.209600, 49.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953667, 29.553469, 50.181316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053188, 0.493383, -0.868184,
		-0.981895, 0.132448, 0.135423,
		0.181805, 0.859669, 0.477406,
		28.008207, 29.811369, 50.324539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348000, 29.632149, 49.860348>,  <27.880945, 29.209600, 49.990353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348000, 29.632149, 49.860348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688601, 29.828711, 49.933521>,  <27.892962, 29.946648, 49.977425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688601, 29.828711, 49.933521>,  <27.348000, 29.632149, 49.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688601, 29.828711, 49.933521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008459, 0.361700, -0.932256,
		-0.524279, 0.792273, 0.312146,
		0.851505, 0.491402, 0.182930,
		27.944052, 29.976131, 49.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304058, 30.317101, 49.450603>,  <27.348000, 29.632149, 49.860348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304058, 30.317101, 49.450603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695341, 30.301168, 49.532112>,  <27.930111, 30.291609, 49.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.695341, 30.301168, 49.532112>,  <27.304058, 30.317101, 49.450603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.695341, 30.301168, 49.532112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203675, 0.374721, -0.904489,
		-0.040331, 0.926282, 0.374668,
		0.978208, -0.039831, 0.203773,
		27.988804, 30.289219, 49.593243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598906, 31.019260, 49.348618>,  <27.304058, 30.317101, 49.450603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598906, 31.019260, 49.348618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887093, 30.754278, 49.266563>,  <28.060005, 30.595289, 49.217331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887093, 30.754278, 49.266563>,  <27.598906, 31.019260, 49.348618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887093, 30.754278, 49.266563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297271, 0.562265, -0.771679,
		0.626544, 0.494988, 0.602021,
		0.720467, -0.662454, -0.205138,
		28.103233, 30.555542, 49.205021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987379, 31.462435, 49.004971>,  <27.598906, 31.019260, 49.348618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987379, 31.462435, 49.004971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116863, 31.090490, 48.935028>,  <28.194553, 30.867325, 48.893063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116863, 31.090490, 48.935028>,  <27.987379, 31.462435, 49.004971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116863, 31.090490, 48.935028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402347, 0.302547, -0.864050,
		0.856346, 0.209349, 0.472064,
		0.323709, -0.929859, -0.174854,
		28.213976, 30.811533, 48.882572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694834, 31.536253, 48.806984>,  <27.987379, 31.462435, 49.004971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694834, 31.536253, 48.806984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595190, 31.175442, 48.665962>,  <28.535404, 30.958956, 48.581348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595190, 31.175442, 48.665962>,  <28.694834, 31.536253, 48.806984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595190, 31.175442, 48.665962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392971, 0.238569, -0.888065,
		0.885166, -0.359768, 0.295040,
		-0.249110, -0.902026, -0.352551,
		28.520456, 30.904833, 48.560196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347803, 31.253019, 48.453045>,  <28.694834, 31.536253, 48.806984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347803, 31.253019, 48.453045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030619, 31.038309, 48.337746>,  <28.840309, 30.909483, 48.268566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030619, 31.038309, 48.337746>,  <29.347803, 31.253019, 48.453045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030619, 31.038309, 48.337746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316234, 0.041785, -0.947761,
		0.520781, -0.842689, 0.136614,
		-0.792959, -0.536777, -0.288247,
		28.792730, 30.877275, 48.251270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618786, 30.750635, 47.955872>,  <29.347803, 31.253019, 48.453045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618786, 30.750635, 47.955872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230192, 30.774900, 47.864185>,  <28.997036, 30.789459, 47.809174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230192, 30.774900, 47.864185>,  <29.618786, 30.750635, 47.955872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230192, 30.774900, 47.864185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233602, 0.079275, -0.969095,
		-0.040621, -0.995005, -0.091186,
		-0.971483, 0.060667, -0.229215,
		28.938747, 30.793100, 47.795422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489792, 30.248234, 47.465923>,  <29.618786, 30.750635, 47.955872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489792, 30.248234, 47.465923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226274, 30.547302, 47.432495>,  <29.068165, 30.726744, 47.412437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226274, 30.547302, 47.432495>,  <29.489792, 30.248234, 47.465923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226274, 30.547302, 47.432495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124605, -0.001112, -0.992206,
		-0.741934, -0.664071, -0.092430,
		-0.658792, 0.747669, -0.083572,
		29.028637, 30.771603, 47.407425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191336, 30.176205, 46.840061>,  <29.489792, 30.248234, 47.465923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191336, 30.176205, 46.840061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034204, 30.535715, 46.917923>,  <28.939926, 30.751421, 46.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034204, 30.535715, 46.917923>,  <29.191336, 30.176205, 46.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034204, 30.535715, 46.917923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078944, 0.243845, -0.966596,
		-0.916216, -0.364341, -0.166742,
		-0.392830, 0.898774, 0.194652,
		28.916355, 30.805347, 46.976318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663343, 30.315634, 46.380569>,  <29.191336, 30.176205, 46.840061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663343, 30.315634, 46.380569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757969, 30.685186, 46.500893>,  <28.814745, 30.906918, 46.573086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757969, 30.685186, 46.500893>,  <28.663343, 30.315634, 46.380569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757969, 30.685186, 46.500893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140386, 0.338844, -0.930310,
		-0.961421, 0.177849, 0.209858,
		0.236564, 0.923880, 0.300804,
		28.828938, 30.962351, 46.591133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255121, 30.820709, 46.059330>,  <28.663343, 30.315634, 46.380569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255121, 30.820709, 46.059330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578897, 31.027931, 46.169907>,  <28.773163, 31.152266, 46.236252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.578897, 31.027931, 46.169907>,  <28.255121, 30.820709, 46.059330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578897, 31.027931, 46.169907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059667, 0.395782, -0.916404,
		-0.584160, 0.758271, 0.289452,
		0.809442, 0.518056, 0.276444,
		28.821730, 31.183348, 46.252838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197048, 31.411671, 45.755447>,  <28.255121, 30.820709, 46.059330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197048, 31.411671, 45.755447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589695, 31.417648, 45.831562>,  <28.825283, 31.421234, 45.877232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589695, 31.417648, 45.831562>,  <28.197048, 31.411671, 45.755447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589695, 31.417648, 45.831562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166018, 0.425050, -0.889815,
		-0.094177, 0.905046, 0.414755,
		0.981615, 0.014943, 0.190284,
		28.884180, 31.422131, 45.888649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452286, 31.984629, 45.522270>,  <28.197048, 31.411671, 45.755447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452286, 31.984629, 45.522270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806850, 31.811554, 45.588062>,  <29.019588, 31.707708, 45.627537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806850, 31.811554, 45.588062>,  <28.452286, 31.984629, 45.522270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806850, 31.811554, 45.588062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373161, 0.457681, -0.807019,
		0.273908, 0.776729, 0.567156,
		0.886412, -0.432689, 0.164483,
		29.072773, 31.681747, 45.637405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979622, 32.488148, 45.454132>,  <28.452286, 31.984629, 45.522270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979622, 32.488148, 45.454132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156553, 32.141090, 45.363323>,  <29.262712, 31.932856, 45.308838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156553, 32.141090, 45.363323>,  <28.979622, 32.488148, 45.454132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156553, 32.141090, 45.363323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251916, 0.363140, -0.897033,
		0.860746, 0.339592, 0.379201,
		0.442328, -0.867644, -0.227023,
		29.289251, 31.880796, 45.295216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630671, 32.653309, 45.136845>,  <28.979622, 32.488148, 45.454132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630671, 32.653309, 45.136845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583647, 32.273983, 45.018940>,  <29.555431, 32.046387, 44.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583647, 32.273983, 45.018940>,  <29.630671, 32.653309, 45.136845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583647, 32.273983, 45.018940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379066, 0.231488, -0.895947,
		0.917871, -0.217061, 0.332259,
		-0.117561, -0.948313, -0.294757,
		29.548378, 31.989489, 44.930511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197552, 32.462467, 44.724468>,  <29.630671, 32.653309, 45.136845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197552, 32.462467, 44.724468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913580, 32.204273, 44.611794>,  <29.743196, 32.049355, 44.544189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913580, 32.204273, 44.611794>,  <30.197552, 32.462467, 44.724468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913580, 32.204273, 44.611794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266585, 0.123909, -0.955813,
		0.651870, -0.753652, 0.084111,
		-0.709928, -0.645489, -0.281685,
		29.700602, 32.010628, 44.527287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431189, 32.192287, 44.067181>,  <30.197552, 32.462467, 44.724468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431189, 32.192287, 44.067181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058052, 32.049587, 44.087318>,  <29.834169, 31.963966, 44.099403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058052, 32.049587, 44.087318>,  <30.431189, 32.192287, 44.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058052, 32.049587, 44.087318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143287, 0.239133, -0.960357,
		0.330572, -0.903073, -0.274191,
		-0.932840, -0.356755, 0.050348,
		29.778200, 31.942562, 44.102425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329456, 31.920471, 43.353172>,  <30.431189, 32.192287, 44.067181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329456, 31.920471, 43.353172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971319, 31.944370, 43.529713>,  <29.756437, 31.958710, 43.635639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971319, 31.944370, 43.529713>,  <30.329456, 31.920471, 43.353172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971319, 31.944370, 43.529713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394302, 0.354447, -0.847876,
		-0.207094, -0.933165, -0.293793,
		-0.895342, 0.059746, 0.441353,
		29.702717, 31.962294, 43.662117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911213, 31.506958, 42.914288>,  <30.329456, 31.920471, 43.353172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911213, 31.506958, 42.914288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667118, 31.741314, 43.127583>,  <29.520662, 31.881927, 43.255558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667118, 31.741314, 43.127583>,  <29.911213, 31.506958, 42.914288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667118, 31.741314, 43.127583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352055, 0.402425, -0.845051,
		-0.709697, -0.703409, -0.039307,
		-0.610235, 0.585892, 0.533239,
		29.484047, 31.917082, 43.287556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223963, 31.397160, 42.666550>,  <29.911213, 31.506958, 42.914288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223963, 31.397160, 42.666550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250645, 31.766489, 42.817825>,  <29.266653, 31.988087, 42.908588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250645, 31.766489, 42.817825>,  <29.223963, 31.397160, 42.666550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250645, 31.766489, 42.817825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233294, 0.382957, -0.893822,
		-0.970116, -0.028606, 0.240951,
		0.066705, 0.923323, 0.378186,
		29.270657, 32.043488, 42.931282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653019, 31.782686, 42.389965>,  <29.223963, 31.397160, 42.666550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653019, 31.782686, 42.389965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913498, 32.061768, 42.509396>,  <29.069786, 32.229218, 42.581055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913498, 32.061768, 42.509396>,  <28.653019, 31.782686, 42.389965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913498, 32.061768, 42.509396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099459, 0.468498, -0.877848,
		-0.752361, 0.541958, 0.374478,
		0.651199, 0.697705, 0.298577,
		29.108858, 32.271080, 42.598969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373442, 32.371403, 42.195751>,  <28.653019, 31.782686, 42.389965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373442, 32.371403, 42.195751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766315, 32.443531, 42.216892>,  <29.002041, 32.486809, 42.229576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766315, 32.443531, 42.216892>,  <28.373442, 32.371403, 42.195751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766315, 32.443531, 42.216892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032675, 0.440864, -0.896979,
		-0.185046, 0.879274, 0.438902,
		0.982186, 0.180323, 0.052850,
		29.060972, 32.497627, 42.232746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390778, 33.100872, 41.885864>,  <28.373442, 32.371403, 42.195751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390778, 33.100872, 41.885864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769547, 32.972748, 41.896763>,  <28.996807, 32.895874, 41.903301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.769547, 32.972748, 41.896763>,  <28.390778, 33.100872, 41.885864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769547, 32.972748, 41.896763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201195, 0.524412, -0.827353,
		0.250725, 0.788918, 0.561022,
		0.946920, -0.320313, 0.027243,
		29.053623, 32.876656, 41.904938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739901, 33.600342, 41.587154>,  <28.390778, 33.100872, 41.885864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739901, 33.600342, 41.587154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047428, 33.344700, 41.578499>,  <29.231945, 33.191315, 41.573307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.047428, 33.344700, 41.578499>,  <28.739901, 33.600342, 41.587154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047428, 33.344700, 41.578499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213157, 0.288027, -0.933597,
		0.602896, 0.713154, 0.357670,
		0.768817, -0.639102, -0.021637,
		29.278074, 33.152969, 41.572006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344696, 34.020550, 41.519997>,  <28.739901, 33.600342, 41.587154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344696, 34.020550, 41.519997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384912, 33.649765, 41.375423>,  <29.409042, 33.427296, 41.288677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384912, 33.649765, 41.375423>,  <29.344696, 34.020550, 41.519997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384912, 33.649765, 41.375423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202596, 0.374742, -0.904723,
		0.974087, 0.017738, 0.225476,
		0.100543, -0.926960, -0.361438,
		29.415075, 33.371677, 41.266991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871195, 34.005287, 40.964432>,  <29.344696, 34.020550, 41.519997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871195, 34.005287, 40.964432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673038, 33.664089, 40.898720>,  <29.554146, 33.459370, 40.859295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673038, 33.664089, 40.898720>,  <29.871195, 34.005287, 40.964432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673038, 33.664089, 40.898720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100539, 0.131539, -0.986199,
		0.862834, -0.505068, 0.020597,
		-0.495389, -0.852997, -0.164276,
		29.524422, 33.408192, 40.849438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272144, 33.716839, 40.551388>,  <29.871195, 34.005287, 40.964432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272144, 33.716839, 40.551388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928352, 33.529251, 40.470036>,  <29.722078, 33.416698, 40.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928352, 33.529251, 40.470036>,  <30.272144, 33.716839, 40.551388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928352, 33.529251, 40.470036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164079, 0.123710, -0.978659,
		0.484122, -0.874507, -0.029378,
		-0.859479, -0.468970, -0.203379,
		29.670509, 33.388561, 40.409023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440935, 33.078388, 40.147480>,  <30.272144, 33.716839, 40.551388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440935, 33.078388, 40.147480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060175, 33.174797, 40.071804>,  <29.831718, 33.232643, 40.026398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060175, 33.174797, 40.071804>,  <30.440935, 33.078388, 40.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060175, 33.174797, 40.071804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164908, -0.117395, -0.979298,
		-0.258242, -0.963393, 0.072002,
		-0.951901, 0.241022, -0.189187,
		29.774605, 33.247105, 40.015049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349873, 32.717655, 39.502296>,  <30.440935, 33.078388, 40.147480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349873, 32.717655, 39.502296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052128, 32.983238, 39.530827>,  <29.873482, 33.142590, 39.547943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052128, 32.983238, 39.530827>,  <30.349873, 32.717655, 39.502296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052128, 32.983238, 39.530827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050136, 0.050941, -0.997442,
		-0.665894, -0.746032, -0.004630,
		-0.744360, 0.663958, 0.071325,
		29.828819, 33.182426, 39.552223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920147, 32.584698, 39.011883>,  <30.349873, 32.717655, 39.502296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920147, 32.584698, 39.011883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810844, 32.964424, 39.074024>,  <29.745264, 33.192261, 39.111309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810844, 32.964424, 39.074024>,  <29.920147, 32.584698, 39.011883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810844, 32.964424, 39.074024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123074, 0.125670, -0.984409,
		-0.954036, -0.288113, 0.082496,
		-0.273254, 0.949315, 0.155353,
		29.728868, 33.249218, 39.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355362, 32.640572, 38.565178>,  <29.920147, 32.584698, 39.011883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355362, 32.640572, 38.565178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454302, 33.018356, 38.651718>,  <29.513666, 33.245029, 38.703640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454302, 33.018356, 38.651718>,  <29.355362, 32.640572, 38.565178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454302, 33.018356, 38.651718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089859, 0.244682, -0.965430,
		-0.964751, 0.219357, 0.145390,
		0.247349, 0.944464, 0.216346,
		29.528507, 33.301697, 38.716621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846739, 33.040546, 38.230381>,  <29.355362, 32.640572, 38.565178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846739, 33.040546, 38.230381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148291, 33.290680, 38.310993>,  <29.329222, 33.440762, 38.359360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148291, 33.290680, 38.310993>,  <28.846739, 33.040546, 38.230381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148291, 33.290680, 38.310993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010444, 0.318106, -0.947997,
		-0.656927, 0.712573, 0.246345,
		0.753882, 0.625338, 0.201531,
		29.374454, 33.478283, 38.371452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669678, 33.682629, 37.823921>,  <28.846739, 33.040546, 38.230381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669678, 33.682629, 37.823921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061968, 33.677937, 37.901939>,  <29.297342, 33.675121, 37.948750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061968, 33.677937, 37.901939>,  <28.669678, 33.682629, 37.823921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061968, 33.677937, 37.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183119, 0.403449, -0.896491,
		-0.068170, 0.914927, 0.397821,
		0.980725, -0.011735, 0.195043,
		29.356186, 33.674416, 37.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913494, 34.375984, 37.644676>,  <28.669678, 33.682629, 37.823921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913494, 34.375984, 37.644676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230352, 34.132248, 37.630749>,  <29.420467, 33.986008, 37.622391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230352, 34.132248, 37.630749>,  <28.913494, 34.375984, 37.644676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230352, 34.132248, 37.630749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126200, 0.219341, -0.967452,
		0.597143, 0.761968, 0.250649,
		0.792145, -0.609338, -0.034818,
		29.467997, 33.949448, 37.620304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443909, 34.707581, 37.197121>,  <28.913494, 34.375984, 37.644676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443909, 34.707581, 37.197121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535994, 34.318848, 37.217308>,  <29.591244, 34.085609, 37.229420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535994, 34.318848, 37.217308>,  <29.443909, 34.707581, 37.197121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535994, 34.318848, 37.217308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210673, -0.000861, -0.977556,
		0.950063, 0.235678, 0.204540,
		0.230212, -0.971831, 0.050469,
		29.605057, 34.027298, 37.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021465, 34.699203, 36.808144>,  <29.443909, 34.707581, 37.197121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021465, 34.699203, 36.808144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901901, 34.317944, 36.826759>,  <29.830162, 34.089188, 36.837929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901901, 34.317944, 36.826759>,  <30.021465, 34.699203, 36.808144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901901, 34.317944, 36.826759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210592, -0.113449, -0.970969,
		0.930755, -0.280432, 0.234635,
		-0.298910, -0.953146, 0.046536,
		29.812229, 34.032001, 36.840721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595966, 34.233223, 36.554405>,  <30.021465, 34.699203, 36.808144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595966, 34.233223, 36.554405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279968, 33.994553, 36.497997>,  <30.090368, 33.851349, 36.464153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279968, 33.994553, 36.497997>,  <30.595966, 34.233223, 36.554405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279968, 33.994553, 36.497997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296003, -0.169754, -0.939982,
		0.536925, -0.784323, 0.310723,
		-0.789996, -0.596675, -0.141017,
		30.042969, 33.815552, 36.455692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835360, 33.600475, 36.266132>,  <30.595966, 34.233223, 36.554405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835360, 33.600475, 36.266132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454905, 33.656887, 36.156258>,  <30.226631, 33.690735, 36.090332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.454905, 33.656887, 36.156258>,  <30.835360, 33.600475, 36.266132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.454905, 33.656887, 36.156258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268092, -0.064177, -0.961253,
		-0.153191, -0.987923, 0.023233,
		-0.951136, 0.141026, -0.274685,
		30.169563, 33.699196, 36.073853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655745, 33.095772, 35.870140>,  <30.835360, 33.600475, 36.266132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655745, 33.095772, 35.870140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405325, 33.398380, 35.794521>,  <30.255074, 33.579945, 35.749149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405325, 33.398380, 35.794521>,  <30.655745, 33.095772, 35.870140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405325, 33.398380, 35.794521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268510, -0.018463, -0.963100,
		-0.732098, -0.653706, -0.191575,
		-0.626047, 0.756523, -0.189043,
		30.217510, 33.625336, 35.737808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904463, 32.579231, 36.441563>,  <30.655745, 33.095772, 35.870140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904463, 32.579231, 36.441563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224262, 32.802681, 36.353260>,  <31.416142, 32.936752, 36.300278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224262, 32.802681, 36.353260>,  <30.904463, 32.579231, 36.441563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224262, 32.802681, 36.353260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577250, -0.612939, 0.539526,
		0.166081, -0.558785, -0.812512,
		0.799500, 0.558627, -0.220761,
		31.464111, 32.970268, 36.287033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342705, 32.084698, 36.348225>,  <30.904463, 32.579231, 36.441563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342705, 32.084698, 36.348225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540564, 32.413326, 36.461609>,  <31.659279, 32.610504, 36.529640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540564, 32.413326, 36.461609>,  <31.342705, 32.084698, 36.348225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540564, 32.413326, 36.461609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557135, -0.550080, 0.622104,
		0.667026, -0.149797, -0.729820,
		0.494649, 0.821567, 0.283461,
		31.688959, 32.659798, 36.546646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058910, 31.981531, 36.222572>,  <31.342705, 32.084698, 36.348225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058910, 31.981531, 36.222572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051205, 32.266411, 36.503258>,  <32.046581, 32.437340, 36.671669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051205, 32.266411, 36.503258>,  <32.058910, 31.981531, 36.222572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051205, 32.266411, 36.503258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650409, -0.524110, 0.549796,
		0.759340, 0.466995, -0.453122,
		-0.019266, 0.712197, 0.701715,
		32.045425, 32.480068, 36.713772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774963, 32.125706, 36.443771>,  <32.058910, 31.981531, 36.222572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774963, 32.125706, 36.443771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585724, 32.327896, 36.732403>,  <32.472179, 32.449211, 36.905582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585724, 32.327896, 36.732403>,  <32.774963, 32.125706, 36.443771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585724, 32.327896, 36.732403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598210, -0.416972, 0.684309,
		0.646778, 0.755401, -0.105111,
		-0.473099, 0.505475, 0.721577,
		32.443794, 32.479538, 36.948875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301876, 32.406036, 36.927376>,  <32.774963, 32.125706, 36.443771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301876, 32.406036, 36.927376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965542, 32.355076, 37.137806>,  <32.763741, 32.324501, 37.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965542, 32.355076, 37.137806>,  <33.301876, 32.406036, 36.927376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965542, 32.355076, 37.137806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531788, -0.375711, 0.758974,
		0.100959, 0.917938, 0.383663,
		-0.840838, -0.127402, 0.526080,
		32.713291, 32.316856, 37.295631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549194, 32.485172, 37.523132>,  <33.301876, 32.406036, 36.927376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549194, 32.485172, 37.523132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182201, 32.361488, 37.623230>,  <32.962006, 32.287277, 37.683289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182201, 32.361488, 37.623230>,  <33.549194, 32.485172, 37.523132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182201, 32.361488, 37.623230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326715, -0.226909, 0.917480,
		-0.226909, 0.923528, 0.309207,
		-0.917480, -0.309207, 0.250243,
		32.906956, 32.268726, 37.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391373, 32.730873, 38.252277>,  <33.549194, 32.485172, 37.523132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391373, 32.730873, 38.252277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120071, 32.441566, 38.200340>,  <32.957291, 32.267982, 38.169178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120071, 32.441566, 38.200340>,  <33.391373, 32.730873, 38.252277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120071, 32.441566, 38.200340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218873, -0.367519, 0.903894,
		-0.701477, 0.584647, 0.407574,
		-0.678251, -0.723268, -0.129843,
		32.916595, 32.224586, 38.161388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834404, 32.837646, 38.769684>,  <33.391373, 32.730873, 38.252277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834404, 32.837646, 38.769684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840740, 32.456921, 38.647182>,  <32.844540, 32.228485, 38.573681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840740, 32.456921, 38.647182>,  <32.834404, 32.837646, 38.769684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840740, 32.456921, 38.647182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203312, -0.296826, 0.933038,
		-0.978986, -0.077042, 0.188815,
		0.015838, -0.951819, -0.306252,
		32.845493, 32.171375, 38.555305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453259, 32.516438, 39.202362>,  <32.834404, 32.837646, 38.769684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453259, 32.516438, 39.202362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673233, 32.215317, 39.057667>,  <32.805218, 32.034645, 38.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673233, 32.215317, 39.057667>,  <32.453259, 32.516438, 39.202362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673233, 32.215317, 39.057667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119267, -0.357895, 0.926114,
		-0.826645, -0.552450, -0.107036,
		0.549939, -0.752801, -0.361741,
		32.838215, 31.989477, 38.949142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196247, 31.890718, 39.471401>,  <32.453259, 32.516438, 39.202362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196247, 31.890718, 39.471401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577232, 31.821274, 39.371258>,  <32.805824, 31.779606, 39.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577232, 31.821274, 39.371258>,  <32.196247, 31.890718, 39.471401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577232, 31.821274, 39.371258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131592, -0.506707, 0.852016,
		-0.274778, -0.844457, -0.459772,
		0.952460, -0.173613, -0.250356,
		32.862972, 31.769190, 39.296150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328472, 31.350574, 39.950462>,  <32.196247, 31.890718, 39.471401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328472, 31.350574, 39.950462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696823, 31.431408, 39.817108>,  <32.917835, 31.479908, 39.737095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696823, 31.431408, 39.817108>,  <32.328472, 31.350574, 39.950462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696823, 31.431408, 39.817108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389563, -0.509804, 0.767033,
		-0.014958, -0.836219, -0.548191,
		0.920878, 0.202082, -0.333386,
		32.973087, 31.492033, 39.717091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718075, 30.709314, 40.076595>,  <32.328472, 31.350574, 39.950462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718075, 30.709314, 40.076595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952599, 31.030470, 40.033493>,  <33.093311, 31.223164, 40.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952599, 31.030470, 40.033493>,  <32.718075, 30.709314, 40.076595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952599, 31.030470, 40.033493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407408, -0.177277, 0.895875,
		0.700185, -0.569160, -0.431043,
		0.586310, 0.802888, -0.107753,
		33.128490, 31.271336, 40.001167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296944, 30.476851, 40.165798>,  <32.718075, 30.709314, 40.076595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296944, 30.476851, 40.165798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319969, 30.859457, 40.280174>,  <33.333786, 31.089022, 40.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319969, 30.859457, 40.280174>,  <33.296944, 30.476851, 40.165798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319969, 30.859457, 40.280174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354114, -0.287359, 0.889959,
		0.933429, 0.050027, -0.355257,
		0.057564, 0.956516, 0.285944,
		33.337238, 31.146412, 40.365959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789028, 30.401947, 40.613525>,  <33.296944, 30.476851, 40.165798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789028, 30.401947, 40.613525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642513, 30.764360, 40.698322>,  <33.554604, 30.981808, 40.749199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642513, 30.764360, 40.698322>,  <33.789028, 30.401947, 40.613525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642513, 30.764360, 40.698322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098597, -0.188746, 0.977064,
		0.925262, 0.378790, -0.020197,
		-0.366290, 0.906031, 0.211987,
		33.532627, 31.036169, 40.761917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140732, 30.718164, 41.177547>,  <33.789028, 30.401947, 40.613525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140732, 30.718164, 41.177547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783672, 30.898439, 41.180428>,  <33.569435, 31.006605, 41.182156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783672, 30.898439, 41.180428>,  <34.140732, 30.718164, 41.177547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783672, 30.898439, 41.180428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009291, -0.034366, 0.999366,
		0.450649, 0.892020, 0.034865,
		-0.892653, 0.450687, 0.007200,
		33.515877, 31.033646, 41.182587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161137, 30.929529, 41.795452>,  <34.140732, 30.718164, 41.177547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161137, 30.929529, 41.795452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775471, 31.018572, 41.737709>,  <33.544071, 31.071999, 41.703064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775471, 31.018572, 41.737709>,  <34.161137, 30.929529, 41.795452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775471, 31.018572, 41.737709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159946, -0.053579, 0.985671,
		0.211684, 0.973435, 0.087265,
		-0.964161, 0.222608, -0.144356,
		33.486221, 31.085354, 41.694401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013947, 31.464048, 42.300358>,  <34.161137, 30.929529, 41.795452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013947, 31.464048, 42.300358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660046, 31.299873, 42.212032>,  <33.447704, 31.201368, 42.159039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660046, 31.299873, 42.212032>,  <34.013947, 31.464048, 42.300358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660046, 31.299873, 42.212032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192381, -0.109914, 0.975145,
		-0.424504, 0.905241, 0.018287,
		-0.884752, -0.410435, -0.220810,
		33.394619, 31.176743, 42.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579762, 31.673414, 42.886166>,  <34.013947, 31.464048, 42.300358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579762, 31.673414, 42.886166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366436, 31.405397, 42.679626>,  <33.238441, 31.244587, 42.555702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366436, 31.405397, 42.679626>,  <33.579762, 31.673414, 42.886166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366436, 31.405397, 42.679626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595874, -0.135692, 0.791531,
		-0.600425, 0.729814, -0.326896,
		-0.533314, -0.670044, -0.516350,
		33.206444, 31.204384, 42.524723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937294, 31.834927, 42.949993>,  <33.579762, 31.673414, 42.886166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937294, 31.834927, 42.949993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914703, 31.443409, 42.871231>,  <32.901150, 31.208498, 42.823975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914703, 31.443409, 42.871231>,  <32.937294, 31.834927, 42.949993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914703, 31.443409, 42.871231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614344, -0.121395, 0.779644,
		-0.787015, 0.165005, -0.594459,
		-0.056481, -0.978794, -0.196910,
		32.897758, 31.149771, 42.812157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279060, 31.641138, 42.983616>,  <32.937294, 31.834927, 42.949993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279060, 31.641138, 42.983616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436501, 31.275761, 43.025002>,  <32.530964, 31.056534, 43.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436501, 31.275761, 43.025002>,  <32.279060, 31.641138, 42.983616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436501, 31.275761, 43.025002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626834, -0.184350, 0.757030,
		-0.672429, -0.362819, -0.645137,
		0.393596, -0.913443, 0.103465,
		32.554581, 31.001728, 43.056042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654877, 31.194942, 42.951782>,  <32.279060, 31.641138, 42.983616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654877, 31.194942, 42.951782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971975, 31.062181, 43.156288>,  <32.162235, 30.982525, 43.278992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971975, 31.062181, 43.156288>,  <31.654877, 31.194942, 42.951782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971975, 31.062181, 43.156288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579759, -0.151529, 0.800574,
		-0.188236, -0.931065, -0.312545,
		0.792747, -0.331898, 0.511270,
		32.209801, 30.962612, 43.309669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542274, 30.542946, 43.151226>,  <31.654877, 31.194942, 42.951782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542274, 30.542946, 43.151226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803503, 30.675917, 43.423397>,  <31.960241, 30.755699, 43.586700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803503, 30.675917, 43.423397>,  <31.542274, 30.542946, 43.151226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803503, 30.675917, 43.423397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651141, -0.212276, 0.728667,
		0.386669, -0.918929, 0.077826,
		0.653072, 0.332428, 0.680432,
		31.999424, 30.775644, 43.627525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711494, 29.989836, 43.700417>,  <31.542274, 30.542946, 43.151226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711494, 29.989836, 43.700417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800856, 30.346970, 43.856846>,  <31.854473, 30.561249, 43.950703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800856, 30.346970, 43.856846>,  <31.711494, 29.989836, 43.700417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800856, 30.346970, 43.856846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368029, -0.294253, 0.882026,
		0.902577, -0.340975, 0.262852,
		0.223404, 0.892834, 0.391074,
		31.867876, 30.614820, 43.974167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895128, 29.829870, 44.356232>,  <31.711494, 29.989836, 43.700417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895128, 29.829870, 44.356232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812771, 30.219236, 44.396366>,  <31.763357, 30.452856, 44.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812771, 30.219236, 44.396366>,  <31.895128, 29.829870, 44.356232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812771, 30.219236, 44.396366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257889, -0.152878, 0.954003,
		0.943982, 0.170548, 0.282510,
		-0.205893, 0.973417, 0.100331,
		31.751003, 30.511261, 44.426464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111645, 30.001022, 45.025070>,  <31.895128, 29.829870, 44.356232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111645, 30.001022, 45.025070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881998, 30.309614, 44.915367>,  <31.744211, 30.494768, 44.849545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881998, 30.309614, 44.915367>,  <32.111645, 30.001022, 45.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881998, 30.309614, 44.915367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132423, 0.243060, 0.960930,
		0.807997, 0.587999, -0.037382,
		-0.574112, 0.771478, -0.274256,
		31.709764, 30.541058, 44.833092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313332, 30.557896, 45.342640>,  <32.111645, 30.001022, 45.025070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313332, 30.557896, 45.342640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932312, 30.646795, 45.259445>,  <31.703701, 30.700136, 45.209530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932312, 30.646795, 45.259445>,  <32.313332, 30.557896, 45.342640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932312, 30.646795, 45.259445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090843, 0.444584, 0.891119,
		0.290520, 0.867727, -0.403297,
		-0.952547, 0.222251, -0.207988,
		31.646547, 30.713470, 45.197048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197731, 31.313272, 45.391171>,  <32.313332, 30.557896, 45.342640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197731, 31.313272, 45.391171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861090, 31.111057, 45.467209>,  <31.659105, 30.989729, 45.512833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861090, 31.111057, 45.467209>,  <32.197731, 31.313272, 45.391171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861090, 31.111057, 45.467209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047096, 0.419312, 0.906620,
		-0.538038, 0.754062, -0.376704,
		-0.841604, -0.505537, 0.190092,
		31.608608, 30.959396, 45.524235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737236, 31.816391, 45.757168>,  <32.197731, 31.313272, 45.391171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737236, 31.816391, 45.757168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570883, 31.459013, 45.825050>,  <31.471071, 31.244587, 45.865780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570883, 31.459013, 45.825050>,  <31.737236, 31.816391, 45.757168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570883, 31.459013, 45.825050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200057, 0.271919, 0.941296,
		-0.887141, 0.357517, -0.291826,
		-0.415882, -0.893444, 0.169707,
		31.446117, 31.190979, 45.875961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133821, 31.904060, 46.125206>,  <31.737236, 31.816391, 45.757168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133821, 31.904060, 46.125206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229071, 31.521948, 46.195332>,  <31.286221, 31.292681, 46.237408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229071, 31.521948, 46.195332>,  <31.133821, 31.904060, 46.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229071, 31.521948, 46.195332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138261, 0.145330, 0.979675,
		-0.961343, -0.257525, -0.097472,
		0.238125, -0.955280, 0.175317,
		31.300508, 31.235363, 46.247929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750652, 31.727152, 46.683403>,  <31.133821, 31.904060, 46.125206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750652, 31.727152, 46.683403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989723, 31.406834, 46.698967>,  <31.133165, 31.214643, 46.708305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989723, 31.406834, 46.698967>,  <30.750652, 31.727152, 46.683403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989723, 31.406834, 46.698967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163123, -0.073947, 0.983831,
		-0.784968, -0.594359, -0.174824,
		0.597676, -0.800794, 0.038907,
		31.169025, 31.166595, 46.710640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396416, 31.160301, 47.010574>,  <30.750652, 31.727152, 46.683403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396416, 31.160301, 47.010574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788124, 31.083809, 47.037281>,  <31.023149, 31.037914, 47.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788124, 31.083809, 47.037281>,  <30.396416, 31.160301, 47.010574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788124, 31.083809, 47.037281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080869, -0.066928, 0.994475,
		-0.185707, -0.979260, -0.081005,
		0.979271, -0.191232, 0.066763,
		31.081905, 31.026440, 47.057308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474934, 30.713577, 47.547340>,  <30.396416, 31.160301, 47.010574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474934, 30.713577, 47.547340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852673, 30.837507, 47.503124>,  <31.079315, 30.911865, 47.476593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852673, 30.837507, 47.503124>,  <30.474934, 30.713577, 47.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852673, 30.837507, 47.503124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144547, -0.088973, 0.985490,
		0.295497, -0.946621, -0.128806,
		0.944345, 0.309827, -0.110540,
		31.135977, 30.930456, 47.469963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809574, 30.248339, 47.933006>,  <30.474934, 30.713577, 47.547340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809574, 30.248339, 47.933006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033733, 30.576303, 47.886185>,  <31.168228, 30.773083, 47.858093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033733, 30.576303, 47.886185>,  <30.809574, 30.248339, 47.933006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033733, 30.576303, 47.886185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014006, 0.131924, 0.991161,
		0.828106, -0.557082, 0.062446,
		0.560396, 0.819912, -0.117050,
		31.201853, 30.822277, 47.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275499, 30.170650, 48.463081>,  <30.809574, 30.248339, 47.933006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275499, 30.170650, 48.463081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319080, 30.550915, 48.346893>,  <31.345228, 30.779074, 48.277180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319080, 30.550915, 48.346893>,  <31.275499, 30.170650, 48.463081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319080, 30.550915, 48.346893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065630, 0.284690, 0.956370,
		0.991878, -0.123261, -0.031375,
		0.108951, 0.950662, -0.290467,
		31.351767, 30.836113, 48.259754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889496, 30.351963, 48.699051>,  <31.275499, 30.170650, 48.463081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889496, 30.351963, 48.699051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674643, 30.687498, 48.663628>,  <31.545731, 30.888819, 48.642372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674643, 30.687498, 48.663628>,  <31.889496, 30.351963, 48.699051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674643, 30.687498, 48.663628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124730, 0.182824, 0.975201,
		0.834224, 0.512768, -0.202829,
		-0.537134, 0.838835, -0.088559,
		31.513502, 30.939148, 48.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334015, 30.855207, 49.192558>,  <31.889496, 30.351963, 48.699051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334015, 30.855207, 49.192558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972166, 31.009027, 49.119038>,  <31.755056, 31.101318, 49.074924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972166, 31.009027, 49.119038>,  <32.334015, 30.855207, 49.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972166, 31.009027, 49.119038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034416, 0.363923, 0.930793,
		0.424824, 0.848341, -0.315978,
		-0.904621, 0.384549, -0.183800,
		31.700779, 31.124392, 49.063896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409023, 31.598438, 49.377380>,  <32.334015, 30.855207, 49.192558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409023, 31.598438, 49.377380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023945, 31.490597, 49.368168>,  <31.792898, 31.425892, 49.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023945, 31.490597, 49.368168>,  <32.409023, 31.598438, 49.377380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023945, 31.490597, 49.368168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097881, 0.267633, 0.958536,
		-0.252259, 0.925034, -0.284038,
		-0.962697, -0.269601, -0.023030,
		31.735136, 31.409716, 49.361259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208809, 31.387960, 49.991680>,  <32.409023, 31.598438, 49.377380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208809, 31.387960, 49.991680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918358, 31.595257, 49.810944>,  <31.744087, 31.719635, 49.702503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918358, 31.595257, 49.810944>,  <32.208809, 31.387960, 49.991680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918358, 31.595257, 49.810944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589809, 0.131766, -0.796721,
		-0.353355, -0.845024, -0.401341,
		-0.726131, 0.518240, -0.451842,
		31.700520, 31.750729, 49.675392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708935, 31.662119, 50.274910>,  <32.208809, 31.387960, 49.991680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708935, 31.662119, 50.274910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913601, 31.981216, 50.402534>,  <33.036400, 32.172676, 50.479111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913601, 31.981216, 50.402534>,  <32.708935, 31.662119, 50.274910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913601, 31.981216, 50.402534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059226, 0.337728, -0.939379,
		-0.857139, 0.499548, 0.125558,
		0.511669, 0.797742, 0.319066,
		33.067101, 32.220539, 50.498253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323105, 32.272221, 49.959011>,  <32.708935, 31.662119, 50.274910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323105, 32.272221, 49.959011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695240, 32.373501, 50.065121>,  <32.918522, 32.434269, 50.128784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695240, 32.373501, 50.065121>,  <32.323105, 32.272221, 49.959011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695240, 32.373501, 50.065121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100506, 0.519626, -0.848462,
		-0.352672, 0.816014, 0.457978,
		0.930334, 0.253199, 0.265272,
		32.974339, 32.449459, 50.144703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300697, 32.856491, 49.727386>,  <32.323105, 32.272221, 49.959011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300697, 32.856491, 49.727386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691814, 32.797352, 49.786800>,  <32.926483, 32.761868, 49.822449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691814, 32.797352, 49.786800>,  <32.300697, 32.856491, 49.727386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691814, 32.797352, 49.786800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181297, 0.241139, -0.953406,
		0.105140, 0.959163, 0.262588,
		0.977792, -0.147847, 0.148540,
		32.985153, 32.752998, 49.831364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609299, 33.461937, 49.585896>,  <32.300697, 32.856491, 49.727386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609299, 33.461937, 49.585896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861897, 33.155460, 49.538288>,  <33.013454, 32.971573, 49.509724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861897, 33.155460, 49.538288>,  <32.609299, 33.461937, 49.585896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861897, 33.155460, 49.538288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168449, 0.285396, -0.943490,
		0.756862, 0.575760, 0.309290,
		0.631494, -0.766192, -0.119019,
		33.051346, 32.925602, 49.502583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184368, 33.812965, 49.255795>,  <32.609299, 33.461937, 49.585896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184368, 33.812965, 49.255795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207447, 33.420097, 49.184223>,  <33.221294, 33.184376, 49.141281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207447, 33.420097, 49.184223>,  <33.184368, 33.812965, 49.255795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207447, 33.420097, 49.184223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324798, 0.187941, -0.926922,
		0.944022, -0.004636, 0.329850,
		0.057696, -0.982169, -0.178926,
		33.224754, 33.125446, 49.130547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738667, 33.803150, 48.796227>,  <33.184368, 33.812965, 49.255795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738667, 33.803150, 48.796227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572132, 33.442047, 48.752975>,  <33.472210, 33.225384, 48.727024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572132, 33.442047, 48.752975>,  <33.738667, 33.803150, 48.796227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572132, 33.442047, 48.752975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148230, 0.049939, -0.987691,
		0.897045, -0.427242, 0.113024,
		-0.416339, -0.902757, -0.108127,
		33.447231, 33.171219, 48.720539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174320, 33.385052, 48.461525>,  <33.738667, 33.803150, 48.796227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174320, 33.385052, 48.461525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805687, 33.247002, 48.390450>,  <33.584507, 33.164169, 48.347805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805687, 33.247002, 48.390450>,  <34.174320, 33.385052, 48.461525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805687, 33.247002, 48.390450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217018, -0.078555, -0.973002,
		0.321852, -0.935262, 0.147294,
		-0.921582, -0.345128, -0.177685,
		33.529213, 33.143463, 48.337143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244278, 32.787388, 47.983814>,  <34.174320, 33.385052, 48.461525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244278, 32.787388, 47.983814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867863, 32.919788, 47.955856>,  <33.642014, 32.999229, 47.939083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867863, 32.919788, 47.955856>,  <34.244278, 32.787388, 47.983814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867863, 32.919788, 47.955856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074035, -0.000101, -0.997256,
		-0.330096, -0.943632, -0.024410,
		-0.941040, 0.330998, -0.069895,
		33.585552, 33.019089, 47.934887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034130, 32.540073, 47.339512>,  <34.244278, 32.787388, 47.983814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034130, 32.540073, 47.339512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739822, 32.799541, 47.417347>,  <33.563236, 32.955223, 47.464046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739822, 32.799541, 47.417347>,  <34.034130, 32.540073, 47.339512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739822, 32.799541, 47.417347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175077, 0.095370, -0.979925,
		-0.654206, -0.755070, 0.043397,
		-0.735773, 0.648671, 0.194587,
		33.519089, 32.994144, 47.475723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390713, 32.209610, 47.071999>,  <34.034130, 32.540073, 47.339512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390713, 32.209610, 47.071999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340797, 32.606213, 47.086666>,  <33.310848, 32.844173, 47.095467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340797, 32.606213, 47.086666>,  <33.390713, 32.209610, 47.071999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340797, 32.606213, 47.086666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204749, 0.010428, -0.978759,
		-0.970827, -0.129646, 0.201708,
		-0.124789, 0.991506, 0.036669,
		33.303360, 32.903664, 47.097668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729038, 32.380253, 46.780270>,  <33.390713, 32.209610, 47.071999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729038, 32.380253, 46.780270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952305, 32.711185, 46.755054>,  <33.086266, 32.909744, 46.739925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952305, 32.711185, 46.755054>,  <32.729038, 32.380253, 46.780270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952305, 32.711185, 46.755054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354570, 0.169143, -0.919604,
		-0.750156, 0.535640, 0.387757,
		0.558163, 0.827333, -0.063039,
		33.119755, 32.959385, 46.736141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338142, 32.747097, 46.411442>,  <32.729038, 32.380253, 46.780270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338142, 32.747097, 46.411442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695095, 32.923512, 46.373177>,  <32.909267, 33.029362, 46.350220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695095, 32.923512, 46.373177>,  <32.338142, 32.747097, 46.411442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695095, 32.923512, 46.373177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196032, 0.187899, -0.962427,
		-0.406491, 0.877600, 0.254133,
		0.892377, 0.441036, -0.095658,
		32.962807, 33.055820, 46.344479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284340, 33.313320, 45.796841>,  <32.338142, 32.747097, 46.411442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284340, 33.313320, 45.796841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676918, 33.246204, 45.833969>,  <32.912464, 33.205933, 45.856247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676918, 33.246204, 45.833969>,  <32.284340, 33.313320, 45.796841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676918, 33.246204, 45.833969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119827, 0.158752, -0.980020,
		0.149704, 0.972956, 0.175912,
		0.981443, -0.167792, 0.092821,
		32.971352, 33.195866, 45.861816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716446, 33.932259, 45.410870>,  <32.284340, 33.313320, 45.796841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716446, 33.932259, 45.410870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954472, 33.611000, 45.422600>,  <33.097286, 33.418247, 45.429638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954472, 33.611000, 45.422600>,  <32.716446, 33.932259, 45.410870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954472, 33.611000, 45.422600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305333, 0.192174, -0.932653,
		0.743420, 0.563940, 0.359582,
		0.595062, -0.803144, 0.029323,
		33.132992, 33.370056, 45.431396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267815, 34.084587, 44.894043>,  <32.716446, 33.932259, 45.410870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267815, 34.084587, 44.894043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349953, 33.703114, 44.981976>,  <33.399235, 33.474228, 45.034733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349953, 33.703114, 44.981976>,  <33.267815, 34.084587, 44.894043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349953, 33.703114, 44.981976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303301, -0.151545, -0.940767,
		0.930507, 0.259853, 0.258134,
		0.205342, -0.953683, 0.219827,
		33.411556, 33.417007, 45.047924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915569, 34.046322, 44.654446>,  <33.267815, 34.084587, 44.894043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915569, 34.046322, 44.654446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787395, 33.667419, 44.656776>,  <33.710491, 33.440079, 44.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787395, 33.667419, 44.656776>,  <33.915569, 34.046322, 44.654446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787395, 33.667419, 44.656776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376074, -0.132858, -0.917015,
		0.869419, -0.291655, 0.398809,
		-0.320437, -0.947252, 0.005825,
		33.691265, 33.383244, 44.658524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511292, 33.575455, 44.439861>,  <33.915569, 34.046322, 44.654446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511292, 33.575455, 44.439861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160007, 33.401054, 44.361221>,  <33.949238, 33.296413, 44.314037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160007, 33.401054, 44.361221>,  <34.511292, 33.575455, 44.439861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160007, 33.401054, 44.361221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302552, -0.188074, -0.934393,
		0.370420, -0.880075, 0.297081,
		-0.878209, -0.436000, -0.196602,
		33.896545, 33.270256, 44.302242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650631, 33.019852, 44.114079>,  <34.511292, 33.575455, 44.439861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650631, 33.019852, 44.114079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263870, 33.053444, 44.017708>,  <34.031815, 33.073597, 43.959885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263870, 33.053444, 44.017708>,  <34.650631, 33.019852, 44.114079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263870, 33.053444, 44.017708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215390, -0.237486, -0.947210,
		-0.136759, -0.967754, 0.211538,
		-0.966904, 0.083976, -0.240923,
		33.973801, 33.078636, 43.945431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537380, 32.525688, 43.590469>,  <34.650631, 33.019852, 44.114079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537380, 32.525688, 43.590469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245861, 32.795746, 43.544785>,  <34.070950, 32.957779, 43.517376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245861, 32.795746, 43.544785>,  <34.537380, 32.525688, 43.590469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245861, 32.795746, 43.544785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020871, -0.144815, -0.989239,
		-0.684416, -0.723334, 0.091449,
		-0.728793, 0.675142, -0.114210,
		34.027222, 32.998287, 43.510521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172359, 32.256908, 43.098637>,  <34.537380, 32.525688, 43.590469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172359, 32.256908, 43.098637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068783, 32.643211, 43.092133>,  <34.006638, 32.874992, 43.088230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068783, 32.643211, 43.092133>,  <34.172359, 32.256908, 43.098637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068783, 32.643211, 43.092133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039608, -0.027440, -0.998839,
		-0.965081, -0.257997, 0.045357,
		-0.258942, 0.965756, -0.016263,
		33.991100, 32.932938, 43.087254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700081, 32.352478, 42.487030>,  <34.172359, 32.256908, 43.098637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700081, 32.352478, 42.487030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810398, 32.720654, 42.597828>,  <33.876591, 32.941559, 42.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810398, 32.720654, 42.597828>,  <33.700081, 32.352478, 42.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810398, 32.720654, 42.597828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071189, 0.267822, -0.960835,
		-0.958577, 0.284713, 0.008338,
		0.275795, 0.920440, 0.276996,
		33.893135, 32.996784, 42.680927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423901, 32.752590, 41.964378>,  <33.700081, 32.352478, 42.487030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423901, 32.752590, 41.964378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678898, 33.006897, 42.138462>,  <33.831894, 33.159481, 42.242912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678898, 33.006897, 42.138462>,  <33.423901, 32.752590, 41.964378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678898, 33.006897, 42.138462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193599, 0.414563, -0.889189,
		-0.745739, 0.651105, 0.141196,
		0.637490, 0.635767, 0.435209,
		33.870144, 33.197628, 42.269024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345291, 33.459618, 41.641804>,  <33.423901, 32.752590, 41.964378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345291, 33.459618, 41.641804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718254, 33.435471, 41.784332>,  <33.942032, 33.420982, 41.869850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718254, 33.435471, 41.784332>,  <33.345291, 33.459618, 41.641804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718254, 33.435471, 41.784332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357771, 0.293607, -0.886451,
		-0.051109, 0.954018, 0.295359,
		0.932410, -0.060365, 0.356326,
		33.997978, 33.417362, 41.891232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599228, 33.975945, 41.342209>,  <33.345291, 33.459618, 41.641804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599228, 33.975945, 41.342209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929054, 33.771847, 41.439972>,  <34.126949, 33.649387, 41.498631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929054, 33.771847, 41.439972>,  <33.599228, 33.975945, 41.342209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929054, 33.771847, 41.439972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455154, 0.341677, -0.822248,
		0.336042, 0.789243, 0.513977,
		0.824567, -0.510249, 0.244410,
		34.176426, 33.618771, 41.513294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176735, 34.469772, 41.175953>,  <33.599228, 33.975945, 41.342209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176735, 34.469772, 41.175953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308151, 34.091976, 41.175312>,  <34.387001, 33.865299, 41.174927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308151, 34.091976, 41.175312>,  <34.176735, 34.469772, 41.175953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308151, 34.091976, 41.175312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439332, 0.154328, -0.884969,
		0.836089, 0.290048, 0.465647,
		0.328546, -0.944487, -0.001605,
		34.406715, 33.808632, 41.174831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954918, 34.474369, 41.082134>,  <34.176735, 34.469772, 41.175953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954918, 34.474369, 41.082134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849133, 34.103546, 40.975834>,  <34.785660, 33.881054, 40.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849133, 34.103546, 40.975834>,  <34.954918, 34.474369, 41.082134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849133, 34.103546, 40.975834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454507, 0.123228, -0.882178,
		0.850577, -0.354092, 0.388764,
		-0.264466, -0.927056, -0.265752,
		34.769794, 33.825428, 40.896107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513996, 34.299263, 40.621284>,  <34.954918, 34.474369, 41.082134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513996, 34.299263, 40.621284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243427, 34.021690, 40.522560>,  <35.081085, 33.855148, 40.463326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243427, 34.021690, 40.522560>,  <35.513996, 34.299263, 40.621284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243427, 34.021690, 40.522560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321785, 0.022989, -0.946533,
		0.662502, -0.719676, 0.207746,
		-0.676422, -0.693929, -0.246812,
		35.040501, 33.813511, 40.448517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866997, 33.879780, 40.146202>,  <35.513996, 34.299263, 40.621284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866997, 33.879780, 40.146202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476910, 33.823154, 40.078190>,  <35.242859, 33.789181, 40.037384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476910, 33.823154, 40.078190>,  <35.866997, 33.879780, 40.146202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476910, 33.823154, 40.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191144, -0.152065, -0.969711,
		0.111419, -0.978180, 0.175355,
		-0.975218, -0.141562, -0.170030,
		35.184345, 33.780685, 40.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845921, 33.330223, 39.647888>,  <35.866997, 33.879780, 40.146202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845921, 33.330223, 39.647888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500782, 33.532375, 39.644257>,  <35.293697, 33.653667, 39.642078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500782, 33.532375, 39.644257>,  <35.845921, 33.330223, 39.647888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500782, 33.532375, 39.644257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160366, 0.256662, -0.953104,
		-0.479353, -0.823839, -0.302506,
		-0.862846, 0.505385, -0.009084,
		35.241928, 33.683990, 39.641533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515537, 33.093235, 39.151352>,  <35.845921, 33.330223, 39.647888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515537, 33.093235, 39.151352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341202, 33.450909, 39.192322>,  <35.236603, 33.665512, 39.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341202, 33.450909, 39.192322>,  <35.515537, 33.093235, 39.151352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341202, 33.450909, 39.192322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262631, 0.235197, -0.935792,
		-0.860856, -0.380951, -0.337347,
		-0.435834, 0.894180, 0.102421,
		35.210453, 33.719162, 39.223049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170979, 33.189438, 38.440487>,  <35.515537, 33.093235, 39.151352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170979, 33.189438, 38.440487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189461, 33.541664, 38.629154>,  <35.200550, 33.752998, 38.742355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189461, 33.541664, 38.629154>,  <35.170979, 33.189438, 38.440487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189461, 33.541664, 38.629154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233234, 0.449609, -0.862238,
		-0.971323, 0.149845, -0.184605,
		0.046202, 0.880567, 0.471664,
		35.203320, 33.805836, 38.770653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850208, 33.665623, 37.947975>,  <35.170979, 33.189438, 38.440487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850208, 33.665623, 37.947975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005535, 33.928680, 38.206188>,  <35.098732, 34.086514, 38.361118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005535, 33.928680, 38.206188>,  <34.850208, 33.665623, 37.947975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005535, 33.928680, 38.206188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312319, 0.565130, -0.763600,
		-0.866989, 0.498130, 0.014053,
		0.388314, 0.657643, 0.645537,
		35.122028, 34.125973, 38.399849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711334, 34.315201, 37.595032>,  <34.850208, 33.665623, 37.947975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711334, 34.315201, 37.595032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008705, 34.397537, 37.849571>,  <35.187130, 34.446941, 38.002296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008705, 34.397537, 37.849571>,  <34.711334, 34.315201, 37.595032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008705, 34.397537, 37.849571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411600, 0.609129, -0.677898,
		-0.527161, 0.765891, 0.368119,
		0.743429, 0.205843, 0.636350,
		35.231735, 34.459290, 38.040478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805218, 35.097916, 37.647171>,  <34.711334, 34.315201, 37.595032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805218, 35.097916, 37.647171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147858, 34.943691, 37.784325>,  <35.353443, 34.851154, 37.866619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147858, 34.943691, 37.784325>,  <34.805218, 35.097916, 37.647171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147858, 34.943691, 37.784325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507286, 0.750768, -0.423093,
		-0.094298, 0.536364, 0.838702,
		0.856603, -0.385565, 0.342886,
		35.404839, 34.828022, 37.887192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199741, 35.579670, 37.942142>,  <34.805218, 35.097916, 37.647171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199741, 35.579670, 37.942142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490330, 35.322151, 37.846012>,  <35.664684, 35.167641, 37.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490330, 35.322151, 37.846012>,  <35.199741, 35.579670, 37.942142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490330, 35.322151, 37.846012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561930, 0.757846, -0.331517,
		0.395563, 0.105791, 0.912326,
		0.726474, -0.643799, -0.240329,
		35.708271, 35.129013, 37.773914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870945, 35.894398, 38.196217>,  <35.199741, 35.579670, 37.942142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870945, 35.894398, 38.196217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991215, 35.623039, 37.928074>,  <36.063377, 35.460224, 37.767189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991215, 35.623039, 37.928074>,  <35.870945, 35.894398, 38.196217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991215, 35.623039, 37.928074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650932, 0.659688, -0.375632,
		0.697052, -0.323412, 0.639940,
		0.300677, -0.678392, -0.670356,
		36.081417, 35.419521, 37.726967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508541, 35.860828, 38.268803>,  <35.870945, 35.894398, 38.196217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508541, 35.860828, 38.268803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488804, 35.708591, 37.899433>,  <36.476963, 35.617249, 37.677811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488804, 35.708591, 37.899433>,  <36.508541, 35.860828, 38.268803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488804, 35.708591, 37.899433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720570, 0.626660, -0.296777,
		0.691624, -0.680037, 0.243323,
		-0.049339, -0.380589, -0.923427,
		36.474003, 35.594414, 37.622406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218487, 35.810780, 38.024464>,  <36.508541, 35.860828, 38.268803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218487, 35.810780, 38.024464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997375, 35.820736, 37.691280>,  <36.864708, 35.826710, 37.491371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997375, 35.820736, 37.691280>,  <37.218487, 35.810780, 38.024464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997375, 35.820736, 37.691280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478323, 0.827976, -0.292682,
		0.682384, -0.560210, -0.469592,
		-0.552774, 0.024895, -0.832959,
		36.831543, 35.828205, 37.441391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702419, 35.866207, 37.487492>,  <37.218487, 35.810780, 38.024464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702419, 35.866207, 37.487492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 36.012096, 37.383362>,  <37.130268, 36.099628, 37.320885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344826, 36.012096, 37.383362>,  <37.702419, 35.866207, 37.487492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344826, 36.012096, 37.383362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434045, 0.849176, -0.300841,
		0.111335, -0.381939, -0.917457,
		-0.893985, 0.364723, -0.260322,
		37.076630, 36.121513, 37.305264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343227, 35.739933, 37.683380>,  <37.702419, 35.866207, 37.487492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343227, 35.739933, 37.683380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348557, 35.472977, 37.385544>,  <38.351753, 35.312801, 37.206844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348557, 35.472977, 37.385544>,  <38.343227, 35.739933, 37.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348557, 35.472977, 37.385544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964647, -0.187438, 0.185265,
		-0.263208, -0.720734, 0.641299,
		0.013323, -0.667391, -0.744589,
		38.352554, 35.272758, 37.162167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669369, 35.179981, 37.943188>,  <38.343227, 35.739933, 37.683380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669369, 35.179981, 37.943188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734951, 35.170986, 37.548702>,  <38.774300, 35.165588, 37.312012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734951, 35.170986, 37.548702>,  <38.669369, 35.179981, 37.943188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734951, 35.170986, 37.548702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947747, -0.273758, 0.163803,
		-0.273662, -0.961536, -0.023600,
		0.163963, -0.022459, -0.986211,
		38.784138, 35.164242, 37.252838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021683, 34.481758, 37.646629>,  <38.669369, 35.179981, 37.943188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021683, 34.481758, 37.646629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129745, 34.788086, 37.413208>,  <39.194584, 34.971882, 37.273155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129745, 34.788086, 37.413208>,  <39.021683, 34.481758, 37.646629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129745, 34.788086, 37.413208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942655, -0.333765, -0.001604,
		-0.195998, -0.549657, -0.812073,
		0.270160, 0.765819, -0.583554,
		39.210793, 35.017830, 37.238140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424122, 34.256371, 37.088501>,  <39.021683, 34.481758, 37.646629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424122, 34.256371, 37.088501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529839, 34.632076, 37.176083>,  <39.593269, 34.857498, 37.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529839, 34.632076, 37.176083>,  <39.424122, 34.256371, 37.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529839, 34.632076, 37.176083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961171, -0.237829, -0.139955,
		-0.079381, 0.247439, -0.965646,
		0.264289, 0.939261, 0.218952,
		39.609127, 34.913857, 37.241768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824806, 34.689819, 36.509171>,  <39.424122, 34.256371, 37.088501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824806, 34.689819, 36.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900463, 34.760166, 36.895599>,  <39.945858, 34.802372, 37.127457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900463, 34.760166, 36.895599>,  <39.824806, 34.689819, 36.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900463, 34.760166, 36.895599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960585, -0.237246, -0.144880,
		0.203717, 0.955398, -0.213806,
		0.189143, 0.175865, 0.966073,
		39.957207, 34.812927, 37.185421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339550, 35.074566, 36.553722>,  <39.824806, 34.689819, 36.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339550, 35.074566, 36.553722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351337, 34.862000, 36.892361>,  <40.358410, 34.734459, 37.095543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351337, 34.862000, 36.892361>,  <40.339550, 35.074566, 36.553722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351337, 34.862000, 36.892361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993882, -0.074616, -0.081434,
		0.106445, 0.843816, 0.525969,
		0.029469, -0.531419, 0.846596,
		40.360180, 34.702576, 37.146339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928375, 35.383408, 36.911007>,  <40.339550, 35.074566, 36.553722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928375, 35.383408, 36.911007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835705, 35.005383, 37.003254>,  <40.780102, 34.778568, 37.058601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835705, 35.005383, 37.003254>,  <40.928375, 35.383408, 36.911007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835705, 35.005383, 37.003254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927181, -0.286258, -0.241644,
		0.294385, 0.157839, 0.942563,
		-0.231675, -0.945062, 0.230616,
		40.766201, 34.721863, 37.072437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532497, 35.150021, 37.385372>,  <40.928375, 35.383408, 36.911007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532497, 35.150021, 37.385372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461487, 35.542301, 37.418144>,  <41.418880, 35.777668, 37.437809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461487, 35.542301, 37.418144>,  <41.532497, 35.150021, 37.385372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461487, 35.542301, 37.418144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652367, -0.179601, 0.736315,
		0.736820, 0.077264, 0.671660,
		-0.177522, 0.980701, 0.081929,
		41.408230, 35.836510, 37.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031612, 35.302063, 37.926651>,  <41.532497, 35.150021, 37.385372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031612, 35.302063, 37.926651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406349, 35.218861, 37.814175>,  <42.631191, 35.168938, 37.746689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406349, 35.218861, 37.814175>,  <42.031612, 35.302063, 37.926651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406349, 35.218861, 37.814175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242548, 0.192871, -0.950774,
		0.251999, 0.958923, 0.130238,
		0.936839, -0.208005, -0.281188,
		42.687401, 35.156460, 37.729816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220848, 35.824711, 37.387611>,  <42.031612, 35.302063, 37.926651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220848, 35.824711, 37.387611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446373, 35.499111, 37.331707>,  <42.581688, 35.303753, 37.298164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446373, 35.499111, 37.331707>,  <42.220848, 35.824711, 37.387611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446373, 35.499111, 37.331707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099145, 0.101293, -0.989904,
		0.819934, 0.571972, -0.023594,
		0.563808, -0.813995, -0.139761,
		42.615517, 35.254913, 37.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665981, 35.984341, 36.947704>,  <42.220848, 35.824711, 37.387611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665981, 35.984341, 36.947704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664402, 35.587231, 36.899734>,  <42.663456, 35.348965, 36.870953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.664402, 35.587231, 36.899734>,  <42.665981, 35.984341, 36.947704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664402, 35.587231, 36.899734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161962, 0.118978, -0.979598,
		0.986789, 0.015558, -0.161261,
		-0.003946, -0.992775, -0.119926,
		42.663219, 35.289398, 36.863758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837391, 35.897682, 36.309978>,  <42.665981, 35.984341, 36.947704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837391, 35.897682, 36.309978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728321, 35.519848, 36.383087>,  <42.662880, 35.293148, 36.426952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.728321, 35.519848, 36.383087>,  <42.837391, 35.897682, 36.309978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728321, 35.519848, 36.383087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386986, -0.066242, -0.919703,
		0.880847, -0.321508, -0.347479,
		-0.272674, -0.944587, 0.182769,
		42.646519, 35.236473, 36.437920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155415, 35.425999, 35.873466>,  <42.837391, 35.897682, 36.309978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155415, 35.425999, 35.873466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813580, 35.250149, 35.984032>,  <42.608479, 35.144638, 36.050369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.813580, 35.250149, 35.984032>,  <43.155415, 35.425999, 35.873466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.813580, 35.250149, 35.984032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251277, -0.115736, -0.960971,
		0.454461, -0.890692, -0.011562,
		-0.854590, -0.439629, 0.276408,
		42.557201, 35.118259, 36.066956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965698, 34.884708, 35.475300>,  <43.155415, 35.425999, 35.873466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965698, 34.884708, 35.475300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598415, 34.946198, 35.621319>,  <42.378044, 34.983093, 35.708931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598415, 34.946198, 35.621319>,  <42.965698, 34.884708, 35.475300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598415, 34.946198, 35.621319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389083, -0.177391, -0.903962,
		-0.074206, -0.972060, 0.222695,
		-0.918209, 0.153726, 0.365048,
		42.322952, 34.992317, 35.730835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630219, 34.462814, 35.156425>,  <42.965698, 34.884708, 35.475300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630219, 34.462814, 35.156425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290833, 34.632393, 35.283154>,  <42.087200, 34.734138, 35.359188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290833, 34.632393, 35.283154>,  <42.630219, 34.462814, 35.156425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290833, 34.632393, 35.283154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388686, -0.092865, -0.916678,
		-0.359203, -0.900913, 0.243575,
		-0.848467, 0.423948, 0.316815,
		42.036293, 34.759579, 35.378197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055641, 34.014591, 34.928185>,  <42.630219, 34.462814, 35.156425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055641, 34.014591, 34.928185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921448, 34.386772, 34.987122>,  <41.840931, 34.610081, 35.022484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921448, 34.386772, 34.987122>,  <42.055641, 34.014591, 34.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921448, 34.386772, 34.987122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510153, -0.047950, -0.858746,
		-0.791958, -0.363260, 0.490760,
		-0.335480, 0.930453, 0.147343,
		41.820805, 34.665909, 35.031326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309116, 33.985359, 34.788834>,  <42.055641, 34.014591, 34.928185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309116, 33.985359, 34.788834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436485, 34.363316, 34.758377>,  <41.512905, 34.590088, 34.740101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436485, 34.363316, 34.758377>,  <41.309116, 33.985359, 34.788834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436485, 34.363316, 34.758377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469408, 0.087381, -0.878647,
		-0.823568, 0.315521, 0.471361,
		0.318420, 0.944887, -0.076144,
		41.532013, 34.646782, 34.735535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698830, 34.388115, 34.660542>,  <41.309116, 33.985359, 34.788834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698830, 34.388115, 34.660542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009735, 34.598907, 34.523052>,  <41.196278, 34.725384, 34.440559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.009735, 34.598907, 34.523052>,  <40.698830, 34.388115, 34.660542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.009735, 34.598907, 34.523052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515502, 0.220194, -0.828114,
		-0.360713, 0.820857, 0.442809,
		0.777267, 0.526981, -0.343726,
		41.242916, 34.757000, 34.419933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426193, 34.964931, 34.431030>,  <40.698830, 34.388115, 34.660542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426193, 34.964931, 34.431030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779308, 34.965847, 34.243122>,  <40.991177, 34.966396, 34.130375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779308, 34.965847, 34.243122>,  <40.426193, 34.964931, 34.431030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779308, 34.965847, 34.243122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456284, 0.242137, -0.856256,
		0.111791, 0.970239, 0.214798,
		0.882784, 0.002288, -0.469773,
		41.044144, 34.966534, 34.102192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596249, 35.643143, 34.183933>,  <40.426193, 34.964931, 34.431030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596249, 35.643143, 34.183933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789394, 35.377357, 33.955780>,  <40.905281, 35.217888, 33.818890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789394, 35.377357, 33.955780>,  <40.596249, 35.643143, 34.183933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789394, 35.377357, 33.955780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258462, 0.514190, -0.817806,
		0.836684, 0.542311, 0.076546,
		0.482864, -0.664461, -0.570381,
		40.934254, 35.178020, 33.784664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472412, 35.996407, 33.589806>,  <40.596249, 35.643143, 34.183933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472412, 35.996407, 33.589806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651947, 35.663551, 33.459515>,  <40.759666, 35.463837, 33.381340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651947, 35.663551, 33.459515>,  <40.472412, 35.996407, 33.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651947, 35.663551, 33.459515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267901, 0.222437, -0.937417,
		0.852513, 0.508006, -0.123093,
		0.448833, -0.832136, -0.325726,
		40.786598, 35.413910, 33.361797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866821, 36.146511, 33.046177>,  <40.472412, 35.996407, 33.589806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866821, 36.146511, 33.046177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808590, 35.753567, 32.999222>,  <40.773651, 35.517799, 32.971050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808590, 35.753567, 32.999222>,  <40.866821, 36.146511, 33.046177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808590, 35.753567, 32.999222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145219, 0.138582, -0.979646,
		0.978631, -0.125567, -0.162831,
		-0.145577, -0.982359, -0.117386,
		40.764915, 35.458858, 32.964005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220493, 36.060497, 32.505424>,  <40.866821, 36.146511, 33.046177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220493, 36.060497, 32.505424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944305, 35.772678, 32.535069>,  <40.778591, 35.599987, 32.552856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944305, 35.772678, 32.535069>,  <41.220493, 36.060497, 32.505424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944305, 35.772678, 32.535069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255552, 0.146802, -0.955585,
		0.676714, -0.678744, -0.285245,
		-0.690472, -0.719553, 0.074112,
		40.737164, 35.556812, 32.557301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296329, 35.696358, 31.935095>,  <41.220493, 36.060497, 32.505424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296329, 35.696358, 31.935095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921551, 35.610081, 32.045078>,  <40.696682, 35.558315, 32.111069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921551, 35.610081, 32.045078>,  <41.296329, 35.696358, 31.935095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921551, 35.610081, 32.045078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319195, 0.207885, -0.924607,
		0.142267, -0.954076, -0.263625,
		-0.936949, -0.215689, 0.274962,
		40.640465, 35.545372, 32.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085320, 35.351845, 31.373789>,  <41.296329, 35.696358, 31.935095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085320, 35.351845, 31.373789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770428, 35.479473, 31.584867>,  <40.581493, 35.556049, 31.711515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770428, 35.479473, 31.584867>,  <41.085320, 35.351845, 31.373789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770428, 35.479473, 31.584867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409935, 0.368501, -0.834363,
		-0.460681, -0.873154, -0.159294,
		-0.787228, 0.319074, 0.527698,
		40.534260, 35.575195, 31.743177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479156, 35.112896, 31.001930>,  <41.085320, 35.351845, 31.373789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479156, 35.112896, 31.001930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340137, 35.413891, 31.225706>,  <40.256725, 35.594486, 31.359972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340137, 35.413891, 31.225706>,  <40.479156, 35.112896, 31.001930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340137, 35.413891, 31.225706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266058, 0.492970, -0.828368,
		-0.899123, -0.436742, 0.028874,
		-0.347549, 0.752486, 0.559440,
		40.235874, 35.639637, 31.393538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707600, 35.127392, 30.887768>,  <40.479156, 35.112896, 31.001930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707600, 35.127392, 30.887768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818989, 35.493919, 31.002878>,  <39.885822, 35.713837, 31.071945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818989, 35.493919, 31.002878>,  <39.707600, 35.127392, 30.887768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818989, 35.493919, 31.002878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604909, 0.400060, -0.688504,
		-0.746017, 0.017649, 0.665694,
		0.278469, 0.916319, 0.287775,
		39.902531, 35.768814, 31.089211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158184, 35.536934, 30.857412>,  <39.707600, 35.127392, 30.887768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158184, 35.536934, 30.857412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424290, 35.832424, 30.900692>,  <39.583954, 36.009720, 30.926659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424290, 35.832424, 30.900692>,  <39.158184, 35.536934, 30.857412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424290, 35.832424, 30.900692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403531, 0.477695, -0.780365,
		-0.628164, 0.475486, 0.615892,
		0.665261, 0.738729, 0.108198,
		39.623867, 36.054043, 30.933151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867836, 36.249275, 30.967342>,  <39.158184, 35.536934, 30.857412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867836, 36.249275, 30.967342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207222, 36.237427, 30.755974>,  <39.410854, 36.230320, 30.629152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207222, 36.237427, 30.755974>,  <38.867836, 36.249275, 30.967342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207222, 36.237427, 30.755974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486858, 0.347866, -0.801223,
		0.207552, 0.937076, 0.280732,
		0.848464, -0.029619, -0.528423,
		39.461761, 36.228542, 30.597446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121315, 36.910992, 30.691004>,  <38.867836, 36.249275, 30.967342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121315, 36.910992, 30.691004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186039, 36.588200, 30.463814>,  <39.224873, 36.394524, 30.327499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186039, 36.588200, 30.463814>,  <39.121315, 36.910992, 30.691004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186039, 36.588200, 30.463814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465851, 0.444925, -0.764869,
		0.869943, 0.388354, -0.303942,
		0.161809, -0.806984, -0.567974,
		39.234581, 36.346104, 30.293421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201488, 37.132580, 30.000088>,  <39.121315, 36.910992, 30.691004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201488, 37.132580, 30.000088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028942, 36.778667, 29.929565>,  <38.925415, 36.566319, 29.887253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028942, 36.778667, 29.929565>,  <39.201488, 37.132580, 30.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028942, 36.778667, 29.929565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351651, 0.344863, -0.870294,
		0.830822, -0.313417, -0.459897,
		-0.431366, -0.884782, -0.176306,
		38.899532, 36.513233, 29.876673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356544, 36.693260, 29.287125>,  <39.201488, 37.132580, 30.000088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356544, 36.693260, 29.287125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983887, 36.669498, 29.430521>,  <38.760292, 36.655239, 29.516560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983887, 36.669498, 29.430521>,  <39.356544, 36.693260, 29.287125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983887, 36.669498, 29.430521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323899, 0.582979, -0.745135,
		-0.164728, -0.810313, -0.562368,
		-0.931641, -0.059406, 0.358492,
		38.704395, 36.651676, 29.538069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614807, 36.027870, 29.631020>,  <39.356544, 36.693260, 29.287125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614807, 36.027870, 29.631020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986816, 36.126373, 29.521900>,  <40.210022, 36.185474, 29.456429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986816, 36.126373, 29.521900>,  <39.614807, 36.027870, 29.631020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986816, 36.126373, 29.521900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010515, 0.759820, 0.650048,
		0.367355, -0.601690, 0.709239,
		0.930021, 0.246256, -0.272797,
		40.265823, 36.200249, 29.440062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944984, 35.769741, 28.886631>,  <39.614807, 36.027870, 29.631020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944984, 35.769741, 28.886631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175335, 35.781227, 28.559818>,  <40.313545, 35.788116, 28.363729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175335, 35.781227, 28.559818>,  <39.944984, 35.769741, 28.886631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175335, 35.781227, 28.559818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082472, -0.992245, -0.092998,
		-0.813367, 0.120938, -0.569042,
		0.575876, 0.028711, -0.817033,
		40.348099, 35.789841, 28.314709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717995, 35.649448, 28.267105>,  <39.944984, 35.769741, 28.886631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717995, 35.649448, 28.267105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676201, 35.346321, 28.009485>,  <39.651127, 35.164444, 27.854914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676201, 35.346321, 28.009485>,  <39.717995, 35.649448, 28.267105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676201, 35.346321, 28.009485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444316, -0.543805, 0.711940,
		-0.889757, 0.360546, -0.279892,
		-0.104480, -0.757814, -0.644051,
		39.644855, 35.118977, 27.816271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139523, 35.016880, 28.404558>,  <39.717995, 35.649448, 28.267105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139523, 35.016880, 28.404558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078373, 34.688313, 28.184774>,  <40.041683, 34.491173, 28.052904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078373, 34.688313, 28.184774>,  <40.139523, 35.016880, 28.404558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078373, 34.688313, 28.184774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291096, 0.568757, -0.769272,
		0.944400, 0.042341, -0.326061,
		-0.152877, -0.821415, -0.549460,
		40.032509, 34.441887, 28.019938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602688, 35.040764, 27.796116>,  <40.139523, 35.016880, 28.404558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602688, 35.040764, 27.796116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256512, 34.842514, 27.766806>,  <40.048805, 34.723564, 27.749220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256512, 34.842514, 27.766806>,  <40.602688, 35.040764, 27.796116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256512, 34.842514, 27.766806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322911, 0.663625, -0.674782,
		0.383062, -0.560324, -0.734371,
		-0.865443, -0.495620, -0.073275,
		39.996880, 34.693829, 27.744823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048828, 34.590294, 28.129059>,  <40.602688, 35.040764, 27.796116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048828, 34.590294, 28.129059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068947, 34.659473, 28.522516>,  <41.081017, 34.700981, 28.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068947, 34.659473, 28.522516>,  <41.048828, 34.590294, 28.129059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068947, 34.659473, 28.522516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487789, -0.855178, 0.175305,
		0.871512, -0.488628, 0.041355,
		0.050293, 0.172953, 0.983645,
		41.084034, 34.711361, 28.817610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366093, 34.039177, 28.561047>,  <41.048828, 34.590294, 28.129059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366093, 34.039177, 28.561047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054394, 34.243034, 28.706945>,  <40.867374, 34.365349, 28.794485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054394, 34.243034, 28.706945>,  <41.366093, 34.039177, 28.561047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054394, 34.243034, 28.706945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550009, -0.835119, -0.008171,
		0.300444, -0.206982, 0.931070,
		-0.779246, 0.509642, 0.364748,
		40.820621, 34.395927, 28.816370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740795, 34.685268, 28.581261>,  <41.366093, 34.039177, 28.561047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740795, 34.685268, 28.581261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523716, 34.462029, 28.832338>,  <41.393467, 34.328083, 28.982985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523716, 34.462029, 28.832338>,  <41.740795, 34.685268, 28.581261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523716, 34.462029, 28.832338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620125, 0.237802, 0.747593,
		-0.566500, 0.794966, 0.217038,
		-0.542699, -0.558103, 0.627694,
		41.360905, 34.294598, 29.020647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629578, 35.104137, 29.244127>,  <41.740795, 34.685268, 28.581261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629578, 35.104137, 29.244127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595001, 34.716293, 29.335676>,  <41.574257, 34.483585, 29.390606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595001, 34.716293, 29.335676>,  <41.629578, 35.104137, 29.244127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595001, 34.716293, 29.335676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596140, 0.133723, 0.791666,
		-0.798214, 0.204869, 0.566465,
		-0.086438, -0.969612, 0.228870,
		41.569069, 34.425411, 29.404337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567463, 35.125324, 29.900705>,  <41.629578, 35.104137, 29.244127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567463, 35.125324, 29.900705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685383, 34.748688, 29.835596>,  <41.756134, 34.522705, 29.796530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685383, 34.748688, 29.835596>,  <41.567463, 35.125324, 29.900705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685383, 34.748688, 29.835596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589413, 0.045107, 0.806571,
		-0.752119, -0.333722, 0.568284,
		0.294804, -0.941592, -0.162774,
		41.773823, 34.466209, 29.786764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415833, 34.765266, 30.452423>,  <41.567463, 35.125324, 29.900705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415833, 34.765266, 30.452423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712044, 34.559853, 30.279036>,  <41.889771, 34.436604, 30.175003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712044, 34.559853, 30.279036>,  <41.415833, 34.765266, 30.452423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712044, 34.559853, 30.279036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449843, -0.100401, 0.887446,
		-0.499259, -0.852172, 0.156663,
		0.740528, -0.513539, -0.433470,
		41.934200, 34.405792, 30.148994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484863, 34.255215, 30.837299>,  <41.415833, 34.765266, 30.452423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484863, 34.255215, 30.837299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845417, 34.278122, 30.665615>,  <42.061749, 34.291866, 30.562605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845417, 34.278122, 30.665615>,  <41.484863, 34.255215, 30.837299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845417, 34.278122, 30.665615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430201, -0.231233, 0.872616,
		-0.049277, -0.971211, -0.233066,
		0.901387, 0.057265, -0.429210,
		42.115833, 34.295300, 30.536852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819824, 33.707787, 31.038691>,  <41.484863, 34.255215, 30.837299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819824, 33.707787, 31.038691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141575, 33.911850, 30.916895>,  <42.334625, 34.034290, 30.843819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.141575, 33.911850, 30.916895>,  <41.819824, 33.707787, 31.038691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.141575, 33.911850, 30.916895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482602, -0.262147, 0.835688,
		0.346515, -0.819155, -0.457070,
		0.804377, 0.510161, -0.304488,
		42.382889, 34.064899, 30.825548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360355, 33.314209, 31.184044>,  <41.819824, 33.707787, 31.038691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360355, 33.314209, 31.184044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532276, 33.672737, 31.140446>,  <42.635429, 33.887856, 31.114286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532276, 33.672737, 31.140446>,  <42.360355, 33.314209, 31.184044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532276, 33.672737, 31.140446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437926, -0.101370, 0.893278,
		0.789614, -0.431665, -0.436091,
		0.429803, 0.896320, -0.108994,
		42.661217, 33.941631, 31.107748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076389, 33.234478, 31.340391>,  <42.360355, 33.314209, 31.184044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076389, 33.234478, 31.340391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031357, 33.630924, 31.368729>,  <43.004337, 33.868793, 31.385731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.031357, 33.630924, 31.368729>,  <43.076389, 33.234478, 31.340391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031357, 33.630924, 31.368729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561439, 0.004624, 0.827506,
		0.819825, 0.132933, -0.556970,
		-0.112578, 0.991114, 0.070843,
		42.997581, 33.928257, 31.389982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749798, 33.508980, 31.416327>,  <43.076389, 33.234478, 31.340391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749798, 33.508980, 31.416327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511559, 33.805279, 31.540625>,  <43.368614, 33.983059, 31.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511559, 33.805279, 31.540625>,  <43.749798, 33.508980, 31.416327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511559, 33.805279, 31.540625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621146, 0.179397, 0.762885,
		0.509356, 0.647390, -0.566959,
		-0.595595, 0.740745, 0.310747,
		43.332878, 34.027504, 31.633848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180676, 34.118378, 31.695576>,  <43.749798, 33.508980, 31.416327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180676, 34.118378, 31.695576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833035, 34.241585, 31.850384>,  <43.624451, 34.315510, 31.943268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833035, 34.241585, 31.850384>,  <44.180676, 34.118378, 31.695576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833035, 34.241585, 31.850384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477128, 0.315765, 0.820147,
		0.130414, 0.897450, -0.421398,
		-0.869103, 0.308020, 0.387018,
		43.572304, 34.333992, 31.966490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.335430, 34.820786, 31.977602>,  <44.180676, 34.118378, 31.695576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.335430, 34.820786, 31.977602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028309, 34.655853, 32.173752>,  <43.844036, 34.556896, 32.291443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028309, 34.655853, 32.173752>,  <44.335430, 34.820786, 31.977602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028309, 34.655853, 32.173752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378181, 0.326146, 0.866377,
		-0.517163, 0.850656, -0.094482,
		-0.767803, -0.412326, 0.490372,
		43.797966, 34.532154, 32.320862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134487, 35.368500, 32.446396>,  <44.335430, 34.820786, 31.977602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134487, 35.368500, 32.446396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952572, 35.046860, 32.599545>,  <43.843422, 34.853878, 32.691433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952572, 35.046860, 32.599545>,  <44.134487, 35.368500, 32.446396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952572, 35.046860, 32.599545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130922, 0.364874, 0.921806,
		-0.880923, 0.469356, -0.060667,
		-0.454791, -0.804097, 0.382875,
		43.816135, 34.805630, 32.714405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633068, 35.673424, 32.853420>,  <44.134487, 35.368500, 32.446396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633068, 35.673424, 32.853420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734051, 35.300846, 32.958244>,  <43.794640, 35.077301, 33.021137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734051, 35.300846, 32.958244>,  <43.633068, 35.673424, 32.853420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734051, 35.300846, 32.958244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019048, 0.275563, 0.961094,
		-0.967420, -0.237645, 0.087311,
		0.252459, -0.931445, 0.262058,
		43.809788, 35.021412, 33.036861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333691, 35.574711, 33.488529>,  <43.633068, 35.673424, 32.853420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333691, 35.574711, 33.488529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603565, 35.279480, 33.490868>,  <43.765491, 35.102341, 33.492271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603565, 35.279480, 33.490868>,  <43.333691, 35.574711, 33.488529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603565, 35.279480, 33.490868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197585, 0.188238, 0.962043,
		-0.711166, -0.647922, 0.272836,
		0.674687, -0.738081, 0.005849,
		43.805973, 35.058056, 33.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272892, 35.225773, 34.120056>,  <43.333691, 35.574711, 33.488529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272892, 35.225773, 34.120056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647392, 35.109783, 34.040703>,  <43.872093, 35.040192, 33.993092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647392, 35.109783, 34.040703>,  <43.272892, 35.225773, 34.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647392, 35.109783, 34.040703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233665, 0.092255, 0.967931,
		-0.262370, -0.952578, 0.154130,
		0.936249, -0.289971, -0.198379,
		43.928268, 35.022793, 33.981190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427010, 34.731754, 34.654163>,  <43.272892, 35.225773, 34.120056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427010, 34.731754, 34.654163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799599, 34.804127, 34.527912>,  <44.023151, 34.847549, 34.452160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.799599, 34.804127, 34.527912>,  <43.427010, 34.731754, 34.654163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.799599, 34.804127, 34.527912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297666, 0.119778, 0.947126,
		0.209170, -0.976175, 0.057713,
		0.931473, 0.180931, -0.315628,
		44.079041, 34.858406, 34.433224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842781, 34.276245, 34.987217>,  <43.427010, 34.731754, 34.654163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842781, 34.276245, 34.987217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100868, 34.566898, 34.892811>,  <44.255718, 34.741291, 34.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100868, 34.566898, 34.892811>,  <43.842781, 34.276245, 34.987217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100868, 34.566898, 34.892811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416669, -0.075744, 0.905897,
		0.640380, -0.682835, -0.351638,
		0.645213, 0.726635, -0.236011,
		44.294434, 34.784889, 34.822006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417255, 34.008339, 35.321651>,  <43.842781, 34.276245, 34.987217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417255, 34.008339, 35.321651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475330, 34.396461, 35.244263>,  <44.510178, 34.629333, 35.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475330, 34.396461, 35.244263>,  <44.417255, 34.008339, 35.321651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475330, 34.396461, 35.244263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493189, 0.098541, 0.864323,
		0.857720, -0.220911, -0.464236,
		0.145192, 0.970303, -0.193471,
		44.518887, 34.687553, 35.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991528, 34.060341, 35.655666>,  <44.417255, 34.008339, 35.321651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991528, 34.060341, 35.655666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863125, 34.439129, 35.649994>,  <44.786083, 34.666401, 35.646591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863125, 34.439129, 35.649994>,  <44.991528, 34.060341, 35.655666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863125, 34.439129, 35.649994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496715, 0.181088, 0.848812,
		0.806366, 0.265436, -0.528505,
		-0.321011, 0.946969, -0.014177,
		44.766823, 34.723221, 35.645741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635387, 34.578259, 35.730762>,  <44.991528, 34.060341, 35.655666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635387, 34.578259, 35.730762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298359, 34.761635, 35.843834>,  <45.096142, 34.871662, 35.911678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.298359, 34.761635, 35.843834>,  <45.635387, 34.578259, 35.730762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298359, 34.761635, 35.843834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441392, 0.287006, 0.850177,
		0.308628, 0.841104, -0.444176,
		-0.842568, 0.458444, 0.282679,
		45.045589, 34.899170, 35.928638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761456, 35.358646, 35.868404>,  <45.635387, 34.578259, 35.730762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761456, 35.358646, 35.868404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463642, 35.194126, 36.078739>,  <45.284954, 35.095413, 36.204941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463642, 35.194126, 36.078739>,  <45.761456, 35.358646, 35.868404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463642, 35.194126, 36.078739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450624, 0.271526, 0.850418,
		-0.492559, 0.870117, -0.016816,
		-0.744529, -0.411303, 0.525838,
		45.240284, 35.070736, 36.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302032, 35.797729, 35.519840>,  <45.761456, 35.358646, 35.868404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302032, 35.797729, 35.519840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442657, 36.104176, 35.304630>,  <46.527031, 36.288044, 35.175503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.442657, 36.104176, 35.304630>,  <46.302032, 35.797729, 35.519840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442657, 36.104176, 35.304630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486920, 0.341220, 0.804039,
		0.799571, -0.544646, -0.253076,
		0.351562, 0.766113, -0.538029,
		46.548126, 36.334011, 35.143223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110199, 35.854572, 35.523811>,  <46.302032, 35.797729, 35.519840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110199, 35.854572, 35.523811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926365, 36.209824, 35.522919>,  <46.816063, 36.422974, 35.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926365, 36.209824, 35.522919>,  <47.110199, 35.854572, 35.523811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926365, 36.209824, 35.522919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661615, 0.344042, 0.666259,
		0.592491, 0.304730, -0.745717,
		-0.459587, 0.888130, -0.002228,
		46.788490, 36.476261, 35.522251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433315, 35.721645, 34.865082>,  <47.110199, 35.854572, 35.523811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433315, 35.721645, 34.865082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778893, 35.539330, 34.950733>,  <47.986240, 35.429939, 35.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778893, 35.539330, 34.950733>,  <47.433315, 35.721645, 34.865082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778893, 35.539330, 34.950733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500082, -0.726453, 0.471364,
		-0.059285, -0.514317, -0.855549,
		0.863946, -0.455790, 0.214133,
		48.038074, 35.402592, 35.014973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.476021, 35.020035, 34.575752>,  <47.433315, 35.721645, 34.865082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.476021, 35.020035, 34.575752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649727, 35.037495, 34.935642>,  <47.753948, 35.047970, 35.151577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649727, 35.037495, 34.935642>,  <47.476021, 35.020035, 34.575752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649727, 35.037495, 34.935642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569913, -0.760186, 0.311954,
		0.697578, -0.648237, -0.305244,
		0.434263, 0.043650, 0.899728,
		47.780006, 35.050591, 35.205559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.927864, 37.305889, 45.486080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555313, 37.160328, 45.490341>,  <30.331783, 37.072990, 45.492897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555313, 37.160328, 45.490341>,  <30.927864, 37.305889, 45.486080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555313, 37.160328, 45.490341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042024, 0.078392, -0.996037,
		0.361623, -0.928133, -0.088305,
		-0.931377, -0.363901, 0.010656,
		30.275900, 37.051159, 45.493538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784866, 36.868000, 44.799767>,  <30.927864, 37.305889, 45.486080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784866, 36.868000, 44.799767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.417307, 36.974834, 44.915897>,  <30.196772, 37.038937, 44.985577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.417307, 36.974834, 44.915897>,  <30.784866, 36.868000, 44.799767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417307, 36.974834, 44.915897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226336, 0.245825, -0.942519,
		-0.323106, -0.931791, -0.165436,
		-0.918899, 0.267089, 0.290326,
		30.141638, 37.054962, 45.002995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361589, 36.482841, 44.467098>,  <30.784866, 36.868000, 44.799767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361589, 36.482841, 44.467098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170218, 36.816814, 44.575897>,  <30.055393, 37.017200, 44.641178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170218, 36.816814, 44.575897>,  <30.361589, 36.482841, 44.467098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170218, 36.816814, 44.575897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150808, 0.227026, -0.962141,
		-0.865078, -0.501338, 0.017299,
		-0.478431, 0.834936, 0.272002,
		30.026688, 37.067295, 44.657497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666140, 36.451073, 44.178696>,  <30.361589, 36.482841, 44.467098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666140, 36.451073, 44.178696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733868, 36.834972, 44.268326>,  <29.774504, 37.065311, 44.322105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.733868, 36.834972, 44.268326>,  <29.666140, 36.451073, 44.178696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733868, 36.834972, 44.268326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170135, 0.252408, -0.952546,
		-0.970766, 0.123161, 0.206024,
		0.169318, 0.959751, 0.224075,
		29.784662, 37.122898, 44.335548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118179, 36.808842, 43.809654>,  <29.666140, 36.451073, 44.178696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118179, 36.808842, 43.809654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.376789, 37.101749, 43.895245>,  <29.531956, 37.277493, 43.946598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.376789, 37.101749, 43.895245>,  <29.118179, 36.808842, 43.809654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376789, 37.101749, 43.895245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181378, 0.419980, -0.889224,
		-0.741019, 0.536094, 0.404344,
		0.646524, 0.732271, 0.213977,
		29.570745, 37.321430, 43.959438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816341, 37.399055, 43.529911>,  <29.118179, 36.808842, 43.809654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816341, 37.399055, 43.529911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207312, 37.483166, 43.538185>,  <29.441893, 37.533630, 43.543148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207312, 37.483166, 43.538185>,  <28.816341, 37.399055, 43.529911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207312, 37.483166, 43.538185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046952, 0.311618, -0.949047,
		-0.206005, 0.926650, 0.314456,
		0.977424, 0.210273, 0.020687,
		29.500538, 37.546249, 43.544392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903357, 38.094597, 43.138420>,  <28.816341, 37.399055, 43.529911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903357, 38.094597, 43.138420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268553, 37.934555, 43.170345>,  <29.487671, 37.838531, 43.189499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268553, 37.934555, 43.170345>,  <28.903357, 38.094597, 43.138420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268553, 37.934555, 43.170345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146280, 0.138405, -0.979513,
		0.380860, 0.905959, 0.184889,
		0.912988, -0.400103, 0.079811,
		29.542450, 37.814526, 43.194290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274603, 38.475151, 42.650639>,  <28.903357, 38.094597, 43.138420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274603, 38.475151, 42.650639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510588, 38.153709, 42.682053>,  <29.652178, 37.960846, 42.700901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.510588, 38.153709, 42.682053>,  <29.274603, 38.475151, 42.650639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510588, 38.153709, 42.682053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240807, 0.082274, -0.967080,
		0.770687, 0.589452, 0.242051,
		0.589961, -0.803603, 0.078537,
		29.687576, 37.912628, 42.705612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944193, 38.735256, 42.356735>,  <29.274603, 38.475151, 42.650639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944193, 38.735256, 42.356735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.893677, 38.338474, 42.353275>,  <29.863367, 38.100407, 42.351200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.893677, 38.338474, 42.353275>,  <29.944193, 38.735256, 42.356735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893677, 38.338474, 42.353275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313439, -0.031627, -0.949081,
		0.941173, -0.122572, 0.314912,
		-0.126291, -0.991955, -0.008653,
		29.855789, 38.040886, 42.350681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567739, 38.475502, 42.031746>,  <29.944193, 38.735256, 42.356735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567739, 38.475502, 42.031746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309374, 38.172779, 41.991661>,  <30.154354, 37.991146, 41.967609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.309374, 38.172779, 41.991661>,  <30.567739, 38.475502, 42.031746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309374, 38.172779, 41.991661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200564, -0.041564, -0.978799,
		0.736592, -0.652320, 0.178634,
		-0.645915, -0.756803, -0.100216,
		30.115599, 37.945740, 41.961597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849195, 37.946846, 41.615089>,  <30.567739, 38.475502, 42.031746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849195, 37.946846, 41.615089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.459557, 37.862408, 41.582653>,  <30.225773, 37.811745, 41.563190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.459557, 37.862408, 41.582653>,  <30.849195, 37.946846, 41.615089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459557, 37.862408, 41.582653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116053, -0.158894, -0.980451,
		0.194084, -0.964464, 0.179276,
		-0.974096, -0.211096, -0.081091,
		30.167328, 37.799080, 41.558327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743063, 37.223190, 41.372334>,  <30.849195, 37.946846, 41.615089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743063, 37.223190, 41.372334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.419882, 37.437935, 41.275177>,  <30.225973, 37.566780, 41.216881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.419882, 37.437935, 41.275177>,  <30.743063, 37.223190, 41.372334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419882, 37.437935, 41.275177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129812, -0.239918, -0.962075,
		-0.574774, -0.808840, 0.124151,
		-0.807951, 0.536859, -0.242896,
		30.177496, 37.598991, 41.202309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467789, 36.819202, 40.915134>,  <30.743063, 37.223190, 41.372334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467789, 36.819202, 40.915134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 37.172096, 40.837669>,  <30.193136, 37.383831, 40.791191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.296131, 37.172096, 40.837669>,  <30.467789, 36.819202, 40.915134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296131, 37.172096, 40.837669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305814, -0.059826, -0.950210,
		-0.849891, -0.466999, -0.244125,
		-0.429142, 0.882232, -0.193660,
		30.167389, 37.436768, 40.779572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213362, 36.678246, 40.329453>,  <30.467789, 36.819202, 40.915134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213362, 36.678246, 40.329453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246180, 37.076099, 40.354671>,  <30.265869, 37.314812, 40.369801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.246180, 37.076099, 40.354671>,  <30.213362, 36.678246, 40.329453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246180, 37.076099, 40.354671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504726, 0.013079, -0.863181,
		-0.859372, 0.102638, -0.500944,
		0.082043, 0.994633, 0.063043,
		30.270792, 37.374489, 40.373585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101908, 36.871464, 39.718761>,  <30.213362, 36.678246, 40.329453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101908, 36.871464, 39.718761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.285933, 37.195126, 39.864975>,  <30.396347, 37.389324, 39.952702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.285933, 37.195126, 39.864975>,  <30.101908, 36.871464, 39.718761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285933, 37.195126, 39.864975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530809, 0.079368, -0.843767,
		-0.711749, 0.582212, -0.392992,
		0.460060, 0.809154, 0.365533,
		30.423950, 37.437870, 39.974636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167913, 37.242363, 39.201466>,  <30.101908, 36.871464, 39.718761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167913, 37.242363, 39.201466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.430689, 37.370350, 39.474541>,  <30.588354, 37.447140, 39.638386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.430689, 37.370350, 39.474541>,  <30.167913, 37.242363, 39.201466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430689, 37.370350, 39.474541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738359, -0.089862, -0.668394,
		-0.152515, 0.943158, -0.295282,
		0.656936, 0.319964, 0.682684,
		30.627769, 37.466339, 39.679344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488041, 37.816525, 38.848080>,  <30.167913, 37.242363, 39.201466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488041, 37.816525, 38.848080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.738937, 37.724159, 39.145603>,  <30.889475, 37.668739, 39.324116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.738937, 37.724159, 39.145603>,  <30.488041, 37.816525, 38.848080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738937, 37.724159, 39.145603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757159, -0.042902, -0.651821,
		0.182422, 0.972029, 0.147925,
		0.627242, -0.230909, 0.743806,
		30.927111, 37.654888, 39.368744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045963, 38.299469, 38.787033>,  <30.488041, 37.816525, 38.848080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045963, 38.299469, 38.787033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.182186, 37.985146, 38.993538>,  <31.263920, 37.796551, 39.117439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.182186, 37.985146, 38.993538>,  <31.045963, 38.299469, 38.787033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182186, 37.985146, 38.993538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784001, -0.065758, -0.617267,
		0.519002, 0.614963, 0.593681,
		0.340557, -0.785809, 0.516260,
		31.284353, 37.749401, 39.148415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690599, 38.466675, 38.942616>,  <31.045963, 38.299469, 38.787033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690599, 38.466675, 38.942616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669891, 38.067680, 38.961994>,  <31.657467, 37.828285, 38.973621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.669891, 38.067680, 38.961994>,  <31.690599, 38.466675, 38.942616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669891, 38.067680, 38.961994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748923, -0.070865, -0.658857,
		0.660632, 0.002172, 0.750707,
		-0.051768, -0.997483, 0.048442,
		31.654362, 37.768436, 38.976528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364128, 38.272362, 38.956001>,  <31.690599, 38.466675, 38.942616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364128, 38.272362, 38.956001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187229, 37.941322, 38.817734>,  <32.081089, 37.742699, 38.734772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.187229, 37.941322, 38.817734>,  <32.364128, 38.272362, 38.956001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187229, 37.941322, 38.817734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836830, -0.242088, -0.491030,
		0.322695, -0.506425, 0.799626,
		-0.442249, -0.827604, -0.345671,
		32.054554, 37.693043, 38.714031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836224, 37.825962, 38.948437>,  <32.364128, 38.272362, 38.956001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836224, 37.825962, 38.948437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.589535, 37.626480, 38.704815>,  <32.441521, 37.506790, 38.558643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.589535, 37.626480, 38.704815>,  <32.836224, 37.825962, 38.948437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589535, 37.626480, 38.704815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732579, -0.080485, -0.675907,
		0.288058, -0.863028, 0.414977,
		-0.616726, -0.498704, -0.609052,
		32.404518, 37.476868, 38.522099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199230, 37.223740, 38.779552>,  <32.836224, 37.825962, 38.948437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199230, 37.223740, 38.779552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.920300, 37.391430, 38.547009>,  <32.752941, 37.492043, 38.407482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.920300, 37.391430, 38.547009>,  <33.199230, 37.223740, 38.779552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920300, 37.391430, 38.547009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677041, 0.119031, -0.726255,
		-0.235263, -0.900046, -0.366836,
		-0.697328, 0.419224, -0.581364,
		32.711102, 37.517197, 38.372601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745083, 36.936695, 38.170223>,  <33.199230, 37.223740, 38.779552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745083, 36.936695, 38.170223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077278, 37.143250, 38.086666>,  <34.276596, 37.267181, 38.036533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.077278, 37.143250, 38.086666>,  <33.745083, 36.936695, 38.170223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077278, 37.143250, 38.086666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047363, 0.308183, 0.950147,
		0.555023, -0.798978, 0.231484,
		0.830486, 0.516390, -0.208890,
		34.326424, 37.298164, 38.023998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189552, 36.678898, 38.664127>,  <33.745083, 36.936695, 38.170223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189552, 36.678898, 38.664127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297119, 37.042770, 38.537533>,  <34.361660, 37.261093, 38.461575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297119, 37.042770, 38.537533>,  <34.189552, 36.678898, 38.664127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297119, 37.042770, 38.537533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189344, 0.272251, 0.943413,
		0.944369, -0.313624, -0.099030,
		0.268916, 0.909681, -0.316488,
		34.377792, 37.315674, 38.442585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750484, 36.753326, 39.014179>,  <34.189552, 36.678898, 38.664127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750484, 36.753326, 39.014179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660282, 37.132523, 38.924320>,  <34.606159, 37.360039, 38.870403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.660282, 37.132523, 38.924320>,  <34.750484, 36.753326, 39.014179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660282, 37.132523, 38.924320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131804, 0.258152, 0.957071,
		0.965285, 0.186216, -0.183164,
		-0.225506, 0.947988, -0.224646,
		34.592632, 37.416920, 38.856926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112206, 37.177414, 39.506313>,  <34.750484, 36.753326, 39.014179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112206, 37.177414, 39.506313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884743, 37.465126, 39.346680>,  <34.748264, 37.637753, 39.250900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884743, 37.465126, 39.346680>,  <35.112206, 37.177414, 39.506313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884743, 37.465126, 39.346680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110870, 0.547755, 0.829260,
		0.815067, 0.427320, -0.391232,
		-0.568659, 0.719279, -0.399080,
		34.714146, 37.680908, 39.226955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373699, 37.815941, 39.711788>,  <35.112206, 37.177414, 39.506313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373699, 37.815941, 39.711788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984535, 37.850784, 39.626133>,  <34.751038, 37.871689, 39.574741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984535, 37.850784, 39.626133>,  <35.373699, 37.815941, 39.711788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984535, 37.850784, 39.626133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174332, 0.331882, 0.927072,
		0.151825, 0.939291, -0.307706,
		-0.972912, 0.087110, -0.214136,
		34.692661, 37.876919, 39.561893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226448, 38.382927, 40.096077>,  <35.373699, 37.815941, 39.711788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226448, 38.382927, 40.096077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884098, 38.195549, 40.008408>,  <34.678688, 38.083122, 39.955807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.884098, 38.195549, 40.008408>,  <35.226448, 38.382927, 40.096077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884098, 38.195549, 40.008408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269238, 0.041746, 0.962169,
		-0.441571, 0.882507, -0.161852,
		-0.855877, -0.468443, -0.219171,
		34.627335, 38.055016, 39.942657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838341, 38.638885, 40.600548>,  <35.226448, 38.382927, 40.096077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838341, 38.638885, 40.600548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622562, 38.332714, 40.460197>,  <34.493095, 38.149010, 40.375988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.622562, 38.332714, 40.460197>,  <34.838341, 38.638885, 40.600548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622562, 38.332714, 40.460197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389144, -0.142901, 0.910025,
		-0.746701, 0.627452, -0.220775,
		-0.539449, -0.765430, -0.350874,
		34.460728, 38.103085, 40.354935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192760, 38.710995, 40.958069>,  <34.838341, 38.638885, 40.600548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192760, 38.710995, 40.958069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230228, 38.339146, 40.815506>,  <34.252708, 38.116035, 40.729969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.230228, 38.339146, 40.815506>,  <34.192760, 38.710995, 40.958069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230228, 38.339146, 40.815506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187378, -0.368041, 0.910733,
		-0.977811, -0.018530, -0.208667,
		0.093674, -0.929625, -0.356403,
		34.258331, 38.060257, 40.708584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671398, 38.477901, 41.296913>,  <34.192760, 38.710995, 40.958069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671398, 38.477901, 41.296913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.867588, 38.149467, 41.180115>,  <33.985302, 37.952408, 41.110035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.867588, 38.149467, 41.180115>,  <33.671398, 38.477901, 41.296913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867588, 38.149467, 41.180115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141689, -0.405740, 0.902939,
		-0.859860, -0.401497, -0.315343,
		0.490475, -0.821082, -0.291992,
		34.014729, 37.903141, 41.092518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270905, 37.919281, 41.483540>,  <33.671398, 38.477901, 41.296913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270905, 37.919281, 41.483540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640476, 37.768414, 41.457928>,  <33.862221, 37.677895, 41.442562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640476, 37.768414, 41.457928>,  <33.270905, 37.919281, 41.483540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640476, 37.768414, 41.457928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139169, -0.487268, 0.862092,
		-0.356348, -0.787603, -0.502691,
		0.923931, -0.377163, -0.064027,
		33.917656, 37.655266, 41.438721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240044, 37.208771, 41.432755>,  <33.270905, 37.919281, 41.483540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240044, 37.208771, 41.432755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592758, 37.307663, 41.593418>,  <33.804386, 37.367001, 41.689816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592758, 37.307663, 41.593418>,  <33.240044, 37.208771, 41.432755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592758, 37.307663, 41.593418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301652, -0.359029, 0.883235,
		0.362573, -0.899985, -0.242007,
		0.881786, 0.247235, 0.401657,
		33.857292, 37.381832, 41.713917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361023, 36.554146, 41.825642>,  <33.240044, 37.208771, 41.432755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361023, 36.554146, 41.825642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622433, 36.827957, 41.954842>,  <33.779278, 36.992245, 42.032360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.622433, 36.827957, 41.954842>,  <33.361023, 36.554146, 41.825642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622433, 36.827957, 41.954842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107639, -0.338349, 0.934844,
		0.749210, -0.645713, -0.147438,
		0.653527, 0.684525, 0.322999,
		33.818489, 37.033314, 42.051743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876507, 36.243664, 42.262756>,  <33.361023, 36.554146, 41.825642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876507, 36.243664, 42.262756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880859, 36.627338, 42.375782>,  <33.883472, 36.857544, 42.443596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880859, 36.627338, 42.375782>,  <33.876507, 36.243664, 42.262756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880859, 36.627338, 42.375782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111247, -0.279662, 0.953632,
		0.993733, -0.041814, 0.103663,
		0.010885, 0.959188, 0.282561,
		33.884125, 36.915096, 42.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326828, 36.290642, 42.841934>,  <33.876507, 36.243664, 42.262756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326828, 36.290642, 42.841934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079063, 36.603935, 42.863380>,  <33.930405, 36.791912, 42.876247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.079063, 36.603935, 42.863380>,  <34.326828, 36.290642, 42.841934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079063, 36.603935, 42.863380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172662, -0.202530, 0.963934,
		0.765840, 0.587820, 0.260684,
		-0.619416, 0.783230, 0.053611,
		33.893238, 36.838905, 42.879463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470474, 36.513958, 43.477093>,  <34.326828, 36.290642, 42.841934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470474, 36.513958, 43.477093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127216, 36.709988, 43.415886>,  <33.921261, 36.827606, 43.379162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127216, 36.709988, 43.415886>,  <34.470474, 36.513958, 43.477093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127216, 36.709988, 43.415886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271884, -0.180965, 0.945162,
		0.435509, 0.852689, 0.288537,
		-0.858144, 0.490075, -0.153020,
		33.869774, 36.857010, 43.369980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418686, 36.942814, 43.977741>,  <34.470474, 36.513958, 43.477093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418686, 36.942814, 43.977741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048794, 36.901176, 43.831299>,  <33.826859, 36.876194, 43.743431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.048794, 36.901176, 43.831299>,  <34.418686, 36.942814, 43.977741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048794, 36.901176, 43.831299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323470, -0.292002, 0.900057,
		-0.200593, 0.950736, 0.236353,
		-0.924732, -0.104092, -0.366108,
		33.771374, 36.869949, 43.721466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098438, 37.181564, 44.493328>,  <34.418686, 36.942814, 43.977741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098438, 37.181564, 44.493328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796307, 36.988197, 44.316338>,  <33.615028, 36.872177, 44.210144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.796307, 36.988197, 44.316338>,  <34.098438, 37.181564, 44.493328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796307, 36.988197, 44.316338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425594, -0.151593, 0.892126,
		-0.498350, 0.862162, -0.091240,
		-0.755326, -0.483422, -0.442477,
		33.569710, 36.843170, 44.183594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499714, 37.553436, 44.589302>,  <34.098438, 37.181564, 44.493328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499714, 37.553436, 44.589302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414360, 37.169743, 44.515190>,  <33.363148, 36.939526, 44.470722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414360, 37.169743, 44.515190>,  <33.499714, 37.553436, 44.589302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414360, 37.169743, 44.515190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283258, -0.120758, 0.951411,
		-0.935004, 0.255496, -0.245945,
		-0.213382, -0.959239, -0.185281,
		33.350346, 36.881969, 44.459606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.882435, 37.342312, 45.013435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020664, 36.984169, 44.901073>,  <33.103603, 36.769283, 44.833656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.020664, 36.984169, 44.901073>,  <32.882435, 37.342312, 45.013435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020664, 36.984169, 44.901073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427191, -0.416640, 0.802446,
		-0.835515, -0.157304, -0.526470,
		0.345577, -0.895358, -0.280910,
		33.124336, 36.715561, 44.816799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307205, 36.875965, 45.015553>,  <32.882435, 37.342312, 45.013435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307205, 36.875965, 45.015553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627441, 36.636375, 45.022228>,  <32.819584, 36.492622, 45.026234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.627441, 36.636375, 45.022228>,  <32.307205, 36.875965, 45.015553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627441, 36.636375, 45.022228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463663, -0.601604, 0.650453,
		-0.379567, -0.528485, -0.759363,
		0.800591, -0.598979, 0.016690,
		32.867619, 36.456680, 45.027237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087444, 36.212902, 44.973328>,  <32.307205, 36.875965, 45.015553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087444, 36.212902, 44.973328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449455, 36.198383, 45.142849>,  <32.666660, 36.189674, 45.244560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.449455, 36.198383, 45.142849>,  <32.087444, 36.212902, 44.973328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449455, 36.198383, 45.142849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367006, -0.570282, 0.734904,
		0.215016, -0.820647, -0.529441,
		0.905028, -0.036292, 0.423802,
		32.720963, 36.187496, 45.269989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108688, 35.494625, 45.359337>,  <32.087444, 36.212902, 44.973328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108688, 35.494625, 45.359337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426418, 35.690250, 45.503487>,  <32.617058, 35.807625, 45.589977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426418, 35.690250, 45.503487>,  <32.108688, 35.494625, 45.359337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426418, 35.690250, 45.503487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199736, -0.349978, 0.915216,
		0.573719, -0.798958, -0.180312,
		0.794325, 0.489062, 0.360370,
		32.664715, 35.836967, 45.611599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476192, 35.034954, 45.679401>,  <32.108688, 35.494625, 45.359337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476192, 35.034954, 45.679401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583794, 35.380985, 45.848763>,  <32.648354, 35.588604, 45.950378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.583794, 35.380985, 45.848763>,  <32.476192, 35.034954, 45.679401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583794, 35.380985, 45.848763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272626, -0.353240, 0.894928,
		0.923750, -0.356167, 0.140823,
		0.269000, 0.865082, 0.423406,
		32.664494, 35.640511, 45.975784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512882, 34.933228, 46.357384>,  <32.476192, 35.034954, 45.679401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512882, 34.933228, 46.357384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570835, 35.327957, 46.386189>,  <32.605606, 35.564796, 46.403473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570835, 35.327957, 46.386189>,  <32.512882, 34.933228, 46.357384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570835, 35.327957, 46.386189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234997, -0.036378, 0.971315,
		0.961137, -0.157650, 0.226630,
		0.144883, 0.986825, 0.072011,
		32.614300, 35.624004, 46.407791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968857, 35.026722, 46.833317>,  <32.512882, 34.933228, 46.357384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968857, 35.026722, 46.833317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778915, 35.378689, 46.826801>,  <32.664951, 35.589867, 46.822891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778915, 35.378689, 46.826801>,  <32.968857, 35.026722, 46.833317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778915, 35.378689, 46.826801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307684, -0.148650, 0.939805,
		0.824526, 0.451283, 0.341322,
		-0.474855, 0.879913, -0.016287,
		32.636459, 35.642662, 46.821915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087574, 35.268734, 47.488426>,  <32.968857, 35.026722, 46.833317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087574, 35.268734, 47.488426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756176, 35.452854, 47.360851>,  <32.557339, 35.563324, 47.284306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756176, 35.452854, 47.360851>,  <33.087574, 35.268734, 47.488426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756176, 35.452854, 47.360851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383811, -0.052006, 0.921946,
		0.407783, 0.886240, 0.219754,
		-0.828494, 0.460298, -0.318941,
		32.507629, 35.590942, 47.265167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026947, 35.829830, 47.994648>,  <33.087574, 35.268734, 47.488426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026947, 35.829830, 47.994648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675991, 35.775444, 47.810604>,  <32.465416, 35.742813, 47.700180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675991, 35.775444, 47.810604>,  <33.026947, 35.829830, 47.994648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675991, 35.775444, 47.810604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467963, 0.031031, 0.883203,
		-0.105809, 0.990227, -0.090853,
		-0.877391, -0.135967, -0.460107,
		32.412773, 35.734653, 47.672573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534546, 36.409821, 48.232826>,  <33.026947, 35.829830, 47.994648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534546, 36.409821, 48.232826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333908, 36.088203, 48.105125>,  <32.213524, 35.895233, 48.028507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.333908, 36.088203, 48.105125>,  <32.534546, 36.409821, 48.232826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333908, 36.088203, 48.105125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334693, -0.159930, 0.928656,
		-0.797735, 0.572661, -0.188887,
		-0.501596, -0.804041, -0.319247,
		32.183430, 35.846992, 48.009350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025864, 36.412388, 48.655437>,  <32.534546, 36.409821, 48.232826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025864, 36.412388, 48.655437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.976509, 36.042973, 48.510189>,  <31.946898, 35.821323, 48.423042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.976509, 36.042973, 48.510189>,  <32.025864, 36.412388, 48.655437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976509, 36.042973, 48.510189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237228, -0.327854, 0.914459,
		-0.963587, 0.198972, -0.178637,
		-0.123385, -0.923538, -0.363117,
		31.939493, 35.765911, 48.401253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373257, 36.165840, 48.939453>,  <32.025864, 36.412388, 48.655437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373257, 36.165840, 48.939453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597574, 35.850979, 48.836769>,  <31.732164, 35.662064, 48.775158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597574, 35.850979, 48.836769>,  <31.373257, 36.165840, 48.939453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597574, 35.850979, 48.836769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195988, -0.427445, 0.882542,
		-0.804424, -0.444614, -0.393982,
		0.560795, -0.787153, -0.256707,
		31.765814, 35.614834, 48.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875246, 35.607925, 49.050495>,  <31.373257, 36.165840, 48.939453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875246, 35.607925, 49.050495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228191, 35.420364, 49.034687>,  <31.439959, 35.307827, 49.025204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228191, 35.420364, 49.034687>,  <30.875246, 35.607925, 49.050495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228191, 35.420364, 49.034687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247914, -0.534610, 0.807918,
		-0.399961, -0.703082, -0.587969,
		0.882366, -0.468902, -0.039519,
		31.492901, 35.279694, 49.022831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890913, 34.797611, 49.076149>,  <30.875246, 35.607925, 49.050495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890913, 34.797611, 49.076149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252905, 34.912357, 49.201828>,  <31.470100, 34.981205, 49.277233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.252905, 34.912357, 49.201828>,  <30.890913, 34.797611, 49.076149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252905, 34.912357, 49.201828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135272, -0.506168, 0.851760,
		0.403375, -0.813328, -0.419268,
		0.904981, 0.286864, 0.314196,
		31.524399, 34.998417, 49.296085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275089, 34.248241, 49.470867>,  <30.890913, 34.797611, 49.076149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275089, 34.248241, 49.470867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497087, 34.557461, 49.593754>,  <31.630285, 34.742992, 49.667488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497087, 34.557461, 49.593754>,  <31.275089, 34.248241, 49.470867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497087, 34.557461, 49.593754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047994, -0.398462, 0.915928,
		0.830469, -0.493589, -0.258245,
		0.554993, 0.773044, 0.307221,
		31.663586, 34.789375, 49.685921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886280, 34.017117, 49.735542>,  <31.275089, 34.248241, 49.470867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886280, 34.017117, 49.735542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867022, 34.382038, 49.898216>,  <31.855467, 34.600990, 49.995819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867022, 34.382038, 49.898216>,  <31.886280, 34.017117, 49.735542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867022, 34.382038, 49.898216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201945, -0.389857, 0.898460,
		0.978213, 0.125385, -0.165464,
		-0.048147, 0.912300, 0.406684,
		31.852577, 34.655727, 50.020222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302322, 33.911308, 50.294727>,  <31.886280, 34.017117, 49.735542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302322, 33.911308, 50.294727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170170, 34.276203, 50.391621>,  <32.090878, 34.495140, 50.449757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170170, 34.276203, 50.391621>,  <32.302322, 33.911308, 50.294727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170170, 34.276203, 50.391621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466468, -0.065301, 0.882124,
		0.820521, 0.404435, -0.403953,
		-0.330383, 0.912233, 0.242236,
		32.071056, 34.549873, 50.464291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833408, 34.323971, 50.568470>,  <32.302322, 33.911308, 50.294727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833408, 34.323971, 50.568470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493568, 34.479122, 50.711426>,  <32.289665, 34.572212, 50.797199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493568, 34.479122, 50.711426>,  <32.833408, 34.323971, 50.568470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493568, 34.479122, 50.711426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330550, -0.136447, 0.933873,
		0.410996, 0.911554, -0.012289,
		-0.849599, 0.387881, 0.357394,
		32.238689, 34.595486, 50.818645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006573, 34.730328, 51.201679>,  <32.833408, 34.323971, 50.568470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006573, 34.730328, 51.201679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613895, 34.662590, 51.236534>,  <32.378288, 34.621948, 51.257446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613895, 34.662590, 51.236534>,  <33.006573, 34.730328, 51.201679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613895, 34.662590, 51.236534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112615, -0.147182, 0.982678,
		-0.153585, 0.974505, 0.163559,
		-0.981697, -0.169344, 0.087139,
		32.319386, 34.611786, 51.262676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784718, 35.243340, 51.763317>,  <33.006573, 34.730328, 51.201679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784718, 35.243340, 51.763317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531616, 34.933910, 51.749451>,  <32.379753, 34.748253, 51.741131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.531616, 34.933910, 51.749451>,  <32.784718, 35.243340, 51.763317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531616, 34.933910, 51.749451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182629, -0.192587, 0.964135,
		-0.752507, 0.603732, 0.263138,
		-0.632756, -0.773575, -0.034664,
		32.341789, 34.701839, 51.739052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381783, 35.334751, 52.393284>,  <32.784718, 35.243340, 51.763317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381783, 35.334751, 52.393284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287323, 34.965725, 52.271233>,  <32.230648, 34.744308, 52.198002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287323, 34.965725, 52.271233>,  <32.381783, 35.334751, 52.393284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287323, 34.965725, 52.271233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082708, -0.331950, 0.939664,
		-0.968190, 0.196666, 0.154694,
		-0.236151, -0.922568, -0.305125,
		32.216476, 34.688953, 52.179695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898979, 35.113724, 52.846592>,  <32.381783, 35.334751, 52.393284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898979, 35.113724, 52.846592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067337, 34.787903, 52.686913>,  <32.168350, 34.592411, 52.591106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.067337, 34.787903, 52.686913>,  <31.898979, 35.113724, 52.846592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067337, 34.787903, 52.686913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046953, -0.419924, 0.906344,
		-0.905893, -0.400220, -0.138499,
		0.420896, -0.814548, -0.399197,
		32.193607, 34.543537, 52.567154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309629, 35.297909, 52.708775>,  <31.898979, 35.113724, 52.846592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309629, 35.297909, 52.708775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490847, 35.154049, 53.035065>,  <31.599577, 35.067734, 53.230839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490847, 35.154049, 53.035065>,  <31.309629, 35.297909, 52.708775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490847, 35.154049, 53.035065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209635, 0.846378, 0.489589,
		-0.866491, -0.392808, 0.308049,
		0.453040, -0.359646, 0.815726,
		31.626759, 35.046154, 53.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178244, 34.738453, 53.326046>,  <31.309629, 35.297909, 52.708775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178244, 34.738453, 53.326046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804787, 34.600731, 53.365578>,  <30.580713, 34.518097, 53.389297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804787, 34.600731, 53.365578>,  <31.178244, 34.738453, 53.326046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804787, 34.600731, 53.365578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171016, 0.186017, -0.967549,
		0.314752, -0.920244, -0.232555,
		-0.933641, -0.344308, 0.098827,
		30.524694, 34.497440, 53.395226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912174, 34.294483, 52.778629>,  <31.178244, 34.738453, 53.326046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912174, 34.294483, 52.778629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559719, 34.415352, 52.924118>,  <30.348246, 34.487873, 53.011410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.559719, 34.415352, 52.924118>,  <30.912174, 34.294483, 52.778629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.559719, 34.415352, 52.924118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285604, 0.272946, -0.918657,
		-0.376864, -0.913343, -0.154203,
		-0.881138, 0.302168, 0.363718,
		30.295378, 34.506001, 53.033234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466167, 33.935501, 52.452110>,  <30.912174, 34.294483, 52.778629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466167, 33.935501, 52.452110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248243, 34.243950, 52.583897>,  <30.117489, 34.429020, 52.662968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.248243, 34.243950, 52.583897>,  <30.466167, 33.935501, 52.452110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248243, 34.243950, 52.583897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382446, 0.121164, -0.915999,
		-0.746268, -0.625051, 0.228901,
		-0.544811, 0.771123, 0.329469,
		30.084801, 34.475288, 52.682739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696062, 33.763493, 52.397812>,  <30.466167, 33.935501, 52.452110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696062, 33.763493, 52.397812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740379, 34.160835, 52.385357>,  <29.766970, 34.399242, 52.377884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740379, 34.160835, 52.385357>,  <29.696062, 33.763493, 52.397812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740379, 34.160835, 52.385357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469302, 0.024677, -0.882693,
		-0.876060, 0.112408, 0.468918,
		0.110794, 0.993356, -0.031135,
		29.773617, 34.458843, 52.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087982, 34.009426, 51.983120>,  <29.696062, 33.763493, 52.397812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087982, 34.009426, 51.983120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298960, 34.348953, 51.997646>,  <29.425547, 34.552670, 52.006363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.298960, 34.348953, 51.997646>,  <29.087982, 34.009426, 51.983120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298960, 34.348953, 51.997646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285099, 0.217102, -0.933587,
		-0.800326, 0.482061, 0.356505,
		0.527444, 0.848813, 0.036317,
		29.457193, 34.603596, 52.008541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527754, 34.550220, 51.774017>,  <29.087982, 34.009426, 51.983120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527754, 34.550220, 51.774017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.886436, 34.721966, 51.730999>,  <29.101646, 34.825012, 51.705189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.886436, 34.721966, 51.730999>,  <28.527754, 34.550220, 51.774017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886436, 34.721966, 51.730999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295403, 0.399573, -0.867801,
		-0.329634, 0.809930, 0.485135,
		0.896704, 0.429367, -0.107543,
		29.155447, 34.850777, 51.698734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348381, 35.234039, 51.476887>,  <28.527754, 34.550220, 51.774017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348381, 35.234039, 51.476887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722368, 35.134789, 51.375484>,  <28.946760, 35.075237, 51.314644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.722368, 35.134789, 51.375484>,  <28.348381, 35.234039, 51.476887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722368, 35.134789, 51.375484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177793, 0.290630, -0.940172,
		0.306958, 0.924104, 0.227615,
		0.934969, -0.248125, -0.253510,
		29.002859, 35.060352, 51.299431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501398, 35.783634, 51.003120>,  <28.348381, 35.234039, 51.476887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501398, 35.783634, 51.003120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756018, 35.483067, 50.933640>,  <28.908789, 35.302727, 50.891953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.756018, 35.483067, 50.933640>,  <28.501398, 35.783634, 51.003120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756018, 35.483067, 50.933640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258468, 0.420045, -0.869918,
		0.726636, 0.508850, 0.461598,
		0.636549, -0.751421, -0.173698,
		28.946983, 35.257641, 50.881531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105082, 36.138256, 50.689053>,  <28.501398, 35.783634, 51.003120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105082, 36.138256, 50.689053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137941, 35.758923, 50.566467>,  <29.157658, 35.531322, 50.492916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137941, 35.758923, 50.566467>,  <29.105082, 36.138256, 50.689053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137941, 35.758923, 50.566467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292446, 0.316901, -0.902247,
		0.952747, -0.015502, 0.303370,
		0.082152, -0.948332, -0.306460,
		29.162586, 35.474422, 50.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763777, 35.995869, 50.325764>,  <29.105082, 36.138256, 50.689053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763777, 35.995869, 50.325764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.520138, 35.702370, 50.205353>,  <29.373955, 35.526272, 50.133106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.520138, 35.702370, 50.205353>,  <29.763777, 35.995869, 50.325764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520138, 35.702370, 50.205353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234428, 0.196033, -0.952163,
		0.757656, -0.650530, 0.052607,
		-0.609098, -0.733745, -0.301028,
		29.337408, 35.482246, 50.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096153, 35.711926, 49.822620>,  <29.763777, 35.995869, 50.325764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096153, 35.711926, 49.822620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.732260, 35.565372, 49.744499>,  <29.513924, 35.477440, 49.697628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.732260, 35.565372, 49.744499>,  <30.096153, 35.711926, 49.822620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732260, 35.565372, 49.744499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157501, 0.130698, -0.978832,
		0.384157, -0.921237, -0.061194,
		-0.909734, -0.366387, -0.195304,
		29.459339, 35.455456, 49.685909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243328, 35.352966, 49.258995>,  <30.096153, 35.711926, 49.822620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243328, 35.352966, 49.258995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843830, 35.372589, 49.255039>,  <29.604132, 35.384361, 49.252666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.843830, 35.372589, 49.255039>,  <30.243328, 35.352966, 49.258995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843830, 35.372589, 49.255039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020553, 0.222001, -0.974830,
		-0.045624, -0.973812, -0.222731,
		-0.998747, 0.049053, -0.009886,
		29.544207, 35.387306, 49.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065413, 34.896721, 48.725895>,  <30.243328, 35.352966, 49.258995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065413, 34.896721, 48.725895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788691, 35.176224, 48.798725>,  <29.622658, 35.343925, 48.842422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788691, 35.176224, 48.798725>,  <30.065413, 34.896721, 48.725895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788691, 35.176224, 48.798725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035599, 0.284844, -0.957913,
		-0.721207, -0.656206, -0.221931,
		-0.691804, 0.698754, 0.182071,
		29.581150, 35.385849, 48.853348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619434, 34.824078, 48.090397>,  <30.065413, 34.896721, 48.725895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619434, 34.824078, 48.090397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.563435, 35.187695, 48.247387>,  <29.529835, 35.405865, 48.341579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.563435, 35.187695, 48.247387>,  <29.619434, 34.824078, 48.090397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563435, 35.187695, 48.247387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015176, 0.398302, -0.917129,
		-0.990035, -0.122441, -0.069557,
		-0.139999, 0.909046, 0.392475,
		29.521435, 35.460407, 48.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184381, 35.010235, 47.655487>,  <29.619434, 34.824078, 48.090397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184381, 35.010235, 47.655487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319847, 35.350697, 47.815907>,  <29.401127, 35.554974, 47.912159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319847, 35.350697, 47.815907>,  <29.184381, 35.010235, 47.655487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319847, 35.350697, 47.815907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039931, 0.412853, -0.909922,
		-0.940060, 0.324171, 0.105831,
		0.338663, 0.851156, 0.401051,
		29.421446, 35.606045, 47.936222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927435, 35.527382, 47.203022>,  <29.184381, 35.010235, 47.655487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927435, 35.527382, 47.203022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213659, 35.720074, 47.405373>,  <29.385393, 35.835690, 47.526783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.213659, 35.720074, 47.405373>,  <28.927435, 35.527382, 47.203022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213659, 35.720074, 47.405373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050121, 0.686902, -0.725020,
		-0.696750, 0.544151, 0.467375,
		0.715561, 0.481732, 0.505872,
		29.428328, 35.864594, 47.557133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780346, 36.219368, 47.134777>,  <28.927435, 35.527382, 47.203022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780346, 36.219368, 47.134777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168930, 36.201370, 47.227936>,  <29.402081, 36.190571, 47.283829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.168930, 36.201370, 47.227936>,  <28.780346, 36.219368, 47.134777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168930, 36.201370, 47.227936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197107, 0.699328, -0.687088,
		-0.131954, 0.713384, 0.688238,
		0.971461, -0.044992, 0.232892,
		29.460369, 36.187874, 47.297802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005358, 36.928600, 47.084713>,  <28.780346, 36.219368, 47.134777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005358, 36.928600, 47.084713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344545, 36.719929, 47.047180>,  <29.548058, 36.594727, 47.024658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344545, 36.719929, 47.047180>,  <29.005358, 36.928600, 47.084713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344545, 36.719929, 47.047180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245441, 0.543362, -0.802818,
		0.469797, 0.657733, 0.588794,
		0.847968, -0.521676, -0.093835,
		29.598936, 36.563427, 47.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570202, 37.461082, 47.005844>,  <29.005358, 36.928600, 47.084713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570202, 37.461082, 47.005844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710484, 37.114582, 46.863506>,  <29.794653, 36.906681, 46.778103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710484, 37.114582, 46.863506>,  <29.570202, 37.461082, 47.005844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710484, 37.114582, 46.863506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373636, 0.477852, -0.795019,
		0.858722, 0.145860, 0.491245,
		0.350703, -0.866246, -0.355843,
		29.815695, 36.854710, 46.756752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070204, 37.780533, 46.528175>,  <29.570202, 37.461082, 47.005844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070204, 37.780533, 46.528175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007782, 37.391098, 46.461517>,  <29.970329, 37.157436, 46.421520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.007782, 37.391098, 46.461517>,  <30.070204, 37.780533, 46.528175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007782, 37.391098, 46.461517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283006, 0.117570, -0.951885,
		0.946338, -0.195707, 0.257185,
		-0.156053, -0.973589, -0.166647,
		29.960966, 37.099022, 46.411522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645407, 37.622955, 46.070683>,  <30.070204, 37.780533, 46.528175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645407, 37.622955, 46.070683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350176, 37.361622, 46.003269>,  <30.173038, 37.204823, 45.962822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350176, 37.361622, 46.003269>,  <30.645407, 37.622955, 46.070683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350176, 37.361622, 46.003269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124688, 0.113410, -0.985693,
		0.663096, -0.748531, -0.002243,
		-0.738076, -0.653330, -0.168535,
		30.128754, 37.165623, 45.952709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.758190, 36.582615, 30.374941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374413, 36.509491, 30.460773>,  <40.144146, 36.465614, 30.512272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.374413, 36.509491, 30.460773>,  <40.758190, 36.582615, 30.374941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374413, 36.509491, 30.460773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239006, -0.123933, 0.963077,
		-0.149468, 0.975305, 0.162600,
		-0.959445, -0.182812, 0.214580,
		40.086578, 36.454647, 30.525148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598076, 36.897236, 30.954016>,  <40.758190, 36.582615, 30.374941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598076, 36.897236, 30.954016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.294209, 36.638260, 30.929588>,  <40.111889, 36.482876, 30.914932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.294209, 36.638260, 30.929588>,  <40.598076, 36.897236, 30.954016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294209, 36.638260, 30.929588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300720, -0.433004, 0.849750,
		-0.576602, 0.627164, 0.523636,
		-0.759669, -0.647436, -0.061071,
		40.066307, 36.444031, 30.911266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260330, 36.924820, 31.607370>,  <40.598076, 36.897236, 30.954016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260330, 36.924820, 31.607370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159340, 36.575066, 31.441620>,  <40.098743, 36.365215, 31.342171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.159340, 36.575066, 31.441620>,  <40.260330, 36.924820, 31.607370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159340, 36.575066, 31.441620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271241, -0.475037, 0.837119,
		-0.928807, 0.098960, 0.357106,
		-0.252480, -0.874384, -0.414375,
		40.083595, 36.312752, 31.317307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801609, 36.574032, 32.160004>,  <40.260330, 36.924820, 31.607370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801609, 36.574032, 32.160004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929409, 36.283695, 31.916342>,  <40.006088, 36.109493, 31.770144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929409, 36.283695, 31.916342>,  <39.801609, 36.574032, 32.160004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929409, 36.283695, 31.916342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190556, -0.580502, 0.791647,
		-0.928230, -0.369006, -0.047154,
		0.319495, -0.725845, -0.609156,
		40.025257, 36.065941, 31.733595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504646, 35.988014, 32.481861>,  <39.801609, 36.574032, 32.160004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504646, 35.988014, 32.481861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799927, 35.850227, 32.249863>,  <39.977097, 35.767555, 32.110664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799927, 35.850227, 32.249863>,  <39.504646, 35.988014, 32.481861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799927, 35.850227, 32.249863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297487, -0.605437, 0.738206,
		-0.605437, -0.717490, -0.344464,
		-0.738206, 0.344464, 0.579997,
		40.021389, 35.746887, 32.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521450, 35.214405, 32.566505>,  <39.504646, 35.988014, 32.481861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521450, 35.214405, 32.566505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880623, 35.332939, 32.436337>,  <40.096127, 35.404060, 32.358234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880623, 35.332939, 32.436337>,  <39.521450, 35.214405, 32.566505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880623, 35.332939, 32.436337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438083, -0.530557, 0.725667,
		0.042387, -0.794162, -0.606225,
		0.897934, 0.296336, -0.325420,
		40.150002, 35.421841, 32.338711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890602, 34.655708, 32.661617>,  <39.521450, 35.214405, 32.566505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890602, 34.655708, 32.661617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140892, 34.967686, 32.656548>,  <40.291065, 35.154873, 32.653507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.140892, 34.967686, 32.656548>,  <39.890602, 34.655708, 32.661617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140892, 34.967686, 32.656548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535378, -0.417588, 0.734160,
		0.567310, -0.466165, -0.678859,
		0.625723, 0.779942, -0.012673,
		40.328609, 35.201668, 32.652744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462769, 34.238094, 32.849190>,  <39.890602, 34.655708, 32.661617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462769, 34.238094, 32.849190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552757, 34.626270, 32.884155>,  <40.606750, 34.859177, 32.905132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.552757, 34.626270, 32.884155>,  <40.462769, 34.238094, 32.849190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552757, 34.626270, 32.884155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644058, -0.215422, 0.734018,
		0.731149, -0.108832, -0.673481,
		0.224967, 0.970437, 0.087412,
		40.620247, 34.917400, 32.910378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171638, 34.325275, 32.843800>,  <40.462769, 34.238094, 32.849190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171638, 34.325275, 32.843800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066830, 34.669617, 33.018284>,  <41.003944, 34.876221, 33.122974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066830, 34.669617, 33.018284>,  <41.171638, 34.325275, 32.843800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066830, 34.669617, 33.018284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781070, -0.076308, 0.619764,
		0.566812, 0.503100, -0.652392,
		-0.262020, 0.860853, 0.436208,
		40.988224, 34.927872, 33.149147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785870, 34.502419, 33.141888>,  <41.171638, 34.325275, 32.843800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785870, 34.502419, 33.141888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539200, 34.749031, 33.337688>,  <41.391197, 34.896999, 33.455170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539200, 34.749031, 33.337688>,  <41.785870, 34.502419, 33.141888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539200, 34.749031, 33.337688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507790, -0.163627, 0.845798,
		0.601554, 0.770143, -0.212163,
		-0.616670, 0.616528, 0.489502,
		41.354198, 34.933990, 33.484539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186649, 34.968597, 33.548817>,  <41.785870, 34.502419, 33.141888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186649, 34.968597, 33.548817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825405, 34.972603, 33.720535>,  <41.608658, 34.975006, 33.823566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825405, 34.972603, 33.720535>,  <42.186649, 34.968597, 33.548817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825405, 34.972603, 33.720535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426493, -0.095419, 0.899444,
		0.049973, 0.995387, 0.081901,
		-0.903109, 0.010018, 0.429294,
		41.554474, 34.975609, 33.849323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220097, 35.450474, 33.982395>,  <42.186649, 34.968597, 33.548817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220097, 35.450474, 33.982395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.922115, 35.217419, 34.112362>,  <41.743324, 35.077587, 34.190342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.922115, 35.217419, 34.112362>,  <42.220097, 35.450474, 33.982395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922115, 35.217419, 34.112362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353662, 0.068058, 0.932894,
		-0.565652, 0.809878, 0.155356,
		-0.744957, -0.582637, 0.324920,
		41.698627, 35.042629, 34.209839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945122, 35.868591, 34.552654>,  <42.220097, 35.450474, 33.982395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945122, 35.868591, 34.552654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816376, 35.495712, 34.618893>,  <41.739128, 35.271984, 34.658634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.816376, 35.495712, 34.618893>,  <41.945122, 35.868591, 34.552654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816376, 35.495712, 34.618893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354166, 0.043657, 0.934163,
		-0.878049, 0.359319, 0.316099,
		-0.321863, -0.932193, 0.165592,
		41.719818, 35.216053, 34.668571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525833, 35.959721, 35.142220>,  <41.945122, 35.868591, 34.552654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525833, 35.959721, 35.142220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.629162, 35.574768, 35.108551>,  <41.691158, 35.343796, 35.088348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.629162, 35.574768, 35.108551>,  <41.525833, 35.959721, 35.142220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629162, 35.574768, 35.108551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251880, -0.017017, 0.967609,
		-0.932644, -0.271159, 0.238009,
		0.258326, -0.962384, -0.084170,
		41.706661, 35.286053, 35.083302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095673, 35.549625, 35.713188>,  <41.525833, 35.959721, 35.142220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095673, 35.549625, 35.713188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406788, 35.321793, 35.606884>,  <41.593456, 35.185093, 35.543102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406788, 35.321793, 35.606884>,  <41.095673, 35.549625, 35.713188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406788, 35.321793, 35.606884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180187, -0.203017, 0.962454,
		-0.602150, -0.796468, -0.055271,
		0.777784, -0.569582, -0.265760,
		41.640121, 35.150917, 35.527157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074490, 35.084560, 36.137405>,  <41.095673, 35.549625, 35.713188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074490, 35.084560, 36.137405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454430, 35.052048, 36.016624>,  <41.682396, 35.032539, 35.944157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.454430, 35.052048, 36.016624>,  <41.074490, 35.084560, 36.137405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454430, 35.052048, 36.016624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291498, -0.119356, 0.949096,
		-0.113177, -0.989520, -0.089679,
		0.949853, -0.081274, -0.301951,
		41.739384, 35.027664, 35.926041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456356, 34.497108, 36.507710>,  <41.074490, 35.084560, 36.137405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456356, 34.497108, 36.507710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773335, 34.699848, 36.371983>,  <41.963520, 34.821491, 36.290546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.773335, 34.699848, 36.371983>,  <41.456356, 34.497108, 36.507710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773335, 34.699848, 36.371983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468444, -0.149463, 0.870759,
		0.390628, -0.848979, -0.355871,
		0.792446, 0.506848, -0.339315,
		42.011066, 34.851902, 36.270187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046238, 34.160904, 36.787457>,  <41.456356, 34.497108, 36.507710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046238, 34.160904, 36.787457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224003, 34.500397, 36.672810>,  <42.330662, 34.704094, 36.604023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.224003, 34.500397, 36.672810>,  <42.046238, 34.160904, 36.787457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224003, 34.500397, 36.672810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597304, -0.042297, 0.800899,
		0.667628, -0.527123, -0.525751,
		0.444410, 0.848736, -0.286614,
		42.357327, 34.755016, 36.586826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739368, 33.984127, 36.724072>,  <42.046238, 34.160904, 36.787457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739368, 33.984127, 36.724072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713142, 34.381027, 36.766300>,  <42.697407, 34.619167, 36.791637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.713142, 34.381027, 36.766300>,  <42.739368, 33.984127, 36.724072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713142, 34.381027, 36.766300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544214, -0.053128, 0.837262,
		0.836381, 0.112348, -0.536512,
		-0.065561, 0.992248, 0.105576,
		42.693474, 34.678703, 36.797974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417931, 34.197762, 36.981785>,  <42.739368, 33.984127, 36.724072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417931, 34.197762, 36.981785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166492, 34.493469, 37.078411>,  <43.015629, 34.670895, 37.136387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166492, 34.493469, 37.078411>,  <43.417931, 34.197762, 36.981785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166492, 34.493469, 37.078411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373590, 0.014590, 0.927479,
		0.682131, 0.673254, -0.285354,
		-0.628592, 0.739267, 0.241569,
		42.977913, 34.715248, 37.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858334, 34.674641, 37.310974>,  <43.417931, 34.197762, 36.981785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858334, 34.674641, 37.310974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504612, 34.797188, 37.451916>,  <43.292381, 34.870716, 37.536480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.504612, 34.797188, 37.451916>,  <43.858334, 34.674641, 37.310974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504612, 34.797188, 37.451916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372016, 0.006270, 0.928205,
		0.282166, 0.951892, -0.119519,
		-0.884300, 0.306371, 0.352350,
		43.239323, 34.889099, 37.557621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151772, 35.111607, 36.730087>,  <43.858334, 34.674641, 37.310974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151772, 35.111607, 36.730087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489597, 35.226860, 36.549557>,  <44.692291, 35.296013, 36.441238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.489597, 35.226860, 36.549557>,  <44.151772, 35.111607, 36.730087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.489597, 35.226860, 36.549557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451109, -0.071205, -0.889624,
		-0.288471, 0.954938, 0.069844,
		0.844562, 0.288138, -0.451322,
		44.742966, 35.313301, 36.414162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095577, 35.664673, 36.183643>,  <44.151772, 35.111607, 36.730087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095577, 35.664673, 36.183643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413918, 35.442513, 36.087181>,  <44.604919, 35.309216, 36.029305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413918, 35.442513, 36.087181>,  <44.095577, 35.664673, 36.183643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413918, 35.442513, 36.087181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309835, -0.031355, -0.950273,
		0.520222, 0.830991, -0.197037,
		0.795846, -0.555402, -0.241158,
		44.652672, 35.275890, 36.014835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240170, 35.980816, 35.529205>,  <44.095577, 35.664673, 36.183643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240170, 35.980816, 35.529205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397785, 35.614285, 35.557713>,  <44.492355, 35.394367, 35.574818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397785, 35.614285, 35.557713>,  <44.240170, 35.980816, 35.529205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397785, 35.614285, 35.557713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252680, -0.182557, -0.950171,
		0.883679, 0.356393, -0.303472,
		0.394035, -0.916328, 0.071269,
		44.515995, 35.339386, 35.579094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762192, 35.918156, 34.976761>,  <44.240170, 35.980816, 35.529205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762192, 35.918156, 34.976761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.656933, 35.538551, 35.046188>,  <44.593777, 35.310787, 35.087845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.656933, 35.538551, 35.046188>,  <44.762192, 35.918156, 34.976761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656933, 35.538551, 35.046188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082962, -0.156980, -0.984111,
		0.961183, -0.273362, -0.037424,
		-0.263144, -0.949016, 0.173565,
		44.577991, 35.253845, 35.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237518, 35.596676, 34.532852>,  <44.762192, 35.918156, 34.976761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237518, 35.596676, 34.532852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937305, 35.342724, 34.606205>,  <44.757175, 35.190353, 34.650215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.937305, 35.342724, 34.606205>,  <45.237518, 35.596676, 34.532852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937305, 35.342724, 34.606205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107421, -0.156601, -0.981803,
		0.652042, -0.756576, 0.049335,
		-0.750534, -0.634877, 0.183382,
		44.712147, 35.152260, 34.661221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.181858, 35.162083, 33.891708>,  <45.237518, 35.596676, 34.532852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.181858, 35.162083, 33.891708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837872, 35.085182, 34.080807>,  <44.631477, 35.039040, 34.194267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837872, 35.085182, 34.080807>,  <45.181858, 35.162083, 33.891708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837872, 35.085182, 34.080807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345918, -0.461484, -0.816929,
		0.375224, -0.866066, 0.330358,
		-0.859969, -0.192255, 0.472748,
		44.579880, 35.027504, 34.222630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094677, 34.512688, 33.804398>,  <45.181858, 35.162083, 33.891708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094677, 34.512688, 33.804398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734650, 34.684906, 33.831287>,  <44.518635, 34.788235, 33.847424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.734650, 34.684906, 33.831287>,  <45.094677, 34.512688, 33.804398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734650, 34.684906, 33.831287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244975, -0.372352, -0.895176,
		-0.360367, -0.822190, 0.440612,
		-0.900068, 0.430531, 0.067233,
		44.464630, 34.814068, 33.851456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588165, 34.071922, 33.321827>,  <45.094677, 34.512688, 33.804398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588165, 34.071922, 33.321827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337055, 34.362835, 33.432796>,  <44.186390, 34.537384, 33.499378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337055, 34.362835, 33.432796>,  <44.588165, 34.071922, 33.321827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337055, 34.362835, 33.432796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503842, -0.107996, -0.857018,
		-0.593335, -0.677787, 0.434233,
		-0.627771, 0.727283, 0.277420,
		44.148724, 34.581020, 33.516022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968788, 33.764339, 33.450050>,  <44.588165, 34.071922, 33.321827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968788, 33.764339, 33.450050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901768, 34.144039, 33.343575>,  <43.861557, 34.371857, 33.279690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901768, 34.144039, 33.343575>,  <43.968788, 33.764339, 33.450050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901768, 34.144039, 33.343575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502827, -0.314528, -0.805132,
		-0.847992, -0.001055, 0.530007,
		-0.167552, 0.949247, -0.266187,
		43.851501, 34.428814, 33.263718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.353096, 33.676498, 33.151836>,  <43.968788, 33.764339, 33.450050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.353096, 33.676498, 33.151836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483322, 34.032730, 33.024796>,  <43.561459, 34.246471, 32.948570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.483322, 34.032730, 33.024796>,  <43.353096, 33.676498, 33.151836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483322, 34.032730, 33.024796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474524, -0.136638, -0.869573,
		-0.817822, 0.433813, 0.378118,
		0.325567, 0.890582, -0.317600,
		43.580994, 34.299904, 32.929516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787895, 34.118950, 33.034199>,  <43.353096, 33.676498, 33.151836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787895, 34.118950, 33.034199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090336, 34.224380, 32.794586>,  <43.271801, 34.287640, 32.650818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090336, 34.224380, 32.794586>,  <42.787895, 34.118950, 33.034199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090336, 34.224380, 32.794586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598126, -0.093211, -0.795963,
		-0.265631, 0.960125, 0.087174,
		0.756098, 0.263574, -0.599036,
		43.317165, 34.303452, 32.614876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395855, 34.390564, 32.505085>,  <42.787895, 34.118950, 33.034199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395855, 34.390564, 32.505085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756714, 34.395489, 32.332581>,  <42.973228, 34.398445, 32.229076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.756714, 34.395489, 32.332581>,  <42.395855, 34.390564, 32.505085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756714, 34.395489, 32.332581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430254, -0.048277, -0.901416,
		-0.031918, 0.998758, -0.038256,
		0.902143, 0.012312, -0.431261,
		43.027355, 34.399181, 32.203201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466633, 34.972633, 32.044750>,  <42.395855, 34.390564, 32.505085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466633, 34.972633, 32.044750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720783, 34.684429, 31.933640>,  <42.873272, 34.511505, 31.866972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720783, 34.684429, 31.933640>,  <42.466633, 34.972633, 32.044750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720783, 34.684429, 31.933640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324134, 0.077655, -0.942819,
		0.700884, 0.689080, -0.184202,
		0.635373, -0.720513, -0.277781,
		42.911396, 34.468277, 31.850306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754463, 35.205612, 31.443188>,  <42.466633, 34.972633, 32.044750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754463, 35.205612, 31.443188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843288, 34.816032, 31.424809>,  <42.896584, 34.582283, 31.413782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.843288, 34.816032, 31.424809>,  <42.754463, 35.205612, 31.443188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843288, 34.816032, 31.424809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258086, -0.013272, -0.966031,
		0.940254, 0.226382, -0.254309,
		0.222068, -0.973948, -0.045947,
		42.909908, 34.523849, 31.411024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184826, 35.090755, 30.842899>,  <42.754463, 35.205612, 31.443188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184826, 35.090755, 30.842899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014603, 34.743347, 30.944550>,  <42.912468, 34.534904, 31.005539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.014603, 34.743347, 30.944550>,  <43.184826, 35.090755, 30.842899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014603, 34.743347, 30.944550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316253, -0.120377, -0.941007,
		0.847872, -0.480818, -0.223444,
		-0.425555, -0.868518, 0.254124,
		42.886936, 34.482792, 31.020786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449348, 34.628311, 30.338511>,  <43.184826, 35.090755, 30.842899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449348, 34.628311, 30.338511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114250, 34.466717, 30.485468>,  <42.913193, 34.369759, 30.573643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.114250, 34.466717, 30.485468>,  <43.449348, 34.628311, 30.338511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114250, 34.466717, 30.485468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328812, -0.163954, -0.930055,
		0.435969, -0.899950, 0.004514,
		-0.837743, -0.403991, 0.367393,
		42.862926, 34.345520, 30.595686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192348, 34.262478, 29.845034>,  <43.449348, 34.628311, 30.338511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192348, 34.262478, 29.845034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860153, 34.259720, 30.067831>,  <42.660835, 34.258064, 30.201509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.860153, 34.259720, 30.067831>,  <43.192348, 34.262478, 29.845034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860153, 34.259720, 30.067831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551189, -0.134323, -0.823497,
		0.080499, -0.990914, 0.107751,
		-0.830488, -0.006899, 0.556994,
		42.611008, 34.257648, 30.234930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783001, 33.774380, 29.506048>,  <43.192348, 34.262478, 29.845034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783001, 33.774380, 29.506048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512897, 33.954033, 29.740076>,  <42.350838, 34.061825, 29.880493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.512897, 33.954033, 29.740076>,  <42.783001, 33.774380, 29.506048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512897, 33.954033, 29.740076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697522, -0.130987, -0.704489,
		-0.239773, -0.883811, 0.401730,
		-0.675257, 0.449133, 0.585071,
		42.310322, 34.088772, 29.915598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245079, 33.263027, 29.670851>,  <42.783001, 33.774380, 29.506048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245079, 33.263027, 29.670851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078747, 33.624649, 29.710403>,  <41.978947, 33.841621, 29.734135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.078747, 33.624649, 29.710403>,  <42.245079, 33.263027, 29.670851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078747, 33.624649, 29.710403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674354, -0.233558, -0.700497,
		-0.610191, -0.357967, 0.706771,
		-0.415827, 0.904052, 0.098881,
		41.953999, 33.895866, 29.740068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408554, 33.136929, 29.721563>,  <42.245079, 33.263027, 29.670851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408554, 33.136929, 29.721563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452549, 33.518291, 29.609196>,  <41.478947, 33.747108, 29.541775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.452549, 33.518291, 29.609196>,  <41.408554, 33.136929, 29.721563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452549, 33.518291, 29.609196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815386, -0.075072, -0.574029,
		-0.568373, 0.292195, 0.769138,
		0.109988, 0.953408, -0.280921,
		41.485546, 33.804314, 29.524920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751373, 33.498543, 29.844206>,  <41.408554, 33.136929, 29.721563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751373, 33.498543, 29.844206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946678, 33.746944, 29.598948>,  <41.063862, 33.895985, 29.451792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.946678, 33.746944, 29.598948>,  <40.751373, 33.498543, 29.844206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946678, 33.746944, 29.598948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789006, 0.013899, -0.614228,
		-0.372917, 0.783683, 0.496764,
		0.488264, 0.621006, -0.613148,
		41.093159, 33.933247, 29.415003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.589939, 37.939510, 42.556255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354164, 37.658089, 42.397469>,  <34.212700, 37.489235, 42.302197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354164, 37.658089, 42.397469>,  <34.589939, 37.939510, 42.556255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354164, 37.658089, 42.397469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430357, 0.142382, -0.891359,
		0.683639, -0.696234, 0.218854,
		-0.589433, -0.703553, -0.396966,
		34.177334, 37.447021, 42.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035751, 37.474731, 42.196083>,  <34.589939, 37.939510, 42.556255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035751, 37.474731, 42.196083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670845, 37.451485, 42.033897>,  <34.451900, 37.437538, 41.936584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670845, 37.451485, 42.033897>,  <35.035751, 37.474731, 42.196083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670845, 37.451485, 42.033897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401502, 0.069069, -0.913250,
		0.081088, -0.995917, -0.039672,
		-0.912261, -0.058125, -0.405463,
		34.397167, 37.434052, 41.912258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191223, 37.179840, 41.538628>,  <35.035751, 37.474731, 42.196083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191223, 37.179840, 41.538628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819790, 37.320885, 41.492340>,  <34.596928, 37.405514, 41.464569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819790, 37.320885, 41.492340>,  <35.191223, 37.179840, 41.538628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819790, 37.320885, 41.492340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178902, 0.152132, -0.972034,
		-0.325150, -0.923319, -0.204351,
		-0.928586, 0.352616, -0.115717,
		34.541214, 37.426670, 41.457626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856209, 36.939018, 40.901558>,  <35.191223, 37.179840, 41.538628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856209, 36.939018, 40.901558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623028, 37.255028, 40.977474>,  <34.483120, 37.444633, 41.023026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623028, 37.255028, 40.977474>,  <34.856209, 36.939018, 40.901558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623028, 37.255028, 40.977474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024892, 0.216117, -0.976050,
		-0.812122, -0.573719, -0.106322,
		-0.582956, 0.790025, 0.189794,
		34.448139, 37.492035, 41.034412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355957, 36.811176, 40.442055>,  <34.856209, 36.939018, 40.901558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355957, 36.811176, 40.442055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305660, 37.200150, 40.520607>,  <34.275482, 37.433533, 40.567738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305660, 37.200150, 40.520607>,  <34.355957, 36.811176, 40.442055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305660, 37.200150, 40.520607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011370, 0.196525, -0.980433,
		-0.991997, -0.125518, -0.013656,
		-0.125746, 0.972432, 0.196380,
		34.267937, 37.491879, 40.579521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724083, 37.095219, 40.129620>,  <34.355957, 36.811176, 40.442055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724083, 37.095219, 40.129620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967899, 37.408962, 40.175652>,  <34.114189, 37.597206, 40.203270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967899, 37.408962, 40.175652>,  <33.724083, 37.095219, 40.129620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967899, 37.408962, 40.175652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080519, 0.205673, -0.975303,
		-0.788654, 0.585222, 0.188521,
		0.609543, 0.784356, 0.115083,
		34.150761, 37.644268, 40.210175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467762, 37.528248, 39.741249>,  <33.724083, 37.095219, 40.129620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467762, 37.528248, 39.741249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800861, 37.745090, 39.786221>,  <34.000721, 37.875198, 39.813202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800861, 37.745090, 39.786221>,  <33.467762, 37.528248, 39.741249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800861, 37.745090, 39.786221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125700, 0.012640, -0.991988,
		-0.539187, 0.840213, -0.057618,
		0.832753, 0.542109, 0.112430,
		34.050686, 37.907722, 39.819950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444653, 38.202385, 39.413471>,  <33.467762, 37.528248, 39.741249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444653, 38.202385, 39.413471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830219, 38.099064, 39.439240>,  <34.061558, 38.037071, 39.454700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830219, 38.099064, 39.439240>,  <33.444653, 38.202385, 39.413471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830219, 38.099064, 39.439240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104009, 0.142668, -0.984291,
		0.245055, 0.955471, 0.164386,
		0.963914, -0.258303, 0.064416,
		34.119392, 38.021572, 39.458565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838303, 38.601082, 38.978973>,  <33.444653, 38.202385, 39.413471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838303, 38.601082, 38.978973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097969, 38.301147, 39.030083>,  <34.253769, 38.121185, 39.060749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097969, 38.301147, 39.030083>,  <33.838303, 38.601082, 38.978973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097969, 38.301147, 39.030083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364478, 0.159208, -0.917502,
		0.667633, 0.642184, 0.376651,
		0.649171, -0.749835, 0.127770,
		34.292721, 38.076199, 39.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429749, 38.619164, 38.506325>,  <33.838303, 38.601082, 38.978973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429749, 38.619164, 38.506325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464016, 38.237190, 38.619999>,  <34.484577, 38.008007, 38.688202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464016, 38.237190, 38.619999>,  <34.429749, 38.619164, 38.506325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464016, 38.237190, 38.619999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388277, -0.230683, -0.892203,
		0.917552, 0.186777, 0.351016,
		0.085670, -0.954935, 0.284185,
		34.489716, 37.950710, 38.705254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962086, 38.428234, 38.127930>,  <34.429749, 38.619164, 38.506325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962086, 38.428234, 38.127930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800022, 38.080166, 38.240105>,  <34.702785, 37.871323, 38.307411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800022, 38.080166, 38.240105>,  <34.962086, 38.428234, 38.127930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800022, 38.080166, 38.240105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328295, -0.424759, -0.843683,
		0.853271, -0.249755, 0.457767,
		-0.405155, -0.870173, 0.280441,
		34.678474, 37.819115, 38.324238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441132, 37.925400, 37.954689>,  <34.962086, 38.428234, 38.127930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441132, 37.925400, 37.954689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082642, 37.747974, 37.952652>,  <34.867546, 37.641518, 37.951431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082642, 37.747974, 37.952652>,  <35.441132, 37.925400, 37.954689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082642, 37.747974, 37.952652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251678, -0.498997, -0.829252,
		0.365289, -0.744479, 0.558851,
		-0.896227, -0.443567, -0.005091,
		34.813774, 37.614902, 37.951126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609032, 37.343147, 37.541260>,  <35.441132, 37.925400, 37.954689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609032, 37.343147, 37.541260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209961, 37.362591, 37.560322>,  <34.970516, 37.374256, 37.571758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209961, 37.362591, 37.560322>,  <35.609032, 37.343147, 37.541260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209961, 37.362591, 37.560322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067518, -0.796033, -0.601475,
		0.008696, -0.603297, 0.797469,
		-0.997681, 0.048613, 0.047655,
		34.910656, 37.377174, 37.574619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518684, 36.651054, 37.362350>,  <35.609032, 37.343147, 37.541260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518684, 36.651054, 37.362350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163231, 36.834412, 37.368057>,  <34.949959, 36.944427, 37.371483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163231, 36.834412, 37.368057>,  <35.518684, 36.651054, 37.362350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163231, 36.834412, 37.368057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439550, -0.842407, -0.311684,
		-0.130855, -0.283244, 0.950079,
		-0.888635, 0.458393, 0.014267,
		34.896641, 36.971928, 37.372337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239319, 36.947865, 37.288857>,  <35.518684, 36.651054, 37.362350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239319, 36.947865, 37.288857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551712, 36.762863, 37.120972>,  <36.739147, 36.651863, 37.020241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551712, 36.762863, 37.120972>,  <36.239319, 36.947865, 37.288857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551712, 36.762863, 37.120972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342494, -0.879116, 0.331441,
		-0.522270, -0.115099, -0.844977,
		0.780981, -0.462501, -0.419715,
		36.786007, 36.624111, 36.995056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981758, 36.523922, 36.732002>,  <36.239319, 36.947865, 37.288857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981758, 36.523922, 36.732002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326206, 36.390575, 36.885540>,  <36.532875, 36.310566, 36.977661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326206, 36.390575, 36.885540>,  <35.981758, 36.523922, 36.732002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326206, 36.390575, 36.885540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408953, -0.902749, 0.133420,
		0.302034, -0.271864, -0.913710,
		0.861123, -0.333367, 0.383841,
		36.584541, 36.290565, 37.000690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049549, 35.890583, 36.426651>,  <35.981758, 36.523922, 36.732002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049549, 35.890583, 36.426651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295963, 35.843315, 36.738171>,  <36.443813, 35.814957, 36.925083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295963, 35.843315, 36.738171>,  <36.049549, 35.890583, 36.426651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295963, 35.843315, 36.738171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532812, -0.790707, 0.301486,
		0.580180, -0.600682, -0.550066,
		0.616038, -0.118166, 0.778803,
		36.480774, 35.807865, 36.971813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298714, 35.200378, 36.396988>,  <36.049549, 35.890583, 36.426651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298714, 35.200378, 36.396988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350433, 35.300900, 36.780682>,  <36.381466, 35.361214, 37.010899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350433, 35.300900, 36.780682>,  <36.298714, 35.200378, 36.396988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350433, 35.300900, 36.780682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497600, -0.820294, 0.281979,
		0.857715, -0.513774, 0.018985,
		0.129300, 0.251305, 0.959233,
		36.389225, 35.376289, 37.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389244, 34.532654, 36.761005>,  <36.298714, 35.200378, 36.396988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389244, 34.532654, 36.761005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295635, 34.790359, 37.052250>,  <36.239468, 34.944984, 37.226997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295635, 34.790359, 37.052250>,  <36.389244, 34.532654, 36.761005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295635, 34.790359, 37.052250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604142, -0.683136, 0.410289,
		0.761738, -0.343867, 0.549101,
		-0.234026, 0.644267, 0.728115,
		36.225426, 34.983639, 37.270683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571117, 34.232792, 37.497952>,  <36.389244, 34.532654, 36.761005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571117, 34.232792, 37.497952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315495, 34.528008, 37.584576>,  <36.162121, 34.705139, 37.636551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315495, 34.528008, 37.584576>,  <36.571117, 34.232792, 37.497952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315495, 34.528008, 37.584576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460943, -0.592877, 0.660325,
		0.615740, 0.322166, 0.719079,
		-0.639059, 0.738043, 0.216557,
		36.123775, 34.749420, 37.649544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508869, 34.221401, 38.286701>,  <36.571117, 34.232792, 37.497952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508869, 34.221401, 38.286701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200272, 34.443089, 38.161709>,  <36.015114, 34.576099, 38.086716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200272, 34.443089, 38.161709>,  <36.508869, 34.221401, 38.286701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200272, 34.443089, 38.161709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546983, -0.326898, 0.770680,
		0.324977, 0.765493, 0.555347,
		-0.771492, 0.554218, -0.312477,
		35.968822, 34.609356, 38.067966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261883, 34.733894, 38.736916>,  <36.508869, 34.221401, 38.286701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261883, 34.733894, 38.736916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945293, 34.651646, 38.506683>,  <35.755341, 34.602295, 38.368546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945293, 34.651646, 38.506683>,  <36.261883, 34.733894, 38.736916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945293, 34.651646, 38.506683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522549, -0.260832, 0.811732,
		-0.317041, 0.943232, 0.098993,
		-0.791472, -0.205624, -0.575579,
		35.707851, 34.589958, 38.334011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806248, 34.950775, 39.114918>,  <36.261883, 34.733894, 38.736916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806248, 34.950775, 39.114918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613190, 34.676548, 38.896904>,  <35.497356, 34.512012, 38.766098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613190, 34.676548, 38.896904>,  <35.806248, 34.950775, 39.114918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613190, 34.676548, 38.896904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500890, -0.294425, 0.813894,
		-0.718447, 0.665820, -0.201290,
		-0.482642, -0.685564, -0.545031,
		35.468395, 34.470879, 38.733395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195698, 34.998119, 39.358940>,  <35.806248, 34.950775, 39.114918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195698, 34.998119, 39.358940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152401, 34.642509, 39.180988>,  <35.126423, 34.429142, 39.074215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152401, 34.642509, 39.180988>,  <35.195698, 34.998119, 39.358940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152401, 34.642509, 39.180988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492809, -0.340672, 0.800676,
		-0.863379, 0.305909, -0.401244,
		-0.108241, -0.889023, -0.444884,
		35.119930, 34.375801, 39.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478241, 34.767166, 39.530701>,  <35.195698, 34.998119, 39.358940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478241, 34.767166, 39.530701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697731, 34.445698, 39.438606>,  <34.829426, 34.252815, 39.383350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697731, 34.445698, 39.438606>,  <34.478241, 34.767166, 39.530701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697731, 34.445698, 39.438606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252440, -0.421828, 0.870824,
		-0.796978, -0.419723, -0.434348,
		0.548725, -0.803675, -0.230233,
		34.862350, 34.204594, 39.369537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024456, 34.266273, 39.637318>,  <34.478241, 34.767166, 39.530701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024456, 34.266273, 39.637318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377895, 34.079086, 39.643757>,  <34.589958, 33.966774, 39.647621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377895, 34.079086, 39.643757>,  <34.024456, 34.266273, 39.637318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377895, 34.079086, 39.643757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293650, -0.527033, 0.797500,
		-0.364720, -0.709398, -0.603104,
		0.883600, -0.467965, 0.016095,
		34.642975, 33.938698, 39.648586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926353, 33.564217, 39.796391>,  <34.024456, 34.266273, 39.637318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926353, 33.564217, 39.796391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316277, 33.598015, 39.878956>,  <34.550232, 33.618294, 39.928497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316277, 33.598015, 39.878956>,  <33.926353, 33.564217, 39.796391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316277, 33.598015, 39.878956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145942, -0.458201, 0.876785,
		0.168670, -0.884823, -0.434326,
		0.974808, 0.084501, 0.206417,
		34.608719, 33.623363, 39.940880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101646, 32.904221, 40.228256>,  <33.926353, 33.564217, 39.796391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101646, 32.904221, 40.228256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377762, 33.185066, 40.298164>,  <34.543430, 33.353573, 40.340111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377762, 33.185066, 40.298164>,  <34.101646, 32.904221, 40.228256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377762, 33.185066, 40.298164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075132, -0.170691, 0.982456,
		0.719626, -0.691306, -0.065074,
		0.690285, 0.702112, 0.174773,
		34.584846, 33.395699, 40.350597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942822, 32.307037, 39.969322>,  <34.101646, 32.904221, 40.228256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942822, 32.307037, 39.969322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690117, 31.997391, 39.985424>,  <33.538494, 31.811604, 39.995087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690117, 31.997391, 39.985424>,  <33.942822, 32.307037, 39.969322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690117, 31.997391, 39.985424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196314, 0.109544, -0.974403,
		0.749892, -0.623493, -0.221176,
		-0.631762, -0.774117, 0.040254,
		33.500587, 31.765156, 39.997501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137825, 31.911068, 39.432659>,  <33.942822, 32.307037, 39.969322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137825, 31.911068, 39.432659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769337, 31.781303, 39.518555>,  <33.548244, 31.703445, 39.570091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769337, 31.781303, 39.518555>,  <34.137825, 31.911068, 39.432659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769337, 31.781303, 39.518555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254623, 0.085428, -0.963260,
		0.294149, -0.942050, -0.161301,
		-0.921218, -0.324412, 0.214739,
		33.492970, 31.683981, 39.582977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983784, 31.371092, 38.947453>,  <34.137825, 31.911068, 39.432659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983784, 31.371092, 38.947453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634666, 31.516392, 39.077854>,  <33.425194, 31.603571, 39.156094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634666, 31.516392, 39.077854>,  <33.983784, 31.371092, 38.947453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634666, 31.516392, 39.077854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345762, 0.011267, -0.938255,
		-0.344494, -0.931623, 0.115765,
		-0.872796, 0.363250, 0.326001,
		33.372829, 31.625366, 39.175655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539051, 31.035063, 38.431438>,  <33.983784, 31.371092, 38.947453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539051, 31.035063, 38.431438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317596, 31.314903, 38.612122>,  <33.184723, 31.482807, 38.720531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317596, 31.314903, 38.612122>,  <33.539051, 31.035063, 38.431438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317596, 31.314903, 38.612122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459818, 0.195423, -0.866243,
		-0.694298, -0.687292, 0.213494,
		-0.553641, 0.699599, 0.451711,
		33.151505, 31.524782, 38.747635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923504, 30.966806, 38.008907>,  <33.539051, 31.035063, 38.431438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923504, 30.966806, 38.008907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898365, 31.325497, 38.184151>,  <32.883282, 31.540710, 38.289295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898365, 31.325497, 38.184151>,  <32.923504, 30.966806, 38.008907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898365, 31.325497, 38.184151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441784, 0.368628, -0.817888,
		-0.894917, -0.244950, 0.372991,
		-0.062847, 0.896724, 0.438106,
		32.879513, 31.594513, 38.315582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244122, 31.134882, 37.942368>,  <32.923504, 30.966806, 38.008907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244122, 31.134882, 37.942368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435535, 31.477577, 38.019314>,  <32.550385, 31.683195, 38.065479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435535, 31.477577, 38.019314>,  <32.244122, 31.134882, 37.942368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435535, 31.477577, 38.019314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337569, 0.381737, -0.860421,
		-0.810589, 0.346804, 0.471883,
		0.478533, 0.856740, 0.192361,
		32.579094, 31.734600, 38.077023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726639, 31.698429, 37.938297>,  <32.244122, 31.134882, 37.942368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726639, 31.698429, 37.938297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078640, 31.873018, 37.863377>,  <32.289841, 31.977772, 37.818424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078640, 31.873018, 37.863377>,  <31.726639, 31.698429, 37.938297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078640, 31.873018, 37.863377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423492, 0.542505, -0.725495,
		-0.215048, 0.717760, 0.662251,
		0.880005, 0.436474, -0.187301,
		32.342640, 32.003960, 37.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610764, 32.358234, 38.005379>,  <31.726639, 31.698429, 37.938297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610764, 32.358234, 38.005379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944357, 32.362740, 37.784710>,  <32.144512, 32.365444, 37.652309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944357, 32.362740, 37.784710>,  <31.610764, 32.358234, 38.005379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944357, 32.362740, 37.784710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391808, 0.716074, -0.577690,
		0.388529, 0.697934, 0.601610,
		0.833986, 0.011266, -0.551671,
		32.194553, 32.366119, 37.619209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901407, 33.117638, 37.922562>,  <31.610764, 32.358234, 38.005379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901407, 33.117638, 37.922562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014816, 32.896732, 37.608971>,  <32.082863, 32.764191, 37.420815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014816, 32.896732, 37.608971>,  <31.901407, 33.117638, 37.922562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014816, 32.896732, 37.608971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345023, 0.704032, -0.620724,
		0.894748, 0.446480, 0.009067,
		0.283524, -0.552263, -0.783977,
		32.099873, 32.731052, 37.373779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203678, 33.583656, 37.494816>,  <31.901407, 33.117638, 37.922562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203678, 33.583656, 37.494816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142498, 33.259518, 37.268562>,  <32.105789, 33.065033, 37.132809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142498, 33.259518, 37.268562>,  <32.203678, 33.583656, 37.494816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142498, 33.259518, 37.268562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455416, 0.565766, -0.687390,
		0.877043, 0.152466, -0.455577,
		-0.152946, -0.810348, -0.565636,
		32.096615, 33.016415, 37.098873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332958, 33.771385, 36.869923>,  <32.203678, 33.583656, 37.494816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332958, 33.771385, 36.869923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102173, 33.453773, 36.793358>,  <31.963701, 33.263206, 36.747421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102173, 33.453773, 36.793358>,  <32.332958, 33.771385, 36.869923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102173, 33.453773, 36.793358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443186, 0.501196, -0.743228,
		0.686077, -0.343984, -0.641072,
		-0.576962, -0.794026, -0.191410,
		31.929085, 33.215565, 36.735935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174797, 33.761169, 36.196850>,  <32.332958, 33.771385, 36.869923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174797, 33.761169, 36.196850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887463, 33.541378, 36.367527>,  <31.715063, 33.409504, 36.469933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887463, 33.541378, 36.367527>,  <32.174797, 33.761169, 36.196850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887463, 33.541378, 36.367527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694913, 0.537580, -0.477601,
		0.033052, -0.639591, -0.768005,
		-0.718333, -0.549483, 0.426692,
		31.671963, 33.376534, 36.495533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.321228, 30.518038, 43.885742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970684, 30.634384, 43.732174>,  <32.760357, 30.704191, 43.640034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970684, 30.634384, 43.732174>,  <33.321228, 30.518038, 43.885742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970684, 30.634384, 43.732174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323910, -0.234035, -0.916684,
		-0.356483, -0.927698, 0.110885,
		-0.876357, 0.290865, -0.383920,
		32.707775, 30.721643, 43.616997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324684, 29.974983, 43.257053>,  <33.321228, 30.518038, 43.885742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324684, 29.974983, 43.257053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.062813, 30.271774, 43.199280>,  <32.905689, 30.449850, 43.164616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.062813, 30.271774, 43.199280>,  <33.324684, 29.974983, 43.257053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062813, 30.271774, 43.199280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222957, 0.006968, -0.974804,
		-0.722278, -0.670387, -0.169992,
		-0.654680, 0.741979, -0.144434,
		32.866409, 30.494368, 43.155949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982616, 29.863611, 42.600658>,  <33.324684, 29.974983, 43.257053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982616, 29.863611, 42.600658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955170, 30.258099, 42.660877>,  <32.938702, 30.494791, 42.697006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955170, 30.258099, 42.660877>,  <32.982616, 29.863611, 42.600658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955170, 30.258099, 42.660877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042306, 0.153641, -0.987221,
		-0.996746, -0.061368, -0.052264,
		-0.068614, 0.986219, 0.150545,
		32.934586, 30.553965, 42.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623272, 30.195847, 41.950882>,  <32.982616, 29.863611, 42.600658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623272, 30.195847, 41.950882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.773170, 30.517593, 42.135300>,  <32.863110, 30.710642, 42.245949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.773170, 30.517593, 42.135300>,  <32.623272, 30.195847, 41.950882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773170, 30.517593, 42.135300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142406, 0.441438, -0.885919,
		-0.916124, 0.397652, 0.050882,
		0.374749, 0.804366, 0.461040,
		32.885593, 30.758904, 42.273613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244881, 30.727116, 41.743134>,  <32.623272, 30.195847, 41.950882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244881, 30.727116, 41.743134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.609024, 30.841684, 41.862610>,  <32.827511, 30.910425, 41.934296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.609024, 30.841684, 41.862610>,  <32.244881, 30.727116, 41.743134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609024, 30.841684, 41.862610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174421, 0.388967, -0.904590,
		-0.375277, 0.875595, 0.304139,
		0.910354, 0.286424, 0.298692,
		32.882130, 30.927612, 41.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215862, 31.335356, 41.536366>,  <32.244881, 30.727116, 41.743134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215862, 31.335356, 41.536366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598957, 31.224850, 41.568413>,  <32.828815, 31.158546, 41.587643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598957, 31.224850, 41.568413>,  <32.215862, 31.335356, 41.536366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598957, 31.224850, 41.568413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216024, 0.506870, -0.834516,
		0.189935, 0.816554, 0.545128,
		0.957736, -0.276265, 0.080122,
		32.886276, 31.141970, 41.592449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576836, 31.901655, 41.411057>,  <32.215862, 31.335356, 41.536366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576836, 31.901655, 41.411057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.847927, 31.619247, 41.328865>,  <33.010582, 31.449802, 41.279552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.847927, 31.619247, 41.328865>,  <32.576836, 31.901655, 41.411057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847927, 31.619247, 41.328865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204941, 0.449733, -0.869333,
		0.706173, 0.547063, 0.449490,
		0.677730, -0.706018, -0.205474,
		33.051247, 31.407442, 41.267223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081322, 32.273251, 41.046062>,  <32.576836, 31.901655, 41.411057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081322, 32.273251, 41.046062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182838, 31.895975, 40.960285>,  <33.243748, 31.669611, 40.908817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182838, 31.895975, 40.960285>,  <33.081322, 32.273251, 41.046062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182838, 31.895975, 40.960285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244228, 0.277008, -0.929312,
		0.935917, 0.183481, 0.300655,
		0.253795, -0.943187, -0.214445,
		33.258976, 31.613020, 40.895950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691208, 32.327526, 40.736435>,  <33.081322, 32.273251, 41.046062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691208, 32.327526, 40.736435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566650, 31.970348, 40.606403>,  <33.491917, 31.756041, 40.528385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566650, 31.970348, 40.606403>,  <33.691208, 32.327526, 40.736435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566650, 31.970348, 40.606403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195003, 0.274760, -0.941531,
		0.930057, -0.356582, 0.088568,
		-0.311398, -0.892948, -0.325077,
		33.473232, 31.702463, 40.508881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499443, 32.565334, 40.717529>,  <33.691208, 32.327526, 40.736435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499443, 32.565334, 40.717529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584549, 32.952904, 40.768002>,  <34.635612, 33.185444, 40.798286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584549, 32.952904, 40.768002>,  <34.499443, 32.565334, 40.717529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584549, 32.952904, 40.768002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042152, -0.138119, 0.989518,
		0.976194, -0.205217, -0.070229,
		0.212766, 0.968922, 0.126180,
		34.648380, 33.243580, 40.805855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051620, 32.552494, 41.205624>,  <34.499443, 32.565334, 40.717529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051620, 32.552494, 41.205624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863625, 32.905560, 41.204365>,  <34.750828, 33.117401, 41.203609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863625, 32.905560, 41.204365>,  <35.051620, 32.552494, 41.205624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863625, 32.905560, 41.204365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182428, -0.093652, 0.978749,
		0.863614, 0.460576, 0.205039,
		-0.469991, 0.882666, -0.003143,
		34.722626, 33.170361, 41.203423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227612, 32.881069, 41.826683>,  <35.051620, 32.552494, 41.205624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227612, 32.881069, 41.826683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908642, 33.097725, 41.720291>,  <34.717258, 33.227718, 41.656456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.908642, 33.097725, 41.720291>,  <35.227612, 32.881069, 41.826683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908642, 33.097725, 41.720291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237997, 0.122740, 0.963479,
		0.554503, 0.831603, 0.031032,
		-0.797423, 0.541637, -0.265979,
		34.669415, 33.260216, 41.640499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140408, 33.362919, 42.441986>,  <35.227612, 32.881069, 41.826683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140408, 33.362919, 42.441986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786316, 33.392986, 42.258366>,  <34.573860, 33.411026, 42.148193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.786316, 33.392986, 42.258366>,  <35.140408, 33.362919, 42.441986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786316, 33.392986, 42.258366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454491, 0.070388, 0.887966,
		0.099058, 0.994684, -0.028146,
		-0.885226, 0.075168, -0.459048,
		34.520748, 33.415535, 42.120651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851513, 33.918404, 42.682716>,  <35.140408, 33.362919, 42.441986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851513, 33.918404, 42.682716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554352, 33.669296, 42.584530>,  <34.376057, 33.519833, 42.525620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.554352, 33.669296, 42.584530>,  <34.851513, 33.918404, 42.682716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554352, 33.669296, 42.584530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397265, 0.115035, 0.910465,
		-0.538772, 0.773903, -0.332864,
		-0.742904, -0.622768, -0.245467,
		34.331482, 33.482468, 42.510891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313450, 34.237541, 43.035912>,  <34.851513, 33.918404, 42.682716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313450, 34.237541, 43.035912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171528, 33.887657, 42.903854>,  <34.086376, 33.677727, 42.824619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.171528, 33.887657, 42.903854>,  <34.313450, 34.237541, 43.035912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171528, 33.887657, 42.903854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518975, -0.109458, 0.847752,
		-0.777676, 0.472118, -0.415119,
		-0.354801, -0.874713, -0.330140,
		34.065086, 33.625244, 42.804813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554043, 34.145081, 43.122139>,  <34.313450, 34.237541, 43.035912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554043, 34.145081, 43.122139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.659977, 33.759491, 43.132034>,  <33.723537, 33.528137, 43.137974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.659977, 33.759491, 43.132034>,  <33.554043, 34.145081, 43.122139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659977, 33.759491, 43.132034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344641, -0.070660, 0.936072,
		-0.900602, -0.256435, -0.350939,
		0.264839, -0.963975, 0.024742,
		33.739429, 33.470299, 43.139458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021694, 33.769672, 43.430614>,  <33.554043, 34.145081, 43.122139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021694, 33.769672, 43.430614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.335808, 33.523369, 43.456413>,  <33.524277, 33.375587, 43.471893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.335808, 33.523369, 43.456413>,  <33.021694, 33.769672, 43.430614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335808, 33.523369, 43.456413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266185, -0.241735, 0.933118,
		-0.558989, -0.749934, -0.353738,
		0.785288, -0.615762, 0.064494,
		33.571396, 33.338642, 43.475761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731438, 33.193523, 43.726559>,  <33.021694, 33.769672, 43.430614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731438, 33.193523, 43.726559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125587, 33.161144, 43.786541>,  <33.362076, 33.141716, 43.822529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125587, 33.161144, 43.786541>,  <32.731438, 33.193523, 43.726559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125587, 33.161144, 43.786541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160391, -0.143321, 0.976593,
		-0.057562, -0.986360, -0.154209,
		0.985374, -0.080948, 0.149954,
		33.421200, 33.136860, 43.831528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771523, 32.594315, 44.082054>,  <32.731438, 33.193523, 43.726559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771523, 32.594315, 44.082054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102657, 32.805725, 44.157261>,  <33.301338, 32.932571, 44.202385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102657, 32.805725, 44.157261>,  <32.771523, 32.594315, 44.082054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102657, 32.805725, 44.157261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160172, -0.098519, 0.982160,
		0.537618, -0.843183, 0.003098,
		0.827835, 0.528523, 0.188020,
		33.351009, 32.964283, 44.213665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014984, 32.226055, 44.635498>,  <32.771523, 32.594315, 44.082054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014984, 32.226055, 44.635498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208908, 32.575897, 44.637360>,  <33.325264, 32.785805, 44.638477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.208908, 32.575897, 44.637360>,  <33.014984, 32.226055, 44.635498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208908, 32.575897, 44.637360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040671, -0.027854, 0.998784,
		0.873674, -0.484030, -0.049075,
		0.484808, 0.874608, 0.004650,
		33.354351, 32.838280, 44.638756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466419, 32.147026, 45.220963>,  <33.014984, 32.226055, 44.635498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466419, 32.147026, 45.220963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460911, 32.539951, 45.146259>,  <33.457607, 32.775707, 45.101437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.460911, 32.539951, 45.146259>,  <33.466419, 32.147026, 45.220963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460911, 32.539951, 45.146259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184127, 0.186072, 0.965130,
		0.982806, -0.021099, -0.183432,
		-0.013768, 0.982310, -0.186757,
		33.456779, 32.834644, 45.090233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004070, 32.375984, 45.583752>,  <33.466419, 32.147026, 45.220963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004070, 32.375984, 45.583752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749382, 32.682400, 45.548485>,  <33.596569, 32.866249, 45.527325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749382, 32.682400, 45.548485>,  <34.004070, 32.375984, 45.583752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749382, 32.682400, 45.548485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015749, 0.127238, 0.991747,
		0.770931, 0.630080, -0.093080,
		-0.636723, 0.766035, -0.088169,
		33.558365, 32.912209, 45.522034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251339, 32.966404, 45.926838>,  <34.004070, 32.375984, 45.583752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251339, 32.966404, 45.926838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.857224, 33.034367, 45.919422>,  <33.620754, 33.075146, 45.914974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.857224, 33.034367, 45.919422>,  <34.251339, 32.966404, 45.926838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857224, 33.034367, 45.919422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014124, 0.027163, 0.999531,
		0.170333, 0.985085, -0.024364,
		-0.985285, 0.169909, -0.018541,
		33.561638, 33.085339, 45.913860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<26.832670, 34.516369, 46.467419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209251, 34.417263, 46.375965>,  <27.435200, 34.357800, 46.321095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.209251, 34.417263, 46.375965>,  <26.832670, 34.516369, 46.467419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209251, 34.417263, 46.375965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114387, 0.403179, -0.907944,
		0.317140, 0.880941, 0.351233,
		0.941455, -0.247769, -0.228632,
		27.491688, 34.342934, 46.307377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086369, 35.122768, 46.097038>,  <26.832670, 34.516369, 46.467419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086369, 35.122768, 46.097038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346003, 34.829353, 46.016426>,  <27.501783, 34.653305, 45.968060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346003, 34.829353, 46.016426>,  <27.086369, 35.122768, 46.097038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346003, 34.829353, 46.016426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255345, 0.459638, -0.850607,
		0.716578, 0.500659, 0.485650,
		0.649087, -0.733535, -0.201526,
		27.540730, 34.609291, 45.955967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739420, 35.500156, 45.926277>,  <27.086369, 35.122768, 46.097038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739420, 35.500156, 45.926277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.755060, 35.140163, 45.752609>,  <27.764444, 34.924168, 45.648407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.755060, 35.140163, 45.752609>,  <27.739420, 35.500156, 45.926277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755060, 35.140163, 45.752609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354234, 0.418769, -0.836152,
		0.934339, -0.121104, 0.335179,
		0.039101, -0.899981, -0.434172,
		27.766790, 34.870171, 45.622356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377010, 35.633736, 45.567459>,  <27.739420, 35.500156, 45.926277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377010, 35.633736, 45.567459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.223064, 35.303864, 45.401672>,  <28.130697, 35.105942, 45.302200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.223064, 35.303864, 45.401672>,  <28.377010, 35.633736, 45.567459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223064, 35.303864, 45.401672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206319, 0.360829, -0.909525,
		0.899617, -0.435558, 0.031276,
		-0.384866, -0.824677, -0.414472,
		28.107605, 35.056461, 45.277332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890345, 35.441902, 45.104298>,  <28.377010, 35.633736, 45.567459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890345, 35.441902, 45.104298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519955, 35.319653, 45.015606>,  <28.297720, 35.246304, 44.962391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.519955, 35.319653, 45.015606>,  <28.890345, 35.441902, 45.104298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519955, 35.319653, 45.015606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127491, 0.299661, -0.945489,
		0.355414, -0.903765, -0.238513,
		-0.925973, -0.305632, -0.221726,
		28.242163, 35.227962, 44.949089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990196, 35.391712, 44.328907>,  <28.890345, 35.441902, 45.104298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990196, 35.391712, 44.328907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601503, 35.382172, 44.422859>,  <28.368288, 35.376446, 44.479229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.601503, 35.382172, 44.422859>,  <28.990196, 35.391712, 44.328907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601503, 35.382172, 44.422859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235238, 0.182032, -0.954739,
		-0.019985, -0.983003, -0.182497,
		-0.971732, -0.023850, 0.234878,
		28.309984, 35.375015, 44.493324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685221, 34.959774, 43.828625>,  <28.990196, 35.391712, 44.328907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685221, 34.959774, 43.828625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.374231, 35.172585, 43.962780>,  <28.187637, 35.300270, 44.043274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.374231, 35.172585, 43.962780>,  <28.685221, 34.959774, 43.828625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374231, 35.172585, 43.962780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296162, 0.160740, -0.941515,
		-0.554821, -0.831331, 0.032595,
		-0.777471, 0.532026, 0.335391,
		28.140989, 35.332191, 44.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015436, 34.789585, 43.478386>,  <28.685221, 34.959774, 43.828625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015436, 34.789585, 43.478386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.970064, 35.154060, 43.636810>,  <27.942841, 35.372746, 43.731865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.970064, 35.154060, 43.636810>,  <28.015436, 34.789585, 43.478386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970064, 35.154060, 43.636810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398826, 0.323350, -0.858128,
		-0.909984, -0.255300, 0.326727,
		-0.113432, 0.911190, 0.396064,
		27.936035, 35.427418, 43.755630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442728, 34.863239, 43.204887>,  <28.015436, 34.789585, 43.478386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442728, 34.863239, 43.204887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.596409, 35.210869, 43.329525>,  <27.688618, 35.419449, 43.404308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.596409, 35.210869, 43.329525>,  <27.442728, 34.863239, 43.204887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596409, 35.210869, 43.329525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088767, 0.370709, -0.924497,
		-0.918972, 0.327533, 0.219573,
		0.384201, 0.869078, 0.311597,
		27.711670, 35.471592, 43.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932959, 35.489491, 43.018703>,  <27.442728, 34.863239, 43.204887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932959, 35.489491, 43.018703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.289959, 35.657024, 43.085663>,  <27.504158, 35.757545, 43.125839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.289959, 35.657024, 43.085663>,  <26.932959, 35.489491, 43.018703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289959, 35.657024, 43.085663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005534, 0.381267, -0.924448,
		-0.451014, 0.824144, 0.342599,
		0.892500, 0.418835, 0.167396,
		27.557709, 35.782677, 43.135883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837488, 36.196266, 42.806938>,  <26.932959, 35.489491, 43.018703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837488, 36.196266, 42.806938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.217741, 36.074093, 42.784992>,  <27.445892, 36.000790, 42.771824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.217741, 36.074093, 42.784992>,  <26.837488, 36.196266, 42.806938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217741, 36.074093, 42.784992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061432, 0.358514, -0.931501,
		0.304183, 0.882143, 0.359578,
		0.950631, -0.305436, -0.054862,
		27.502930, 35.982464, 42.768532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272326, 36.795834, 42.725399>,  <26.837488, 36.196266, 42.806938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272326, 36.795834, 42.725399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.485220, 36.483406, 42.594765>,  <27.612957, 36.295948, 42.516384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.485220, 36.483406, 42.594765>,  <27.272326, 36.795834, 42.725399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485220, 36.483406, 42.594765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154507, 0.468900, -0.869632,
		0.832379, 0.412388, 0.370245,
		0.532234, -0.781069, -0.326586,
		27.644890, 36.249084, 42.496788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859819, 37.052177, 42.413277>,  <27.272326, 36.795834, 42.725399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859819, 37.052177, 42.413277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.852913, 36.676476, 42.276161>,  <27.848768, 36.451054, 42.193893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.852913, 36.676476, 42.276161>,  <27.859819, 37.052177, 42.413277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852913, 36.676476, 42.276161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347684, 0.315801, -0.882828,
		0.937453, -0.134424, 0.321111,
		-0.017266, -0.939255, -0.342785,
		27.847733, 36.394699, 42.173325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445253, 36.991154, 41.991325>,  <27.859819, 37.052177, 42.413277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445253, 36.991154, 41.991325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.217644, 36.684147, 41.873260>,  <28.081078, 36.499943, 41.802422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.217644, 36.684147, 41.873260>,  <28.445253, 36.991154, 41.991325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217644, 36.684147, 41.873260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110723, 0.284161, -0.952362,
		0.814832, -0.574599, -0.076713,
		-0.569025, -0.767521, -0.295165,
		28.046936, 36.453892, 41.784710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210552, 36.999126, 41.923893>,  <28.445253, 36.991154, 41.991325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210552, 36.999126, 41.923893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492428, 37.282265, 41.904438>,  <29.661554, 37.452148, 41.892765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.492428, 37.282265, 41.904438>,  <29.210552, 36.999126, 41.923893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492428, 37.282265, 41.904438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052080, 0.016766, 0.998502,
		0.707601, -0.706168, -0.025050,
		0.704690, 0.707846, -0.048641,
		29.703835, 37.494617, 41.889847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795303, 36.768841, 42.339436>,  <29.210552, 36.999126, 41.923893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795303, 36.768841, 42.339436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860394, 37.163506, 42.341026>,  <29.899448, 37.400303, 42.341980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860394, 37.163506, 42.341026>,  <29.795303, 36.768841, 42.339436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860394, 37.163506, 42.341026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144525, -0.027824, 0.989110,
		0.976029, -0.160378, -0.147125,
		0.162725, 0.986664, 0.003979,
		29.909210, 37.459503, 42.342220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478237, 36.899414, 42.762508>,  <29.795303, 36.768841, 42.339436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478237, 36.899414, 42.762508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.215666, 37.201012, 42.752697>,  <30.058123, 37.381969, 42.746811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.215666, 37.201012, 42.752697>,  <30.478237, 36.899414, 42.762508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215666, 37.201012, 42.752697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092146, 0.112413, 0.989380,
		0.748742, 0.647194, -0.143268,
		-0.656426, 0.753991, -0.024532,
		30.018738, 37.427208, 42.745338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803579, 37.416080, 43.207802>,  <30.478237, 36.899414, 42.762508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803579, 37.416080, 43.207802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.424049, 37.541718, 43.194649>,  <30.196331, 37.617100, 43.186756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.424049, 37.541718, 43.194649>,  <30.803579, 37.416080, 43.207802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424049, 37.541718, 43.194649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040555, -0.017912, 0.999017,
		0.313191, 0.949225, 0.029733,
		-0.948824, 0.314089, -0.032885,
		30.139402, 37.635944, 43.184784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756880, 37.875690, 43.699203>,  <30.803579, 37.416080, 43.207802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756880, 37.875690, 43.699203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370640, 37.787197, 43.644547>,  <30.138895, 37.734100, 43.611752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.370640, 37.787197, 43.644547>,  <30.756880, 37.875690, 43.699203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370640, 37.787197, 43.644547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152649, 0.056857, 0.986644,
		-0.210507, 0.973563, -0.088671,
		-0.965601, -0.221231, -0.136645,
		30.080959, 37.720829, 43.603554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410221, 38.231888, 44.149761>,  <30.756880, 37.875690, 43.699203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410221, 38.231888, 44.149761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.141682, 37.940830, 44.093449>,  <29.980558, 37.766193, 44.059662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.141682, 37.940830, 44.093449>,  <30.410221, 38.231888, 44.149761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141682, 37.940830, 44.093449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062936, -0.133297, 0.989076,
		-0.738465, 0.672874, 0.043693,
		-0.671348, -0.727648, -0.140784,
		29.940277, 37.722534, 44.051212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971830, 38.369930, 44.706829>,  <30.410221, 38.231888, 44.149761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971830, 38.369930, 44.706829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907625, 37.993439, 44.587955>,  <29.869102, 37.767544, 44.516632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907625, 37.993439, 44.587955>,  <29.971830, 38.369930, 44.706829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907625, 37.993439, 44.587955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033604, -0.306124, 0.951398,
		-0.986461, 0.142726, 0.080766,
		-0.160513, -0.941232, -0.297183,
		29.859470, 37.711067, 44.498802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336256, 38.098591, 45.007687>,  <29.971830, 38.369930, 44.706829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336256, 38.098591, 45.007687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.568190, 37.792530, 44.895737>,  <29.707350, 37.608894, 44.828568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.568190, 37.792530, 44.895737>,  <29.336256, 38.098591, 45.007687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568190, 37.792530, 44.895737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034254, -0.366111, 0.929941,
		-0.814014, -0.529625, -0.238493,
		0.579835, -0.765154, -0.279878,
		29.742140, 37.562984, 44.811775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002203, 37.566097, 45.175869>,  <29.336256, 38.098591, 45.007687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002203, 37.566097, 45.175869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364079, 37.397781, 45.149124>,  <29.581203, 37.296791, 45.133076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364079, 37.397781, 45.149124>,  <29.002203, 37.566097, 45.175869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364079, 37.397781, 45.149124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108485, -0.379254, 0.918911,
		-0.412037, -0.824072, -0.388756,
		0.904686, -0.420799, -0.066868,
		29.635485, 37.271542, 45.129066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979843, 36.953087, 45.460056>,  <29.002203, 37.566097, 45.175869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979843, 36.953087, 45.460056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.378090, 36.985264, 45.479145>,  <29.617037, 37.004570, 45.490601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.378090, 36.985264, 45.479145>,  <28.979843, 36.953087, 45.460056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378090, 36.985264, 45.479145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005803, -0.456139, 0.889890,
		0.093355, -0.886266, -0.453672,
		0.995616, 0.080443, 0.047726,
		29.676775, 37.009396, 45.493462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161427, 36.332375, 45.668079>,  <28.979843, 36.953087, 45.460056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161427, 36.332375, 45.668079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.459579, 36.582310, 45.761013>,  <29.638472, 36.732273, 45.816772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.459579, 36.582310, 45.761013>,  <29.161427, 36.332375, 45.668079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459579, 36.582310, 45.761013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139606, -0.487098, 0.862117,
		0.651855, -0.610172, -0.450306,
		0.745383, 0.624840, 0.232333,
		29.683195, 36.769760, 45.830711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686449, 35.937397, 45.854465>,  <29.161427, 36.332375, 45.668079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686449, 35.937397, 45.854465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762918, 36.284832, 46.037338>,  <29.808800, 36.493294, 46.147060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762918, 36.284832, 46.037338>,  <29.686449, 35.937397, 45.854465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762918, 36.284832, 46.037338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177312, -0.488666, 0.854263,
		0.965408, -0.082250, -0.247431,
		0.191174, 0.868585, 0.457178,
		29.820271, 36.545406, 46.174492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363384, 35.891151, 46.162735>,  <29.686449, 35.937397, 45.854465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363384, 35.891151, 46.162735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.179367, 36.182289, 46.366146>,  <30.068956, 36.356972, 46.488194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.179367, 36.182289, 46.366146>,  <30.363384, 35.891151, 46.162735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179367, 36.182289, 46.366146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081930, -0.535489, 0.840559,
		0.884109, 0.428356, 0.186715,
		-0.460042, 0.727848, 0.508525,
		30.041355, 36.400642, 46.518703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708544, 35.939262, 46.876823>,  <30.363384, 35.891151, 46.162735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708544, 35.939262, 46.876823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350441, 36.113892, 46.912422>,  <30.135580, 36.218670, 46.933781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.350441, 36.113892, 46.912422>,  <30.708544, 35.939262, 46.876823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350441, 36.113892, 46.912422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188997, -0.552993, 0.811467,
		0.403478, 0.709651, 0.577582,
		-0.895257, 0.436570, 0.088999,
		30.081863, 36.244862, 46.939121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453634, 36.243832, 46.914989>,  <30.708544, 35.939262, 46.876823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453634, 36.243832, 46.914989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792732, 36.063141, 47.026184>,  <31.996191, 35.954727, 47.092903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792732, 36.063141, 47.026184>,  <31.453634, 36.243832, 46.914989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792732, 36.063141, 47.026184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451227, 0.338720, -0.825629,
		0.278795, 0.825357, 0.490977,
		0.847743, -0.451723, 0.277990,
		32.047054, 35.927624, 47.109581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995539, 36.795506, 46.845825>,  <31.453634, 36.243832, 46.914989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995539, 36.795506, 46.845825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189781, 36.446148, 46.831036>,  <32.306328, 36.236534, 46.822163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.189781, 36.446148, 46.831036>,  <31.995539, 36.795506, 46.845825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189781, 36.446148, 46.831036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489103, 0.306508, -0.816597,
		0.724544, 0.378462, 0.576023,
		0.485607, -0.873395, -0.036972,
		32.335464, 36.184128, 46.819942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474113, 36.873104, 46.342922>,  <31.995539, 36.795506, 46.845825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474113, 36.873104, 46.342922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533901, 36.480240, 46.388569>,  <32.569775, 36.244522, 46.415958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533901, 36.480240, 46.388569>,  <32.474113, 36.873104, 46.342922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533901, 36.480240, 46.388569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469126, -0.031152, -0.882582,
		0.870390, 0.185458, 0.456099,
		0.149474, -0.982158, 0.114118,
		32.578743, 36.185593, 46.422806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230843, 36.698616, 46.434505>,  <32.474113, 36.873104, 46.342922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230843, 36.698616, 46.434505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047806, 36.380184, 46.276081>,  <32.937984, 36.189125, 46.181026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047806, 36.380184, 46.276081>,  <33.230843, 36.698616, 46.434505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047806, 36.380184, 46.276081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538662, 0.106201, -0.835802,
		0.707428, -0.595799, 0.380223,
		-0.457590, -0.796082, -0.396064,
		32.910530, 36.141361, 46.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717983, 36.205074, 46.171505>,  <33.230843, 36.698616, 46.434505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717983, 36.205074, 46.171505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375587, 36.141228, 45.974812>,  <33.170151, 36.102921, 45.856796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.375587, 36.141228, 45.974812>,  <33.717983, 36.205074, 46.171505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375587, 36.141228, 45.974812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488511, 0.061625, -0.870379,
		0.169228, -0.985254, 0.025223,
		-0.855990, -0.159614, -0.491736,
		33.118790, 36.093346, 45.827290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974430, 36.035461, 45.641212>,  <33.717983, 36.205074, 46.171505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974430, 36.035461, 45.641212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593552, 36.100739, 45.537918>,  <33.365025, 36.139904, 45.475941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593552, 36.100739, 45.537918>,  <33.974430, 36.035461, 45.641212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593552, 36.100739, 45.537918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287167, 0.189889, -0.938870,
		-0.104182, -0.968147, -0.227676,
		-0.952198, 0.163194, -0.258237,
		33.307892, 36.149696, 45.460445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903793, 35.629498, 45.039017>,  <33.974430, 36.035461, 45.641212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903793, 35.629498, 45.039017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590420, 35.878078, 45.040852>,  <33.402393, 36.027229, 45.041954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590420, 35.878078, 45.040852>,  <33.903793, 35.629498, 45.039017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590420, 35.878078, 45.040852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188093, 0.244139, -0.951324,
		-0.592325, -0.744439, -0.308158,
		-0.783436, 0.621455, 0.004586,
		33.355389, 36.064514, 45.042229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528542, 35.567940, 44.427441>,  <33.903793, 35.629498, 45.039017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528542, 35.567940, 44.427441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398209, 35.923294, 44.556805>,  <33.320007, 36.136509, 44.634422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398209, 35.923294, 44.556805>,  <33.528542, 35.567940, 44.427441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398209, 35.923294, 44.556805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121847, 0.299767, -0.946199,
		-0.937543, -0.347710, 0.010573,
		-0.325833, 0.888390, 0.323411,
		33.300457, 36.189812, 44.653828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918861, 35.712181, 44.126675>,  <33.528542, 35.567940, 44.427441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918861, 35.712181, 44.126675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057541, 36.073418, 44.228039>,  <33.140747, 36.290161, 44.288857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.057541, 36.073418, 44.228039>,  <32.918861, 35.712181, 44.126675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057541, 36.073418, 44.228039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127556, 0.313054, -0.941130,
		-0.929263, 0.293964, 0.223730,
		0.346698, 0.903096, 0.253413,
		33.161549, 36.344345, 44.304062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637363, 36.144131, 43.608021>,  <32.918861, 35.712181, 44.126675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637363, 36.144131, 43.608021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920902, 36.365585, 43.782845>,  <33.091026, 36.498459, 43.887737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920902, 36.365585, 43.782845>,  <32.637363, 36.144131, 43.608021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920902, 36.365585, 43.782845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124124, 0.512047, -0.849942,
		-0.694353, 0.656730, 0.294244,
		0.708849, 0.553637, 0.437057,
		33.133556, 36.531677, 43.913963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552551, 36.770737, 43.235558>,  <32.637363, 36.144131, 43.608021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552551, 36.770737, 43.235558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912609, 36.819103, 43.402946>,  <33.128643, 36.848122, 43.503380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912609, 36.819103, 43.402946>,  <32.552551, 36.770737, 43.235558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912609, 36.819103, 43.402946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317877, 0.474492, -0.820860,
		-0.297814, 0.871916, 0.388676,
		0.900145, 0.120913, 0.418472,
		33.182652, 36.855377, 43.528488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751480, 37.465317, 43.118378>,  <32.552551, 36.770737, 43.235558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751480, 37.465317, 43.118378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086308, 37.254898, 43.178493>,  <33.287205, 37.128647, 43.214565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086308, 37.254898, 43.178493>,  <32.751480, 37.465317, 43.118378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086308, 37.254898, 43.178493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420380, 0.442632, -0.792059,
		0.350139, 0.726187, 0.591654,
		0.837068, -0.526050, 0.150292,
		33.337429, 37.097084, 43.223579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271091, 37.923660, 42.785034>,  <32.751480, 37.465317, 43.118378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271091, 37.923660, 42.785034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460068, 37.577328, 42.850922>,  <33.573452, 37.369526, 42.890453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460068, 37.577328, 42.850922>,  <33.271091, 37.923660, 42.785034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460068, 37.577328, 42.850922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524072, 0.125711, -0.842345,
		0.708624, 0.484282, 0.513150,
		0.472442, -0.865833, 0.164717,
		33.601799, 37.317577, 42.900337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955093, 38.107250, 42.934498>,  <33.271091, 37.923660, 42.785034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955093, 38.107250, 42.934498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919086, 37.742523, 42.774254>,  <33.897484, 37.523689, 42.678108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919086, 37.742523, 42.774254>,  <33.955093, 38.107250, 42.934498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919086, 37.742523, 42.774254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489883, 0.309684, -0.814930,
		0.867129, -0.269607, 0.418807,
		-0.090013, -0.911816, -0.400612,
		33.892082, 37.468979, 42.654072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.372358, 39.018581, 26.728868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.481892, 38.643955, 26.816374>,  <24.547611, 38.419178, 26.868877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.481892, 38.643955, 26.816374>,  <24.372358, 39.018581, 26.728868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481892, 38.643955, 26.816374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336239, 0.306327, 0.890566,
		-0.901088, -0.170309, 0.398793,
		0.273832, -0.936568, 0.218763,
		24.564041, 38.362984, 26.882002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160334, 38.860935, 27.412565>,  <24.372358, 39.018581, 26.728868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160334, 38.860935, 27.412565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.443104, 38.581570, 27.367895>,  <24.612766, 38.413952, 27.341093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.443104, 38.581570, 27.367895>,  <24.160334, 38.860935, 27.412565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443104, 38.581570, 27.367895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322413, 0.177672, 0.929775,
		-0.629526, -0.693290, 0.350779,
		0.706927, -0.698414, -0.111677,
		24.655182, 38.372047, 27.334393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215878, 38.482071, 28.085339>,  <24.160334, 38.860935, 27.412565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215878, 38.482071, 28.085339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.560144, 38.430580, 27.888287>,  <24.766705, 38.399685, 27.770056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.560144, 38.430580, 27.888287>,  <24.215878, 38.482071, 28.085339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560144, 38.430580, 27.888287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504708, 0.087857, 0.858808,
		-0.067269, -0.987781, 0.140585,
		0.860665, -0.128726, -0.492631,
		24.818344, 38.391964, 27.740498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657087, 37.835415, 28.311012>,  <24.215878, 38.482071, 28.085339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657087, 37.835415, 28.311012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.875824, 38.137192, 28.165810>,  <25.007067, 38.318260, 28.078688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.875824, 38.137192, 28.165810>,  <24.657087, 37.835415, 28.311012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875824, 38.137192, 28.165810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366259, 0.174322, 0.914038,
		0.752873, -0.632790, -0.180996,
		0.546842, 0.754446, -0.363007,
		25.039877, 38.363525, 28.056908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222572, 37.702923, 28.777445>,  <24.657087, 37.835415, 28.311012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222572, 37.702923, 28.777445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299828, 38.066925, 28.630703>,  <25.346182, 38.285328, 28.542658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.299828, 38.066925, 28.630703>,  <25.222572, 37.702923, 28.777445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299828, 38.066925, 28.630703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467753, 0.243275, 0.849720,
		0.862499, -0.335712, -0.378673,
		0.193139, 0.910008, -0.366855,
		25.357769, 38.339928, 28.520647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922451, 37.823547, 29.010586>,  <25.222572, 37.702923, 28.777445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922451, 37.823547, 29.010586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753630, 38.177792, 28.933052>,  <25.652336, 38.390339, 28.886532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.753630, 38.177792, 28.933052>,  <25.922451, 37.823547, 29.010586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753630, 38.177792, 28.933052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433189, 0.384829, 0.815018,
		0.796378, 0.260015, -0.546053,
		-0.422054, 0.885606, -0.193834,
		25.627014, 38.443474, 28.874903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428343, 38.280529, 29.338785>,  <25.922451, 37.823547, 29.010586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428343, 38.280529, 29.338785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088226, 38.483292, 29.282141>,  <25.884157, 38.604950, 29.248154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088226, 38.483292, 29.282141>,  <26.428343, 38.280529, 29.338785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088226, 38.483292, 29.282141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092804, 0.409247, 0.907692,
		0.518067, 0.758660, -0.395022,
		-0.850291, 0.506905, -0.141611,
		25.833139, 38.635365, 29.239658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613956, 39.028458, 29.535532>,  <26.428343, 38.280529, 29.338785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613956, 39.028458, 29.535532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220160, 38.958752, 29.543644>,  <25.983881, 38.916927, 29.548512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.220160, 38.958752, 29.543644>,  <26.613956, 39.028458, 29.535532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220160, 38.958752, 29.543644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042655, 0.349891, 0.935819,
		-0.170176, 0.920439, -0.351897,
		-0.984490, -0.174264, 0.020282,
		25.924812, 38.906471, 29.549728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291327, 39.671272, 29.645727>,  <26.613956, 39.028458, 29.535532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291327, 39.671272, 29.645727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030262, 39.395115, 29.770557>,  <25.873623, 39.229420, 29.845455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030262, 39.395115, 29.770557>,  <26.291327, 39.671272, 29.645727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030262, 39.395115, 29.770557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132439, 0.301600, 0.944191,
		-0.745985, 0.657568, -0.105407,
		-0.652660, -0.690393, 0.312077,
		25.834463, 39.187996, 29.864180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093771, 39.888958, 30.202885>,  <26.291327, 39.671272, 29.645727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093771, 39.888958, 30.202885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968206, 39.512344, 30.251822>,  <25.892868, 39.286377, 30.281183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968206, 39.512344, 30.251822>,  <26.093771, 39.888958, 30.202885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968206, 39.512344, 30.251822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275563, 0.032962, 0.960717,
		-0.908584, 0.335292, 0.249106,
		-0.313910, -0.941537, 0.122343,
		25.874033, 39.229881, 30.288525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495535, 39.851631, 30.741306>,  <26.093771, 39.888958, 30.202885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495535, 39.851631, 30.741306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.700487, 39.508469, 30.726013>,  <25.823458, 39.302570, 30.716837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.700487, 39.508469, 30.726013>,  <25.495535, 39.851631, 30.741306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700487, 39.508469, 30.726013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169248, 0.057236, 0.983910,
		-0.841917, -0.510605, 0.174526,
		0.512378, -0.857908, -0.038231,
		25.854200, 39.251095, 30.714544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393288, 39.669830, 31.427540>,  <25.495535, 39.851631, 30.741306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393288, 39.669830, 31.427540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.658457, 39.412025, 31.275156>,  <25.817558, 39.257343, 31.183725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.658457, 39.412025, 31.275156>,  <25.393288, 39.669830, 31.427540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658457, 39.412025, 31.275156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324705, -0.210987, 0.921982,
		-0.674609, -0.734905, 0.069409,
		0.662925, -0.644515, -0.380961,
		25.857334, 39.218670, 31.160868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293318, 38.874268, 31.718296>,  <25.393288, 39.669830, 31.427540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293318, 38.874268, 31.718296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670900, 38.955540, 31.614248>,  <25.897449, 39.004303, 31.551819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.670900, 38.955540, 31.614248>,  <25.293318, 38.874268, 31.718296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670900, 38.955540, 31.614248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302146, -0.214709, 0.928767,
		0.132855, -0.955311, -0.264065,
		0.943958, 0.203177, -0.260119,
		25.954088, 39.016491, 31.536213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.686438, 38.273521, 31.848547>,  <25.293318, 38.874268, 31.718296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.686438, 38.273521, 31.848547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949371, 38.573681, 31.820780>,  <26.107132, 38.753777, 31.804119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949371, 38.573681, 31.820780>,  <25.686438, 38.273521, 31.848547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949371, 38.573681, 31.820780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401951, -0.271197, 0.874578,
		0.637456, -0.602790, -0.479890,
		0.657332, 0.750397, -0.069416,
		26.146570, 38.798801, 31.799955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141033, 37.870747, 32.072548>,  <25.686438, 38.273521, 31.848547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141033, 37.870747, 32.072548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278887, 38.246212, 32.077080>,  <26.361599, 38.471493, 32.079800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.278887, 38.246212, 32.077080>,  <26.141033, 37.870747, 32.072548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278887, 38.246212, 32.077080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685099, -0.259753, 0.680565,
		0.641768, -0.226783, -0.732600,
		0.344636, 0.938668, 0.011332,
		26.382278, 38.527813, 32.080479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819069, 37.866817, 31.956646>,  <26.141033, 37.870747, 32.072548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819069, 37.866817, 31.956646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780777, 38.217793, 32.144665>,  <26.757803, 38.428379, 32.257477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.780777, 38.217793, 32.144665>,  <26.819069, 37.866817, 31.956646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780777, 38.217793, 32.144665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685051, -0.284523, 0.670636,
		0.722178, 0.386203, -0.573852,
		-0.095728, 0.877436, 0.470045,
		26.752058, 38.481022, 32.285679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480843, 38.064049, 32.159893>,  <26.819069, 37.866817, 31.956646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480843, 38.064049, 32.159893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265594, 38.282108, 32.417027>,  <27.136446, 38.412945, 32.571308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.265594, 38.282108, 32.417027>,  <27.480843, 38.064049, 32.159893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265594, 38.282108, 32.417027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620344, -0.260167, 0.739923,
		0.570615, 0.796946, -0.198181,
		-0.538119, 0.545151, 0.642836,
		27.104158, 38.445652, 32.609879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935833, 38.388126, 32.603008>,  <27.480843, 38.064049, 32.159893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935833, 38.388126, 32.603008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594812, 38.389271, 32.812061>,  <27.390200, 38.389957, 32.937492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.594812, 38.389271, 32.812061>,  <27.935833, 38.388126, 32.603008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594812, 38.389271, 32.812061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511931, -0.196846, 0.836169,
		0.105271, 0.980430, 0.166357,
		-0.852552, 0.002861, 0.522635,
		27.339046, 38.390129, 32.968853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331013, 37.852612, 32.997963>,  <27.935833, 38.388126, 32.603008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331013, 37.852612, 32.997963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416540, 37.583767, 33.281525>,  <28.467855, 37.422459, 33.451660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416540, 37.583767, 33.281525>,  <28.331013, 37.852612, 32.997963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416540, 37.583767, 33.281525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174729, -0.687670, -0.704684,
		0.961120, 0.274540, -0.029598,
		0.213818, -0.672114, 0.708904,
		28.480686, 37.382133, 33.494194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000658, 37.414135, 32.899239>,  <28.331013, 37.852612, 32.997963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000658, 37.414135, 32.899239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704758, 37.207806, 33.072067>,  <28.527218, 37.084007, 33.175766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.704758, 37.207806, 33.072067>,  <29.000658, 37.414135, 32.899239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704758, 37.207806, 33.072067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315992, -0.833232, -0.453732,
		0.594067, -0.199117, 0.779383,
		-0.739753, -0.515826, 0.432076,
		28.482832, 37.053059, 33.201691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240685, 36.799053, 33.156193>,  <29.000658, 37.414135, 32.899239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240685, 36.799053, 33.156193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855145, 36.715351, 33.090214>,  <28.623821, 36.665131, 33.050625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855145, 36.715351, 33.090214>,  <29.240685, 36.799053, 33.156193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855145, 36.715351, 33.090214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263798, -0.836511, -0.480270,
		-0.037485, -0.506422, 0.861471,
		-0.963849, -0.209251, -0.164949,
		28.565990, 36.652576, 33.040730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076866, 36.053837, 33.030457>,  <29.240685, 36.799053, 33.156193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076866, 36.053837, 33.030457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726818, 36.191444, 32.894333>,  <28.516788, 36.274010, 32.812660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726818, 36.191444, 32.894333>,  <29.076866, 36.053837, 33.030457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726818, 36.191444, 32.894333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041634, -0.754180, -0.655346,
		-0.482107, -0.559340, 0.674323,
		-0.875122, 0.344022, -0.340308,
		28.464281, 36.294651, 32.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724758, 35.407230, 32.844101>,  <29.076866, 36.053837, 33.030457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724758, 35.407230, 32.844101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487450, 35.676418, 32.667404>,  <28.345064, 35.837933, 32.561386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.487450, 35.676418, 32.667404>,  <28.724758, 35.407230, 32.844101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487450, 35.676418, 32.667404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145436, -0.629324, -0.763413,
		-0.791754, -0.388668, 0.471236,
		-0.593274, 0.672970, -0.441743,
		28.309467, 35.878311, 32.534882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048977, 35.023491, 32.630825>,  <28.724758, 35.407230, 32.844101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048977, 35.023491, 32.630825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126730, 35.351414, 32.415371>,  <28.173382, 35.548168, 32.286098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126730, 35.351414, 32.415371>,  <28.048977, 35.023491, 32.630825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126730, 35.351414, 32.415371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158585, -0.515626, -0.842010,
		-0.968022, 0.249092, 0.029780,
		0.194383, 0.819807, -0.538639,
		28.185045, 35.597355, 32.253780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533449, 35.031235, 32.123383>,  <28.048977, 35.023491, 32.630825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533449, 35.031235, 32.123383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.835945, 35.255417, 31.988329>,  <28.017443, 35.389927, 31.907297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.835945, 35.255417, 31.988329>,  <27.533449, 35.031235, 32.123383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835945, 35.255417, 31.988329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117893, -0.390865, -0.912867,
		-0.643588, 0.730149, -0.229514,
		0.756238, 0.560452, -0.337636,
		28.062817, 35.423553, 31.887039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311335, 35.444149, 31.507235>,  <27.533449, 35.031235, 32.123383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311335, 35.444149, 31.507235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706549, 35.390034, 31.477625>,  <27.943678, 35.357567, 31.459860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.706549, 35.390034, 31.477625>,  <27.311335, 35.444149, 31.507235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706549, 35.390034, 31.477625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123381, -0.405514, -0.905724,
		0.092514, 0.904022, -0.417355,
		0.988037, -0.135286, -0.074024,
		28.002960, 35.349449, 31.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421625, 35.659081, 30.858950>,  <27.311335, 35.444149, 31.507235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421625, 35.659081, 30.858950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765074, 35.461189, 30.912630>,  <27.971144, 35.342453, 30.944838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765074, 35.461189, 30.912630>,  <27.421625, 35.659081, 30.858950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765074, 35.461189, 30.912630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060556, -0.357857, -0.931811,
		0.509021, 0.791946, -0.337223,
		0.858621, -0.494732, 0.134199,
		28.022659, 35.312771, 30.952890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715796, 35.831039, 30.308432>,  <27.421625, 35.659081, 30.858950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715796, 35.831039, 30.308432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890545, 35.493320, 30.432566>,  <27.995394, 35.290691, 30.507046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.890545, 35.493320, 30.432566>,  <27.715796, 35.831039, 30.308432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890545, 35.493320, 30.432566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150314, -0.408671, -0.900218,
		0.886875, 0.346634, -0.305447,
		0.436874, -0.844294, 0.310336,
		28.021606, 35.240032, 30.525667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225000, 35.636883, 29.806246>,  <27.715796, 35.831039, 30.308432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225000, 35.636883, 29.806246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133183, 35.297729, 29.997412>,  <28.078093, 35.094238, 30.112110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133183, 35.297729, 29.997412>,  <28.225000, 35.636883, 29.806246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133183, 35.297729, 29.997412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040632, -0.482249, -0.875092,
		0.972450, -0.220290, 0.076245,
		-0.229543, -0.847885, 0.477913,
		28.064320, 35.043365, 30.140785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684002, 35.073978, 29.560343>,  <28.225000, 35.636883, 29.806246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684002, 35.073978, 29.560343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339848, 34.935711, 29.710140>,  <28.133354, 34.852749, 29.800018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.339848, 34.935711, 29.710140>,  <28.684002, 35.073978, 29.560343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.339848, 34.935711, 29.710140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138836, -0.548054, -0.824840,
		0.490365, -0.761676, 0.423548,
		-0.860388, -0.345669, 0.374494,
		28.081732, 34.832008, 29.822489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780193, 34.459412, 29.187471>,  <28.684002, 35.073978, 29.560343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780193, 34.459412, 29.187471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424040, 34.431423, 29.367392>,  <28.210348, 34.414631, 29.475344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424040, 34.431423, 29.367392>,  <28.780193, 34.459412, 29.187471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424040, 34.431423, 29.367392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330493, -0.580135, -0.744458,
		0.313038, -0.811509, 0.493417,
		-0.890383, -0.069972, 0.449802,
		28.156925, 34.410431, 29.502333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716043, 33.715397, 29.207539>,  <28.780193, 34.459412, 29.187471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716043, 33.715397, 29.207539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370935, 33.916550, 29.228481>,  <28.163872, 34.037239, 29.241047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.370935, 33.916550, 29.228481>,  <28.716043, 33.715397, 29.207539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.370935, 33.916550, 29.228481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383538, -0.583492, -0.715846,
		-0.329436, -0.637690, 0.696292,
		-0.862769, 0.502880, 0.052355,
		28.112104, 34.067413, 29.244188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156336, 33.184418, 29.235348>,  <28.716043, 33.715397, 29.207539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156336, 33.184418, 29.235348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982222, 33.526619, 29.123175>,  <27.877754, 33.731941, 29.055872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982222, 33.526619, 29.123175>,  <28.156336, 33.184418, 29.235348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982222, 33.526619, 29.123175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421641, -0.468933, -0.776093,
		-0.795454, -0.219579, 0.564834,
		-0.435283, 0.855504, -0.280431,
		27.851637, 33.783272, 29.039045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491907, 32.956226, 29.058016>,  <28.156336, 33.184418, 29.235348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491907, 32.956226, 29.058016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540934, 33.315197, 28.888498>,  <27.570349, 33.530579, 28.786789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540934, 33.315197, 28.888498>,  <27.491907, 32.956226, 29.058016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540934, 33.315197, 28.888498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534940, -0.299935, -0.789859,
		-0.835953, 0.323512, 0.443309,
		0.122565, 0.897429, -0.423792,
		27.577703, 33.584427, 28.761360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823877, 33.281147, 28.867052>,  <27.491907, 32.956226, 29.058016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823877, 33.281147, 28.867052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.110697, 33.431488, 28.632250>,  <27.282789, 33.521694, 28.491369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.110697, 33.431488, 28.632250>,  <26.823877, 33.281147, 28.867052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110697, 33.431488, 28.632250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570957, -0.166341, -0.803952,
		-0.399810, 0.911628, 0.095321,
		0.717049, 0.375852, -0.587006,
		27.325811, 33.544243, 28.456148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463179, 33.653580, 28.383631>,  <26.823877, 33.281147, 28.867052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463179, 33.653580, 28.383631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816654, 33.655186, 28.196407>,  <27.028740, 33.656151, 28.084074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.816654, 33.655186, 28.196407>,  <26.463179, 33.653580, 28.383631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816654, 33.655186, 28.196407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468053, -0.002067, -0.883698,
		-0.004517, 0.999990, 0.000054,
		0.883689, 0.004017, -0.468058,
		27.081760, 33.656391, 28.055990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598427, 34.205318, 27.924757>,  <26.463179, 33.653580, 28.383631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598427, 34.205318, 27.924757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838282, 33.933926, 27.755003>,  <26.982195, 33.771091, 27.653151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838282, 33.933926, 27.755003>,  <26.598427, 34.205318, 27.924757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838282, 33.933926, 27.755003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428063, 0.176131, -0.886420,
		0.676165, 0.713192, -0.184817,
		0.599636, -0.678480, -0.424385,
		27.018173, 33.730381, 27.627687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641663, 34.423580, 27.227058>,  <26.598427, 34.205318, 27.924757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641663, 34.423580, 27.227058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765209, 34.044121, 27.199713>,  <26.839336, 33.816444, 27.183306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765209, 34.044121, 27.199713>,  <26.641663, 34.423580, 27.227058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765209, 34.044121, 27.199713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504057, -0.102314, -0.857589,
		0.806553, 0.299338, -0.509773,
		0.308866, -0.948646, -0.068362,
		26.857868, 33.759525, 27.179205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.795391, 34.280415, 26.458799>,  <26.641663, 34.423580, 27.227058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.795391, 34.280415, 26.458799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767563, 33.913754, 26.616238>,  <26.750866, 33.693756, 26.710701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767563, 33.913754, 26.616238>,  <26.795391, 34.280415, 26.458799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767563, 33.913754, 26.616238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396522, -0.336632, -0.854078,
		0.915385, -0.215487, -0.340052,
		-0.069570, -0.916648, 0.393594,
		26.746693, 33.638760, 26.734316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138014, 33.776665, 25.982222>,  <26.795391, 34.280415, 26.458799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138014, 33.776665, 25.982222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.863518, 33.578026, 26.194811>,  <26.698820, 33.458843, 26.322365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.863518, 33.578026, 26.194811>,  <27.138014, 33.776665, 25.982222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863518, 33.578026, 26.194811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387320, -0.368991, -0.844884,
		0.615679, -0.785642, 0.060872,
		-0.686238, -0.496600, 0.531475,
		26.657646, 33.429047, 26.354254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528891, 33.674408, 25.475817>,  <27.138014, 33.776665, 25.982222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528891, 33.674408, 25.475817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630976, 33.575233, 25.101994>,  <26.692226, 33.515728, 24.877701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630976, 33.575233, 25.101994>,  <26.528891, 33.674408, 25.475817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630976, 33.575233, 25.101994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434303, -0.834174, 0.339904,
		-0.863856, -0.492628, -0.105213,
		0.255212, -0.247934, -0.934556,
		26.707539, 33.500854, 24.821627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472666, 32.989594, 25.478165>,  <26.528891, 33.674408, 25.475817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472666, 32.989594, 25.478165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.703360, 33.053894, 25.157782>,  <26.841776, 33.092476, 24.965551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.703360, 33.053894, 25.157782>,  <26.472666, 32.989594, 25.478165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703360, 33.053894, 25.157782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591289, -0.758668, 0.273496,
		-0.563696, -0.631332, -0.532603,
		0.576736, 0.160754, -0.800958,
		26.876381, 33.102119, 24.917494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.126667, 33.595936, 46.384285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766144, 33.423946, 46.363224>,  <33.549831, 33.320751, 46.350586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.766144, 33.423946, 46.363224>,  <34.126667, 33.595936, 46.384285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766144, 33.423946, 46.363224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101437, 0.091322, 0.990642,
		-0.421144, 0.898210, -0.125925,
		-0.901304, -0.429976, -0.052652,
		33.495754, 33.294952, 46.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711758, 34.064014, 46.703365>,  <34.126667, 33.595936, 46.384285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711758, 34.064014, 46.703365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539005, 33.703331, 46.711388>,  <33.435356, 33.486919, 46.716202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539005, 33.703331, 46.711388>,  <33.711758, 34.064014, 46.703365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539005, 33.703331, 46.711388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088076, 0.064290, 0.994037,
		-0.897621, 0.427537, -0.107184,
		-0.431878, -0.901709, 0.020052,
		33.409443, 33.432819, 46.717403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061691, 34.147835, 47.106831>,  <33.711758, 34.064014, 46.703365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061691, 34.147835, 47.106831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135933, 33.754932, 47.117584>,  <33.180477, 33.519192, 47.124039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.135933, 33.754932, 47.117584>,  <33.061691, 34.147835, 47.106831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135933, 33.754932, 47.117584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106051, 0.007177, 0.994335,
		-0.976884, -0.187408, -0.102837,
		0.185608, -0.982256, 0.026886,
		33.191616, 33.460255, 47.125648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582634, 33.850151, 47.667278>,  <33.061691, 34.147835, 47.106831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582634, 33.850151, 47.667278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865948, 33.573421, 47.611118>,  <33.035934, 33.407383, 47.577423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.865948, 33.573421, 47.611118>,  <32.582634, 33.850151, 47.667278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865948, 33.573421, 47.611118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042885, -0.240692, 0.969654,
		-0.704622, -0.680770, -0.200148,
		0.708286, -0.691823, -0.140402,
		33.078434, 33.365875, 47.568996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284882, 33.289207, 47.956707>,  <32.582634, 33.850151, 47.667278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284882, 33.289207, 47.956707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677223, 33.216129, 47.929726>,  <32.912628, 33.172283, 47.913536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677223, 33.216129, 47.929726>,  <32.284882, 33.289207, 47.956707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677223, 33.216129, 47.929726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016525, -0.423175, 0.905897,
		-0.194044, -0.887438, -0.418092,
		0.980854, -0.182693, -0.067450,
		32.971478, 33.161320, 47.909492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351036, 32.572563, 48.096199>,  <32.284882, 33.289207, 47.956707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351036, 32.572563, 48.096199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703510, 32.741665, 48.180862>,  <32.914993, 32.843124, 48.231663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703510, 32.741665, 48.180862>,  <32.351036, 32.572563, 48.096199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703510, 32.741665, 48.180862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000437, -0.446971, 0.894548,
		0.472777, -0.788352, -0.393678,
		0.881182, 0.422750, 0.211662,
		32.967865, 32.868488, 48.244362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745949, 32.079151, 48.523685>,  <32.351036, 32.572563, 48.096199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745949, 32.079151, 48.523685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933086, 32.426533, 48.589298>,  <33.045368, 32.634964, 48.628666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933086, 32.426533, 48.589298>,  <32.745949, 32.079151, 48.523685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933086, 32.426533, 48.589298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038566, -0.205478, 0.977902,
		0.882970, -0.451179, -0.129625,
		0.467843, 0.868457, 0.164031,
		33.073441, 32.687069, 48.638508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337288, 31.804100, 48.845268>,  <32.745949, 32.079151, 48.523685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337288, 31.804100, 48.845268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280441, 32.192940, 48.919914>,  <33.246334, 32.426243, 48.964703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.280441, 32.192940, 48.919914>,  <33.337288, 31.804100, 48.845268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280441, 32.192940, 48.919914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137803, -0.167261, 0.976235,
		0.980210, 0.164458, -0.110188,
		-0.142119, 0.972100, 0.186614,
		33.237804, 32.484570, 48.975899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668995, 31.786808, 49.468494>,  <33.337288, 31.804100, 48.845268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668995, 31.786808, 49.468494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472122, 32.134792, 49.456326>,  <33.354000, 32.343582, 49.449024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472122, 32.134792, 49.456326>,  <33.668995, 31.786808, 49.468494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472122, 32.134792, 49.456326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031851, 0.052925, 0.998090,
		0.869911, 0.490271, -0.053758,
		-0.492180, 0.869962, -0.030425,
		33.324467, 32.395782, 49.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070232, 32.163658, 50.035439>,  <33.668995, 31.786808, 49.468494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070232, 32.163658, 50.035439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737713, 32.379768, 49.983215>,  <33.538200, 32.509434, 49.951881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.737713, 32.379768, 49.983215>,  <34.070232, 32.163658, 50.035439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737713, 32.379768, 49.983215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003556, 0.240053, 0.970753,
		0.555815, 0.806521, -0.201476,
		-0.831298, 0.540276, -0.130557,
		33.488323, 32.541851, 49.944050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134403, 32.829224, 50.431076>,  <34.070232, 32.163658, 50.035439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134403, 32.829224, 50.431076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758850, 32.706425, 50.368790>,  <33.533516, 32.632744, 50.331417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758850, 32.706425, 50.368790>,  <34.134403, 32.829224, 50.431076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758850, 32.706425, 50.368790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139739, -0.073501, 0.987457,
		-0.314592, 0.948868, 0.026110,
		-0.938885, -0.306997, -0.155717,
		33.477184, 32.614326, 50.322075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769646, 33.267216, 50.899048>,  <34.134403, 32.829224, 50.431076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769646, 33.267216, 50.899048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568531, 32.939644, 50.788368>,  <33.447861, 32.743103, 50.721958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.568531, 32.939644, 50.788368>,  <33.769646, 33.267216, 50.899048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568531, 32.939644, 50.788368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118380, -0.251857, 0.960497,
		-0.856267, 0.515680, 0.029685,
		-0.502786, -0.818927, -0.276703,
		33.417694, 32.693966, 50.705357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341251, 33.226238, 51.447891>,  <33.769646, 33.267216, 50.899048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341251, 33.226238, 51.447891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291008, 32.888077, 51.240234>,  <33.260860, 32.685181, 51.115639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291008, 32.888077, 51.240234>,  <33.341251, 33.226238, 51.447891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291008, 32.888077, 51.240234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217247, -0.487147, 0.845867,
		-0.968001, 0.219029, -0.122473,
		-0.125607, -0.845408, -0.519143,
		33.253326, 32.634453, 51.084492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142483, 32.853928, 52.064648>,  <33.341251, 33.226238, 51.447891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142483, 32.853928, 52.064648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041142, 33.058380, 52.393173>,  <32.980335, 33.181053, 52.590286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041142, 33.058380, 52.393173>,  <33.142483, 32.853928, 52.064648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041142, 33.058380, 52.393173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935403, 0.345907, 0.073280,
		-0.246641, 0.786823, -0.565754,
		-0.253356, 0.511134, 0.821311,
		32.965134, 33.211720, 52.639568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753670, 33.573494, 52.165634>,  <33.142483, 32.853928, 52.064648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753670, 33.573494, 52.165634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.497074, 33.855026, 52.287693>,  <32.343117, 34.023945, 52.360928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.497074, 33.855026, 52.287693>,  <32.753670, 33.573494, 52.165634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497074, 33.855026, 52.287693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411355, 0.020157, -0.911252,
		-0.647518, -0.710082, 0.276594,
		-0.641488, 0.703831, 0.305148,
		32.304626, 34.066174, 52.379238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030785, 33.445515, 51.898430>,  <32.753670, 33.573494, 52.165634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030785, 33.445515, 51.898430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079765, 33.835609, 51.972103>,  <32.109154, 34.069664, 52.016308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.079765, 33.835609, 51.972103>,  <32.030785, 33.445515, 51.898430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079765, 33.835609, 51.972103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477969, 0.220588, -0.850227,
		-0.869800, 0.016076, 0.493142,
		0.122449, 0.975235, 0.184184,
		32.116501, 34.128181, 52.027359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503906, 33.696758, 51.633354>,  <32.030785, 33.445515, 51.898430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503906, 33.696758, 51.633354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740017, 34.018215, 51.663658>,  <31.881683, 34.211090, 51.681843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.740017, 34.018215, 51.663658>,  <31.503906, 33.696758, 51.633354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740017, 34.018215, 51.663658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304788, 0.308807, -0.900968,
		-0.747449, 0.508727, 0.427220,
		0.590275, 0.803639, 0.075763,
		31.917099, 34.259308, 51.686386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097845, 34.184372, 51.339535>,  <31.503906, 33.696758, 51.633354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097845, 34.184372, 51.339535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.464430, 34.343979, 51.327602>,  <31.684380, 34.439743, 51.320442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.464430, 34.343979, 51.327602>,  <31.097845, 34.184372, 51.339535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464430, 34.343979, 51.327602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201774, 0.396492, -0.895590,
		-0.345526, 0.826791, 0.443880,
		0.916460, 0.399013, -0.029826,
		31.739368, 34.463684, 51.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020781, 34.850491, 51.035030>,  <31.097845, 34.184372, 51.339535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020781, 34.850491, 51.035030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414507, 34.791672, 50.996056>,  <31.650743, 34.756378, 50.972672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414507, 34.791672, 50.996056>,  <31.020781, 34.850491, 51.035030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414507, 34.791672, 50.996056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028015, 0.415050, -0.909367,
		0.174165, 0.897836, 0.404421,
		0.984318, -0.147050, -0.097440,
		31.709803, 34.747559, 50.966824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447657, 35.534435, 50.946766>,  <31.020781, 34.850491, 51.035030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447657, 35.534435, 50.946766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639023, 35.225559, 50.779510>,  <31.753843, 35.040234, 50.679157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.639023, 35.225559, 50.779510>,  <31.447657, 35.534435, 50.946766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639023, 35.225559, 50.779510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018812, 0.467048, -0.884032,
		0.877932, 0.430800, 0.208917,
		0.478415, -0.772190, -0.418140,
		31.782547, 34.993904, 50.654068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035744, 35.807228, 50.572891>,  <31.447657, 35.534435, 50.946766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035744, 35.807228, 50.572891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975063, 35.448406, 50.406868>,  <31.938654, 35.233112, 50.307255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.975063, 35.448406, 50.406868>,  <32.035744, 35.807228, 50.572891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975063, 35.448406, 50.406868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181552, 0.387483, -0.903823,
		0.971609, -0.212469, 0.104080,
		-0.151705, -0.897058, -0.415056,
		31.929552, 35.179287, 50.282352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374088, 35.822845, 49.981796>,  <32.035744, 35.807228, 50.572891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374088, 35.822845, 49.981796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158466, 35.498112, 49.892052>,  <32.029091, 35.303272, 49.838203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158466, 35.498112, 49.892052>,  <32.374088, 35.822845, 49.981796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158466, 35.498112, 49.892052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209564, 0.128730, -0.969284,
		0.815782, -0.569519, 0.100739,
		-0.539057, -0.811836, -0.224366,
		31.996750, 35.254562, 49.824741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749928, 35.422680, 49.498573>,  <32.374088, 35.822845, 49.981796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749928, 35.422680, 49.498573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375782, 35.285126, 49.465496>,  <32.151295, 35.202595, 49.445652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375782, 35.285126, 49.465496>,  <32.749928, 35.422680, 49.498573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375782, 35.285126, 49.465496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033497, 0.146613, -0.988627,
		0.352098, -0.927495, -0.125617,
		-0.935364, -0.343886, -0.082690,
		32.095173, 35.181961, 49.440689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702354, 34.818184, 49.032852>,  <32.749928, 35.422680, 49.498573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702354, 34.818184, 49.032852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328197, 34.958694, 49.049110>,  <32.103703, 35.043003, 49.058865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.328197, 34.958694, 49.049110>,  <32.702354, 34.818184, 49.032852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328197, 34.958694, 49.049110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014766, 0.153632, -0.988018,
		-0.353316, -0.923580, -0.148892,
		-0.935388, 0.351281, 0.040643,
		32.047581, 35.064079, 49.061302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353928, 34.481186, 48.488663>,  <32.702354, 34.818184, 49.032852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353928, 34.481186, 48.488663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179714, 34.834564, 48.557755>,  <32.075188, 35.046593, 48.599209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179714, 34.834564, 48.557755>,  <32.353928, 34.481186, 48.488663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179714, 34.834564, 48.557755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011280, 0.186511, -0.982388,
		-0.900104, -0.429807, -0.071265,
		-0.435529, 0.883447, 0.172728,
		32.049057, 35.099598, 48.609573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897390, 34.499496, 47.949188>,  <32.353928, 34.481186, 48.488663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897390, 34.499496, 47.949188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927174, 34.877808, 48.075653>,  <31.945044, 35.104794, 48.151531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927174, 34.877808, 48.075653>,  <31.897390, 34.499496, 47.949188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927174, 34.877808, 48.075653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197916, 0.324752, -0.924860,
		-0.977387, 0.006292, 0.211365,
		0.074460, 0.945779, 0.316163,
		31.949512, 35.161541, 48.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296852, 34.922680, 47.626148>,  <31.897390, 34.499496, 47.949188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296852, 34.922680, 47.626148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582600, 35.179283, 47.737961>,  <31.754049, 35.333244, 47.805050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.582600, 35.179283, 47.737961>,  <31.296852, 34.922680, 47.626148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582600, 35.179283, 47.737961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085992, 0.476919, -0.874731,
		-0.694464, 0.600844, 0.395862,
		0.714370, 0.641510, 0.279535,
		31.796911, 35.371735, 47.821823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225403, 35.519550, 47.201157>,  <31.296852, 34.922680, 47.626148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225403, 35.519550, 47.201157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587971, 35.607994, 47.345108>,  <31.805511, 35.661060, 47.431480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.587971, 35.607994, 47.345108>,  <31.225403, 35.519550, 47.201157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587971, 35.607994, 47.345108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231229, 0.453251, -0.860870,
		-0.353462, 0.863524, 0.359709,
		0.906420, 0.221110, 0.359879,
		31.859898, 35.674328, 47.453072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707438, 36.011105, 47.613770>,  <31.225403, 35.519550, 47.201157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707438, 36.011105, 47.613770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.325945, 36.074360, 47.511490>,  <30.097050, 36.112312, 47.450123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.325945, 36.074360, 47.511490>,  <30.707438, 36.011105, 47.613770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325945, 36.074360, 47.511490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299212, -0.416051, 0.858705,
		0.029411, 0.895485, 0.444119,
		-0.953733, 0.158141, -0.255703,
		30.039825, 36.121803, 47.434780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457623, 36.350273, 48.200356>,  <30.707438, 36.011105, 47.613770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457623, 36.350273, 48.200356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.143105, 36.209244, 47.997406>,  <29.954393, 36.124626, 47.875637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.143105, 36.209244, 47.997406>,  <30.457623, 36.350273, 48.200356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143105, 36.209244, 47.997406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364012, -0.399190, 0.841512,
		-0.499236, 0.846368, 0.185539,
		-0.786294, -0.352575, -0.507378,
		29.907217, 36.103470, 47.845192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823189, 36.730957, 48.469490>,  <30.457623, 36.350273, 48.200356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823189, 36.730957, 48.469490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704773, 36.385578, 48.306114>,  <29.633724, 36.178352, 48.208088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.704773, 36.385578, 48.306114>,  <29.823189, 36.730957, 48.469490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704773, 36.385578, 48.306114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432603, -0.260040, 0.863269,
		-0.851596, 0.432255, -0.296547,
		-0.296038, -0.863444, -0.408444,
		29.615961, 36.126545, 48.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178766, 36.586124, 48.846359>,  <29.823189, 36.730957, 48.469490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178766, 36.586124, 48.846359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267216, 36.223259, 48.703163>,  <29.320286, 36.005539, 48.617245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267216, 36.223259, 48.703163>,  <29.178766, 36.586124, 48.846359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267216, 36.223259, 48.703163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409096, -0.419499, 0.810346,
		-0.885294, -0.032734, -0.463878,
		0.221122, -0.907166, -0.357988,
		29.333551, 35.951111, 48.595768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606529, 36.228363, 49.030994>,  <29.178766, 36.586124, 48.846359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606529, 36.228363, 49.030994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883018, 35.955765, 48.934849>,  <29.048912, 35.792206, 48.877163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.883018, 35.955765, 48.934849>,  <28.606529, 36.228363, 49.030994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883018, 35.955765, 48.934849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302606, -0.575021, 0.760119,
		-0.656232, -0.452676, -0.603692,
		0.691223, -0.681495, -0.240365,
		29.090385, 35.751316, 48.862740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269966, 35.582798, 49.184952>,  <28.606529, 36.228363, 49.030994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269966, 35.582798, 49.184952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.661839, 35.502621, 49.182053>,  <28.896961, 35.454514, 49.180313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.661839, 35.502621, 49.182053>,  <28.269966, 35.582798, 49.184952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661839, 35.502621, 49.182053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097056, -0.505391, 0.857415,
		-0.175523, -0.839288, -0.514575,
		0.979679, -0.200438, -0.007250,
		28.955742, 35.442490, 49.179878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306448, 34.943237, 49.488510>,  <28.269966, 35.582798, 49.184952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306448, 34.943237, 49.488510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.660702, 35.122749, 49.536255>,  <28.873255, 35.230457, 49.564903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.660702, 35.122749, 49.536255>,  <28.306448, 34.943237, 49.488510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660702, 35.122749, 49.536255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073239, -0.388806, 0.918404,
		0.458573, -0.804627, -0.377209,
		0.885633, 0.448782, 0.119366,
		28.926392, 35.257385, 49.572063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424702, 34.287888, 49.000973>,  <28.306448, 34.943237, 49.488510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424702, 34.287888, 49.000973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.213360, 33.955074, 48.933361>,  <28.086555, 33.755386, 48.892796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.213360, 33.955074, 48.933361>,  <28.424702, 34.287888, 49.000973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213360, 33.955074, 48.933361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093669, 0.140744, -0.985605,
		0.843842, -0.536579, 0.003573,
		-0.528353, -0.832030, -0.169026,
		28.054853, 33.705467, 48.882652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702036, 33.853745, 48.498032>,  <28.424702, 34.287888, 49.000973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702036, 33.853745, 48.498032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323574, 33.724545, 48.489395>,  <28.096497, 33.647026, 48.484211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323574, 33.724545, 48.489395>,  <28.702036, 33.853745, 48.498032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323574, 33.724545, 48.489395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024578, 0.138192, -0.990100,
		0.322786, -0.936256, -0.138690,
		-0.946153, -0.322999, -0.021595,
		28.039728, 33.627644, 48.482918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718641, 33.413078, 47.895439>,  <28.702036, 33.853745, 48.498032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718641, 33.413078, 47.895439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.346319, 33.533649, 47.978142>,  <28.122927, 33.605991, 48.027763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.346319, 33.533649, 47.978142>,  <28.718641, 33.413078, 47.895439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346319, 33.533649, 47.978142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164166, 0.160632, -0.973266,
		-0.326577, -0.939862, -0.100033,
		-0.930804, 0.301424, 0.206752,
		28.067078, 33.624077, 48.040169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433405, 33.012085, 47.461197>,  <28.718641, 33.413078, 47.895439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433405, 33.012085, 47.461197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.156183, 33.284992, 47.554310>,  <27.989851, 33.448738, 47.610176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.156183, 33.284992, 47.554310>,  <28.433405, 33.012085, 47.461197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156183, 33.284992, 47.554310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155082, 0.174244, -0.972414,
		-0.704008, -0.710035, -0.014954,
		-0.693053, 0.682268, 0.232783,
		27.948267, 33.489674, 47.624146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101830, 33.069454, 46.815250>,  <28.433405, 33.012085, 47.461197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101830, 33.069454, 46.815250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.941879, 33.367310, 47.029022>,  <27.845909, 33.546021, 47.157284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.941879, 33.367310, 47.029022>,  <28.101830, 33.069454, 46.815250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941879, 33.367310, 47.029022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222798, 0.486621, -0.844726,
		-0.889078, -0.456856, -0.028685,
		-0.399877, 0.744636, 0.534430,
		27.821917, 33.590702, 47.189350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365732, 33.187138, 46.755871>,  <28.101830, 33.069454, 46.815250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365732, 33.187138, 46.755871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.555696, 33.526562, 46.849171>,  <27.669674, 33.730217, 46.905151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.555696, 33.526562, 46.849171>,  <27.365732, 33.187138, 46.755871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555696, 33.526562, 46.849171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160593, 0.344163, -0.925074,
		-0.865258, 0.401867, 0.299719,
		0.474909, 0.848560, 0.233253,
		27.698170, 33.781128, 46.919147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907003, 33.725052, 46.601826>,  <27.365732, 33.187138, 46.755871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907003, 33.725052, 46.601826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.274313, 33.883430, 46.601009>,  <27.494698, 33.978458, 46.600517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.274313, 33.883430, 46.601009>,  <26.907003, 33.725052, 46.601826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274313, 33.883430, 46.601009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171798, 0.393773, -0.903011,
		-0.356738, 0.829560, 0.429614,
		0.918272, 0.395945, -0.002043,
		27.549795, 34.002213, 46.600395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.940172, 30.732677, 50.019207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.098173, 31.082775, 49.907547>,  <31.192974, 31.292833, 49.840549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.098173, 31.082775, 49.907547>,  <30.940172, 30.732677, 50.019207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098173, 31.082775, 49.907547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040289, -0.320073, -0.946536,
		-0.917797, 0.362636, -0.161692,
		0.395001, 0.875242, -0.279152,
		31.216673, 31.345348, 49.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490358, 31.112810, 49.471912>,  <30.940172, 30.732677, 50.019207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490358, 31.112810, 49.471912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865904, 31.248953, 49.451172>,  <31.091232, 31.330639, 49.438728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.865904, 31.248953, 49.451172>,  <30.490358, 31.112810, 49.471912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865904, 31.248953, 49.451172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037969, -0.252049, -0.966969,
		-0.342185, 0.905885, -0.249563,
		0.938865, 0.340358, -0.051852,
		31.147564, 31.351061, 49.435616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471859, 31.613867, 48.951496>,  <30.490358, 31.112810, 49.471912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471859, 31.613867, 48.951496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.847857, 31.481560, 48.984982>,  <31.073454, 31.402176, 49.005074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.847857, 31.481560, 48.984982>,  <30.471859, 31.613867, 48.951496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847857, 31.481560, 48.984982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041406, -0.132943, -0.990258,
		0.338674, 0.934301, -0.111270,
		0.939992, -0.330768, 0.083710,
		31.129854, 31.382330, 49.010094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815645, 31.971691, 48.440632>,  <30.471859, 31.613867, 48.951496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815645, 31.971691, 48.440632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055273, 31.660793, 48.517582>,  <31.199049, 31.474255, 48.563751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.055273, 31.660793, 48.517582>,  <30.815645, 31.971691, 48.440632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055273, 31.660793, 48.517582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225605, -0.066677, -0.971934,
		0.768256, 0.625658, 0.135406,
		0.599070, -0.777243, 0.192376,
		31.234995, 31.427620, 48.575294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441181, 32.132790, 48.046974>,  <30.815645, 31.971691, 48.440632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441181, 32.132790, 48.046974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.447998, 31.739199, 48.117958>,  <31.452087, 31.503044, 48.160549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.447998, 31.739199, 48.117958>,  <31.441181, 32.132790, 48.046974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447998, 31.739199, 48.117958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171081, -0.171995, -0.970129,
		0.985110, 0.046892, 0.165409,
		0.017042, -0.983981, 0.177456,
		31.453110, 31.444004, 48.171196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970430, 31.877550, 47.670994>,  <31.441181, 32.132790, 48.046974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970430, 31.877550, 47.670994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.763521, 31.540670, 47.731827>,  <31.639376, 31.338543, 47.768326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.763521, 31.540670, 47.731827>,  <31.970430, 31.877550, 47.670994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763521, 31.540670, 47.731827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058944, -0.212342, -0.975416,
		0.853790, -0.495590, 0.159481,
		-0.517270, -0.842201, 0.152083,
		31.608339, 31.288010, 47.777451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334511, 31.411737, 47.341946>,  <31.970430, 31.877550, 47.670994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334511, 31.411737, 47.341946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.968773, 31.255840, 47.385910>,  <31.749331, 31.162302, 47.412289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.968773, 31.255840, 47.385910>,  <32.334511, 31.411737, 47.341946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968773, 31.255840, 47.385910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054989, -0.149404, -0.987246,
		0.401192, -0.908724, 0.115174,
		-0.914342, -0.389742, 0.109909,
		31.694469, 31.138918, 47.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405514, 30.832573, 47.150124>,  <32.334511, 31.411737, 47.341946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405514, 30.832573, 47.150124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010746, 30.885466, 47.113228>,  <31.773886, 30.917202, 47.091091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.010746, 30.885466, 47.113228>,  <32.405514, 30.832573, 47.150124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010746, 30.885466, 47.113228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079794, -0.096499, -0.992129,
		-0.140094, -0.986510, 0.084685,
		-0.986918, 0.132234, -0.092236,
		31.714670, 30.925135, 47.085556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159607, 30.280060, 46.703629>,  <32.405514, 30.832573, 47.150124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159607, 30.280060, 46.703629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877865, 30.563591, 46.718891>,  <31.708820, 30.733709, 46.728050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.877865, 30.563591, 46.718891>,  <32.159607, 30.280060, 46.703629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877865, 30.563591, 46.718891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240811, -0.188036, -0.952183,
		-0.667757, -0.679859, 0.303137,
		-0.704351, 0.708826, 0.038156,
		31.666559, 30.776239, 46.730339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511526, 29.978415, 46.457085>,  <32.159607, 30.280060, 46.703629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511526, 29.978415, 46.457085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483374, 30.373169, 46.398975>,  <31.466482, 30.610022, 46.364109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.483374, 30.373169, 46.398975>,  <31.511526, 29.978415, 46.457085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483374, 30.373169, 46.398975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361122, -0.160968, -0.918521,
		-0.929859, -0.012184, 0.367715,
		-0.070382, 0.986884, -0.145278,
		31.462259, 30.669235, 46.355392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879990, 30.037960, 46.161854>,  <31.511526, 29.978415, 46.457085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879990, 30.037960, 46.161854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.082165, 30.371176, 46.071892>,  <31.203470, 30.571104, 46.017914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.082165, 30.371176, 46.071892>,  <30.879990, 30.037960, 46.161854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082165, 30.371176, 46.071892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132119, -0.182855, -0.974222,
		-0.852689, 0.522122, 0.017639,
		0.505437, 0.833038, -0.224901,
		31.233795, 30.621088, 46.004421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510881, 30.325632, 45.629539>,  <30.879990, 30.037960, 46.161854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510881, 30.325632, 45.629539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851948, 30.532248, 45.598164>,  <31.056587, 30.656218, 45.579338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.851948, 30.532248, 45.598164>,  <30.510881, 30.325632, 45.629539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851948, 30.532248, 45.598164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011912, -0.169308, -0.985491,
		-0.522324, 0.839358, -0.150515,
		0.852664, 0.516539, -0.078435,
		31.107746, 30.687210, 45.574635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124281, 30.845636, 45.809944>,  <30.510881, 30.325632, 45.629539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124281, 30.845636, 45.809944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823250, 31.101770, 45.748497>,  <29.642632, 31.255451, 45.711628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823250, 31.101770, 45.748497>,  <30.124281, 30.845636, 45.809944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823250, 31.101770, 45.748497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165008, 0.042454, 0.985378,
		0.637492, 0.766923, 0.073710,
		-0.752580, 0.640333, -0.153613,
		29.597475, 31.293871, 45.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129271, 31.325617, 46.334946>,  <30.124281, 30.845636, 45.809944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129271, 31.325617, 46.334946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761169, 31.374380, 46.186207>,  <29.540308, 31.403639, 46.096962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.761169, 31.374380, 46.186207>,  <30.129271, 31.325617, 46.334946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761169, 31.374380, 46.186207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387447, -0.150475, 0.909528,
		0.054926, 0.981068, 0.185709,
		-0.920254, 0.121909, -0.371847,
		29.485094, 31.410954, 46.074654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825642, 31.733570, 46.765888>,  <30.129271, 31.325617, 46.334946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825642, 31.733570, 46.765888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.498178, 31.590031, 46.586544>,  <29.301701, 31.503908, 46.478939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.498178, 31.590031, 46.586544>,  <29.825642, 31.733570, 46.765888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498178, 31.590031, 46.586544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462705, -0.050267, 0.885086,
		-0.340148, 0.932042, -0.124889,
		-0.818659, -0.358847, -0.448359,
		29.252581, 31.482376, 46.452038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180197, 32.098541, 47.064846>,  <29.825642, 31.733570, 46.765888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180197, 32.098541, 47.064846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078661, 31.737686, 46.925301>,  <29.017740, 31.521172, 46.841572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.078661, 31.737686, 46.925301>,  <29.180197, 32.098541, 47.064846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078661, 31.737686, 46.925301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417992, -0.222950, 0.880668,
		-0.872266, 0.369372, -0.320494,
		-0.253840, -0.902140, -0.348867,
		29.002508, 31.467045, 46.820641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538059, 31.991854, 47.333576>,  <29.180197, 32.098541, 47.064846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538059, 31.991854, 47.333576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.667652, 31.626284, 47.235779>,  <28.745407, 31.406942, 47.177101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.667652, 31.626284, 47.235779>,  <28.538059, 31.991854, 47.333576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667652, 31.626284, 47.235779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415577, -0.369645, 0.831058,
		-0.849902, -0.167640, -0.499564,
		0.323980, -0.913925, -0.244495,
		28.764847, 31.352106, 47.162430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940207, 31.504169, 47.461964>,  <28.538059, 31.991854, 47.333576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940207, 31.504169, 47.461964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277473, 31.291040, 47.433201>,  <28.479834, 31.163162, 47.415943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.277473, 31.291040, 47.433201>,  <27.940207, 31.504169, 47.461964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277473, 31.291040, 47.433201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280615, -0.550195, 0.786474,
		-0.458613, -0.642951, -0.613424,
		0.843167, -0.532823, -0.071905,
		28.530422, 31.131193, 47.411629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694384, 30.841963, 47.517948>,  <27.940207, 31.504169, 47.461964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694384, 30.841963, 47.517948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.079008, 30.843857, 47.627769>,  <28.309782, 30.844994, 47.693661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.079008, 30.843857, 47.627769>,  <27.694384, 30.841963, 47.517948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079008, 30.843857, 47.627769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244372, -0.441243, 0.863474,
		0.125232, -0.897375, -0.423125,
		0.961561, 0.004735, 0.274551,
		28.367476, 30.845278, 47.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736284, 30.236071, 47.871090>,  <27.694384, 30.841963, 47.517948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736284, 30.236071, 47.871090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.072281, 30.420193, 47.986004>,  <28.273878, 30.530666, 48.054955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.072281, 30.420193, 47.986004>,  <27.736284, 30.236071, 47.871090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072281, 30.420193, 47.986004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115264, -0.366006, 0.923447,
		0.530217, -0.808801, -0.254385,
		0.839991, 0.460305, 0.287288,
		28.324278, 30.558285, 48.072189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142742, 29.713346, 48.224415>,  <27.736284, 30.236071, 47.871090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142742, 29.713346, 48.224415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266386, 30.079163, 48.328773>,  <28.340572, 30.298653, 48.391388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.266386, 30.079163, 48.328773>,  <28.142742, 29.713346, 48.224415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266386, 30.079163, 48.328773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041492, -0.287035, 0.957021,
		0.950121, -0.285000, -0.126672,
		0.309110, 0.914541, 0.260893,
		28.359119, 30.353525, 48.407040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877295, 29.699816, 48.497173>,  <28.142742, 29.713346, 48.224415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877295, 29.699816, 48.497173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649147, 30.003656, 48.622192>,  <28.512259, 30.185961, 48.697205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649147, 30.003656, 48.622192>,  <28.877295, 29.699816, 48.497173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649147, 30.003656, 48.622192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194584, -0.244723, 0.949867,
		0.798007, 0.602592, -0.008224,
		-0.570370, 0.759600, 0.312546,
		28.478037, 30.231537, 48.715958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072344, 29.709124, 49.175610>,  <28.877295, 29.699816, 48.497173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072344, 29.709124, 49.175610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.773699, 29.974854, 49.189690>,  <28.594511, 30.134293, 49.198139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.773699, 29.974854, 49.189690>,  <29.072344, 29.709124, 49.175610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773699, 29.974854, 49.189690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066311, -0.126971, 0.989687,
		0.661945, 0.736579, 0.138850,
		-0.746613, 0.664326, 0.035205,
		28.549715, 30.174152, 49.200253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292259, 30.040619, 49.691196>,  <29.072344, 29.709124, 49.175610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292259, 30.040619, 49.691196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900139, 30.115824, 49.666985>,  <28.664867, 30.160946, 49.652458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.900139, 30.115824, 49.666985>,  <29.292259, 30.040619, 49.691196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900139, 30.115824, 49.666985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059918, 0.008940, 0.998163,
		0.188208, 0.982126, 0.002501,
		-0.980300, 0.188012, -0.060530,
		28.606049, 30.172228, 49.648827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131411, 30.461388, 50.239315>,  <29.292259, 30.040619, 49.691196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131411, 30.461388, 50.239315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766197, 30.325293, 50.149334>,  <28.547070, 30.243635, 50.095345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766197, 30.325293, 50.149334>,  <29.131411, 30.461388, 50.239315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766197, 30.325293, 50.149334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228646, -0.029784, 0.973054,
		-0.337771, 0.939867, -0.050600,
		-0.913035, -0.340239, -0.224957,
		28.492287, 30.223221, 50.081848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644440, 30.827673, 50.666782>,  <29.131411, 30.461388, 50.239315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644440, 30.827673, 50.666782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.490314, 30.481318, 50.539173>,  <28.397839, 30.273504, 50.462608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.490314, 30.481318, 50.539173>,  <28.644440, 30.827673, 50.666782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490314, 30.481318, 50.539173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231863, -0.243778, 0.941707,
		-0.893182, 0.436821, -0.106836,
		-0.385313, -0.865887, -0.319021,
		28.374722, 30.221552, 50.443466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073128, 31.359921, 50.745289>,  <28.644440, 30.827673, 50.666782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073128, 31.359921, 50.745289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.740728, 31.570627, 50.816799>,  <27.541288, 31.697052, 50.859707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.740728, 31.570627, 50.816799>,  <28.073128, 31.359921, 50.745289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740728, 31.570627, 50.816799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150450, 0.522232, -0.839428,
		-0.535546, -0.670664, -0.513225,
		-0.830996, 0.526767, 0.178778,
		27.491430, 31.728657, 50.870434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626501, 31.339996, 50.131725>,  <28.073128, 31.359921, 50.745289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626501, 31.339996, 50.131725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.622366, 31.660902, 50.370480>,  <27.619884, 31.853445, 50.513733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.622366, 31.660902, 50.370480>,  <27.626501, 31.339996, 50.131725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622366, 31.660902, 50.370480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234681, 0.582188, -0.778448,
		-0.972017, 0.132032, -0.194293,
		-0.010335, 0.802262, 0.596882,
		27.619265, 31.901581, 50.549545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173279, 31.774712, 49.792515>,  <27.626501, 31.339996, 50.131725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173279, 31.774712, 49.792515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.420843, 31.977776, 50.032257>,  <27.569382, 32.099613, 50.176102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.420843, 31.977776, 50.032257>,  <27.173279, 31.774712, 49.792515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420843, 31.977776, 50.032257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008628, 0.767415, -0.641092,
		-0.785413, 0.391608, 0.479342,
		0.618911, 0.507658, 0.599360,
		27.606516, 32.130074, 50.212067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913431, 32.367645, 49.802223>,  <27.173279, 31.774712, 49.792515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913431, 32.367645, 49.802223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.287691, 32.436047, 49.925716>,  <27.512247, 32.477089, 49.999813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.287691, 32.436047, 49.925716>,  <26.913431, 32.367645, 49.802223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287691, 32.436047, 49.925716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063928, 0.778181, -0.624777,
		-0.347091, 0.604310, 0.717173,
		0.935650, 0.171007, 0.308732,
		27.568386, 32.487350, 50.018337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928085, 33.108345, 50.060387>,  <26.913431, 32.367645, 49.802223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928085, 33.108345, 50.060387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.307758, 33.011658, 49.979759>,  <27.535563, 32.953648, 49.931385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.307758, 33.011658, 49.979759>,  <26.928085, 33.108345, 50.060387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307758, 33.011658, 49.979759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071442, 0.789196, -0.609972,
		0.306514, 0.564574, 0.766358,
		0.949181, -0.241715, -0.201566,
		27.592512, 32.939144, 49.919289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382267, 33.768219, 50.035954>,  <26.928085, 33.108345, 50.060387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382267, 33.768219, 50.035954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.617355, 33.516327, 49.832767>,  <27.758408, 33.365192, 49.710857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.617355, 33.516327, 49.832767>,  <27.382267, 33.768219, 50.035954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617355, 33.516327, 49.832767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124731, 0.690857, -0.712151,
		0.799392, 0.355186, 0.484577,
		0.587720, -0.629729, -0.507963,
		27.793671, 33.327408, 49.680378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986212, 34.069725, 49.760666>,  <27.382267, 33.768219, 50.035954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986212, 34.069725, 49.760666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.982189, 33.745968, 49.525795>,  <27.979776, 33.551712, 49.384872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.982189, 33.745968, 49.525795>,  <27.986212, 34.069725, 49.760666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982189, 33.745968, 49.525795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197195, 0.574072, -0.794704,
		0.980313, -0.123780, 0.153836,
		-0.010056, -0.809395, -0.587179,
		27.979172, 33.503151, 49.349640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692921, 34.402897, 49.760006>,  <27.986212, 34.069725, 49.760666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692921, 34.402897, 49.760006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.888851, 34.738037, 49.856403>,  <29.006409, 34.939121, 49.914242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.888851, 34.738037, 49.856403>,  <28.692921, 34.402897, 49.760006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888851, 34.738037, 49.856403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116137, -0.336671, 0.934433,
		0.864051, -0.429719, -0.262215,
		0.489824, 0.837851, 0.240995,
		29.035799, 34.989391, 49.928703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249044, 34.245045, 50.188320>,  <28.692921, 34.402897, 49.760006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249044, 34.245045, 50.188320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246988, 34.634296, 50.280392>,  <29.245754, 34.867847, 50.335636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246988, 34.634296, 50.280392>,  <29.249044, 34.245045, 50.188320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246988, 34.634296, 50.280392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113639, -0.228125, 0.966977,
		0.993509, 0.031129, -0.109413,
		-0.005141, 0.973134, 0.230182,
		29.245445, 34.926235, 50.349445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840422, 34.338535, 50.623611>,  <29.249044, 34.245045, 50.188320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840422, 34.338535, 50.623611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571152, 34.622879, 50.705109>,  <29.409590, 34.793488, 50.754009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.571152, 34.622879, 50.705109>,  <29.840422, 34.338535, 50.623611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571152, 34.622879, 50.705109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172167, -0.117289, 0.978060,
		0.719162, 0.693484, -0.043431,
		-0.673175, 0.710861, 0.203745,
		29.369200, 34.836136, 50.766232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257591, 34.840683, 50.888294>,  <29.840422, 34.338535, 50.623611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257591, 34.840683, 50.888294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883282, 34.881432, 51.023319>,  <29.658695, 34.905880, 51.104332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.883282, 34.881432, 51.023319>,  <30.257591, 34.840683, 50.888294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883282, 34.881432, 51.023319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324529, -0.125460, 0.937518,
		0.137855, 0.986855, 0.084342,
		-0.935776, 0.101870, 0.337558,
		29.602549, 34.911991, 51.124588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436932, 35.150188, 51.501511>,  <30.257591, 34.840683, 50.888294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436932, 35.150188, 51.501511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.044678, 35.082161, 51.540348>,  <29.809324, 35.041344, 51.563648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.044678, 35.082161, 51.540348>,  <30.436932, 35.150188, 51.501511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044678, 35.082161, 51.540348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092716, 0.033499, 0.995129,
		-0.172495, 0.984862, -0.017082,
		-0.980637, -0.170071, 0.097091,
		29.750486, 35.031139, 51.569477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227007, 35.641232, 51.997379>,  <30.436932, 35.150188, 51.501511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227007, 35.641232, 51.997379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.995230, 35.315258, 52.002033>,  <29.856163, 35.119675, 52.004826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.995230, 35.315258, 52.002033>,  <30.227007, 35.641232, 51.997379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995230, 35.315258, 52.002033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234886, -0.153314, 0.959856,
		-0.780431, 0.558915, 0.280253,
		-0.579444, -0.814929, 0.011630,
		29.821396, 35.070778, 52.005524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867180, 35.748264, 52.655762>,  <30.227007, 35.641232, 51.997379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867180, 35.748264, 52.655762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.809755, 35.366199, 52.552185>,  <29.775301, 35.136959, 52.490040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.809755, 35.366199, 52.552185>,  <29.867180, 35.748264, 52.655762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809755, 35.366199, 52.552185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056241, -0.269108, 0.961467,
		-0.988042, 0.123464, 0.092352,
		-0.143559, -0.955164, -0.258946,
		29.766687, 35.079651, 52.474503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472340, 35.483173, 53.258476>,  <29.867180, 35.748264, 52.655762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472340, 35.483173, 53.258476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.652346, 35.180214, 53.069229>,  <29.760349, 34.998440, 52.955681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.652346, 35.180214, 53.069229>,  <29.472340, 35.483173, 53.258476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652346, 35.180214, 53.069229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276205, -0.385764, 0.880282,
		-0.849233, -0.526816, 0.035598,
		0.450015, -0.757397, -0.473113,
		29.787350, 34.952995, 52.927296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209938, 34.965698, 53.563740>,  <29.472340, 35.483173, 53.258476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209938, 34.965698, 53.563740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.553444, 34.835915, 53.405125>,  <29.759548, 34.758045, 53.309956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.553444, 34.835915, 53.405125>,  <29.209938, 34.965698, 53.563740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553444, 34.835915, 53.405125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290184, -0.329848, 0.898328,
		-0.422273, -0.886524, -0.189108,
		0.858766, -0.324463, -0.396541,
		29.811073, 34.738575, 53.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.798225, 37.643295, 37.590855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080105, 37.417862, 37.763260>,  <32.249233, 37.282600, 37.866703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080105, 37.417862, 37.763260>,  <31.798225, 37.643295, 37.590855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080105, 37.417862, 37.763260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490084, 0.052625, 0.870085,
		-0.513047, -0.824382, -0.239118,
		0.704698, -0.563583, 0.431016,
		32.291515, 37.248787, 37.892563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453453, 36.997730, 37.802509>,  <31.798225, 37.643295, 37.590855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453453, 36.997730, 37.802509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766703, 37.123081, 38.017361>,  <31.954653, 37.198292, 38.146271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766703, 37.123081, 38.017361>,  <31.453453, 36.997730, 37.802509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766703, 37.123081, 38.017361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594626, 0.124524, 0.794301,
		0.182030, -0.941429, 0.283860,
		0.783125, 0.313377, 0.537131,
		32.001640, 37.217094, 38.178501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493706, 36.583958, 38.473473>,  <31.453453, 36.997730, 37.802509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493706, 36.583958, 38.473473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666281, 36.940445, 38.529457>,  <31.769827, 37.154339, 38.563049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666281, 36.940445, 38.529457>,  <31.493706, 36.583958, 38.473473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666281, 36.940445, 38.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602337, 0.169075, 0.780130,
		0.671602, -0.420883, 0.609760,
		0.431439, 0.891219, 0.139962,
		31.795713, 37.207809, 38.571445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775124, 36.494160, 39.138664>,  <31.493706, 36.583958, 38.473473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775124, 36.494160, 39.138664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710630, 36.882458, 39.067493>,  <31.671934, 37.115437, 39.024792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.710630, 36.882458, 39.067493>,  <31.775124, 36.494160, 39.138664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710630, 36.882458, 39.067493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473567, 0.082073, 0.876926,
		0.865874, 0.225650, 0.446479,
		-0.161235, 0.970745, -0.177925,
		31.662260, 37.173683, 39.014114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806105, 36.741203, 39.767277>,  <31.775124, 36.494160, 39.138664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806105, 36.741203, 39.767277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629524, 37.041130, 39.570137>,  <31.523577, 37.221085, 39.451855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629524, 37.041130, 39.570137>,  <31.806105, 36.741203, 39.767277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629524, 37.041130, 39.570137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572746, 0.187346, 0.798037,
		0.690712, 0.634572, 0.346748,
		-0.441450, 0.749813, -0.492851,
		31.497089, 37.266075, 39.422283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756546, 37.284897, 40.287815>,  <31.806105, 36.741203, 39.767277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756546, 37.284897, 40.287815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505035, 37.397354, 39.997822>,  <31.354128, 37.464828, 39.823826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505035, 37.397354, 39.997822>,  <31.756546, 37.284897, 40.287815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505035, 37.397354, 39.997822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682393, 0.247485, 0.687816,
		0.372796, 0.927206, 0.036237,
		-0.628779, 0.281143, -0.724980,
		31.316402, 37.481697, 39.780327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465015, 37.914616, 40.502632>,  <31.756546, 37.284897, 40.287815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465015, 37.914616, 40.502632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219086, 37.753838, 40.231213>,  <31.071527, 37.657372, 40.068359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219086, 37.753838, 40.231213>,  <31.465015, 37.914616, 40.502632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219086, 37.753838, 40.231213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781292, 0.193053, 0.593560,
		-0.107584, 0.895080, -0.432732,
		-0.614824, -0.401947, -0.678549,
		31.034637, 37.633255, 40.027649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093803, 38.447952, 40.364426>,  <31.465015, 37.914616, 40.502632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093803, 38.447952, 40.364426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892490, 38.126896, 40.236378>,  <30.771702, 37.934261, 40.159550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892490, 38.126896, 40.236378>,  <31.093803, 38.447952, 40.364426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892490, 38.126896, 40.236378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754610, 0.227728, 0.615389,
		-0.421033, 0.551283, -0.720290,
		-0.503284, -0.802638, -0.320123,
		30.741505, 37.886105, 40.140343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385017, 38.653831, 40.524361>,  <31.093803, 38.447952, 40.364426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385017, 38.653831, 40.524361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336689, 38.260956, 40.466789>,  <30.307692, 38.025230, 40.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336689, 38.260956, 40.466789>,  <30.385017, 38.653831, 40.524361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336689, 38.260956, 40.466789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657795, -0.029370, 0.752624,
		-0.743443, 0.185606, -0.642528,
		-0.120820, -0.982186, -0.143926,
		30.300444, 37.966301, 40.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670395, 38.625904, 40.574894>,  <30.385017, 38.653831, 40.524361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670395, 38.625904, 40.574894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842665, 38.273716, 40.654179>,  <29.946026, 38.062401, 40.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842665, 38.273716, 40.654179>,  <29.670395, 38.625904, 40.574894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842665, 38.273716, 40.654179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527110, -0.067120, 0.847142,
		-0.732582, -0.469321, -0.493013,
		0.430673, -0.880473, 0.198213,
		29.971867, 38.009575, 40.713642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080854, 38.179562, 40.820408>,  <29.670395, 38.625904, 40.574894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080854, 38.179562, 40.820408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423660, 38.020657, 40.951683>,  <29.629343, 37.925316, 41.030449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423660, 38.020657, 40.951683>,  <29.080854, 38.179562, 40.820408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423660, 38.020657, 40.951683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396847, -0.102573, 0.912135,
		-0.328694, -0.911954, -0.245560,
		0.857014, -0.397263, 0.328191,
		29.680765, 37.901478, 41.050140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893930, 37.760571, 41.381062>,  <29.080854, 38.179562, 40.820408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893930, 37.760571, 41.381062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289274, 37.760483, 41.441917>,  <29.526480, 37.760429, 41.478432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289274, 37.760483, 41.441917>,  <28.893930, 37.760571, 41.381062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289274, 37.760483, 41.441917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147950, -0.234431, 0.960809,
		0.035452, -0.972133, -0.231735,
		0.988359, -0.000222, 0.152138,
		29.585781, 37.760414, 41.487560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687294, 37.007057, 41.309750>,  <28.893930, 37.760571, 41.381062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687294, 37.007057, 41.309750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350170, 36.792458, 41.326893>,  <28.147896, 36.663696, 41.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350170, 36.792458, 41.326893>,  <28.687294, 37.007057, 41.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350170, 36.792458, 41.326893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050051, -0.157419, -0.986263,
		0.535877, -0.829088, 0.159527,
		-0.842811, -0.536500, 0.042861,
		28.097326, 36.631508, 41.339752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834993, 36.586700, 40.845760>,  <28.687294, 37.007057, 41.309750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834993, 36.586700, 40.845760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437511, 36.575775, 40.889217>,  <28.199022, 36.569218, 40.915291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437511, 36.575775, 40.889217>,  <28.834993, 36.586700, 40.845760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437511, 36.575775, 40.889217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096523, -0.283375, -0.954139,
		0.056850, -0.958620, 0.278955,
		-0.993706, -0.027317, 0.108639,
		28.139400, 36.567581, 40.921810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593182, 35.978275, 40.437737>,  <28.834993, 36.586700, 40.845760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593182, 35.978275, 40.437737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273647, 36.214542, 40.483303>,  <28.081926, 36.356304, 40.510643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273647, 36.214542, 40.483303>,  <28.593182, 35.978275, 40.437737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273647, 36.214542, 40.483303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257479, -0.164586, -0.952164,
		-0.543663, -0.789951, 0.283562,
		-0.798833, 0.590668, 0.113916,
		28.033997, 36.391743, 40.517479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097750, 35.651100, 40.049004>,  <28.593182, 35.978275, 40.437737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097750, 35.651100, 40.049004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920174, 36.006783, 40.093239>,  <27.813627, 36.220192, 40.119781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920174, 36.006783, 40.093239>,  <28.097750, 35.651100, 40.049004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920174, 36.006783, 40.093239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209377, 0.017063, -0.977686,
		-0.871251, -0.457190, 0.178605,
		-0.443940, 0.889206, 0.110591,
		27.786991, 36.273544, 40.126415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465315, 35.578011, 39.707069>,  <28.097750, 35.651100, 40.049004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465315, 35.578011, 39.707069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501812, 35.975998, 39.723602>,  <27.523710, 36.214790, 39.733524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501812, 35.975998, 39.723602>,  <27.465315, 35.578011, 39.707069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501812, 35.975998, 39.723602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249264, 0.063007, -0.966384,
		-0.964128, 0.077872, 0.253760,
		0.091242, 0.994971, 0.041336,
		27.529184, 36.274490, 39.736004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880432, 35.815742, 39.376827>,  <27.465315, 35.578011, 39.707069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880432, 35.815742, 39.376827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170591, 36.090916, 39.367519>,  <27.344687, 36.256020, 39.361935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.170591, 36.090916, 39.367519>,  <26.880432, 35.815742, 39.376827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170591, 36.090916, 39.367519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090841, 0.062164, -0.993923,
		-0.682309, 0.723104, 0.107587,
		0.725398, 0.687936, -0.023272,
		27.388210, 36.297295, 39.360538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624676, 36.331841, 38.870605>,  <26.880432, 35.815742, 39.376827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624676, 36.331841, 38.870605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020023, 36.371887, 38.916401>,  <27.257231, 36.395916, 38.943878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020023, 36.371887, 38.916401>,  <26.624676, 36.331841, 38.870605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020023, 36.371887, 38.916401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124874, -0.104513, -0.986653,
		-0.086813, 0.989472, -0.115798,
		0.988367, 0.100114, 0.114486,
		27.316534, 36.401920, 38.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816853, 36.919949, 38.537605>,  <26.624676, 36.331841, 38.870605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816853, 36.919949, 38.537605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157862, 36.711147, 38.548332>,  <27.362467, 36.585865, 38.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157862, 36.711147, 38.548332>,  <26.816853, 36.919949, 38.537605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157862, 36.711147, 38.548332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050767, 0.031627, -0.998210,
		0.520222, 0.852356, 0.053463,
		0.852521, -0.522005, 0.026819,
		27.413618, 36.554546, 38.556377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235342, 37.211216, 38.072227>,  <26.816853, 36.919949, 38.537605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235342, 37.211216, 38.072227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407940, 36.853382, 38.118748>,  <27.511499, 36.638680, 38.146660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407940, 36.853382, 38.118748>,  <27.235342, 37.211216, 38.072227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407940, 36.853382, 38.118748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018625, -0.137728, -0.990295,
		0.901923, 0.425141, -0.076091,
		0.431495, -0.894587, 0.116302,
		27.537388, 36.585007, 38.153637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665543, 37.237202, 37.661190>,  <27.235342, 37.211216, 38.072227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665543, 37.237202, 37.661190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627213, 36.844376, 37.726135>,  <27.604214, 36.608681, 37.765102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627213, 36.844376, 37.726135>,  <27.665543, 37.237202, 37.661190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627213, 36.844376, 37.726135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028825, -0.160308, -0.986646,
		0.994981, -0.099225, -0.012947,
		-0.095824, -0.982067, 0.162364,
		27.598465, 36.549755, 37.774845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097799, 37.003582, 37.213856>,  <27.665543, 37.237202, 37.661190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097799, 37.003582, 37.213856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877356, 36.685349, 37.314510>,  <27.745089, 36.494408, 37.374901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877356, 36.685349, 37.314510>,  <28.097799, 37.003582, 37.213856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877356, 36.685349, 37.314510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005294, -0.304891, -0.952373,
		0.834416, -0.523530, 0.172241,
		-0.551111, -0.795586, 0.251634,
		27.712023, 36.446674, 37.389999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457449, 36.429256, 36.828091>,  <28.097799, 37.003582, 37.213856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457449, 36.429256, 36.828091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090393, 36.292946, 36.909882>,  <27.870159, 36.211159, 36.958958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.090393, 36.292946, 36.909882>,  <28.457449, 36.429256, 36.828091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090393, 36.292946, 36.909882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033911, -0.445501, -0.894639,
		0.395966, -0.827889, 0.397253,
		-0.917639, -0.340776, 0.204477,
		27.815102, 36.190712, 36.971226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440857, 35.782085, 36.562256>,  <28.457449, 36.429256, 36.828091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440857, 35.782085, 36.562256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051083, 35.866508, 36.593060>,  <27.817219, 35.917160, 36.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051083, 35.866508, 36.593060>,  <28.440857, 35.782085, 36.562256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051083, 35.866508, 36.593060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161726, -0.421048, -0.892504,
		-0.155943, -0.882143, 0.444417,
		-0.974436, 0.211053, 0.077006,
		27.758751, 35.929825, 36.616161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083862, 35.153526, 36.405766>,  <28.440857, 35.782085, 36.562256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083862, 35.153526, 36.405766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842285, 35.465221, 36.338787>,  <27.697340, 35.652241, 36.298599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842285, 35.465221, 36.338787>,  <28.083862, 35.153526, 36.405766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842285, 35.465221, 36.338787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420493, -0.489990, -0.763607,
		-0.677083, -0.390761, 0.623590,
		-0.603941, 0.779240, -0.167451,
		27.661102, 35.698994, 36.288551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027159, 35.086525, 35.597553>,  <28.083862, 35.153526, 36.405766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027159, 35.086525, 35.597553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141058, 34.862801, 35.286148>,  <28.209396, 34.728565, 35.099304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.141058, 34.862801, 35.286148>,  <28.027159, 35.086525, 35.597553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141058, 34.862801, 35.286148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821697, 0.560673, -0.102268,
		0.493693, -0.610584, 0.619237,
		0.284746, -0.559314, -0.778516,
		28.226482, 34.695007, 35.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758894, 34.852882, 35.645626>,  <28.027159, 35.086525, 35.597553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758894, 34.852882, 35.645626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697411, 34.907082, 35.254112>,  <28.660521, 34.939602, 35.019203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697411, 34.907082, 35.254112>,  <28.758894, 34.852882, 35.645626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697411, 34.907082, 35.254112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861313, 0.503834, -0.065510,
		0.484267, -0.853106, -0.194153,
		-0.153708, 0.135503, -0.978782,
		28.651299, 34.947731, 34.960480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177086, 34.110176, 35.587379>,  <28.758894, 34.852882, 35.645626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177086, 34.110176, 35.587379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481180, 33.850895, 35.604717>,  <29.663637, 33.695328, 35.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481180, 33.850895, 35.604717>,  <29.177086, 34.110176, 35.587379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481180, 33.850895, 35.604717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173821, -0.138669, 0.974965,
		-0.625962, -0.748737, -0.218092,
		0.760235, -0.648200, 0.043345,
		29.709251, 33.656433, 35.617722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944820, 33.360241, 35.785809>,  <29.177086, 34.110176, 35.587379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944820, 33.360241, 35.785809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323835, 33.444080, 35.882343>,  <29.551245, 33.494385, 35.940266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.323835, 33.444080, 35.882343>,  <28.944820, 33.360241, 35.785809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323835, 33.444080, 35.882343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227226, -0.089358, 0.969734,
		0.224823, -0.973695, -0.037043,
		0.947535, 0.209601, 0.241338,
		29.608095, 33.506962, 35.954746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075220, 32.972733, 36.398308>,  <28.944820, 33.360241, 35.785809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075220, 32.972733, 36.398308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372236, 33.240650, 36.398960>,  <29.550446, 33.401402, 36.399353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372236, 33.240650, 36.398960>,  <29.075220, 32.972733, 36.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372236, 33.240650, 36.398960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010131, -0.013670, 0.999855,
		0.669725, -0.742417, -0.016936,
		0.742541, 0.669799, 0.001634,
		29.594999, 33.441589, 36.399448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549072, 32.737465, 36.731232>,  <29.075220, 32.972733, 36.398308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549072, 32.737465, 36.731232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615906, 33.129894, 36.770363>,  <29.656006, 33.365353, 36.793842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615906, 33.129894, 36.770363>,  <29.549072, 32.737465, 36.731232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615906, 33.129894, 36.770363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026385, -0.103638, 0.994265,
		0.985590, -0.163543, -0.043202,
		0.167082, 0.981078, 0.097830,
		29.666031, 33.424217, 36.799713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951860, 32.775616, 37.257664>,  <29.549072, 32.737465, 36.731232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951860, 32.775616, 37.257664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843853, 33.160416, 37.241463>,  <29.779049, 33.391296, 37.231743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843853, 33.160416, 37.241463>,  <29.951860, 32.775616, 37.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843853, 33.160416, 37.241463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013941, 0.038159, 0.999174,
		0.962754, 0.270359, 0.003108,
		-0.270017, 0.962003, -0.040507,
		29.762848, 33.449017, 37.229309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469940, 33.125423, 37.635677>,  <29.951860, 32.775616, 37.257664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469940, 33.125423, 37.635677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164190, 33.383327, 37.634243>,  <29.980740, 33.538071, 37.633385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164190, 33.383327, 37.634243>,  <30.469940, 33.125423, 37.635677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164190, 33.383327, 37.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082736, 0.103590, 0.991173,
		0.639439, 0.757334, -0.132527,
		-0.764377, 0.644759, -0.003581,
		29.934877, 33.576756, 37.633167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602812, 33.495377, 38.164501>,  <30.469940, 33.125423, 37.635677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602812, 33.495377, 38.164501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211119, 33.550640, 38.105148>,  <29.976103, 33.583797, 38.069538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211119, 33.550640, 38.105148>,  <30.602812, 33.495377, 38.164501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211119, 33.550640, 38.105148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129559, 0.136525, 0.982128,
		0.155947, 0.980955, -0.115789,
		-0.979232, 0.138159, -0.148382,
		29.917349, 33.592087, 38.060635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469879, 34.033283, 38.669735>,  <30.602812, 33.495377, 38.164501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469879, 34.033283, 38.669735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117682, 33.872055, 38.569920>,  <29.906363, 33.775318, 38.510033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117682, 33.872055, 38.569920>,  <30.469879, 34.033283, 38.669735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117682, 33.872055, 38.569920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284870, 0.029131, 0.958124,
		-0.378921, 0.914706, -0.140472,
		-0.880493, -0.403069, -0.249534,
		29.853533, 33.751133, 38.495060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006300, 34.453510, 39.043430>,  <30.469879, 34.033283, 38.669735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006300, 34.453510, 39.043430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831335, 34.112061, 38.930290>,  <29.726357, 33.907192, 38.862408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831335, 34.112061, 38.930290>,  <30.006300, 34.453510, 39.043430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831335, 34.112061, 38.930290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230158, -0.197788, 0.952842,
		-0.869309, 0.481885, -0.109953,
		-0.437413, -0.853620, -0.282848,
		29.700111, 33.855976, 38.845436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480844, 34.427021, 39.506428>,  <30.006300, 34.453510, 39.043430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480844, 34.427021, 39.506428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528601, 34.050144, 39.381199>,  <29.557255, 33.824017, 39.306061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528601, 34.050144, 39.381199>,  <29.480844, 34.427021, 39.506428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528601, 34.050144, 39.381199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212108, -0.332252, 0.919031,
		-0.969926, -0.043319, -0.239515,
		0.119391, -0.942195, -0.313072,
		29.564419, 33.767487, 39.287277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894609, 34.050774, 39.765636>,  <29.480844, 34.427021, 39.506428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894609, 34.050774, 39.765636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184658, 33.782776, 39.702015>,  <29.358688, 33.621975, 39.663841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184658, 33.782776, 39.702015>,  <28.894609, 34.050774, 39.765636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184658, 33.782776, 39.702015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182090, -0.409314, 0.894038,
		-0.664108, -0.619325, -0.418803,
		0.725123, -0.669998, -0.159056,
		29.402195, 33.581776, 39.654297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467409, 33.521679, 39.910069>,  <28.894609, 34.050774, 39.765636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467409, 33.521679, 39.910069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857174, 33.433441, 39.927307>,  <29.091032, 33.380497, 39.937653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857174, 33.433441, 39.927307>,  <28.467409, 33.521679, 39.910069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857174, 33.433441, 39.927307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139781, -0.444568, 0.884772,
		-0.176016, -0.868158, -0.464027,
		0.974413, -0.220596, 0.043101,
		29.149498, 33.367264, 39.940239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528599, 32.837551, 40.231937>,  <28.467409, 33.521679, 39.910069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528599, 32.837551, 40.231937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896387, 32.983334, 40.290920>,  <29.117060, 33.070805, 40.326309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896387, 32.983334, 40.290920>,  <28.528599, 32.837551, 40.231937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896387, 32.983334, 40.290920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016747, -0.411034, 0.911466,
		0.392800, -0.835597, -0.384038,
		0.919471, 0.364456, 0.147460,
		29.172228, 33.092670, 40.335159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902870, 32.299908, 40.563389>,  <28.528599, 32.837551, 40.231937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902870, 32.299908, 40.563389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088854, 32.645046, 40.642700>,  <29.200443, 32.852127, 40.690289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088854, 32.645046, 40.642700>,  <28.902870, 32.299908, 40.563389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088854, 32.645046, 40.642700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154182, -0.299454, 0.941571,
		0.871803, -0.407221, -0.272268,
		0.464960, 0.862843, 0.198279,
		29.228342, 32.903900, 40.702183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599255, 32.148182, 40.873260>,  <28.902870, 32.299908, 40.563389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599255, 32.148182, 40.873260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525579, 32.521900, 40.995358>,  <29.481375, 32.746132, 41.068615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.525579, 32.521900, 40.995358>,  <29.599255, 32.148182, 40.873260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525579, 32.521900, 40.995358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209831, -0.266019, 0.940853,
		0.960232, 0.237344, -0.147045,
		-0.184189, 0.934292, 0.305242,
		29.470324, 32.802189, 41.086929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182949, 32.382683, 41.230900>,  <29.599255, 32.148182, 40.873260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182949, 32.382683, 41.230900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865780, 32.594723, 41.351078>,  <29.675478, 32.721947, 41.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865780, 32.594723, 41.351078>,  <30.182949, 32.382683, 41.230900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865780, 32.594723, 41.351078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169176, -0.282162, 0.944333,
		0.585363, 0.799612, 0.134053,
		-0.792925, 0.530099, 0.300442,
		29.627903, 32.753754, 41.441212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364212, 32.628307, 41.910320>,  <30.182949, 32.382683, 41.230900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364212, 32.628307, 41.910320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966372, 32.668694, 41.900726>,  <29.727667, 32.692924, 41.894970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966372, 32.668694, 41.900726>,  <30.364212, 32.628307, 41.910320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966372, 32.668694, 41.900726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036914, -0.128178, 0.991064,
		0.096993, 0.986598, 0.131213,
		-0.994600, 0.100970, -0.023987,
		29.667992, 32.698986, 41.893532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305573, 32.754032, 42.518196>,  <30.364212, 32.628307, 41.910320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305573, 32.754032, 42.518196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919411, 32.699001, 42.429588>,  <29.687714, 32.665981, 42.376423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919411, 32.699001, 42.429588>,  <30.305573, 32.754032, 42.518196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919411, 32.699001, 42.429588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205441, -0.121898, 0.971048,
		-0.160597, 0.982961, 0.089417,
		-0.965403, -0.137577, -0.221517,
		29.629789, 32.657726, 42.363132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961380, 33.186043, 42.959366>,  <30.305573, 32.754032, 42.518196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961380, 33.186043, 42.959366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704313, 32.898121, 42.854397>,  <29.550074, 32.725368, 42.791416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704313, 32.898121, 42.854397>,  <29.961380, 33.186043, 42.959366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704313, 32.898121, 42.854397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072815, -0.283582, 0.956179,
		-0.762679, 0.633611, 0.129836,
		-0.642665, -0.719804, -0.262418,
		29.511515, 32.682178, 42.775673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253990, 33.258472, 43.330956>,  <29.961380, 33.186043, 42.959366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253990, 33.258472, 43.330956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295139, 32.873230, 43.231487>,  <29.319828, 32.642082, 43.171806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295139, 32.873230, 43.231487>,  <29.253990, 33.258472, 43.330956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295139, 32.873230, 43.231487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057152, -0.255310, 0.965169,
		-0.993051, -0.085077, -0.081307,
		0.102872, -0.963109, -0.248674,
		29.326000, 32.584297, 43.156887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886467, 32.886822, 43.879322>,  <29.253990, 33.258472, 43.330956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886467, 32.886822, 43.879322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072601, 32.574158, 43.713207>,  <29.184282, 32.386559, 43.613541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072601, 32.574158, 43.713207>,  <28.886467, 32.886822, 43.879322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072601, 32.574158, 43.713207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037561, -0.451317, 0.891573,
		-0.884336, -0.430481, -0.180655,
		0.465338, -0.781664, -0.415285,
		29.212202, 32.339657, 43.588623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542709, 32.273571, 44.178452>,  <28.886467, 32.886822, 43.879322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542709, 32.273571, 44.178452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896721, 32.176075, 44.019798>,  <29.109127, 32.117577, 43.924606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896721, 32.176075, 44.019798>,  <28.542709, 32.273571, 44.178452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896721, 32.176075, 44.019798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287730, -0.383391, 0.877623,
		-0.365962, -0.890848, -0.269187,
		0.885033, -0.243724, -0.396630,
		29.162230, 32.102955, 43.900806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528374, 31.561560, 44.373096>,  <28.542709, 32.273571, 44.178452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528374, 31.561560, 44.373096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886549, 31.659937, 44.224663>,  <29.101454, 31.718964, 44.135601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886549, 31.659937, 44.224663>,  <28.528374, 31.561560, 44.373096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886549, 31.659937, 44.224663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444618, -0.451799, 0.773429,
		0.022561, -0.857549, -0.513907,
		0.895436, 0.245942, -0.371089,
		29.155180, 31.733719, 44.113335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895761, 31.005770, 44.290058>,  <28.528374, 31.561560, 44.373096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895761, 31.005770, 44.290058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134232, 31.319349, 44.359341>,  <29.277313, 31.507498, 44.400909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134232, 31.319349, 44.359341>,  <28.895761, 31.005770, 44.290058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134232, 31.319349, 44.359341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211554, -0.361506, 0.908052,
		0.774481, -0.504715, -0.381368,
		0.596174, 0.783949, 0.173205,
		29.313084, 31.554535, 44.411301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521687, 30.755556, 44.476322>,  <28.895761, 31.005770, 44.290058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521687, 30.755556, 44.476322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493126, 31.124067, 44.629242>,  <29.475990, 31.345173, 44.720993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493126, 31.124067, 44.629242>,  <29.521687, 30.755556, 44.476322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493126, 31.124067, 44.629242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053195, -0.379215, 0.923778,
		0.996028, 0.086296, -0.021930,
		-0.071402, 0.921276, 0.382299,
		29.471704, 31.400450, 44.743931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706345, 30.654087, 45.117832>,  <29.521687, 30.755556, 44.476322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706345, 30.654087, 45.117832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586054, 31.034071, 45.151638>,  <29.513880, 31.262060, 45.171921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586054, 31.034071, 45.151638>,  <29.706345, 30.654087, 45.117832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586054, 31.034071, 45.151638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003360, -0.089671, 0.995966,
		0.953704, 0.299230, 0.030158,
		-0.300728, 0.949958, 0.084514,
		29.495836, 31.319057, 45.176991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391577, 30.935217, 44.973961>,  <29.706345, 30.654087, 45.117832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391577, 30.935217, 44.973961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785849, 30.895950, 45.028801>,  <31.022411, 30.872391, 45.061707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785849, 30.895950, 45.028801>,  <30.391577, 30.935217, 44.973961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785849, 30.895950, 45.028801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148921, 0.125382, -0.980868,
		0.079097, 0.987240, 0.138205,
		0.985681, -0.098166, 0.137103,
		31.081553, 30.866501, 45.069931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832289, 31.469584, 44.580147>,  <30.391577, 30.935217, 44.973961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832289, 31.469584, 44.580147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110714, 31.195850, 44.667038>,  <31.277769, 31.031610, 44.719173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110714, 31.195850, 44.667038>,  <30.832289, 31.469584, 44.580147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110714, 31.195850, 44.667038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416780, 0.138754, -0.898355,
		0.584630, 0.715849, 0.381797,
		0.696062, -0.684331, 0.217231,
		31.319532, 30.990551, 44.732208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555403, 31.768051, 44.495583>,  <30.832289, 31.469584, 44.580147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555403, 31.768051, 44.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595530, 31.371145, 44.466328>,  <31.619606, 31.133001, 44.448776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595530, 31.371145, 44.466328>,  <31.555403, 31.768051, 44.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595530, 31.371145, 44.466328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479290, 0.112608, -0.870402,
		0.871904, 0.052263, 0.486879,
		0.100316, -0.992264, -0.073134,
		31.625624, 31.073465, 44.444386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190880, 31.731506, 44.493076>,  <31.555403, 31.768051, 44.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190880, 31.731506, 44.493076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075565, 31.389519, 44.320602>,  <32.006378, 31.184326, 44.217117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075565, 31.389519, 44.320602>,  <32.190880, 31.731506, 44.493076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075565, 31.389519, 44.320602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678017, 0.135714, -0.722409,
		0.676155, -0.500609, 0.540560,
		-0.288282, -0.854970, -0.431185,
		31.989080, 31.133028, 44.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742802, 31.354675, 44.293747>,  <32.190880, 31.731506, 44.493076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742802, 31.354675, 44.293747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436348, 31.251341, 44.058357>,  <32.252476, 31.189341, 43.917122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436348, 31.251341, 44.058357>,  <32.742802, 31.354675, 44.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436348, 31.251341, 44.058357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574771, 0.134264, -0.807225,
		0.287549, -0.956679, 0.045622,
		-0.766129, -0.258339, -0.588478,
		32.206509, 31.173840, 43.881813>
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
