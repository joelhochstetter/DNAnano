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
	<24.759504, 35.230549, 34.949867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427408, 35.017151, 35.014462>,  <24.228149, 34.889111, 35.053219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427408, 35.017151, 35.014462>,  <24.759504, 35.230549, 34.949867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427408, 35.017151, 35.014462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492831, -0.837933, -0.234492,
		0.260417, -0.115099, 0.958611,
		-0.830242, -0.533498, 0.161487,
		24.178335, 34.857101, 35.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375910, 35.033424, 35.228516>,  <24.759504, 35.230549, 34.949867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375910, 35.033424, 35.228516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684071, 35.005707, 34.975002>,  <25.868967, 34.989075, 34.822895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684071, 35.005707, 34.975002>,  <25.375910, 35.033424, 35.228516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684071, 35.005707, 34.975002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630476, -0.064957, 0.773486,
		-0.094769, -0.995479, -0.006353,
		0.770402, -0.069297, -0.633781,
		25.915192, 34.984917, 34.784866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749941, 35.178776, 35.805145>,  <25.375910, 35.033424, 35.228516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749941, 35.178776, 35.805145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669987, 35.556652, 35.701145>,  <25.622013, 35.783379, 35.638744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669987, 35.556652, 35.701145>,  <25.749941, 35.178776, 35.805145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669987, 35.556652, 35.701145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752963, 0.317898, 0.576184,
		0.626970, -0.080599, -0.774862,
		-0.199888, 0.944693, -0.260001,
		25.610020, 35.840061, 35.623146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326427, 35.591133, 35.546257>,  <25.749941, 35.178776, 35.805145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326427, 35.591133, 35.546257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055561, 35.818207, 35.733524>,  <25.893042, 35.954453, 35.845882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055561, 35.818207, 35.733524>,  <26.326427, 35.591133, 35.546257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055561, 35.818207, 35.733524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703866, 0.314247, 0.637041,
		0.214520, 0.760908, -0.612373,
		-0.677166, 0.567686, 0.468165,
		25.852411, 35.988514, 35.873974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727243, 36.255669, 35.657257>,  <26.326427, 35.591133, 35.546257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727243, 36.255669, 35.657257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423735, 36.272507, 35.917255>,  <26.241629, 36.282612, 36.073254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423735, 36.272507, 35.917255>,  <26.727243, 36.255669, 35.657257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423735, 36.272507, 35.917255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612061, 0.387446, 0.689396,
		-0.222816, 0.920931, -0.319749,
		-0.758772, 0.042097, 0.649995,
		26.196104, 36.285137, 36.112255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644051, 37.007576, 35.905018>,  <26.727243, 36.255669, 35.657257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644051, 37.007576, 35.905018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533083, 36.729996, 36.170788>,  <26.466501, 36.563446, 36.330250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.533083, 36.729996, 36.170788>,  <26.644051, 37.007576, 35.905018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533083, 36.729996, 36.170788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659864, 0.365027, 0.656761,
		-0.698296, 0.620632, 0.356649,
		-0.277421, -0.693953, 0.664430,
		26.449858, 36.521809, 36.370117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641630, 37.271088, 36.521648>,  <26.644051, 37.007576, 35.905018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641630, 37.271088, 36.521648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664154, 36.884991, 36.623737>,  <26.677668, 36.653332, 36.684990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664154, 36.884991, 36.623737>,  <26.641630, 37.271088, 36.521648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664154, 36.884991, 36.623737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743843, 0.211070, 0.634151,
		-0.665979, 0.154138, 0.729873,
		0.056308, -0.965241, 0.255223,
		26.681046, 36.595417, 36.700306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547190, 37.205978, 37.261688>,  <26.641630, 37.271088, 36.521648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547190, 37.205978, 37.261688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781366, 36.911186, 37.126560>,  <26.921873, 36.734310, 37.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781366, 36.911186, 37.126560>,  <26.547190, 37.205978, 37.261688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781366, 36.911186, 37.126560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669429, 0.204404, 0.714201,
		-0.457300, -0.644268, 0.613022,
		0.585441, -0.736979, -0.337817,
		26.956999, 36.690094, 37.025215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692127, 36.889503, 37.799240>,  <26.547190, 37.205978, 37.261688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692127, 36.889503, 37.799240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966454, 36.746132, 37.545883>,  <27.131050, 36.660110, 37.393867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966454, 36.746132, 37.545883>,  <26.692127, 36.889503, 37.799240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966454, 36.746132, 37.545883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710779, 0.142891, 0.688749,
		-0.156359, -0.922558, 0.352758,
		0.685817, -0.358425, -0.633393,
		27.172199, 36.638603, 37.355865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133934, 36.486214, 38.164543>,  <26.692127, 36.889503, 37.799240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133934, 36.486214, 38.164543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336554, 36.586056, 37.834427>,  <27.458126, 36.645962, 37.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336554, 36.586056, 37.834427>,  <27.133934, 36.486214, 38.164543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336554, 36.586056, 37.834427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793775, 0.238719, 0.559405,
		0.336645, -0.938461, -0.077209,
		0.506548, 0.249608, -0.825290,
		27.488518, 36.660938, 37.586838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788128, 36.279625, 38.385696>,  <27.133934, 36.486214, 38.164543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788128, 36.279625, 38.385696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859398, 36.537655, 38.088474>,  <27.902161, 36.692474, 37.910141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859398, 36.537655, 38.088474>,  <27.788128, 36.279625, 38.385696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859398, 36.537655, 38.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889465, 0.217376, 0.401996,
		0.420840, -0.732548, -0.535039,
		0.178177, 0.645074, -0.743056,
		27.912851, 36.731178, 37.865559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467123, 36.417347, 38.736382>,  <27.788128, 36.279625, 38.385696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467123, 36.417347, 38.736382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791216, 36.503193, 38.518223>,  <28.985672, 36.554699, 38.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791216, 36.503193, 38.518223>,  <28.467123, 36.417347, 38.736382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791216, 36.503193, 38.518223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572873, -0.093359, 0.814310,
		0.123846, -0.972226, -0.198590,
		0.810234, 0.214616, -0.545400,
		29.034286, 36.567577, 38.354603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732836, 37.046715, 39.083622>,  <28.467123, 36.417347, 38.736382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732836, 37.046715, 39.083622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706093, 37.408615, 38.915359>,  <28.690048, 37.625755, 38.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706093, 37.408615, 38.915359>,  <28.732836, 37.046715, 39.083622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706093, 37.408615, 38.915359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186988, -0.425490, -0.885435,
		-0.980085, 0.019460, 0.197625,
		-0.066856, 0.904754, -0.420655,
		28.686035, 37.680042, 38.789162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062582, 37.168911, 38.875004>,  <28.732836, 37.046715, 39.083622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062582, 37.168911, 38.875004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345394, 37.346554, 38.654865>,  <28.515081, 37.453140, 38.522781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.345394, 37.346554, 38.654865>,  <28.062582, 37.168911, 38.875004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345394, 37.346554, 38.654865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338796, -0.470387, -0.814833,
		-0.620746, 0.762567, -0.182117,
		0.707030, 0.444104, -0.550346,
		28.557503, 37.479786, 38.489761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743185, 37.593719, 38.310104>,  <28.062582, 37.168911, 38.875004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743185, 37.593719, 38.310104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107916, 37.461712, 38.212406>,  <28.326754, 37.382507, 38.153786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107916, 37.461712, 38.212406>,  <27.743185, 37.593719, 38.310104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107916, 37.461712, 38.212406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363754, -0.373459, -0.853353,
		0.190409, 0.866956, -0.460577,
		0.911826, -0.330023, -0.244249,
		28.381464, 37.362705, 38.139133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018152, 37.923702, 37.677784>,  <27.743185, 37.593719, 38.310104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018152, 37.923702, 37.677784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151966, 37.549667, 37.724609>,  <28.232254, 37.325249, 37.752705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151966, 37.549667, 37.724609>,  <28.018152, 37.923702, 37.677784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151966, 37.549667, 37.724609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564133, -0.298214, -0.769950,
		0.754879, 0.191533, -0.627274,
		0.334533, -0.935085, 0.117065,
		28.252325, 37.269142, 37.759727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198196, 37.633900, 37.014534>,  <28.018152, 37.923702, 37.677784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198196, 37.633900, 37.014534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119080, 37.335499, 37.268890>,  <28.071609, 37.156460, 37.421505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119080, 37.335499, 37.268890>,  <28.198196, 37.633900, 37.014534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119080, 37.335499, 37.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493504, -0.484719, -0.722151,
		0.846955, -0.456652, -0.272280,
		-0.197792, -0.746000, 0.635895,
		28.059742, 37.111698, 37.459660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351812, 36.953892, 36.715981>,  <28.198196, 37.633900, 37.014534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351812, 36.953892, 36.715981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074005, 36.861660, 36.988590>,  <27.907322, 36.806320, 37.152157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074005, 36.861660, 36.988590>,  <28.351812, 36.953892, 36.715981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074005, 36.861660, 36.988590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472814, -0.567723, -0.673898,
		0.542305, -0.790269, 0.285273,
		-0.694516, -0.230577, 0.681529,
		27.865650, 36.792488, 37.193050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041780, 36.311382, 36.435528>,  <28.351812, 36.953892, 36.715981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041780, 36.311382, 36.435528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779512, 36.410744, 36.720734>,  <27.622152, 36.470360, 36.891857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779512, 36.410744, 36.720734>,  <28.041780, 36.311382, 36.435528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779512, 36.410744, 36.720734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706491, -0.535017, -0.463278,
		0.266399, -0.807499, 0.526286,
		-0.655669, 0.248399, 0.713019,
		27.582811, 36.485264, 36.934639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735865, 35.701416, 36.699635>,  <28.041780, 36.311382, 36.435528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735865, 35.701416, 36.699635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481817, 35.995487, 36.794411>,  <27.329390, 36.171928, 36.851276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481817, 35.995487, 36.794411>,  <27.735865, 35.701416, 36.699635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481817, 35.995487, 36.794411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620182, -0.302504, -0.723786,
		-0.460435, -0.606636, 0.648069,
		-0.635117, 0.735177, 0.236941,
		27.291283, 36.216042, 36.865494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121017, 35.354813, 36.755405>,  <27.735865, 35.701416, 36.699635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121017, 35.354813, 36.755405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996161, 35.730824, 36.700390>,  <26.921247, 35.956429, 36.667381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.996161, 35.730824, 36.700390>,  <27.121017, 35.354813, 36.755405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996161, 35.730824, 36.700390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327182, -0.242285, -0.913373,
		-0.891919, -0.240099, 0.383187,
		-0.312141, 0.940027, -0.137543,
		26.902519, 36.012833, 36.659126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432583, 35.311481, 36.410858>,  <27.121017, 35.354813, 36.755405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432583, 35.311481, 36.410858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581480, 35.675209, 36.336483>,  <26.670818, 35.893444, 36.291859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581480, 35.675209, 36.336483>,  <26.432583, 35.311481, 36.410858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581480, 35.675209, 36.336483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461783, 0.007671, -0.886959,
		-0.805102, 0.416030, 0.422764,
		0.372245, 0.909318, -0.185940,
		26.693153, 35.948006, 36.280701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491293, 35.587547, 37.078293>,  <26.432583, 35.311481, 36.410858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491293, 35.587547, 37.078293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477043, 35.985989, 37.046043>,  <26.468493, 36.225056, 37.026695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.477043, 35.985989, 37.046043>,  <26.491293, 35.587547, 37.078293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.477043, 35.985989, 37.046043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825549, -0.074797, -0.559352,
		-0.563205, 0.046628, 0.825000,
		-0.035626, 0.996108, -0.080620,
		26.466354, 36.284821, 37.021858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842518, 35.802078, 37.295242>,  <26.491293, 35.587547, 37.078293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842518, 35.802078, 37.295242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000097, 36.058666, 37.031933>,  <26.094645, 36.212620, 36.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000097, 36.058666, 37.031933>,  <25.842518, 35.802078, 37.295242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000097, 36.058666, 37.031933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837493, -0.044562, -0.544628,
		-0.378695, 0.765854, 0.519670,
		0.393948, 0.641468, -0.658273,
		26.118282, 36.251106, 36.834450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317699, 36.296181, 37.073086>,  <25.842518, 35.802078, 37.295242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317699, 36.296181, 37.073086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579685, 36.303558, 36.770912>,  <25.736877, 36.307983, 36.589607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579685, 36.303558, 36.770912>,  <25.317699, 36.296181, 37.073086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579685, 36.303558, 36.770912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755360, -0.012121, -0.655198,
		-0.021239, 0.999756, 0.005991,
		0.654966, 0.018441, -0.755434,
		25.776175, 36.309090, 36.544281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083797, 36.738800, 36.549084>,  <25.317699, 36.296181, 37.073086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083797, 36.738800, 36.549084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325132, 36.501507, 36.335892>,  <25.469933, 36.359131, 36.207977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.325132, 36.501507, 36.335892>,  <25.083797, 36.738800, 36.549084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325132, 36.501507, 36.335892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729321, -0.140087, -0.669676,
		0.322608, 0.792752, -0.517174,
		0.603337, -0.593228, -0.532977,
		25.506134, 36.323540, 36.175999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165146, 37.135399, 35.889732>,  <25.083797, 36.738800, 36.549084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.165146, 37.135399, 35.889732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216789, 36.741554, 35.842609>,  <25.247774, 36.505249, 35.814335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216789, 36.741554, 35.842609>,  <25.165146, 37.135399, 35.889732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216789, 36.741554, 35.842609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622202, 0.012070, -0.782764,
		0.772138, 0.174359, -0.611066,
		0.129107, -0.984608, -0.117806,
		25.255522, 36.446171, 35.807266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286350, 36.989807, 35.153965>,  <25.165146, 37.135399, 35.889732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286350, 36.989807, 35.153965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140566, 36.649208, 35.304756>,  <25.053095, 36.444847, 35.395229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140566, 36.649208, 35.304756>,  <25.286350, 36.989807, 35.153965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140566, 36.649208, 35.304756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670907, -0.040642, -0.740427,
		0.645796, -0.522774, -0.556467,
		-0.364460, -0.851502, 0.376979,
		25.031227, 36.393757, 35.417850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883577, 36.980755, 34.638760>,  <25.286350, 36.989807, 35.153965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883577, 36.980755, 34.638760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132820, 37.260841, 34.499371>,  <26.282366, 37.428894, 34.415737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132820, 37.260841, 34.499371>,  <25.883577, 36.980755, 34.638760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132820, 37.260841, 34.499371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506482, 0.021731, -0.861976,
		-0.596000, 0.713597, 0.368189,
		0.623105, 0.700219, -0.348473,
		26.319752, 37.470905, 34.394829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526747, 37.539463, 34.415871>,  <25.883577, 36.980755, 34.638760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526747, 37.539463, 34.415871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866142, 37.544548, 34.204247>,  <26.069778, 37.547600, 34.077271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866142, 37.544548, 34.204247>,  <25.526747, 37.539463, 34.415871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866142, 37.544548, 34.204247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529119, 0.001307, -0.848547,
		-0.010095, 0.999918, 0.007835,
		0.848487, 0.012712, -0.529063,
		26.120689, 37.548363, 34.045528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356964, 37.848831, 33.869209>,  <25.526747, 37.539463, 34.415871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356964, 37.848831, 33.869209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710623, 37.727905, 33.726723>,  <25.922817, 37.655350, 33.641232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710623, 37.727905, 33.726723>,  <25.356964, 37.848831, 33.869209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710623, 37.727905, 33.726723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387387, -0.048150, -0.920659,
		0.261180, 0.951990, -0.159686,
		0.884147, -0.302318, -0.356213,
		25.975866, 37.637211, 33.619858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508116, 38.355667, 33.303318>,  <25.356964, 37.848831, 33.869209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508116, 38.355667, 33.303318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714098, 38.017014, 33.249611>,  <25.837687, 37.813820, 33.217384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714098, 38.017014, 33.249611>,  <25.508116, 38.355667, 33.303318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714098, 38.017014, 33.249611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379981, -0.085041, -0.921077,
		0.768397, 0.525335, -0.365498,
		0.514956, -0.846635, -0.134272,
		25.868586, 37.763023, 33.209328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902876, 38.415604, 32.624359>,  <25.508116, 38.355667, 33.303318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902876, 38.415604, 32.624359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842346, 38.028603, 32.705391>,  <25.806028, 37.796402, 32.754009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842346, 38.028603, 32.705391>,  <25.902876, 38.415604, 32.624359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842346, 38.028603, 32.705391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344147, -0.140555, -0.928335,
		0.926641, -0.210199, -0.311694,
		-0.151325, -0.967502, 0.202584,
		25.796949, 37.738354, 32.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012884, 38.104176, 32.008011>,  <25.902876, 38.415604, 32.624359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012884, 38.104176, 32.008011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828485, 37.805798, 32.200279>,  <25.717846, 37.626770, 32.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828485, 37.805798, 32.200279>,  <26.012884, 38.104176, 32.008011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828485, 37.805798, 32.200279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326062, -0.361390, -0.873545,
		0.825329, -0.559429, -0.076626,
		-0.460994, -0.745947, 0.480674,
		25.690187, 37.582012, 32.344482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215822, 37.445488, 31.697216>,  <26.012884, 38.104176, 32.008011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215822, 37.445488, 31.697216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839239, 37.462021, 31.831053>,  <25.613289, 37.471943, 31.911354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839239, 37.462021, 31.831053>,  <26.215822, 37.445488, 31.697216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839239, 37.462021, 31.831053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336126, -0.038411, -0.941033,
		-0.026025, -0.998408, 0.050049,
		-0.941457, 0.041314, 0.334591,
		25.556803, 37.474422, 31.931429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135399, 36.689892, 31.565859>,  <26.215822, 37.445488, 31.697216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135399, 36.689892, 31.565859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830835, 36.770256, 31.812399>,  <25.648096, 36.818474, 31.960323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830835, 36.770256, 31.812399>,  <26.135399, 36.689892, 31.565859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830835, 36.770256, 31.812399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645979, -0.315027, -0.695320,
		0.054468, -0.927573, 0.369651,
		-0.761410, 0.200914, 0.616351,
		25.602413, 36.830532, 31.997305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693020, 36.155510, 31.544996>,  <26.135399, 36.689892, 31.565859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693020, 36.155510, 31.544996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479637, 36.480385, 31.639467>,  <25.351608, 36.675308, 31.696150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479637, 36.480385, 31.639467>,  <25.693020, 36.155510, 31.544996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479637, 36.480385, 31.639467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524937, -0.098959, -0.845369,
		-0.663224, -0.574946, 0.479136,
		-0.533456, 0.812185, 0.236179,
		25.319601, 36.724041, 31.710321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964611, 35.938137, 31.419857>,  <25.693020, 36.155510, 31.544996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964611, 35.938137, 31.419857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950689, 36.337887, 31.417446>,  <24.942337, 36.577736, 31.416000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.950689, 36.337887, 31.417446>,  <24.964611, 35.938137, 31.419857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.950689, 36.337887, 31.417446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713579, -0.029071, -0.699971,
		-0.699710, -0.020060, 0.714146,
		-0.034803, 0.999376, -0.006027,
		24.940248, 36.637699, 31.415638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252508, 36.137398, 31.448498>,  <24.964611, 35.938137, 31.419857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252508, 36.137398, 31.448498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503063, 36.368809, 31.239523>,  <24.653397, 36.507656, 31.114138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503063, 36.368809, 31.239523>,  <24.252508, 36.137398, 31.448498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503063, 36.368809, 31.239523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553850, -0.141311, -0.820537,
		-0.548532, 0.803327, 0.231904,
		0.626389, 0.578531, -0.522436,
		24.690979, 36.542366, 31.082792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027418, 36.018543, 30.674450>,  <24.252508, 36.137398, 31.448498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027418, 36.018543, 30.674450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341324, 35.831825, 30.511356>,  <24.529667, 35.719795, 30.413500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341324, 35.831825, 30.511356>,  <24.027418, 36.018543, 30.674450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341324, 35.831825, 30.511356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617166, -0.649072, -0.444760,
		-0.057035, 0.600670, -0.797461,
		0.784763, -0.466799, -0.407732,
		24.576754, 35.691784, 30.389036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712849, 36.356396, 30.296114>,  <24.027418, 36.018543, 30.674450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712849, 36.356396, 30.296114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900749, 36.079739, 30.076675>,  <25.013489, 35.913742, 29.945011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900749, 36.079739, 30.076675>,  <24.712849, 36.356396, 30.296114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900749, 36.079739, 30.076675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271030, -0.478427, 0.835255,
		-0.840166, -0.541047, -0.037283,
		0.469750, -0.691648, -0.548597,
		25.041674, 35.872246, 29.912096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294611, 36.849689, 30.411617>,  <24.712849, 36.356396, 30.296114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294611, 36.849689, 30.411617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585892, 36.577160, 30.441347>,  <25.760660, 36.413643, 30.459185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585892, 36.577160, 30.441347>,  <25.294611, 36.849689, 30.411617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585892, 36.577160, 30.441347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655597, -0.724080, -0.214242,
		0.199786, 0.107284, -0.973949,
		0.728202, -0.681321, 0.074326,
		25.804352, 36.372765, 30.463644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051346, 37.546967, 30.668837>,  <25.294611, 36.849689, 30.411617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051346, 37.546967, 30.668837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800375, 37.376797, 30.929712>,  <24.649794, 37.274693, 31.086237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.800375, 37.376797, 30.929712>,  <25.051346, 37.546967, 30.668837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800375, 37.376797, 30.929712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671440, 0.128577, 0.729819,
		-0.394343, 0.895811, 0.204977,
		-0.627425, -0.425429, 0.652187,
		24.612148, 37.249168, 31.125368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889498, 37.900814, 31.420776>,  <25.051346, 37.546967, 30.668837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889498, 37.900814, 31.420776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874229, 37.501152, 31.426828>,  <24.865068, 37.261353, 31.430460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.874229, 37.501152, 31.426828>,  <24.889498, 37.900814, 31.420776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874229, 37.501152, 31.426828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542658, -0.008013, 0.839916,
		-0.839086, 0.040271, 0.542506,
		-0.038171, -0.999157, 0.015130,
		24.862778, 37.201405, 31.431368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.534775, 37.644310, 32.094666>,  <24.889498, 37.900814, 31.420776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.534775, 37.644310, 32.094666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789972, 37.368378, 31.957792>,  <24.943090, 37.202816, 31.875668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789972, 37.368378, 31.957792>,  <24.534775, 37.644310, 32.094666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789972, 37.368378, 31.957792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442407, -0.035352, 0.896117,
		-0.630270, -0.723103, 0.282634,
		0.637993, -0.689835, -0.342187,
		24.981371, 37.161427, 31.855137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552265, 36.999157, 32.545799>,  <24.534775, 37.644310, 32.094666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552265, 36.999157, 32.545799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907475, 37.074062, 32.377823>,  <25.120600, 37.119007, 32.277039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907475, 37.074062, 32.377823>,  <24.552265, 36.999157, 32.545799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907475, 37.074062, 32.377823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410533, 0.088400, 0.907551,
		0.207079, -0.978323, 0.001621,
		0.888021, 0.187269, -0.419940,
		25.173882, 37.130241, 32.251842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.070503, 36.615578, 32.925461>,  <24.552265, 36.999157, 32.545799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.070503, 36.615578, 32.925461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269121, 36.912163, 32.744938>,  <25.388292, 37.090115, 32.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269121, 36.912163, 32.744938>,  <25.070503, 36.615578, 32.925461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269121, 36.912163, 32.744938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550544, 0.132951, 0.824151,
		0.671078, -0.657693, -0.342191,
		0.496543, 0.741461, -0.451309,
		25.418085, 37.134602, 32.609547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794907, 36.427193, 33.002117>,  <25.070503, 36.615578, 32.925461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794907, 36.427193, 33.002117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762562, 36.822811, 32.952732>,  <25.743155, 37.060184, 32.923100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762562, 36.822811, 32.952732>,  <25.794907, 36.427193, 33.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762562, 36.822811, 32.952732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533819, 0.147584, 0.832620,
		0.841723, 0.001421, -0.539907,
		-0.080864, 0.989048, -0.123467,
		25.738302, 37.119526, 32.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452707, 36.602528, 33.004028>,  <25.794907, 36.427193, 33.002117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452707, 36.602528, 33.004028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275845, 36.956615, 33.061825>,  <26.169727, 37.169067, 33.096500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275845, 36.956615, 33.061825>,  <26.452707, 36.602528, 33.004028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275845, 36.956615, 33.061825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576680, 0.157188, 0.801706,
		0.686977, 0.437804, -0.579992,
		-0.442157, 0.885223, 0.144488,
		26.143198, 37.222183, 33.105171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015577, 37.075047, 33.242054>,  <26.452707, 36.602528, 33.004028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015577, 37.075047, 33.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692116, 37.287716, 33.342773>,  <26.498039, 37.415318, 33.403206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692116, 37.287716, 33.342773>,  <27.015577, 37.075047, 33.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692116, 37.287716, 33.342773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419246, 0.220579, 0.880669,
		0.412687, 0.817721, -0.401274,
		-0.808654, 0.531673, 0.251797,
		26.449520, 37.447220, 33.418312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196535, 37.815327, 33.336666>,  <27.015577, 37.075047, 33.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196535, 37.815327, 33.336666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878611, 37.707436, 33.554115>,  <26.687857, 37.642700, 33.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878611, 37.707436, 33.554115>,  <27.196535, 37.815327, 33.336666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878611, 37.707436, 33.554115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498202, 0.221483, 0.838296,
		-0.346513, 0.937120, -0.041659,
		-0.794811, -0.269726, 0.543621,
		26.640167, 37.626518, 33.717201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079588, 38.335133, 33.812874>,  <27.196535, 37.815327, 33.336666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079588, 38.335133, 33.812874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924530, 37.999084, 33.964626>,  <26.831495, 37.797455, 34.055676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924530, 37.999084, 33.964626>,  <27.079588, 38.335133, 33.812874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924530, 37.999084, 33.964626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443726, 0.190677, 0.875642,
		-0.807984, 0.507778, 0.298868,
		-0.387645, -0.840121, 0.379379,
		26.808237, 37.747047, 34.078442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921757, 38.489777, 34.468216>,  <27.079588, 38.335133, 33.812874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921757, 38.489777, 34.468216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941751, 38.090282, 34.470196>,  <26.953749, 37.850586, 34.471382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941751, 38.090282, 34.470196>,  <26.921757, 38.489777, 34.468216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941751, 38.090282, 34.470196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600123, 0.033995, 0.799185,
		-0.798344, -0.036980, 0.601065,
		0.049987, -0.998738, 0.004947,
		26.956747, 37.790661, 34.471680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570608, 38.260086, 35.098289>,  <26.921757, 38.489777, 34.468216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570608, 38.260086, 35.098289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876495, 38.049736, 34.949341>,  <27.060028, 37.923527, 34.859970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876495, 38.049736, 34.949341>,  <26.570608, 38.260086, 35.098289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876495, 38.049736, 34.949341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571980, 0.287876, 0.768093,
		-0.296724, -0.800364, 0.520935,
		0.764718, -0.525876, -0.372372,
		27.105911, 37.891972, 34.837627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050718, 37.906368, 35.625542>,  <26.570608, 38.260086, 35.098289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050718, 37.906368, 35.625542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259840, 38.010536, 35.300861>,  <27.385313, 38.073036, 35.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259840, 38.010536, 35.300861>,  <27.050718, 37.906368, 35.625542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259840, 38.010536, 35.300861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751805, 0.307984, 0.583040,
		0.401827, -0.915055, -0.034772,
		0.522805, 0.260422, -0.811699,
		27.416681, 38.088661, 35.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769991, 37.670986, 35.625816>,  <27.050718, 37.906368, 35.625542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769991, 37.670986, 35.625816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780697, 37.988834, 35.383213>,  <27.787121, 38.179543, 35.237652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780697, 37.988834, 35.383213>,  <27.769991, 37.670986, 35.625816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780697, 37.988834, 35.383213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839468, 0.311553, 0.445228,
		0.542749, -0.521063, -0.658723,
		0.026765, 0.794625, -0.606511,
		27.788727, 38.227222, 35.201260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450256, 37.772282, 35.326920>,  <27.769991, 37.670986, 35.625816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450256, 37.772282, 35.326920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298550, 38.141983, 35.309467>,  <28.207525, 38.363804, 35.298996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298550, 38.141983, 35.309467>,  <28.450256, 37.772282, 35.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298550, 38.141983, 35.309467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908244, 0.380876, 0.173281,
		0.176774, 0.026093, -0.983906,
		-0.379268, 0.924258, -0.043630,
		28.184769, 38.419262, 35.296379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747110, 38.292168, 34.776833>,  <28.450256, 37.772282, 35.326920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747110, 38.292168, 34.776833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693394, 38.529705, 35.094151>,  <28.661163, 38.672230, 35.284542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693394, 38.529705, 35.094151>,  <28.747110, 38.292168, 34.776833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693394, 38.529705, 35.094151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907596, 0.395065, -0.142099,
		-0.397787, 0.700907, -0.592026,
		-0.134291, 0.593846, 0.793292,
		28.653107, 38.707859, 35.332138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893408, 39.082691, 34.642750>,  <28.747110, 38.292168, 34.776833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893408, 39.082691, 34.642750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974659, 38.980968, 35.020969>,  <29.023411, 38.919937, 35.247902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974659, 38.980968, 35.020969>,  <28.893408, 39.082691, 34.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974659, 38.980968, 35.020969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849237, 0.526429, -0.040857,
		-0.487375, 0.811297, 0.322898,
		0.203130, -0.254304, 0.945551,
		29.035599, 38.904678, 35.304634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042255, 39.593727, 34.093750>,  <28.893408, 39.082691, 34.642750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042255, 39.593727, 34.093750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383511, 39.549000, 33.889927>,  <29.588264, 39.522163, 33.767632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383511, 39.549000, 33.889927>,  <29.042255, 39.593727, 34.093750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383511, 39.549000, 33.889927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521048, 0.230802, 0.821729,
		0.025723, -0.966554, 0.255169,
		0.853140, -0.111818, -0.509558,
		29.639452, 39.515453, 33.737061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346016, 39.473183, 33.738228>,  <29.042255, 39.593727, 34.093750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346016, 39.473183, 33.738228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348036, 39.411152, 34.133385>,  <28.349247, 39.373936, 34.370480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348036, 39.411152, 34.133385>,  <28.346016, 39.473183, 33.738228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348036, 39.411152, 34.133385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713743, -0.692484, -0.105055,
		0.700389, -0.704570, -0.114179,
		0.005048, -0.155074, 0.987890,
		28.349550, 39.364632, 34.429752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224709, 40.191303, 33.478130>,  <28.346016, 39.473183, 33.738228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224709, 40.191303, 33.478130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544735, 40.091705, 33.259811>,  <28.736752, 40.031948, 33.128822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544735, 40.091705, 33.259811>,  <28.224709, 40.191303, 33.478130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544735, 40.091705, 33.259811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568809, -0.025727, -0.822067,
		0.190648, 0.968163, -0.162214,
		0.800068, -0.248994, -0.545795,
		28.784756, 40.017006, 33.096073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109623, 40.552383, 32.902260>,  <28.224709, 40.191303, 33.478130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109623, 40.552383, 32.902260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335491, 40.225021, 32.859619>,  <28.471012, 40.028606, 32.834034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335491, 40.225021, 32.859619>,  <28.109623, 40.552383, 32.902260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335491, 40.225021, 32.859619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633501, -0.347015, -0.691561,
		0.528981, 0.458040, -0.714408,
		0.564673, -0.818401, -0.106604,
		28.504892, 39.979500, 32.827637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397978, 40.309444, 32.159195>,  <28.109623, 40.552383, 32.902260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397978, 40.309444, 32.159195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331192, 39.981686, 32.378544>,  <28.291121, 39.785030, 32.510155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331192, 39.981686, 32.378544>,  <28.397978, 40.309444, 32.159195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331192, 39.981686, 32.378544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662034, -0.318981, -0.678205,
		0.730639, -0.476278, -0.489210,
		-0.166965, -0.819397, 0.548372,
		28.281103, 39.735867, 32.543056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231890, 40.612900, 31.484219>,  <28.397978, 40.309444, 32.159195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231890, 40.612900, 31.484219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858572, 40.732067, 31.564426>,  <27.634581, 40.803566, 31.612551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.858572, 40.732067, 31.564426>,  <28.231890, 40.612900, 31.484219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858572, 40.732067, 31.564426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036132, 0.477641, -0.877812,
		-0.357292, -0.826502, -0.435015,
		-0.933294, 0.297917, 0.200520,
		27.578585, 40.821442, 31.624582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739603, 40.448143, 30.977554>,  <28.231890, 40.612900, 31.484219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739603, 40.448143, 30.977554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650181, 40.800362, 31.144722>,  <27.596527, 41.011692, 31.245022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650181, 40.800362, 31.144722>,  <27.739603, 40.448143, 30.977554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650181, 40.800362, 31.144722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068747, 0.413459, -0.907924,
		-0.972263, -0.231704, -0.031896,
		-0.223557, 0.880548, 0.417920,
		27.583113, 41.064526, 31.270098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728912, 41.238533, 30.758732>,  <27.739603, 40.448143, 30.977554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728912, 41.238533, 30.758732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481272, 41.532600, 30.648285>,  <27.332687, 41.709042, 30.582016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.481272, 41.532600, 30.648285>,  <27.728912, 41.238533, 30.758732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481272, 41.532600, 30.648285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285139, -0.538047, -0.793222,
		-0.731716, -0.412353, 0.542731,
		-0.619102, 0.735167, -0.276120,
		27.295540, 41.753151, 30.565449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075706, 40.955780, 30.794212>,  <27.728912, 41.238533, 30.758732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075706, 40.955780, 30.794212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132662, 41.213661, 30.493790>,  <27.166834, 41.368389, 30.313536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132662, 41.213661, 30.493790>,  <27.075706, 40.955780, 30.794212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132662, 41.213661, 30.493790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331359, -0.683958, -0.649925,
		-0.932699, 0.341410, 0.116241,
		0.142387, 0.644702, -0.751056,
		27.175379, 41.407070, 30.268473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461681, 41.071121, 30.477337>,  <27.075706, 40.955780, 30.794212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461681, 41.071121, 30.477337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741655, 41.130154, 30.197821>,  <26.909639, 41.165573, 30.030111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741655, 41.130154, 30.197821>,  <26.461681, 41.071121, 30.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741655, 41.130154, 30.197821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439956, -0.681642, -0.584638,
		-0.562609, 0.716647, -0.412175,
		0.699935, 0.147583, -0.698791,
		26.951635, 41.174427, 29.988184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205606, 40.781345, 29.941114>,  <26.461681, 41.071121, 30.477337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205606, 40.781345, 29.941114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551989, 40.876865, 29.765347>,  <26.759819, 40.934177, 29.659885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551989, 40.876865, 29.765347>,  <26.205606, 40.781345, 29.941114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551989, 40.876865, 29.765347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230650, -0.588918, -0.774581,
		-0.443755, 0.772107, -0.454898,
		0.865957, 0.238802, -0.439422,
		26.811775, 40.948505, 29.633520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097811, 41.050083, 29.191767>,  <26.205606, 40.781345, 29.941114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097811, 41.050083, 29.191767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481529, 40.938152, 29.206980>,  <26.711760, 40.870995, 29.216108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481529, 40.938152, 29.206980>,  <26.097811, 41.050083, 29.191767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481529, 40.938152, 29.206980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119262, -0.523511, -0.843631,
		0.255981, 0.804756, -0.535575,
		0.959297, -0.279827, 0.038032,
		26.769318, 40.854206, 29.218390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366367, 41.139603, 28.481522>,  <26.097811, 41.050083, 29.191767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366367, 41.139603, 28.481522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643213, 40.901051, 28.644154>,  <26.809320, 40.757919, 28.741734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643213, 40.901051, 28.644154>,  <26.366367, 41.139603, 28.481522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643213, 40.901051, 28.644154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092641, -0.485239, -0.869460,
		0.715816, 0.639433, -0.280593,
		0.692116, -0.596379, 0.406580,
		26.850847, 40.722137, 28.766127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916540, 41.002960, 27.933033>,  <26.366367, 41.139603, 28.481522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916540, 41.002960, 27.933033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883823, 40.702404, 28.194939>,  <26.864193, 40.522068, 28.352081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883823, 40.702404, 28.194939>,  <26.916540, 41.002960, 27.933033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883823, 40.702404, 28.194939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020268, -0.655575, -0.754858,
		0.996443, -0.075012, 0.038392,
		-0.081793, -0.751395, 0.654764,
		26.859285, 40.476986, 28.391367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167643, 40.469948, 27.605370>,  <26.916540, 41.002960, 27.933033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167643, 40.469948, 27.605370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036180, 40.255718, 27.916533>,  <26.957304, 40.127178, 28.103231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036180, 40.255718, 27.916533>,  <27.167643, 40.469948, 27.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036180, 40.255718, 27.916533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125566, -0.791573, -0.598035,
		0.936067, -0.294225, 0.192902,
		-0.328653, -0.535579, 0.777909,
		26.937584, 40.095043, 28.149906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599264, 39.880112, 27.608315>,  <27.167643, 40.469948, 27.605370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599264, 39.880112, 27.608315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257280, 39.805752, 27.802010>,  <27.052090, 39.761135, 27.918226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257280, 39.805752, 27.802010>,  <27.599264, 39.880112, 27.608315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257280, 39.805752, 27.802010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070386, -0.883355, -0.463388,
		0.513898, -0.430262, 0.742148,
		-0.854958, -0.185897, 0.484239,
		27.000793, 39.749981, 27.947281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622992, 39.244965, 27.929844>,  <27.599264, 39.880112, 27.608315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622992, 39.244965, 27.929844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231586, 39.309685, 27.878721>,  <26.996744, 39.348518, 27.848047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231586, 39.309685, 27.878721>,  <27.622992, 39.244965, 27.929844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231586, 39.309685, 27.878721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084430, -0.879926, -0.467549,
		-0.188112, -0.446712, 0.874679,
		-0.978512, 0.161801, -0.127808,
		26.938032, 39.358227, 27.840378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272953, 38.586430, 28.013256>,  <27.622992, 39.244965, 27.929844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272953, 38.586430, 28.013256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969906, 38.790550, 27.850479>,  <26.788076, 38.913025, 27.752813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969906, 38.790550, 27.850479>,  <27.272953, 38.586430, 28.013256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969906, 38.790550, 27.850479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286270, -0.820106, -0.495455,
		-0.586568, -0.258871, 0.767413,
		-0.757619, 0.510305, -0.406941,
		26.742620, 38.943642, 27.728397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819916, 38.090248, 27.972128>,  <27.272953, 38.586430, 28.013256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819916, 38.090248, 27.972128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665138, 38.386856, 27.752886>,  <26.572271, 38.564819, 27.621340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665138, 38.386856, 27.752886>,  <26.819916, 38.090248, 27.972128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665138, 38.386856, 27.752886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416609, -0.670870, -0.613490,
		-0.822624, -0.009040, 0.568514,
		-0.386945, 0.741520, -0.548108,
		26.549055, 38.609314, 27.588453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074554, 37.843498, 27.850735>,  <26.819916, 38.090248, 27.972128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074554, 37.843498, 27.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242037, 38.087223, 27.581387>,  <26.342525, 38.233456, 27.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242037, 38.087223, 27.581387>,  <26.074554, 37.843498, 27.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242037, 38.087223, 27.581387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240973, -0.640372, -0.729285,
		-0.875567, 0.467620, -0.121300,
		0.418705, 0.609308, -0.673372,
		26.367649, 38.270016, 27.379375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570086, 37.819523, 27.403444>,  <26.074554, 37.843498, 27.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570086, 37.819523, 27.403444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914917, 37.941166, 27.241289>,  <26.121815, 38.014153, 27.143995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914917, 37.941166, 27.241289>,  <25.570086, 37.819523, 27.403444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914917, 37.941166, 27.241289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123220, -0.650147, -0.749750,
		-0.491569, 0.696295, -0.523004,
		0.862077, 0.304109, -0.405390,
		26.173540, 38.032398, 27.119673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419188, 37.788311, 26.701221>,  <25.570086, 37.819523, 27.403444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419188, 37.788311, 26.701221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818521, 37.804626, 26.684912>,  <26.058123, 37.814415, 26.675125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818521, 37.804626, 26.684912>,  <25.419188, 37.788311, 26.701221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818521, 37.804626, 26.684912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010221, -0.570651, -0.821129,
		-0.056762, 0.820179, -0.569284,
		0.998335, 0.040790, -0.040774,
		26.118023, 37.816864, 26.672680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528923, 37.959194, 26.025129>,  <25.419188, 37.788311, 26.701221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528923, 37.959194, 26.025129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830292, 37.748230, 26.182198>,  <26.011112, 37.621651, 26.276440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830292, 37.748230, 26.182198>,  <25.528923, 37.959194, 26.025129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830292, 37.748230, 26.182198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006561, -0.603184, -0.797575,
		0.657505, 0.598334, -0.457912,
		0.753421, -0.527414, 0.392671,
		26.056318, 37.590004, 26.299999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998194, 37.924545, 25.560987>,  <25.528923, 37.959194, 26.025129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998194, 37.924545, 25.560987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097589, 37.622627, 25.803816>,  <26.157227, 37.441475, 25.949512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097589, 37.622627, 25.803816>,  <25.998194, 37.924545, 25.560987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097589, 37.622627, 25.803816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022493, -0.622061, -0.782646,
		0.968373, 0.208135, -0.137599,
		0.248491, -0.754798, 0.607069,
		26.172136, 37.396187, 25.985937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598309, 37.605270, 25.251986>,  <25.998194, 37.924545, 25.560987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598309, 37.605270, 25.251986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470701, 37.334560, 25.517378>,  <26.394136, 37.172134, 25.676613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470701, 37.334560, 25.517378>,  <26.598309, 37.605270, 25.251986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470701, 37.334560, 25.517378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022454, -0.694466, -0.719175,
		0.947483, -0.244328, 0.206351,
		-0.319018, -0.676772, 0.663481,
		26.374996, 37.131527, 25.716421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887068, 37.033787, 24.968304>,  <26.598309, 37.605270, 25.251986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887068, 37.033787, 24.968304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617928, 36.889790, 25.226814>,  <26.456444, 36.803391, 25.381920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617928, 36.889790, 25.226814>,  <26.887068, 37.033787, 24.968304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617928, 36.889790, 25.226814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217927, -0.738389, -0.638192,
		0.706950, -0.570250, 0.418374,
		-0.672852, -0.359995, 0.646277,
		26.416071, 36.781792, 25.420698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140417, 36.351372, 25.192554>,  <26.887068, 37.033787, 24.968304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140417, 36.351372, 25.192554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744751, 36.372299, 25.247427>,  <26.507351, 36.384853, 25.280350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744751, 36.372299, 25.247427>,  <27.140417, 36.351372, 25.192554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744751, 36.372299, 25.247427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134056, -0.702863, -0.698579,
		0.059873, -0.709399, 0.702260,
		-0.989163, 0.052316, 0.137182,
		26.448002, 36.387993, 25.288582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933987, 35.650291, 25.217644>,  <27.140417, 36.351372, 25.192554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933987, 35.650291, 25.217644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616806, 35.877686, 25.129963>,  <26.426498, 36.014122, 25.077354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616806, 35.877686, 25.129963>,  <26.933987, 35.650291, 25.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616806, 35.877686, 25.129963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194704, -0.577336, -0.792952,
		-0.577336, -0.586094, 0.568487,
		0.792952, -0.568487, 0.219202,
		26.378920, 36.048233, 25.064201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321297, 35.091351, 25.036688>,  <26.933987, 35.650291, 25.217644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321297, 35.091351, 25.036688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241926, 35.458569, 24.899389>,  <26.194304, 35.678902, 24.817011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.241926, 35.458569, 24.899389>,  <26.321297, 35.091351, 25.036688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241926, 35.458569, 24.899389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285870, -0.389191, -0.875676,
		-0.937500, -0.075634, 0.339668,
		-0.198426, 0.918047, -0.343245,
		26.182398, 35.733982, 24.796415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584749, 35.015461, 24.660896>,  <26.321297, 35.091351, 25.036688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584749, 35.015461, 24.660896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761122, 35.339710, 24.506769>,  <25.866945, 35.534260, 24.414293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761122, 35.339710, 24.506769>,  <25.584749, 35.015461, 24.660896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761122, 35.339710, 24.506769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284413, -0.280990, -0.916599,
		-0.851286, 0.513749, 0.106654,
		0.440933, 0.810621, -0.385320,
		25.893402, 35.582897, 24.391172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.134815, 35.195122, 24.122108>,  <25.584749, 35.015461, 24.660896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.134815, 35.195122, 24.122108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480696, 35.366051, 24.016510>,  <25.688223, 35.468609, 23.953152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480696, 35.366051, 24.016510>,  <25.134815, 35.195122, 24.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480696, 35.366051, 24.016510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242521, -0.105073, -0.964439,
		-0.439862, 0.897974, 0.012777,
		0.864699, 0.427319, -0.263995,
		25.740105, 35.494247, 23.937311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.942465, 35.686264, 23.637642>,  <25.134815, 35.195122, 24.122108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.942465, 35.686264, 23.637642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323900, 35.588009, 23.567982>,  <25.552761, 35.529057, 23.526186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323900, 35.588009, 23.567982>,  <24.942465, 35.686264, 23.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323900, 35.588009, 23.567982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217603, -0.162414, -0.962430,
		0.208124, 0.955659, -0.208328,
		0.953590, -0.245638, -0.174152,
		25.609978, 35.514317, 23.515736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970446, 35.924793, 23.028404>,  <24.942465, 35.686264, 23.637642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970446, 35.924793, 23.028404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279673, 35.671074, 23.026291>,  <25.465208, 35.518841, 23.025023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.279673, 35.671074, 23.026291>,  <24.970446, 35.924793, 23.028404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279673, 35.671074, 23.026291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153123, -0.178523, -0.971948,
		0.615565, 0.752191, -0.235136,
		0.773067, -0.634302, -0.005285,
		25.511593, 35.480782, 23.024706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379929, 36.029293, 22.452810>,  <24.970446, 35.924793, 23.028404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379929, 36.029293, 22.452810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487110, 35.654148, 22.541006>,  <25.551418, 35.429062, 22.593924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487110, 35.654148, 22.541006>,  <25.379929, 36.029293, 22.452810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487110, 35.654148, 22.541006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148859, -0.185810, -0.971244,
		0.951863, 0.293070, 0.089821,
		0.267953, -0.937862, 0.220492,
		25.567495, 35.372791, 22.607153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925543, 36.001549, 21.970940>,  <25.379929, 36.029293, 22.452810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925543, 36.001549, 21.970940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844906, 35.627155, 22.086378>,  <25.796524, 35.402519, 22.155642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844906, 35.627155, 22.086378>,  <25.925543, 36.001549, 21.970940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844906, 35.627155, 22.086378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296701, -0.339156, -0.892716,
		0.933450, -0.094338, 0.346080,
		-0.201592, -0.935988, 0.288595,
		25.784428, 35.346359, 22.172956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376892, 35.572922, 21.629612>,  <25.925543, 36.001549, 21.970940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376892, 35.572922, 21.629612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123755, 35.279537, 21.728842>,  <25.971872, 35.103504, 21.788380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.123755, 35.279537, 21.728842>,  <26.376892, 35.572922, 21.629612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123755, 35.279537, 21.728842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305458, -0.530906, -0.790465,
		0.711482, -0.424464, 0.560022,
		-0.632843, -0.733464, 0.248074,
		25.933901, 35.059498, 21.803265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742901, 34.919758, 21.733295>,  <26.376892, 35.572922, 21.629612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742901, 34.919758, 21.733295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364307, 34.850399, 21.624411>,  <26.137152, 34.808784, 21.559080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364307, 34.850399, 21.624411>,  <26.742901, 34.919758, 21.733295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364307, 34.850399, 21.624411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319987, -0.614260, -0.721313,
		-0.042133, -0.769816, 0.636874,
		-0.946485, -0.173401, -0.272211,
		26.080362, 34.798378, 21.542747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736277, 34.240940, 21.675018>,  <26.742901, 34.919758, 21.733295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736277, 34.240940, 21.675018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435665, 34.385082, 21.453983>,  <26.255299, 34.471569, 21.321362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435665, 34.385082, 21.453983>,  <26.736277, 34.240940, 21.675018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435665, 34.385082, 21.453983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325048, -0.526629, -0.785497,
		-0.574067, -0.769939, 0.278642,
		-0.751526, 0.360356, -0.552587,
		26.210207, 34.493187, 21.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600842, 33.708435, 21.169548>,  <26.736277, 34.240940, 21.675018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600842, 33.708435, 21.169548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428205, 34.031464, 21.008766>,  <26.324623, 34.225281, 20.912298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428205, 34.031464, 21.008766>,  <26.600842, 33.708435, 21.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428205, 34.031464, 21.008766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190155, -0.354129, -0.915660,
		-0.881800, -0.471623, -0.000724,
		-0.431590, 0.807567, -0.401953,
		26.298729, 34.273735, 20.888180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290302, 33.453491, 20.619608>,  <26.600842, 33.708435, 21.169548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290302, 33.453491, 20.619608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320229, 33.846313, 20.550362>,  <26.338184, 34.082008, 20.508814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320229, 33.846313, 20.550362>,  <26.290302, 33.453491, 20.619608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320229, 33.846313, 20.550362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422167, -0.188472, -0.886709,
		-0.903425, -0.006744, -0.428692,
		0.074817, 0.982055, -0.173118,
		26.342674, 34.140930, 20.498426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197592, 33.559948, 19.822542>,  <26.290302, 33.453491, 20.619608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197592, 33.559948, 19.822542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340254, 33.921360, 19.917557>,  <26.425852, 34.138206, 19.974566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340254, 33.921360, 19.917557>,  <26.197592, 33.559948, 19.822542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340254, 33.921360, 19.917557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422810, 0.070622, -0.903462,
		-0.833084, 0.422658, -0.356835,
		0.356655, 0.903534, 0.237538,
		26.447250, 34.192421, 19.988819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881063, 34.040928, 19.314310>,  <26.197592, 33.559948, 19.822542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881063, 34.040928, 19.314310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217270, 34.192307, 19.469389>,  <26.418995, 34.283134, 19.562437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217270, 34.192307, 19.469389>,  <25.881063, 34.040928, 19.314310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217270, 34.192307, 19.469389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418030, 0.002204, -0.908430,
		-0.344646, 0.925621, -0.156350,
		0.840518, 0.378445, 0.387697,
		26.469425, 34.305840, 19.585697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196405, 34.375385, 18.771738>,  <25.881063, 34.040928, 19.314310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196405, 34.375385, 18.771738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499836, 34.336971, 19.029526>,  <26.681894, 34.313923, 19.184198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.499836, 34.336971, 19.029526>,  <26.196405, 34.375385, 18.771738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.499836, 34.336971, 19.029526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645341, -0.025875, -0.763457,
		0.089996, 0.995041, 0.042349,
		0.758575, -0.096037, 0.644469,
		26.727409, 34.308159, 19.222866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645403, 34.717697, 18.513174>,  <26.196405, 34.375385, 18.771738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645403, 34.717697, 18.513174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864044, 34.490177, 18.759001>,  <26.995230, 34.353664, 18.906496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864044, 34.490177, 18.759001>,  <26.645403, 34.717697, 18.513174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864044, 34.490177, 18.759001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650476, -0.173777, -0.739380,
		0.527357, 0.803908, 0.275004,
		0.546604, -0.568801, 0.614565,
		27.028025, 34.319538, 18.943371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319361, 34.970768, 18.593704>,  <26.645403, 34.717697, 18.513174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319361, 34.970768, 18.593704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288235, 34.572247, 18.608208>,  <27.269558, 34.333134, 18.616909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.288235, 34.572247, 18.608208>,  <27.319361, 34.970768, 18.593704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288235, 34.572247, 18.608208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616555, -0.076672, -0.783570,
		0.783457, -0.038620, 0.620245,
		-0.077817, -0.996308, 0.036257,
		27.264891, 34.273354, 18.619085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984816, 34.726639, 18.365667>,  <27.319361, 34.970768, 18.593704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984816, 34.726639, 18.365667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762394, 34.396164, 18.329386>,  <27.628941, 34.197880, 18.307617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762394, 34.396164, 18.329386>,  <27.984816, 34.726639, 18.365667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762394, 34.396164, 18.329386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556637, -0.289133, -0.778818,
		0.617220, -0.483554, 0.620657,
		-0.556053, -0.826183, -0.090705,
		27.595577, 34.148308, 18.302174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521856, 34.199295, 18.290440>,  <27.984816, 34.726639, 18.365667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521856, 34.199295, 18.290440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180439, 34.028122, 18.171553>,  <27.975590, 33.925419, 18.100220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180439, 34.028122, 18.171553>,  <28.521856, 34.199295, 18.290440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180439, 34.028122, 18.171553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441476, -0.291056, -0.848755,
		0.276705, -0.855663, 0.437351,
		-0.853542, -0.427935, -0.297218,
		27.924376, 33.899742, 18.082388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664707, 33.597080, 18.028221>,  <28.521856, 34.199295, 18.290440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664707, 33.597080, 18.028221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310652, 33.669373, 17.856701>,  <28.098219, 33.712749, 17.753790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310652, 33.669373, 17.856701>,  <28.664707, 33.597080, 18.028221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310652, 33.669373, 17.856701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358978, -0.321126, -0.876364,
		-0.296079, -0.929632, 0.219365,
		-0.885140, 0.180726, -0.428796,
		28.045111, 33.723595, 17.728062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474836, 33.027199, 17.595779>,  <28.664707, 33.597080, 18.028221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474836, 33.027199, 17.595779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250515, 33.318745, 17.438679>,  <28.115921, 33.493671, 17.344418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250515, 33.318745, 17.438679>,  <28.474836, 33.027199, 17.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250515, 33.318745, 17.438679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396381, -0.180117, -0.900245,
		-0.726898, -0.660541, -0.187898,
		-0.560804, 0.728865, -0.392752,
		28.082273, 33.537403, 17.320852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110312, 32.791618, 16.923204>,  <28.474836, 33.027199, 17.595779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110312, 32.791618, 16.923204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127527, 33.190411, 16.897343>,  <28.137857, 33.429688, 16.881824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.127527, 33.190411, 16.897343>,  <28.110312, 32.791618, 16.923204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127527, 33.190411, 16.897343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423205, -0.076816, -0.902772,
		-0.905011, 0.011493, -0.425233,
		0.043040, 0.996979, -0.064655,
		28.140440, 33.489506, 16.877947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825041, 32.926083, 16.231470>,  <28.110312, 32.791618, 16.923204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825041, 32.926083, 16.231470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025249, 33.250069, 16.353741>,  <28.145374, 33.444458, 16.427103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025249, 33.250069, 16.353741>,  <27.825041, 32.926083, 16.231470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025249, 33.250069, 16.353741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263473, 0.193824, -0.944994,
		-0.824657, 0.553529, -0.116390,
		0.500523, 0.809962, 0.305678,
		28.175406, 33.493057, 16.445444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748159, 33.562286, 15.760681>,  <27.825041, 32.926083, 16.231470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748159, 33.562286, 15.760681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104895, 33.572807, 15.941318>,  <28.318935, 33.579121, 16.049700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104895, 33.572807, 15.941318>,  <27.748159, 33.562286, 15.760681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104895, 33.572807, 15.941318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452325, -0.063696, -0.889576,
		0.005370, 0.997623, -0.068702,
		0.891837, 0.026299, 0.451592,
		28.372446, 33.580696, 16.076796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150248, 33.886429, 15.236424>,  <27.748159, 33.562286, 15.760681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150248, 33.886429, 15.236424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403059, 33.706779, 15.489035>,  <28.554747, 33.598991, 15.640601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403059, 33.706779, 15.489035>,  <28.150248, 33.886429, 15.236424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403059, 33.706779, 15.489035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643806, -0.149281, -0.750486,
		0.431336, 0.880910, 0.194798,
		0.632031, -0.449124, 0.631526,
		28.592669, 33.572041, 15.678493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786688, 34.221386, 15.440742>,  <28.150248, 33.886429, 15.236424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786688, 34.221386, 15.440742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788124, 33.823967, 15.395390>,  <28.788986, 33.585518, 15.368177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788124, 33.823967, 15.395390>,  <28.786688, 34.221386, 15.440742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788124, 33.823967, 15.395390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509858, 0.099357, -0.854502,
		0.860251, -0.054742, 0.506923,
		0.003589, -0.993545, -0.113382,
		28.789200, 33.525902, 15.361375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400908, 34.251499, 16.038040>,  <28.786688, 34.221386, 15.440742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400908, 34.251499, 16.038040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425243, 34.553829, 15.777263>,  <28.439846, 34.735226, 15.620796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425243, 34.553829, 15.777263>,  <28.400908, 34.251499, 16.038040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425243, 34.553829, 15.777263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508597, -0.538528, -0.671800,
		-0.858852, 0.372450, 0.351644,
		0.060842, 0.755823, -0.651944,
		28.443497, 34.780575, 15.581679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769331, 34.452099, 15.779862>,  <28.400908, 34.251499, 16.038040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769331, 34.452099, 15.779862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028236, 34.554146, 15.492539>,  <28.183580, 34.615376, 15.320146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028236, 34.554146, 15.492539>,  <27.769331, 34.452099, 15.779862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028236, 34.554146, 15.492539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557555, -0.484126, -0.674355,
		-0.519792, 0.836981, -0.171114,
		0.647263, 0.255119, -0.718307,
		28.222416, 34.630680, 15.277047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439360, 34.641918, 15.196017>,  <27.769331, 34.452099, 15.779862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439360, 34.641918, 15.196017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787004, 34.515694, 15.043669>,  <27.995592, 34.439957, 14.952260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787004, 34.515694, 15.043669>,  <27.439360, 34.641918, 15.196017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787004, 34.515694, 15.043669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490413, -0.449623, -0.746549,
		0.064335, 0.835619, -0.545529,
		0.869112, -0.315564, -0.380871,
		28.047739, 34.421024, 14.929407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591549, 34.967899, 14.514479>,  <27.439360, 34.641918, 15.196017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591549, 34.967899, 14.514479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719561, 34.596386, 14.589258>,  <27.796368, 34.373478, 14.634126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.719561, 34.596386, 14.589258>,  <27.591549, 34.967899, 14.514479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.719561, 34.596386, 14.589258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452296, -0.323168, -0.831259,
		0.832471, 0.181472, -0.523507,
		0.320031, -0.928779, 0.186949,
		27.815569, 34.317753, 14.645343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213253, 34.768204, 14.123474>,  <27.591549, 34.967899, 14.514479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213253, 34.768204, 14.123474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934175, 34.495823, 14.212492>,  <27.766729, 34.332394, 14.265903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934175, 34.495823, 14.212492>,  <28.213253, 34.768204, 14.123474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934175, 34.495823, 14.212492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487636, 0.223838, -0.843865,
		0.524817, -0.697281, -0.488227,
		-0.697695, -0.680951, 0.222545,
		27.724867, 34.291538, 14.279256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909128, 35.086269, 14.314280>,  <28.213253, 34.768204, 14.123474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909128, 35.086269, 14.314280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689054, 34.952950, 14.620537>,  <28.557011, 34.872955, 14.804291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689054, 34.952950, 14.620537>,  <28.909128, 35.086269, 14.314280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689054, 34.952950, 14.620537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340961, 0.747307, 0.570331,
		-0.762263, 0.574841, -0.297513,
		-0.550183, -0.333302, 0.765643,
		28.524000, 34.852959, 14.850229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748247, 35.675255, 14.612547>,  <28.909128, 35.086269, 14.314280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748247, 35.675255, 14.612547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665401, 35.405075, 14.895634>,  <28.615694, 35.242966, 15.065486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665401, 35.405075, 14.895634>,  <28.748247, 35.675255, 14.612547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665401, 35.405075, 14.895634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209224, 0.676086, 0.706494,
		-0.955682, 0.294398, 0.001293,
		-0.207116, -0.675454, 0.707718,
		28.603266, 35.202438, 15.107949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257654, 36.001301, 15.209094>,  <28.748247, 35.675255, 14.612547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257654, 36.001301, 15.209094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417706, 35.693333, 15.407935>,  <28.513737, 35.508553, 15.527240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417706, 35.693333, 15.407935>,  <28.257654, 36.001301, 15.209094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417706, 35.693333, 15.407935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398979, 0.634662, 0.661831,
		-0.825053, -0.066484, 0.561131,
		0.400130, -0.769925, 0.497104,
		28.537745, 35.462357, 15.557066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053946, 36.128620, 15.898200>,  <28.257654, 36.001301, 15.209094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053946, 36.128620, 15.898200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357487, 35.868374, 15.909814>,  <28.539612, 35.712227, 15.916782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357487, 35.868374, 15.909814>,  <28.053946, 36.128620, 15.898200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357487, 35.868374, 15.909814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423480, 0.526821, 0.736970,
		-0.494779, -0.546957, 0.675302,
		0.758854, -0.650613, 0.029035,
		28.585142, 35.673191, 15.918525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020149, 35.851353, 16.610825>,  <28.053946, 36.128620, 15.898200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020149, 35.851353, 16.610825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383112, 35.806995, 16.448681>,  <28.600889, 35.780380, 16.351395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383112, 35.806995, 16.448681>,  <28.020149, 35.851353, 16.610825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383112, 35.806995, 16.448681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412807, 0.415960, 0.810289,
		0.078756, -0.902596, 0.423223,
		0.907407, -0.110894, -0.405357,
		28.655334, 35.773727, 16.327074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433561, 35.339092, 17.100199>,  <28.020149, 35.851353, 16.610825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433561, 35.339092, 17.100199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698503, 35.549778, 16.887087>,  <28.857468, 35.676189, 16.759220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698503, 35.549778, 16.887087>,  <28.433561, 35.339092, 17.100199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698503, 35.549778, 16.887087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454711, 0.282550, 0.844632,
		0.595420, -0.801707, -0.052356,
		0.662354, 0.526718, -0.532781,
		28.897209, 35.707794, 16.727253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153637, 35.092915, 17.322323>,  <28.433561, 35.339092, 17.100199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153637, 35.092915, 17.322323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237648, 35.456062, 17.177179>,  <29.288055, 35.673950, 17.090094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237648, 35.456062, 17.177179>,  <29.153637, 35.092915, 17.322323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237648, 35.456062, 17.177179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444269, 0.241987, 0.862593,
		0.870926, -0.342378, -0.352512,
		0.210029, 0.907866, -0.362861,
		29.300657, 35.728420, 17.068321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763157, 35.252625, 17.753143>,  <29.153637, 35.092915, 17.322323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763157, 35.252625, 17.753143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642580, 35.579777, 17.557102>,  <29.570234, 35.776070, 17.439478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642580, 35.579777, 17.557102>,  <29.763157, 35.252625, 17.753143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642580, 35.579777, 17.557102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531774, 0.570859, 0.625569,
		0.791422, -0.072051, -0.607009,
		-0.301443, 0.817881, -0.490105,
		29.552147, 35.825142, 17.410070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317759, 35.576641, 17.862801>,  <29.763157, 35.252625, 17.753143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317759, 35.576641, 17.862801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036266, 35.835949, 17.746519>,  <29.867371, 35.991535, 17.676750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036266, 35.835949, 17.746519>,  <30.317759, 35.576641, 17.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036266, 35.835949, 17.746519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319608, 0.654296, 0.685381,
		0.634518, 0.389413, -0.667641,
		-0.703731, 0.648270, -0.290703,
		29.825148, 36.030430, 17.659307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618227, 36.350338, 17.731510>,  <30.317759, 35.576641, 17.862801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618227, 36.350338, 17.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226692, 36.379326, 17.808065>,  <29.991772, 36.396717, 17.853998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226692, 36.379326, 17.808065>,  <30.618227, 36.350338, 17.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226692, 36.379326, 17.808065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197673, 0.576910, 0.792528,
		-0.052982, 0.813587, -0.579025,
		-0.978835, 0.072468, 0.191390,
		29.933043, 36.401066, 17.865482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630486, 36.925289, 18.262487>,  <30.618227, 36.350338, 17.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630486, 36.925289, 18.262487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243279, 36.826012, 18.277143>,  <30.010954, 36.766445, 18.285938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243279, 36.826012, 18.277143>,  <30.630486, 36.925289, 18.262487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243279, 36.826012, 18.277143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076231, 0.430118, 0.899548,
		-0.239025, 0.867984, -0.435282,
		-0.968016, -0.248197, 0.036642,
		29.952873, 36.751553, 18.288136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271025, 37.570393, 18.437590>,  <30.630486, 36.925289, 18.262487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271025, 37.570393, 18.437590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065033, 37.249947, 18.559584>,  <29.941437, 37.057678, 18.632780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065033, 37.249947, 18.559584>,  <30.271025, 37.570393, 18.437590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065033, 37.249947, 18.559584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151262, 0.265281, 0.952232,
		-0.843750, 0.536514, -0.015437,
		-0.514981, -0.801111, 0.304985,
		29.910538, 37.009613, 18.651079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670412, 37.782539, 18.634224>,  <30.271025, 37.570393, 18.437590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670412, 37.782539, 18.634224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723448, 37.435482, 18.825895>,  <29.755270, 37.227245, 18.940897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723448, 37.435482, 18.825895>,  <29.670412, 37.782539, 18.634224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723448, 37.435482, 18.825895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026070, 0.480225, 0.876758,
		-0.990828, -0.128742, 0.041054,
		0.132591, -0.867646, 0.479177,
		29.763226, 37.175190, 18.969648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324030, 37.924877, 19.261269>,  <29.670412, 37.782539, 18.634224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324030, 37.924877, 19.261269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534563, 37.591518, 19.328712>,  <29.660883, 37.391502, 19.369179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534563, 37.591518, 19.328712>,  <29.324030, 37.924877, 19.261269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534563, 37.591518, 19.328712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101251, 0.258320, 0.960739,
		-0.844229, -0.488595, 0.220344,
		0.526331, -0.833394, 0.168610,
		29.692463, 37.341499, 19.379295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943481, 37.552410, 19.723703>,  <29.324030, 37.924877, 19.261269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943481, 37.552410, 19.723703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316313, 37.410530, 19.753145>,  <29.540012, 37.325401, 19.770811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316313, 37.410530, 19.753145>,  <28.943481, 37.552410, 19.723703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316313, 37.410530, 19.753145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012287, 0.172111, 0.985001,
		-0.362048, -0.919003, 0.156063,
		0.932079, -0.354700, 0.073604,
		29.595936, 37.304119, 19.775227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971893, 37.015656, 20.245737>,  <28.943481, 37.552410, 19.723703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971893, 37.015656, 20.245737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324533, 37.199772, 20.203949>,  <29.536118, 37.310242, 20.178875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324533, 37.199772, 20.203949>,  <28.971893, 37.015656, 20.245737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324533, 37.199772, 20.203949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038297, 0.150853, 0.987814,
		0.470444, -0.874856, 0.115364,
		0.881599, 0.460293, -0.104472,
		29.589014, 37.337860, 20.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222912, 36.768368, 20.854685>,  <28.971893, 37.015656, 20.245737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222912, 36.768368, 20.854685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419436, 37.091454, 20.724319>,  <29.537350, 37.285305, 20.646101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419436, 37.091454, 20.724319>,  <29.222912, 36.768368, 20.854685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419436, 37.091454, 20.724319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093606, 0.420987, 0.902224,
		0.865940, -0.412764, 0.282441,
		0.491310, 0.807710, -0.325913,
		29.566828, 37.333767, 20.626545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769304, 36.899979, 21.330410>,  <29.222912, 36.768368, 20.854685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769304, 36.899979, 21.330410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707415, 37.239208, 21.127699>,  <29.670280, 37.442745, 21.006073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707415, 37.239208, 21.127699>,  <29.769304, 36.899979, 21.330410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707415, 37.239208, 21.127699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182866, 0.479507, 0.858273,
		0.970886, 0.225469, 0.080893,
		-0.154726, 0.848078, -0.506778,
		29.660997, 37.493633, 20.975666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020813, 37.453243, 21.711828>,  <29.769304, 36.899979, 21.330410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020813, 37.453243, 21.711828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765797, 37.639294, 21.466160>,  <29.612787, 37.750923, 21.318760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765797, 37.639294, 21.466160>,  <30.020813, 37.453243, 21.711828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765797, 37.639294, 21.466160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279330, 0.603393, 0.746921,
		0.717996, 0.647747, -0.254764,
		-0.637539, 0.465124, -0.614169,
		29.574535, 37.778831, 21.281910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996763, 38.150921, 21.973520>,  <30.020813, 37.453243, 21.711828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996763, 38.150921, 21.973520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684320, 38.132500, 21.724440>,  <29.496855, 38.121449, 21.574991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684320, 38.132500, 21.724440>,  <29.996763, 38.150921, 21.973520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684320, 38.132500, 21.724440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529919, 0.576346, 0.622102,
		0.330243, 0.815907, -0.474589,
		-0.781105, -0.046049, -0.622699,
		29.449989, 38.118687, 21.537630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908352, 38.797005, 21.634552>,  <29.996763, 38.150921, 21.973520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908352, 38.797005, 21.634552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546782, 38.627193, 21.613798>,  <29.329840, 38.525307, 21.601345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546782, 38.627193, 21.613798>,  <29.908352, 38.797005, 21.634552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546782, 38.627193, 21.613798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407640, 0.818480, 0.404871,
		-0.129411, 0.387125, -0.912900,
		-0.903926, -0.424529, -0.051887,
		29.275604, 38.499836, 21.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437948, 39.344326, 21.443768>,  <29.908352, 38.797005, 21.634552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437948, 39.344326, 21.443768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208052, 39.074932, 21.629707>,  <29.070114, 38.913296, 21.741272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208052, 39.074932, 21.629707>,  <29.437948, 39.344326, 21.443768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208052, 39.074932, 21.629707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401427, 0.727035, 0.557024,
		-0.713111, 0.133543, -0.688215,
		-0.574743, -0.673488, 0.464849,
		29.035629, 38.872887, 21.769161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792002, 39.696877, 21.655792>,  <29.437948, 39.344326, 21.443768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792002, 39.696877, 21.655792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756430, 39.357090, 21.863829>,  <28.735086, 39.153217, 21.988649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756430, 39.357090, 21.863829>,  <28.792002, 39.696877, 21.655792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756430, 39.357090, 21.863829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525313, 0.483633, 0.700104,
		-0.846249, -0.210950, -0.489246,
		-0.088929, -0.849470, 0.520089,
		28.729752, 39.102249, 22.019855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157272, 39.710114, 21.851830>,  <28.792002, 39.696877, 21.655792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157272, 39.710114, 21.851830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312126, 39.437019, 22.099699>,  <28.405039, 39.273163, 22.248421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312126, 39.437019, 22.099699>,  <28.157272, 39.710114, 21.851830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312126, 39.437019, 22.099699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551792, 0.366886, 0.748946,
		-0.738684, -0.631873, -0.234696,
		0.387133, -0.682738, 0.619675,
		28.428267, 39.232197, 22.285601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624613, 39.493328, 22.285624>,  <28.157272, 39.710114, 21.851830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624613, 39.493328, 22.285624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950611, 39.417316, 22.504591>,  <28.146210, 39.371708, 22.635971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950611, 39.417316, 22.504591>,  <27.624613, 39.493328, 22.285624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950611, 39.417316, 22.504591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462663, 0.355397, 0.812180,
		-0.348889, -0.915195, 0.201728,
		0.814996, -0.190029, 0.547421,
		28.195110, 39.360310, 22.668818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415924, 39.273495, 22.888716>,  <27.624613, 39.493328, 22.285624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415924, 39.273495, 22.888716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778072, 39.405525, 22.995564>,  <27.995361, 39.484745, 23.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778072, 39.405525, 22.995564>,  <27.415924, 39.273495, 22.888716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778072, 39.405525, 22.995564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407935, 0.501485, 0.762956,
		0.117880, -0.799725, 0.588680,
		0.905369, 0.330081, 0.267121,
		28.049683, 39.504551, 23.075699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367014, 39.291401, 23.608763>,  <27.415924, 39.273495, 22.888716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367014, 39.291401, 23.608763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670919, 39.532803, 23.511988>,  <27.853264, 39.677643, 23.453922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670919, 39.532803, 23.511988>,  <27.367014, 39.291401, 23.608763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670919, 39.532803, 23.511988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248606, 0.613463, 0.749572,
		0.600783, -0.509360, 0.616127,
		0.759773, 0.603503, -0.241928,
		27.898849, 39.713856, 23.439407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892836, 39.256020, 24.202969>,  <27.367014, 39.291401, 23.608763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892836, 39.256020, 24.202969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945686, 39.589401, 23.988342>,  <27.977396, 39.789429, 23.859566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945686, 39.589401, 23.988342>,  <27.892836, 39.256020, 24.202969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945686, 39.589401, 23.988342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000378, 0.541270, 0.840849,
		0.991233, -0.111301, 0.071200,
		0.132126, 0.833450, -0.536566,
		27.985325, 39.839436, 23.827372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504547, 39.591160, 24.497631>,  <27.892836, 39.256020, 24.202969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504547, 39.591160, 24.497631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326595, 39.890732, 24.301188>,  <28.219824, 40.070473, 24.183321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.326595, 39.890732, 24.301188>,  <28.504547, 39.591160, 24.497631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326595, 39.890732, 24.301188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143184, 0.600789, 0.786480,
		0.884071, 0.279569, -0.374513,
		-0.444878, 0.748928, -0.491111,
		28.193132, 40.115410, 24.153854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939749, 40.139606, 24.678047>,  <28.504547, 39.591160, 24.497631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939749, 40.139606, 24.678047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596981, 40.301205, 24.549997>,  <28.391321, 40.398163, 24.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596981, 40.301205, 24.549997>,  <28.939749, 40.139606, 24.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596981, 40.301205, 24.549997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066935, 0.703012, 0.708020,
		0.511087, 0.585288, -0.629466,
		-0.856918, 0.403994, -0.320124,
		28.339905, 40.422401, 24.453960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095955, 40.828110, 24.641279>,  <28.939749, 40.139606, 24.678047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095955, 40.828110, 24.641279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696384, 40.810318, 24.636141>,  <28.456642, 40.799641, 24.633059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.696384, 40.810318, 24.636141>,  <29.095955, 40.828110, 24.641279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696384, 40.810318, 24.636141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040279, 0.698149, 0.714819,
		-0.022829, 0.714570, -0.699192,
		-0.998928, -0.044482, -0.012844,
		28.396706, 40.796974, 24.632288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861485, 41.487457, 24.683292>,  <29.095955, 40.828110, 24.641279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861485, 41.487457, 24.683292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565628, 41.260017, 24.827311>,  <28.388115, 41.123554, 24.913721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565628, 41.260017, 24.827311>,  <28.861485, 41.487457, 24.683292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565628, 41.260017, 24.827311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121815, 0.639252, 0.759288,
		-0.661887, 0.517741, -0.542079,
		-0.739640, -0.568596, 0.360044,
		28.343737, 41.089439, 24.935324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593157, 42.012505, 25.035313>,  <28.861485, 41.487457, 24.683292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593157, 42.012505, 25.035313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378733, 41.697540, 25.157045>,  <28.250078, 41.508560, 25.230085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378733, 41.697540, 25.157045>,  <28.593157, 42.012505, 25.035313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378733, 41.697540, 25.157045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177858, 0.457758, 0.871105,
		-0.825231, 0.412837, -0.385433,
		-0.536059, -0.787415, 0.304331,
		28.217915, 41.461315, 25.248344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969597, 42.251076, 25.108568>,  <28.593157, 42.012505, 25.035313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969597, 42.251076, 25.108568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000370, 41.938736, 25.356556>,  <28.018833, 41.751331, 25.505348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000370, 41.938736, 25.356556>,  <27.969597, 42.251076, 25.108568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000370, 41.938736, 25.356556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141258, 0.607004, 0.782044,
		-0.986979, -0.147740, -0.063602,
		0.076933, -0.780845, 0.619970,
		28.023449, 41.704483, 25.542547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388901, 42.215824, 25.473164>,  <27.969597, 42.251076, 25.108568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388901, 42.215824, 25.473164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682594, 42.038498, 25.678833>,  <27.858810, 41.932102, 25.802235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682594, 42.038498, 25.678833>,  <27.388901, 42.215824, 25.473164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682594, 42.038498, 25.678833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188552, 0.594410, 0.781745,
		-0.652188, -0.670932, 0.352848,
		0.734234, -0.443314, 0.514173,
		27.902864, 41.905502, 25.833084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182772, 42.404140, 26.117243>,  <27.388901, 42.215824, 25.473164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182772, 42.404140, 26.117243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539160, 42.258472, 26.225719>,  <27.752993, 42.171070, 26.290806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.539160, 42.258472, 26.225719>,  <27.182772, 42.404140, 26.117243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539160, 42.258472, 26.225719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135024, 0.357744, 0.924007,
		-0.433517, -0.859882, 0.269567,
		0.890972, -0.364175, 0.271192,
		27.806452, 42.149220, 26.307077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074434, 42.093811, 26.700823>,  <27.182772, 42.404140, 26.117243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074434, 42.093811, 26.700823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471012, 42.144108, 26.686794>,  <27.708958, 42.174286, 26.678377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471012, 42.144108, 26.686794>,  <27.074434, 42.093811, 26.700823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471012, 42.144108, 26.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006660, 0.219610, 0.975565,
		0.130364, -0.967452, 0.216893,
		0.991444, 0.125734, -0.035073,
		27.768446, 42.181828, 26.676271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229956, 41.951813, 27.317225>,  <27.074434, 42.093811, 26.700823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229956, 41.951813, 27.317225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571785, 42.113445, 27.186735>,  <27.776882, 42.210426, 27.108442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571785, 42.113445, 27.186735>,  <27.229956, 41.951813, 27.317225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571785, 42.113445, 27.186735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213056, 0.300074, 0.929819,
		0.473617, -0.864101, 0.170342,
		0.854572, 0.404086, -0.326221,
		27.828157, 42.234673, 27.088869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774906, 41.701221, 27.683578>,  <27.229956, 41.951813, 27.317225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774906, 41.701221, 27.683578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897434, 42.059090, 27.553514>,  <27.970951, 42.273811, 27.475475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897434, 42.059090, 27.553514>,  <27.774906, 41.701221, 27.683578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897434, 42.059090, 27.553514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244248, 0.256278, 0.935235,
		0.920060, -0.365901, -0.140019,
		0.306320, 0.894672, -0.325161,
		27.989330, 42.327492, 27.455967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382202, 41.893517, 27.984367>,  <27.774906, 41.701221, 27.683578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382202, 41.893517, 27.984367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247507, 42.261417, 27.903702>,  <28.166691, 42.482159, 27.855303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247507, 42.261417, 27.903702>,  <28.382202, 41.893517, 27.984367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247507, 42.261417, 27.903702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053972, 0.232672, 0.971057,
		0.940051, 0.316105, -0.127990,
		-0.336736, 0.919751, -0.201662,
		28.146486, 42.537342, 27.843203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727776, 42.261711, 28.482300>,  <28.382202, 41.893517, 27.984367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727776, 42.261711, 28.482300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429735, 42.484604, 28.335703>,  <28.250912, 42.618340, 28.247746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429735, 42.484604, 28.335703>,  <28.727776, 42.261711, 28.482300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429735, 42.484604, 28.335703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264144, 0.258019, 0.929330,
		0.612417, 0.789249, -0.045059,
		-0.745099, 0.557236, -0.366491,
		28.206205, 42.651775, 28.225756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034830, 42.240147, 27.838736>,  <28.727776, 42.261711, 28.482300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034830, 42.240147, 27.838736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182076, 42.124313, 28.192150>,  <29.270424, 42.054813, 28.404198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182076, 42.124313, 28.192150>,  <29.034830, 42.240147, 27.838736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182076, 42.124313, 28.192150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816445, -0.353995, -0.456186,
		0.444870, 0.889286, 0.106116,
		0.368116, -0.289582, 0.883535,
		29.292511, 42.037437, 28.457211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681879, 42.514263, 27.913982>,  <29.034830, 42.240147, 27.838736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681879, 42.514263, 27.913982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640972, 42.179337, 28.128807>,  <29.616428, 41.978378, 28.257702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640972, 42.179337, 28.128807>,  <29.681879, 42.514263, 27.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640972, 42.179337, 28.128807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758895, -0.414725, -0.502077,
		0.643133, 0.356229, 0.677850,
		-0.102267, -0.837319, 0.537064,
		29.610292, 41.928143, 28.289927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375828, 42.355309, 28.180679>,  <29.681879, 42.514263, 27.913982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375828, 42.355309, 28.180679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192812, 42.000160, 28.200003>,  <30.083002, 41.787071, 28.211597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192812, 42.000160, 28.200003>,  <30.375828, 42.355309, 28.180679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192812, 42.000160, 28.200003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793967, -0.432402, -0.427370,
		0.400341, -0.157183, 0.902785,
		-0.457541, -0.887875, 0.048310,
		30.055550, 41.733799, 28.214495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899845, 42.020210, 28.096014>,  <30.375828, 42.355309, 28.180679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899845, 42.020210, 28.096014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607431, 41.747601, 28.082674>,  <30.431984, 41.584034, 28.074669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607431, 41.747601, 28.082674>,  <30.899845, 42.020210, 28.096014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607431, 41.747601, 28.082674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577650, -0.592115, -0.561889,
		0.363195, -0.430025, 0.826540,
		-0.731033, -0.681526, -0.033351,
		30.388121, 41.543144, 28.072668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168756, 41.321213, 28.271275>,  <30.899845, 42.020210, 28.096014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168756, 41.321213, 28.271275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856159, 41.260433, 28.029222>,  <30.668602, 41.223965, 27.883991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856159, 41.260433, 28.029222>,  <31.168756, 41.321213, 28.271275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856159, 41.260433, 28.029222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522041, -0.690395, -0.500828,
		-0.341680, -0.707296, 0.618860,
		-0.781492, -0.151948, -0.605131,
		30.621712, 41.214848, 27.847683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352833, 40.725143, 28.075745>,  <31.168756, 41.321213, 28.271275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352833, 40.725143, 28.075745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063919, 40.802544, 27.810156>,  <30.890572, 40.848984, 27.650803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063919, 40.802544, 27.810156>,  <31.352833, 40.725143, 28.075745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063919, 40.802544, 27.810156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425020, -0.633176, -0.646874,
		-0.545584, -0.749430, 0.375092,
		-0.722285, 0.193502, -0.663973,
		30.847233, 40.860596, 27.610964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985739, 40.033012, 27.755545>,  <31.352833, 40.725143, 28.075745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985739, 40.033012, 27.755545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908207, 40.314110, 27.481733>,  <30.861689, 40.482769, 27.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908207, 40.314110, 27.481733>,  <30.985739, 40.033012, 27.755545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908207, 40.314110, 27.481733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283303, -0.627936, -0.724870,
		-0.939239, -0.334428, -0.077380,
		-0.193827, 0.702749, -0.684526,
		30.850060, 40.524933, 27.276375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635370, 39.648277, 27.356218>,  <30.985739, 40.033012, 27.755545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635370, 39.648277, 27.356218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769730, 39.954746, 27.137074>,  <30.850346, 40.138626, 27.005587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769730, 39.954746, 27.137074>,  <30.635370, 39.648277, 27.356218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769730, 39.954746, 27.137074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069913, -0.600334, -0.796687,
		-0.939299, 0.229305, -0.255218,
		0.335900, 0.766171, -0.547862,
		30.870501, 40.184597, 26.972715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298756, 39.704578, 26.798027>,  <30.635370, 39.648277, 27.356218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298756, 39.704578, 26.798027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610926, 39.919762, 26.670570>,  <30.798227, 40.048874, 26.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610926, 39.919762, 26.670570>,  <30.298756, 39.704578, 26.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610926, 39.919762, 26.670570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152396, -0.657918, -0.737509,
		-0.606390, 0.527012, -0.595440,
		0.780427, 0.537961, -0.318641,
		30.845055, 40.081150, 26.574978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219341, 39.650883, 26.023315>,  <30.298756, 39.704578, 26.798027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219341, 39.650883, 26.023315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593548, 39.739441, 26.133438>,  <30.818071, 39.792576, 26.199511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593548, 39.739441, 26.133438>,  <30.219341, 39.650883, 26.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593548, 39.739441, 26.133438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353017, -0.616030, -0.704192,
		0.013693, 0.755971, -0.654462,
		0.935517, 0.221393, 0.275306,
		30.874203, 39.805859, 26.216030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536343, 39.937408, 25.401703>,  <30.219341, 39.650883, 26.023315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536343, 39.937408, 25.401703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850145, 39.808155, 25.613413>,  <31.038427, 39.730602, 25.740438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850145, 39.808155, 25.613413>,  <30.536343, 39.937408, 25.401703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850145, 39.808155, 25.613413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349384, -0.474825, -0.807758,
		0.512327, 0.818612, -0.259605,
		0.784507, -0.323134, 0.529275,
		31.085497, 39.711216, 25.772196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250343, 40.143284, 25.039986>,  <30.536343, 39.937408, 25.401703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250343, 40.143284, 25.039986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325037, 39.826767, 25.272873>,  <31.369854, 39.636856, 25.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325037, 39.826767, 25.272873>,  <31.250343, 40.143284, 25.039986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325037, 39.826767, 25.272873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545169, -0.409553, -0.731476,
		0.817264, 0.454001, 0.354912,
		0.186736, -0.791296, 0.582220,
		31.381058, 39.589378, 25.447538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819359, 39.989628, 24.643019>,  <31.250343, 40.143284, 25.039986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819359, 39.989628, 24.643019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743675, 39.674343, 24.877256>,  <31.698265, 39.485172, 25.017799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743675, 39.674343, 24.877256>,  <31.819359, 39.989628, 24.643019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743675, 39.674343, 24.877256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426995, -0.603076, -0.673777,
		0.884237, 0.122563, 0.450669,
		-0.189207, -0.788212, 0.585596,
		31.686913, 39.437878, 25.052935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432381, 39.532478, 24.682426>,  <31.819359, 39.989628, 24.643019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432381, 39.532478, 24.682426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121666, 39.302578, 24.785397>,  <31.935238, 39.164639, 24.847178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121666, 39.302578, 24.785397>,  <32.432381, 39.532478, 24.682426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121666, 39.302578, 24.785397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269003, -0.672412, -0.689564,
		0.569421, -0.466397, 0.676930,
		-0.776787, -0.574748, 0.257423,
		31.888630, 39.130154, 24.862623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696625, 38.956196, 24.527645>,  <32.432381, 39.532478, 24.682426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696625, 38.956196, 24.527645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302383, 38.889984, 24.541420>,  <32.065838, 38.850258, 24.549685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302383, 38.889984, 24.541420>,  <32.696625, 38.956196, 24.527645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302383, 38.889984, 24.541420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083212, -0.652213, -0.753455,
		0.147178, -0.739742, 0.656597,
		-0.985603, -0.165529, 0.034436,
		32.006702, 38.840324, 24.551750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675827, 38.369465, 24.308088>,  <32.696625, 38.956196, 24.527645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675827, 38.369465, 24.308088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298420, 38.498894, 24.279602>,  <32.071976, 38.576553, 24.262510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298420, 38.498894, 24.279602>,  <32.675827, 38.369465, 24.308088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298420, 38.498894, 24.279602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196349, -0.719220, -0.666460,
		-0.266869, -0.614835, 0.742131,
		-0.943519, 0.323574, -0.071215,
		32.015366, 38.595966, 24.258238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247540, 37.746460, 24.319469>,  <32.675827, 38.369465, 24.308088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247540, 37.746460, 24.319469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015789, 38.019878, 24.141893>,  <31.876738, 38.183929, 24.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015789, 38.019878, 24.141893>,  <32.247540, 37.746460, 24.319469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015789, 38.019878, 24.141893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180525, -0.638767, -0.747922,
		-0.794815, -0.353187, 0.493486,
		-0.579379, 0.683546, -0.443943,
		31.841974, 38.224941, 24.008711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888317, 37.302441, 23.935545>,  <32.247540, 37.746460, 24.319469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888317, 37.302441, 23.935545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814459, 37.667393, 23.789413>,  <31.770144, 37.886364, 23.701735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814459, 37.667393, 23.789413>,  <31.888317, 37.302441, 23.935545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814459, 37.667393, 23.789413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078892, -0.384280, -0.919840,
		-0.979633, -0.141025, 0.142936,
		-0.184648, 0.912382, -0.365328,
		31.759064, 37.941109, 23.679815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132275, 37.425858, 23.666471>,  <31.888317, 37.302441, 23.935545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132275, 37.425858, 23.666471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352650, 37.692154, 23.465174>,  <31.484875, 37.851933, 23.344395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352650, 37.692154, 23.465174>,  <31.132275, 37.425858, 23.666471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352650, 37.692154, 23.465174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372263, -0.343653, -0.862162,
		-0.746917, 0.662339, 0.058498,
		0.550940, 0.665740, -0.503245,
		31.517931, 37.891876, 23.314199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631151, 37.712158, 23.156765>,  <31.132275, 37.425858, 23.666471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631151, 37.712158, 23.156765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011644, 37.744328, 23.037643>,  <31.239941, 37.763630, 22.966171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011644, 37.744328, 23.037643>,  <30.631151, 37.712158, 23.156765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011644, 37.744328, 23.037643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244549, -0.391820, -0.886946,
		-0.188019, 0.916520, -0.353044,
		0.951233, 0.080426, -0.297804,
		31.297014, 37.768456, 22.948301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610329, 37.873863, 22.415764>,  <30.631151, 37.712158, 23.156765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610329, 37.873863, 22.415764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003443, 37.807228, 22.447723>,  <31.239311, 37.767246, 22.466900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003443, 37.807228, 22.447723>,  <30.610329, 37.873863, 22.415764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003443, 37.807228, 22.447723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022013, -0.323789, -0.945873,
		0.183441, 0.931348, -0.314548,
		0.982784, -0.166588, 0.079898,
		31.298279, 37.757252, 22.471693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839384, 38.026875, 21.642796>,  <30.610329, 37.873863, 22.415764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839384, 38.026875, 21.642796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119703, 37.827141, 21.846577>,  <31.287895, 37.707298, 21.968845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119703, 37.827141, 21.846577>,  <30.839384, 38.026875, 21.642796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119703, 37.827141, 21.846577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351879, -0.379256, -0.855772,
		0.620532, 0.778990, -0.090076,
		0.700800, -0.499339, 0.509451,
		31.329943, 37.677338, 21.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444975, 38.103340, 21.283051>,  <30.839384, 38.026875, 21.642796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444975, 38.103340, 21.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489094, 37.782848, 21.518291>,  <31.515566, 37.590553, 21.659435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489094, 37.782848, 21.518291>,  <31.444975, 38.103340, 21.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489094, 37.782848, 21.518291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246743, -0.551115, -0.797113,
		0.962784, 0.233029, 0.136912,
		0.110297, -0.801230, 0.588103,
		31.522182, 37.542480, 21.694723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090252, 37.776173, 21.031958>,  <31.444975, 38.103340, 21.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090252, 37.776173, 21.031958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873734, 37.494038, 21.215040>,  <31.743822, 37.324757, 21.324890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873734, 37.494038, 21.215040>,  <32.090252, 37.776173, 21.031958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873734, 37.494038, 21.215040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275240, -0.662999, -0.696186,
		0.794505, -0.250865, 0.553018,
		-0.541299, -0.705336, 0.457708,
		31.711344, 37.282436, 21.352352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564381, 37.189014, 21.079191>,  <32.090252, 37.776173, 21.031958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564381, 37.189014, 21.079191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187229, 37.059639, 21.111113>,  <31.960938, 36.982014, 21.130266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187229, 37.059639, 21.111113>,  <32.564381, 37.189014, 21.079191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187229, 37.059639, 21.111113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154343, -0.636407, -0.755754,
		0.295228, -0.700266, 0.649975,
		-0.942878, -0.323438, 0.079804,
		31.904366, 36.962608, 21.135054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612499, 36.494965, 20.932446>,  <32.564381, 37.189014, 21.079191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612499, 36.494965, 20.932446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229420, 36.574570, 20.849306>,  <31.999571, 36.622334, 20.799423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229420, 36.574570, 20.849306>,  <32.612499, 36.494965, 20.932446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229420, 36.574570, 20.849306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008858, -0.701569, -0.712547,
		-0.287622, -0.684249, 0.670132,
		-0.957704, 0.199008, -0.207847,
		31.942108, 36.634274, 20.786951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983637, 35.925842, 20.957947>,  <32.612499, 36.494965, 20.932446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983637, 35.925842, 20.957947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886217, 36.195026, 20.678574>,  <31.827765, 36.356537, 20.510950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886217, 36.195026, 20.678574>,  <31.983637, 35.925842, 20.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886217, 36.195026, 20.678574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001310, -0.719886, -0.694091,
		-0.969887, -0.169961, 0.174447,
		-0.243551, 0.672961, -0.698431,
		31.813152, 36.396915, 20.469044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382732, 35.680214, 20.600924>,  <31.983637, 35.925842, 20.957947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382732, 35.680214, 20.600924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547861, 35.935741, 20.341232>,  <31.646938, 36.089058, 20.185417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547861, 35.935741, 20.341232>,  <31.382732, 35.680214, 20.600924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547861, 35.935741, 20.341232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045643, -0.697394, -0.715233,
		-0.909668, 0.324895, -0.258741,
		0.412820, 0.638815, -0.649227,
		31.671707, 36.127384, 20.146463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901920, 35.651215, 20.064821>,  <31.382732, 35.680214, 20.600924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901920, 35.651215, 20.064821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251806, 35.778271, 19.918411>,  <31.461739, 35.854504, 19.830566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251806, 35.778271, 19.918411>,  <30.901920, 35.651215, 20.064821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251806, 35.778271, 19.918411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033677, -0.713591, -0.699753,
		-0.483463, 0.624412, -0.613492,
		0.874716, 0.317644, -0.366024,
		31.514221, 35.873566, 19.808603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769129, 35.622322, 19.420710>,  <30.901920, 35.651215, 20.064821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769129, 35.622322, 19.420710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168249, 35.644722, 19.434889>,  <31.407721, 35.658161, 19.443398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168249, 35.644722, 19.434889>,  <30.769129, 35.622322, 19.420710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168249, 35.644722, 19.434889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065986, -0.789013, -0.610822,
		-0.006239, 0.611818, -0.790974,
		0.997801, 0.056005, 0.035449,
		31.467590, 35.661522, 19.445524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961607, 35.419353, 18.763844>,  <30.769129, 35.622322, 19.420710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961607, 35.419353, 18.763844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289059, 35.391521, 18.991882>,  <31.485529, 35.374821, 19.128706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289059, 35.391521, 18.991882>,  <30.961607, 35.419353, 18.763844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289059, 35.391521, 18.991882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290440, -0.806195, -0.515456,
		0.495474, 0.587544, -0.639764,
		0.818627, -0.069582, 0.570095,
		31.534647, 35.370647, 19.162910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489153, 35.346272, 18.282684>,  <30.961607, 35.419353, 18.763844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489153, 35.346272, 18.282684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615704, 35.195145, 18.630745>,  <31.691635, 35.104469, 18.839581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615704, 35.195145, 18.630745>,  <31.489153, 35.346272, 18.282684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615704, 35.195145, 18.630745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125720, -0.892478, -0.433219,
		0.940266, 0.246456, -0.234861,
		0.316378, -0.377814, 0.870150,
		31.710617, 35.081802, 18.891790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059059, 35.028137, 18.137569>,  <31.489153, 35.346272, 18.282684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059059, 35.028137, 18.137569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928946, 34.874645, 18.483273>,  <31.850878, 34.782551, 18.690695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928946, 34.874645, 18.483273>,  <32.059059, 35.028137, 18.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928946, 34.874645, 18.483273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052201, -0.905282, -0.421591,
		0.944176, -0.182250, 0.274439,
		-0.325280, -0.383730, 0.864259,
		31.831362, 34.759525, 18.742550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357422, 34.371712, 18.184298>,  <32.059059, 35.028137, 18.137569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357422, 34.371712, 18.184298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055103, 34.339401, 18.444218>,  <31.873711, 34.320015, 18.600170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055103, 34.339401, 18.444218>,  <32.357422, 34.371712, 18.184298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055103, 34.339401, 18.444218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158133, -0.940473, -0.300839,
		0.635422, -0.330129, 0.698036,
		-0.755799, -0.080777, 0.649802,
		31.828363, 34.315166, 18.639158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513817, 33.718689, 18.463390>,  <32.357422, 34.371712, 18.184298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513817, 33.718689, 18.463390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129025, 33.800766, 18.535480>,  <31.898148, 33.850014, 18.578735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129025, 33.800766, 18.535480>,  <32.513817, 33.718689, 18.463390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129025, 33.800766, 18.535480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253167, -0.917521, -0.306694,
		0.102432, -0.340663, 0.934589,
		-0.961984, 0.205191, 0.180228,
		31.840429, 33.862324, 18.589548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166172, 33.122044, 18.891443>,  <32.513817, 33.718689, 18.463390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166172, 33.122044, 18.891443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826777, 33.299660, 18.776274>,  <31.623140, 33.406227, 18.707172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826777, 33.299660, 18.776274>,  <32.166172, 33.122044, 18.891443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826777, 33.299660, 18.776274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333533, -0.871087, -0.360504,
		-0.410884, -0.209851, 0.887207,
		-0.848487, 0.444038, -0.287924,
		31.572231, 33.432873, 18.689896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724482, 32.656624, 19.050459>,  <32.166172, 33.122044, 18.891443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724482, 32.656624, 19.050459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539139, 32.886909, 18.780985>,  <31.427933, 33.025082, 18.619301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539139, 32.886909, 18.780985>,  <31.724482, 32.656624, 19.050459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539139, 32.886909, 18.780985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371802, -0.816372, -0.441927,
		-0.804398, 0.045703, 0.592330,
		-0.463364, 0.575715, -0.673681,
		31.400131, 33.059624, 18.578878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171436, 32.202805, 19.001863>,  <31.724482, 32.656624, 19.050459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171436, 32.202805, 19.001863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131130, 32.466858, 18.704119>,  <31.106947, 32.625290, 18.525473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131130, 32.466858, 18.704119>,  <31.171436, 32.202805, 19.001863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131130, 32.466858, 18.704119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401529, -0.711515, -0.576646,
		-0.910286, 0.240777, 0.336757,
		-0.100765, 0.660131, -0.744361,
		31.100901, 32.664898, 18.480810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847857, 31.681141, 18.624798>,  <31.171436, 32.202805, 19.001863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847857, 31.681141, 18.624798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082300, 31.402985, 18.791128>,  <31.222967, 31.236092, 18.890926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082300, 31.402985, 18.791128>,  <30.847857, 31.681141, 18.624798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082300, 31.402985, 18.791128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044547, 0.540097, 0.840423,
		-0.809006, -0.474056, 0.347534,
		0.586110, -0.695389, 0.415824,
		31.258133, 31.194368, 18.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553720, 31.412346, 19.271442>,  <30.847857, 31.681141, 18.624798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553720, 31.412346, 19.271442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949617, 31.361481, 19.297487>,  <31.187155, 31.330961, 19.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949617, 31.361481, 19.297487>,  <30.553720, 31.412346, 19.271442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949617, 31.361481, 19.297487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009493, 0.396230, 0.918102,
		-0.142548, -0.909303, 0.390958,
		0.989742, -0.127162, 0.065113,
		31.246540, 31.323332, 19.317020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616745, 30.960890, 19.804905>,  <30.553720, 31.412346, 19.271442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616745, 30.960890, 19.804905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963209, 31.156956, 19.765907>,  <31.171087, 31.274595, 19.742508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963209, 31.156956, 19.765907>,  <30.616745, 30.960890, 19.804905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963209, 31.156956, 19.765907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001938, 0.191786, 0.981435,
		0.499762, -0.850269, 0.165168,
		0.866160, 0.490164, -0.097496,
		31.223057, 31.304005, 19.736658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057577, 30.708132, 20.389923>,  <30.616745, 30.960890, 19.804905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057577, 30.708132, 20.389923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219625, 31.053200, 20.268810>,  <31.316854, 31.260241, 20.196142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219625, 31.053200, 20.268810>,  <31.057577, 30.708132, 20.389923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219625, 31.053200, 20.268810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061094, 0.304892, 0.950426,
		0.912219, -0.403537, 0.070814,
		0.405122, 0.862670, -0.302781,
		31.341162, 31.312000, 20.177977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482098, 30.827709, 20.939571>,  <31.057577, 30.708132, 20.389923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482098, 30.827709, 20.939571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473761, 31.196260, 20.784327>,  <31.468758, 31.417391, 20.691179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.473761, 31.196260, 20.784327>,  <31.482098, 30.827709, 20.939571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473761, 31.196260, 20.784327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270185, 0.378945, 0.885100,
		0.962583, -0.086414, -0.256840,
		-0.020844, 0.921376, -0.388113,
		31.467508, 31.472673, 20.667892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985233, 31.156328, 21.186861>,  <31.482098, 30.827709, 20.939571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985233, 31.156328, 21.186861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802525, 31.486774, 21.054865>,  <31.692900, 31.685043, 20.975668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802525, 31.486774, 21.054865>,  <31.985233, 31.156328, 21.186861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802525, 31.486774, 21.054865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129797, 0.428868, 0.893994,
		0.880065, 0.365518, -0.303121,
		-0.456770, 0.826117, -0.329988,
		31.665493, 31.734610, 20.955868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486519, 31.669279, 21.299650>,  <31.985233, 31.156328, 21.186861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486519, 31.669279, 21.299650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146740, 31.877722, 21.266449>,  <31.942873, 32.002789, 21.246529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146740, 31.877722, 21.266449>,  <32.486519, 31.669279, 21.299650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146740, 31.877722, 21.266449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306408, 0.615175, 0.726412,
		0.429600, 0.591614, -0.682229,
		-0.849446, 0.521107, -0.083004,
		31.891907, 32.034054, 21.241549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614700, 32.381252, 21.310389>,  <32.486519, 31.669279, 21.299650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614700, 32.381252, 21.310389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227715, 32.361710, 21.409683>,  <31.995523, 32.349983, 21.469261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227715, 32.361710, 21.409683>,  <32.614700, 32.381252, 21.310389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227715, 32.361710, 21.409683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131009, 0.742637, 0.656755,
		-0.216440, 0.667909, -0.712075,
		-0.967466, -0.048859, 0.248238,
		31.937475, 32.347054, 21.484156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422329, 33.065361, 21.262152>,  <32.614700, 32.381252, 21.310389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422329, 33.065361, 21.262152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117931, 32.909115, 21.469347>,  <31.935293, 32.815369, 21.593664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117931, 32.909115, 21.469347>,  <32.422329, 33.065361, 21.262152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117931, 32.909115, 21.469347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006774, 0.793599, 0.608403,
		-0.648725, 0.466499, -0.601277,
		-0.760993, -0.390613, 0.517988,
		31.889633, 32.791931, 21.624743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901569, 33.480797, 21.303787>,  <32.422329, 33.065361, 21.262152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901569, 33.480797, 21.303787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842564, 33.257187, 21.630156>,  <31.807161, 33.123020, 21.825977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842564, 33.257187, 21.630156>,  <31.901569, 33.480797, 21.303787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842564, 33.257187, 21.630156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198999, 0.791301, 0.578136,
		-0.968834, 0.247650, -0.005482,
		-0.147513, -0.559027, 0.815922,
		31.798309, 33.089478, 21.874931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374069, 33.813290, 21.743784>,  <31.901569, 33.480797, 21.303787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374069, 33.813290, 21.743784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555222, 33.568378, 22.003017>,  <31.663914, 33.421432, 22.158558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555222, 33.568378, 22.003017>,  <31.374069, 33.813290, 21.743784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555222, 33.568378, 22.003017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021347, 0.719247, 0.694427,
		-0.891316, -0.328327, 0.312663,
		0.452881, -0.612279, 0.648084,
		31.691086, 33.384693, 22.197443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024256, 33.983555, 22.393099>,  <31.374069, 33.813290, 21.743784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024256, 33.983555, 22.393099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368946, 33.802074, 22.483950>,  <31.575760, 33.693188, 22.538460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368946, 33.802074, 22.483950>,  <31.024256, 33.983555, 22.393099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368946, 33.802074, 22.483950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179576, 0.691399, 0.699800,
		-0.474535, -0.562248, 0.677269,
		0.861724, -0.453701, 0.227127,
		31.627464, 33.665966, 22.552088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994823, 33.841660, 23.082850>,  <31.024256, 33.983555, 22.393099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994823, 33.841660, 23.082850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391890, 33.821598, 23.038857>,  <31.630131, 33.809563, 23.012461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391890, 33.821598, 23.038857>,  <30.994823, 33.841660, 23.082850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391890, 33.821598, 23.038857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117345, 0.618158, 0.777246,
		0.029003, -0.784452, 0.619511,
		0.992667, -0.050154, -0.109980,
		31.689690, 33.806553, 23.005863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279829, 33.866077, 23.779011>,  <30.994823, 33.841660, 23.082850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279829, 33.866077, 23.779011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615999, 33.929535, 23.571735>,  <31.817701, 33.967609, 23.447371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615999, 33.929535, 23.571735>,  <31.279829, 33.866077, 23.779011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615999, 33.929535, 23.571735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286139, 0.682134, 0.672917,
		0.460229, -0.713810, 0.527887,
		0.840425, 0.158647, -0.518187,
		31.868126, 33.977131, 23.416279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848656, 33.794914, 24.271589>,  <31.279829, 33.866077, 23.779011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848656, 33.794914, 24.271589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966726, 34.025520, 23.966825>,  <32.037567, 34.163883, 23.783966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966726, 34.025520, 23.966825>,  <31.848656, 33.794914, 24.271589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966726, 34.025520, 23.966825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305642, 0.698562, 0.646988,
		0.905237, -0.423846, 0.029992,
		0.295175, 0.576511, -0.761910,
		32.055279, 34.198475, 23.738253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312126, 34.211967, 24.600899>,  <31.848656, 33.794914, 24.271589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312126, 34.211967, 24.600899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236088, 34.406071, 24.259516>,  <32.190464, 34.522533, 24.054686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236088, 34.406071, 24.259516>,  <32.312126, 34.211967, 24.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236088, 34.406071, 24.259516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249610, 0.864631, 0.436013,
		0.949503, -0.130145, -0.285492,
		-0.190101, 0.485258, -0.853456,
		32.179058, 34.551647, 24.003479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969582, 34.505371, 24.413696>,  <32.312126, 34.211967, 24.600899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969582, 34.505371, 24.413696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667053, 34.695305, 24.233690>,  <32.485538, 34.809265, 24.125687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667053, 34.695305, 24.233690>,  <32.969582, 34.505371, 24.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667053, 34.695305, 24.233690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282805, 0.857593, 0.429599,
		0.589918, 0.197648, -0.782900,
		-0.756319, 0.474836, -0.450014,
		32.440159, 34.837757, 24.098686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269386, 35.204594, 24.003969>,  <32.969582, 34.505371, 24.413696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269386, 35.204594, 24.003969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887142, 35.217983, 24.121058>,  <32.657795, 35.226017, 24.191311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887142, 35.217983, 24.121058>,  <33.269386, 35.204594, 24.003969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887142, 35.217983, 24.121058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170138, 0.873819, 0.455514,
		-0.240541, 0.485098, -0.840726,
		-0.955611, 0.033470, 0.292723,
		32.600460, 35.228024, 24.208874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209293, 35.941116, 24.014458>,  <33.269386, 35.204594, 24.003969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209293, 35.941116, 24.014458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866081, 35.811958, 24.174219>,  <32.660152, 35.734463, 24.270077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866081, 35.811958, 24.174219>,  <33.209293, 35.941116, 24.014458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866081, 35.811958, 24.174219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040631, 0.817894, 0.573932,
		-0.511989, 0.476223, -0.714898,
		-0.858031, -0.322894, 0.399403,
		32.608673, 35.715092, 24.294041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692413, 36.544422, 24.068539>,  <33.209293, 35.941116, 24.014458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692413, 36.544422, 24.068539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573402, 36.263390, 24.327105>,  <32.501995, 36.094769, 24.482244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573402, 36.263390, 24.327105>,  <32.692413, 36.544422, 24.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573402, 36.263390, 24.327105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158663, 0.704051, 0.692198,
		-0.941436, 0.103388, -0.320951,
		-0.297531, -0.702583, 0.646415,
		32.484142, 36.052616, 24.521029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152893, 36.842327, 24.406370>,  <32.692413, 36.544422, 24.068539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152893, 36.842327, 24.406370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281815, 36.541382, 24.636179>,  <32.359169, 36.360817, 24.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281815, 36.541382, 24.636179>,  <32.152893, 36.842327, 24.406370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281815, 36.541382, 24.636179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159478, 0.555079, 0.816366,
		-0.933105, -0.354744, 0.058922,
		0.322308, -0.752359, 0.574521,
		32.378506, 36.315674, 24.808535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651291, 36.845985, 24.912819>,  <32.152893, 36.842327, 24.406370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651291, 36.845985, 24.912819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963570, 36.650093, 25.068087>,  <32.150936, 36.532558, 25.161247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963570, 36.650093, 25.068087>,  <31.651291, 36.845985, 24.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963570, 36.650093, 25.068087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087062, 0.529862, 0.843603,
		-0.618816, -0.692393, 0.371025,
		0.780697, -0.489732, 0.388169,
		32.197781, 36.503174, 25.184538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412170, 36.580791, 25.541914>,  <31.651291, 36.845985, 24.912819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412170, 36.580791, 25.541914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811253, 36.601486, 25.559376>,  <32.050701, 36.613903, 25.569853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811253, 36.601486, 25.559376>,  <31.412170, 36.580791, 25.541914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811253, 36.601486, 25.559376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063746, 0.501063, 0.863060,
		0.022781, -0.863863, 0.503212,
		0.997706, 0.051739, 0.043653,
		32.110565, 36.617008, 25.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362818, 36.668198, 26.199165>,  <31.412170, 36.580791, 25.541914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362818, 36.668198, 26.199165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728710, 36.771538, 26.074892>,  <31.948246, 36.833542, 26.000328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728710, 36.771538, 26.074892>,  <31.362818, 36.668198, 26.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728710, 36.771538, 26.074892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075130, 0.646736, 0.759004,
		0.397021, -0.717625, 0.572178,
		0.914729, 0.258353, -0.310683,
		32.003128, 36.849045, 25.981688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829971, 36.451492, 26.721457>,  <31.362818, 36.668198, 26.199165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829971, 36.451492, 26.721457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023361, 36.730206, 26.509512>,  <32.139397, 36.897434, 26.382345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023361, 36.730206, 26.509512>,  <31.829971, 36.451492, 26.721457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023361, 36.730206, 26.509512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103890, 0.555352, 0.825100,
		0.869172, -0.453961, 0.196109,
		0.483473, 0.696780, -0.529859,
		32.168404, 36.939240, 26.350554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428150, 36.498951, 27.110216>,  <31.829971, 36.451492, 26.721457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428150, 36.498951, 27.110216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384991, 36.826832, 26.885202>,  <32.359097, 37.023560, 26.750195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384991, 36.826832, 26.885202>,  <32.428150, 36.498951, 27.110216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384991, 36.826832, 26.885202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253884, 0.569795, 0.781586,
		0.961198, -0.058490, -0.269587,
		-0.107894, 0.819703, -0.562536,
		32.352623, 37.072742, 26.716442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007069, 36.915249, 27.182833>,  <32.428150, 36.498951, 27.110216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007069, 36.915249, 27.182833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756771, 37.201241, 27.058096>,  <32.606590, 37.372837, 26.983253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756771, 37.201241, 27.058096>,  <33.007069, 36.915249, 27.182833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756771, 37.201241, 27.058096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451699, 0.658071, 0.602420,
		0.635931, 0.236105, -0.734742,
		-0.625747, 0.714980, -0.311840,
		32.569046, 37.415733, 26.964544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408894, 37.485420, 26.933769>,  <33.007069, 36.915249, 27.182833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408894, 37.485420, 26.933769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045628, 37.616280, 27.038239>,  <32.827667, 37.694794, 27.100920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045628, 37.616280, 27.038239>,  <33.408894, 37.485420, 26.933769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045628, 37.616280, 27.038239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415453, 0.780879, 0.466505,
		-0.051332, 0.532170, -0.845080,
		-0.908165, 0.327144, 0.261175,
		32.773178, 37.714424, 27.116590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560551, 38.213364, 27.052952>,  <33.408894, 37.485420, 26.933769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560551, 38.213364, 27.052952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206814, 38.142895, 27.225880>,  <32.994572, 38.100613, 27.329636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206814, 38.142895, 27.225880>,  <33.560551, 38.213364, 27.052952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206814, 38.142895, 27.225880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249802, 0.603748, 0.757025,
		-0.394379, 0.777464, -0.489912,
		-0.884344, -0.176174, 0.432318,
		32.941509, 38.090042, 27.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325191, 38.951824, 27.284296>,  <33.560551, 38.213364, 27.052952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325191, 38.951824, 27.284296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134956, 38.652168, 27.468731>,  <33.020813, 38.472374, 27.579391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134956, 38.652168, 27.468731>,  <33.325191, 38.951824, 27.284296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134956, 38.652168, 27.468731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015374, 0.517000, 0.855847,
		-0.879532, 0.414121, -0.234363,
		-0.475590, -0.749142, 0.461085,
		32.992279, 38.427425, 27.607056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844219, 39.281578, 27.586367>,  <33.325191, 38.951824, 27.284296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844219, 39.281578, 27.586367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875816, 38.928703, 27.772055>,  <32.894775, 38.716976, 27.883469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875816, 38.928703, 27.772055>,  <32.844219, 39.281578, 27.586367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875816, 38.928703, 27.772055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116409, 0.454328, 0.883196,
		-0.990055, -0.123803, -0.066808,
		0.078989, -0.882190, 0.464222,
		32.899513, 38.664047, 27.911322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637974, 39.402607, 28.214903>,  <32.844219, 39.281578, 27.586367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637974, 39.402607, 28.214903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775059, 39.043640, 28.326035>,  <32.857311, 38.828259, 28.392714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775059, 39.043640, 28.326035>,  <32.637974, 39.402607, 28.214903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775059, 39.043640, 28.326035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257872, 0.194512, 0.946397,
		-0.903355, -0.395987, -0.164757,
		0.342713, -0.897418, 0.277828,
		32.877872, 38.774414, 28.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027283, 39.004230, 28.528131>,  <32.637974, 39.402607, 28.214903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027283, 39.004230, 28.528131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356834, 38.831154, 28.674553>,  <32.554565, 38.727306, 28.762405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356834, 38.831154, 28.674553>,  <32.027283, 39.004230, 28.528131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356834, 38.831154, 28.674553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260483, 0.284525, 0.922602,
		-0.503353, -0.855466, 0.121706,
		0.823883, -0.432692, 0.366051,
		32.604000, 38.701347, 28.784369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834551, 38.645103, 29.100142>,  <32.027283, 39.004230, 28.528131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834551, 38.645103, 29.100142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228012, 38.695744, 29.151369>,  <32.464088, 38.726128, 29.182106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228012, 38.695744, 29.151369>,  <31.834551, 38.645103, 29.100142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228012, 38.695744, 29.151369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148683, 0.169714, 0.974213,
		0.101598, -0.977328, 0.185763,
		0.983652, 0.126597, 0.128069,
		32.523109, 38.733723, 29.189791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020287, 38.293911, 29.747501>,  <31.834551, 38.645103, 29.100142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020287, 38.293911, 29.747501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306820, 38.561043, 29.666632>,  <32.478741, 38.721321, 29.618111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306820, 38.561043, 29.666632>,  <32.020287, 38.293911, 29.747501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306820, 38.561043, 29.666632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076635, 0.363295, 0.928517,
		0.693538, -0.649633, 0.311419,
		0.716332, 0.667827, -0.202174,
		32.521721, 38.761391, 29.605980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444481, 38.195831, 30.349625>,  <32.020287, 38.293911, 29.747501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444481, 38.195831, 30.349625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514111, 38.551815, 30.181021>,  <32.555889, 38.765404, 30.079857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514111, 38.551815, 30.181021>,  <32.444481, 38.195831, 30.349625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514111, 38.551815, 30.181021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047669, 0.435161, 0.899090,
		0.983579, -0.136412, 0.118172,
		0.174071, 0.889959, -0.421512,
		32.566330, 38.818802, 30.054567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898472, 38.578636, 30.880478>,  <32.444481, 38.195831, 30.349625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898472, 38.578636, 30.880478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772121, 38.876682, 30.645523>,  <32.696312, 39.055511, 30.504551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772121, 38.876682, 30.645523>,  <32.898472, 38.578636, 30.880478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772121, 38.876682, 30.645523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139772, 0.575786, 0.805564,
		0.938448, 0.336559, -0.077731,
		-0.315877, 0.745116, -0.587387,
		32.677357, 39.100216, 30.469307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360004, 39.267319, 31.002491>,  <32.898472, 38.578636, 30.880478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360004, 39.267319, 31.002491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982265, 39.348892, 30.899244>,  <32.755623, 39.397835, 30.837296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982265, 39.348892, 30.899244>,  <33.360004, 39.267319, 31.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982265, 39.348892, 30.899244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080569, 0.617367, 0.782538,
		0.318941, 0.759782, -0.566576,
		-0.944344, 0.203935, -0.258119,
		32.698963, 39.410072, 30.821808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288082, 39.870243, 31.299124>,  <33.360004, 39.267319, 31.002491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288082, 39.870243, 31.299124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904030, 39.800930, 31.211370>,  <32.673599, 39.759342, 31.158718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904030, 39.800930, 31.211370>,  <33.288082, 39.870243, 31.299124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904030, 39.800930, 31.211370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274464, 0.435062, 0.857549,
		-0.053149, 0.883569, -0.465274,
		-0.960127, -0.173279, -0.219385,
		32.615993, 39.748947, 31.145555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884827, 40.445312, 31.561798>,  <33.288082, 39.870243, 31.299124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884827, 40.445312, 31.561798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613865, 40.151222, 31.552279>,  <32.451286, 39.974770, 31.546566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613865, 40.151222, 31.552279>,  <32.884827, 40.445312, 31.561798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613865, 40.151222, 31.552279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250967, 0.200577, 0.946987,
		-0.691473, 0.647469, -0.320389,
		-0.677407, -0.735223, -0.023800,
		32.410645, 39.930656, 31.545139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316277, 40.679001, 31.926447>,  <32.884827, 40.445312, 31.561798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316277, 40.679001, 31.926447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265423, 40.282593, 31.942968>,  <32.234909, 40.044746, 31.952881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265423, 40.282593, 31.942968>,  <32.316277, 40.679001, 31.926447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265423, 40.282593, 31.942968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449364, 0.094671, 0.888318,
		-0.884255, 0.094380, -0.457367,
		-0.127139, -0.991024, 0.041302,
		32.227280, 39.985287, 31.955359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708670, 41.034821, 32.289268>,  <32.316277, 40.679001, 31.926447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708670, 41.034821, 32.289268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810844, 40.857407, 32.632904>,  <31.872149, 40.750957, 32.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810844, 40.857407, 32.632904>,  <31.708670, 41.034821, 32.289268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810844, 40.857407, 32.632904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771665, 0.628859, 0.095230,
		-0.582482, 0.638602, 0.502893,
		0.255435, -0.443535, 0.859087,
		31.887474, 40.724346, 32.890629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678400, 41.528183, 32.953045>,  <31.708670, 41.034821, 32.289268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678400, 41.528183, 32.953045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942686, 41.228676, 32.931896>,  <32.101257, 41.048969, 32.919209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942686, 41.228676, 32.931896>,  <31.678400, 41.528183, 32.953045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942686, 41.228676, 32.931896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749348, 0.653824, 0.104836,
		-0.043931, -0.108885, 0.993083,
		0.660717, -0.748771, -0.052869,
		32.140900, 41.004044, 32.916035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917971, 41.520782, 33.185246>,  <31.678400, 41.528183, 32.953045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917971, 41.520782, 33.185246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918398, 41.671867, 33.555614>,  <30.918653, 41.762520, 33.777836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918398, 41.671867, 33.555614>,  <30.917971, 41.520782, 33.185246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918398, 41.671867, 33.555614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999867, 0.014651, -0.007130,
		-0.016259, 0.925807, -0.377648,
		0.001068, 0.377713, 0.925922,
		30.918718, 41.785183, 33.833389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275787, 42.223598, 33.246418>,  <30.917971, 41.520782, 33.185246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275787, 42.223598, 33.246418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302649, 42.011002, 33.584175>,  <31.318766, 41.883442, 33.786831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302649, 42.011002, 33.584175>,  <31.275787, 42.223598, 33.246418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302649, 42.011002, 33.584175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997336, 0.059917, -0.041603,
		-0.028482, 0.844939, 0.534105,
		0.067154, -0.531497, 0.844394,
		31.322794, 41.851551, 33.837494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847479, 42.509949, 33.472740>,  <31.275787, 42.223598, 33.246418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847479, 42.509949, 33.472740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817240, 42.159317, 33.662857>,  <31.799097, 41.948940, 33.776928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817240, 42.159317, 33.662857>,  <31.847479, 42.509949, 33.472740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817240, 42.159317, 33.662857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996345, -0.047399, 0.071057,
		-0.039759, 0.478924, 0.876956,
		-0.075598, -0.876576, 0.475289,
		31.794559, 41.896343, 33.805443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025913, 42.380531, 34.291058>,  <31.847479, 42.509949, 33.472740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025913, 42.380531, 34.291058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110565, 42.056183, 34.072811>,  <32.161358, 41.861572, 33.941864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110565, 42.056183, 34.072811>,  <32.025913, 42.380531, 34.291058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110565, 42.056183, 34.072811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959953, 0.067595, 0.271885,
		-0.183583, -0.581309, 0.792703,
		0.211632, -0.810871, -0.545620,
		32.174053, 41.812923, 33.909126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172241, 41.727749, 34.747101>,  <32.025913, 42.380531, 34.291058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172241, 41.727749, 34.747101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334892, 41.828125, 34.395718>,  <32.432484, 41.888351, 34.184887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334892, 41.828125, 34.395718>,  <32.172241, 41.727749, 34.747101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334892, 41.828125, 34.395718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862620, 0.211241, 0.459635,
		0.300906, -0.944673, -0.130569,
		0.406623, 0.250938, -0.878458,
		32.456879, 41.903408, 34.132179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828041, 41.481800, 34.678669>,  <32.172241, 41.727749, 34.747101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828041, 41.481800, 34.678669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805740, 41.790764, 34.425598>,  <32.792358, 41.976143, 34.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805740, 41.790764, 34.425598>,  <32.828041, 41.481800, 34.678669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805740, 41.790764, 34.425598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871708, 0.346629, 0.346372,
		0.486844, -0.532195, -0.692641,
		-0.055752, 0.772410, -0.632672,
		32.789013, 42.022488, 34.235798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487789, 41.534046, 34.222538>,  <32.828041, 41.481800, 34.678669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487789, 41.534046, 34.222538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316875, 41.883675, 34.314991>,  <33.214325, 42.093452, 34.370461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316875, 41.883675, 34.314991>,  <33.487789, 41.534046, 34.222538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316875, 41.883675, 34.314991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878404, 0.340807, 0.335050,
		0.214088, 0.346186, -0.913412,
		-0.427286, 0.874074, 0.231128,
		33.188690, 42.145897, 34.384331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958458, 42.075966, 34.059277>,  <33.487789, 41.534046, 34.222538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958458, 42.075966, 34.059277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718555, 42.202621, 34.353226>,  <33.574615, 42.278614, 34.529594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718555, 42.202621, 34.353226>,  <33.958458, 42.075966, 34.059277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718555, 42.202621, 34.353226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753932, 0.531323, 0.386372,
		-0.268111, 0.785769, -0.557389,
		-0.599753, 0.316643, 0.734870,
		33.538631, 42.297615, 34.573689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024826, 42.863926, 34.075466>,  <33.958458, 42.075966, 34.059277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024826, 42.863926, 34.075466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895046, 42.725430, 34.427570>,  <33.817177, 42.642334, 34.638832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895046, 42.725430, 34.427570>,  <34.024826, 42.863926, 34.075466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895046, 42.725430, 34.427570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766403, 0.449203, 0.459176,
		-0.554397, 0.823612, 0.119611,
		-0.324453, -0.346236, 0.880256,
		33.797710, 42.621559, 34.691647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031593, 43.373322, 34.559238>,  <34.024826, 42.863926, 34.075466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031593, 43.373322, 34.559238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071960, 43.021641, 34.745491>,  <34.096180, 42.810631, 34.857243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071960, 43.021641, 34.745491>,  <34.031593, 43.373322, 34.559238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071960, 43.021641, 34.745491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864408, 0.309194, 0.396483,
		-0.492560, 0.362485, 0.791195,
		0.100914, -0.879207, 0.465631,
		34.102234, 42.757877, 34.885181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946800, 43.322247, 35.261044>,  <34.031593, 43.373322, 34.559238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946800, 43.322247, 35.261044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222931, 43.081802, 35.099987>,  <34.388611, 42.937534, 35.003353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222931, 43.081802, 35.099987>,  <33.946800, 43.322247, 35.261044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222931, 43.081802, 35.099987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714190, 0.477182, 0.512083,
		-0.115686, -0.641065, 0.758718,
		0.690325, -0.601110, -0.402639,
		34.430027, 42.901470, 34.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283669, 43.070183, 35.817909>,  <33.946800, 43.322247, 35.261044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283669, 43.070183, 35.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512302, 43.027428, 35.492489>,  <34.649483, 43.001774, 35.297237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512302, 43.027428, 35.492489>,  <34.283669, 43.070183, 35.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512302, 43.027428, 35.492489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780291, 0.377531, 0.498614,
		0.253848, -0.919807, 0.299191,
		0.571583, -0.106884, -0.813553,
		34.683777, 42.995361, 35.248425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693001, 42.613079, 35.972961>,  <34.283669, 43.070183, 35.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693001, 42.613079, 35.972961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866283, 42.855415, 35.706043>,  <34.970253, 43.000816, 35.545891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866283, 42.855415, 35.706043>,  <34.693001, 42.613079, 35.972961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866283, 42.855415, 35.706043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607697, 0.350431, 0.712673,
		0.665609, -0.714251, -0.216358,
		0.433209, 0.605841, -0.667298,
		34.996246, 43.037167, 35.505856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256958, 42.937195, 36.268093>,  <34.693001, 42.613079, 35.972961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256958, 42.937195, 36.268093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284294, 43.154579, 35.933434>,  <35.300697, 43.285011, 35.732639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284294, 43.154579, 35.933434>,  <35.256958, 42.937195, 36.268093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284294, 43.154579, 35.933434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654588, 0.608433, 0.448692,
		0.752891, -0.578322, -0.314164,
		0.068341, 0.543464, -0.836646,
		35.304798, 43.317619, 35.682438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966995, 42.854115, 36.110420>,  <35.256958, 42.937195, 36.268093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966995, 42.854115, 36.110420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847240, 43.191895, 35.932762>,  <35.775387, 43.394562, 35.826168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847240, 43.191895, 35.932762>,  <35.966995, 42.854115, 36.110420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847240, 43.191895, 35.932762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741504, 0.498866, 0.448670,
		0.600451, -0.195013, -0.775518,
		-0.299383, 0.844454, -0.444148,
		35.757427, 43.445232, 35.799519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565769, 43.151207, 35.788208>,  <35.966995, 42.854115, 36.110420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565769, 43.151207, 35.788208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313404, 43.461140, 35.804146>,  <36.161983, 43.647099, 35.813709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313404, 43.461140, 35.804146>,  <36.565769, 43.151207, 35.788208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313404, 43.461140, 35.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746901, 0.592675, 0.301454,
		0.209962, 0.219950, -0.952648,
		-0.630916, 0.774827, 0.039842,
		36.124130, 43.693588, 35.816097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929790, 43.708157, 35.684639>,  <36.565769, 43.151207, 35.788208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929790, 43.708157, 35.684639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605827, 43.859451, 35.863968>,  <36.411449, 43.950226, 35.971565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605827, 43.859451, 35.863968>,  <36.929790, 43.708157, 35.684639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605827, 43.859451, 35.863968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581846, 0.614783, 0.532444,
		-0.074233, 0.692084, -0.717990,
		-0.809904, 0.378234, 0.448324,
		36.362858, 43.972923, 35.998466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817230, 44.532669, 35.663597>,  <36.929790, 43.708157, 35.684639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817230, 44.532669, 35.663597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638702, 44.399334, 35.995785>,  <36.531586, 44.319332, 36.195099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638702, 44.399334, 35.995785>,  <36.817230, 44.532669, 35.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638702, 44.399334, 35.995785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386965, 0.764889, 0.514979,
		-0.806882, 0.551209, -0.212393,
		-0.446318, -0.333339, 0.830473,
		36.504807, 44.299332, 36.244926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739464, 45.143940, 36.062618>,  <36.817230, 44.532669, 35.663597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739464, 45.143940, 36.062618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688923, 44.826099, 36.300152>,  <36.658600, 44.635395, 36.442673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688923, 44.826099, 36.300152>,  <36.739464, 45.143940, 36.062618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688923, 44.826099, 36.300152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439265, 0.491928, 0.751700,
		-0.889428, 0.355831, 0.286885,
		-0.126351, -0.794602, 0.593838,
		36.651016, 44.587719, 36.478302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271729, 45.228466, 36.515129>,  <36.739464, 45.143940, 36.062618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271729, 45.228466, 36.515129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547264, 44.970753, 36.648033>,  <36.712585, 44.816124, 36.727776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547264, 44.970753, 36.648033>,  <36.271729, 45.228466, 36.515129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547264, 44.970753, 36.648033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208058, 0.614774, 0.760766,
		-0.694414, -0.454917, 0.557529,
		0.688840, -0.644285, 0.332259,
		36.753918, 44.777466, 36.747711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161381, 45.033253, 37.167873>,  <36.271729, 45.228466, 36.515129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161381, 45.033253, 37.167873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548840, 45.043663, 37.069050>,  <36.781315, 45.049908, 37.009754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548840, 45.043663, 37.069050>,  <36.161381, 45.033253, 37.167873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548840, 45.043663, 37.069050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146397, 0.743679, 0.652311,
		0.200709, -0.668030, 0.716555,
		0.968650, 0.026023, -0.247061,
		36.839436, 45.051472, 36.994930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970177, 44.347942, 37.025211>,  <36.161381, 45.033253, 37.167873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970177, 44.347942, 37.025211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096844, 44.539932, 36.697956>,  <36.172844, 44.655125, 36.501602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096844, 44.539932, 36.697956>,  <35.970177, 44.347942, 37.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096844, 44.539932, 36.697956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610643, -0.556858, -0.563050,
		-0.725834, 0.677889, 0.116754,
		0.316670, 0.479975, -0.818134,
		36.191845, 44.683926, 36.452515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440289, 44.641987, 36.535034>,  <35.970177, 44.347942, 37.025211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440289, 44.641987, 36.535034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721149, 44.488636, 36.295036>,  <35.889668, 44.396626, 36.151035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721149, 44.488636, 36.295036>,  <35.440289, 44.641987, 36.535034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721149, 44.488636, 36.295036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684483, -0.595535, -0.420501,
		-0.196110, 0.705946, -0.680574,
		0.702157, -0.383377, -0.599998,
		35.931797, 44.373623, 36.115036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132801, 44.595543, 35.874130>,  <35.440289, 44.641987, 36.535034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132801, 44.595543, 35.874130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443687, 44.345379, 35.846405>,  <35.630219, 44.195282, 35.829769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443687, 44.345379, 35.846405>,  <35.132801, 44.595543, 35.874130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443687, 44.345379, 35.846405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565759, -0.646344, -0.512012,
		0.275418, 0.437155, -0.856178,
		0.777214, -0.625407, -0.069309,
		35.676853, 44.157757, 35.825611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201794, 44.482536, 35.241596>,  <35.132801, 44.595543, 35.874130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201794, 44.482536, 35.241596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374626, 44.171093, 35.423615>,  <35.478325, 43.984226, 35.532825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374626, 44.171093, 35.423615>,  <35.201794, 44.482536, 35.241596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374626, 44.171093, 35.423615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496777, -0.626619, -0.600468,
		0.752673, 0.033395, -0.657547,
		0.432084, -0.778610, 0.455049,
		35.504250, 43.937511, 35.560131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455276, 44.045353, 34.647926>,  <35.201794, 44.482536, 35.241596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455276, 44.045353, 34.647926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385822, 43.812614, 34.965748>,  <35.344151, 43.672974, 35.156441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385822, 43.812614, 34.965748>,  <35.455276, 44.045353, 34.647926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385822, 43.812614, 34.965748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445630, -0.673057, -0.590261,
		0.878217, -0.456566, -0.142419,
		-0.173637, -0.581844, 0.794549,
		35.333733, 43.638062, 35.204113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718735, 43.436535, 34.452557>,  <35.455276, 44.045353, 34.647926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718735, 43.436535, 34.452557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435390, 43.391376, 34.731262>,  <35.265385, 43.364281, 34.898483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435390, 43.391376, 34.731262>,  <35.718735, 43.436535, 34.452557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435390, 43.391376, 34.731262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442879, -0.697552, -0.563275,
		0.549616, -0.707585, 0.444124,
		-0.708364, -0.112892, 0.696760,
		35.222881, 43.357510, 34.940289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462288, 42.652443, 34.268463>,  <35.718735, 43.436535, 34.452557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462288, 42.652443, 34.268463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228065, 42.771038, 34.570251>,  <35.087532, 42.842194, 34.751324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228065, 42.771038, 34.570251>,  <35.462288, 42.652443, 34.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228065, 42.771038, 34.570251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594230, -0.790047, -0.150721,
		0.551378, -0.536583, 0.638797,
		-0.585554, 0.296488, 0.754468,
		35.052399, 42.859985, 34.796593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309246, 42.029194, 34.708588>,  <35.462288, 42.652443, 34.268463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309246, 42.029194, 34.708588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022507, 42.303349, 34.759773>,  <34.850464, 42.467842, 34.790485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022507, 42.303349, 34.759773>,  <35.309246, 42.029194, 34.708588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022507, 42.303349, 34.759773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695312, -0.689128, -0.204068,
		-0.051685, -0.235258, 0.970558,
		-0.716848, 0.685388, 0.127960,
		34.807453, 42.508965, 34.798161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001175, 41.678593, 35.052628>,  <35.309246, 42.029194, 34.708588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001175, 41.678593, 35.052628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074104, 41.350227, 35.269093>,  <36.117863, 41.153210, 35.398972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074104, 41.350227, 35.269093>,  <36.001175, 41.678593, 35.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074104, 41.350227, 35.269093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983067, 0.141942, -0.115892,
		0.018323, 0.553132, 0.832892,
		0.182326, -0.820912, 0.541165,
		36.128803, 41.103954, 35.431442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477600, 41.816349, 35.562302>,  <36.001175, 41.678593, 35.052628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477600, 41.816349, 35.562302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537670, 41.426212, 35.497623>,  <36.573711, 41.192131, 35.458817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537670, 41.426212, 35.497623>,  <36.477600, 41.816349, 35.562302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537670, 41.426212, 35.497623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975262, 0.172983, -0.137626,
		0.162204, -0.137027, 0.977197,
		0.150180, -0.975346, -0.161696,
		36.582726, 41.133610, 35.449116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165359, 41.659775, 35.822784>,  <36.477600, 41.816349, 35.562302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165359, 41.659775, 35.822784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061504, 41.355354, 35.584999>,  <36.999191, 41.172703, 35.442326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061504, 41.355354, 35.584999>,  <37.165359, 41.659775, 35.822784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061504, 41.355354, 35.584999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959179, -0.131786, -0.250216,
		0.112085, -0.635165, 0.764201,
		-0.259640, -0.761051, -0.594465,
		36.983612, 41.127041, 35.406658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544079, 41.065819, 36.017990>,  <37.165359, 41.659775, 35.822784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544079, 41.065819, 36.017990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410976, 41.008137, 35.645222>,  <37.331116, 40.973526, 35.421558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410976, 41.008137, 35.645222>,  <37.544079, 41.065819, 36.017990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410976, 41.008137, 35.645222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921233, -0.260882, -0.288566,
		-0.201509, -0.954539, 0.219656,
		-0.332752, -0.144206, -0.931923,
		37.311150, 40.964874, 35.365646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723259, 40.449532, 35.719601>,  <37.544079, 41.065819, 36.017990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723259, 40.449532, 35.719601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728710, 40.718563, 35.423641>,  <37.731983, 40.879982, 35.246067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728710, 40.718563, 35.423641>,  <37.723259, 40.449532, 35.719601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728710, 40.718563, 35.423641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852649, -0.394343, -0.342758,
		-0.522306, -0.626200, -0.578853,
		0.013631, 0.672583, -0.739896,
		37.732800, 40.920338, 35.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463337, 40.263569, 34.975716>,  <37.723259, 40.449532, 35.719601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463337, 40.263569, 34.975716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776283, 40.500187, 35.053669>,  <37.964050, 40.642159, 35.100441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776283, 40.500187, 35.053669>,  <37.463337, 40.263569, 34.975716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776283, 40.500187, 35.053669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622609, -0.734679, -0.269453,
		-0.016216, 0.332147, -0.943088,
		0.782365, 0.591544, 0.194884,
		38.010994, 40.677650, 35.112133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840103, 40.203655, 34.357597>,  <37.463337, 40.263569, 34.975716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840103, 40.203655, 34.357597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092133, 40.326389, 34.642933>,  <38.243351, 40.400028, 34.814137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092133, 40.326389, 34.642933>,  <37.840103, 40.203655, 34.357597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092133, 40.326389, 34.642933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599414, -0.776175, -0.195588,
		0.493666, 0.550823, -0.672970,
		0.630077, 0.306833, 0.713342,
		38.281155, 40.418438, 34.856934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260036, 39.557987, 34.429035>,  <37.840103, 40.203655, 34.357597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260036, 39.557987, 34.429035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474926, 39.614475, 34.761646>,  <38.603859, 39.648369, 34.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474926, 39.614475, 34.761646>,  <38.260036, 39.557987, 34.429035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474926, 39.614475, 34.761646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108082, -0.989281, 0.098188,
		0.836483, 0.037124, -0.546734,
		0.537228, 0.141224, 0.831530,
		38.636093, 39.656841, 35.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587368, 39.685089, 33.783188>,  <38.260036, 39.557987, 34.429035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587368, 39.685089, 33.783188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662430, 39.517574, 34.138580>,  <38.707466, 39.417065, 34.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662430, 39.517574, 34.138580>,  <38.587368, 39.685089, 33.783188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662430, 39.517574, 34.138580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886942, 0.460911, 0.029917,
		-0.422041, 0.782420, 0.457931,
		0.187658, -0.418784, 0.888484,
		38.718727, 39.391937, 34.405125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184376, 40.085526, 34.141201>,  <38.587368, 39.685089, 33.783188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184376, 40.085526, 34.141201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156921, 39.793495, 34.413166>,  <39.140450, 39.618279, 34.576344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156921, 39.793495, 34.413166>,  <39.184376, 40.085526, 34.141201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156921, 39.793495, 34.413166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872547, 0.286490, 0.395709,
		-0.483686, 0.620412, 0.617363,
		-0.068635, -0.730077, 0.679910,
		39.136330, 39.574471, 34.617138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390816, 40.312843, 34.843121>,  <39.184376, 40.085526, 34.141201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390816, 40.312843, 34.843121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486954, 39.924789, 34.830017>,  <39.544636, 39.691956, 34.822155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486954, 39.924789, 34.830017>,  <39.390816, 40.312843, 34.843121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486954, 39.924789, 34.830017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921723, 0.217504, 0.321120,
		-0.304405, -0.107374, 0.946472,
		0.240342, -0.970135, -0.032760,
		39.559055, 39.633747, 34.820190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893517, 40.396893, 35.385082>,  <39.390816, 40.312843, 34.843121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893517, 40.396893, 35.385082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995514, 40.043293, 35.228352>,  <40.056713, 39.831135, 35.134315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995514, 40.043293, 35.228352>,  <39.893517, 40.396893, 35.385082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995514, 40.043293, 35.228352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963832, 0.264846, 0.029723,
		0.077497, -0.385230, 0.919561,
		0.254993, -0.883999, -0.391822,
		40.072010, 39.778091, 35.110806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330929, 39.999611, 35.920818>,  <39.893517, 40.396893, 35.385082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330929, 39.999611, 35.920818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383312, 40.000626, 35.524265>,  <40.414742, 40.001236, 35.286331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383312, 40.000626, 35.524265>,  <40.330929, 39.999611, 35.920818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383312, 40.000626, 35.524265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984793, 0.114810, 0.130385,
		0.114152, -0.993384, 0.012539,
		0.130962, 0.002535, -0.991384,
		40.422600, 40.001389, 35.226849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829773, 39.541256, 35.722660>,  <40.330929, 39.999611, 35.920818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829773, 39.541256, 35.722660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828564, 39.806965, 35.423664>,  <40.827839, 39.966389, 35.244267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828564, 39.806965, 35.423664>,  <40.829773, 39.541256, 35.722660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828564, 39.806965, 35.423664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974047, 0.171131, 0.148144,
		0.226326, -0.727641, -0.647546,
		-0.003019, 0.664269, -0.747488,
		40.827660, 40.006245, 35.199417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191788, 39.188152, 35.270432>,  <40.829773, 39.541256, 35.722660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191788, 39.188152, 35.270432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220829, 39.586594, 35.250374>,  <41.238255, 39.825657, 35.238338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220829, 39.586594, 35.250374>,  <41.191788, 39.188152, 35.270432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220829, 39.586594, 35.250374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972849, -0.059649, 0.223622,
		0.219759, -0.065020, -0.973385,
		0.072601, 0.996100, -0.050146,
		41.242611, 39.885422, 35.235329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582165, 39.434101, 34.692413>,  <41.191788, 39.188152, 35.270432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582165, 39.434101, 34.692413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609650, 39.664631, 35.018143>,  <41.626141, 39.802948, 35.213581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609650, 39.664631, 35.018143>,  <41.582165, 39.434101, 34.692413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609650, 39.664631, 35.018143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983833, -0.174459, 0.040450,
		0.165379, 0.798383, -0.578994,
		0.068716, 0.576323, 0.814328,
		41.630264, 39.837528, 35.262440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092461, 39.994724, 34.623768>,  <41.582165, 39.434101, 34.692413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092461, 39.994724, 34.623768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 39.882717, 35.003075>,  <41.996719, 39.815514, 35.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032623, 39.882717, 35.003075>,  <42.092461, 39.994724, 34.623768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032623, 39.882717, 35.003075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945098, -0.322310, 0.053917,
		0.290538, 0.904271, 0.312861,
		-0.149594, -0.280019, 0.948267,
		41.987743, 39.798710, 35.287556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627743, 39.568237, 34.252010>,  <42.092461, 39.994724, 34.623768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627743, 39.568237, 34.252010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841614, 39.253647, 34.375664>,  <42.969936, 39.064892, 34.449856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841614, 39.253647, 34.375664>,  <42.627743, 39.568237, 34.252010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841614, 39.253647, 34.375664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431885, -0.060114, -0.899923,
		0.726354, 0.614684, 0.307527,
		0.534682, -0.786479, 0.309138,
		43.002018, 39.017704, 34.468407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349506, 39.643227, 34.028072>,  <42.627743, 39.568237, 34.252010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349506, 39.643227, 34.028072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245213, 39.257397, 34.044121>,  <43.182636, 39.025898, 34.053749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245213, 39.257397, 34.044121>,  <43.349506, 39.643227, 34.028072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245213, 39.257397, 34.044121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301000, -0.120711, -0.945954,
		0.917287, -0.234568, 0.321811,
		-0.260736, -0.964576, 0.040122,
		43.166992, 38.968025, 34.056156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891396, 39.107876, 33.824177>,  <43.349506, 39.643227, 34.028072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891396, 39.107876, 33.824177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527851, 39.002251, 33.695034>,  <43.309723, 38.938873, 33.617546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527851, 39.002251, 33.695034>,  <43.891396, 39.107876, 33.824177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527851, 39.002251, 33.695034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332868, 0.007230, -0.942946,
		0.251334, -0.964478, 0.081328,
		-0.908862, -0.264066, -0.322861,
		43.255192, 38.923031, 33.598175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736362, 38.401073, 33.538731>,  <43.891396, 39.107876, 33.824177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736362, 38.401073, 33.538731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511913, 38.674835, 33.352512>,  <43.377243, 38.839092, 33.240784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511913, 38.674835, 33.352512>,  <43.736362, 38.401073, 33.538731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511913, 38.674835, 33.352512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470978, -0.198514, -0.859518,
		-0.680676, -0.701556, -0.210949,
		-0.561123, 0.684406, -0.465541,
		43.343575, 38.880157, 33.212849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504093, 38.046619, 33.005550>,  <43.736362, 38.401073, 33.538731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504093, 38.046619, 33.005550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527283, 38.442673, 32.954529>,  <43.541195, 38.680305, 32.923916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527283, 38.442673, 32.954529>,  <43.504093, 38.046619, 33.005550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527283, 38.442673, 32.954529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569643, -0.137732, -0.810270,
		-0.819845, -0.025685, -0.572009,
		0.057972, 0.990137, -0.127550,
		43.544674, 38.739716, 32.916264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256145, 38.117260, 32.919800>,  <43.504093, 38.046619, 33.005550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256145, 38.117260, 32.919800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627785, 38.034569, 32.797131>,  <44.850769, 37.984955, 32.723530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627785, 38.034569, 32.797131>,  <44.256145, 38.117260, 32.919800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627785, 38.034569, 32.797131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085704, -0.686292, 0.722259,
		-0.359778, -0.697330, -0.619912,
		0.929094, -0.206724, -0.306676,
		44.906513, 37.972553, 32.705128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358109, 37.371769, 32.732353>,  <44.256145, 38.117260, 32.919800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358109, 37.371769, 32.732353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707813, 37.531784, 32.842361>,  <44.917637, 37.627792, 32.908367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.707813, 37.531784, 32.842361>,  <44.358109, 37.371769, 32.732353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707813, 37.531784, 32.842361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111066, -0.716327, 0.688869,
		0.472576, -0.571707, -0.670688,
		0.874263, 0.400033, 0.275022,
		44.970093, 37.651794, 32.924870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879318, 36.803074, 32.791084>,  <44.358109, 37.371769, 32.732353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879318, 36.803074, 32.791084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977257, 37.115620, 33.020702>,  <45.036018, 37.303146, 33.158474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977257, 37.115620, 33.020702>,  <44.879318, 36.803074, 32.791084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977257, 37.115620, 33.020702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217076, -0.621209, 0.752979,
		0.944949, -0.059752, -0.321715,
		0.244844, 0.781363, 0.574040,
		45.050709, 37.350029, 33.192913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637230, 36.905674, 32.980324>,  <44.879318, 36.803074, 32.791084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637230, 36.905674, 32.980324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342289, 36.956383, 33.245728>,  <45.165325, 36.986809, 33.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.342289, 36.956383, 33.245728>,  <45.637230, 36.905674, 32.980324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.342289, 36.956383, 33.245728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316383, -0.803024, 0.505029,
		0.596837, 0.582306, 0.552001,
		-0.737351, 0.126776, 0.663507,
		45.121082, 36.994415, 33.444778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898003, 37.002731, 33.650986>,  <45.637230, 36.905674, 32.980324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898003, 37.002731, 33.650986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527847, 36.857441, 33.694290>,  <45.305756, 36.770267, 33.720272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.527847, 36.857441, 33.694290>,  <45.898003, 37.002731, 33.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527847, 36.857441, 33.694290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359098, -0.748848, 0.557023,
		-0.121259, 0.554338, 0.823411,
		-0.925389, -0.363229, 0.108257,
		45.250229, 36.748470, 33.726768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591007, 36.927982, 34.335712>,  <45.898003, 37.002731, 33.650986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591007, 36.927982, 34.335712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402397, 36.644035, 34.126427>,  <45.289230, 36.473667, 34.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402397, 36.644035, 34.126427>,  <45.591007, 36.927982, 34.335712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402397, 36.644035, 34.126427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261758, -0.679239, 0.685651,
		-0.842106, 0.186348, 0.506094,
		-0.471529, -0.709865, -0.523213,
		45.260937, 36.431076, 33.969463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135059, 36.459564, 34.767792>,  <45.591007, 36.927982, 34.335712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135059, 36.459564, 34.767792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217617, 36.223915, 34.455296>,  <45.267151, 36.082527, 34.267799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217617, 36.223915, 34.455296>,  <45.135059, 36.459564, 34.767792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217617, 36.223915, 34.455296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257993, -0.737413, 0.624228,
		-0.943843, -0.330394, -0.000211,
		0.206397, -0.589119, -0.781242,
		45.279537, 36.047180, 34.220924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025711, 35.864044, 35.059784>,  <45.135059, 36.459564, 34.767792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025711, 35.864044, 35.059784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227993, 35.783058, 34.724339>,  <45.349361, 35.734467, 34.523071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.227993, 35.783058, 34.724339>,  <45.025711, 35.864044, 35.059784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227993, 35.783058, 34.724339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584607, -0.634427, 0.505705,
		-0.634427, -0.745996, -0.202468,
		-0.505705, 0.202468, 0.838611,
		45.379704, 35.722317, 34.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127098, 35.219234, 35.102638>,  <45.025711, 35.864044, 35.059784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127098, 35.219234, 35.102638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428715, 35.292118, 34.850220>,  <45.609684, 35.335850, 34.698769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428715, 35.292118, 34.850220>,  <45.127098, 35.219234, 35.102638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428715, 35.292118, 34.850220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614653, -0.534469, 0.580125,
		-0.231570, -0.825314, -0.515008,
		0.754040, 0.182211, -0.631049,
		45.654926, 35.346783, 34.660904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.649563, 34.770260, 35.353382>,  <45.127098, 35.219234, 35.102638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.649563, 34.770260, 35.353382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845173, 35.002178, 35.092709>,  <45.962540, 35.141327, 34.936302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845173, 35.002178, 35.092709>,  <45.649563, 34.770260, 35.353382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845173, 35.002178, 35.092709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872198, -0.334666, 0.356749,
		-0.011258, -0.742859, -0.669353,
		0.489024, 0.579792, -0.651688,
		45.991879, 35.176117, 34.897202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303139, 34.322132, 35.117355>,  <45.649563, 34.770260, 35.353382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303139, 34.322132, 35.117355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365677, 34.701103, 35.005692>,  <46.403202, 34.928486, 34.938694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.365677, 34.701103, 35.005692>,  <46.303139, 34.322132, 35.117355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365677, 34.701103, 35.005692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987011, -0.139302, 0.080026,
		0.036932, -0.288044, -0.956905,
		0.156349, 0.947431, -0.279158,
		46.412582, 34.985332, 34.921944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938236, 34.320591, 34.806568>,  <46.303139, 34.322132, 35.117355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938236, 34.320591, 34.806568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893127, 34.702202, 34.917645>,  <46.866062, 34.931168, 34.984291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893127, 34.702202, 34.917645>,  <46.938236, 34.320591, 34.806568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893127, 34.702202, 34.917645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988853, 0.135105, -0.062578,
		-0.097218, 0.267540, -0.958630,
		-0.112774, 0.954028, 0.277692,
		46.859295, 34.988411, 35.000954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.617970, 34.650043, 34.887711>,  <46.938236, 34.320591, 34.806568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.617970, 34.650043, 34.887711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486362, 35.012928, 34.992558>,  <47.407398, 35.230659, 35.055466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486362, 35.012928, 34.992558>,  <47.617970, 34.650043, 34.887711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486362, 35.012928, 34.992558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927147, 0.363042, -0.092735,
		-0.179290, 0.212510, -0.960570,
		-0.329020, 0.907216, 0.262118,
		47.387657, 35.285091, 35.071194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<28.474030, 33.506233, 25.437828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.156128, 33.692448, 25.282061>,  <27.965387, 33.804176, 25.188601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.156128, 33.692448, 25.282061>,  <28.474030, 33.506233, 25.437828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156128, 33.692448, 25.282061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056982, 0.696011, 0.715766,
		0.604254, 0.546666, -0.579684,
		-0.794752, 0.465536, -0.389417,
		27.917702, 33.832108, 25.165236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727402, 34.172703, 25.382441>,  <28.474030, 33.506233, 25.437828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727402, 34.172703, 25.382441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.327946, 34.192417, 25.375671>,  <28.088272, 34.204247, 25.371611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.327946, 34.192417, 25.375671>,  <28.727402, 34.172703, 25.382441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327946, 34.192417, 25.375671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015033, 0.583369, 0.812068,
		0.049899, 0.810710, -0.583317,
		-0.998641, 0.049290, -0.016922,
		28.028353, 34.207203, 25.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711479, 34.812222, 25.555058>,  <28.727402, 34.172703, 25.382441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711479, 34.812222, 25.555058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341543, 34.667137, 25.600863>,  <28.119581, 34.580086, 25.628345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341543, 34.667137, 25.600863>,  <28.711479, 34.812222, 25.555058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341543, 34.667137, 25.600863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132630, 0.589698, 0.796658,
		-0.356485, 0.721593, -0.593483,
		-0.924839, -0.362711, 0.114514,
		28.064091, 34.558323, 25.635216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319044, 35.416790, 25.483267>,  <28.711479, 34.812222, 25.555058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319044, 35.416790, 25.483267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.102104, 35.138454, 25.671591>,  <27.971939, 34.971455, 25.784586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.102104, 35.138454, 25.671591>,  <28.319044, 35.416790, 25.483267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102104, 35.138454, 25.671591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311453, 0.686979, 0.656549,
		-0.780290, 0.209444, -0.589306,
		-0.542351, -0.695840, 0.470811,
		27.939400, 34.929703, 25.812834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789394, 35.778942, 25.653982>,  <28.319044, 35.416790, 25.483267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789394, 35.778942, 25.653982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797466, 35.480362, 25.920038>,  <27.802309, 35.301216, 26.079672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.797466, 35.480362, 25.920038>,  <27.789394, 35.778942, 25.653982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797466, 35.480362, 25.920038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126835, 0.657988, 0.742270,
		-0.991719, -0.099341, -0.081398,
		0.020179, -0.746447, 0.665139,
		27.803520, 35.256428, 26.119579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178469, 35.919617, 26.159506>,  <27.789394, 35.778942, 25.653982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178469, 35.919617, 26.159506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415440, 35.643700, 26.325987>,  <27.557621, 35.478149, 26.425875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415440, 35.643700, 26.325987>,  <27.178469, 35.919617, 26.159506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415440, 35.643700, 26.325987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036667, 0.539169, 0.841399,
		-0.804791, -0.483205, 0.344710,
		0.592425, -0.689789, 0.416201,
		27.593166, 35.436764, 26.450848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855185, 35.782265, 26.865622>,  <27.178469, 35.919617, 26.159506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855185, 35.782265, 26.865622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244385, 35.693054, 26.889385>,  <27.477905, 35.639526, 26.903643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.244385, 35.693054, 26.889385>,  <26.855185, 35.782265, 26.865622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244385, 35.693054, 26.889385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066881, 0.518800, 0.852275,
		-0.220902, -0.825291, 0.519709,
		0.973000, -0.223028, 0.059408,
		27.536285, 35.626144, 26.907207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908281, 35.818821, 27.547085>,  <26.855185, 35.782265, 26.865622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908281, 35.818821, 27.547085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290245, 35.775520, 27.436504>,  <27.519424, 35.749538, 27.370155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.290245, 35.775520, 27.436504>,  <26.908281, 35.818821, 27.547085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290245, 35.775520, 27.436504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295439, 0.438454, 0.848807,
		0.029328, -0.892211, 0.450666,
		0.954911, -0.108251, -0.276453,
		27.576719, 35.743046, 27.353569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227169, 35.680855, 28.140177>,  <26.908281, 35.818821, 27.547085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227169, 35.680855, 28.140177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.505903, 35.835464, 27.898508>,  <27.673143, 35.928230, 27.753508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.505903, 35.835464, 27.898508>,  <27.227169, 35.680855, 28.140177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505903, 35.835464, 27.898508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325704, 0.579968, 0.746695,
		0.639015, -0.717104, 0.278249,
		0.696834, 0.386522, -0.604172,
		27.714954, 35.951420, 27.717257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939507, 35.680668, 28.371109>,  <27.227169, 35.680855, 28.140177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939507, 35.680668, 28.371109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.901886, 35.995602, 28.127382>,  <27.879314, 36.184563, 27.981146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.901886, 35.995602, 28.127382>,  <27.939507, 35.680668, 28.371109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901886, 35.995602, 28.127382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284481, 0.607763, 0.741414,
		0.954057, -0.103609, -0.281141,
		-0.094050, 0.787331, -0.609315,
		27.873671, 36.231800, 27.944588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475664, 36.150772, 28.730642>,  <27.939507, 35.680668, 28.371109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475664, 36.150772, 28.730642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.298103, 36.390545, 28.464220>,  <28.191566, 36.534409, 28.304367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.298103, 36.390545, 28.464220>,  <28.475664, 36.150772, 28.730642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298103, 36.390545, 28.464220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331399, 0.800425, 0.499493,
		0.832541, 0.000996, -0.553962,
		-0.443902, 0.599431, -0.666058,
		28.164932, 36.570374, 28.264402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968456, 36.748413, 28.526812>,  <28.475664, 36.150772, 28.730642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968456, 36.748413, 28.526812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.601107, 36.884308, 28.445652>,  <28.380697, 36.965843, 28.396955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.601107, 36.884308, 28.445652>,  <28.968456, 36.748413, 28.526812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601107, 36.884308, 28.445652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181243, 0.816935, 0.547511,
		0.351764, 0.466047, -0.811827,
		-0.918375, 0.339732, -0.202900,
		28.325594, 36.986229, 28.384781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003271, 37.434795, 28.517830>,  <28.968456, 36.748413, 28.526812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003271, 37.434795, 28.517830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608044, 37.396336, 28.565958>,  <28.370907, 37.373260, 28.594835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.608044, 37.396336, 28.565958>,  <29.003271, 37.434795, 28.517830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608044, 37.396336, 28.565958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017109, 0.707835, 0.706171,
		-0.153067, 0.699803, -0.697743,
		-0.988068, -0.096154, 0.120319,
		28.311623, 37.367489, 28.602055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773277, 38.128906, 28.617399>,  <29.003271, 37.434795, 28.517830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773277, 38.128906, 28.617399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490858, 37.893158, 28.774441>,  <28.321407, 37.751709, 28.868666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490858, 37.893158, 28.774441>,  <28.773277, 38.128906, 28.617399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490858, 37.893158, 28.774441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169838, 0.679139, 0.714091,
		-0.687499, 0.437502, -0.579601,
		-0.706046, -0.589375, 0.392603,
		28.279045, 37.716347, 28.892221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179649, 38.541019, 28.749542>,  <28.773277, 38.128906, 28.617399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179649, 38.541019, 28.749542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121059, 38.213905, 28.972172>,  <28.085905, 38.017635, 29.105749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.121059, 38.213905, 28.972172>,  <28.179649, 38.541019, 28.749542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121059, 38.213905, 28.972172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296760, 0.573053, 0.763900,
		-0.943652, -0.053277, -0.326623,
		-0.146474, -0.817784, 0.556573,
		28.077118, 37.968571, 29.139143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753857, 38.783859, 29.315422>,  <28.179649, 38.541019, 28.749542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753857, 38.783859, 29.315422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.886633, 38.431534, 29.450472>,  <27.966299, 38.220139, 29.531502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.886633, 38.431534, 29.450472>,  <27.753857, 38.783859, 29.315422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886633, 38.431534, 29.450472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129236, 0.312079, 0.941225,
		-0.934405, -0.356064, -0.010241,
		0.331940, -0.880809, 0.337624,
		27.986216, 38.167290, 29.551760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234133, 38.597145, 29.849998>,  <27.753857, 38.783859, 29.315422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234133, 38.597145, 29.849998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.570354, 38.392845, 29.922226>,  <27.772087, 38.270264, 29.965563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.570354, 38.392845, 29.922226>,  <27.234133, 38.597145, 29.849998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570354, 38.392845, 29.922226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045185, 0.398256, 0.916161,
		-0.539842, -0.761922, 0.357833,
		0.840552, -0.510751, 0.180568,
		27.822519, 38.239620, 29.976397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150658, 38.173531, 30.476954>,  <27.234133, 38.597145, 29.849998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150658, 38.173531, 30.476954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.544416, 38.239933, 30.453615>,  <27.780672, 38.279774, 30.439611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.544416, 38.239933, 30.453615>,  <27.150658, 38.173531, 30.476954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544416, 38.239933, 30.453615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004045, 0.310141, 0.950682,
		0.175917, -0.936084, 0.304631,
		0.984397, 0.166009, -0.058346,
		27.839735, 38.289738, 30.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384296, 38.022110, 31.198919>,  <27.150658, 38.173531, 30.476954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384296, 38.022110, 31.198919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665323, 38.240101, 31.015879>,  <27.833939, 38.370895, 30.906055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.665323, 38.240101, 31.015879>,  <27.384296, 38.022110, 31.198919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665323, 38.240101, 31.015879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257542, 0.404725, 0.877422,
		0.663380, -0.734298, 0.143990,
		0.702566, 0.544981, -0.457599,
		27.876093, 38.403595, 30.878599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054277, 37.861980, 31.602497>,  <27.384296, 38.022110, 31.198919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054277, 37.861980, 31.602497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.067272, 38.215378, 31.415567>,  <28.075069, 38.427414, 31.303410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.067272, 38.215378, 31.415567>,  <28.054277, 37.861980, 31.602497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067272, 38.215378, 31.415567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311918, 0.435255, 0.844547,
		0.949553, -0.173202, -0.261437,
		0.032485, 0.883490, -0.467323,
		28.077017, 38.480423, 31.275372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738308, 38.154034, 31.710361>,  <28.054277, 37.861980, 31.602497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738308, 38.154034, 31.710361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515467, 38.469360, 31.605913>,  <28.381762, 38.658558, 31.543243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515467, 38.469360, 31.605913>,  <28.738308, 38.154034, 31.710361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515467, 38.469360, 31.605913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228650, 0.447895, 0.864354,
		0.798344, 0.421830, -0.429775,
		-0.557105, 0.788320, -0.261123,
		28.348335, 38.705856, 31.527576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341030, 37.802120, 31.424990>,  <28.738308, 38.154034, 31.710361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341030, 37.802120, 31.424990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.724321, 37.899544, 31.484961>,  <29.954296, 37.958000, 31.520943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.724321, 37.899544, 31.484961>,  <29.341030, 37.802120, 31.424990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724321, 37.899544, 31.484961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268830, -0.588075, -0.762823,
		-0.097626, 0.771262, -0.628986,
		0.958227, 0.243562, 0.149927,
		30.011789, 37.972610, 31.529938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683187, 37.818569, 30.818235>,  <29.341030, 37.802120, 31.424990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683187, 37.818569, 30.818235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.991411, 37.742664, 31.061621>,  <30.176346, 37.697121, 31.207651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.991411, 37.742664, 31.061621>,  <29.683187, 37.818569, 30.818235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991411, 37.742664, 31.061621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474059, -0.467475, -0.746146,
		0.426034, 0.863398, -0.270258,
		0.770560, -0.189766, 0.608462,
		30.222580, 37.685734, 31.244160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308975, 38.041428, 30.430820>,  <29.683187, 37.818569, 30.818235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308975, 38.041428, 30.430820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.406979, 37.776310, 30.713856>,  <30.465780, 37.617241, 30.883677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.406979, 37.776310, 30.713856>,  <30.308975, 38.041428, 30.430820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406979, 37.776310, 30.713856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487525, -0.546621, -0.680827,
		0.838027, 0.511775, 0.189200,
		0.245010, -0.662791, 0.707586,
		30.480482, 37.577473, 30.926132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063225, 37.920082, 30.322001>,  <30.308975, 38.041428, 30.430820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063225, 37.920082, 30.322001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931934, 37.604359, 30.529564>,  <30.853161, 37.414925, 30.654102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931934, 37.604359, 30.529564>,  <31.063225, 37.920082, 30.322001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931934, 37.604359, 30.529564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429480, -0.613975, -0.662255,
		0.841318, 0.005492, 0.540512,
		-0.328224, -0.789306, 0.518907,
		30.833467, 37.367565, 30.685236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649420, 37.381432, 30.335993>,  <31.063225, 37.920082, 30.322001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649420, 37.381432, 30.335993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.317322, 37.176571, 30.423990>,  <31.118063, 37.053654, 30.476789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.317322, 37.176571, 30.423990>,  <31.649420, 37.381432, 30.335993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317322, 37.176571, 30.423990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237452, -0.682046, -0.691687,
		0.504292, -0.522031, 0.687876,
		-0.830244, -0.512150, 0.219993,
		31.068249, 37.022926, 30.489988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906439, 36.739952, 30.413616>,  <31.649420, 37.381432, 30.335993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906439, 36.739952, 30.413616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515533, 36.691383, 30.344088>,  <31.280991, 36.662243, 30.302370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515533, 36.691383, 30.344088>,  <31.906439, 36.739952, 30.413616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515533, 36.691383, 30.344088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203278, -0.769646, -0.605246,
		-0.060293, -0.626819, 0.776829,
		-0.977263, -0.121420, -0.173823,
		31.222355, 36.654957, 30.291941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811079, 35.997459, 30.556744>,  <31.906439, 36.739952, 30.413616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811079, 35.997459, 30.556744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511446, 36.121387, 30.322517>,  <31.331665, 36.195744, 30.181982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511446, 36.121387, 30.322517>,  <31.811079, 35.997459, 30.556744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511446, 36.121387, 30.322517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045983, -0.906089, -0.420582,
		-0.660876, -0.288126, 0.692983,
		-0.749085, 0.309818, -0.585564,
		31.286720, 36.214333, 30.146849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462543, 35.377396, 30.569849>,  <31.811079, 35.997459, 30.556744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462543, 35.377396, 30.569849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.323959, 35.607590, 30.273531>,  <31.240808, 35.745705, 30.095739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.323959, 35.607590, 30.273531>,  <31.462543, 35.377396, 30.569849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323959, 35.607590, 30.273531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116963, -0.810047, -0.574581,
		-0.930744, -0.112424, 0.347960,
		-0.346461, 0.575486, -0.740797,
		31.220020, 35.780235, 30.051292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911831, 35.069069, 30.317076>,  <31.462543, 35.377396, 30.569849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911831, 35.069069, 30.317076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.025253, 35.317261, 30.024609>,  <31.093306, 35.466175, 29.849129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.025253, 35.317261, 30.024609>,  <30.911831, 35.069069, 30.317076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025253, 35.317261, 30.024609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144435, -0.726129, -0.672217,
		-0.948017, 0.296216, -0.116278,
		0.283555, 0.620478, -0.731166,
		31.110319, 35.503403, 29.805260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439352, 34.955864, 29.745996>,  <30.911831, 35.069069, 30.317076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439352, 34.955864, 29.745996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.741121, 35.130905, 29.550303>,  <30.922184, 35.235931, 29.432886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.741121, 35.130905, 29.550303>,  <30.439352, 34.955864, 29.745996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741121, 35.130905, 29.550303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003877, -0.748300, -0.663350,
		-0.656375, 0.498551, -0.566232,
		0.754425, 0.437601, -0.489233,
		30.967449, 35.262184, 29.403532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227625, 35.008820, 29.050877>,  <30.439352, 34.955864, 29.745996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227625, 35.008820, 29.050877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622604, 35.070625, 29.037758>,  <30.859592, 35.107708, 29.029886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.622604, 35.070625, 29.037758>,  <30.227625, 35.008820, 29.050877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622604, 35.070625, 29.037758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084244, -0.690812, -0.718110,
		-0.133611, 0.706332, -0.695156,
		0.987447, 0.154510, -0.032796,
		30.918839, 35.116978, 29.027920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354898, 35.350319, 28.407234>,  <30.227625, 35.008820, 29.050877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354898, 35.350319, 28.407234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698992, 35.176987, 28.514732>,  <30.905447, 35.072987, 28.579231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.698992, 35.176987, 28.514732>,  <30.354898, 35.350319, 28.407234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698992, 35.176987, 28.514732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072086, -0.625108, -0.777202,
		0.504779, 0.649202, -0.568976,
		0.860233, -0.433331, 0.268744,
		30.957062, 35.046986, 28.595356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916008, 35.397831, 27.843382>,  <30.354898, 35.350319, 28.407234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916008, 35.397831, 27.843382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006210, 35.095131, 28.088812>,  <31.060331, 34.913509, 28.236071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006210, 35.095131, 28.088812>,  <30.916008, 35.397831, 27.843382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006210, 35.095131, 28.088812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076887, -0.641657, -0.763129,
		0.971203, 0.124915, -0.202882,
		0.225507, -0.756752, 0.613574,
		31.073862, 34.868107, 28.272884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383167, 34.974106, 27.524509>,  <30.916008, 35.397831, 27.843382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383167, 34.974106, 27.524509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229465, 34.729065, 27.800791>,  <31.137245, 34.582043, 27.966560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.229465, 34.729065, 27.800791>,  <31.383167, 34.974106, 27.524509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229465, 34.729065, 27.800791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223295, -0.664261, -0.713370,
		0.895817, -0.428346, 0.118455,
		-0.384254, -0.612599, 0.690703,
		31.114189, 34.545284, 28.008001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724010, 34.353767, 27.457138>,  <31.383167, 34.974106, 27.524509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724010, 34.353767, 27.457138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.414801, 34.225090, 27.675840>,  <31.229275, 34.147884, 27.807062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.414801, 34.225090, 27.675840>,  <31.724010, 34.353767, 27.457138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414801, 34.225090, 27.675840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199504, -0.694868, -0.690910,
		0.602186, -0.643172, 0.472971,
		-0.773027, -0.321697, 0.546755,
		31.182892, 34.128582, 27.839867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821609, 33.630787, 27.511028>,  <31.724010, 34.353767, 27.457138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821609, 33.630787, 27.511028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434462, 33.693100, 27.589977>,  <31.202173, 33.730488, 27.637346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.434462, 33.693100, 27.589977>,  <31.821609, 33.630787, 27.511028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434462, 33.693100, 27.589977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244955, -0.761377, -0.600252,
		0.056762, -0.629313, 0.775076,
		-0.967872, 0.155787, 0.197370,
		31.144100, 33.739838, 27.649189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512020, 32.945908, 27.779881>,  <31.821609, 33.630787, 27.511028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512020, 32.945908, 27.779881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225361, 33.188557, 27.642227>,  <31.053366, 33.334145, 27.559635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.225361, 33.188557, 27.642227>,  <31.512020, 32.945908, 27.779881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225361, 33.188557, 27.642227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266149, -0.693957, -0.669021,
		-0.644652, -0.387864, 0.658775,
		-0.716651, 0.606618, -0.344131,
		31.010366, 33.370541, 27.538988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955479, 32.499397, 27.663651>,  <31.512020, 32.945908, 27.779881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955479, 32.499397, 27.663651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835091, 32.830830, 27.474815>,  <30.762857, 33.029690, 27.361513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835091, 32.830830, 27.474815>,  <30.955479, 32.499397, 27.663651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835091, 32.830830, 27.474815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523118, -0.557363, -0.644744,
		-0.797348, 0.052908, 0.601196,
		-0.300972, 0.828582, -0.472090,
		30.744799, 33.079403, 27.333189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217762, 32.423145, 27.515577>,  <30.955479, 32.499397, 27.663651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217762, 32.423145, 27.515577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.385572, 32.663570, 27.243483>,  <30.486259, 32.807827, 27.080225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.385572, 32.663570, 27.243483>,  <30.217762, 32.423145, 27.515577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385572, 32.663570, 27.243483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390949, -0.556671, -0.732991,
		-0.819241, 0.573447, 0.001446,
		0.419527, 0.601061, -0.680237,
		30.511431, 32.843887, 27.039412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.657391, 32.401146, 26.825211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996811, 32.555367, 26.680264>,  <30.200462, 32.647900, 26.593296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.996811, 32.555367, 26.680264>,  <29.657391, 32.401146, 26.825211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996811, 32.555367, 26.680264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332731, -0.143666, -0.932014,
		-0.411403, 0.911431, 0.006378,
		0.848550, 0.385556, -0.362366,
		30.251375, 32.671032, 26.571554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399733, 32.673058, 26.239243>,  <29.657391, 32.401146, 26.825211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399733, 32.673058, 26.239243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795868, 32.691761, 26.187017>,  <30.033548, 32.702984, 26.155682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795868, 32.691761, 26.187017>,  <29.399733, 32.673058, 26.239243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795868, 32.691761, 26.187017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121823, -0.156619, -0.980117,
		-0.066276, 0.986552, -0.149409,
		0.990337, 0.046757, -0.130565,
		30.092968, 32.705788, 26.147848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522226, 33.186436, 25.745008>,  <29.399733, 32.673058, 26.239243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522226, 33.186436, 25.745008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829281, 32.930092, 25.747133>,  <30.013514, 32.776283, 25.748407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829281, 32.930092, 25.747133>,  <29.522226, 33.186436, 25.745008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829281, 32.930092, 25.747133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028083, -0.041917, -0.998726,
		0.640271, 0.766509, -0.050175,
		0.767636, -0.640864, 0.005312,
		30.059572, 32.737831, 25.748726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053181, 33.452881, 25.309208>,  <29.522226, 33.186436, 25.745008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053181, 33.452881, 25.309208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104113, 33.057747, 25.344896>,  <30.134672, 32.820667, 25.366310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104113, 33.057747, 25.344896>,  <30.053181, 33.452881, 25.309208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104113, 33.057747, 25.344896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006106, -0.089170, -0.995998,
		0.991842, 0.127365, -0.005322,
		0.127329, -0.987839, 0.089221,
		30.142311, 32.761395, 25.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579344, 33.208431, 24.864491>,  <30.053181, 33.452881, 25.309208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579344, 33.208431, 24.864491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369707, 32.872707, 24.922300>,  <30.243925, 32.671272, 24.956985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369707, 32.872707, 24.922300>,  <30.579344, 33.208431, 24.864491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369707, 32.872707, 24.922300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032166, -0.189082, -0.981434,
		0.851054, -0.509712, 0.126094,
		-0.524091, -0.839310, 0.144524,
		30.212481, 32.620914, 24.965658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859497, 32.768391, 24.369396>,  <30.579344, 33.208431, 24.864491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859497, 32.768391, 24.369396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534813, 32.565872, 24.485872>,  <30.340002, 32.444363, 24.555758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534813, 32.565872, 24.485872>,  <30.859497, 32.768391, 24.369396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534813, 32.565872, 24.485872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182666, -0.253485, -0.949936,
		0.554762, -0.824262, 0.113273,
		-0.811710, -0.506297, 0.291189,
		30.291300, 32.413982, 24.573229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973551, 32.191471, 23.987684>,  <30.859497, 32.768391, 24.369396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973551, 32.191471, 23.987684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585173, 32.183727, 24.083090>,  <30.352146, 32.179081, 24.140333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.585173, 32.183727, 24.083090>,  <30.973551, 32.191471, 23.987684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585173, 32.183727, 24.083090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226002, -0.253400, -0.940591,
		0.078653, -0.967168, 0.241661,
		-0.970947, -0.019364, 0.238513,
		30.293888, 32.177917, 24.154644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760082, 31.491337, 23.855835>,  <30.973551, 32.191471, 23.987684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760082, 31.491337, 23.855835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436594, 31.726597, 23.852976>,  <30.242502, 31.867754, 23.851261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.436594, 31.726597, 23.852976>,  <30.760082, 31.491337, 23.855835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436594, 31.726597, 23.852976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348890, -0.489443, -0.799200,
		-0.473531, -0.643848, 0.601023,
		-0.808730, 0.588137, -0.007134,
		30.193977, 31.903042, 23.850832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219654, 31.000788, 23.843822>,  <30.760082, 31.491337, 23.855835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219654, 31.000788, 23.843822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038563, 31.326916, 23.699438>,  <29.929909, 31.522593, 23.612808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.038563, 31.326916, 23.699438>,  <30.219654, 31.000788, 23.843822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038563, 31.326916, 23.699438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236431, -0.500100, -0.833067,
		-0.859732, -0.291809, 0.419175,
		-0.452726, 0.815320, -0.360960,
		29.902744, 31.571512, 23.591150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600861, 30.759428, 23.652920>,  <30.219654, 31.000788, 23.843822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600861, 30.759428, 23.652920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.588673, 31.101780, 23.446409>,  <29.581360, 31.307192, 23.322504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.588673, 31.101780, 23.446409>,  <29.600861, 30.759428, 23.652920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588673, 31.101780, 23.446409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327970, -0.496479, -0.803707,
		-0.944197, 0.144833, 0.295831,
		-0.030471, 0.855881, -0.516275,
		29.579531, 31.358543, 23.291527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939377, 30.778946, 23.210758>,  <29.600861, 30.759428, 23.652920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939377, 30.778946, 23.210758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215025, 31.025063, 23.057640>,  <29.380413, 31.172733, 22.965769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215025, 31.025063, 23.057640>,  <28.939377, 30.778946, 23.210758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215025, 31.025063, 23.057640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349869, -0.180099, -0.919324,
		-0.634593, 0.767451, 0.091162,
		0.689118, 0.615291, -0.382797,
		29.421761, 31.209650, 22.942801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556221, 31.208553, 22.723415>,  <28.939377, 30.778946, 23.210758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556221, 31.208553, 22.723415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.945147, 31.216673, 22.630301>,  <29.178503, 31.221544, 22.574432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.945147, 31.216673, 22.630301>,  <28.556221, 31.208553, 22.723415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945147, 31.216673, 22.630301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201325, -0.432913, -0.878666,
		-0.118614, 0.901207, -0.416841,
		0.972316, 0.020301, -0.232785,
		29.236841, 31.222763, 22.560465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488585, 31.096220, 22.054329>,  <28.556221, 31.208553, 22.723415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488585, 31.096220, 22.054329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885715, 31.067644, 22.092680>,  <29.123993, 31.050499, 22.115690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.885715, 31.067644, 22.092680>,  <28.488585, 31.096220, 22.054329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885715, 31.067644, 22.092680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044155, -0.526124, -0.849261,
		0.111114, 0.847402, -0.519196,
		0.992826, -0.071439, 0.095877,
		29.183563, 31.046213, 22.121443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800192, 31.335148, 21.409895>,  <28.488585, 31.096220, 22.054329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800192, 31.335148, 21.409895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102783, 31.131313, 21.573875>,  <29.284338, 31.009012, 21.672264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102783, 31.131313, 21.573875>,  <28.800192, 31.335148, 21.409895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102783, 31.131313, 21.573875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114725, -0.513704, -0.850262,
		0.643877, 0.690237, -0.330144,
		0.756479, -0.509588, 0.409950,
		29.329727, 30.978437, 21.696861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362244, 31.368889, 20.942244>,  <28.800192, 31.335148, 21.409895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362244, 31.368889, 20.942244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425554, 31.050585, 21.176069>,  <29.463541, 30.859602, 21.316364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425554, 31.050585, 21.176069>,  <29.362244, 31.368889, 20.942244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425554, 31.050585, 21.176069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165173, -0.562348, -0.810236,
		0.973481, 0.224797, 0.042430,
		0.158278, -0.795758, 0.584566,
		29.473038, 30.811857, 21.351439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016479, 31.002125, 20.695431>,  <29.362244, 31.368889, 20.942244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016479, 31.002125, 20.695431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792233, 30.726410, 20.878990>,  <29.657684, 30.560980, 20.989126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.792233, 30.726410, 20.878990>,  <30.016479, 31.002125, 20.695431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792233, 30.726410, 20.878990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217247, -0.657193, -0.721735,
		0.799069, -0.304923, 0.518180,
		-0.560618, -0.689289, 0.458898,
		29.624046, 30.519623, 21.016659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477015, 30.527550, 20.845715>,  <30.016479, 31.002125, 20.695431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477015, 30.527550, 20.845715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.118015, 30.351341, 20.854107>,  <29.902617, 30.245617, 20.859142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.118015, 30.351341, 20.854107>,  <30.477015, 30.527550, 20.845715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118015, 30.351341, 20.854107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278468, -0.602946, -0.747604,
		0.341984, -0.665131, 0.663813,
		-0.897498, -0.440519, 0.020981,
		29.848766, 30.219185, 20.860401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572498, 29.790974, 20.704319>,  <30.477015, 30.527550, 20.845715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572498, 29.790974, 20.704319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186859, 29.839066, 20.609610>,  <29.955475, 29.867920, 20.552784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.186859, 29.839066, 20.609610>,  <30.572498, 29.790974, 20.704319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186859, 29.839066, 20.609610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160806, -0.445237, -0.880855,
		-0.211323, -0.887305, 0.409918,
		-0.964097, 0.120228, -0.236773,
		29.897631, 29.875134, 20.538578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401819, 29.247515, 20.263655>,  <30.572498, 29.790974, 20.704319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401819, 29.247515, 20.263655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.064516, 29.457306, 20.216608>,  <29.862133, 29.583181, 20.188379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.064516, 29.457306, 20.216608>,  <30.401819, 29.247515, 20.263655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064516, 29.457306, 20.216608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188723, -0.493793, -0.848854,
		-0.503293, -0.693602, 0.515376,
		-0.843255, 0.524486, -0.117624,
		29.811539, 29.614651, 20.181322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889643, 28.757526, 20.028875>,  <30.401819, 29.247515, 20.263655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889643, 28.757526, 20.028875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762962, 29.125959, 19.938272>,  <29.686954, 29.347019, 19.883911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762962, 29.125959, 19.938272>,  <29.889643, 28.757526, 20.028875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762962, 29.125959, 19.938272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222380, -0.304243, -0.926274,
		-0.922089, -0.242981, 0.301185,
		-0.316700, 0.921084, -0.226505,
		29.667952, 29.402285, 19.870321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182178, 28.746367, 19.854034>,  <29.889643, 28.757526, 20.028875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182178, 28.746367, 19.854034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315378, 29.069027, 19.658718>,  <29.395298, 29.262623, 19.541529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.315378, 29.069027, 19.658718>,  <29.182178, 28.746367, 19.854034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315378, 29.069027, 19.658718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221880, -0.436270, -0.872030,
		-0.916451, 0.398726, 0.033703,
		0.332997, 0.806651, -0.488290,
		29.415277, 29.311022, 19.512232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739971, 28.843407, 19.452259>,  <29.182178, 28.746367, 19.854034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739971, 28.843407, 19.452259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.023363, 29.073343, 19.288496>,  <29.193398, 29.211306, 19.190237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.023363, 29.073343, 19.288496>,  <28.739971, 28.843407, 19.452259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023363, 29.073343, 19.288496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188614, -0.404787, -0.894747,
		-0.680061, 0.711130, -0.178360,
		0.708479, 0.574841, -0.409409,
		29.235907, 29.245796, 19.165674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618261, 28.577831, 18.803631>,  <28.739971, 28.843407, 19.452259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618261, 28.577831, 18.803631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.871332, 28.886843, 18.782007>,  <29.023174, 29.072248, 18.769033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.871332, 28.886843, 18.782007>,  <28.618261, 28.577831, 18.803631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871332, 28.886843, 18.782007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061227, -0.119486, -0.990946,
		-0.771992, 0.623638, -0.122895,
		0.632676, 0.772527, -0.054059,
		29.061134, 29.118601, 18.765789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794481, 29.145609, 18.346584>,  <28.618261, 28.577831, 18.803631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794481, 29.145609, 18.346584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530260, 29.411608, 18.207186>,  <28.371727, 29.571207, 18.123547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.530260, 29.411608, 18.207186>,  <28.794481, 29.145609, 18.346584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530260, 29.411608, 18.207186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058982, 0.508710, 0.858915,
		0.748461, 0.546802, -0.375252,
		-0.660551, 0.664997, -0.348498,
		28.332094, 29.611107, 18.102636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114408, 29.740759, 18.693760>,  <28.794481, 29.145609, 18.346584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114408, 29.740759, 18.693760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767056, 29.831333, 18.517290>,  <28.558643, 29.885677, 18.411407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.767056, 29.831333, 18.517290>,  <29.114408, 29.740759, 18.693760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767056, 29.831333, 18.517290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084912, 0.808622, 0.582169,
		0.488568, 0.543007, -0.682967,
		-0.868384, 0.226437, -0.441175,
		28.506540, 29.899263, 18.384937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170498, 30.481543, 18.581587>,  <29.114408, 29.740759, 18.693760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170498, 30.481543, 18.581587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778431, 30.406172, 18.606131>,  <28.543190, 30.360950, 18.620857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.778431, 30.406172, 18.606131>,  <29.170498, 30.481543, 18.581587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778431, 30.406172, 18.606131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130651, 0.847281, 0.514826,
		-0.148993, 0.496600, -0.855097,
		-0.980169, -0.188425, 0.061357,
		28.484381, 30.349644, 18.624538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861731, 31.152128, 18.428799>,  <29.170498, 30.481543, 18.581587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861731, 31.152128, 18.428799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578119, 30.921991, 18.591900>,  <28.407953, 30.783909, 18.689760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.578119, 30.921991, 18.591900>,  <28.861731, 31.152128, 18.428799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578119, 30.921991, 18.591900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328950, 0.781307, 0.530426,
		-0.623755, 0.241957, -0.743227,
		-0.709029, -0.575341, 0.407752,
		28.365410, 30.749390, 18.714226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200157, 31.512871, 18.308512>,  <28.861731, 31.152128, 18.428799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200157, 31.512871, 18.308512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140356, 31.280979, 18.628902>,  <28.104475, 31.141844, 18.821136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.140356, 31.280979, 18.628902>,  <28.200157, 31.512871, 18.308512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140356, 31.280979, 18.628902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406669, 0.774445, 0.484619,
		-0.901259, -0.253280, -0.351540,
		-0.149504, -0.579728, 0.800977,
		28.095505, 31.107061, 18.869196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448833, 31.579283, 18.475769>,  <28.200157, 31.512871, 18.308512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448833, 31.579283, 18.475769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634972, 31.464190, 18.810591>,  <27.746655, 31.395134, 19.011484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.634972, 31.464190, 18.810591>,  <27.448833, 31.579283, 18.475769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634972, 31.464190, 18.810591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529567, 0.667254, 0.523766,
		-0.709234, -0.687010, 0.158130,
		0.465345, -0.287733, 0.837056,
		27.774576, 31.377871, 19.061708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040081, 31.807083, 18.982700>,  <27.448833, 31.579283, 18.475769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040081, 31.807083, 18.982700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.358810, 31.710255, 19.204142>,  <27.550049, 31.652157, 19.337006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.358810, 31.710255, 19.204142>,  <27.040081, 31.807083, 18.982700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358810, 31.710255, 19.204142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219510, 0.737653, 0.638501,
		-0.562928, -0.630294, 0.534642,
		0.796823, -0.242071, 0.553601,
		27.597858, 31.637634, 19.370222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875681, 31.901318, 19.781885>,  <27.040081, 31.807083, 18.982700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875681, 31.901318, 19.781885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.274101, 31.934427, 19.769016>,  <27.513153, 31.954292, 19.761295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.274101, 31.934427, 19.769016>,  <26.875681, 31.901318, 19.781885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274101, 31.934427, 19.769016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026257, 0.620566, 0.783715,
		0.084835, -0.779774, 0.620287,
		0.996049, 0.082773, -0.032171,
		27.572916, 31.959259, 19.759365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.998549, 31.760162, 20.408447>,  <26.875681, 31.901318, 19.781885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.998549, 31.760162, 20.408447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327770, 31.934725, 20.263048>,  <27.525303, 32.039463, 20.175808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.327770, 31.934725, 20.263048>,  <26.998549, 31.760162, 20.408447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327770, 31.934725, 20.263048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180647, 0.405622, 0.896012,
		0.538468, -0.803132, 0.255014,
		0.823055, 0.436406, -0.363498,
		27.574686, 32.065647, 20.153999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600050, 31.520449, 20.705393>,  <26.998549, 31.760162, 20.408447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600050, 31.520449, 20.705393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715969, 31.886238, 20.592428>,  <27.785521, 32.105713, 20.524649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.715969, 31.886238, 20.592428>,  <27.600050, 31.520449, 20.705393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715969, 31.886238, 20.592428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103352, 0.263450, 0.959121,
		0.951491, -0.307139, -0.018166,
		0.289797, 0.914473, -0.282413,
		27.802908, 32.160580, 20.507704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234735, 31.658937, 21.017931>,  <27.600050, 31.520449, 20.705393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234735, 31.658937, 21.017931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081347, 32.018013, 20.931118>,  <27.989313, 32.233459, 20.879030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.081347, 32.018013, 20.931118>,  <28.234735, 31.658937, 21.017931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081347, 32.018013, 20.931118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240192, 0.323847, 0.915113,
		0.891771, 0.298793, -0.339804,
		-0.383474, 0.897689, -0.217030,
		27.966305, 32.287319, 20.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750547, 32.082027, 21.305811>,  <28.234735, 31.658937, 21.017931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750547, 32.082027, 21.305811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.424149, 32.304859, 21.244091>,  <28.228310, 32.438557, 21.207060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.424149, 32.304859, 21.244091>,  <28.750547, 32.082027, 21.305811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424149, 32.304859, 21.244091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168529, 0.484602, 0.858346,
		0.552942, 0.674405, -0.489319,
		-0.815998, 0.557081, -0.154300,
		28.179350, 32.471985, 21.197802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930264, 32.820290, 21.484762>,  <28.750547, 32.082027, 21.305811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930264, 32.820290, 21.484762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.532019, 32.796566, 21.513706>,  <28.293072, 32.782333, 21.531073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.532019, 32.796566, 21.513706>,  <28.930264, 32.820290, 21.484762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532019, 32.796566, 21.513706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031086, 0.519787, 0.853730,
		-0.088246, 0.852235, -0.515663,
		-0.995614, -0.059308, 0.072361,
		28.233335, 32.778774, 21.535414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772226, 33.460960, 21.748848>,  <28.930264, 32.820290, 21.484762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772226, 33.460960, 21.748848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451460, 33.232349, 21.818457>,  <28.258999, 33.095184, 21.860222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451460, 33.232349, 21.818457>,  <28.772226, 33.460960, 21.748848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451460, 33.232349, 21.818457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093833, 0.408151, 0.908079,
		-0.590019, 0.711877, -0.380932,
		-0.801918, -0.571528, 0.174020,
		28.210884, 33.060890, 21.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405067, 33.974609, 22.066383>,  <28.772226, 33.460960, 21.748848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405067, 33.974609, 22.066383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230860, 33.624470, 22.150375>,  <28.126335, 33.414387, 22.200769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.230860, 33.624470, 22.150375>,  <28.405067, 33.974609, 22.066383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230860, 33.624470, 22.150375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212592, 0.326682, 0.920914,
		-0.874714, 0.356438, -0.328369,
		-0.435521, -0.875346, 0.209978,
		28.100203, 33.361866, 22.213369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772640, 34.089287, 22.477131>,  <28.405067, 33.974609, 22.066383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772640, 34.089287, 22.477131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848442, 33.707802, 22.570522>,  <27.893923, 33.478909, 22.626556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.848442, 33.707802, 22.570522>,  <27.772640, 34.089287, 22.477131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848442, 33.707802, 22.570522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336786, 0.160226, 0.927849,
		-0.922314, -0.254466, -0.290834,
		0.189507, -0.953716, 0.233479,
		27.905294, 33.421688, 22.640566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161291, 33.949997, 22.949421>,  <27.772640, 34.089287, 22.477131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161291, 33.949997, 22.949421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457586, 33.687035, 23.004742>,  <27.635363, 33.529259, 23.037935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.457586, 33.687035, 23.004742>,  <27.161291, 33.949997, 22.949421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457586, 33.687035, 23.004742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175175, 0.009736, 0.984489,
		-0.648554, -0.753475, -0.107949,
		0.740737, -0.657404, 0.138304,
		27.679808, 33.489815, 23.046232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821236, 33.515255, 23.444895>,  <27.161291, 33.949997, 22.949421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821236, 33.515255, 23.444895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.218548, 33.471901, 23.461107>,  <27.456936, 33.445889, 23.470835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.218548, 33.471901, 23.461107>,  <26.821236, 33.515255, 23.444895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218548, 33.471901, 23.461107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036554, 0.038417, 0.998593,
		-0.109793, -0.993366, 0.034197,
		0.993282, -0.108389, 0.040529,
		27.516533, 33.439384, 23.473267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948572, 33.109009, 24.014671>,  <26.821236, 33.515255, 23.444895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948572, 33.109009, 24.014671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.305744, 33.275925, 23.947096>,  <27.520048, 33.376076, 23.906549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.305744, 33.275925, 23.947096>,  <26.948572, 33.109009, 24.014671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305744, 33.275925, 23.947096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053398, 0.274442, 0.960120,
		0.447016, -0.866341, 0.222775,
		0.892930, 0.417293, -0.168941,
		27.573624, 33.401112, 23.896414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349466, 32.869194, 24.610361>,  <26.948572, 33.109009, 24.014671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349466, 32.869194, 24.610361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517677, 33.201649, 24.464827>,  <27.618603, 33.401119, 24.377506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.517677, 33.201649, 24.464827>,  <27.349466, 32.869194, 24.610361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517677, 33.201649, 24.464827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162704, 0.325433, 0.931462,
		0.892572, -0.450901, 0.001624,
		0.420526, 0.831133, -0.363836,
		27.643835, 33.450989, 24.355677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000917, 33.004642, 25.062469>,  <27.349466, 32.869194, 24.610361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000917, 33.004642, 25.062469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.911514, 33.348446, 24.878605>,  <27.857872, 33.554729, 24.768286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.911514, 33.348446, 24.878605>,  <28.000917, 33.004642, 25.062469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911514, 33.348446, 24.878605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047327, 0.480606, 0.875658,
		0.973552, 0.173964, -0.148098,
		-0.223510, 0.859508, -0.459662,
		27.844461, 33.606297, 24.740705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.547232, 33.903633, 29.057646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.407280, 34.199139, 28.827232>,  <31.323309, 34.376442, 28.688984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.407280, 34.199139, 28.827232>,  <31.547232, 33.903633, 29.057646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407280, 34.199139, 28.827232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336321, 0.672961, 0.658795,
		0.874342, 0.036765, -0.483916,
		-0.349877, 0.738763, -0.576033,
		31.302317, 34.420769, 28.654423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056736, 34.420147, 29.063761>,  <31.547232, 33.903633, 29.057646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056736, 34.420147, 29.063761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.738527, 34.621979, 28.929575>,  <31.547602, 34.743080, 28.849064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.738527, 34.621979, 28.929575>,  <32.056736, 34.420147, 29.063761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738527, 34.621979, 28.929575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287639, 0.801772, 0.523856,
		0.533295, 0.320248, -0.782967,
		-0.795525, 0.504582, -0.335465,
		31.499870, 34.773354, 28.828936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251831, 35.206318, 28.953173>,  <32.056736, 34.420147, 29.063761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251831, 35.206318, 28.953173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.857151, 35.162094, 29.000832>,  <31.620342, 35.135559, 29.029427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.857151, 35.162094, 29.000832>,  <32.251831, 35.206318, 28.953173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857151, 35.162094, 29.000832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005401, 0.754939, 0.655773,
		-0.162448, 0.646409, -0.745497,
		-0.986703, -0.110555, 0.119147,
		31.561140, 35.128929, 29.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017792, 35.856457, 28.891563>,  <32.251831, 35.206318, 28.953173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017792, 35.856457, 28.891563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.707527, 35.673035, 29.065039>,  <31.521370, 35.562981, 29.169125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.707527, 35.673035, 29.065039>,  <32.017792, 35.856457, 28.891563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707527, 35.673035, 29.065039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171019, 0.814126, 0.554934,
		-0.607543, 0.356270, -0.709904,
		-0.775657, -0.458553, 0.433688,
		31.474831, 35.535469, 29.195145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476646, 36.323975, 28.791037>,  <32.017792, 35.856457, 28.891563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476646, 36.323975, 28.791037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.376751, 36.073586, 29.086548>,  <31.316813, 35.923351, 29.263855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.376751, 36.073586, 29.086548>,  <31.476646, 36.323975, 28.791037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376751, 36.073586, 29.086548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239623, 0.779175, 0.579195,
		-0.938195, -0.032380, -0.344588,
		-0.249740, -0.625969, 0.738778,
		31.301828, 35.885796, 29.308182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781500, 36.673882, 29.149040>,  <31.476646, 36.323975, 28.791037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781500, 36.673882, 29.149040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.924566, 36.399300, 29.402294>,  <31.010406, 36.234550, 29.554247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.924566, 36.399300, 29.402294>,  <30.781500, 36.673882, 29.149040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924566, 36.399300, 29.402294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229610, 0.592526, 0.772135,
		-0.905181, -0.421542, 0.054311,
		0.357668, -0.686451, 0.633133,
		31.031866, 36.193363, 29.592234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214983, 36.468998, 29.542774>,  <30.781500, 36.673882, 29.149040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214983, 36.468998, 29.542774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.542694, 36.375027, 29.751997>,  <30.739321, 36.318642, 29.877531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.542694, 36.375027, 29.751997>,  <30.214983, 36.468998, 29.542774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542694, 36.375027, 29.751997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298069, 0.604779, 0.738510,
		-0.489833, -0.760953, 0.425457,
		0.819279, -0.234932, 0.523057,
		30.788479, 36.304546, 29.908915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941488, 36.473488, 30.130360>,  <30.214983, 36.468998, 29.542774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941488, 36.473488, 30.130360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.333611, 36.486935, 30.208200>,  <30.568884, 36.495003, 30.254906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.333611, 36.486935, 30.208200>,  <29.941488, 36.473488, 30.130360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333611, 36.486935, 30.208200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169032, 0.652407, 0.738778,
		-0.102124, -0.757123, 0.645241,
		0.980306, 0.033619, 0.194604,
		30.627703, 36.497021, 30.266582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050661, 36.308537, 30.775612>,  <29.941488, 36.473488, 30.130360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050661, 36.308537, 30.775612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.378441, 36.523594, 30.696175>,  <30.575108, 36.652630, 30.648512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.378441, 36.523594, 30.696175>,  <30.050661, 36.308537, 30.775612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378441, 36.523594, 30.696175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184975, 0.576034, 0.796221,
		0.542479, -0.615730, 0.571483,
		0.819452, 0.537644, -0.198592,
		30.624275, 36.684887, 30.636597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325281, 36.357533, 31.345264>,  <30.050661, 36.308537, 30.775612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325281, 36.357533, 31.345264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476578, 36.677296, 31.158554>,  <30.567356, 36.869152, 31.046528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.476578, 36.677296, 31.158554>,  <30.325281, 36.357533, 31.345264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476578, 36.677296, 31.158554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273264, 0.578189, 0.768781,
		0.884455, -0.163231, 0.437144,
		0.378240, 0.799408, -0.466777,
		30.590050, 36.917118, 31.018520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914354, 36.713913, 31.781239>,  <30.325281, 36.357533, 31.345264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914354, 36.713913, 31.781239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.794949, 36.996700, 31.524775>,  <30.723305, 37.166374, 31.370895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.794949, 36.996700, 31.524775>,  <30.914354, 36.713913, 31.781239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794949, 36.996700, 31.524775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144165, 0.630682, 0.762533,
		0.943454, 0.320060, -0.086347,
		-0.298513, 0.706967, -0.641161,
		30.705395, 37.208790, 31.332426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100327, 37.366360, 32.125328>,  <30.914354, 36.713913, 31.781239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100327, 37.366360, 32.125328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.833870, 37.471916, 31.846296>,  <30.673996, 37.535248, 31.678877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.833870, 37.471916, 31.846296>,  <31.100327, 37.366360, 32.125328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833870, 37.471916, 31.846296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333575, 0.731132, 0.595125,
		0.667069, 0.629133, -0.399012,
		-0.666143, 0.263889, -0.697578,
		30.634027, 37.551083, 31.637022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095142, 38.024364, 32.179558>,  <31.100327, 37.366360, 32.125328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095142, 38.024364, 32.179558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764414, 38.009964, 31.955034>,  <30.565977, 38.001324, 31.820318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.764414, 38.009964, 31.955034>,  <31.095142, 38.024364, 32.179558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764414, 38.009964, 31.955034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339025, 0.828194, 0.446269,
		0.448810, 0.559284, -0.696973,
		-0.826820, -0.036001, -0.561313,
		30.516367, 37.999165, 31.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882889, 38.687286, 31.661726>,  <31.095142, 38.024364, 32.179558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882889, 38.687286, 31.661726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.588015, 38.473675, 31.827312>,  <30.411091, 38.345509, 31.926664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.588015, 38.473675, 31.827312>,  <30.882889, 38.687286, 31.661726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588015, 38.473675, 31.827312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270137, 0.794497, 0.543876,
		-0.619344, 0.289109, -0.729952,
		-0.737184, -0.534033, 0.413967,
		30.366859, 38.313465, 31.951502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592186, 38.978992, 31.474443>,  <30.882889, 38.687286, 31.661726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592186, 38.978992, 31.474443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848894, 39.284485, 31.502306>,  <32.002918, 39.467781, 31.519024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.848894, 39.284485, 31.502306>,  <31.592186, 38.978992, 31.474443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848894, 39.284485, 31.502306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229476, -0.104573, -0.967680,
		-0.731760, 0.637012, -0.242369,
		0.641769, 0.763727, 0.069657,
		32.041424, 39.513603, 31.523203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420927, 39.386780, 30.891388>,  <31.592186, 38.978992, 31.474443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420927, 39.386780, 30.891388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.789297, 39.524406, 30.964615>,  <32.010319, 39.606983, 31.008551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.789297, 39.524406, 30.964615>,  <31.420927, 39.386780, 30.891388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789297, 39.524406, 30.964615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296983, -0.315344, -0.901310,
		-0.252382, 0.884407, -0.392590,
		0.920926, 0.344067, 0.183067,
		32.065575, 39.627628, 31.019535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608356, 39.817081, 30.309593>,  <31.420927, 39.386780, 30.891388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608356, 39.817081, 30.309593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945637, 39.679813, 30.475124>,  <32.148003, 39.597454, 30.574444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945637, 39.679813, 30.475124>,  <31.608356, 39.817081, 30.309593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945637, 39.679813, 30.475124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323714, -0.290475, -0.900463,
		0.429215, 0.893231, -0.133840,
		0.843198, -0.343166, 0.413828,
		32.198597, 39.576862, 30.599272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098412, 40.053562, 29.774134>,  <31.608356, 39.817081, 30.309593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098412, 40.053562, 29.774134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.280815, 39.763599, 29.980656>,  <32.390255, 39.589622, 30.104568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.280815, 39.763599, 29.980656>,  <32.098412, 40.053562, 29.774134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280815, 39.763599, 29.980656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327752, -0.402575, -0.854700,
		0.827429, 0.558967, 0.054014,
		0.456004, -0.724906, 0.516305,
		32.417618, 39.546127, 30.135548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848778, 40.001858, 29.576391>,  <32.098412, 40.053562, 29.774134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848778, 40.001858, 29.576391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.754585, 39.637703, 29.712471>,  <32.698071, 39.419209, 29.794119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.754585, 39.637703, 29.712471>,  <32.848778, 40.001858, 29.576391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754585, 39.637703, 29.712471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296500, -0.400651, -0.866929,
		0.925547, -0.103275, 0.364276,
		-0.235480, -0.910392, 0.340201,
		32.683941, 39.364586, 29.814531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449890, 39.653622, 29.436724>,  <32.848778, 40.001858, 29.576391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449890, 39.653622, 29.436724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.174866, 39.371540, 29.505947>,  <33.009850, 39.202293, 29.547482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.174866, 39.371540, 29.505947>,  <33.449890, 39.653622, 29.436724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174866, 39.371540, 29.505947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388312, -0.558483, -0.733015,
		0.613572, -0.436794, 0.657830,
		-0.687564, -0.705201, 0.173057,
		32.968597, 39.159981, 29.557863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783619, 38.967709, 29.309332>,  <33.449890, 39.653622, 29.436724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783619, 38.967709, 29.309332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.390827, 38.894260, 29.291403>,  <33.155151, 38.850193, 29.280645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.390827, 38.894260, 29.291403>,  <33.783619, 38.967709, 29.309332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390827, 38.894260, 29.291403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146251, -0.587925, -0.795584,
		0.119731, -0.787799, 0.604183,
		-0.981975, -0.183619, -0.044824,
		33.096233, 38.839176, 29.277956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730019, 38.302334, 29.183529>,  <33.783619, 38.967709, 29.309332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730019, 38.302334, 29.183529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.383530, 38.442192, 29.040754>,  <33.175636, 38.526108, 28.955090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.383530, 38.442192, 29.040754>,  <33.730019, 38.302334, 29.183529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383530, 38.442192, 29.040754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138903, -0.517693, -0.844216,
		-0.479959, -0.780860, 0.399871,
		-0.866225, 0.349646, -0.356935,
		33.123661, 38.547085, 28.933674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438492, 37.725685, 28.886959>,  <33.730019, 38.302334, 29.183529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438492, 37.725685, 28.886959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245445, 38.035828, 28.724035>,  <33.129616, 38.221912, 28.626282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.245445, 38.035828, 28.724035>,  <33.438492, 37.725685, 28.886959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245445, 38.035828, 28.724035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044747, -0.486275, -0.872659,
		-0.874688, -0.402934, 0.269379,
		-0.482616, 0.775359, -0.407309,
		33.100662, 38.268436, 28.601843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063828, 37.432159, 28.389835>,  <33.438492, 37.725685, 28.886959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063828, 37.432159, 28.389835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.994400, 37.808006, 28.271851>,  <32.952744, 38.033512, 28.201059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.994400, 37.808006, 28.271851>,  <33.063828, 37.432159, 28.389835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994400, 37.808006, 28.271851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230184, -0.329918, -0.915516,
		-0.957544, -0.091006, 0.273546,
		-0.173565, 0.939613, -0.294963,
		32.942329, 38.089890, 28.183361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375523, 37.513966, 28.257780>,  <33.063828, 37.432159, 28.389835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375523, 37.513966, 28.257780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.577122, 37.782970, 28.041000>,  <32.698082, 37.944374, 27.910933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.577122, 37.782970, 28.041000>,  <32.375523, 37.513966, 28.257780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577122, 37.782970, 28.041000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444787, -0.335780, -0.830311,
		-0.740370, 0.659530, 0.129891,
		0.504001, 0.672511, -0.541952,
		32.728321, 37.984722, 27.878414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812151, 38.024033, 27.964560>,  <32.375523, 37.513966, 28.257780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812151, 38.024033, 27.964560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.156834, 38.018913, 27.761662>,  <32.363644, 38.015842, 27.639923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.156834, 38.018913, 27.761662>,  <31.812151, 38.024033, 27.964560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156834, 38.018913, 27.761662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475141, -0.371137, -0.797809,
		-0.178047, 0.928490, -0.325892,
		0.861708, -0.012797, -0.507243,
		32.415344, 38.015076, 27.609489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610329, 38.307804, 27.252932>,  <31.812151, 38.024033, 27.964560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610329, 38.307804, 27.252932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.963610, 38.131275, 27.189453>,  <32.175579, 38.025356, 27.151367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.963610, 38.131275, 27.189453>,  <31.610329, 38.307804, 27.252932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963610, 38.131275, 27.189453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355685, -0.409768, -0.839987,
		0.305680, 0.798325, -0.518882,
		0.883204, -0.441325, -0.158694,
		32.228569, 37.998878, 27.141846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618721, 38.184856, 26.571756>,  <31.610329, 38.307804, 27.252932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618721, 38.184856, 26.571756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.934292, 37.959778, 26.670523>,  <32.123634, 37.824730, 26.729782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.934292, 37.959778, 26.670523>,  <31.618721, 38.184856, 26.571756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934292, 37.959778, 26.670523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212179, -0.626560, -0.749935,
		0.576695, 0.539252, -0.613701,
		0.788925, -0.562699, 0.246916,
		32.170971, 37.790970, 26.744598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923468, 38.844818, 26.313665>,  <31.618721, 38.184856, 26.571756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923468, 38.844818, 26.313665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.763083, 39.084122, 26.036158>,  <31.666851, 39.227703, 25.869654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.763083, 39.084122, 26.036158>,  <31.923468, 38.844818, 26.313665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763083, 39.084122, 26.036158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118815, 0.716953, 0.686922,
		0.908356, 0.357862, -0.216391,
		-0.400965, 0.598259, -0.693768,
		31.642794, 39.263599, 25.828028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090061, 39.466022, 26.533096>,  <31.923468, 38.844818, 26.313665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090061, 39.466022, 26.533096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776146, 39.538136, 26.295910>,  <31.587797, 39.581406, 26.153597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.776146, 39.538136, 26.295910>,  <32.090061, 39.466022, 26.533096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776146, 39.538136, 26.295910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373227, 0.626343, 0.684395,
		0.494789, 0.758413, -0.424256,
		-0.784784, 0.180287, -0.592968,
		31.540710, 39.592220, 26.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050220, 40.172554, 26.613958>,  <32.090061, 39.466022, 26.533096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050220, 40.172554, 26.613958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.695427, 40.022598, 26.506094>,  <31.482552, 39.932625, 26.441376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.695427, 40.022598, 26.506094>,  <32.050220, 40.172554, 26.613958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695427, 40.022598, 26.506094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455930, 0.618081, 0.640393,
		-0.073405, 0.690965, -0.719151,
		-0.886983, -0.374891, -0.269662,
		31.429333, 39.910130, 26.425196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893015, 40.782589, 26.388395>,  <32.050220, 40.172554, 26.613958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893015, 40.782589, 26.388395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.573330, 40.546009, 26.431194>,  <31.381519, 40.404060, 26.456875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.573330, 40.546009, 26.431194>,  <31.893015, 40.782589, 26.388395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573330, 40.546009, 26.431194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401195, 0.657502, 0.637756,
		-0.447552, 0.466776, -0.762770,
		-0.799212, -0.591448, 0.106999,
		31.333567, 40.368576, 26.463293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351540, 41.243866, 26.368685>,  <31.893015, 40.782589, 26.388395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351540, 41.243866, 26.368685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.191456, 40.926830, 26.552698>,  <31.095406, 40.736607, 26.663105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.191456, 40.926830, 26.552698>,  <31.351540, 41.243866, 26.368685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191456, 40.926830, 26.552698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534362, 0.609642, 0.585485,
		-0.744507, -0.011508, -0.667516,
		-0.400208, -0.792593, 0.460032,
		31.071394, 40.689053, 26.690708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683327, 41.478802, 26.443090>,  <31.351540, 41.243866, 26.368685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683327, 41.478802, 26.443090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.706219, 41.171986, 26.698706>,  <30.719954, 40.987896, 26.852076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.706219, 41.171986, 26.698706>,  <30.683327, 41.478802, 26.443090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706219, 41.171986, 26.698706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623191, 0.472624, 0.623105,
		-0.779973, -0.433902, -0.450967,
		0.057229, -0.767044, 0.639037,
		30.723387, 40.941872, 26.890417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002333, 41.249741, 26.720789>,  <30.683327, 41.478802, 26.443090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002333, 41.249741, 26.720789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.262403, 41.132565, 27.001204>,  <30.418446, 41.062260, 27.169453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.262403, 41.132565, 27.001204>,  <30.002333, 41.249741, 26.720789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262403, 41.132565, 27.001204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605108, 0.358335, 0.710944,
		-0.459471, -0.886443, 0.055721,
		0.650178, -0.292940, 0.701038,
		30.457457, 41.044682, 27.211515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613443, 40.798115, 27.240944>,  <30.002333, 41.249741, 26.720789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613443, 40.798115, 27.240944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.920692, 40.910255, 27.471209>,  <30.105042, 40.977539, 27.609367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.920692, 40.910255, 27.471209>,  <29.613443, 40.798115, 27.240944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920692, 40.910255, 27.471209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640146, 0.316468, 0.700044,
		0.014082, -0.906228, 0.422554,
		0.768124, 0.280354, 0.575662,
		30.151131, 40.994362, 27.643908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445774, 40.596516, 27.871675>,  <29.613443, 40.798115, 27.240944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445774, 40.596516, 27.871675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.729464, 40.872471, 27.929716>,  <29.899677, 41.038044, 27.964540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.729464, 40.872471, 27.929716>,  <29.445774, 40.596516, 27.871675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729464, 40.872471, 27.929716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545872, 0.407154, 0.732291,
		0.446122, -0.598564, 0.665355,
		0.709224, 0.689890, 0.145099,
		29.942230, 41.079437, 27.973246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465487, 40.700439, 28.540134>,  <29.445774, 40.596516, 27.871675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465487, 40.700439, 28.540134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.660147, 41.032104, 28.430105>,  <29.776943, 41.231102, 28.364088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.660147, 41.032104, 28.430105>,  <29.465487, 40.700439, 28.540134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660147, 41.032104, 28.430105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510525, 0.525441, 0.680644,
		0.708898, -0.190804, 0.679012,
		0.486650, 0.829160, -0.275074,
		29.806143, 41.280853, 28.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610987, 40.933205, 29.183149>,  <29.465487, 40.700439, 28.540134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610987, 40.933205, 29.183149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.613066, 41.224400, 28.908918>,  <29.614313, 41.399117, 28.744381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.613066, 41.224400, 28.908918>,  <29.610987, 40.933205, 29.183149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613066, 41.224400, 28.908918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532207, 0.582437, 0.614429,
		0.846598, 0.361674, 0.390465,
		0.005198, 0.727983, -0.685575,
		29.614626, 41.442795, 28.703245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925678, 41.519886, 29.503826>,  <29.610987, 40.933205, 29.183149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925678, 41.519886, 29.503826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.690170, 41.656395, 29.210735>,  <29.548866, 41.738300, 29.034882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.690170, 41.656395, 29.210735>,  <29.925678, 41.519886, 29.503826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690170, 41.656395, 29.210735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473442, 0.589128, 0.654814,
		0.655138, 0.732436, -0.185288,
		-0.588768, 0.341270, -0.732726,
		29.513540, 41.758778, 28.990917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.489323, 37.349285, 22.805037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134880, 37.489365, 22.683598>,  <31.922215, 37.573410, 22.610733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134880, 37.489365, 22.683598>,  <32.489323, 37.349285, 22.805037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134880, 37.489365, 22.683598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115431, 0.801159, 0.587214,
		0.448870, 0.485291, -0.750339,
		-0.886110, 0.350195, -0.303599,
		31.869047, 37.594421, 22.592518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518738, 38.157581, 22.571859>,  <32.489323, 37.349285, 22.805037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518738, 38.157581, 22.571859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150928, 38.046051, 22.682655>,  <31.930243, 37.979134, 22.749134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150928, 38.046051, 22.682655>,  <32.518738, 38.157581, 22.571859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150928, 38.046051, 22.682655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026171, 0.659765, 0.751016,
		-0.392153, 0.697829, -0.599375,
		-0.919528, -0.278827, 0.276992,
		31.875071, 37.962402, 22.765753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185852, 38.758999, 22.589960>,  <32.518738, 38.157581, 22.571859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185852, 38.758999, 22.589960> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999357, 38.489506, 22.819290>,  <31.887461, 38.327808, 22.956888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999357, 38.489506, 22.819290>,  <32.185852, 38.758999, 22.589960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999357, 38.489506, 22.819290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028410, 0.636338, 0.770887,
		-0.884205, 0.375703, -0.277542,
		-0.466235, -0.673737, 0.573327,
		31.859488, 38.287384, 22.991289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711128, 39.139095, 23.028831>,  <32.185852, 38.758999, 22.589960>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711128, 39.139095, 23.028831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681082, 38.793167, 23.227404>,  <31.663054, 38.585609, 23.346546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681082, 38.793167, 23.227404>,  <31.711128, 39.139095, 23.028831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681082, 38.793167, 23.227404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094291, 0.501765, 0.859850,
		-0.992707, 0.017779, -0.119235,
		-0.075115, -0.864822, 0.496429,
		31.658546, 38.533722, 23.376333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179504, 39.256500, 23.525026>,  <31.711128, 39.139095, 23.028831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179504, 39.256500, 23.525026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358686, 38.928192, 23.666824>,  <31.466196, 38.731205, 23.751904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358686, 38.928192, 23.666824>,  <31.179504, 39.256500, 23.525026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358686, 38.928192, 23.666824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135924, 0.329370, 0.934366,
		-0.883663, -0.466739, 0.035981,
		0.447956, -0.820774, 0.354493,
		31.493073, 38.681961, 23.773172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736803, 38.899364, 23.985472>,  <31.179504, 39.256500, 23.525026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736803, 38.899364, 23.985472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110312, 38.806572, 24.094469>,  <31.334417, 38.750896, 24.159866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110312, 38.806572, 24.094469>,  <30.736803, 38.899364, 23.985472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110312, 38.806572, 24.094469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144871, 0.451209, 0.880581,
		-0.327233, -0.861738, 0.387719,
		0.933773, -0.231986, 0.272492,
		31.390444, 38.736977, 24.176216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697330, 38.678139, 24.752192>,  <30.736803, 38.899364, 23.985472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697330, 38.678139, 24.752192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088863, 38.727600, 24.686953>,  <31.323782, 38.757278, 24.647810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088863, 38.727600, 24.686953>,  <30.697330, 38.678139, 24.752192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088863, 38.727600, 24.686953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085275, 0.478014, 0.874203,
		0.186060, -0.869605, 0.457350,
		0.978830, 0.123654, -0.163095,
		31.382513, 38.764698, 24.638023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046692, 38.297401, 25.296415>,  <30.697330, 38.678139, 24.752192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046692, 38.297401, 25.296415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308317, 38.570049, 25.165211>,  <31.465292, 38.733639, 25.086489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308317, 38.570049, 25.165211>,  <31.046692, 38.297401, 25.296415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308317, 38.570049, 25.165211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010258, 0.441576, 0.897165,
		0.756370, -0.583439, 0.295811,
		0.654064, 0.681623, -0.328009,
		31.504536, 38.774536, 25.066809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489134, 38.406296, 25.845972>,  <31.046692, 38.297401, 25.296415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489134, 38.406296, 25.845972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535534, 38.734787, 25.622498>,  <31.563374, 38.931881, 25.488413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535534, 38.734787, 25.622498>,  <31.489134, 38.406296, 25.845972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535534, 38.734787, 25.622498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111305, 0.548195, 0.828911,
		0.986993, -0.158339, -0.027816,
		0.116001, 0.821225, -0.558688,
		31.570333, 38.981155, 25.454891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340916, 38.244938, 25.955858>,  <31.489134, 38.406296, 25.845972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340916, 38.244938, 25.955858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351582, 37.915859, 26.182999>,  <32.357983, 37.718410, 26.319283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351582, 37.915859, 26.182999>,  <32.340916, 38.244938, 25.955858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351582, 37.915859, 26.182999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008266, -0.567851, -0.823090,
		0.999610, 0.026645, -0.008344,
		0.026669, -0.822700, 0.567850,
		32.359581, 37.669048, 26.353354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811283, 37.807381, 25.641825>,  <32.340916, 38.244938, 25.955858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811283, 37.807381, 25.641825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619621, 37.546616, 25.876911>,  <32.504623, 37.390156, 26.017963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619621, 37.546616, 25.876911>,  <32.811283, 37.807381, 25.641825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619621, 37.546616, 25.876911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147491, -0.719869, -0.678259,
		0.865247, -0.238311, 0.441084,
		-0.479159, -0.651917, 0.587716,
		32.475872, 37.351040, 26.053226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203579, 37.193874, 25.624025>,  <32.811283, 37.807381, 25.641825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203579, 37.193874, 25.624025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830105, 37.083008, 25.714722>,  <32.606022, 37.016487, 25.769140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830105, 37.083008, 25.714722>,  <33.203579, 37.193874, 25.624025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830105, 37.083008, 25.714722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075522, -0.771353, -0.631911,
		0.350045, -0.572881, 0.741131,
		-0.933684, -0.277169, 0.226743,
		32.549999, 36.999859, 25.782745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410305, 36.631733, 25.738457>,  <33.203579, 37.193874, 25.624025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410305, 36.631733, 25.738457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014259, 36.640381, 25.683033>,  <32.776630, 36.645569, 25.649778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014259, 36.640381, 25.683033>,  <33.410305, 36.631733, 25.738457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014259, 36.640381, 25.683033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065485, -0.802441, -0.593127,
		-0.124009, -0.596340, 0.793096,
		-0.990118, 0.021617, -0.138561,
		32.717224, 36.646866, 25.641464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207935, 35.943474, 25.694174>,  <33.410305, 36.631733, 25.738457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207935, 35.943474, 25.694174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874939, 36.107803, 25.545483>,  <32.675140, 36.206402, 25.456268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874939, 36.107803, 25.545483>,  <33.207935, 35.943474, 25.694174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874939, 36.107803, 25.545483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101755, -0.772904, -0.626311,
		-0.544613, -0.483574, 0.685239,
		-0.832492, 0.410824, -0.371728,
		32.625191, 36.231052, 25.433964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730953, 35.403069, 25.669847>,  <33.207935, 35.943474, 25.694174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730953, 35.403069, 25.669847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599594, 35.680000, 25.412838>,  <32.520779, 35.846161, 25.258633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599594, 35.680000, 25.412838>,  <32.730953, 35.403069, 25.669847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599594, 35.680000, 25.412838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027557, -0.686982, -0.726152,
		-0.944139, -0.220757, 0.244679,
		-0.328393, 0.692331, -0.642523,
		32.501076, 35.887699, 25.220081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227268, 35.090340, 25.370140>,  <32.730953, 35.403069, 25.669847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227268, 35.090340, 25.370140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279930, 35.387863, 25.108019>,  <32.311527, 35.566376, 24.950747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279930, 35.387863, 25.108019>,  <32.227268, 35.090340, 25.370140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279930, 35.387863, 25.108019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313150, -0.595998, -0.739408,
		-0.940533, 0.302557, 0.154454,
		0.131658, 0.743805, -0.655302,
		32.319427, 35.611004, 24.911428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610769, 35.198975, 24.984833>,  <32.227268, 35.090340, 25.370140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610769, 35.198975, 24.984833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885908, 35.362564, 24.744965>,  <32.050991, 35.460720, 24.601044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885908, 35.362564, 24.744965>,  <31.610769, 35.198975, 24.984833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885908, 35.362564, 24.744965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234027, -0.657082, -0.716571,
		-0.687093, 0.633231, -0.356261,
		0.687848, 0.408976, -0.599670,
		32.092262, 35.485256, 24.565063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332346, 35.447334, 24.343063>,  <31.610769, 35.198975, 24.984833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332346, 35.447334, 24.343063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720842, 35.367767, 24.290724>,  <31.953939, 35.320026, 24.259321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720842, 35.367767, 24.290724>,  <31.332346, 35.447334, 24.343063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720842, 35.367767, 24.290724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217743, -0.519738, -0.826112,
		0.096323, 0.830845, -0.548104,
		0.971241, -0.198919, -0.130848,
		32.012215, 35.308090, 24.251469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414839, 35.417412, 23.656963>,  <31.332346, 35.447334, 24.343063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414839, 35.417412, 23.656963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756802, 35.240433, 23.765314>,  <31.961979, 35.134247, 23.830324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756802, 35.240433, 23.765314>,  <31.414839, 35.417412, 23.656963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756802, 35.240433, 23.765314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053760, -0.594892, -0.802006,
		0.515985, 0.671079, -0.532364,
		0.854909, -0.442443, 0.270878,
		32.013275, 35.107700, 23.846577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751770, 35.286236, 23.023201>,  <31.414839, 35.417412, 23.656963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751770, 35.286236, 23.023201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895992, 35.036438, 23.300331>,  <31.982525, 34.886559, 23.466610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895992, 35.036438, 23.300331>,  <31.751770, 35.286236, 23.023201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895992, 35.036438, 23.300331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088364, -0.762316, -0.641144,
		0.928543, 0.169946, -0.330039,
		0.360554, -0.624493, 0.692827,
		32.004158, 34.849091, 23.508179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449574, 35.049633, 22.835419>,  <31.751770, 35.286236, 23.023201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449574, 35.049633, 22.835419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308208, 34.777302, 23.092035>,  <32.223389, 34.613903, 23.246006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308208, 34.777302, 23.092035>,  <32.449574, 35.049633, 22.835419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308208, 34.777302, 23.092035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163709, -0.720227, -0.674146,
		0.921032, -0.133224, 0.365994,
		-0.353411, -0.680826, 0.641542,
		32.202187, 34.573055, 23.284498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827366, 34.485165, 22.718538>,  <32.449574, 35.049633, 22.835419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827366, 34.485165, 22.718538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539230, 34.309769, 22.933516>,  <32.366348, 34.204533, 23.062502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539230, 34.309769, 22.933516>,  <32.827366, 34.485165, 22.718538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539230, 34.309769, 22.933516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022492, -0.789191, -0.613736,
		0.693261, -0.430008, 0.578345,
		-0.720336, -0.438487, 0.537443,
		32.323128, 34.178223, 23.094749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948425, 33.754543, 22.804064>,  <32.827366, 34.485165, 22.718538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948425, 33.754543, 22.804064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555645, 33.767750, 22.878551>,  <32.319977, 33.775673, 22.923244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555645, 33.767750, 22.878551>,  <32.948425, 33.754543, 22.804064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555645, 33.767750, 22.878551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134781, -0.812915, -0.566572,
		0.132674, -0.581446, 0.802694,
		-0.981953, 0.033018, 0.186221,
		32.261059, 33.777657, 22.934418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.281752, 33.972874, 21.905556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.444597, 34.337540, 21.883223>,  <25.542305, 34.556339, 21.869823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.444597, 34.337540, 21.883223>,  <25.281752, 33.972874, 21.905556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444597, 34.337540, 21.883223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268893, 0.178048, 0.946571,
		0.872900, -0.370350, 0.317627,
		0.407115, 0.911669, -0.055834,
		25.566732, 34.611042, 21.866472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444202, 34.134911, 22.602873>,  <25.281752, 33.972874, 21.905556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444202, 34.134911, 22.602873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.560637, 34.484947, 22.448223>,  <25.630497, 34.694969, 22.355433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.560637, 34.484947, 22.448223>,  <25.444202, 34.134911, 22.602873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560637, 34.484947, 22.448223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009132, 0.401564, 0.915785,
		0.956654, -0.270101, 0.108898,
		0.291083, 0.875095, -0.386625,
		25.647963, 34.747475, 22.332235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108368, 34.221375, 22.767128>,  <25.444202, 34.134911, 22.602873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108368, 34.221375, 22.767128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.922731, 34.574127, 22.733892>,  <25.811350, 34.785778, 22.713951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.922731, 34.574127, 22.733892>,  <26.108368, 34.221375, 22.767128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922731, 34.574127, 22.733892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200097, 0.195751, 0.960022,
		0.862889, 0.428914, -0.267309,
		-0.464093, 0.881881, -0.083087,
		25.783503, 34.838692, 22.708967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522322, 34.740265, 23.170454>,  <26.108368, 34.221375, 22.767128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522322, 34.740265, 23.170454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198997, 34.970993, 23.123274>,  <26.005003, 35.109428, 23.094965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198997, 34.970993, 23.123274>,  <26.522322, 34.740265, 23.170454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198997, 34.970993, 23.123274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206897, 0.465858, 0.860331,
		0.551203, 0.671012, -0.495901,
		-0.808312, 0.576818, -0.117952,
		25.956503, 35.144039, 23.087889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854229, 35.351929, 23.401928>,  <26.522322, 34.740265, 23.170454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854229, 35.351929, 23.401928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.458277, 35.407745, 23.412249>,  <26.220705, 35.441235, 23.418442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.458277, 35.407745, 23.412249>,  <26.854229, 35.351929, 23.401928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458277, 35.407745, 23.412249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075054, 0.360501, 0.929734,
		0.120439, 0.922261, -0.367326,
		-0.989879, 0.139545, 0.025801,
		26.161312, 35.449608, 23.419989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733408, 36.092960, 23.421593>,  <26.854229, 35.351929, 23.401928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733408, 36.092960, 23.421593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.429016, 35.909657, 23.605291>,  <26.246380, 35.799675, 23.715511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.429016, 35.909657, 23.605291>,  <26.733408, 36.092960, 23.421593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429016, 35.909657, 23.605291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100224, 0.616335, 0.781080,
		-0.640987, 0.640415, -0.423090,
		-0.760981, -0.458258, 0.459247,
		26.200722, 35.772179, 23.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304859, 36.655621, 23.826471>,  <26.733408, 36.092960, 23.421593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304859, 36.655621, 23.826471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.192755, 36.319984, 24.012972>,  <26.125492, 36.118603, 24.124872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.192755, 36.319984, 24.012972>,  <26.304859, 36.655621, 23.826471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192755, 36.319984, 24.012972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014007, 0.482089, 0.876010,
		-0.959822, 0.252041, -0.123358,
		-0.280260, -0.839086, 0.466250,
		26.108677, 36.068260, 24.152847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813995, 36.872791, 24.289352>,  <26.304859, 36.655621, 23.826471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813995, 36.872791, 24.289352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.932707, 36.520390, 24.436729>,  <26.003933, 36.308949, 24.525156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.932707, 36.520390, 24.436729>,  <25.813995, 36.872791, 24.289352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932707, 36.520390, 24.436729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036845, 0.374973, 0.926303,
		-0.954236, -0.288480, 0.078822,
		0.296776, -0.881008, 0.368441,
		26.021740, 36.256088, 24.547262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395937, 36.822475, 24.755014>,  <25.813995, 36.872791, 24.289352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395937, 36.822475, 24.755014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.691006, 36.566444, 24.840937>,  <25.868048, 36.412827, 24.892490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.691006, 36.566444, 24.840937>,  <25.395937, 36.822475, 24.755014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691006, 36.566444, 24.840937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057965, 0.256938, 0.964688,
		-0.672668, -0.724073, 0.152433,
		0.737671, -0.640078, 0.214805,
		25.912308, 36.374420, 24.905378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164957, 36.534554, 25.451145>,  <25.395937, 36.822475, 24.755014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164957, 36.534554, 25.451145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.559330, 36.494759, 25.397415>,  <25.795954, 36.470882, 25.365177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.559330, 36.494759, 25.397415>,  <25.164957, 36.534554, 25.451145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559330, 36.494759, 25.397415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163988, 0.419984, 0.892593,
		-0.032383, -0.902062, 0.430389,
		0.985931, -0.099484, -0.134327,
		25.855110, 36.464912, 25.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420889, 36.334042, 26.104753>,  <25.164957, 36.534554, 25.451145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420889, 36.334042, 26.104753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.714861, 36.489563, 25.882507>,  <25.891245, 36.582878, 25.749161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.714861, 36.489563, 25.882507>,  <25.420889, 36.334042, 26.104753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714861, 36.489563, 25.882507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215435, 0.643012, 0.734931,
		0.643012, -0.659822, 0.388807,
		-0.734931, -0.388807, 0.555614,
		25.935341, 36.606205, 25.715824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861349, 36.325375, 26.599646>,  <25.420889, 36.334042, 26.104753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861349, 36.325375, 26.599646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.010220, 36.569111, 26.319590>,  <26.099541, 36.715351, 26.151556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.010220, 36.569111, 26.319590>,  <25.861349, 36.325375, 26.599646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010220, 36.569111, 26.319590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360689, 0.600091, 0.713999,
		0.855213, -0.518265, 0.003557,
		0.372175, 0.609338, -0.700138,
		26.121872, 36.751911, 26.109549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525814, 36.404724, 26.730324>,  <25.861349, 36.325375, 26.599646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525814, 36.404724, 26.730324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.424492, 36.720585, 26.506796>,  <26.363699, 36.910103, 26.372679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.424492, 36.720585, 26.506796>,  <26.525814, 36.404724, 26.730324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424492, 36.720585, 26.506796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333715, 0.613529, 0.715694,
		0.908004, -0.005198, -0.418930,
		-0.253305, 0.789656, -0.558821,
		26.348501, 36.957481, 26.339149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071278, 36.945267, 26.812416>,  <26.525814, 36.404724, 26.730324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071278, 36.945267, 26.812416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.758942, 37.150791, 26.670267>,  <26.571541, 37.274105, 26.584978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.758942, 37.150791, 26.670267>,  <27.071278, 36.945267, 26.812416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.758942, 37.150791, 26.670267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224574, 0.761670, 0.607803,
		0.582971, 0.394790, -0.710131,
		-0.780840, 0.513809, -0.355372,
		26.524691, 37.304935, 26.563656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845856, 36.978790, 26.941526>,  <27.071278, 36.945267, 26.812416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845856, 36.978790, 26.941526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.926701, 36.761631, 27.267572>,  <27.975208, 36.631336, 27.463200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.926701, 36.761631, 27.267572>,  <27.845856, 36.978790, 26.941526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926701, 36.761631, 27.267572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125285, -0.811123, -0.571300,
		0.971316, 0.217589, -0.095922,
		0.202113, -0.542895, 0.815117,
		27.987335, 36.598763, 27.512108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496086, 36.599972, 26.943842>,  <27.845856, 36.978790, 26.941526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496086, 36.599972, 26.943842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238977, 36.403736, 27.179186>,  <28.084713, 36.285995, 27.320393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.238977, 36.403736, 27.179186>,  <28.496086, 36.599972, 26.943842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238977, 36.403736, 27.179186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021905, -0.779493, -0.626028,
		0.765746, -0.389504, 0.511781,
		-0.642770, -0.490589, 0.588362,
		28.046146, 36.256557, 27.355694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775347, 35.985317, 26.988642>,  <28.496086, 36.599972, 26.943842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775347, 35.985317, 26.988642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.389822, 35.919807, 27.072777>,  <28.158506, 35.880501, 27.123259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.389822, 35.919807, 27.072777>,  <28.775347, 35.985317, 26.988642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389822, 35.919807, 27.072777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024090, -0.732294, -0.680562,
		0.265488, -0.661002, 0.701850,
		-0.963813, -0.163773, 0.210339,
		28.100677, 35.870674, 27.135878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792158, 35.285183, 26.992044>,  <28.775347, 35.985317, 26.988642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792158, 35.285183, 26.992044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.410746, 35.400036, 26.955542>,  <28.181898, 35.468948, 26.933640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.410746, 35.400036, 26.955542>,  <28.792158, 35.285183, 26.992044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410746, 35.400036, 26.955542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181280, -0.788701, -0.587442,
		-0.240651, -0.543602, 0.804104,
		-0.953533, 0.287136, -0.091258,
		28.124685, 35.486176, 26.928164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509888, 34.607727, 26.869452>,  <28.792158, 35.285183, 26.992044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509888, 34.607727, 26.869452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.207939, 34.853283, 26.777100>,  <28.026770, 35.000618, 26.721687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.207939, 34.853283, 26.777100>,  <28.509888, 34.607727, 26.869452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207939, 34.853283, 26.777100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383009, -0.698368, -0.604637,
		-0.532420, -0.367994, 0.762305,
		-0.754873, 0.613891, -0.230880,
		27.981478, 35.037449, 26.707836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832350, 34.262890, 26.937611>,  <28.509888, 34.607727, 26.869452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832350, 34.262890, 26.937611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829077, 34.566189, 26.676844>,  <27.827112, 34.748169, 26.520384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.829077, 34.566189, 26.676844>,  <27.832350, 34.262890, 26.937611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829077, 34.566189, 26.676844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187624, -0.641527, -0.743801,
		-0.982207, 0.116229, 0.147514,
		-0.008183, 0.758244, -0.651920,
		27.826622, 34.793663, 26.481268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172153, 34.146984, 26.519999>,  <27.832350, 34.262890, 26.937611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172153, 34.146984, 26.519999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.424463, 34.370789, 26.304939>,  <27.575850, 34.505074, 26.175903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.424463, 34.370789, 26.304939>,  <27.172153, 34.146984, 26.519999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424463, 34.370789, 26.304939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192774, -0.558164, -0.807026,
		-0.751639, 0.612696, -0.244216,
		0.630774, 0.559514, -0.537650,
		27.613695, 34.538643, 26.143644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907751, 34.002499, 25.878794>,  <27.172153, 34.146984, 26.519999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907751, 34.002499, 25.878794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.245697, 34.193939, 25.783169>,  <27.448463, 34.308804, 25.725794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.245697, 34.193939, 25.783169>,  <26.907751, 34.002499, 25.878794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245697, 34.193939, 25.783169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019564, -0.474200, -0.880200,
		-0.534626, 0.738971, -0.409997,
		0.844863, 0.478599, -0.239062,
		27.499155, 34.337521, 25.711451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752558, 34.360760, 25.252327>,  <26.907751, 34.002499, 25.878794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752558, 34.360760, 25.252327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.148743, 34.308342, 25.269342>,  <27.386454, 34.276890, 25.279552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.148743, 34.308342, 25.269342>,  <26.752558, 34.360760, 25.252327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148743, 34.308342, 25.269342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026631, -0.485009, -0.874103,
		0.135182, 0.864634, -0.483874,
		0.990463, -0.131049, 0.042538,
		27.445881, 34.269028, 25.282104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034674, 34.559486, 24.567932>,  <26.752558, 34.360760, 25.252327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034674, 34.559486, 24.567932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.323372, 34.346073, 24.744307>,  <27.496592, 34.218025, 24.850130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.323372, 34.346073, 24.744307>,  <27.034674, 34.559486, 24.567932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323372, 34.346073, 24.744307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059470, -0.586889, -0.807481,
		0.689597, 0.609019, -0.391856,
		0.721747, -0.533533, 0.440935,
		27.539896, 34.186012, 24.876587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658445, 34.714664, 24.153521>,  <27.034674, 34.559486, 24.567932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658445, 34.714664, 24.153521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.701548, 34.363567, 24.340263>,  <27.727409, 34.152908, 24.452309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.701548, 34.363567, 24.340263>,  <27.658445, 34.714664, 24.153521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701548, 34.363567, 24.340263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334987, -0.410073, -0.848306,
		0.936041, 0.247799, 0.249846,
		0.107754, -0.877745, 0.466855,
		27.733873, 34.100243, 24.480320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326750, 34.525028, 24.044989>,  <27.658445, 34.714664, 24.153521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326750, 34.525028, 24.044989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.088215, 34.209969, 24.106939>,  <27.945093, 34.020931, 24.144110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.088215, 34.209969, 24.106939>,  <28.326750, 34.525028, 24.044989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088215, 34.209969, 24.106939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369875, -0.440846, -0.817830,
		0.712442, -0.430419, 0.554226,
		-0.596338, -0.787651, 0.154876,
		27.909313, 33.973675, 24.153402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713385, 33.950974, 23.751787>,  <28.326750, 34.525028, 24.044989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713385, 33.950974, 23.751787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361862, 33.767719, 23.805180>,  <28.150949, 33.657768, 23.837215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.361862, 33.767719, 23.805180>,  <28.713385, 33.950974, 23.751787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361862, 33.767719, 23.805180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194023, -0.598621, -0.777179,
		0.435955, -0.657090, 0.614960,
		-0.878805, -0.458132, 0.133481,
		28.098221, 33.630280, 23.845224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745026, 33.216496, 23.700308>,  <28.713385, 33.950974, 23.751787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745026, 33.216496, 23.700308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.368256, 33.305035, 23.599287>,  <28.142195, 33.358158, 23.538673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.368256, 33.305035, 23.599287>,  <28.745026, 33.216496, 23.700308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368256, 33.305035, 23.599287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063019, -0.622173, -0.780339,
		-0.329860, -0.750936, 0.572090,
		-0.941924, 0.221350, -0.252554,
		28.085678, 33.371441, 23.523521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110666, 32.596264, 23.867151>,  <28.745026, 33.216496, 23.700308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110666, 32.596264, 23.867151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.434694, 32.362095, 23.854126>,  <29.629112, 32.221592, 23.846312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.434694, 32.362095, 23.854126>,  <29.110666, 32.596264, 23.867151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434694, 32.362095, 23.854126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102729, 0.087034, 0.990894,
		-0.577261, -0.806040, 0.130644,
		0.810072, -0.585426, -0.032562,
		29.677715, 32.186466, 23.844357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067556, 32.274147, 24.477270>,  <29.110666, 32.596264, 23.867151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067556, 32.274147, 24.477270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.450657, 32.207771, 24.383308>,  <29.680517, 32.167946, 24.326931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.450657, 32.207771, 24.383308>,  <29.067556, 32.274147, 24.477270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450657, 32.207771, 24.383308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241598, 0.021090, 0.970147,
		-0.156033, -0.985910, 0.060290,
		0.957749, -0.165941, -0.234904,
		29.737982, 32.157990, 24.312838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261135, 31.646986, 24.747652>,  <29.067556, 32.274147, 24.477270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261135, 31.646986, 24.747652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565823, 31.904396, 24.717569>,  <29.748636, 32.058842, 24.699520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.565823, 31.904396, 24.717569>,  <29.261135, 31.646986, 24.747652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565823, 31.904396, 24.717569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204243, -0.128343, 0.970470,
		0.614872, -0.754586, -0.229198,
		0.761719, 0.643527, -0.075205,
		29.794338, 32.097454, 24.695007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637754, 31.487450, 25.378880>,  <29.261135, 31.646986, 24.747652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637754, 31.487450, 25.378880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.842487, 31.799656, 25.235310>,  <29.965326, 31.986979, 25.149168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.842487, 31.799656, 25.235310>,  <29.637754, 31.487450, 25.378880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842487, 31.799656, 25.235310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357901, 0.186086, 0.915029,
		0.780984, -0.596800, -0.184102,
		0.511831, 0.780514, -0.358926,
		29.996037, 32.033810, 25.127632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480387, 31.548954, 25.434982>,  <29.637754, 31.487450, 25.378880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480387, 31.548954, 25.434982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.362419, 31.931103, 25.428228>,  <30.291639, 32.160393, 25.424175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.362419, 31.931103, 25.428228>,  <30.480387, 31.548954, 25.434982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362419, 31.931103, 25.428228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458827, 0.157093, 0.874528,
		0.838154, 0.250166, -0.484681,
		-0.294917, 0.955374, -0.016885,
		30.273945, 32.217716, 25.423162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071877, 31.886578, 25.735603>,  <30.480387, 31.548954, 25.434982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071877, 31.886578, 25.735603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.768200, 32.146786, 25.744120>,  <30.585995, 32.302910, 25.749229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.768200, 32.146786, 25.744120>,  <31.071877, 31.886578, 25.735603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768200, 32.146786, 25.744120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355599, 0.387159, 0.850680,
		0.545141, 0.653401, -0.525252,
		-0.759191, 0.650519, 0.021292,
		30.540443, 32.341942, 25.750507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338955, 32.491463, 25.942215>,  <31.071877, 31.886578, 25.735603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338955, 32.491463, 25.942215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949251, 32.553837, 26.007328>,  <30.715429, 32.591263, 26.046396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.949251, 32.553837, 26.007328>,  <31.338955, 32.491463, 25.942215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949251, 32.553837, 26.007328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222479, 0.548865, 0.805760,
		0.036303, 0.821237, -0.569431,
		-0.974261, 0.155938, 0.162783,
		30.656973, 32.600616, 26.056164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212568, 33.276207, 26.005383>,  <31.338955, 32.491463, 25.942215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212568, 33.276207, 26.005383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.919031, 33.089973, 26.203253>,  <30.742908, 32.978233, 26.321976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.919031, 33.089973, 26.203253>,  <31.212568, 33.276207, 26.005383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919031, 33.089973, 26.203253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004828, 0.731748, 0.681558,
		-0.679302, 0.497768, -0.539235,
		-0.733842, -0.465588, 0.494675,
		30.698879, 32.950298, 26.351656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781492, 33.777103, 26.217154>,  <31.212568, 33.276207, 26.005383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781492, 33.777103, 26.217154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720896, 33.478817, 26.476681>,  <30.684538, 33.299847, 26.632397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.720896, 33.478817, 26.476681>,  <30.781492, 33.777103, 26.217154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720896, 33.478817, 26.476681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203459, 0.618813, 0.758733,
		-0.967293, 0.246947, 0.057979,
		-0.151489, -0.745713, 0.648817,
		30.675449, 33.255104, 26.671326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328884, 34.110394, 26.698956>,  <30.781492, 33.777103, 26.217154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328884, 34.110394, 26.698956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.480257, 33.786575, 26.878475>,  <30.571081, 33.592285, 26.986187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.480257, 33.786575, 26.878475>,  <30.328884, 34.110394, 26.698956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480257, 33.786575, 26.878475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031878, 0.495970, 0.867754,
		-0.925080, -0.314080, 0.213498,
		0.378433, -0.809547, 0.448800,
		30.593786, 33.543713, 27.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044657, 34.150795, 27.325792>,  <30.328884, 34.110394, 26.698956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044657, 34.150795, 27.325792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344519, 33.892376, 27.383263>,  <30.524437, 33.737328, 27.417746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.344519, 33.892376, 27.383263>,  <30.044657, 34.150795, 27.325792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344519, 33.892376, 27.383263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140336, 0.367323, 0.919445,
		-0.646777, -0.669105, 0.366029,
		0.749657, -0.646043, 0.143677,
		30.569416, 33.698563, 27.426365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893595, 33.969463, 27.963549>,  <30.044657, 34.150795, 27.325792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893595, 33.969463, 27.963549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.274902, 33.870567, 27.894094>,  <30.503687, 33.811230, 27.852423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.274902, 33.870567, 27.894094>,  <29.893595, 33.969463, 27.963549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274902, 33.870567, 27.894094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267233, 0.421940, 0.866345,
		-0.140928, -0.872262, 0.468292,
		0.953271, -0.247236, -0.173634,
		30.560884, 33.796398, 27.842005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137739, 33.774715, 28.527864>,  <29.893595, 33.969463, 27.963549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137739, 33.774715, 28.527864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455709, 33.895721, 28.317501>,  <30.646492, 33.968327, 28.191282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.455709, 33.895721, 28.317501>,  <30.137739, 33.774715, 28.527864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455709, 33.895721, 28.317501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211459, 0.674323, 0.707512,
		0.568665, -0.673627, 0.472066,
		0.794925, 0.302515, -0.525909,
		30.694187, 33.986477, 28.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808962, 33.751453, 29.016407>,  <30.137739, 33.774715, 28.527864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808962, 33.751453, 29.016407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890192, 33.994572, 28.709332>,  <30.938931, 34.140442, 28.525085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.890192, 33.994572, 28.709332>,  <30.808962, 33.751453, 29.016407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890192, 33.994572, 28.709332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441470, 0.642983, 0.625841,
		0.873994, -0.466004, -0.137749,
		0.203074, 0.607793, -0.767690,
		30.951115, 34.176910, 28.479025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.685497, 33.014664, 22.950230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347183, 33.201500, 22.847103>,  <32.144196, 33.313602, 22.785227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347183, 33.201500, 22.847103>,  <32.685497, 33.014664, 22.950230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347183, 33.201500, 22.847103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205017, -0.730674, -0.651218,
		-0.492558, -0.497935, 0.713756,
		-0.845786, 0.467095, -0.257814,
		32.093449, 33.341629, 22.769758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158875, 32.556644, 23.038935>,  <32.685497, 33.014664, 22.950230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158875, 32.556644, 23.038935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.024258, 32.830688, 22.780521>,  <31.943487, 32.995117, 22.625473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.024258, 32.830688, 22.780521>,  <32.158875, 32.556644, 23.038935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024258, 32.830688, 22.780521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317494, -0.728435, -0.607107,
		-0.886531, 0.000795, 0.462668,
		-0.336541, 0.685114, -0.646033,
		31.923296, 33.036224, 22.586712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565035, 32.219490, 22.807804>,  <32.158875, 32.556644, 23.038935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565035, 32.219490, 22.807804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632446, 32.504219, 22.535067>,  <31.672894, 32.675056, 22.371424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632446, 32.504219, 22.535067>,  <31.565035, 32.219490, 22.807804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632446, 32.504219, 22.535067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173783, -0.659443, -0.731392,
		-0.970257, 0.241752, 0.012569,
		0.168526, 0.711822, -0.681842,
		31.683004, 32.717766, 22.330515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972359, 32.092823, 22.372917>,  <31.565035, 32.219490, 22.807804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972359, 32.092823, 22.372917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256603, 32.279751, 22.162531>,  <31.427151, 32.391907, 22.036299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256603, 32.279751, 22.162531>,  <30.972359, 32.092823, 22.372917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256603, 32.279751, 22.162531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284029, -0.493395, -0.822124,
		-0.643705, 0.733602, -0.217881,
		0.710614, 0.467321, -0.525965,
		31.469788, 32.419949, 22.004742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674696, 32.229122, 21.736038>,  <30.972359, 32.092823, 22.372917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674696, 32.229122, 21.736038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062929, 32.279892, 21.654200>,  <31.295868, 32.310356, 21.605097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.062929, 32.279892, 21.654200>,  <30.674696, 32.229122, 21.736038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062929, 32.279892, 21.654200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138258, -0.401884, -0.905193,
		-0.197118, 0.906851, -0.372513,
		0.970582, 0.126927, -0.204598,
		31.354103, 32.317970, 21.592819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690466, 32.596962, 21.076315>,  <30.674696, 32.229122, 21.736038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690466, 32.596962, 21.076315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040045, 32.412849, 21.138744>,  <31.249792, 32.302383, 21.176203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040045, 32.412849, 21.138744>,  <30.690466, 32.596962, 21.076315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040045, 32.412849, 21.138744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021250, -0.357008, -0.933859,
		0.485556, 0.812827, -0.321787,
		0.873947, -0.460279, 0.156075,
		31.302229, 32.274765, 21.185568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085796, 32.745159, 20.491842>,  <30.690466, 32.596962, 21.076315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085796, 32.745159, 20.491842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263998, 32.426857, 20.655941>,  <31.370918, 32.235878, 20.754400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.263998, 32.426857, 20.655941>,  <31.085796, 32.745159, 20.491842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263998, 32.426857, 20.655941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014762, -0.464702, -0.885344,
		0.895158, 0.388368, -0.218773,
		0.445504, -0.795753, 0.410249,
		31.397650, 32.188129, 20.779016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311405, 32.530716, 19.934570>,  <31.085796, 32.745159, 20.491842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311405, 32.530716, 19.934570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396908, 32.209156, 20.156580>,  <31.448210, 32.016220, 20.289785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.396908, 32.209156, 20.156580>,  <31.311405, 32.530716, 19.934570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396908, 32.209156, 20.156580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031617, -0.573552, -0.818558,
		0.976375, 0.157424, -0.148018,
		0.213757, -0.803900, 0.555025,
		31.461035, 31.967985, 20.323088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948347, 32.378536, 19.776672>,  <31.311405, 32.530716, 19.934570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948347, 32.378536, 19.776672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786690, 32.040756, 19.917280>,  <31.689695, 31.838087, 20.001646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786690, 32.040756, 19.917280>,  <31.948347, 32.378536, 19.776672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786690, 32.040756, 19.917280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297009, -0.484633, -0.822750,
		0.865132, -0.228105, 0.446671,
		-0.404145, -0.844452, 0.351522,
		31.665445, 31.787420, 20.022738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419155, 31.742132, 19.637613>,  <31.948347, 32.378536, 19.776672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419155, 31.742132, 19.637613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039055, 31.622828, 19.673519>,  <31.810993, 31.551245, 19.695063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039055, 31.622828, 19.673519>,  <32.419155, 31.742132, 19.637613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039055, 31.622828, 19.673519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094778, -0.551403, -0.828838,
		0.296707, -0.779099, 0.552241,
		-0.950254, -0.298262, 0.089764,
		31.753979, 31.533348, 19.700449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505157, 31.084282, 19.305655>,  <32.419155, 31.742132, 19.637613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505157, 31.084282, 19.305655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117065, 31.179773, 19.322002>,  <31.884211, 31.237068, 19.331812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117065, 31.179773, 19.322002>,  <32.505157, 31.084282, 19.305655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117065, 31.179773, 19.322002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184003, -0.616789, -0.765320,
		-0.157493, -0.750054, 0.642351,
		-0.970226, 0.238727, 0.040872,
		31.825998, 31.251390, 19.334265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134140, 30.349140, 19.293201>,  <32.505157, 31.084282, 19.305655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134140, 30.349140, 19.293201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846712, 30.604126, 19.181995>,  <31.674255, 30.757118, 19.115273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846712, 30.604126, 19.181995>,  <32.134140, 30.349140, 19.293201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846712, 30.604126, 19.181995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284825, -0.634452, -0.718572,
		-0.634452, -0.437160, 0.637465,
		0.718572, -0.637465, 0.278016,
		31.631140, 30.795366, 19.098591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435846, 30.005272, 19.295946>,  <32.134140, 30.349140, 19.293201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435846, 30.005272, 19.295946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428633, 30.320065, 19.049261>,  <31.424305, 30.508940, 18.901251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428633, 30.320065, 19.049261>,  <31.435846, 30.005272, 19.295946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428633, 30.320065, 19.049261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313325, -0.590190, -0.743978,
		-0.949475, 0.179815, 0.257224,
		-0.018033, 0.786983, -0.616711,
		31.423223, 30.556160, 18.864248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741074, 30.024660, 19.012291>,  <31.435846, 30.005272, 19.295946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741074, 30.024660, 19.012291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019947, 30.175890, 18.768656>,  <31.187271, 30.266628, 18.622475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.019947, 30.175890, 18.768656>,  <30.741074, 30.024660, 19.012291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019947, 30.175890, 18.768656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262442, -0.656045, -0.707622,
		-0.667126, 0.653195, -0.358162,
		0.697185, 0.378077, -0.609090,
		31.229103, 30.289312, 18.585928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118734, 30.036032, 18.564674>,  <30.741074, 30.024660, 19.012291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118734, 30.036032, 18.564674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854685, 29.792206, 18.740250>,  <29.696255, 29.645910, 18.845594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.854685, 29.792206, 18.740250>,  <30.118734, 30.036032, 18.564674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854685, 29.792206, 18.740250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038320, 0.556260, 0.830124,
		-0.750181, 0.564803, -0.343841,
		-0.660122, -0.609567, 0.438939,
		29.656649, 29.609335, 18.871931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847044, 30.449621, 19.000467>,  <30.118734, 30.036032, 18.564674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847044, 30.449621, 19.000467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.731001, 30.092777, 19.139021>,  <29.661375, 29.878672, 19.222153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.731001, 30.092777, 19.139021>,  <29.847044, 30.449621, 19.000467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731001, 30.092777, 19.139021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015834, 0.357426, 0.933807,
		-0.956863, 0.276388, -0.089566,
		-0.290107, -0.892108, 0.346384,
		29.643969, 29.825146, 19.242937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283772, 30.662165, 19.424854>,  <29.847044, 30.449621, 19.000467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283772, 30.662165, 19.424854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390800, 30.294996, 19.542036>,  <29.455017, 30.074696, 19.612345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390800, 30.294996, 19.542036>,  <29.283772, 30.662165, 19.424854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390800, 30.294996, 19.542036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008329, 0.301825, 0.953327,
		-0.963502, -0.257524, 0.073115,
		0.267573, -0.917923, 0.292954,
		29.471073, 30.019619, 19.629923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852057, 30.516315, 19.903854>,  <29.283772, 30.662165, 19.424854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852057, 30.516315, 19.903854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.123266, 30.233250, 19.983345>,  <29.285992, 30.063410, 20.031038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.123266, 30.233250, 19.983345>,  <28.852057, 30.516315, 19.903854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123266, 30.233250, 19.983345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228161, 0.054379, 0.972104,
		-0.698731, -0.704451, -0.124592,
		0.678025, -0.707666, 0.198725,
		29.326674, 30.020950, 20.042963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596502, 29.846060, 20.341974>,  <28.852057, 30.516315, 19.903854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596502, 29.846060, 20.341974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991980, 29.882565, 20.389566>,  <29.229265, 29.904467, 20.418121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991980, 29.882565, 20.389566>,  <28.596502, 29.846060, 20.341974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991980, 29.882565, 20.389566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132016, 0.153468, 0.979295,
		0.071108, -0.983931, 0.163780,
		0.988694, 0.091258, 0.118982,
		29.288588, 29.909943, 20.425261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627909, 29.677038, 21.072178>,  <28.596502, 29.846060, 20.341974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627909, 29.677038, 21.072178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994879, 29.818722, 20.999660>,  <29.215061, 29.903732, 20.956150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994879, 29.818722, 20.999660>,  <28.627909, 29.677038, 21.072178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994879, 29.818722, 20.999660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014540, 0.425469, 0.904856,
		0.397640, -0.832775, 0.385186,
		0.917426, 0.354206, -0.181292,
		29.270105, 29.924984, 20.945272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956911, 29.596514, 21.634737>,  <28.627909, 29.677038, 21.072178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956911, 29.596514, 21.634737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138689, 29.896189, 21.441988>,  <29.247755, 30.075993, 21.326340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.138689, 29.896189, 21.441988>,  <28.956911, 29.596514, 21.634737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138689, 29.896189, 21.441988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111087, 0.584399, 0.803826,
		0.883821, -0.311765, 0.348803,
		0.454445, 0.749186, -0.481871,
		29.275023, 30.120945, 21.297426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593300, 29.680946, 21.934303>,  <28.956911, 29.596514, 21.634737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593300, 29.680946, 21.934303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544266, 30.042149, 21.769598>,  <29.514845, 30.258871, 21.670774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544266, 30.042149, 21.769598>,  <29.593300, 29.680946, 21.934303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544266, 30.042149, 21.769598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379561, 0.426008, 0.821249,
		0.917010, -0.055619, -0.394968,
		-0.122583, 0.903008, -0.411765,
		29.507490, 30.313051, 21.646069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099941, 30.075605, 22.268209>,  <29.593300, 29.680946, 21.934303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099941, 30.075605, 22.268209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860418, 30.345390, 22.095451>,  <29.716705, 30.507261, 21.991796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860418, 30.345390, 22.095451>,  <30.099941, 30.075605, 22.268209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860418, 30.345390, 22.095451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144869, 0.621588, 0.769832,
		0.787682, 0.398413, -0.469920,
		-0.598807, 0.674460, -0.431895,
		29.680777, 30.547728, 21.965883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464659, 30.630363, 22.277702>,  <30.099941, 30.075605, 22.268209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464659, 30.630363, 22.277702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085905, 30.754246, 22.243069>,  <29.858654, 30.828575, 22.222288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085905, 30.754246, 22.243069>,  <30.464659, 30.630363, 22.277702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085905, 30.754246, 22.243069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153107, 0.670940, 0.725533,
		0.282792, 0.673738, -0.682719,
		-0.946883, 0.309704, -0.086583,
		29.801840, 30.847157, 22.217094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448631, 31.433834, 22.226450>,  <30.464659, 30.630363, 22.277702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448631, 31.433834, 22.226450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084129, 31.332773, 22.356543>,  <29.865427, 31.272137, 22.434599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.084129, 31.332773, 22.356543>,  <30.448631, 31.433834, 22.226450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084129, 31.332773, 22.356543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072160, 0.679543, 0.730078,
		-0.405467, 0.688758, -0.601007,
		-0.911257, -0.252654, 0.325233,
		29.810753, 31.256977, 22.454113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179972, 32.060802, 22.365057>,  <30.448631, 31.433834, 22.226450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179972, 32.060802, 22.365057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964735, 31.785414, 22.559566>,  <29.835592, 31.620180, 22.676273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.964735, 31.785414, 22.559566>,  <30.179972, 32.060802, 22.365057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964735, 31.785414, 22.559566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061194, 0.607303, 0.792110,
		-0.840662, 0.396470, -0.368915,
		-0.538091, -0.688472, 0.486275,
		29.803308, 31.578873, 22.705450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810377, 32.484768, 22.698387>,  <30.179972, 32.060802, 22.365057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810377, 32.484768, 22.698387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740461, 32.133080, 22.875668>,  <29.698513, 31.922068, 22.982037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.740461, 32.133080, 22.875668>,  <29.810377, 32.484768, 22.698387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740461, 32.133080, 22.875668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092839, 0.433407, 0.896403,
		-0.980219, 0.197827, 0.005871,
		-0.174788, -0.879217, 0.443200,
		29.688025, 31.869314, 23.008627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331226, 32.637688, 23.170546>,  <29.810377, 32.484768, 22.698387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331226, 32.637688, 23.170546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503027, 32.301720, 23.303251>,  <29.606108, 32.100140, 23.382875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503027, 32.301720, 23.303251>,  <29.331226, 32.637688, 23.170546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503027, 32.301720, 23.303251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052622, 0.390028, 0.919298,
		-0.901532, -0.377381, 0.211715,
		0.429500, -0.839918, 0.331764,
		29.631878, 32.049744, 23.402781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566324, 32.573280, 23.312929>,  <29.331226, 32.637688, 23.170546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566324, 32.573280, 23.312929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297855, 32.858353, 23.231333>,  <28.136774, 33.029396, 23.182375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.297855, 32.858353, 23.231333>,  <28.566324, 32.573280, 23.312929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297855, 32.858353, 23.231333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071072, -0.335774, -0.939257,
		-0.737887, -0.615905, 0.276014,
		-0.671172, 0.712683, -0.203990,
		28.096504, 33.072159, 23.170135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069185, 32.200962, 22.921089>,  <28.566324, 32.573280, 23.312929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069185, 32.200962, 22.921089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.030304, 32.588730, 22.830957>,  <28.006975, 32.821392, 22.776878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.030304, 32.588730, 22.830957>,  <28.069185, 32.200962, 22.921089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030304, 32.588730, 22.830957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065445, -0.232138, -0.970479,
		-0.993111, -0.079586, 0.086008,
		-0.097203, 0.969422, -0.225330,
		28.001143, 32.879555, 22.763359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520660, 32.188419, 22.497843>,  <28.069185, 32.200962, 22.921089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520660, 32.188419, 22.497843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.700035, 32.533039, 22.402655>,  <27.807661, 32.739811, 22.345541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.700035, 32.533039, 22.402655>,  <27.520660, 32.188419, 22.497843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700035, 32.533039, 22.402655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237454, -0.141842, -0.960988,
		-0.861696, 0.487450, 0.140972,
		0.448438, 0.861553, -0.237971,
		27.834566, 32.791504, 22.331263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154612, 32.391487, 21.955526>,  <27.520660, 32.188419, 22.497843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154612, 32.391487, 21.955526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.484783, 32.617226, 21.950281>,  <27.682886, 32.752670, 21.947134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.484783, 32.617226, 21.950281>,  <27.154612, 32.391487, 21.955526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484783, 32.617226, 21.950281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060075, 0.064724, -0.996093,
		-0.561297, 0.822994, 0.087329,
		0.825431, 0.564350, -0.013112,
		27.732412, 32.786530, 21.946348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990438, 32.937492, 21.518360>,  <27.154612, 32.391487, 21.955526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990438, 32.937492, 21.518360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.380554, 32.851719, 21.539646>,  <27.614624, 32.800255, 21.552418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.380554, 32.851719, 21.539646>,  <26.990438, 32.937492, 21.518360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380554, 32.851719, 21.539646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035562, -0.085347, -0.995717,
		0.218061, 0.973002, -0.075612,
		0.975287, -0.214438, 0.053213,
		27.673140, 32.787388, 21.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149025, 33.226978, 20.976204>,  <26.990438, 32.937492, 21.518360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149025, 33.226978, 20.976204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.456314, 32.979671, 21.042625>,  <27.640688, 32.831287, 21.082478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.456314, 32.979671, 21.042625>,  <27.149025, 33.226978, 20.976204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456314, 32.979671, 21.042625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100169, -0.140101, -0.985057,
		0.632295, 0.773379, -0.045698,
		0.768224, -0.618270, 0.166054,
		27.686781, 32.794189, 21.092442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.711479, 33.551567, 20.538071>,  <27.149025, 33.226978, 20.976204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.711479, 33.551567, 20.538071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.773392, 33.164688, 20.618639>,  <27.810539, 32.932560, 20.666981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.773392, 33.164688, 20.618639>,  <27.711479, 33.551567, 20.538071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773392, 33.164688, 20.618639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132251, -0.181757, -0.974409,
		0.979057, 0.177460, 0.099780,
		0.154783, -0.967198, 0.201420,
		27.819826, 32.874527, 20.679066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730488, 34.024147, 19.968884>,  <27.711479, 33.551567, 20.538071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730488, 34.024147, 19.968884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.427280, 34.112381, 19.723364>,  <27.245356, 34.165321, 19.576052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.427280, 34.112381, 19.723364>,  <27.730488, 34.024147, 19.968884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427280, 34.112381, 19.723364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324033, 0.689357, 0.647911,
		0.566050, 0.690020, -0.451067,
		-0.758018, 0.220589, -0.613799,
		27.199875, 34.178558, 19.539225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575121, 34.788506, 20.087263>,  <27.730488, 34.024147, 19.968884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575121, 34.788506, 20.087263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.234272, 34.640259, 19.939463>,  <27.029762, 34.551311, 19.850782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.234272, 34.640259, 19.939463>,  <27.575121, 34.788506, 20.087263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234272, 34.640259, 19.939463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482163, 0.281439, 0.829645,
		-0.203490, 0.885118, -0.418518,
		-0.852121, -0.370618, -0.369501,
		26.978636, 34.529072, 19.828611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019714, 35.311424, 20.357771>,  <27.575121, 34.788506, 20.087263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019714, 35.311424, 20.357771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.829096, 34.977402, 20.247805>,  <26.714725, 34.776989, 20.181826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.829096, 34.977402, 20.247805>,  <27.019714, 35.311424, 20.357771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829096, 34.977402, 20.247805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608925, 0.087966, 0.788335,
		-0.634124, 0.543080, -0.550409,
		-0.476547, -0.835060, -0.274914,
		26.686132, 34.726883, 20.165331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413658, 35.450565, 20.476358>,  <27.019714, 35.311424, 20.357771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413658, 35.450565, 20.476358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.361952, 35.054890, 20.448648>,  <26.330929, 34.817486, 20.432022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.361952, 35.054890, 20.448648>,  <26.413658, 35.450565, 20.476358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361952, 35.054890, 20.448648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616695, 0.025487, 0.786789,
		-0.776516, 0.144428, -0.613322,
		-0.129266, -0.989187, -0.069277,
		26.323172, 34.758133, 20.427866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704773, 35.387833, 20.470615>,  <26.413658, 35.450565, 20.476358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704773, 35.387833, 20.470615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.863808, 35.039680, 20.586798>,  <25.959229, 34.830788, 20.656507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.863808, 35.039680, 20.586798>,  <25.704773, 35.387833, 20.470615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863808, 35.039680, 20.586798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622065, -0.022982, 0.782628,
		-0.674508, -0.491845, -0.550570,
		0.397585, -0.870379, 0.290458,
		25.983084, 34.778568, 20.673935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177393, 34.922939, 20.662878>,  <25.704773, 35.387833, 20.470615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177393, 34.922939, 20.662878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.499371, 34.787952, 20.858093>,  <25.692558, 34.706959, 20.975222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.499371, 34.787952, 20.858093>,  <25.177393, 34.922939, 20.662878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499371, 34.787952, 20.858093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481814, 0.108285, 0.869557,
		-0.346293, -0.935089, -0.075432,
		0.804945, -0.337466, 0.488037,
		25.740854, 34.686714, 21.004505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900394, 34.455101, 21.182772>,  <25.177393, 34.922939, 20.662878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900394, 34.455101, 21.182772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.267275, 34.564381, 21.298775>,  <25.487404, 34.629948, 21.368376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.267275, 34.564381, 21.298775>,  <24.900394, 34.455101, 21.182772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267275, 34.564381, 21.298775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361750, 0.266004, 0.893521,
		0.166960, -0.924450, 0.342807,
		0.917203, 0.273193, 0.290008,
		25.542435, 34.646339, 21.385777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.267675, 33.430866, 17.356224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167360, 33.214439, 17.677311>,  <31.107172, 33.084583, 17.869963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167360, 33.214439, 17.677311>,  <31.267675, 33.430866, 17.356224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167360, 33.214439, 17.677311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232474, 0.771288, 0.592512,
		-0.939714, 0.335204, -0.067645,
		-0.250786, -0.541066, 0.802717,
		31.092125, 33.052120, 17.918125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745047, 33.718342, 17.680437>,  <31.267675, 33.430866, 17.356224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745047, 33.718342, 17.680437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945312, 33.520214, 17.964407>,  <31.065472, 33.401337, 18.134789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.945312, 33.520214, 17.964407>,  <30.745047, 33.718342, 17.680437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945312, 33.520214, 17.964407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057995, 0.837463, 0.543409,
		-0.863697, -0.230893, 0.448014,
		0.500665, -0.495323, 0.709923,
		31.095512, 33.371616, 18.177383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549231, 34.095448, 18.251007>,  <30.745047, 33.718342, 17.680437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549231, 34.095448, 18.251007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866217, 33.880466, 18.366346>,  <31.056408, 33.751476, 18.435549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.866217, 33.880466, 18.366346>,  <30.549231, 34.095448, 18.251007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866217, 33.880466, 18.366346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319994, 0.768842, 0.553611,
		-0.519233, -0.346448, 0.781263,
		0.792465, -0.537452, 0.288346,
		31.103956, 33.719231, 18.452850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633753, 34.174137, 18.949759>,  <30.549231, 34.095448, 18.251007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633753, 34.174137, 18.949759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.002859, 34.066059, 18.839849>,  <31.224323, 34.001213, 18.773905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.002859, 34.066059, 18.839849>,  <30.633753, 34.174137, 18.949759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002859, 34.066059, 18.839849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385357, 0.650549, 0.654435,
		0.001928, -0.709775, 0.704425,
		0.922765, -0.270194, -0.274771,
		31.279688, 33.985001, 18.757418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934866, 34.246265, 19.533791>,  <30.633753, 34.174137, 18.949759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934866, 34.246265, 19.533791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239891, 34.260582, 19.275421>,  <31.422905, 34.269173, 19.120399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.239891, 34.260582, 19.275421>,  <30.934866, 34.246265, 19.533791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239891, 34.260582, 19.275421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336637, 0.830680, 0.443448,
		0.552428, -0.555599, 0.621396,
		0.762561, 0.035788, -0.645926,
		31.468658, 34.271317, 19.081644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520500, 34.314594, 19.926353>,  <30.934866, 34.246265, 19.533791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520500, 34.314594, 19.926353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624165, 34.440479, 19.561104>,  <31.686363, 34.516010, 19.341955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.624165, 34.440479, 19.561104>,  <31.520500, 34.314594, 19.926353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624165, 34.440479, 19.561104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212598, 0.903647, 0.371784,
		0.942145, -0.290480, 0.167284,
		0.259161, 0.314710, -0.913123,
		31.701914, 34.534893, 19.287167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264294, 34.643341, 19.937939>,  <31.520500, 34.314594, 19.926353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264294, 34.643341, 19.937939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062721, 34.802086, 19.631071>,  <31.941778, 34.897335, 19.446951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.062721, 34.802086, 19.631071>,  <32.264294, 34.643341, 19.937939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062721, 34.802086, 19.631071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332919, 0.908810, 0.251454,
		0.797006, -0.128691, -0.590101,
		-0.503930, 0.396867, -0.767171,
		31.911543, 34.921146, 19.400919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688480, 35.159267, 19.742800>,  <32.264294, 34.643341, 19.937939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688480, 35.159267, 19.742800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.338295, 35.244900, 19.569487>,  <32.128185, 35.296280, 19.465498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.338295, 35.244900, 19.569487>,  <32.688480, 35.159267, 19.742800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338295, 35.244900, 19.569487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110073, 0.961301, 0.252558,
		0.470582, 0.173412, -0.865148,
		-0.875464, 0.214078, -0.433282,
		32.075657, 35.309124, 19.439503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739159, 35.731712, 19.248205>,  <32.688480, 35.159267, 19.742800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739159, 35.731712, 19.248205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354572, 35.707935, 19.355568>,  <32.123821, 35.693668, 19.419987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354572, 35.707935, 19.355568>,  <32.739159, 35.731712, 19.248205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354572, 35.707935, 19.355568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055201, 0.914715, 0.400311,
		-0.269312, 0.399703, -0.876190,
		-0.961469, -0.059443, 0.268408,
		32.066132, 35.690102, 19.436090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482414, 36.377365, 19.086985>,  <32.739159, 35.731712, 19.248205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482414, 36.377365, 19.086985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221378, 36.235123, 19.354618>,  <32.064758, 36.149776, 19.515198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.221378, 36.235123, 19.354618>,  <32.482414, 36.377365, 19.086985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221378, 36.235123, 19.354618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083733, 0.911468, 0.402760,
		-0.753073, 0.206811, -0.624588,
		-0.652587, -0.355606, 0.669084,
		32.025600, 36.128441, 19.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065033, 36.974098, 19.250921>,  <32.482414, 36.377365, 19.086985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065033, 36.974098, 19.250921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954344, 36.708202, 19.528496>,  <31.887930, 36.548664, 19.695040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954344, 36.708202, 19.528496>,  <32.065033, 36.974098, 19.250921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954344, 36.708202, 19.528496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281938, 0.746518, 0.602679,
		-0.918660, -0.028873, -0.393993,
		-0.276722, -0.664739, 0.693936,
		31.871326, 36.508781, 19.736677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456270, 37.289631, 19.574423>,  <32.065033, 36.974098, 19.250921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456270, 37.289631, 19.574423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563490, 37.014122, 19.843863>,  <31.627823, 36.848816, 20.005527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563490, 37.014122, 19.843863>,  <31.456270, 37.289631, 19.574423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563490, 37.014122, 19.843863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305010, 0.602549, 0.737498,
		-0.913848, -0.403142, -0.048569,
		0.268051, -0.688775, 0.673600,
		31.643906, 36.807491, 20.045942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876989, 37.055645, 19.890646>,  <31.456270, 37.289631, 19.574423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876989, 37.055645, 19.890646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481468, 37.107956, 19.861908>,  <30.244156, 37.139343, 19.844666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481468, 37.107956, 19.861908>,  <30.876989, 37.055645, 19.890646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481468, 37.107956, 19.861908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006487, -0.443342, -0.896329,
		-0.149075, -0.886760, 0.437530,
		-0.988805, 0.130782, -0.071844,
		30.184826, 37.147190, 19.840355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566145, 36.422401, 19.689859>,  <30.876989, 37.055645, 19.890646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566145, 36.422401, 19.689859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283054, 36.688904, 19.595860>,  <30.113199, 36.848804, 19.539459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283054, 36.688904, 19.595860>,  <30.566145, 36.422401, 19.689859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283054, 36.688904, 19.595860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308289, -0.590538, -0.745804,
		-0.635674, -0.455377, 0.623338,
		-0.707726, 0.666256, -0.235002,
		30.070736, 36.888779, 19.525360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925255, 36.054699, 19.571800>,  <30.566145, 36.422401, 19.689859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925255, 36.054699, 19.571800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876226, 36.406425, 19.387720>,  <29.846809, 36.617462, 19.277271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876226, 36.406425, 19.387720>,  <29.925255, 36.054699, 19.571800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876226, 36.406425, 19.387720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306417, -0.474573, -0.825160,
		-0.943973, 0.039874, 0.327604,
		-0.122569, 0.879313, -0.460202,
		29.839455, 36.670219, 19.249659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388054, 35.891605, 19.139446>,  <29.925255, 36.054699, 19.571800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388054, 35.891605, 19.139446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522760, 36.239693, 18.995611>,  <29.603584, 36.448547, 18.909309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522760, 36.239693, 18.995611>,  <29.388054, 35.891605, 19.139446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522760, 36.239693, 18.995611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313661, -0.256404, -0.914261,
		-0.887810, 0.420680, 0.186606,
		0.336765, 0.870221, -0.359589,
		29.623791, 36.500759, 18.887733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838642, 36.258232, 18.823223>,  <29.388054, 35.891605, 19.139446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838642, 36.258232, 18.823223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177162, 36.388065, 18.654261>,  <29.380274, 36.465965, 18.552883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.177162, 36.388065, 18.654261>,  <28.838642, 36.258232, 18.823223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177162, 36.388065, 18.654261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378655, -0.191207, -0.905572,
		-0.374701, 0.926329, -0.038913,
		0.846298, 0.324584, -0.422404,
		29.431051, 36.485439, 18.527540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680080, 36.609962, 18.163273>,  <28.838642, 36.258232, 18.823223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680080, 36.609962, 18.163273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063007, 36.539764, 18.071405>,  <29.292763, 36.497646, 18.016285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063007, 36.539764, 18.071405>,  <28.680080, 36.609962, 18.163273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063007, 36.539764, 18.071405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280101, -0.367134, -0.886993,
		0.071348, 0.913462, -0.400621,
		0.957315, -0.175500, -0.229667,
		29.350203, 36.487114, 18.002504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812092, 36.875023, 17.389936>,  <28.680080, 36.609962, 18.163273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812092, 36.875023, 17.389936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110842, 36.618065, 17.458641>,  <29.290091, 36.463890, 17.499865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.110842, 36.618065, 17.458641>,  <28.812092, 36.875023, 17.389936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110842, 36.618065, 17.458641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160784, -0.425099, -0.890752,
		0.645235, 0.637663, -0.420783,
		0.746874, -0.642399, 0.171763,
		29.334904, 36.425346, 17.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997053, 36.825649, 16.781651>,  <28.812092, 36.875023, 17.389936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997053, 36.825649, 16.781651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198530, 36.530407, 16.961201>,  <29.319416, 36.353260, 17.068932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.198530, 36.530407, 16.961201>,  <28.997053, 36.825649, 16.781651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198530, 36.530407, 16.961201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020972, -0.509004, -0.860508,
		0.863627, 0.442847, -0.240904,
		0.503695, -0.738106, 0.448877,
		29.349638, 36.308975, 17.095863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668638, 36.733833, 16.407442>,  <28.997053, 36.825649, 16.781651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668638, 36.733833, 16.407442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560144, 36.403839, 16.605766>,  <29.495049, 36.205841, 16.724762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.560144, 36.403839, 16.605766>,  <29.668638, 36.733833, 16.407442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560144, 36.403839, 16.605766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235253, -0.442678, -0.865270,
		0.933322, -0.351331, -0.074012,
		-0.271232, -0.824987, 0.495812,
		29.478775, 36.156342, 16.754509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891407, 36.212868, 16.035892>,  <29.668638, 36.733833, 16.407442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891407, 36.212868, 16.035892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589235, 36.045048, 16.237211>,  <29.407932, 35.944355, 16.358004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589235, 36.045048, 16.237211>,  <29.891407, 36.212868, 16.035892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589235, 36.045048, 16.237211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299287, -0.462374, -0.834648,
		0.582886, -0.781147, 0.223726,
		-0.755428, -0.419546, 0.503298,
		29.362606, 35.919186, 16.388201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933565, 35.544735, 15.967154>,  <29.891407, 36.212868, 16.035892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933565, 35.544735, 15.967154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555796, 35.634838, 16.062920>,  <29.329134, 35.688900, 16.120378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.555796, 35.634838, 16.062920>,  <29.933565, 35.544735, 15.967154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555796, 35.634838, 16.062920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320250, -0.466136, -0.824717,
		-0.074177, -0.855555, 0.512370,
		-0.944425, 0.225262, 0.239416,
		29.272469, 35.702415, 16.134745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626511, 34.920464, 15.992334>,  <29.933565, 35.544735, 15.967154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626511, 34.920464, 15.992334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303932, 35.153259, 15.950522>,  <29.110384, 35.292938, 15.925435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303932, 35.153259, 15.950522>,  <29.626511, 34.920464, 15.992334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303932, 35.153259, 15.950522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464764, -0.733172, -0.496439,
		-0.365562, -0.351771, 0.861755,
		-0.806448, 0.581992, -0.104529,
		29.061998, 35.327858, 15.919164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092987, 34.443222, 16.158504>,  <29.626511, 34.920464, 15.992334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092987, 34.443222, 16.158504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938494, 34.754501, 15.960422>,  <28.845798, 34.941269, 15.841572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.938494, 34.754501, 15.960422>,  <29.092987, 34.443222, 16.158504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938494, 34.754501, 15.960422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508149, -0.627565, -0.589870,
		-0.769812, 0.023813, 0.637827,
		-0.386231, 0.778200, -0.495207,
		28.822624, 34.987961, 15.811860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737934, 34.594318, 16.799351>,  <29.092987, 34.443222, 16.158504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737934, 34.594318, 16.799351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533901, 34.279659, 16.660210>,  <28.411482, 34.090862, 16.576725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.533901, 34.279659, 16.660210>,  <28.737934, 34.594318, 16.799351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533901, 34.279659, 16.660210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684048, 0.125835, 0.718501,
		-0.521437, 0.604440, -0.602293,
		-0.510080, -0.786650, -0.347851,
		28.380877, 34.043663, 16.555855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134247, 34.767071, 16.784845>,  <28.737934, 34.594318, 16.799351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134247, 34.767071, 16.784845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147247, 34.368702, 16.818510>,  <28.155048, 34.129681, 16.838709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.147247, 34.368702, 16.818510>,  <28.134247, 34.767071, 16.784845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147247, 34.368702, 16.818510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639882, 0.043952, 0.767215,
		-0.767785, -0.078789, -0.635844,
		0.032501, -0.995922, 0.084161,
		28.156998, 34.069927, 16.843758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391743, 34.543507, 16.790512>,  <28.134247, 34.767071, 16.784845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391743, 34.543507, 16.790512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625032, 34.262760, 16.954086>,  <27.765007, 34.094311, 17.052231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625032, 34.262760, 16.954086>,  <27.391743, 34.543507, 16.790512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625032, 34.262760, 16.954086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548777, 0.030728, 0.835404,
		-0.598908, -0.711645, -0.367247,
		0.583226, -0.701867, 0.408938,
		27.800001, 34.052200, 17.076767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901146, 34.035145, 17.205067>,  <27.391743, 34.543507, 16.790512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901146, 34.035145, 17.205067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248783, 33.925949, 17.370066>,  <27.457365, 33.860432, 17.469065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248783, 33.925949, 17.370066>,  <26.901146, 34.035145, 17.205067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248783, 33.925949, 17.370066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449813, -0.089253, 0.888652,
		-0.205782, -0.957866, -0.200366,
		0.869092, -0.272995, 0.412494,
		27.509512, 33.844051, 17.493814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846809, 33.375175, 17.562109>,  <26.901146, 34.035145, 17.205067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846809, 33.375175, 17.562109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171345, 33.533115, 17.734541>,  <27.366066, 33.627880, 17.837999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.171345, 33.533115, 17.734541>,  <26.846809, 33.375175, 17.562109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171345, 33.533115, 17.734541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480505, 0.030461, 0.876463,
		0.332937, -0.918242, 0.214440,
		0.811337, 0.394847, 0.431078,
		27.414745, 33.651569, 17.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926878, 33.023071, 18.286282>,  <26.846809, 33.375175, 17.562109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926878, 33.023071, 18.286282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121220, 33.372684, 18.284916>,  <27.237825, 33.582451, 18.284096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121220, 33.372684, 18.284916>,  <26.926878, 33.023071, 18.286282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121220, 33.372684, 18.284916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210291, 0.120686, 0.970161,
		0.848364, -0.470640, 0.242437,
		0.485855, 0.874032, -0.003414,
		27.266975, 33.634895, 18.283892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346962, 33.073540, 18.961773>,  <26.926878, 33.023071, 18.286282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346962, 33.073540, 18.961773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303583, 33.451775, 18.839067>,  <27.277555, 33.678715, 18.765444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303583, 33.451775, 18.839067>,  <27.346962, 33.073540, 18.961773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303583, 33.451775, 18.839067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151465, 0.289263, 0.945190,
		0.982495, 0.148968, 0.111854,
		-0.108448, 0.945587, -0.306763,
		27.271049, 33.735451, 18.747038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687963, 33.392815, 19.487535>,  <27.346962, 33.073540, 18.961773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687963, 33.392815, 19.487535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451071, 33.671394, 19.325441>,  <27.308935, 33.838543, 19.228184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451071, 33.671394, 19.325441>,  <27.687963, 33.392815, 19.487535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451071, 33.671394, 19.325441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255169, 0.314933, 0.914170,
		0.764298, 0.644804, -0.008800,
		-0.592232, 0.696452, -0.405236,
		27.273401, 33.880329, 19.203871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175610, 33.263783, 20.044735>,  <27.687963, 33.392815, 19.487535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175610, 33.263783, 20.044735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060680, 32.912556, 20.197805>,  <27.991724, 32.701820, 20.289648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060680, 32.912556, 20.197805>,  <28.175610, 33.263783, 20.044735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060680, 32.912556, 20.197805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229735, -0.451037, -0.862431,
		0.929875, -0.159881, 0.331316,
		-0.287322, -0.878068, 0.382678,
		27.974483, 32.649136, 20.312609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667925, 32.748142, 19.967285>,  <28.175610, 33.263783, 20.044735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667925, 32.748142, 19.967285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336395, 32.524929, 19.983500>,  <28.137478, 32.390999, 19.993229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336395, 32.524929, 19.983500>,  <28.667925, 32.748142, 19.967285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336395, 32.524929, 19.983500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331445, -0.548067, -0.767962,
		0.450769, -0.623070, 0.639211,
		-0.828825, -0.558037, 0.040538,
		28.087748, 32.357517, 19.995661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720112, 32.191292, 19.488182>,  <28.667925, 32.748142, 19.967285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720112, 32.191292, 19.488182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369221, 32.080799, 19.645237>,  <28.158686, 32.014503, 19.739470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.369221, 32.080799, 19.645237>,  <28.720112, 32.191292, 19.488182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369221, 32.080799, 19.645237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010045, -0.828258, -0.560258,
		0.479966, -0.487531, 0.729347,
		-0.877230, -0.276231, 0.392638,
		28.106052, 31.997931, 19.763029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809118, 31.589558, 19.908379>,  <28.720112, 32.191292, 19.488182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809118, 31.589558, 19.908379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435722, 31.585140, 19.765007>,  <28.211685, 31.582489, 19.678984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.435722, 31.585140, 19.765007>,  <28.809118, 31.589558, 19.908379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435722, 31.585140, 19.765007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187912, -0.866368, -0.462705,
		-0.305421, -0.499285, 0.810822,
		-0.933492, -0.011043, -0.358429,
		28.155674, 31.581827, 19.657478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350367, 31.001921, 20.179808>,  <28.809118, 31.589558, 19.908379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350367, 31.001921, 20.179808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238525, 31.120993, 19.814686>,  <28.171421, 31.192436, 19.595613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.238525, 31.120993, 19.814686>,  <28.350367, 31.001921, 20.179808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238525, 31.120993, 19.814686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133793, -0.929365, -0.344065,
		-0.950749, -0.218327, 0.220024,
		-0.279601, 0.297681, -0.912803,
		28.154644, 31.210297, 19.540846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930279, 30.385357, 19.940001>,  <28.350367, 31.001921, 20.179808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930279, 30.385357, 19.940001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954411, 30.600725, 19.603794>,  <27.968889, 30.729946, 19.402071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.954411, 30.600725, 19.603794>,  <27.930279, 30.385357, 19.940001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954411, 30.600725, 19.603794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194449, -0.832256, -0.519172,
		-0.979056, -0.132116, -0.154905,
		0.060329, 0.538419, -0.840515,
		27.972509, 30.762251, 19.351639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520050, 30.045731, 19.403257>,  <27.930279, 30.385357, 19.940001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520050, 30.045731, 19.403257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791349, 30.254034, 19.195879>,  <27.954128, 30.379017, 19.071451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.791349, 30.254034, 19.195879>,  <27.520050, 30.045731, 19.403257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.791349, 30.254034, 19.195879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006293, -0.709621, -0.704555,
		-0.734806, 0.474601, -0.484576,
		0.678248, 0.520761, -0.518447,
		27.994823, 30.410263, 19.040344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215712, 30.231844, 18.649591>,  <27.520050, 30.045731, 19.403257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215712, 30.231844, 18.649591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615246, 30.218779, 18.663803>,  <27.854965, 30.210939, 18.672331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615246, 30.218779, 18.663803>,  <27.215712, 30.231844, 18.649591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615246, 30.218779, 18.663803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013391, -0.519684, -0.854254,
		0.046368, 0.853734, -0.518641,
		0.998835, -0.032665, 0.035529,
		27.914896, 30.208979, 18.674461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408136, 30.350193, 17.968008>,  <27.215712, 30.231844, 18.649591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408136, 30.350193, 17.968008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751566, 30.206310, 18.114138>,  <27.957624, 30.119982, 18.201817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.751566, 30.206310, 18.114138>,  <27.408136, 30.350193, 17.968008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.751566, 30.206310, 18.114138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136334, -0.526728, -0.839030,
		0.494231, 0.770175, -0.403195,
		0.858574, -0.359705, 0.365326,
		28.009138, 30.098398, 18.223736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.347157, 39.434124, 31.513313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.734642, 39.380543, 31.596888>,  <27.967133, 39.348396, 31.647032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.734642, 39.380543, 31.596888>,  <27.347157, 39.434124, 31.513313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734642, 39.380543, 31.596888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160754, -0.302739, -0.939418,
		0.189089, 0.943613, -0.271734,
		0.968712, -0.133951, 0.208934,
		28.025255, 39.340359, 31.659569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699759, 39.709629, 30.975773>,  <27.347157, 39.434124, 31.513313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699759, 39.709629, 30.975773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.922224, 39.421021, 31.140741>,  <28.055704, 39.247856, 31.239721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.922224, 39.421021, 31.140741>,  <27.699759, 39.709629, 30.975773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922224, 39.421021, 31.140741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021603, -0.508633, -0.860712,
		0.830792, 0.469787, -0.298470,
		0.556164, -0.721521, 0.412419,
		28.089073, 39.204563, 31.264467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299623, 39.628452, 30.547476>,  <27.699759, 39.709629, 30.975773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299623, 39.628452, 30.547476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.221375, 39.295422, 30.754763>,  <28.174425, 39.095604, 30.879135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.221375, 39.295422, 30.754763>,  <28.299623, 39.628452, 30.547476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221375, 39.295422, 30.754763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091801, -0.541651, -0.835575,
		0.976373, -0.115883, 0.182390,
		-0.195621, -0.832577, 0.518216,
		28.162687, 39.045647, 30.910227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854195, 39.097946, 30.317032>,  <28.299623, 39.628452, 30.547476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854195, 39.097946, 30.317032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.541656, 38.906399, 30.477121>,  <28.354134, 38.791470, 30.573175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.541656, 38.906399, 30.477121>,  <28.854195, 39.097946, 30.317032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541656, 38.906399, 30.477121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038398, -0.676959, -0.735018,
		0.622915, -0.558936, 0.547327,
		-0.781346, -0.478871, 0.400226,
		28.307253, 38.762737, 30.597189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046881, 38.492535, 30.409370>,  <28.854195, 39.097946, 30.317032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046881, 38.492535, 30.409370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.648106, 38.483833, 30.379316>,  <28.408840, 38.478615, 30.361284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.648106, 38.483833, 30.379316>,  <29.046881, 38.492535, 30.409370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648106, 38.483833, 30.379316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070629, -0.663118, -0.745175,
		-0.033617, -0.748199, 0.662622,
		-0.996936, -0.021750, -0.075137,
		28.349026, 38.477310, 30.356775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947657, 37.738678, 30.124126>,  <29.046881, 38.492535, 30.409370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947657, 37.738678, 30.124126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593143, 37.920509, 30.088654>,  <28.380436, 38.029606, 30.067369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.593143, 37.920509, 30.088654>,  <28.947657, 37.738678, 30.124126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593143, 37.920509, 30.088654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217018, -0.576764, -0.787557,
		-0.409153, -0.678752, 0.609827,
		-0.886283, 0.454575, -0.088684,
		28.327259, 38.056881, 30.062048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493887, 37.183498, 30.218266>,  <28.947657, 37.738678, 30.124126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493887, 37.183498, 30.218266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.324875, 37.481171, 30.011318>,  <28.223467, 37.659775, 29.887150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.324875, 37.481171, 30.011318>,  <28.493887, 37.183498, 30.218266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324875, 37.481171, 30.011318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193799, -0.631806, -0.750509,
		-0.885387, -0.216847, 0.411177,
		-0.422530, 0.744177, -0.517368,
		28.198116, 37.704422, 29.856108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934166, 36.924530, 29.827703>,  <28.493887, 37.183498, 30.218266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934166, 36.924530, 29.827703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.962687, 37.254467, 29.603365>,  <27.979799, 37.452431, 29.468761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.962687, 37.254467, 29.603365>,  <27.934166, 36.924530, 29.827703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962687, 37.254467, 29.603365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165335, -0.544725, -0.822155,
		-0.983657, 0.151350, 0.097534,
		0.071303, 0.824844, -0.560846,
		27.984077, 37.501919, 29.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326807, 36.947800, 29.410030>,  <27.934166, 36.924530, 29.827703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326807, 36.947800, 29.410030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.593603, 37.197601, 29.247492>,  <27.753681, 37.347485, 29.149969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.593603, 37.197601, 29.247492>,  <27.326807, 36.947800, 29.410030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593603, 37.197601, 29.247492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187897, -0.386768, -0.902832,
		-0.720986, 0.678530, -0.140627,
		0.666988, 0.624506, -0.406348,
		27.793699, 37.384953, 29.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004539, 37.142796, 28.748457>,  <27.326807, 36.947800, 29.410030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004539, 37.142796, 28.748457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.398285, 37.208214, 28.722294>,  <27.634533, 37.247463, 28.706596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.398285, 37.208214, 28.722294>,  <27.004539, 37.142796, 28.748457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398285, 37.208214, 28.722294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020120, -0.264498, -0.964176,
		-0.174985, 0.950418, -0.257072,
		0.984366, 0.163544, -0.065406,
		27.693594, 37.257278, 28.702673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177666, 37.468941, 28.118864>,  <27.004539, 37.142796, 28.748457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177666, 37.468941, 28.118864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.516396, 37.284416, 28.224751>,  <27.719633, 37.173702, 28.288282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.516396, 37.284416, 28.224751>,  <27.177666, 37.468941, 28.118864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516396, 37.284416, 28.224751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027414, -0.534904, -0.844468,
		0.531162, 0.707861, -0.465617,
		0.846827, -0.461314, 0.264716,
		27.770443, 37.146023, 28.304165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555956, 37.355160, 27.466328>,  <27.177666, 37.468941, 28.118864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555956, 37.355160, 27.466328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733946, 37.092152, 27.709526>,  <27.840740, 36.934345, 27.855446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.733946, 37.092152, 27.709526>,  <27.555956, 37.355160, 27.466328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733946, 37.092152, 27.709526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181971, -0.598364, -0.780286,
		0.876860, 0.457845, -0.146607,
		0.444975, -0.657524, 0.607996,
		27.867437, 36.894894, 27.891926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380617, 37.680042, 26.717230>,  <27.555956, 37.355160, 27.466328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380617, 37.680042, 26.717230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.982176, 37.714947, 26.712105>,  <26.743111, 37.735889, 26.709030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.982176, 37.714947, 26.712105>,  <27.380617, 37.680042, 26.717230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982176, 37.714947, 26.712105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065403, 0.828325, 0.556418,
		0.059166, 0.553412, -0.830804,
		-0.996104, 0.087257, -0.012814,
		26.683344, 37.741123, 26.708261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240427, 38.432796, 26.446489>,  <27.380617, 37.680042, 26.717230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240427, 38.432796, 26.446489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.911400, 38.335903, 26.652285>,  <26.713984, 38.277767, 26.775763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.911400, 38.335903, 26.652285>,  <27.240427, 38.432796, 26.446489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911400, 38.335903, 26.652285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000665, 0.905144, 0.425106,
		-0.568663, 0.349337, -0.744705,
		-0.822570, -0.242237, 0.514489,
		26.664629, 38.263233, 26.806631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737738, 39.066666, 26.442019>,  <27.240427, 38.432796, 26.446489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737738, 39.066666, 26.442019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.626926, 38.831158, 26.745758>,  <26.560440, 38.689854, 26.928001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.626926, 38.831158, 26.745758>,  <26.737738, 39.066666, 26.442019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626926, 38.831158, 26.745758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204203, 0.808300, 0.552225,
		-0.938913, -0.002080, -0.344150,
		-0.277027, -0.588767, 0.759348,
		26.543818, 38.654526, 26.973562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183317, 39.414047, 26.638769>,  <26.737738, 39.066666, 26.442019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183317, 39.414047, 26.638769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.295034, 39.166214, 26.932192>,  <26.362064, 39.017513, 27.108246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.295034, 39.166214, 26.932192>,  <26.183317, 39.414047, 26.638769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295034, 39.166214, 26.932192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164421, 0.783536, 0.599197,
		-0.946024, -0.046738, 0.320708,
		0.279291, -0.619586, 0.733559,
		26.378822, 38.980339, 27.152260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713079, 39.576321, 27.202185>,  <26.183317, 39.414047, 26.638769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713079, 39.576321, 27.202185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.012699, 39.370399, 27.368994>,  <26.192471, 39.246849, 27.469080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.012699, 39.370399, 27.368994>,  <25.713079, 39.576321, 27.202185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012699, 39.370399, 27.368994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145172, 0.741694, 0.654840,
		-0.646414, -0.429967, 0.630299,
		0.749049, -0.514799, 0.417022,
		26.237413, 39.215961, 27.494101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680004, 39.683147, 27.911417>,  <25.713079, 39.576321, 27.202185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680004, 39.683147, 27.911417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.055222, 39.546066, 27.890917>,  <26.280352, 39.463818, 27.878616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.055222, 39.546066, 27.890917>,  <25.680004, 39.683147, 27.911417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055222, 39.546066, 27.890917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255691, 0.584747, 0.769866,
		-0.233866, -0.735273, 0.636145,
		0.938045, -0.342702, -0.051251,
		26.336636, 39.443256, 27.875542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859730, 39.595001, 28.576187>,  <25.680004, 39.683147, 27.911417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859730, 39.595001, 28.576187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.202425, 39.639217, 28.374681>,  <26.408043, 39.665749, 28.253778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.202425, 39.639217, 28.374681>,  <25.859730, 39.595001, 28.576187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202425, 39.639217, 28.374681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397415, 0.481059, 0.781437,
		0.328721, -0.869691, 0.368211,
		0.856740, 0.110542, -0.503762,
		26.459446, 39.672379, 28.223553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294174, 39.518597, 29.111876>,  <25.859730, 39.595001, 28.576187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294174, 39.518597, 29.111876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.503096, 39.700871, 28.823555>,  <26.628448, 39.810234, 28.650562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.503096, 39.700871, 28.823555>,  <26.294174, 39.518597, 29.111876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503096, 39.700871, 28.823555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412822, 0.604499, 0.681292,
		0.746177, -0.653403, 0.127614,
		0.522300, 0.455683, -0.720802,
		26.659786, 39.837574, 28.607315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.988327, 39.543804, 29.266718>,  <26.294174, 39.518597, 29.111876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.988327, 39.543804, 29.266718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.977301, 39.828461, 28.985916>,  <26.970686, 39.999252, 28.817434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.977301, 39.828461, 28.985916>,  <26.988327, 39.543804, 29.266718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977301, 39.828461, 28.985916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425886, 0.643708, 0.635815,
		0.904357, -0.281449, -0.320820,
		-0.027565, 0.711637, -0.702007,
		26.969030, 40.041950, 28.775314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708298, 39.882915, 29.196054>,  <26.988327, 39.543804, 29.266718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708298, 39.882915, 29.196054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.458651, 40.162472, 29.056324>,  <27.308863, 40.330204, 28.972486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.458651, 40.162472, 29.056324>,  <27.708298, 39.882915, 29.196054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458651, 40.162472, 29.056324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305081, 0.629582, 0.714529,
		0.719305, 0.339379, -0.606153,
		-0.624120, 0.698890, -0.349324,
		27.271414, 40.372139, 28.951527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020292, 40.500156, 29.183537>,  <27.708298, 39.882915, 29.196054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020292, 40.500156, 29.183537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638798, 40.618771, 29.203342>,  <27.409901, 40.689938, 29.215225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638798, 40.618771, 29.203342>,  <28.020292, 40.500156, 29.183537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638798, 40.618771, 29.203342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238920, 0.647612, 0.723544,
		0.182491, 0.701901, -0.688500,
		-0.953737, 0.296536, 0.049515,
		27.352676, 40.707733, 29.218197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999886, 41.265629, 29.134771>,  <28.020292, 40.500156, 29.183537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999886, 41.265629, 29.134771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.637991, 41.174568, 29.278788>,  <27.420855, 41.119930, 29.365198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.637991, 41.174568, 29.278788>,  <27.999886, 41.265629, 29.134771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.637991, 41.174568, 29.278788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040395, 0.795554, 0.604534,
		-0.424056, 0.561487, -0.710569,
		-0.904735, -0.227652, 0.360041,
		27.366571, 41.106274, 29.386801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675634, 41.833237, 29.155939>,  <27.999886, 41.265629, 29.134771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675634, 41.833237, 29.155939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.438290, 41.622795, 29.399626>,  <27.295883, 41.496532, 29.545837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.438290, 41.622795, 29.399626>,  <27.675634, 41.833237, 29.155939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438290, 41.622795, 29.399626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019653, 0.747153, 0.664361,
		-0.804698, 0.406178, -0.432991,
		-0.593360, -0.526100, 0.609215,
		27.260283, 41.464966, 29.582390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198978, 42.315441, 29.340528>,  <27.675634, 41.833237, 29.155939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198978, 42.315441, 29.340528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.182484, 42.032516, 29.622808>,  <27.172586, 41.862762, 29.792177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.182484, 42.032516, 29.622808>,  <27.198978, 42.315441, 29.340528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182484, 42.032516, 29.622808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138928, 0.703500, 0.696984,
		-0.989443, -0.069301, -0.127275,
		-0.041236, -0.707309, 0.705701,
		27.170113, 41.820324, 29.834518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284582, 42.229225, 28.624216>,  <27.198978, 42.315441, 29.340528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284582, 42.229225, 28.624216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.291033, 42.628532, 28.646856>,  <27.294903, 42.868118, 28.660440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.291033, 42.628532, 28.646856>,  <27.284582, 42.229225, 28.624216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291033, 42.628532, 28.646856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598991, 0.035679, -0.799960,
		-0.800593, 0.046805, -0.597377,
		0.016129, 0.998267, 0.056600,
		27.295872, 42.928013, 28.663836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919289, 42.766266, 28.148520>,  <27.284582, 42.229225, 28.624216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919289, 42.766266, 28.148520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.284222, 42.863400, 28.280386>,  <27.503181, 42.921680, 28.359505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.284222, 42.863400, 28.280386>,  <26.919289, 42.766266, 28.148520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284222, 42.863400, 28.280386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371929, -0.154811, -0.915261,
		-0.171223, 0.957634, -0.231558,
		0.912333, 0.242837, 0.329665,
		27.557922, 42.936249, 28.379286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232847, 43.374615, 27.805777>,  <26.919289, 42.766266, 28.148520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232847, 43.374615, 27.805777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541403, 43.157799, 27.939133>,  <27.726536, 43.027710, 28.019146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541403, 43.157799, 27.939133>,  <27.232847, 43.374615, 27.805777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541403, 43.157799, 27.939133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334299, -0.100617, -0.937081,
		0.541483, 0.834305, 0.103590,
		0.771389, -0.542043, 0.333389,
		27.772820, 42.995186, 28.039150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748392, 43.632053, 27.381115>,  <27.232847, 43.374615, 27.805777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748392, 43.632053, 27.381115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.912594, 43.296860, 27.524933>,  <28.011114, 43.095745, 27.611223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.912594, 43.296860, 27.524933>,  <27.748392, 43.632053, 27.381115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912594, 43.296860, 27.524933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235857, -0.283303, -0.929576,
		0.880828, 0.466396, 0.081347,
		0.410504, -0.837982, 0.359544,
		28.035746, 43.045464, 27.632795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438807, 43.466537, 27.035349>,  <27.748392, 43.632053, 27.381115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438807, 43.466537, 27.035349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.282639, 43.124493, 27.171793>,  <28.188938, 42.919266, 27.253660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.282639, 43.124493, 27.171793>,  <28.438807, 43.466537, 27.035349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282639, 43.124493, 27.171793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189224, -0.437140, -0.879262,
		0.900981, -0.278735, 0.332476,
		-0.390420, -0.855111, 0.341112,
		28.165512, 42.867958, 27.274126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781870, 43.013718, 26.688694>,  <28.438807, 43.466537, 27.035349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781870, 43.013718, 26.688694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.492300, 42.759079, 26.795034>,  <28.318558, 42.606297, 26.858839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.492300, 42.759079, 26.795034>,  <28.781870, 43.013718, 26.688694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492300, 42.759079, 26.795034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118363, -0.494260, -0.861219,
		0.679649, -0.591990, 0.433157,
		-0.723925, -0.636596, 0.265853,
		28.275122, 42.568100, 26.874790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102825, 42.432781, 26.536888>,  <28.781870, 43.013718, 26.688694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102825, 42.432781, 26.536888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709881, 42.365776, 26.570124>,  <28.474113, 42.325573, 26.590065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.709881, 42.365776, 26.570124>,  <29.102825, 42.432781, 26.536888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709881, 42.365776, 26.570124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042405, -0.632357, -0.773516,
		0.182117, -0.756349, 0.628307,
		-0.982362, -0.167514, 0.083091,
		28.415173, 42.315521, 26.595051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979780, 41.735901, 26.642611>,  <29.102825, 42.432781, 26.536888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979780, 41.735901, 26.642611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.612375, 41.843624, 26.526812>,  <28.391932, 41.908257, 26.457333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.612375, 41.843624, 26.526812>,  <28.979780, 41.735901, 26.642611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612375, 41.843624, 26.526812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002928, -0.736789, -0.676117,
		-0.395381, -0.620174, 0.677538,
		-0.918513, 0.269307, -0.289496,
		28.336821, 41.924416, 26.439962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656513, 41.095768, 26.512074>,  <28.979780, 41.735901, 26.642611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656513, 41.095768, 26.512074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402796, 41.354755, 26.343096>,  <28.250565, 41.510147, 26.241709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.402796, 41.354755, 26.343096>,  <28.656513, 41.095768, 26.512074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402796, 41.354755, 26.343096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043008, -0.575143, -0.816922,
		-0.771895, -0.500000, 0.392656,
		-0.634294, 0.647465, -0.422445,
		28.212507, 41.548996, 26.216362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226423, 40.585762, 26.210903>,  <28.656513, 41.095768, 26.512074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226423, 40.585762, 26.210903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152756, 40.921696, 26.006641>,  <28.108555, 41.123257, 25.884085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152756, 40.921696, 26.006641>,  <28.226423, 40.585762, 26.210903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152756, 40.921696, 26.006641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212052, -0.541254, -0.813682,
		-0.959748, -0.041568, 0.277769,
		-0.184167, 0.839831, -0.510653,
		28.097506, 41.173645, 25.853445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687325, 40.405468, 25.779995>,  <28.226423, 40.585762, 26.210903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687325, 40.405468, 25.779995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.844410, 40.727135, 25.601515>,  <27.938662, 40.920135, 25.494427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.844410, 40.727135, 25.601515>,  <27.687325, 40.405468, 25.779995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844410, 40.727135, 25.601515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168182, -0.414197, -0.894514,
		-0.904153, 0.426329, -0.027414,
		0.392712, 0.804167, -0.446199,
		27.962223, 40.968384, 25.467655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177691, 40.598526, 25.301260>,  <27.687325, 40.405468, 25.779995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177691, 40.598526, 25.301260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.529741, 40.751637, 25.188932>,  <27.740973, 40.843502, 25.121536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.529741, 40.751637, 25.188932>,  <27.177691, 40.598526, 25.301260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529741, 40.751637, 25.188932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151452, -0.334224, -0.930246,
		-0.449929, 0.861266, -0.236188,
		0.880128, 0.382774, -0.280817,
		27.793779, 40.866470, 25.104687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156448, 40.611946, 24.609013>,  <27.177691, 40.598526, 25.301260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156448, 40.611946, 24.609013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.538107, 40.730228, 24.627615>,  <27.767101, 40.801197, 24.638777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.538107, 40.730228, 24.627615>,  <27.156448, 40.611946, 24.609013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538107, 40.730228, 24.627615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145312, -0.321727, -0.935615,
		-0.261708, 0.899471, -0.349945,
		0.954145, 0.295709, 0.046505,
		27.824350, 40.818943, 24.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275551, 40.958080, 24.008007>,  <27.156448, 40.611946, 24.609013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275551, 40.958080, 24.008007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.614134, 40.802254, 24.153194>,  <27.817284, 40.708759, 24.240307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.614134, 40.802254, 24.153194>,  <27.275551, 40.958080, 24.008007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614134, 40.802254, 24.153194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259731, -0.292983, -0.920163,
		0.464808, 0.873155, -0.146815,
		0.846459, -0.389567, 0.362966,
		27.868073, 40.685383, 24.262085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639698, 41.031643, 23.411106>,  <27.275551, 40.958080, 24.008007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639698, 41.031643, 23.411106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.805401, 40.754959, 23.647728>,  <27.904821, 40.588951, 23.789701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.805401, 40.754959, 23.647728>,  <27.639698, 41.031643, 23.411106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805401, 40.754959, 23.647728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333090, -0.489640, -0.805794,
		0.847020, 0.530846, 0.027564,
		0.414255, -0.691705, 0.591554,
		27.929678, 40.547447, 23.825193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275770, 40.886272, 23.121086>,  <27.639698, 41.031643, 23.411106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275770, 40.886272, 23.121086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.199720, 40.566074, 23.348440>,  <28.154091, 40.373955, 23.484852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.199720, 40.566074, 23.348440>,  <28.275770, 40.886272, 23.121086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199720, 40.566074, 23.348440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258589, -0.599332, -0.757583,
		0.947093, 0.002944, 0.320945,
		-0.190122, -0.800495, 0.568385,
		28.142683, 40.325928, 23.518955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837259, 40.553268, 23.120434>,  <28.275770, 40.886272, 23.121086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837259, 40.553268, 23.120434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546974, 40.294121, 23.213041>,  <28.372803, 40.138630, 23.268606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.546974, 40.294121, 23.213041>,  <28.837259, 40.553268, 23.120434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546974, 40.294121, 23.213041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406032, -0.674973, -0.616076,
		0.555406, -0.353092, 0.752895,
		-0.725715, -0.647872, 0.231518,
		28.329260, 40.099758, 23.282497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164022, 40.017071, 23.410004>,  <28.837259, 40.553268, 23.120434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164022, 40.017071, 23.410004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813995, 39.842712, 23.325863>,  <28.603979, 39.738098, 23.275377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813995, 39.842712, 23.325863>,  <29.164022, 40.017071, 23.410004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813995, 39.842712, 23.325863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477988, -0.710023, -0.517102,
		0.076049, -0.553045, 0.829673,
		-0.875068, -0.435898, -0.210353,
		28.551476, 39.711945, 23.262756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158146, 39.219227, 23.487379>,  <29.164022, 40.017071, 23.410004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158146, 39.219227, 23.487379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871809, 39.286221, 23.216227>,  <28.700006, 39.326416, 23.053535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.871809, 39.286221, 23.216227>,  <29.158146, 39.219227, 23.487379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871809, 39.286221, 23.216227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372755, -0.729247, -0.573805,
		-0.590446, -0.663436, 0.459594,
		-0.715840, 0.167485, -0.677881,
		28.657057, 39.336468, 23.012863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037128, 38.494137, 23.162033>,  <29.158146, 39.219227, 23.487379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037128, 38.494137, 23.162033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836924, 38.713028, 22.893696>,  <28.716801, 38.844360, 22.732693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836924, 38.713028, 22.893696>,  <29.037128, 38.494137, 23.162033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836924, 38.713028, 22.893696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172966, -0.696058, -0.696840,
		-0.848274, -0.464810, 0.253735,
		-0.500513, 0.547224, -0.670845,
		28.686769, 38.877193, 22.692442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631964, 38.016399, 22.778061>,  <29.037128, 38.494137, 23.162033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631964, 38.016399, 22.778061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669748, 38.337448, 22.542475>,  <28.692419, 38.530075, 22.401123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.669748, 38.337448, 22.542475>,  <28.631964, 38.016399, 22.778061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669748, 38.337448, 22.542475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151602, -0.596309, -0.788310,
		-0.983918, -0.014823, -0.178007,
		0.094463, 0.802618, -0.588966,
		28.698088, 38.578232, 22.365786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156813, 38.017872, 22.198252>,  <28.631964, 38.016399, 22.778061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156813, 38.017872, 22.198252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.458323, 38.256775, 22.088631>,  <28.639229, 38.400116, 22.022858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.458323, 38.256775, 22.088631>,  <28.156813, 38.017872, 22.198252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458323, 38.256775, 22.088631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265559, -0.658329, -0.704330,
		-0.601084, 0.458129, -0.654840,
		0.753775, 0.597260, -0.274051,
		28.684456, 38.435951, 22.006414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136297, 37.994389, 21.430910>,  <28.156813, 38.017872, 22.198252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136297, 37.994389, 21.430910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503239, 38.148014, 21.472782>,  <28.723404, 38.240189, 21.497906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.503239, 38.148014, 21.472782>,  <28.136297, 37.994389, 21.430910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503239, 38.148014, 21.472782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320627, -0.557023, -0.766110,
		-0.235923, 0.736358, -0.634127,
		0.917354, 0.384061, 0.104682,
		28.778444, 38.263233, 21.504187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391340, 38.106117, 20.782057>,  <28.136297, 37.994389, 21.430910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391340, 38.106117, 20.782057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718489, 38.117336, 21.011944>,  <28.914778, 38.124065, 21.149876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.718489, 38.117336, 21.011944>,  <28.391340, 38.106117, 20.782057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718489, 38.117336, 21.011944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525129, -0.444674, -0.725606,
		0.235211, 0.895253, -0.378414,
		0.817872, 0.028045, 0.574716,
		28.963850, 38.125751, 21.184359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864450, 38.408802, 20.440796>,  <28.391340, 38.106117, 20.782057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864450, 38.408802, 20.440796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.090303, 38.224300, 20.714565>,  <29.225815, 38.113598, 20.878826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.090303, 38.224300, 20.714565>,  <28.864450, 38.408802, 20.440796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090303, 38.224300, 20.714565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532137, -0.430430, -0.729082,
		0.630889, 0.775869, 0.002417,
		0.564632, -0.461256, 0.684422,
		29.259693, 38.085922, 20.919891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533682, 38.573586, 20.276537>,  <28.864450, 38.408802, 20.440796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533682, 38.573586, 20.276537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571835, 38.242188, 20.497261>,  <29.594727, 38.043346, 20.629696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571835, 38.242188, 20.497261>,  <29.533682, 38.573586, 20.276537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571835, 38.242188, 20.497261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521281, -0.430680, -0.736737,
		0.848038, 0.357918, 0.390802,
		0.095381, -0.828499, 0.551808,
		29.600449, 37.993637, 20.662804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341751, 38.337494, 20.298054>,  <29.533682, 38.573586, 20.276537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341751, 38.337494, 20.298054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.106483, 38.028225, 20.392935>,  <29.965324, 37.842663, 20.449863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.106483, 38.028225, 20.392935>,  <30.341751, 38.337494, 20.298054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106483, 38.028225, 20.392935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469019, -0.565040, -0.678786,
		0.658848, -0.287986, 0.694970,
		-0.588167, -0.773171, 0.237205,
		29.930033, 37.796272, 20.464096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809536, 37.728500, 20.284740>,  <30.341751, 38.337494, 20.298054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809536, 37.728500, 20.284740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432386, 37.615681, 20.213816>,  <30.206097, 37.547989, 20.171261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.432386, 37.615681, 20.213816>,  <30.809536, 37.728500, 20.284740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432386, 37.615681, 20.213816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271092, -0.340178, -0.900438,
		0.193652, -0.897065, 0.397207,
		-0.942872, -0.282051, -0.177312,
		30.149525, 37.531067, 20.160622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858255, 37.042103, 20.688707>,  <30.809536, 37.728500, 20.284740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858255, 37.042103, 20.688707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113350, 36.752144, 20.792871>,  <31.266407, 36.578167, 20.855370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.113350, 36.752144, 20.792871>,  <30.858255, 37.042103, 20.688707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113350, 36.752144, 20.792871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018792, 0.352627, 0.935576,
		-0.770025, -0.591757, 0.238505,
		0.637737, -0.724899, 0.260411,
		31.304670, 36.534676, 20.870995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672390, 36.636032, 21.333916>,  <30.858255, 37.042103, 20.688707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672390, 36.636032, 21.333916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065849, 36.687412, 21.283424>,  <31.301926, 36.718243, 21.253130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.065849, 36.687412, 21.283424>,  <30.672390, 36.636032, 21.333916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065849, 36.687412, 21.283424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064211, 0.404688, 0.912198,
		0.168255, -0.905388, 0.389823,
		0.983650, 0.128451, -0.126226,
		31.360945, 36.725948, 21.245556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068708, 36.301422, 21.977173>,  <30.672390, 36.636032, 21.333916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068708, 36.301422, 21.977173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261906, 36.598461, 21.791584>,  <31.377823, 36.776684, 21.680231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261906, 36.598461, 21.791584>,  <31.068708, 36.301422, 21.977173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261906, 36.598461, 21.791584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190429, 0.428110, 0.883436,
		0.854667, -0.515045, 0.065362,
		0.482992, 0.742597, -0.463971,
		31.406803, 36.821239, 21.652393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592543, 36.360455, 22.328339>,  <31.068708, 36.301422, 21.977173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592543, 36.360455, 22.328339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564987, 36.709679, 22.135250>,  <31.548454, 36.919212, 22.019396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564987, 36.709679, 22.135250>,  <31.592543, 36.360455, 22.328339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564987, 36.709679, 22.135250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076328, 0.487067, 0.870023,
		0.994700, 0.023091, -0.100193,
		-0.068890, 0.873059, -0.482723,
		31.544321, 36.971596, 21.990433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155338, 36.687237, 22.575279>,  <31.592543, 36.360455, 22.328339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155338, 36.687237, 22.575279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.936588, 36.981796, 22.415956>,  <31.805338, 37.158531, 22.320362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.936588, 36.981796, 22.415956>,  <32.155338, 36.687237, 22.575279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936588, 36.981796, 22.415956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121677, 0.540612, 0.832426,
		0.828323, 0.406771, -0.385251,
		-0.546878, 0.736394, -0.398307,
		31.772526, 37.202713, 22.296465>
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
