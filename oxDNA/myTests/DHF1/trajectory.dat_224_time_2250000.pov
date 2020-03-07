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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.141977, 2.221339, 1.036126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949951, 2.409668, 0.740055>,  <2.834736, 2.522666, 0.562412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949951, 2.409668, 0.740055>,  <3.141977, 2.221339, 1.036126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949951, 2.409668, 0.740055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420481, 0.864020, 0.276884,
		0.769893, -0.178308, -0.612758,
		-0.480064, 0.470824, -0.740178,
		2.805932, 2.550915, 0.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.645833, 2.660159, 0.691470>,  <3.141977, 2.221339, 1.036126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.645833, 2.660159, 0.691470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276176, 2.793610, 0.617004>,  <3.054383, 2.873680, 0.572325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.276176, 2.793610, 0.617004>,  <3.645833, 2.660159, 0.691470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.276176, 2.793610, 0.617004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304796, 0.937615, 0.167262,
		0.230354, 0.097832, -0.968177,
		-0.924141, 0.333626, -0.186164,
		2.998934, 2.893698, 0.561155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.507735, 3.064916, 0.138906>,  <3.645833, 2.660159, 0.691470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.507735, 3.064916, 0.138906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.223743, 3.184174, 0.394104>,  <3.053348, 3.255728, 0.547223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.223743, 3.184174, 0.394104>,  <3.507735, 3.064916, 0.138906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.223743, 3.184174, 0.394104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434194, 0.898595, 0.063258,
		-0.554440, 0.321926, -0.767438,
		-0.709980, 0.298144, 0.637995,
		3.010749, 3.273617, 0.585503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.373535, 3.740493, -0.135563>,  <3.507735, 3.064916, 0.138906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.373535, 3.740493, -0.135563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.264473, 3.693787, 0.246437>,  <3.199036, 3.665763, 0.475637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.264473, 3.693787, 0.246437>,  <3.373535, 3.740493, -0.135563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.264473, 3.693787, 0.246437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446176, 0.864073, 0.233034,
		-0.852400, 0.489636, -0.183495,
		-0.272655, -0.116767, 0.955000,
		3.182676, 3.658756, 0.532937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.070382, 4.351265, 0.054582>,  <3.373535, 3.740493, -0.135563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.070382, 4.351265, 0.054582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193848, 4.160645, 0.383854>,  <3.267927, 4.046272, 0.581417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193848, 4.160645, 0.383854>,  <3.070382, 4.351265, 0.054582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193848, 4.160645, 0.383854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510273, 0.813324, 0.279511,
		-0.802713, 0.333771, 0.494215,
		0.308664, -0.476552, 0.823180,
		3.286447, 4.017679, 0.630808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.022388, 4.851332, 0.615914>,  <3.070382, 4.351265, 0.054582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.022388, 4.851332, 0.615914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308155, 4.585617, 0.703850>,  <3.479615, 4.426188, 0.756611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.308155, 4.585617, 0.703850>,  <3.022388, 4.851332, 0.615914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.308155, 4.585617, 0.703850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681485, 0.731824, -0.003288,
		-0.158699, 0.152166, 0.975531,
		0.714418, -0.664288, 0.219839,
		3.522480, 4.386331, 0.769801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.399279, 5.097791, 1.137880>,  <3.022388, 4.851332, 0.615914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.399279, 5.097791, 1.137880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.660690, 4.858093, 0.952923>,  <3.817537, 4.714275, 0.841948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.660690, 4.858093, 0.952923>,  <3.399279, 5.097791, 1.137880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.660690, 4.858093, 0.952923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678559, 0.734511, 0.007150,
		0.335349, -0.318434, 0.886646,
		0.653528, -0.599244, -0.462394,
		3.856749, 4.678320, 0.814205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.932185, 5.302440, 1.388735>,  <3.399279, 5.097791, 1.137880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.932185, 5.302440, 1.388735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.052940, 5.133057, 1.047081>,  <4.125393, 5.031426, 0.842089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.052940, 5.133057, 1.047081>,  <3.932185, 5.302440, 1.388735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052940, 5.133057, 1.047081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715024, 0.693161, -0.090932,
		0.630559, -0.583276, 0.512040,
		0.301888, -0.423459, -0.854135,
		4.143507, 5.006019, 0.790841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.792301, 6.441070, 0.767553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840561, 6.297028, 0.397522>,  <4.869517, 6.210602, 0.175504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.840561, 6.297028, 0.397522>,  <4.792301, 6.441070, 0.767553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.840561, 6.297028, 0.397522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301528, -0.901149, 0.311466,
		-0.945793, 0.241358, -0.217305,
		0.120649, -0.360106, -0.925077,
		4.876756, 6.188996, 0.119999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.318507, 5.986042, 0.801862>,  <4.792301, 6.441070, 0.767553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.318507, 5.986042, 0.801862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.538771, 5.880539, 0.485077>,  <4.670929, 5.817237, 0.295006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.538771, 5.880539, 0.485077>,  <4.318507, 5.986042, 0.801862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.538771, 5.880539, 0.485077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268400, -0.954329, 0.131214,
		-0.790402, 0.140308, -0.596304,
		0.550660, -0.263759, -0.791963,
		4.703969, 5.801411, 0.247488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983109, 5.591310, 0.112887>,  <4.318507, 5.986042, 0.801862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983109, 5.591310, 0.112887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.359669, 5.485809, 0.196983>,  <4.585605, 5.422509, 0.247441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.359669, 5.485809, 0.196983>,  <3.983109, 5.591310, 0.112887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.359669, 5.485809, 0.196983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272315, -0.962129, 0.012338,
		0.199024, -0.068867, -0.977572,
		0.941400, -0.263752, 0.210241,
		4.642089, 5.406684, 0.260056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.178013, 5.053799, -0.372701>,  <3.983109, 5.591310, 0.112887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.178013, 5.053799, -0.372701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.370134, 5.039597, -0.022148>,  <4.485407, 5.031075, 0.188184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.370134, 5.039597, -0.022148>,  <4.178013, 5.053799, -0.372701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.370134, 5.039597, -0.022148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412081, -0.891173, 0.189738,
		0.774272, -0.452273, -0.442665,
		0.480304, -0.035506, 0.876383,
		4.514225, 5.028945, 0.240767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513920, 4.330813, -0.284833>,  <4.178013, 5.053799, -0.372701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513920, 4.330813, -0.284833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424658, 4.526718, 0.052292>,  <4.371100, 4.644261, 0.254567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.424658, 4.526718, 0.052292>,  <4.513920, 4.330813, -0.284833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424658, 4.526718, 0.052292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517618, -0.792184, 0.323291,
		0.825999, -0.364111, 0.430290,
		-0.223155, 0.489764, 0.842813,
		4.357711, 4.673647, 0.305136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.617335, 3.867229, 0.174311>,  <4.513920, 4.330813, -0.284833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.617335, 3.867229, 0.174311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.368940, 4.130814, 0.344086>,  <4.219903, 4.288964, 0.445951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.368940, 4.130814, 0.344086>,  <4.617335, 3.867229, 0.174311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.368940, 4.130814, 0.344086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563655, -0.751706, 0.342390,
		0.544674, -0.026616, 0.838226,
		-0.620986, 0.658961, 0.424437,
		4.182644, 4.328502, 0.471417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590532, 3.679994, 0.834486>,  <4.617335, 3.867229, 0.174311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590532, 3.679994, 0.834486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251270, 3.891830, 0.839615>,  <4.047713, 4.018932, 0.842692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.251270, 3.891830, 0.839615>,  <4.590532, 3.679994, 0.834486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251270, 3.891830, 0.839615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522604, -0.840435, 0.143367,
		0.086703, 0.114896, 0.989587,
		-0.848156, 0.529592, 0.012823,
		3.996824, 4.050708, 0.843462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.131979, 3.282992, 1.367680>,  <4.590532, 3.679994, 0.834486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.131979, 3.282992, 1.367680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880764, 3.515457, 1.160675>,  <3.730035, 3.654936, 1.036472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.880764, 3.515457, 1.160675>,  <4.131979, 3.282992, 1.367680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.880764, 3.515457, 1.160675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647256, -0.759305, -0.067203,
		-0.432005, 0.292757, 0.853033,
		-0.628038, 0.581163, -0.517512,
		3.692353, 3.689806, 1.005421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
