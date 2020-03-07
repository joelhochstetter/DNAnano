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
	<3.052832, 5.188850, 3.517488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815916, 5.111120, 3.830265>,  <2.673767, 5.064483, 4.017931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.815916, 5.111120, 3.830265>,  <3.052832, 5.188850, 3.517488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.815916, 5.111120, 3.830265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791068, -0.324521, 0.518554,
		0.152989, 0.925702, 0.345934,
		-0.592289, -0.194324, 0.781941,
		2.638229, 5.052823, 4.064847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.457005, 5.509034, 4.114369>,  <3.052832, 5.188850, 3.517488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.457005, 5.509034, 4.114369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193148, 5.218996, 4.193474>,  <3.034833, 5.044973, 4.240936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193148, 5.218996, 4.193474>,  <3.457005, 5.509034, 4.114369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193148, 5.218996, 4.193474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709495, -0.513949, 0.482154,
		-0.247968, 0.458360, 0.853474,
		-0.659643, -0.725095, 0.197761,
		2.995255, 5.001468, 4.252802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.425292, 5.422902, 4.789347>,  <3.457005, 5.509034, 4.114369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.425292, 5.422902, 4.789347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.291786, 5.083197, 4.625711>,  <3.211683, 4.879374, 4.527530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.291786, 5.083197, 4.625711>,  <3.425292, 5.422902, 4.789347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.291786, 5.083197, 4.625711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623475, -0.524376, 0.579921,
		-0.707022, -0.061499, 0.704513,
		-0.333765, -0.849263, -0.409088,
		3.191657, 4.828418, 4.502985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.309994, 4.845307, 5.275066>,  <3.425292, 5.422902, 4.789347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.309994, 4.845307, 5.275066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368979, 4.622026, 4.948467>,  <3.404369, 4.488058, 4.752508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.368979, 4.622026, 4.948467>,  <3.309994, 4.845307, 5.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368979, 4.622026, 4.948467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655161, -0.563312, 0.503433,
		-0.740959, -0.609173, 0.282645,
		0.147461, -0.558201, -0.816497,
		3.413217, 4.454566, 4.703518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.052099, 4.186403, 5.371517>,  <3.309994, 4.845307, 5.275066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.052099, 4.186403, 5.371517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370682, 4.181250, 5.129694>,  <3.561832, 4.178157, 4.984601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370682, 4.181250, 5.129694>,  <3.052099, 4.186403, 5.371517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.370682, 4.181250, 5.129694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444746, -0.664901, 0.600089,
		-0.409702, -0.746820, -0.523836,
		0.796458, -0.012883, -0.604556,
		3.609619, 4.177384, 4.948327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.120780, 3.513578, 5.023829>,  <3.052099, 4.186403, 5.371517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.120780, 3.513578, 5.023829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479506, 3.690439, 5.029829>,  <3.694741, 3.796556, 5.033429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479506, 3.690439, 5.029829>,  <3.120780, 3.513578, 5.023829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.479506, 3.690439, 5.029829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386085, -0.798751, 0.461449,
		0.216013, -0.408042, -0.887040,
		0.896815, 0.442152, 0.015001,
		3.748550, 3.823085, 5.034329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.700399, 2.947160, 4.818387>,  <3.120780, 3.513578, 5.023829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.700399, 2.947160, 4.818387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.884127, 3.237360, 5.023394>,  <3.994363, 3.411480, 5.146398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.884127, 3.237360, 5.023394>,  <3.700399, 2.947160, 4.818387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.884127, 3.237360, 5.023394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562154, -0.684157, 0.464664,
		0.687757, 0.074685, -0.722089,
		0.459319, 0.725501, 0.512518,
		4.021922, 3.455010, 5.177149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.395473, 2.815696, 4.756248>,  <3.700399, 2.947160, 4.818387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.395473, 2.815696, 4.756248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.342674, 3.027433, 5.091478>,  <4.310995, 3.154476, 5.292616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.342674, 3.027433, 5.091478>,  <4.395473, 2.815696, 4.756248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.342674, 3.027433, 5.091478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573757, -0.648644, 0.500064,
		0.808319, 0.546859, -0.218095,
		-0.131999, 0.529345, 0.838076,
		4.303075, 3.186237, 5.342901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.459833, 2.359800, 1.385770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682743, 2.674387, 1.492287>,  <4.816489, 2.863139, 1.556197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.682743, 2.674387, 1.492287>,  <4.459833, 2.359800, 1.385770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.682743, 2.674387, 1.492287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497257, 0.572944, -0.651514,
		-0.664966, 0.230658, 0.710365,
		0.557276, 0.786468, 0.266292,
		4.849926, 2.910327, 1.572174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959329, 2.923098, 1.392763>,  <4.459833, 2.359800, 1.385770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959329, 2.923098, 1.392763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.327774, 3.066371, 1.331764>,  <4.548841, 3.152335, 1.295165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.327774, 3.066371, 1.331764>,  <3.959329, 2.923098, 1.392763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.327774, 3.066371, 1.331764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335646, 0.532261, -0.777200,
		-0.197212, 0.767074, 0.610495,
		0.921113, 0.358183, -0.152497,
		4.604108, 3.173826, 1.286015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015515, 3.667818, 1.388925>,  <3.959329, 2.923098, 1.392763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015515, 3.667818, 1.388925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330990, 3.566145, 1.165009>,  <4.520275, 3.505141, 1.030659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.330990, 3.566145, 1.165009>,  <4.015515, 3.667818, 1.388925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.330990, 3.566145, 1.165009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349105, 0.564336, -0.748098,
		0.506063, 0.785440, 0.356348,
		0.788686, -0.254182, -0.559791,
		4.567595, 3.489890, 0.997071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.391000, 4.280023, 1.118495>,  <4.015515, 3.667818, 1.388925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.391000, 4.280023, 1.118495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416405, 3.959835, 0.880096>,  <4.431647, 3.767722, 0.737057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.416405, 3.959835, 0.880096>,  <4.391000, 4.280023, 1.118495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.416405, 3.959835, 0.880096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379585, 0.532943, -0.756232,
		0.922974, 0.274261, -0.269999,
		0.063511, -0.800471, -0.595998,
		4.435458, 3.719694, 0.701297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.744270, 4.408604, 0.552834>,  <4.391000, 4.280023, 1.118495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.744270, 4.408604, 0.552834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529591, 4.093390, 0.432201>,  <4.400783, 3.904261, 0.359822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.529591, 4.093390, 0.432201>,  <4.744270, 4.408604, 0.552834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.529591, 4.093390, 0.432201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208670, 0.470279, -0.857493,
		0.817564, -0.397284, -0.416839,
		-0.536699, -0.788037, -0.301582,
		4.368581, 3.856978, 0.341727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.967407, 4.242716, -0.210131>,  <4.744270, 4.408604, 0.552834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.967407, 4.242716, -0.210131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594105, 4.123819, -0.129454>,  <4.370123, 4.052481, -0.081047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.594105, 4.123819, -0.129454>,  <4.967407, 4.242716, -0.210131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.594105, 4.123819, -0.129454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348696, 0.614790, -0.707421,
		0.086277, -0.730534, -0.677404,
		-0.933256, -0.297242, 0.201693,
		4.314128, 4.034647, -0.068946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.649990, 4.305894, -0.838645>,  <4.967407, 4.242716, -0.210131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.649990, 4.305894, -0.838645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349945, 4.284760, -0.574966>,  <4.169918, 4.272080, -0.416759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.349945, 4.284760, -0.574966>,  <4.649990, 4.305894, -0.838645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349945, 4.284760, -0.574966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475481, 0.735879, -0.482080,
		-0.459618, -0.675049, -0.577113,
		-0.750113, -0.052833, 0.659196,
		4.124911, 4.268910, -0.377208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.987103, 4.183887, -1.192664>,  <4.649990, 4.305894, -0.838645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.987103, 4.183887, -1.192664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946316, 4.426112, -0.876968>,  <3.921843, 4.571447, -0.687551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.946316, 4.426112, -0.876968>,  <3.987103, 4.183887, -1.192664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.946316, 4.426112, -0.876968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552508, 0.625280, -0.551144,
		-0.827247, -0.492260, 0.270818,
		-0.101969, 0.605561, 0.789239,
		3.915725, 4.607780, -0.640197>
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
