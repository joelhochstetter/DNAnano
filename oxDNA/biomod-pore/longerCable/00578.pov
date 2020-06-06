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
	<24.502211, 34.874069, 34.689045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289616, 34.789494, 35.017147>,  <24.162060, 34.738750, 35.214008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289616, 34.789494, 35.017147>,  <24.502211, 34.874069, 34.689045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289616, 34.789494, 35.017147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826448, 0.082918, 0.556874,
		-0.185757, 0.973868, 0.130671,
		-0.531487, -0.211437, 0.820254,
		24.130169, 34.726063, 35.263222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811983, 34.645752, 34.094963>,  <24.502211, 34.874069, 34.689045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811983, 34.645752, 34.094963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088736, 34.381813, 33.977730>,  <25.254787, 34.223450, 33.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.088736, 34.381813, 33.977730>,  <24.811983, 34.645752, 34.094963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.088736, 34.381813, 33.977730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659316, 0.411952, 0.628966,
		-0.294286, -0.628406, 0.720071,
		0.691880, -0.659850, -0.293086,
		25.296299, 34.183857, 33.889805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060308, 34.304527, 34.685730>,  <24.811983, 34.645752, 34.094963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060308, 34.304527, 34.685730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319065, 34.296223, 34.380810>,  <25.474319, 34.291241, 34.197857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.319065, 34.296223, 34.380810>,  <25.060308, 34.304527, 34.685730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319065, 34.296223, 34.380810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707887, 0.388103, 0.590146,
		0.283595, -0.921382, 0.265761,
		0.646892, -0.020766, -0.762299,
		25.513132, 34.289993, 34.152119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753563, 34.087311, 34.836071>,  <25.060308, 34.304527, 34.685730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753563, 34.087311, 34.836071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855171, 34.255611, 34.487717>,  <25.916136, 34.356590, 34.278706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855171, 34.255611, 34.487717>,  <25.753563, 34.087311, 34.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855171, 34.255611, 34.487717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931125, 0.137235, 0.337895,
		0.261686, -0.896735, -0.356913,
		0.254021, 0.420753, -0.870885,
		25.931377, 34.381836, 34.226452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313597, 33.698574, 34.510323>,  <25.753563, 34.087311, 34.836071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313597, 33.698574, 34.510323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274328, 34.091259, 34.445068>,  <26.250767, 34.326870, 34.405918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274328, 34.091259, 34.445068>,  <26.313597, 33.698574, 34.510323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274328, 34.091259, 34.445068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869322, 0.164387, 0.466108,
		0.484398, -0.096056, -0.869558,
		-0.098172, 0.981708, -0.163133,
		26.244877, 34.385773, 34.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842571, 33.856407, 34.050816>,  <26.313597, 33.698574, 34.510323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842571, 33.856407, 34.050816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715620, 34.127472, 34.316162>,  <26.639450, 34.290112, 34.475368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715620, 34.127472, 34.316162>,  <26.842571, 33.856407, 34.050816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715620, 34.127472, 34.316162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899508, -0.006364, 0.436859,
		0.300263, 0.735348, -0.607540,
		-0.317377, 0.677659, 0.663362,
		26.620407, 34.330769, 34.515171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202389, 34.537148, 33.998348>,  <26.842571, 33.856407, 34.050816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202389, 34.537148, 33.998348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061604, 34.419147, 34.353672>,  <26.977133, 34.348347, 34.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.061604, 34.419147, 34.353672>,  <27.202389, 34.537148, 33.998348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061604, 34.419147, 34.353672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933713, -0.044148, 0.355291,
		-0.065593, 0.954477, 0.290982,
		-0.351963, -0.294999, 0.888312,
		26.956015, 34.330647, 34.620167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268242, 35.009666, 34.510742>,  <27.202389, 34.537148, 33.998348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268242, 35.009666, 34.510742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296049, 34.631977, 34.639500>,  <27.312735, 34.405365, 34.716755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296049, 34.631977, 34.639500>,  <27.268242, 35.009666, 34.510742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296049, 34.631977, 34.639500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973125, 0.135197, 0.186411,
		-0.219532, 0.300280, 0.928244,
		0.069520, -0.944221, 0.321891,
		27.316906, 34.348709, 34.736065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676163, 35.023346, 35.243370>,  <27.268242, 35.009666, 34.510742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676163, 35.023346, 35.243370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723577, 34.707932, 35.001987>,  <27.752028, 34.518684, 34.857159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.723577, 34.707932, 35.001987>,  <27.676163, 35.023346, 35.243370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723577, 34.707932, 35.001987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984373, 0.013616, 0.175570,
		-0.130226, -0.614841, 0.777825,
		0.118538, -0.788534, -0.603459,
		27.759138, 34.471371, 34.820950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862566, 34.870140, 35.908432>,  <27.676163, 35.023346, 35.243370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862566, 34.870140, 35.908432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007893, 35.159328, 36.143486>,  <28.095089, 35.332840, 36.284519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007893, 35.159328, 36.143486>,  <27.862566, 34.870140, 35.908432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007893, 35.159328, 36.143486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733825, -0.166546, 0.658607,
		0.574023, -0.670502, 0.470026,
		0.363316, 0.722972, 0.587633,
		28.116888, 35.376221, 36.319775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112127, 34.507458, 36.537193>,  <27.862566, 34.870140, 35.908432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112127, 34.507458, 36.537193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990589, 34.885605, 36.584454>,  <27.917665, 35.112492, 36.612808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990589, 34.885605, 36.584454>,  <28.112127, 34.507458, 36.537193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990589, 34.885605, 36.584454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725952, -0.310049, 0.613892,
		0.616986, 0.100756, 0.780497,
		-0.303846, 0.945367, 0.118152,
		27.899435, 35.169216, 36.619900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.902430, 34.612415, 37.257702>,  <28.112127, 34.507458, 36.537193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.902430, 34.612415, 37.257702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710546, 34.867752, 37.016903>,  <27.595417, 35.020954, 36.872421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710546, 34.867752, 37.016903>,  <27.902430, 34.612415, 37.257702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710546, 34.867752, 37.016903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855779, -0.188918, 0.481614,
		0.193703, 0.746214, 0.636902,
		-0.479709, 0.638337, -0.602000,
		27.566633, 35.059254, 36.836304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612358, 35.031582, 37.622044>,  <27.902430, 34.612415, 37.257702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612358, 35.031582, 37.622044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426573, 34.981430, 37.271374>,  <27.315102, 34.951340, 37.060974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.426573, 34.981430, 37.271374>,  <27.612358, 35.031582, 37.622044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426573, 34.981430, 37.271374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827178, -0.292148, 0.480026,
		-0.316303, 0.948119, 0.031982,
		-0.464466, -0.125379, -0.876671,
		27.287233, 34.943817, 37.008373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030716, 35.425793, 37.547874>,  <27.612358, 35.031582, 37.622044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030716, 35.425793, 37.547874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991859, 35.088909, 37.335743>,  <26.968546, 34.886780, 37.208466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991859, 35.088909, 37.335743>,  <27.030716, 35.425793, 37.547874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991859, 35.088909, 37.335743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859105, -0.198070, 0.471919,
		-0.502497, 0.501448, -0.704306,
		-0.097140, -0.842210, -0.530325,
		26.962717, 34.836246, 37.176643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111309, 35.990257, 36.845108>,  <27.030716, 35.425793, 37.547874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111309, 35.990257, 36.845108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375277, 35.713905, 36.963219>,  <27.533657, 35.548096, 37.034084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375277, 35.713905, 36.963219>,  <27.111309, 35.990257, 36.845108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375277, 35.713905, 36.963219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647255, 0.323190, -0.690369,
		0.381530, 0.646710, 0.660455,
		0.659921, -0.690879, 0.295280,
		27.573254, 35.506641, 37.051804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716942, 36.396286, 36.981560>,  <27.111309, 35.990257, 36.845108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716942, 36.396286, 36.981560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806557, 36.014858, 36.901047>,  <27.860327, 35.786003, 36.852741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806557, 36.014858, 36.901047>,  <27.716942, 36.396286, 36.981560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806557, 36.014858, 36.901047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823301, 0.295700, -0.484496,
		0.521518, -0.057167, 0.851323,
		0.224039, -0.953569, -0.201278,
		27.873768, 35.728786, 36.840664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407417, 36.365177, 37.091648>,  <27.716942, 36.396286, 36.981560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407417, 36.365177, 37.091648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320915, 36.053761, 36.855984>,  <28.269014, 35.866913, 36.714584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.320915, 36.053761, 36.855984>,  <28.407417, 36.365177, 37.091648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320915, 36.053761, 36.855984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839545, 0.159760, -0.519269,
		0.498395, -0.606924, 0.619069,
		-0.216254, -0.778537, -0.589164,
		28.256039, 35.820198, 36.679234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919996, 35.789551, 37.121902>,  <28.407417, 36.365177, 37.091648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919996, 35.789551, 37.121902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746872, 35.779022, 36.761463>,  <28.642998, 35.772705, 36.545200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746872, 35.779022, 36.761463>,  <28.919996, 35.789551, 37.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746872, 35.779022, 36.761463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847467, 0.328930, -0.416658,
		0.307366, -0.943988, -0.120059,
		-0.432811, -0.026320, -0.901101,
		28.617029, 35.771126, 36.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486912, 35.574509, 36.612782>,  <28.919996, 35.789551, 37.121902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486912, 35.574509, 36.612782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223066, 35.774609, 36.388405>,  <29.064758, 35.894669, 36.253780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223066, 35.774609, 36.388405>,  <29.486912, 35.574509, 36.612782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223066, 35.774609, 36.388405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740515, 0.304827, -0.598931,
		-0.128627, -0.810449, -0.571514,
		-0.659616, 0.500253, -0.560941,
		29.025181, 35.924686, 36.220123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263800, 35.709358, 36.605225>,  <29.486912, 35.574509, 36.612782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263800, 35.709358, 36.605225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614525, 35.568520, 36.736206>,  <30.824961, 35.484016, 36.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614525, 35.568520, 36.736206>,  <30.263800, 35.709358, 36.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614525, 35.568520, 36.736206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291531, 0.930855, 0.220268,
		-0.382369, -0.097671, 0.918833,
		0.876815, -0.352092, 0.327456,
		30.877569, 35.462891, 36.834442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373405, 35.797005, 37.290600>,  <30.263800, 35.709358, 36.605225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373405, 35.797005, 37.290600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733765, 35.790779, 37.117100>,  <30.949980, 35.787045, 37.013000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733765, 35.790779, 37.117100>,  <30.373405, 35.797005, 37.290600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733765, 35.790779, 37.117100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196190, 0.906034, 0.374982,
		0.387155, -0.422918, 0.819300,
		0.900900, -0.015563, -0.433748,
		31.004034, 35.786110, 36.986977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768202, 36.255936, 37.668400>,  <30.373405, 35.797005, 37.290600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768202, 36.255936, 37.668400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023958, 36.198811, 37.366199>,  <31.177412, 36.164536, 37.184879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023958, 36.198811, 37.366199>,  <30.768202, 36.255936, 37.668400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023958, 36.198811, 37.366199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630481, 0.659794, 0.408858,
		0.440084, -0.737750, 0.511909,
		0.639390, -0.142817, -0.755502,
		31.215775, 36.155964, 37.139549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484236, 35.866264, 37.803436>,  <30.768202, 36.255936, 37.668400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484236, 35.866264, 37.803436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514978, 36.123852, 37.498962>,  <31.533424, 36.278404, 37.316280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514978, 36.123852, 37.498962>,  <31.484236, 35.866264, 37.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514978, 36.123852, 37.498962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736409, 0.478010, 0.478756,
		0.672156, -0.597338, -0.437485,
		0.076857, 0.643967, -0.761183,
		31.538036, 36.317043, 37.270607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163254, 35.918327, 37.385361>,  <31.484236, 35.866264, 37.803436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163254, 35.918327, 37.385361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965733, 36.263668, 37.426903>,  <31.847221, 36.470871, 37.451828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965733, 36.263668, 37.426903>,  <32.163254, 35.918327, 37.385361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965733, 36.263668, 37.426903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779105, 0.386211, 0.493798,
		0.386211, 0.324752, -0.863352,
		-0.493798, 0.863352, 0.103857,
		31.817593, 36.522675, 37.458061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211826, 35.538177, 38.099350>,  <32.163254, 35.918327, 37.385361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211826, 35.538177, 38.099350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590839, 35.651516, 38.158539>,  <32.818249, 35.719517, 38.194054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590839, 35.651516, 38.158539>,  <32.211826, 35.538177, 38.099350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590839, 35.651516, 38.158539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239939, -0.936306, 0.256436,
		0.211208, -0.207477, -0.955167,
		0.947534, 0.283343, 0.147973,
		32.875099, 35.736519, 38.202930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486023, 35.033703, 37.728157>,  <32.211826, 35.538177, 38.099350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486023, 35.033703, 37.728157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757572, 35.194443, 37.973969>,  <32.920502, 35.290886, 38.121456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757572, 35.194443, 37.973969>,  <32.486023, 35.033703, 37.728157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757572, 35.194443, 37.973969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307167, -0.915617, 0.259409,
		0.666918, 0.012658, -0.745023,
		0.678873, 0.401851, 0.614530,
		32.961235, 35.314999, 38.158329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339520, 34.792881, 37.653427>,  <32.486023, 35.033703, 37.728157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339520, 34.792881, 37.653427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251534, 34.913654, 38.024467>,  <33.198742, 34.986118, 38.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251534, 34.913654, 38.024467>,  <33.339520, 34.792881, 37.653427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251534, 34.913654, 38.024467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432533, -0.822125, 0.370170,
		0.874373, 0.482646, 0.050245,
		-0.219968, 0.301934, 0.927604,
		33.185543, 35.004234, 38.302750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997593, 34.862682, 38.009613>,  <33.339520, 34.792881, 37.653427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997593, 34.862682, 38.009613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680340, 34.760921, 38.230965>,  <33.489990, 34.699863, 38.363773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680340, 34.760921, 38.230965>,  <33.997593, 34.862682, 38.009613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680340, 34.760921, 38.230965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458756, -0.847168, 0.268048,
		0.400609, 0.466461, 0.788623,
		-0.793130, -0.254403, 0.553375,
		33.442402, 34.684601, 38.396976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308640, 34.707596, 38.591053>,  <33.997593, 34.862682, 38.009613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308640, 34.707596, 38.591053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967869, 34.500576, 38.559143>,  <33.763405, 34.376366, 38.539997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967869, 34.500576, 38.559143>,  <34.308640, 34.707596, 38.591053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967869, 34.500576, 38.559143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468231, -0.821076, 0.326488,
		-0.234472, 0.240792, 0.941829,
		-0.851929, -0.517546, -0.079773,
		33.712292, 34.345314, 38.535210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020668, 34.408081, 39.204933>,  <34.308640, 34.707596, 38.591053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020668, 34.408081, 39.204933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915386, 34.148701, 38.919212>,  <33.852215, 33.993073, 38.747780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915386, 34.148701, 38.919212>,  <34.020668, 34.408081, 39.204933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915386, 34.148701, 38.919212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593216, -0.692678, 0.410234,
		-0.760800, -0.315759, 0.566992,
		-0.263208, -0.648455, -0.714302,
		33.836422, 33.954163, 38.704922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796661, 33.848579, 39.524330>,  <34.020668, 34.408081, 39.204933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796661, 33.848579, 39.524330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943916, 33.749359, 39.165901>,  <34.032269, 33.689827, 38.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943916, 33.749359, 39.165901>,  <33.796661, 33.848579, 39.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943916, 33.749359, 39.165901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676015, -0.590258, 0.441133,
		-0.638338, -0.768156, -0.049609,
		0.368141, -0.248055, -0.896070,
		34.054359, 33.674942, 38.897079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780888, 33.115108, 39.574512>,  <33.796661, 33.848579, 39.524330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780888, 33.115108, 39.574512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052826, 33.233990, 39.306339>,  <34.215988, 33.305317, 39.145435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052826, 33.233990, 39.306339>,  <33.780888, 33.115108, 39.574512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052826, 33.233990, 39.306339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685159, -0.583358, 0.436177,
		-0.261473, -0.755888, -0.600222,
		0.679845, 0.297199, -0.670436,
		34.256779, 33.323151, 39.105209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962242, 32.595760, 39.276718>,  <33.780888, 33.115108, 39.574512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962242, 32.595760, 39.276718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257656, 32.865448, 39.277386>,  <34.434902, 33.027260, 39.277786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257656, 32.865448, 39.277386>,  <33.962242, 32.595760, 39.276718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257656, 32.865448, 39.277386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609461, -0.668650, 0.425986,
		0.288321, -0.313588, -0.904728,
		0.738531, 0.674218, 0.001666,
		34.479214, 33.067715, 39.277885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671001, 32.411766, 38.998665>,  <33.962242, 32.595760, 39.276718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671001, 32.411766, 38.998665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734379, 32.696068, 39.272808>,  <34.772404, 32.866650, 39.437294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734379, 32.696068, 39.272808>,  <34.671001, 32.411766, 38.998665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734379, 32.696068, 39.272808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750707, -0.537594, 0.383968,
		0.641354, 0.453669, -0.618748,
		0.158440, 0.710759, 0.685361,
		34.781910, 32.909294, 39.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287239, 32.753002, 38.972900>,  <34.671001, 32.411766, 38.998665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287239, 32.753002, 38.972900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252785, 33.126068, 38.832775>,  <35.232113, 33.349907, 38.748699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252785, 33.126068, 38.832775>,  <35.287239, 32.753002, 38.972900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252785, 33.126068, 38.832775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577317, 0.333295, 0.745399,
		0.811964, -0.138039, -0.567150,
		-0.086135, 0.932663, -0.350316,
		35.226944, 33.405869, 38.727680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944363, 33.029022, 38.730946>,  <35.287239, 32.753002, 38.972900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944363, 33.029022, 38.730946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705082, 33.321972, 38.861046>,  <35.561516, 33.497742, 38.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705082, 33.321972, 38.861046>,  <35.944363, 33.029022, 38.730946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705082, 33.321972, 38.861046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607743, 0.150079, 0.779824,
		0.522310, 0.664156, -0.534872,
		-0.598198, 0.732375, 0.325248,
		35.525623, 33.541683, 38.958622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233002, 33.767151, 38.814167>,  <35.944363, 33.029022, 38.730946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233002, 33.767151, 38.814167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956188, 33.692280, 39.093037>,  <35.790100, 33.647358, 39.260361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956188, 33.692280, 39.093037>,  <36.233002, 33.767151, 38.814167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956188, 33.692280, 39.093037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689735, 0.113488, 0.715113,
		-0.212974, 0.975748, 0.050565,
		-0.692032, -0.187177, 0.697178,
		35.748577, 33.636127, 39.302189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371391, 34.267872, 39.232853>,  <36.233002, 33.767151, 38.814167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371391, 34.267872, 39.232853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151905, 34.033005, 39.470894>,  <36.020214, 33.892086, 39.613716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151905, 34.033005, 39.470894>,  <36.371391, 34.267872, 39.232853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151905, 34.033005, 39.470894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623614, 0.186612, 0.759132,
		-0.556790, 0.787662, 0.263768,
		-0.548717, -0.587167, 0.595101,
		35.987289, 33.856853, 39.649426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996845, 34.414516, 39.373798>,  <36.371391, 34.267872, 39.232853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996845, 34.414516, 39.373798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954212, 34.176308, 39.055305>,  <36.928631, 34.033382, 38.864208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954212, 34.176308, 39.055305>,  <36.996845, 34.414516, 39.373798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954212, 34.176308, 39.055305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875727, -0.435475, 0.208481,
		-0.470896, -0.675063, 0.567932,
		-0.106582, -0.595526, -0.796234,
		36.922237, 33.997650, 38.816437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426170, 33.963058, 39.640766>,  <36.996845, 34.414516, 39.373798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426170, 33.963058, 39.640766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410019, 33.894730, 39.246975>,  <37.400326, 33.853733, 39.010700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410019, 33.894730, 39.246975>,  <37.426170, 33.963058, 39.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410019, 33.894730, 39.246975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905005, -0.423838, 0.036422,
		-0.423479, -0.889484, 0.171710,
		-0.040380, -0.170823, -0.984474,
		37.397903, 33.843483, 38.951633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151550, 33.626465, 40.369434>,  <37.426170, 33.963058, 39.640766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151550, 33.626465, 40.369434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843929, 33.652027, 40.623829>,  <36.659359, 33.667366, 40.776466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843929, 33.652027, 40.623829>,  <37.151550, 33.626465, 40.369434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843929, 33.652027, 40.623829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633445, 0.056899, -0.771693,
		-0.085506, -0.996332, -0.003274,
		-0.769049, 0.063911, 0.635987,
		36.613216, 33.671200, 40.814625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743790, 33.178535, 40.115742>,  <37.151550, 33.626465, 40.369434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743790, 33.178535, 40.115742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538292, 33.450916, 40.324497>,  <36.414993, 33.614346, 40.449749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538292, 33.450916, 40.324497>,  <36.743790, 33.178535, 40.115742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538292, 33.450916, 40.324497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722147, -0.014791, -0.691582,
		-0.463217, -0.732176, 0.499348,
		-0.513745, 0.680955, 0.521887,
		36.384167, 33.655201, 40.481064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071461, 32.887383, 40.275932>,  <36.743790, 33.178535, 40.115742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071461, 32.887383, 40.275932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043922, 33.286083, 40.259212>,  <36.027401, 33.525303, 40.249180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043922, 33.286083, 40.259212>,  <36.071461, 32.887383, 40.275932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043922, 33.286083, 40.259212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721994, -0.078693, -0.687409,
		-0.688465, -0.017149, 0.725067,
		-0.068846, 0.996751, -0.041796,
		36.023270, 33.585110, 40.246674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319271, 33.118530, 40.435436>,  <36.071461, 32.887383, 40.275932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319271, 33.118530, 40.435436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530121, 33.354687, 40.190952>,  <35.656631, 33.496380, 40.044262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530121, 33.354687, 40.190952>,  <35.319271, 33.118530, 40.435436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530121, 33.354687, 40.190952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658584, -0.170720, -0.732886,
		-0.537032, 0.788859, 0.298827,
		0.527128, 0.590386, -0.611212,
		35.688259, 33.531803, 40.007587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810539, 33.575893, 40.186813>,  <35.319271, 33.118530, 40.435436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810539, 33.575893, 40.186813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104458, 33.573391, 39.915512>,  <35.280811, 33.571888, 39.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104458, 33.573391, 39.915512>,  <34.810539, 33.575893, 40.186813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104458, 33.573391, 39.915512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656008, -0.260726, -0.708290,
		-0.172405, 0.965393, -0.195688,
		0.734799, -0.006261, -0.678256,
		35.324898, 33.571514, 39.712036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711227, 34.050335, 39.566490>,  <34.810539, 33.575893, 40.186813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711227, 34.050335, 39.566490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937538, 33.746155, 39.438980>,  <35.073326, 33.563648, 39.362476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937538, 33.746155, 39.438980>,  <34.711227, 34.050335, 39.566490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937538, 33.746155, 39.438980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666553, -0.194226, -0.719711,
		0.485387, 0.619676, -0.616766,
		0.565779, -0.760446, -0.318772,
		35.107273, 33.518021, 39.343349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055759, 34.146965, 38.889889>,  <34.711227, 34.050335, 39.566490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055759, 34.146965, 38.889889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989025, 33.755741, 38.939793>,  <34.948986, 33.521008, 38.969734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989025, 33.755741, 38.939793>,  <35.055759, 34.146965, 38.889889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989025, 33.755741, 38.939793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749981, 0.043739, -0.660012,
		0.640074, -0.203682, -0.740823,
		-0.166835, -0.978060, 0.124761,
		34.938976, 33.462322, 38.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064449, 33.713589, 38.194191>,  <35.055759, 34.146965, 38.889889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064449, 33.713589, 38.194191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818325, 33.589386, 38.484013>,  <34.670650, 33.514866, 38.657906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818325, 33.589386, 38.484013>,  <35.064449, 33.713589, 38.194191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818325, 33.589386, 38.484013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781673, 0.121572, -0.611726,
		0.101845, -0.942773, -0.317502,
		-0.615317, -0.310484, 0.724558,
		34.633732, 33.496235, 38.701378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616470, 33.294773, 37.816681>,  <35.064449, 33.713589, 38.194191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616470, 33.294773, 37.816681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436096, 33.419792, 38.151100>,  <34.327873, 33.494804, 38.351749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436096, 33.419792, 38.151100>,  <34.616470, 33.294773, 37.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436096, 33.419792, 38.151100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735334, 0.400828, -0.546462,
		-0.505907, -0.861190, 0.049082,
		-0.450934, 0.312550, 0.836045,
		34.300816, 33.513557, 38.401913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081947, 33.047184, 37.334137>,  <34.616470, 33.294773, 37.816681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081947, 33.047184, 37.334137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107624, 33.032871, 36.935219>,  <35.123028, 33.024284, 36.695869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107624, 33.032871, 36.935219>,  <35.081947, 33.047184, 37.334137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107624, 33.032871, 36.935219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396752, -0.917896, 0.007399,
		-0.915679, 0.395204, -0.073115,
		0.064188, -0.035784, -0.997296,
		35.126881, 33.022137, 36.636028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869122, 33.223743, 37.286583>,  <35.081947, 33.047184, 37.334137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869122, 33.223743, 37.286583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626232, 33.521545, 37.175598>,  <35.480499, 33.700226, 37.109005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626232, 33.521545, 37.175598>,  <35.869122, 33.223743, 37.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626232, 33.521545, 37.175598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682084, 0.309366, -0.662611,
		-0.407481, -0.591608, -0.695671,
		-0.607223, 0.744508, -0.277466,
		35.444065, 33.744896, 37.092358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814739, 33.328869, 36.396893>,  <35.869122, 33.223743, 37.286583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814739, 33.328869, 36.396893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 33.652996, 36.606976>,  <35.648415, 33.847473, 36.733025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 33.652996, 36.606976>,  <35.814739, 33.328869, 36.396893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710785, 33.652996, 36.606976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631596, 0.554061, -0.542312,
		-0.730443, 0.190779, -0.655787,
		-0.259884, 0.810321, 0.525205,
		35.632820, 33.896091, 36.764538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772942, 33.837742, 35.983253>,  <35.814739, 33.328869, 36.396893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772942, 33.837742, 35.983253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813446, 34.028187, 36.332668>,  <35.837749, 34.142452, 36.542316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813446, 34.028187, 36.332668>,  <35.772942, 33.837742, 35.983253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813446, 34.028187, 36.332668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824562, 0.451114, -0.341458,
		-0.556636, 0.754861, -0.346902,
		0.101261, 0.476110, 0.873536,
		35.843826, 34.171021, 36.594730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725491, 34.519043, 35.955566>,  <35.772942, 33.837742, 35.983253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725491, 34.519043, 35.955566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002647, 34.431778, 36.230465>,  <36.168941, 34.379417, 36.395405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002647, 34.431778, 36.230465>,  <35.725491, 34.519043, 35.955566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002647, 34.431778, 36.230465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714780, 0.333175, -0.614885,
		-0.094826, 0.917278, 0.386795,
		0.692891, -0.218166, 0.687245,
		36.210514, 34.366329, 36.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143414, 35.093620, 36.317162>,  <35.725491, 34.519043, 35.955566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143414, 35.093620, 36.317162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306576, 34.737720, 36.235222>,  <36.404472, 34.524181, 36.186058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306576, 34.737720, 36.235222>,  <36.143414, 35.093620, 36.317162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306576, 34.737720, 36.235222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531737, 0.413891, -0.738884,
		0.742203, 0.192474, 0.641941,
		0.407909, -0.889746, -0.204846,
		36.428947, 34.470798, 36.173767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764259, 35.331039, 36.172268>,  <36.143414, 35.093620, 36.317162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764259, 35.331039, 36.172268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157841, 35.292950, 36.232628>,  <37.393990, 35.270096, 36.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157841, 35.292950, 36.232628>,  <36.764259, 35.331039, 36.172268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157841, 35.292950, 36.232628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178251, 0.486618, -0.855237,
		0.008008, 0.868410, 0.495782,
		0.983952, -0.095222, 0.150898,
		37.453026, 35.264381, 36.277897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975849, 35.991879, 36.009769>,  <36.764259, 35.331039, 36.172268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975849, 35.991879, 36.009769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258156, 35.711830, 35.966450>,  <37.427540, 35.543800, 35.940460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258156, 35.711830, 35.966450>,  <36.975849, 35.991879, 36.009769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258156, 35.711830, 35.966450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214973, 0.357301, -0.908913,
		0.675040, 0.618200, 0.402678,
		0.705767, -0.700117, -0.108296,
		37.469887, 35.501797, 35.933960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729507, 36.230606, 35.982609>,  <36.975849, 35.991879, 36.009769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729507, 36.230606, 35.982609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656754, 35.904797, 35.762257>,  <37.613102, 35.709309, 35.630047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656754, 35.904797, 35.762257>,  <37.729507, 36.230606, 35.982609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656754, 35.904797, 35.762257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279461, 0.494302, -0.823145,
		0.942772, -0.303666, 0.137723,
		-0.181884, -0.814526, -0.550877,
		37.602188, 35.660439, 35.596992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275627, 36.099503, 35.524002>,  <37.729507, 36.230606, 35.982609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275627, 36.099503, 35.524002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967937, 35.913422, 35.348782>,  <37.783325, 35.801773, 35.243649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967937, 35.913422, 35.348782>,  <38.275627, 36.099503, 35.524002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967937, 35.913422, 35.348782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296565, 0.347322, -0.889616,
		0.565994, -0.814222, -0.129205,
		-0.769221, -0.465200, -0.438051,
		37.737171, 35.773861, 35.217365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496880, 35.730755, 34.905491>,  <38.275627, 36.099503, 35.524002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496880, 35.730755, 34.905491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106377, 35.773254, 34.829987>,  <37.872074, 35.798752, 34.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106377, 35.773254, 34.829987>,  <38.496880, 35.730755, 34.905491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106377, 35.773254, 34.829987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212518, 0.301300, -0.929545,
		-0.041889, -0.947592, -0.316726,
		-0.976259, 0.106247, -0.188759,
		37.813499, 35.805130, 34.773357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443890, 35.457870, 34.287235>,  <38.496880, 35.730755, 34.905491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443890, 35.457870, 34.287235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133221, 35.706696, 34.326866>,  <37.946819, 35.855991, 34.350647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133221, 35.706696, 34.326866>,  <38.443890, 35.457870, 34.287235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133221, 35.706696, 34.326866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181098, 0.371165, -0.910736,
		-0.603311, -0.689400, -0.400928,
		-0.776672, 0.622064, 0.099080,
		37.900219, 35.893314, 34.356590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197502, 35.501419, 33.566235>,  <38.443890, 35.457870, 34.287235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197502, 35.501419, 33.566235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076939, 35.820354, 33.775387>,  <38.004601, 36.011715, 33.900879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076939, 35.820354, 33.775387>,  <38.197502, 35.501419, 33.566235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076939, 35.820354, 33.775387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011733, 0.545245, -0.838194,
		-0.953422, -0.258777, -0.154988,
		-0.301413, 0.797334, 0.522885,
		37.986515, 36.059555, 33.932251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517780, 35.103687, 33.050358>,  <38.197502, 35.501419, 33.566235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517780, 35.103687, 33.050358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912106, 35.168232, 33.031879>,  <39.148701, 35.206959, 33.020794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912106, 35.168232, 33.031879>,  <38.517780, 35.103687, 33.050358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912106, 35.168232, 33.031879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165028, 0.881678, -0.442051,
		-0.030599, 0.443404, 0.895799,
		0.985814, 0.161358, -0.046196,
		39.207851, 35.216640, 33.018021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090225, 34.857658, 33.550365>,  <38.517780, 35.103687, 33.050358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090225, 34.857658, 33.550365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132168, 34.493759, 33.389687>,  <39.157333, 34.275417, 33.293282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132168, 34.493759, 33.389687>,  <39.090225, 34.857658, 33.550365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132168, 34.493759, 33.389687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388021, -0.409333, 0.825764,
		-0.915666, 0.069277, -0.395925,
		0.104858, -0.909751, -0.401693,
		39.163624, 34.220833, 33.269180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546280, 34.507954, 33.511024>,  <39.090225, 34.857658, 33.550365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546280, 34.507954, 33.511024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823235, 34.221851, 33.548996>,  <38.989407, 34.050190, 33.571777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823235, 34.221851, 33.548996>,  <38.546280, 34.507954, 33.511024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823235, 34.221851, 33.548996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592514, -0.488559, 0.640498,
		-0.411747, -0.499713, -0.762071,
		0.692382, -0.715260, 0.094924,
		39.030949, 34.007275, 33.577473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250839, 33.842438, 33.281097>,  <38.546280, 34.507954, 33.511024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250839, 33.842438, 33.281097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548920, 33.793636, 33.543331>,  <38.727768, 33.764355, 33.700672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548920, 33.793636, 33.543331>,  <38.250839, 33.842438, 33.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548920, 33.793636, 33.543331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654127, -0.324790, 0.683103,
		0.129587, -0.937884, -0.321839,
		0.745201, -0.122003, 0.655584,
		38.772480, 33.757034, 33.740005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641289, 34.145657, 33.301949>,  <38.250839, 33.842438, 33.281097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641289, 34.145657, 33.301949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292427, 34.025322, 33.456272>,  <37.083111, 33.953121, 33.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292427, 34.025322, 33.456272>,  <37.641289, 34.145657, 33.301949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292427, 34.025322, 33.456272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228015, -0.447756, -0.864594,
		0.432846, -0.842029, 0.321917,
		-0.872154, -0.300835, 0.385805,
		37.030781, 33.935070, 33.572014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659786, 33.446102, 33.318920>,  <37.641289, 34.145657, 33.301949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659786, 33.446102, 33.318920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279289, 33.568489, 33.303341>,  <37.050991, 33.641922, 33.293995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279289, 33.568489, 33.303341>,  <37.659786, 33.446102, 33.318920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279289, 33.568489, 33.303341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115536, -0.470549, -0.874777,
		-0.285975, -0.827629, 0.482958,
		-0.951247, 0.305963, -0.038945,
		36.993916, 33.660278, 33.291656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210915, 32.891682, 33.086128>,  <37.659786, 33.446102, 33.318920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210915, 32.891682, 33.086128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962009, 33.199810, 33.030418>,  <36.812668, 33.384686, 32.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962009, 33.199810, 33.030418>,  <37.210915, 32.891682, 33.086128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962009, 33.199810, 33.030418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206854, -0.333405, -0.919811,
		-0.754983, -0.543555, 0.366809,
		-0.622264, 0.770317, -0.139279,
		36.775330, 33.430904, 32.988636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744781, 32.566376, 32.640144>,  <37.210915, 32.891682, 33.086128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744781, 32.566376, 32.640144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658600, 32.956741, 32.626434>,  <36.606892, 33.190960, 32.618206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658600, 32.956741, 32.626434>,  <36.744781, 32.566376, 32.640144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658600, 32.956741, 32.626434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388397, -0.117850, -0.913925,
		-0.895950, -0.183599, 0.404433,
		-0.215459, 0.975911, -0.034279,
		36.593964, 33.249516, 32.616150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982727, 32.591770, 32.519821>,  <36.744781, 32.566376, 32.640144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982727, 32.591770, 32.519821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174870, 32.919315, 32.394138>,  <36.290154, 33.115841, 32.318729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174870, 32.919315, 32.394138>,  <35.982727, 32.591770, 32.519821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174870, 32.919315, 32.394138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288715, -0.190649, -0.938241,
		-0.828193, 0.541403, 0.144839,
		0.480353, 0.818862, -0.314205,
		36.318977, 33.164974, 32.299877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664967, 32.762085, 31.899345>,  <35.982727, 32.591770, 32.519821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664967, 32.762085, 31.899345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017998, 32.949818, 31.888153>,  <36.229816, 33.062458, 31.881437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017998, 32.949818, 31.888153>,  <35.664967, 32.762085, 31.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017998, 32.949818, 31.888153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040699, -0.135557, -0.989933,
		-0.468397, 0.872557, -0.138741,
		0.882580, 0.469328, -0.027982,
		36.282772, 33.090614, 31.879759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589684, 33.128380, 31.290142>,  <35.664967, 32.762085, 31.899345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589684, 33.128380, 31.290142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981522, 33.149223, 31.367788>,  <36.216625, 33.161732, 31.414375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981522, 33.149223, 31.367788>,  <35.589684, 33.128380, 31.290142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981522, 33.149223, 31.367788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198617, -0.103049, -0.974645,
		-0.030787, 0.993310, -0.111297,
		0.979593, 0.052112, 0.194116,
		36.275398, 33.164856, 31.426023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861698, 33.544857, 30.828524>,  <35.589684, 33.128380, 31.290142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861698, 33.544857, 30.828524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176998, 33.318054, 30.924164>,  <36.366177, 33.181973, 30.981548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176998, 33.318054, 30.924164>,  <35.861698, 33.544857, 30.828524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176998, 33.318054, 30.924164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208299, -0.119761, -0.970706,
		0.579032, 0.814960, 0.023706,
		0.788247, -0.567007, 0.239100,
		36.413471, 33.147953, 30.995893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411800, 33.825935, 30.410954>,  <35.861698, 33.544857, 30.828524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411800, 33.825935, 30.410954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537720, 33.462517, 30.520821>,  <36.613270, 33.244465, 30.586740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537720, 33.462517, 30.520821>,  <36.411800, 33.825935, 30.410954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537720, 33.462517, 30.520821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276026, -0.189243, -0.942336,
		0.908137, 0.372459, 0.191210,
		0.314796, -0.908549, 0.274667,
		36.632160, 33.189953, 30.603220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079655, 33.813179, 30.181181>,  <36.411800, 33.825935, 30.410954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079655, 33.813179, 30.181181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985432, 33.425961, 30.215597>,  <36.928898, 33.193630, 30.236246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985432, 33.425961, 30.215597>,  <37.079655, 33.813179, 30.181181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985432, 33.425961, 30.215597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389392, -0.175123, -0.904271,
		0.890442, -0.179503, 0.418200,
		-0.235555, -0.968045, 0.086040,
		36.914764, 33.135548, 30.241409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579803, 33.434563, 29.744766>,  <37.079655, 33.813179, 30.181181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579803, 33.434563, 29.744766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300739, 33.153564, 29.801023>,  <37.133301, 32.984966, 29.834778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300739, 33.153564, 29.801023>,  <37.579803, 33.434563, 29.744766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300739, 33.153564, 29.801023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174623, -0.357130, -0.917586,
		0.694826, -0.615599, 0.371826,
		-0.697656, -0.702492, 0.140645,
		37.091442, 32.942818, 29.843218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852619, 32.671993, 29.628613>,  <37.579803, 33.434563, 29.744766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852619, 32.671993, 29.628613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458725, 32.651176, 29.562164>,  <37.222389, 32.638687, 29.522295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458725, 32.651176, 29.562164>,  <37.852619, 32.671993, 29.628613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458725, 32.651176, 29.562164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167865, -0.536573, -0.826989,
		-0.046102, -0.842248, 0.537116,
		-0.984731, -0.052037, -0.166121,
		37.163307, 32.635567, 29.512327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654636, 31.988768, 29.405521>,  <37.852619, 32.671993, 29.628613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654636, 31.988768, 29.405521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329208, 32.186432, 29.282948>,  <37.133949, 32.305031, 29.209404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329208, 32.186432, 29.282948>,  <37.654636, 31.988768, 29.405521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329208, 32.186432, 29.282948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045654, -0.579668, -0.813573,
		-0.579668, -0.647911, 0.494163,
		0.813573, -0.494163, 0.306435,
		37.085136, 32.334682, 29.191017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106625, 31.480249, 29.301334>,  <37.654636, 31.988768, 29.405521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106625, 31.480249, 29.301334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999184, 31.782017, 29.061768>,  <36.934719, 31.963078, 28.918026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999184, 31.782017, 29.061768>,  <37.106625, 31.480249, 29.301334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999184, 31.782017, 29.061768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026281, -0.627277, -0.778353,
		-0.962893, -0.193327, 0.188315,
		-0.268602, 0.754419, -0.598919,
		36.918602, 32.008343, 28.882092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801991, 31.157095, 28.755085>,  <37.106625, 31.480249, 29.301334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801991, 31.157095, 28.755085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804554, 31.528004, 28.605349>,  <36.806091, 31.750549, 28.515507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804554, 31.528004, 28.605349>,  <36.801991, 31.157095, 28.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804554, 31.528004, 28.605349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215777, -0.364245, -0.905961,
		-0.976422, 0.086583, 0.197747,
		0.006413, 0.927270, -0.374339,
		36.806477, 31.806185, 28.493048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262619, 31.215431, 28.221571>,  <36.801991, 31.157095, 28.755085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262619, 31.215431, 28.221571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504536, 31.525019, 28.146528>,  <36.649685, 31.710772, 28.101501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504536, 31.525019, 28.146528>,  <36.262619, 31.215431, 28.221571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504536, 31.525019, 28.146528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199079, -0.081167, -0.976617,
		-0.771101, 0.627998, 0.104992,
		0.604791, 0.773971, -0.187609,
		36.685974, 31.757210, 28.090246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852402, 31.689243, 27.836432>,  <36.262619, 31.215431, 28.221571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852402, 31.689243, 27.836432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235409, 31.772526, 27.756628>,  <36.465214, 31.822495, 27.708746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235409, 31.772526, 27.756628>,  <35.852402, 31.689243, 27.836432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235409, 31.772526, 27.756628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196904, -0.033385, -0.979854,
		-0.210673, 0.977515, 0.009030,
		0.957521, 0.208207, -0.199510,
		36.522663, 31.834988, 27.696775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944576, 32.362232, 27.379995>,  <35.852402, 31.689243, 27.836432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944576, 32.362232, 27.379995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277145, 32.147335, 27.323278>,  <36.476688, 32.018398, 27.289248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277145, 32.147335, 27.323278>,  <35.944576, 32.362232, 27.379995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277145, 32.147335, 27.323278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056970, 0.171419, -0.983550,
		0.552710, 0.825824, 0.111915,
		0.831424, -0.537242, -0.141792,
		36.526573, 31.986162, 27.280741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434731, 32.737083, 26.953829>,  <35.944576, 32.362232, 27.379995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434731, 32.737083, 26.953829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565754, 32.360851, 26.918026>,  <36.644367, 32.135113, 26.896544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565754, 32.360851, 26.918026>,  <36.434731, 32.737083, 26.953829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565754, 32.360851, 26.918026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015195, 0.099968, -0.994875,
		0.944709, 0.324520, 0.047037,
		0.327559, -0.940581, -0.089509,
		36.664021, 32.078678, 26.891172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773720, 32.805809, 26.421297>,  <36.434731, 32.737083, 26.953829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773720, 32.805809, 26.421297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742249, 32.407173, 26.431200>,  <36.723366, 32.167992, 26.437141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742249, 32.407173, 26.431200>,  <36.773720, 32.805809, 26.421297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742249, 32.407173, 26.431200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172220, -0.038050, -0.984323,
		0.981912, -0.073179, 0.174627,
		-0.078676, -0.996593, 0.024759,
		36.718647, 32.108196, 26.438627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382519, 32.506481, 25.989317>,  <36.773720, 32.805809, 26.421297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382519, 32.506481, 25.989317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097786, 32.226768, 26.015579>,  <36.926949, 32.058941, 26.031336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097786, 32.226768, 26.015579>,  <37.382519, 32.506481, 25.989317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097786, 32.226768, 26.015579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054609, -0.148301, -0.987433,
		0.700227, -0.699298, 0.143752,
		-0.711829, -0.699277, 0.065656,
		36.884235, 32.016987, 26.035276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657806, 31.978863, 25.632380>,  <37.382519, 32.506481, 25.989317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657806, 31.978863, 25.632380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273190, 31.869236, 25.639469>,  <37.042419, 31.803459, 25.643723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273190, 31.869236, 25.639469>,  <37.657806, 31.978863, 25.632380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273190, 31.869236, 25.639469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043542, -0.215848, -0.975456,
		0.271168, -0.937174, 0.219482,
		-0.961547, -0.274069, 0.017725,
		36.984726, 31.787016, 25.644787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630531, 31.334953, 25.236237>,  <37.657806, 31.978863, 25.632380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630531, 31.334953, 25.236237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260612, 31.487062, 25.231564>,  <37.038662, 31.578327, 25.228760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260612, 31.487062, 25.231564>,  <37.630531, 31.334953, 25.236237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260612, 31.487062, 25.231564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102208, -0.277907, -0.955155,
		-0.366468, -0.882133, 0.295876,
		-0.924800, 0.380274, -0.011683,
		36.983173, 31.601143, 25.228060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249500, 30.833029, 24.980803>,  <37.630531, 31.334953, 25.236237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249500, 30.833029, 24.980803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035553, 31.161976, 24.903212>,  <36.907185, 31.359344, 24.856657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035553, 31.161976, 24.903212>,  <37.249500, 30.833029, 24.980803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035553, 31.161976, 24.903212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087958, -0.282522, -0.955220,
		-0.840344, -0.493856, 0.223446,
		-0.534870, 0.822367, -0.193977,
		36.875092, 31.408686, 24.845018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738689, 30.505375, 24.517231>,  <37.249500, 30.833029, 24.980803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738689, 30.505375, 24.517231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715992, 30.901426, 24.465963>,  <36.702374, 31.139057, 24.435202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715992, 30.901426, 24.465963>,  <36.738689, 30.505375, 24.517231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715992, 30.901426, 24.465963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168388, -0.136030, -0.976290,
		-0.984086, -0.033820, 0.174445,
		-0.056748, 0.990127, -0.128170,
		36.698967, 31.198465, 24.427513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044147, 30.719261, 24.155405>,  <36.738689, 30.505375, 24.517231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044147, 30.719261, 24.155405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335251, 30.988359, 24.102060>,  <36.509911, 31.149818, 24.070053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335251, 30.988359, 24.102060>,  <36.044147, 30.719261, 24.155405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335251, 30.988359, 24.102060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201188, 0.023510, -0.979270,
		-0.655665, 0.739500, 0.152458,
		0.727754, 0.672746, -0.133364,
		36.553577, 31.190184, 24.062052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829197, 30.942446, 23.473305>,  <36.044147, 30.719261, 24.155405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829197, 30.942446, 23.473305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183338, 31.125248, 23.507462>,  <36.395824, 31.234930, 23.527956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183338, 31.125248, 23.507462>,  <35.829197, 30.942446, 23.473305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183338, 31.125248, 23.507462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010062, 0.164798, -0.986276,
		-0.464809, 0.874062, 0.141307,
		0.885354, 0.457008, 0.085394,
		36.448944, 31.262350, 23.533079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812195, 31.535896, 23.020380>,  <35.829197, 30.942446, 23.473305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812195, 31.535896, 23.020380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192627, 31.428810, 23.082064>,  <36.420887, 31.364557, 23.119074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192627, 31.428810, 23.082064>,  <35.812195, 31.535896, 23.020380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192627, 31.428810, 23.082064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135293, -0.087839, -0.986904,
		0.277757, 0.959485, -0.047322,
		0.951077, -0.267717, 0.154210,
		36.477951, 31.348495, 23.128326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100479, 31.962715, 22.561710>,  <35.812195, 31.535896, 23.020380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100479, 31.962715, 22.561710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392223, 31.706556, 22.657974>,  <36.567272, 31.552860, 22.715733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392223, 31.706556, 22.657974>,  <36.100479, 31.962715, 22.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392223, 31.706556, 22.657974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278799, -0.043007, -0.959386,
		0.624739, 0.766838, 0.147174,
		0.729364, -0.640398, 0.240662,
		36.611034, 31.514437, 22.730173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699409, 32.238243, 22.287117>,  <36.100479, 31.962715, 22.561710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699409, 32.238243, 22.287117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756908, 31.843796, 22.320362>,  <36.791409, 31.607128, 22.340309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756908, 31.843796, 22.320362>,  <36.699409, 32.238243, 22.287117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756908, 31.843796, 22.320362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166277, -0.058724, -0.984329,
		0.975545, 0.155315, 0.155527,
		0.143748, -0.986118, 0.083113,
		36.800034, 31.547960, 22.345297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281803, 32.105816, 21.949383>,  <36.699409, 32.238243, 22.287117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281803, 32.105816, 21.949383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053543, 31.777966, 21.969690>,  <36.916588, 31.581255, 21.981874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053543, 31.777966, 21.969690>,  <37.281803, 32.105816, 21.949383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053543, 31.777966, 21.969690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025570, -0.079525, -0.996505,
		0.820798, -0.567353, 0.066338,
		-0.570646, -0.819626, 0.050766,
		36.882351, 31.532078, 21.984921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497452, 31.754290, 21.399031>,  <37.281803, 32.105816, 21.949383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497452, 31.754290, 21.399031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142895, 31.594732, 21.493006>,  <36.930161, 31.498997, 21.549391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142895, 31.594732, 21.493006>,  <37.497452, 31.754290, 21.399031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142895, 31.594732, 21.493006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217902, -0.088263, -0.971971,
		0.408452, -0.912739, -0.008685,
		-0.886389, -0.398896, 0.234939,
		36.876976, 31.475063, 21.563488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375278, 31.338943, 20.842480>,  <37.497452, 31.754290, 21.399031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375278, 31.338943, 20.842480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025681, 31.377228, 21.033045>,  <36.815922, 31.400198, 21.147383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025681, 31.377228, 21.033045>,  <37.375278, 31.338943, 20.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025681, 31.377228, 21.033045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484312, -0.091634, -0.870083,
		-0.039612, -0.991183, 0.126438,
		-0.873998, 0.095701, 0.476412,
		36.763481, 31.405941, 21.175968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037388, 30.922218, 20.498034>,  <37.375278, 31.338943, 20.842480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037388, 30.922218, 20.498034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768356, 31.163013, 20.670198>,  <36.606937, 31.307489, 20.773497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768356, 31.163013, 20.670198>,  <37.037388, 30.922218, 20.498034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768356, 31.163013, 20.670198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412834, 0.177487, -0.893345,
		-0.614175, -0.778531, 0.129147,
		-0.672575, 0.601987, 0.430412,
		36.566586, 31.343609, 20.799322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458427, 30.815907, 20.100334>,  <37.037388, 30.922218, 20.498034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458427, 30.815907, 20.100334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392353, 31.149176, 20.311440>,  <36.352707, 31.349136, 20.438103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392353, 31.149176, 20.311440>,  <36.458427, 30.815907, 20.100334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392353, 31.149176, 20.311440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358955, 0.447627, -0.819012,
		-0.918621, -0.324737, 0.225128,
		-0.165190, 0.833172, 0.527766,
		36.342796, 31.399128, 20.469769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726685, 30.896860, 20.110624>,  <36.458427, 30.815907, 20.100334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726685, 30.896860, 20.110624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864471, 31.265821, 20.180496>,  <35.947144, 31.487198, 20.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864471, 31.265821, 20.180496>,  <35.726685, 30.896860, 20.110624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864471, 31.265821, 20.180496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571322, 0.353616, -0.740640,
		-0.744938, 0.155330, 0.648799,
		0.344469, 0.922404, 0.174679,
		35.967812, 31.542543, 20.232901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166878, 31.297119, 19.968876>,  <35.726685, 30.896860, 20.110624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166878, 31.297119, 19.968876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461277, 31.567913, 19.969208>,  <35.637917, 31.730389, 19.969408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.461277, 31.567913, 19.969208>,  <35.166878, 31.297119, 19.968876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461277, 31.567913, 19.969208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509912, 0.555168, -0.657098,
		-0.445306, 0.483199, 0.753805,
		0.735997, 0.676984, 0.000831,
		35.682076, 31.771008, 19.969458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844093, 31.899590, 19.837416>,  <35.166878, 31.297119, 19.968876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844093, 31.899590, 19.837416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218388, 31.971815, 19.716227>,  <35.442963, 32.015152, 19.643513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218388, 31.971815, 19.716227>,  <34.844093, 31.899590, 19.837416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218388, 31.971815, 19.716227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341211, 0.680908, -0.648028,
		0.089285, 0.709761, 0.698761,
		0.935737, 0.180566, -0.302973,
		35.499107, 32.025986, 19.625336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840164, 32.616825, 19.736525>,  <34.844093, 31.899590, 19.837416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840164, 32.616825, 19.736525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149155, 32.466103, 19.532059>,  <35.334549, 32.375668, 19.409378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149155, 32.466103, 19.532059>,  <34.840164, 32.616825, 19.736525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149155, 32.466103, 19.532059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140267, 0.683812, -0.716049,
		0.619356, 0.624832, 0.475376,
		0.772478, -0.376810, -0.511167,
		35.380898, 32.353058, 19.378708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271118, 33.129520, 19.521667>,  <34.840164, 32.616825, 19.736525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271118, 33.129520, 19.521667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328011, 32.823380, 19.270588>,  <35.362144, 32.639694, 19.119940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328011, 32.823380, 19.270588>,  <35.271118, 33.129520, 19.521667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328011, 32.823380, 19.270588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322864, 0.563594, -0.760343,
		0.935698, 0.310803, -0.166946,
		0.142226, -0.765352, -0.627700,
		35.370678, 32.593773, 19.082277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251953, 33.458191, 18.859535>,  <35.271118, 33.129520, 19.521667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251953, 33.458191, 18.859535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259499, 33.076546, 18.739998>,  <35.264027, 32.847557, 18.668276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259499, 33.076546, 18.739998>,  <35.251953, 33.458191, 18.859535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259499, 33.076546, 18.739998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469653, 0.255412, -0.845098,
		0.882650, 0.156290, -0.443287,
		0.018860, -0.954116, -0.298841,
		35.265156, 32.790310, 18.650345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543571, 33.448727, 18.179012>,  <35.251953, 33.458191, 18.859535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543571, 33.448727, 18.179012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345215, 33.102558, 18.207653>,  <35.226200, 32.894855, 18.224838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345215, 33.102558, 18.207653>,  <35.543571, 33.448727, 18.179012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345215, 33.102558, 18.207653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437959, 0.178048, -0.881187,
		0.749853, -0.468336, -0.467314,
		-0.495896, -0.865425, 0.071602,
		35.196445, 32.842930, 18.229134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641712, 33.055363, 17.556221>,  <35.543571, 33.448727, 18.179012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641712, 33.055363, 17.556221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302254, 32.895565, 17.694902>,  <35.098579, 32.799686, 17.778111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302254, 32.895565, 17.694902>,  <35.641712, 33.055363, 17.556221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302254, 32.895565, 17.694902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328706, -0.115237, -0.937375,
		0.414425, -0.909466, -0.033519,
		-0.848648, -0.399490, 0.346704,
		35.047661, 32.775719, 17.798914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545387, 32.421112, 17.280186>,  <35.641712, 33.055363, 17.556221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545387, 32.421112, 17.280186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191944, 32.572231, 17.390820>,  <34.979877, 32.662903, 17.457199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191944, 32.572231, 17.390820>,  <35.545387, 32.421112, 17.280186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191944, 32.572231, 17.390820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289858, 0.022538, -0.956804,
		-0.367713, -0.925613, 0.089593,
		-0.883611, 0.377799, 0.276584,
		34.926861, 32.685570, 17.473795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017559, 31.862080, 17.195620>,  <35.545387, 32.421112, 17.280186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017559, 31.862080, 17.195620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912506, 32.245132, 17.148354>,  <34.849476, 32.474964, 17.119993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912506, 32.245132, 17.148354>,  <35.017559, 31.862080, 17.195620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912506, 32.245132, 17.148354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297344, -0.196829, -0.934262,
		-0.917940, -0.210228, 0.336439,
		-0.262629, 0.957634, -0.118167,
		34.833717, 32.532421, 17.112904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318237, 31.831781, 17.068762>,  <35.017559, 31.862080, 17.195620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318237, 31.831781, 17.068762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540474, 32.109459, 16.885714>,  <34.673817, 32.276066, 16.775885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540474, 32.109459, 16.885714>,  <34.318237, 31.831781, 17.068762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540474, 32.109459, 16.885714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259837, -0.377854, -0.888657,
		-0.789812, 0.612637, -0.029556,
		0.555592, 0.694192, -0.457619,
		34.707150, 32.317719, 16.748428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826752, 32.267105, 16.627207>,  <34.318237, 31.831781, 17.068762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826752, 32.267105, 16.627207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201099, 32.223682, 16.493120>,  <34.425709, 32.197628, 16.412668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201099, 32.223682, 16.493120>,  <33.826752, 32.267105, 16.627207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201099, 32.223682, 16.493120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350122, -0.393495, -0.850045,
		-0.039630, 0.912895, -0.406266,
		0.935866, -0.108555, -0.335218,
		34.481857, 32.191116, 16.392555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058002, 32.689964, 16.007570>,  <33.826752, 32.267105, 16.627207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058002, 32.689964, 16.007570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261436, 32.345703, 16.017574>,  <34.383495, 32.139149, 16.023577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261436, 32.345703, 16.017574>,  <34.058002, 32.689964, 16.007570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261436, 32.345703, 16.017574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345316, -0.230493, -0.909742,
		0.788734, 0.454041, -0.414421,
		0.508581, -0.860650, 0.025010,
		34.414009, 32.087509, 16.025078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640320, 32.653950, 15.503940>,  <34.058002, 32.689964, 16.007570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640320, 32.653950, 15.503940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499321, 32.289085, 15.587574>,  <34.414722, 32.070168, 15.637754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499321, 32.289085, 15.587574>,  <34.640320, 32.653950, 15.503940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499321, 32.289085, 15.587574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237013, -0.129124, -0.962887,
		0.905303, -0.388968, -0.170677,
		-0.352494, -0.912157, 0.209087,
		34.393574, 32.015438, 15.650300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604877, 33.260231, 15.948002>,  <34.640320, 32.653950, 15.503940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604877, 33.260231, 15.948002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296165, 33.502495, 15.870522>,  <34.110939, 33.647854, 15.824033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296165, 33.502495, 15.870522>,  <34.604877, 33.260231, 15.948002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296165, 33.502495, 15.870522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526359, -0.437573, 0.729024,
		0.356785, 0.664606, 0.656509,
		-0.771784, 0.605664, -0.193702,
		34.064629, 33.684193, 15.812411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369904, 33.614799, 16.521774>,  <34.604877, 33.260231, 15.948002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369904, 33.614799, 16.521774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064034, 33.582424, 16.266047>,  <33.880512, 33.563000, 16.112610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064034, 33.582424, 16.266047>,  <34.369904, 33.614799, 16.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064034, 33.582424, 16.266047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612313, -0.217993, 0.759969,
		-0.200877, 0.972588, 0.117134,
		-0.764671, -0.080938, -0.639318,
		33.834633, 33.558144, 16.074251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747749, 34.030743, 16.680202>,  <34.369904, 33.614799, 16.521774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747749, 34.030743, 16.680202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661091, 33.680264, 16.507998>,  <33.609097, 33.469975, 16.404675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661091, 33.680264, 16.507998>,  <33.747749, 34.030743, 16.680202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661091, 33.680264, 16.507998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610149, -0.222719, 0.760338,
		-0.762090, 0.427403, -0.486360,
		-0.216649, -0.876198, -0.430511,
		33.596096, 33.417404, 16.378843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095562, 33.919437, 16.435150>,  <33.747749, 34.030743, 16.680202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095562, 33.919437, 16.435150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232258, 33.579121, 16.594833>,  <33.314278, 33.374931, 16.690643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232258, 33.579121, 16.594833>,  <33.095562, 33.919437, 16.435150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232258, 33.579121, 16.594833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710771, 0.043916, 0.702051,
		-0.614831, -0.523665, -0.589710,
		0.341741, -0.850792, 0.399207,
		33.334782, 33.323883, 16.714596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404251, 33.621819, 16.592758>,  <33.095562, 33.919437, 16.435150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404251, 33.621819, 16.592758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677097, 33.425728, 16.809793>,  <32.840805, 33.308075, 16.940014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677097, 33.425728, 16.809793>,  <32.404251, 33.621819, 16.592758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677097, 33.425728, 16.809793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568914, 0.110400, 0.814953,
		-0.459413, -0.864576, -0.203591,
		0.682112, -0.490226, 0.542588,
		32.881729, 33.278660, 16.972570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089870, 33.066761, 16.969713>,  <32.404251, 33.621819, 16.592758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089870, 33.066761, 16.969713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410881, 33.196053, 17.170303>,  <32.603489, 33.273628, 17.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410881, 33.196053, 17.170303>,  <32.089870, 33.066761, 16.969713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410881, 33.196053, 17.170303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535302, 0.018946, 0.844448,
		0.263451, -0.946130, 0.188231,
		0.802525, 0.323231, 0.501474,
		32.651638, 33.293022, 17.320745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930067, 32.772312, 17.712626>,  <32.089870, 33.066761, 16.969713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930067, 32.772312, 17.712626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238712, 33.023357, 17.754032>,  <32.423901, 33.173985, 17.778875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238712, 33.023357, 17.754032>,  <31.930067, 32.772312, 17.712626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238712, 33.023357, 17.754032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242302, 0.139540, 0.960114,
		0.588137, -0.765917, 0.259743,
		0.771612, 0.627615, 0.103514,
		32.470196, 33.211643, 17.785086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305904, 32.584881, 18.354160>,  <31.930067, 32.772312, 17.712626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305904, 32.584881, 18.354160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393719, 32.967159, 18.275719>,  <32.446407, 33.196526, 18.228653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393719, 32.967159, 18.275719>,  <32.305904, 32.584881, 18.354160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393719, 32.967159, 18.275719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026785, 0.206838, 0.978008,
		0.975237, -0.209455, 0.071006,
		0.219536, 0.955691, -0.196106,
		32.459579, 33.253868, 18.216887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934631, 32.790329, 18.729513>,  <32.305904, 32.584881, 18.354160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934631, 32.790329, 18.729513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719501, 33.116249, 18.642933>,  <32.590424, 33.311802, 18.590984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719501, 33.116249, 18.642933>,  <32.934631, 32.790329, 18.729513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719501, 33.116249, 18.642933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100002, 0.316590, 0.943276,
		0.837105, 0.485671, -0.251752,
		-0.537824, 0.814797, -0.216451,
		32.558155, 33.360687, 18.577997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300072, 33.266441, 19.053093>,  <32.934631, 32.790329, 18.729513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300072, 33.266441, 19.053093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945827, 33.442135, 18.992729>,  <32.733280, 33.547550, 18.956511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945827, 33.442135, 18.992729>,  <33.300072, 33.266441, 19.053093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945827, 33.442135, 18.992729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018247, 0.357584, 0.933703,
		0.464076, 0.824140, -0.324694,
		-0.885607, 0.439234, -0.150907,
		32.680145, 33.573906, 18.947456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387676, 33.958492, 19.235090>,  <33.300072, 33.266441, 19.053093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387676, 33.958492, 19.235090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993301, 33.891777, 19.239126>,  <32.756676, 33.851749, 19.241549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993301, 33.891777, 19.239126>,  <33.387676, 33.958492, 19.235090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993301, 33.891777, 19.239126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042894, 0.311002, 0.949441,
		-0.161494, 0.935660, -0.313784,
		-0.985941, -0.166789, 0.010091,
		32.697517, 33.841740, 19.242153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145954, 34.452713, 19.668064>,  <33.387676, 33.958492, 19.235090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145954, 34.452713, 19.668064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836937, 34.200855, 19.635260>,  <32.651527, 34.049740, 19.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836937, 34.200855, 19.635260>,  <33.145954, 34.452713, 19.668064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836937, 34.200855, 19.635260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206969, 0.127601, 0.969991,
		-0.600283, 0.766334, -0.228893,
		-0.772544, -0.629643, -0.082011,
		32.605175, 34.011963, 19.610657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438576, 34.795269, 19.834410>,  <33.145954, 34.452713, 19.668064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438576, 34.795269, 19.834410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431709, 34.399605, 19.892744>,  <32.427589, 34.162205, 19.927744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431709, 34.399605, 19.892744>,  <32.438576, 34.795269, 19.834410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431709, 34.399605, 19.892744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348298, 0.142637, 0.926468,
		-0.937227, -0.034892, -0.346970,
		-0.017164, -0.989160, 0.145836,
		32.426559, 34.102856, 19.936495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828228, 34.682190, 20.202669>,  <32.438576, 34.795269, 19.834410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828228, 34.682190, 20.202669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057556, 34.364471, 20.283073>,  <32.195152, 34.173840, 20.331316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057556, 34.364471, 20.283073>,  <31.828228, 34.682190, 20.202669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057556, 34.364471, 20.283073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193208, 0.107350, 0.975268,
		-0.796226, -0.597977, -0.091917,
		0.573320, -0.794292, 0.201008,
		32.229553, 34.126183, 20.343376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554983, 34.391228, 20.783564>,  <31.828228, 34.682190, 20.202669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554983, 34.391228, 20.783564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917837, 34.222969, 20.778414>,  <32.135551, 34.122013, 20.775324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917837, 34.222969, 20.778414>,  <31.554983, 34.391228, 20.783564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917837, 34.222969, 20.778414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048727, 0.074602, 0.996022,
		-0.418009, -0.904154, 0.088171,
		0.907135, -0.420642, -0.012872,
		32.189980, 34.096775, 20.774551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673067, 34.093655, 21.382515>,  <31.554983, 34.391228, 20.783564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673067, 34.093655, 21.382515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064960, 34.088696, 21.302544>,  <32.300095, 34.085720, 21.254560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064960, 34.088696, 21.302544>,  <31.673067, 34.093655, 21.382515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064960, 34.088696, 21.302544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200266, 0.081895, 0.976313,
		0.004266, -0.996564, 0.082719,
		0.979733, -0.012401, -0.199927,
		32.358879, 34.084976, 21.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990936, 33.579601, 21.835585>,  <31.673067, 34.093655, 21.382515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990936, 33.579601, 21.835585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267502, 33.845695, 21.722872>,  <32.433441, 34.005352, 21.655243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267502, 33.845695, 21.722872>,  <31.990936, 33.579601, 21.835585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267502, 33.845695, 21.722872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370931, 0.007825, 0.928627,
		0.619965, -0.746588, -0.241348,
		0.691414, 0.665240, -0.281784,
		32.474926, 34.045269, 21.638336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548000, 33.304546, 22.182070>,  <31.990936, 33.579601, 21.835585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548000, 33.304546, 22.182070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648979, 33.679420, 22.085777>,  <32.709568, 33.904346, 22.028002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648979, 33.679420, 22.085777>,  <32.548000, 33.304546, 22.182070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648979, 33.679420, 22.085777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303865, 0.159416, 0.939283,
		0.918659, -0.310272, -0.244533,
		0.252450, 0.937186, -0.240730,
		32.724716, 33.960575, 22.013557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129990, 33.325737, 22.417458>,  <32.548000, 33.304546, 22.182070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129990, 33.325737, 22.417458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017872, 33.708157, 22.383034>,  <32.950603, 33.937607, 22.362379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017872, 33.708157, 22.383034>,  <33.129990, 33.325737, 22.417458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017872, 33.708157, 22.383034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243569, 0.157554, 0.957001,
		0.928499, 0.247277, -0.277026,
		-0.280291, 0.956050, -0.086060,
		32.933784, 33.994972, 22.357216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630974, 33.824619, 22.776217>,  <33.129990, 33.325737, 22.417458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630974, 33.824619, 22.776217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261616, 33.977127, 22.758472>,  <33.040001, 34.068630, 22.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261616, 33.977127, 22.758472>,  <33.630974, 33.824619, 22.776217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261616, 33.977127, 22.758472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026988, 0.179766, 0.983339,
		0.382893, 0.906817, -0.176285,
		-0.923399, 0.381271, -0.044358,
		32.984596, 34.091507, 22.745165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743595, 34.486683, 23.021221>,  <33.630974, 33.824619, 22.776217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743595, 34.486683, 23.021221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344185, 34.466408, 23.028942>,  <33.104538, 34.454243, 23.033575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344185, 34.466408, 23.028942>,  <33.743595, 34.486683, 23.021221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344185, 34.466408, 23.028942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007100, 0.475019, 0.879947,
		-0.053771, 0.878515, -0.474679,
		-0.998528, -0.050686, 0.019304,
		33.044628, 34.451202, 23.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569431, 35.090141, 23.426405>,  <33.743595, 34.486683, 23.021221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569431, 35.090141, 23.426405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242798, 34.859310, 23.431763>,  <33.046818, 34.720814, 23.434978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242798, 34.859310, 23.431763>,  <33.569431, 35.090141, 23.426405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242798, 34.859310, 23.431763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155593, 0.242400, 0.957618,
		-0.555864, 0.779890, -0.287728,
		-0.816582, -0.577074, 0.013396,
		32.997822, 34.686188, 23.435781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966400, 35.497093, 23.813808>,  <33.569431, 35.090141, 23.426405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966400, 35.497093, 23.813808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892517, 35.105225, 23.845114>,  <32.848186, 34.870102, 23.863897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892517, 35.105225, 23.845114>,  <32.966400, 35.497093, 23.813808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892517, 35.105225, 23.845114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029642, 0.085151, 0.995927,
		-0.982347, 0.181632, -0.044767,
		-0.184705, -0.979673, 0.078264,
		32.837105, 34.811321, 23.868593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518181, 35.437572, 24.283508>,  <32.966400, 35.497093, 23.813808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518181, 35.437572, 24.283508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656654, 35.062336, 24.278728>,  <32.739738, 34.837193, 24.275860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656654, 35.062336, 24.278728>,  <32.518181, 35.437572, 24.283508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656654, 35.062336, 24.278728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092105, -0.046660, 0.994656,
		-0.933635, -0.343232, -0.102555,
		0.346183, -0.938091, -0.011950,
		32.760509, 34.780910, 24.275143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138737, 35.031464, 24.788713>,  <32.518181, 35.437572, 24.283508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138737, 35.031464, 24.788713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488091, 34.840858, 24.748449>,  <32.697704, 34.726494, 24.724291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488091, 34.840858, 24.748449>,  <32.138737, 35.031464, 24.788713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488091, 34.840858, 24.748449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171303, 0.107087, 0.979381,
		-0.455911, -0.872620, 0.175156,
		0.873384, -0.476515, -0.100660,
		32.750107, 34.697903, 24.718250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062969, 34.400040, 25.221331>,  <32.138737, 35.031464, 24.788713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062969, 34.400040, 25.221331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451897, 34.475109, 25.165642>,  <32.685253, 34.520149, 25.132229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451897, 34.475109, 25.165642>,  <32.062969, 34.400040, 25.221331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451897, 34.475109, 25.165642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184029, -0.247820, 0.951167,
		0.144008, -0.950454, -0.275496,
		0.972314, 0.187675, -0.139224,
		32.743591, 34.531410, 25.123875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230217, 34.029484, 25.704384>,  <32.062969, 34.400040, 25.221331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230217, 34.029484, 25.704384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574677, 34.213207, 25.617254>,  <32.781353, 34.323441, 25.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574677, 34.213207, 25.617254>,  <32.230217, 34.029484, 25.704384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574677, 34.213207, 25.617254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266965, -0.043976, 0.962702,
		0.432603, -0.887185, -0.160491,
		0.861153, 0.459313, -0.217823,
		32.833023, 34.351002, 25.551907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760715, 33.687992, 26.134975>,  <32.230217, 34.029484, 25.704384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760715, 33.687992, 26.134975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916317, 34.044666, 26.042395>,  <33.009678, 34.258671, 25.986847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916317, 34.044666, 26.042395>,  <32.760715, 33.687992, 26.134975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916317, 34.044666, 26.042395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287171, 0.121351, 0.950161,
		0.875336, -0.436078, -0.208861,
		0.388999, 0.891689, -0.231452,
		33.033016, 34.312172, 25.972960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489639, 33.595409, 26.311558>,  <32.760715, 33.687992, 26.134975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489639, 33.595409, 26.311558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409138, 33.986477, 26.287352>,  <33.360836, 34.221119, 26.272827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409138, 33.986477, 26.287352>,  <33.489639, 33.595409, 26.311558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409138, 33.986477, 26.287352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273398, 0.115388, 0.954955,
		0.940612, 0.175642, -0.290515,
		-0.201252, 0.977668, -0.060515,
		33.348763, 34.279778, 26.269197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073227, 33.948425, 26.562845>,  <33.489639, 33.595409, 26.311558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073227, 33.948425, 26.562845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777428, 34.215164, 26.599638>,  <33.599949, 34.375206, 26.621714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777428, 34.215164, 26.599638>,  <34.073227, 33.948425, 26.562845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777428, 34.215164, 26.599638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231677, 0.123825, 0.964880,
		0.632034, 0.734838, -0.246061,
		-0.739499, 0.666843, 0.091983,
		33.555576, 34.415218, 26.627234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296581, 34.535419, 26.911528>,  <34.073227, 33.948425, 26.562845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296581, 34.535419, 26.911528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903156, 34.562126, 26.978632>,  <33.667099, 34.578152, 27.018894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903156, 34.562126, 26.978632>,  <34.296581, 34.535419, 26.911528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903156, 34.562126, 26.978632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178785, 0.230255, 0.956566,
		0.025244, 0.970837, -0.238408,
		-0.983564, 0.066771, 0.167759,
		33.608086, 34.582157, 27.028959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261116, 35.016167, 27.389606>,  <34.296581, 34.535419, 26.911528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261116, 35.016167, 27.389606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894875, 34.872013, 27.460938>,  <33.675129, 34.785522, 27.503736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894875, 34.872013, 27.460938>,  <34.261116, 35.016167, 27.389606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894875, 34.872013, 27.460938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091759, 0.244532, 0.965290,
		-0.391481, 0.900183, -0.190825,
		-0.915600, -0.360383, 0.178329,
		33.620193, 34.763897, 27.514437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857620, 35.511906, 27.893551>,  <34.261116, 35.016167, 27.389606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857620, 35.511906, 27.893551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682549, 35.155861, 27.944366>,  <33.577507, 34.942234, 27.974855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682549, 35.155861, 27.944366>,  <33.857620, 35.511906, 27.893551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682549, 35.155861, 27.944366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191111, 0.045968, 0.980492,
		-0.878586, 0.453421, 0.149990,
		-0.437681, -0.890110, 0.127041,
		33.551243, 34.888828, 27.982479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271450, 35.564667, 28.351755>,  <33.857620, 35.511906, 27.893551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271450, 35.564667, 28.351755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367527, 35.176609, 28.365232>,  <33.425175, 34.943775, 28.373320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367527, 35.176609, 28.365232>,  <33.271450, 35.564667, 28.351755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367527, 35.176609, 28.365232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083960, 0.013819, 0.996373,
		-0.967087, -0.242154, -0.078133,
		0.240196, -0.970140, 0.033695,
		33.439587, 34.885567, 28.375341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799206, 35.229191, 28.778919>,  <33.271450, 35.564667, 28.351755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799206, 35.229191, 28.778919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097198, 34.962814, 28.763309>,  <33.275993, 34.802990, 28.753942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097198, 34.962814, 28.763309>,  <32.799206, 35.229191, 28.778919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097198, 34.962814, 28.763309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092901, -0.161505, 0.982489,
		-0.660583, -0.728312, -0.182185,
		0.744983, -0.665941, -0.039027,
		33.320694, 34.763031, 28.751602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516674, 34.687134, 29.196161>,  <32.799206, 35.229191, 28.778919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516674, 34.687134, 29.196161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911888, 34.625450, 29.195080>,  <33.149017, 34.588440, 29.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911888, 34.625450, 29.195080>,  <32.516674, 34.687134, 29.196161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911888, 34.625450, 29.195080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025179, -0.178559, 0.983607,
		-0.152160, -0.971770, -0.180305,
		0.988035, -0.154206, -0.002701,
		33.208298, 34.579185, 29.194269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708469, 34.167736, 29.807810>,  <32.516674, 34.687134, 29.196161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708469, 34.167736, 29.807810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073566, 34.296928, 29.707748>,  <33.292625, 34.374443, 29.647713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073566, 34.296928, 29.707748>,  <32.708469, 34.167736, 29.807810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073566, 34.296928, 29.707748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283385, -0.059521, 0.957157,
		0.294259, -0.944530, -0.145857,
		0.912746, 0.322985, -0.250152,
		33.347389, 34.393826, 29.632704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121895, 33.686325, 30.094440>,  <32.708469, 34.167736, 29.807810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121895, 33.686325, 30.094440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320545, 34.032913, 30.074108>,  <33.439735, 34.240868, 30.061909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320545, 34.032913, 30.074108>,  <33.121895, 33.686325, 30.094440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320545, 34.032913, 30.074108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367498, -0.156861, 0.916701,
		0.786323, -0.473941, -0.396329,
		0.496630, 0.866472, -0.050829,
		33.469536, 34.292854, 30.058859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782684, 33.512642, 30.368803>,  <33.121895, 33.686325, 30.094440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782684, 33.512642, 30.368803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758862, 33.911572, 30.385731>,  <33.744568, 34.150928, 30.395887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758862, 33.911572, 30.385731>,  <33.782684, 33.512642, 30.368803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758862, 33.911572, 30.385731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267964, -0.024864, 0.963108,
		0.961586, 0.068704, -0.265767,
		-0.059562, 0.997327, 0.042319,
		33.740993, 34.210770, 30.398426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449654, 33.768196, 30.695097>,  <33.782684, 33.512642, 30.368803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449654, 33.768196, 30.695097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205643, 34.083454, 30.727835>,  <34.059235, 34.272610, 30.747478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205643, 34.083454, 30.727835>,  <34.449654, 33.768196, 30.695097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205643, 34.083454, 30.727835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367166, 0.189624, 0.910621,
		0.702178, 0.585557, -0.405055,
		-0.610029, 0.788141, 0.081847,
		34.022633, 34.319897, 30.752388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825993, 34.251369, 31.001425>,  <34.449654, 33.768196, 30.695097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825993, 34.251369, 31.001425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458771, 34.398479, 31.060646>,  <34.238438, 34.486744, 31.096178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458771, 34.398479, 31.060646>,  <34.825993, 34.251369, 31.001425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458771, 34.398479, 31.060646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265864, 0.294093, 0.918055,
		0.294093, 0.882187, -0.367771,
		-0.918055, 0.367771, 0.148052,
		34.183353, 34.508812, 31.105061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942833, 34.924854, 31.242683>,  <34.825993, 34.251369, 31.001425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942833, 34.924854, 31.242683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563797, 34.849926, 31.346209>,  <34.336376, 34.804970, 31.408323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563797, 34.849926, 31.346209>,  <34.942833, 34.924854, 31.242683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563797, 34.849926, 31.346209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177796, 0.363873, 0.914322,
		-0.265449, 0.912418, -0.311497,
		-0.947589, -0.187323, 0.258814,
		34.279522, 34.793728, 31.423853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586994, 35.585503, 31.480450>,  <34.942833, 34.924854, 31.242683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586994, 35.585503, 31.480450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375027, 35.284515, 31.636898>,  <34.247845, 35.103924, 31.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375027, 35.284515, 31.636898>,  <34.586994, 35.585503, 31.480450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375027, 35.284515, 31.636898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009330, 0.466347, 0.884553,
		-0.847998, 0.465091, -0.254146,
		-0.529917, -0.752470, 0.391122,
		34.216053, 35.058773, 31.754234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109081, 35.935928, 31.814772>,  <34.586994, 35.585503, 31.480450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109081, 35.935928, 31.814772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127758, 35.568375, 31.971478>,  <34.138966, 35.347843, 32.065502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127758, 35.568375, 31.971478>,  <34.109081, 35.935928, 31.814772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127758, 35.568375, 31.971478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079197, 0.387552, 0.918440,
		-0.995765, -0.073912, -0.054676,
		0.046694, -0.918880, 0.391764,
		34.141766, 35.292709, 32.089008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519855, 36.212334, 31.470669>,  <34.109081, 35.935928, 31.814772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519855, 36.212334, 31.470669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469421, 36.581699, 31.615673>,  <33.439159, 36.803318, 31.702675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469421, 36.581699, 31.615673>,  <33.519855, 36.212334, 31.470669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469421, 36.581699, 31.615673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071016, 0.372890, -0.925154,
		-0.989474, -0.090908, -0.112595,
		-0.126089, 0.923412, 0.362508,
		33.431595, 36.858723, 31.724426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892975, 36.454464, 31.188381>,  <33.519855, 36.212334, 31.470669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892975, 36.454464, 31.188381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116703, 36.768986, 31.293367>,  <33.250942, 36.957699, 31.356359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116703, 36.768986, 31.293367>,  <32.892975, 36.454464, 31.188381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116703, 36.768986, 31.293367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005033, 0.319839, -0.947459,
		-0.828933, 0.528616, 0.182851,
		0.559325, 0.786300, 0.262464,
		33.284500, 37.004875, 31.372107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485493, 37.022324, 30.884060>,  <32.892975, 36.454464, 31.188381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485493, 37.022324, 30.884060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859283, 37.152679, 30.941399>,  <33.083557, 37.230892, 30.975801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859283, 37.152679, 30.941399>,  <32.485493, 37.022324, 30.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859283, 37.152679, 30.941399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032141, 0.323768, -0.945590,
		-0.354570, 0.888240, 0.292079,
		0.934477, 0.325890, 0.143347,
		33.139626, 37.250446, 30.984404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593925, 37.694389, 30.467518>,  <32.485493, 37.022324, 30.884060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593925, 37.694389, 30.467518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979252, 37.615181, 30.539967>,  <33.210449, 37.567657, 30.583435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979252, 37.615181, 30.539967>,  <32.593925, 37.694389, 30.467518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979252, 37.615181, 30.539967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243465, 0.361012, -0.900220,
		0.112871, 0.911296, 0.395980,
		0.963320, -0.198016, 0.181121,
		33.268250, 37.555775, 30.594303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926788, 38.310013, 30.364727>,  <32.593925, 37.694389, 30.467518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926788, 38.310013, 30.364727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190186, 38.014534, 30.307152>,  <33.348225, 37.837246, 30.272608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190186, 38.014534, 30.307152>,  <32.926788, 38.310013, 30.364727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190186, 38.014534, 30.307152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160022, 0.324311, -0.932317,
		0.735380, 0.590889, 0.331763,
		0.658490, -0.738697, -0.143936,
		33.387733, 37.792927, 30.263971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335213, 38.567787, 29.877514>,  <32.926788, 38.310013, 30.364727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335213, 38.567787, 29.877514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434429, 38.183388, 29.828606>,  <33.493961, 37.952747, 29.799261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434429, 38.183388, 29.828606>,  <33.335213, 38.567787, 29.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434429, 38.183388, 29.828606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059226, 0.141024, -0.988233,
		0.966937, 0.237884, 0.091896,
		0.248044, -0.961001, -0.122272,
		33.508842, 37.895088, 29.791924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908421, 38.514374, 29.394989>,  <33.335213, 38.567787, 29.877514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908421, 38.514374, 29.394989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747131, 38.148869, 29.375183>,  <33.650356, 37.929565, 29.363300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747131, 38.148869, 29.375183>,  <33.908421, 38.514374, 29.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747131, 38.148869, 29.375183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031096, 0.067757, -0.997217,
		0.914573, -0.400562, -0.055735,
		-0.403224, -0.913761, -0.049513,
		33.626163, 37.874741, 29.360329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270798, 38.159653, 28.803757>,  <33.908421, 38.514374, 29.394989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270798, 38.159653, 28.803757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912865, 37.988987, 28.856272>,  <33.698105, 37.886589, 28.887781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912865, 37.988987, 28.856272>,  <34.270798, 38.159653, 28.803757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912865, 37.988987, 28.856272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149487, 0.009283, -0.988720,
		0.420630, -0.904364, -0.072087,
		-0.894831, -0.426662, 0.131286,
		33.644417, 37.860989, 28.895658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164642, 37.685616, 28.257593>,  <34.270798, 38.159653, 28.803757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164642, 37.685616, 28.257593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793018, 37.728146, 28.399324>,  <33.570045, 37.753662, 28.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793018, 37.728146, 28.399324>,  <34.164642, 37.685616, 28.257593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793018, 37.728146, 28.399324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364513, -0.099703, -0.925845,
		-0.063105, -0.989321, 0.131384,
		-0.929058, 0.106317, 0.354329,
		33.514301, 37.760044, 28.505623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804375, 37.180035, 27.909897>,  <34.164642, 37.685616, 28.257593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804375, 37.180035, 27.909897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540340, 37.455482, 28.029959>,  <33.381920, 37.620750, 28.101995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540340, 37.455482, 28.029959>,  <33.804375, 37.180035, 27.909897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540340, 37.455482, 28.029959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477890, -0.076659, -0.875068,
		-0.579580, -0.721059, 0.379686,
		-0.660082, 0.688620, 0.300157,
		33.342316, 37.662067, 28.120007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185699, 36.940521, 27.674660>,  <33.804375, 37.180035, 27.909897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185699, 36.940521, 27.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115253, 37.329353, 27.736679>,  <33.072987, 37.562653, 27.773891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115253, 37.329353, 27.736679>,  <33.185699, 36.940521, 27.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115253, 37.329353, 27.736679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571689, 0.027222, -0.820019,
		-0.801347, -0.233054, 0.550935,
		-0.176111, 0.972083, 0.155048,
		33.062420, 37.620979, 27.783194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389458, 37.132896, 27.799229>,  <33.185699, 36.940521, 27.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389458, 37.132896, 27.799229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606239, 37.434208, 27.650179>,  <32.736309, 37.614994, 27.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606239, 37.434208, 27.650179>,  <32.389458, 37.132896, 27.799229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606239, 37.434208, 27.650179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636886, 0.078845, -0.766916,
		-0.548324, 0.652955, 0.522485,
		0.541957, 0.753282, -0.372625,
		32.768826, 37.660191, 27.538391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872929, 37.655903, 27.536041>,  <32.389458, 37.132896, 27.799229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872929, 37.655903, 27.536041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213989, 37.758213, 27.353806>,  <32.418625, 37.819599, 27.244465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213989, 37.758213, 27.353806>,  <31.872929, 37.655903, 27.536041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213989, 37.758213, 27.353806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514122, 0.255412, -0.818806,
		-0.093068, 0.932386, 0.349277,
		0.852653, 0.255775, -0.455589,
		32.469784, 37.834946, 27.217129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703568, 38.166767, 27.167435>,  <31.872929, 37.655903, 27.536041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703568, 38.166767, 27.167435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055069, 38.066143, 27.005196>,  <32.265968, 38.005768, 26.907852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055069, 38.066143, 27.005196>,  <31.703568, 38.166767, 27.167435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055069, 38.066143, 27.005196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363245, 0.198737, -0.910251,
		0.309588, 0.947218, 0.083264,
		0.878754, -0.251558, -0.405599,
		32.318695, 37.990677, 26.883516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821394, 38.655224, 26.520390>,  <31.703568, 38.166767, 27.167435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821394, 38.655224, 26.520390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060139, 38.338356, 26.469444>,  <32.203384, 38.148235, 26.438877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060139, 38.338356, 26.469444>,  <31.821394, 38.655224, 26.520390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060139, 38.338356, 26.469444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071715, 0.105429, -0.991837,
		0.799134, 0.601122, 0.006116,
		0.596860, -0.792172, -0.127361,
		32.239197, 38.100704, 26.431236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157822, 38.778629, 25.881804>,  <31.821394, 38.655224, 26.520390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157822, 38.778629, 25.881804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245373, 38.390949, 25.926956>,  <32.297905, 38.158340, 25.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245373, 38.390949, 25.926956>,  <32.157822, 38.778629, 25.881804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245373, 38.390949, 25.926956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019240, -0.119953, -0.992593,
		0.975562, 0.215085, -0.044903,
		0.218878, -0.969200, 0.112884,
		32.311035, 38.100189, 25.960821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644512, 38.636787, 25.433674>,  <32.157822, 38.778629, 25.881804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644512, 38.636787, 25.433674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475361, 38.283546, 25.514965>,  <32.373871, 38.071602, 25.563740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475361, 38.283546, 25.514965>,  <32.644512, 38.636787, 25.433674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475361, 38.283546, 25.514965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118848, -0.168282, -0.978548,
		0.898360, -0.437958, -0.033792,
		-0.422876, -0.883105, 0.203229,
		32.348499, 38.018616, 25.575933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989517, 38.202198, 25.115875>,  <32.644512, 38.636787, 25.433674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989517, 38.202198, 25.115875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648602, 37.997375, 25.158571>,  <32.444050, 37.874481, 25.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648602, 37.997375, 25.158571>,  <32.989517, 38.202198, 25.115875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648602, 37.997375, 25.158571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080661, -0.330287, -0.940428,
		0.516807, -0.792911, 0.322805,
		-0.852294, -0.512057, 0.106738,
		32.392914, 37.843758, 25.190592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087296, 37.592503, 24.791681>,  <32.989517, 38.202198, 25.115875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087296, 37.592503, 24.791681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690155, 37.624340, 24.827265>,  <32.451870, 37.643444, 24.848616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690155, 37.624340, 24.827265>,  <33.087296, 37.592503, 24.791681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690155, 37.624340, 24.827265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112135, -0.366376, -0.923685,
		-0.040925, -0.927056, 0.372682,
		-0.992850, 0.079592, 0.088961,
		32.392300, 37.648216, 24.853952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809460, 36.958141, 24.579222>,  <33.087296, 37.592503, 24.791681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809460, 36.958141, 24.579222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526257, 37.231239, 24.507017>,  <32.356335, 37.395096, 24.463696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526257, 37.231239, 24.507017>,  <32.809460, 36.958141, 24.579222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526257, 37.231239, 24.507017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116729, -0.365231, -0.923569,
		-0.696486, -0.632828, 0.338284,
		-0.708013, 0.682741, -0.180509,
		32.313854, 37.436062, 24.452864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268566, 36.605011, 24.256809>,  <32.809460, 36.958141, 24.579222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268566, 36.605011, 24.256809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142712, 36.970844, 24.155190>,  <32.067200, 37.190346, 24.094217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142712, 36.970844, 24.155190>,  <32.268566, 36.605011, 24.256809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142712, 36.970844, 24.155190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061880, -0.247310, -0.966958,
		-0.947193, -0.319961, 0.021218,
		-0.314636, 0.914583, -0.254050,
		32.048321, 37.245220, 24.078974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620857, 36.563641, 23.871361>,  <32.268566, 36.605011, 24.256809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620857, 36.563641, 23.871361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863934, 36.865562, 23.772579>,  <32.009777, 37.046715, 23.713310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863934, 36.865562, 23.772579>,  <31.620857, 36.563641, 23.871361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863934, 36.865562, 23.772579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145377, -0.411427, -0.899774,
		-0.780756, 0.510881, -0.359751,
		0.607689, 0.754803, -0.246953,
		32.046242, 37.092003, 23.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438757, 36.896816, 23.253078>,  <31.620857, 36.563641, 23.871361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438757, 36.896816, 23.253078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827684, 36.984966, 23.284134>,  <32.061043, 37.037857, 23.302767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827684, 36.984966, 23.284134>,  <31.438757, 36.896816, 23.253078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827684, 36.984966, 23.284134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146554, -0.316428, -0.937227,
		-0.181977, 0.922663, -0.339967,
		0.972320, 0.220377, 0.077637,
		32.119381, 37.051079, 23.307425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649876, 37.077679, 22.553635>,  <31.438757, 36.896816, 23.253078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649876, 37.077679, 22.553635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999847, 36.991196, 22.726959>,  <32.209831, 36.939308, 22.830954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999847, 36.991196, 22.726959>,  <31.649876, 37.077679, 22.553635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999847, 36.991196, 22.726959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327023, -0.396145, -0.857977,
		0.357153, 0.892370, -0.275894,
		0.874927, -0.216205, 0.433310,
		32.262325, 36.926334, 22.856953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225555, 37.388683, 22.202072>,  <31.649876, 37.077679, 22.553635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225555, 37.388683, 22.202072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399307, 37.094074, 22.409477>,  <32.503559, 36.917309, 22.533920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399307, 37.094074, 22.409477>,  <32.225555, 37.388683, 22.202072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399307, 37.094074, 22.409477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555034, -0.234515, -0.798085,
		0.709405, 0.634461, 0.306926,
		0.434376, -0.736520, 0.518514,
		32.529621, 36.873119, 22.565031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999046, 37.553249, 22.106195>,  <32.225555, 37.388683, 22.202072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999046, 37.553249, 22.106195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957531, 37.167324, 22.202827>,  <32.932621, 36.935768, 22.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957531, 37.167324, 22.202827>,  <32.999046, 37.553249, 22.106195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957531, 37.167324, 22.202827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644536, -0.250233, -0.722466,
		0.757496, 0.080721, 0.647830,
		-0.103790, -0.964815, 0.241578,
		32.926395, 36.877880, 22.275301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641144, 37.285564, 22.275749>,  <32.999046, 37.553249, 22.106195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641144, 37.285564, 22.275749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401360, 37.006001, 22.119707>,  <33.257488, 36.838264, 22.026083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401360, 37.006001, 22.119707>,  <33.641144, 37.285564, 22.275749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401360, 37.006001, 22.119707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673608, -0.177267, -0.717516,
		0.432324, -0.692897, 0.577053,
		-0.599457, -0.698907, -0.390104,
		33.221523, 36.796329, 22.002676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080032, 36.739292, 22.007215>,  <33.641144, 37.285564, 22.275749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080032, 36.739292, 22.007215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745884, 36.685184, 21.794100>,  <33.545395, 36.652721, 21.666231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745884, 36.685184, 21.794100>,  <34.080032, 36.739292, 22.007215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745884, 36.685184, 21.794100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547817, -0.284882, -0.786600,
		-0.045378, -0.948970, 0.312084,
		-0.835367, -0.135270, -0.532789,
		33.495274, 36.644604, 21.634262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132008, 36.075748, 21.778263>,  <34.080032, 36.739292, 22.007215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132008, 36.075748, 21.778263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873493, 36.277477, 21.549187>,  <33.718384, 36.398514, 21.411739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873493, 36.277477, 21.549187>,  <34.132008, 36.075748, 21.778263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873493, 36.277477, 21.549187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531813, -0.240547, -0.811980,
		-0.547257, -0.829337, -0.112741,
		-0.646286, 0.504318, -0.572693,
		33.679607, 36.428772, 21.377378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903999, 35.514778, 21.256529>,  <34.132008, 36.075748, 21.778263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903999, 35.514778, 21.256529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823357, 35.872093, 21.095835>,  <33.774971, 36.086483, 20.999418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823357, 35.872093, 21.095835>,  <33.903999, 35.514778, 21.256529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823357, 35.872093, 21.095835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476632, -0.268844, -0.836985,
		-0.855673, -0.360223, -0.371569,
		-0.201607, 0.893287, -0.401736,
		33.762875, 36.140079, 20.975313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913258, 35.342857, 20.607580>,  <33.903999, 35.514778, 21.256529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913258, 35.342857, 20.607580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945152, 35.740372, 20.576529>,  <33.964291, 35.978882, 20.557898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945152, 35.740372, 20.576529>,  <33.913258, 35.342857, 20.607580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945152, 35.740372, 20.576529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373776, -0.102001, -0.921894,
		-0.924085, 0.044494, -0.379587,
		0.079737, 0.993789, -0.077627,
		33.969074, 36.038509, 20.553240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610832, 35.533089, 19.931971>,  <33.913258, 35.342857, 20.607580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610832, 35.533089, 19.931971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877914, 35.813198, 20.032999>,  <34.038162, 35.981262, 20.093616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877914, 35.813198, 20.032999>,  <33.610832, 35.533089, 19.931971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877914, 35.813198, 20.032999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426535, -0.081817, -0.900763,
		-0.610114, 0.709173, -0.353320,
		0.667704, 0.700271, 0.252569,
		34.078224, 36.023281, 20.108770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692249, 35.933552, 19.264116>,  <33.610832, 35.533089, 19.931971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692249, 35.933552, 19.264116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986076, 36.062744, 19.502808>,  <34.162373, 36.140259, 19.646023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986076, 36.062744, 19.502808>,  <33.692249, 35.933552, 19.264116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986076, 36.062744, 19.502808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529002, 0.278141, -0.801744,
		-0.424927, 0.904609, 0.033455,
		0.734570, 0.322985, 0.596730,
		34.206448, 36.159641, 19.681828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793808, 36.620712, 19.176584>,  <33.692249, 35.933552, 19.264116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793808, 36.620712, 19.176584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147751, 36.478363, 19.296835>,  <34.360119, 36.392952, 19.368984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147751, 36.478363, 19.296835>,  <33.793808, 36.620712, 19.176584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147751, 36.478363, 19.296835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394445, 0.228996, -0.889929,
		0.247862, 0.906043, 0.343003,
		0.884860, -0.355875, 0.300625,
		34.413208, 36.371601, 19.387022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286385, 37.017399, 18.824438>,  <33.793808, 36.620712, 19.176584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286385, 37.017399, 18.824438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483276, 36.683331, 18.922577>,  <34.601410, 36.482887, 18.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483276, 36.683331, 18.922577>,  <34.286385, 37.017399, 18.824438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483276, 36.683331, 18.922577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475612, 0.021979, -0.879380,
		0.729042, 0.549548, 0.408037,
		0.492230, -0.835173, 0.245348,
		34.630947, 36.432777, 18.996181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964748, 37.161213, 18.486626>,  <34.286385, 37.017399, 18.824438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964748, 37.161213, 18.486626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953804, 36.767563, 18.556770>,  <34.947239, 36.531372, 18.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953804, 36.767563, 18.556770>,  <34.964748, 37.161213, 18.486626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953804, 36.767563, 18.556770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637103, -0.152346, -0.755573,
		0.770293, 0.091053, 0.631156,
		-0.027357, -0.984124, 0.175361,
		34.945599, 36.472324, 18.609379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709236, 36.906933, 18.405739>,  <34.964748, 37.161213, 18.486626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709236, 36.906933, 18.405739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464180, 36.595066, 18.353910>,  <35.317146, 36.407944, 18.322813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464180, 36.595066, 18.353910>,  <35.709236, 36.906933, 18.405739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464180, 36.595066, 18.353910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525612, -0.279472, -0.803510,
		0.590262, -0.560364, 0.581019,
		-0.612636, -0.779671, -0.129573,
		35.280388, 36.361164, 18.315039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179981, 36.283901, 18.428900>,  <35.709236, 36.906933, 18.405739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179981, 36.283901, 18.428900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823154, 36.188042, 18.275650>,  <35.609058, 36.130524, 18.183701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823154, 36.188042, 18.275650>,  <36.179981, 36.283901, 18.428900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823154, 36.188042, 18.275650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446423, -0.335685, -0.829471,
		0.070176, -0.910979, 0.406440,
		-0.892065, -0.239653, -0.383125,
		35.555534, 36.116146, 18.160713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443375, 35.985134, 19.083231>,  <36.179981, 36.283901, 18.428900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443375, 35.985134, 19.083231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751011, 36.105690, 19.308678>,  <36.935593, 36.178024, 19.443945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751011, 36.105690, 19.308678>,  <36.443375, 35.985134, 19.083231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751011, 36.105690, 19.308678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579573, -0.042872, 0.813792,
		0.269435, -0.952535, 0.141707,
		0.769091, 0.301394, 0.563615,
		36.981739, 36.196110, 19.477762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060287, 35.941929, 18.580744>,  <36.443375, 35.985134, 19.083231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060287, 35.941929, 18.580744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143456, 36.272083, 18.370789>,  <37.193356, 36.470177, 18.244816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143456, 36.272083, 18.370789>,  <37.060287, 35.941929, 18.580744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143456, 36.272083, 18.370789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043900, 0.543947, 0.837970,
		0.977161, -0.151187, 0.149331,
		0.207918, 0.825387, -0.524886,
		37.205830, 36.519699, 18.213324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479755, 36.236580, 19.004255>,  <37.060287, 35.941929, 18.580744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479755, 36.236580, 19.004255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387882, 36.533436, 18.752388>,  <37.332760, 36.711548, 18.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387882, 36.533436, 18.752388>,  <37.479755, 36.236580, 19.004255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387882, 36.533436, 18.752388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026856, 0.651549, 0.758131,
		0.972896, 0.157218, -0.169579,
		-0.229681, 0.742136, -0.629667,
		37.318977, 36.756077, 18.563488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991470, 36.632542, 19.103180>,  <37.479755, 36.236580, 19.004255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991470, 36.632542, 19.103180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677628, 36.835953, 18.961317>,  <37.489323, 36.958000, 18.876200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677628, 36.835953, 18.961317>,  <37.991470, 36.632542, 19.103180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677628, 36.835953, 18.961317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008084, 0.580383, 0.814304,
		0.619937, 0.636043, -0.459485,
		-0.784610, 0.508531, -0.354659,
		37.442245, 36.988514, 18.854919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132313, 37.316280, 19.279863>,  <37.991470, 36.632542, 19.103180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132313, 37.316280, 19.279863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738178, 37.293198, 19.215645>,  <37.501698, 37.279350, 19.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738178, 37.293198, 19.215645>,  <38.132313, 37.316280, 19.279863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738178, 37.293198, 19.215645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159115, 0.650314, 0.742815,
		0.061544, 0.757471, -0.649962,
		-0.985340, -0.057703, -0.160548,
		37.442577, 37.275887, 19.167480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898014, 38.010490, 19.277952>,  <38.132313, 37.316280, 19.279863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898014, 38.010490, 19.277952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572617, 37.791050, 19.355175>,  <37.377377, 37.659386, 19.401508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572617, 37.791050, 19.355175>,  <37.898014, 38.010490, 19.277952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572617, 37.791050, 19.355175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262424, 0.642497, 0.719952,
		-0.519001, 0.535013, -0.666632,
		-0.813493, -0.548596, 0.193057,
		37.328568, 37.626472, 19.413092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338863, 38.560284, 19.292131>,  <37.898014, 38.010490, 19.277952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338863, 38.560284, 19.292131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198650, 38.230095, 19.469090>,  <37.114521, 38.031982, 19.575264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198650, 38.230095, 19.469090>,  <37.338863, 38.560284, 19.292131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198650, 38.230095, 19.469090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429936, 0.561486, 0.707028,
		-0.832033, 0.057638, -0.551724,
		-0.350537, -0.825476, 0.442394,
		37.093491, 37.982452, 19.601809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658619, 38.717636, 19.456968>,  <37.338863, 38.560284, 19.292131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658619, 38.717636, 19.456968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761032, 38.416416, 19.699411>,  <36.822479, 38.235683, 19.844877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761032, 38.416416, 19.699411>,  <36.658619, 38.717636, 19.456968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761032, 38.416416, 19.699411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401699, 0.487424, 0.775278,
		-0.879252, -0.441971, -0.177701,
		0.256034, -0.753047, 0.606108,
		36.837841, 38.190502, 19.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038601, 38.609840, 19.777666>,  <36.658619, 38.717636, 19.456968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038601, 38.609840, 19.777666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322807, 38.440842, 20.002758>,  <36.493332, 38.339443, 20.137814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322807, 38.440842, 20.002758>,  <36.038601, 38.609840, 19.777666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322807, 38.440842, 20.002758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476065, 0.300295, 0.826550,
		-0.518199, -0.855173, 0.012228,
		0.710515, -0.422496, 0.562730,
		36.535961, 38.314095, 20.171577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742615, 38.152493, 20.232374>,  <36.038601, 38.609840, 19.777666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742615, 38.152493, 20.232374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095974, 38.226902, 20.404425>,  <36.307987, 38.271549, 20.507654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095974, 38.226902, 20.404425>,  <35.742615, 38.152493, 20.232374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095974, 38.226902, 20.404425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463382, 0.209794, 0.860966,
		0.069924, -0.959886, 0.271532,
		0.883395, 0.186025, 0.430124,
		36.360992, 38.282711, 20.533463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824192, 37.712719, 20.842863>,  <35.742615, 38.152493, 20.232374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824192, 37.712719, 20.842863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087070, 38.002449, 20.926241>,  <36.244797, 38.176289, 20.976267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087070, 38.002449, 20.926241>,  <35.824192, 37.712719, 20.842863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087070, 38.002449, 20.926241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545406, 0.266135, 0.794798,
		0.520217, -0.636024, 0.569954,
		0.657195, 0.724324, 0.208443,
		36.284229, 38.219746, 20.988773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045982, 37.672680, 21.585386>,  <35.824192, 37.712719, 20.842863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045982, 37.672680, 21.585386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105808, 38.046745, 21.456949>,  <36.141705, 38.271183, 21.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105808, 38.046745, 21.456949>,  <36.045982, 37.672680, 21.585386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105808, 38.046745, 21.456949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335687, 0.353484, 0.873134,
		0.930024, -0.022804, 0.366791,
		0.149566, 0.935162, -0.321094,
		36.150677, 38.327293, 21.360620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503387, 37.950317, 22.060768>,  <36.045982, 37.672680, 21.585386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503387, 37.950317, 22.060768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309383, 38.250778, 21.881641>,  <36.192982, 38.431053, 21.774164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309383, 38.250778, 21.881641>,  <36.503387, 37.950317, 22.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309383, 38.250778, 21.881641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238058, 0.379337, 0.894110,
		0.841484, 0.540257, -0.005164,
		-0.485008, 0.751150, -0.447818,
		36.163879, 38.476124, 21.747295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767796, 38.529022, 22.430391>,  <36.503387, 37.950317, 22.060768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767796, 38.529022, 22.430391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440426, 38.671036, 22.249664>,  <36.244003, 38.756245, 22.141228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440426, 38.671036, 22.249664>,  <36.767796, 38.529022, 22.430391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440426, 38.671036, 22.249664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259396, 0.473347, 0.841817,
		0.512740, 0.806160, -0.295303,
		-0.818420, 0.355034, -0.451818,
		36.194901, 38.777546, 22.114119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798817, 39.256233, 22.363651>,  <36.767796, 38.529022, 22.430391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798817, 39.256233, 22.363651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421349, 39.124290, 22.374126>,  <36.194870, 39.045124, 22.380411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421349, 39.124290, 22.374126>,  <36.798817, 39.256233, 22.363651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421349, 39.124290, 22.374126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150424, 0.498126, 0.853957,
		-0.294731, 0.801912, -0.519684,
		-0.943666, -0.329861, 0.026186,
		36.138248, 39.025333, 22.381983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572483, 39.709763, 22.843819>,  <36.798817, 39.256233, 22.363651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572483, 39.709763, 22.843819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279030, 39.442356, 22.795048>,  <36.102959, 39.281914, 22.765785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279030, 39.442356, 22.795048>,  <36.572483, 39.709763, 22.843819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279030, 39.442356, 22.795048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353508, 0.222217, 0.908654,
		-0.580356, 0.709722, -0.399352,
		-0.733635, -0.668516, -0.121927,
		36.058941, 39.241802, 22.758471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971325, 39.977535, 23.127268>,  <36.572483, 39.709763, 22.843819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971325, 39.977535, 23.127268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874378, 39.589485, 23.123125>,  <35.816208, 39.356655, 23.120640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874378, 39.589485, 23.123125>,  <35.971325, 39.977535, 23.127268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874378, 39.589485, 23.123125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452365, 0.103558, 0.885800,
		-0.858267, 0.219377, -0.463952,
		-0.242370, -0.970128, -0.010358,
		35.801666, 39.298447, 23.120018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298401, 39.951145, 23.250607>,  <35.971325, 39.977535, 23.127268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298401, 39.951145, 23.250607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439209, 39.589455, 23.347315>,  <35.523693, 39.372440, 23.405340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439209, 39.589455, 23.347315>,  <35.298401, 39.951145, 23.250607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439209, 39.589455, 23.347315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467195, 0.054082, 0.882499,
		-0.811056, -0.423610, -0.403414,
		0.352018, -0.904228, 0.241772,
		35.544815, 39.318188, 23.419846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745079, 39.730801, 23.663872>,  <35.298401, 39.951145, 23.250607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745079, 39.730801, 23.663872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032486, 39.469231, 23.758621>,  <35.204929, 39.312286, 23.815470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032486, 39.469231, 23.758621>,  <34.745079, 39.730801, 23.663872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032486, 39.469231, 23.758621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427236, -0.146242, 0.892235,
		-0.548816, -0.742288, -0.384459,
		0.718520, -0.653928, 0.236872,
		35.248043, 39.273052, 23.829683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440952, 39.090244, 23.875944>,  <34.745079, 39.730801, 23.663872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440952, 39.090244, 23.875944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811367, 39.078129, 24.026430>,  <35.033615, 39.070858, 24.116722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811367, 39.078129, 24.026430>,  <34.440952, 39.090244, 23.875944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811367, 39.078129, 24.026430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377107, -0.033012, 0.925581,
		-0.015618, -0.998996, -0.041994,
		0.926038, -0.030292, 0.376213,
		35.089180, 39.069042, 24.139294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440891, 38.536140, 24.387123>,  <34.440952, 39.090244, 23.875944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440891, 38.536140, 24.387123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731922, 38.785870, 24.500854>,  <34.906540, 38.935707, 24.569094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731922, 38.785870, 24.500854>,  <34.440891, 38.536140, 24.387123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731922, 38.785870, 24.500854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332413, -0.041710, 0.942211,
		0.600107, -0.780049, 0.177187,
		0.727581, 0.624327, 0.284328,
		34.950195, 38.973167, 24.586153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480637, 38.304432, 25.008749>,  <34.440891, 38.536140, 24.387123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480637, 38.304432, 25.008749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706814, 38.634102, 25.021515>,  <34.842518, 38.831902, 25.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706814, 38.634102, 25.021515>,  <34.480637, 38.304432, 25.008749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706814, 38.634102, 25.021515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058433, 0.001431, 0.998290,
		0.822716, -0.566339, 0.048968,
		0.565441, 0.824171, 0.031915,
		34.876446, 38.881351, 25.031090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018253, 38.142254, 25.493216>,  <34.480637, 38.304432, 25.008749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018253, 38.142254, 25.493216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992161, 38.541397, 25.495501>,  <34.976505, 38.780884, 25.496872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992161, 38.541397, 25.495501>,  <35.018253, 38.142254, 25.493216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992161, 38.541397, 25.495501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023383, -0.007251, 0.999700,
		0.997596, 0.065079, 0.023805,
		-0.065232, 0.997854, 0.005712,
		34.972591, 38.840752, 25.497213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546871, 38.351383, 26.020638>,  <35.018253, 38.142254, 25.493216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546871, 38.351383, 26.020638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284317, 38.648914, 25.970230>,  <35.126785, 38.827435, 25.939985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284317, 38.648914, 25.970230>,  <35.546871, 38.351383, 26.020638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284317, 38.648914, 25.970230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027251, 0.143551, 0.989268,
		0.753933, 0.652775, -0.073955,
		-0.656386, 0.743826, -0.126016,
		35.087402, 38.872063, 25.932425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910969, 38.998383, 26.193501>,  <35.546871, 38.351383, 26.020638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910969, 38.998383, 26.193501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519707, 39.081013, 26.202805>,  <35.284950, 39.130589, 26.208387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519707, 39.081013, 26.202805>,  <35.910969, 38.998383, 26.193501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519707, 39.081013, 26.202805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085199, 0.296312, 0.951283,
		0.189616, 0.932485, -0.307439,
		-0.978155, 0.206572, 0.023262,
		35.226261, 39.142982, 26.209784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869156, 39.530220, 26.525146>,  <35.910969, 38.998383, 26.193501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869156, 39.530220, 26.525146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499470, 39.388760, 26.582773>,  <35.277657, 39.303883, 26.617350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499470, 39.388760, 26.582773>,  <35.869156, 39.530220, 26.525146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499470, 39.388760, 26.582773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030922, 0.445339, 0.894828,
		-0.380618, 0.822559, -0.422525,
		-0.924215, -0.353653, 0.144069,
		35.222206, 39.282665, 26.625994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517212, 40.113766, 26.730186>,  <35.869156, 39.530220, 26.525146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517212, 40.113766, 26.730186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279106, 39.812202, 26.841385>,  <35.136242, 39.631264, 26.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279106, 39.812202, 26.841385>,  <35.517212, 40.113766, 26.730186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279106, 39.812202, 26.841385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065313, 0.390222, 0.918401,
		-0.800868, 0.528538, -0.281527,
		-0.595268, -0.753905, 0.277996,
		35.100525, 39.586029, 26.924784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158001, 40.410583, 27.258028>,  <35.517212, 40.113766, 26.730186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158001, 40.410583, 27.258028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029335, 40.037663, 27.324181>,  <34.952137, 39.813911, 27.363873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029335, 40.037663, 27.324181>,  <35.158001, 40.410583, 27.258028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029335, 40.037663, 27.324181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196664, 0.236637, 0.951486,
		-0.926205, 0.273533, -0.259468,
		-0.321663, -0.932299, 0.165380,
		34.932835, 39.757973, 27.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590363, 40.464119, 27.638996>,  <35.158001, 40.410583, 27.258028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590363, 40.464119, 27.638996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694778, 40.083630, 27.704769>,  <34.757427, 39.855335, 27.744232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694778, 40.083630, 27.704769>,  <34.590363, 40.464119, 27.638996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694778, 40.083630, 27.704769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108556, 0.140330, 0.984136,
		-0.959205, -0.274749, -0.066629,
		0.261041, -0.951221, 0.164430,
		34.773090, 39.798264, 27.754099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042164, 40.120705, 28.088043>,  <34.590363, 40.464119, 27.638996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042164, 40.120705, 28.088043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396885, 39.938469, 28.119074>,  <34.609718, 39.829128, 28.137691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396885, 39.938469, 28.119074>,  <34.042164, 40.120705, 28.088043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396885, 39.938469, 28.119074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007401, 0.153835, 0.988069,
		-0.462091, -0.876795, 0.133050,
		0.886802, -0.455594, 0.077575,
		34.662926, 39.801792, 28.142345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020035, 39.845505, 28.749613>,  <34.042164, 40.120705, 28.088043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020035, 39.845505, 28.749613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411659, 39.816772, 28.673426>,  <34.646633, 39.799534, 28.627714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411659, 39.816772, 28.673426>,  <34.020035, 39.845505, 28.749613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411659, 39.816772, 28.673426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199476, 0.152005, 0.968041,
		-0.040586, -0.985766, 0.163151,
		0.979062, -0.071834, -0.190468,
		34.705379, 39.795223, 28.616285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322811, 39.385208, 29.177116>,  <34.020035, 39.845505, 28.749613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322811, 39.385208, 29.177116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626343, 39.612450, 29.049713>,  <34.808460, 39.748795, 28.973272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626343, 39.612450, 29.049713>,  <34.322811, 39.385208, 29.177116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626343, 39.612450, 29.049713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292592, 0.139554, 0.945999,
		0.581872, -0.811040, -0.060325,
		0.758824, 0.568101, -0.318506,
		34.853989, 39.782879, 28.954161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845375, 39.159607, 29.528225>,  <34.322811, 39.385208, 29.177116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845375, 39.159607, 29.528225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966797, 39.519440, 29.402617>,  <35.039650, 39.735340, 29.327251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966797, 39.519440, 29.402617>,  <34.845375, 39.159607, 29.528225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966797, 39.519440, 29.402617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426589, 0.166384, 0.889010,
		0.851983, -0.403823, -0.333244,
		0.303556, 0.899580, -0.314022,
		35.057865, 39.789314, 29.308411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607098, 39.165493, 29.583141>,  <34.845375, 39.159607, 29.528225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607098, 39.165493, 29.583141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462681, 39.536350, 29.623241>,  <35.376030, 39.758865, 29.647301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462681, 39.536350, 29.623241>,  <35.607098, 39.165493, 29.583141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462681, 39.536350, 29.623241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429115, 0.069729, 0.900554,
		0.827955, 0.368156, -0.423027,
		-0.361042, 0.927146, 0.100249,
		35.354370, 39.814495, 29.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160637, 39.480850, 29.966997>,  <35.607098, 39.165493, 29.583141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160637, 39.480850, 29.966997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882576, 39.765747, 30.005920>,  <35.715740, 39.936687, 30.029274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882576, 39.765747, 30.005920>,  <36.160637, 39.480850, 29.966997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882576, 39.765747, 30.005920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269311, 0.132529, 0.953891,
		0.666509, 0.689306, -0.283944,
		-0.695153, 0.712246, 0.097306,
		35.674030, 39.979420, 30.035112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508659, 40.160706, 30.184622>,  <36.160637, 39.480850, 29.966997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508659, 40.160706, 30.184622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117699, 40.152519, 30.268784>,  <35.883121, 40.147606, 30.319281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117699, 40.152519, 30.268784>,  <36.508659, 40.160706, 30.184622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117699, 40.152519, 30.268784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207686, 0.092686, 0.973795,
		-0.039430, 0.995485, -0.086341,
		-0.977401, -0.020465, 0.210403,
		35.824478, 40.146381, 30.331905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311298, 40.795990, 30.562202>,  <36.508659, 40.160706, 30.184622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311298, 40.795990, 30.562202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021908, 40.533859, 30.649040>,  <35.848274, 40.376583, 30.701143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021908, 40.533859, 30.649040>,  <36.311298, 40.795990, 30.562202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021908, 40.533859, 30.649040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083121, 0.229493, 0.969755,
		-0.685326, 0.719641, -0.111562,
		-0.723477, -0.655325, 0.217094,
		35.804863, 40.337261, 30.714169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881969, 41.229023, 30.999119>,  <36.311298, 40.795990, 30.562202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881969, 41.229023, 30.999119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735325, 40.865276, 31.077755>,  <35.647339, 40.647030, 31.124937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735325, 40.865276, 31.077755>,  <35.881969, 41.229023, 30.999119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735325, 40.865276, 31.077755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190695, 0.280261, 0.940791,
		-0.910621, 0.307417, -0.276159,
		-0.366612, -0.909367, 0.196589,
		35.625340, 40.592464, 31.136732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116852, 41.168190, 31.165709>,  <35.881969, 41.229023, 30.999119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116852, 41.168190, 31.165709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296661, 40.855675, 31.338919>,  <35.404549, 40.668163, 31.442844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296661, 40.855675, 31.338919>,  <35.116852, 41.168190, 31.165709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296661, 40.855675, 31.338919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181358, 0.394844, 0.900670,
		-0.874662, -0.483409, 0.035800,
		0.449527, -0.781290, 0.433025,
		35.431519, 40.621288, 31.468826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655254, 40.946999, 31.556782>,  <35.116852, 41.168190, 31.165709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655254, 40.946999, 31.556782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995163, 40.802799, 31.710630>,  <35.199108, 40.716278, 31.802938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995163, 40.802799, 31.710630>,  <34.655254, 40.946999, 31.556782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995163, 40.802799, 31.710630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194338, 0.463993, 0.864259,
		-0.490026, -0.809167, 0.324228,
		0.849769, -0.360499, 0.384620,
		35.250095, 40.694649, 31.826017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661793, 40.560326, 32.285851>,  <34.655254, 40.946999, 31.556782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661793, 40.560326, 32.285851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970558, 40.787457, 32.171497>,  <35.155815, 40.923737, 32.102886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970558, 40.787457, 32.171497>,  <34.661793, 40.560326, 32.285851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970558, 40.787457, 32.171497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277203, 0.705315, 0.652449,
		0.572112, -0.424386, 0.701844,
		0.771911, 0.567827, -0.285878,
		35.202129, 40.957806, 32.085735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043312, 40.785667, 32.846821>,  <34.661793, 40.560326, 32.285851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043312, 40.785667, 32.846821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072868, 41.069328, 32.566349>,  <35.090603, 41.239525, 32.398067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072868, 41.069328, 32.566349>,  <35.043312, 40.785667, 32.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072868, 41.069328, 32.566349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266019, 0.691636, 0.671471,
		0.961132, 0.136913, 0.239750,
		0.073887, 0.709150, -0.701175,
		35.095036, 41.282074, 32.355995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399849, 41.389416, 33.075661>,  <35.043312, 40.785667, 32.846821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399849, 41.389416, 33.075661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138584, 41.481358, 32.787067>,  <34.981823, 41.536522, 32.613911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138584, 41.481358, 32.787067>,  <35.399849, 41.389416, 33.075661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138584, 41.481358, 32.787067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550444, 0.510180, 0.660854,
		0.519988, 0.828784, -0.206710,
		-0.653165, 0.229854, -0.721487,
		34.942635, 41.550312, 32.570621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894718, 41.155457, 32.565128>,  <35.399849, 41.389416, 33.075661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894718, 41.155457, 32.565128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142849, 41.212906, 32.873562>,  <36.291725, 41.247375, 33.058620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142849, 41.212906, 32.873562>,  <35.894718, 41.155457, 32.565128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142849, 41.212906, 32.873562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771051, 0.291911, 0.565923,
		-0.143807, -0.945600, 0.291822,
		0.620323, 0.143626, 0.771084,
		36.328945, 41.255993, 33.104889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785641, 40.748890, 33.159992>,  <35.894718, 41.155457, 32.565128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785641, 40.748890, 33.159992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928757, 41.101490, 33.283245>,  <36.014626, 41.313049, 33.357197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928757, 41.101490, 33.283245>,  <35.785641, 40.748890, 33.159992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928757, 41.101490, 33.283245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820661, 0.139385, 0.554155,
		0.445538, -0.451143, 0.773283,
		0.357787, 0.881500, 0.308134,
		36.036095, 41.365940, 33.375687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859550, 40.709900, 33.885696>,  <35.785641, 40.748890, 33.159992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859550, 40.709900, 33.885696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764191, 41.071308, 33.743252>,  <35.706974, 41.288155, 33.657784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764191, 41.071308, 33.743252>,  <35.859550, 40.709900, 33.885696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764191, 41.071308, 33.743252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922643, -0.096249, 0.373451,
		0.303145, 0.417597, 0.856572,
		-0.238396, 0.903520, -0.356115,
		35.692673, 41.342365, 33.636417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813404, 40.045067, 33.493958>,  <35.859550, 40.709900, 33.885696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813404, 40.045067, 33.493958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124985, 39.922501, 33.712807>,  <36.311935, 39.848961, 33.844116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124985, 39.922501, 33.712807>,  <35.813404, 40.045067, 33.493958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124985, 39.922501, 33.712807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426500, -0.380727, -0.820454,
		0.459704, 0.872442, -0.165881,
		0.778954, -0.306418, 0.547119,
		36.358669, 39.830574, 33.876942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422802, 40.087318, 33.079948>,  <35.813404, 40.045067, 33.493958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422802, 40.087318, 33.079948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559799, 39.820026, 33.344120>,  <36.641998, 39.659653, 33.502625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559799, 39.820026, 33.344120>,  <36.422802, 40.087318, 33.079948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559799, 39.820026, 33.344120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451167, -0.499614, -0.739483,
		0.824104, 0.551232, 0.130369,
		0.342492, -0.668229, 0.660431,
		36.662548, 39.619556, 33.542248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249489, 40.039066, 33.105801>,  <36.422802, 40.087318, 33.079948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249489, 40.039066, 33.105801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034481, 39.707016, 33.165089>,  <36.905476, 39.507786, 33.200661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034481, 39.707016, 33.165089>,  <37.249489, 40.039066, 33.105801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034481, 39.707016, 33.165089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343859, -0.376265, -0.860340,
		0.769957, -0.411485, 0.487695,
		-0.537520, -0.830123, 0.148216,
		36.873226, 39.457977, 33.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582294, 39.445122, 33.030182>,  <37.249489, 40.039066, 33.105801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582294, 39.445122, 33.030182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221390, 39.301327, 32.934944>,  <37.004845, 39.215050, 32.877800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221390, 39.301327, 32.934944>,  <37.582294, 39.445122, 33.030182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221390, 39.301327, 32.934944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391307, -0.450727, -0.802324,
		0.181107, -0.817077, 0.547344,
		-0.902264, -0.359486, -0.238098,
		36.950710, 39.193481, 32.863514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780659, 38.752972, 32.847904>,  <37.582294, 39.445122, 33.030182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780659, 38.752972, 32.847904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447796, 38.885719, 32.670197>,  <37.248077, 38.965366, 32.563572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447796, 38.885719, 32.670197>,  <37.780659, 38.752972, 32.847904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447796, 38.885719, 32.670197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364766, -0.275852, -0.889298,
		-0.417683, -0.902092, 0.108498,
		-0.832158, 0.331869, -0.444271,
		37.198147, 38.985279, 32.536915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798908, 38.384319, 32.234978>,  <37.780659, 38.752972, 32.847904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798908, 38.384319, 32.234978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484352, 38.618801, 32.157047>,  <37.295620, 38.759491, 32.110287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484352, 38.618801, 32.157047>,  <37.798908, 38.384319, 32.234978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484352, 38.618801, 32.157047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104712, -0.184333, -0.977270,
		-0.608790, -0.788917, 0.083576,
		-0.786391, 0.586201, -0.194829,
		37.248436, 38.794662, 32.098598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266968, 38.036842, 31.749596>,  <37.798908, 38.384319, 32.234978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266968, 38.036842, 31.749596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312729, 38.434196, 31.745695>,  <37.340183, 38.672611, 31.743355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312729, 38.434196, 31.745695>,  <37.266968, 38.036842, 31.749596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312729, 38.434196, 31.745695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228206, -0.035831, -0.972953,
		-0.966869, 0.109079, -0.230796,
		0.114399, 0.993387, -0.009752,
		37.347050, 38.732212, 31.742769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781666, 37.536312, 31.722797>,  <37.266968, 38.036842, 31.749596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781666, 37.536312, 31.722797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136204, 37.354012, 31.755514>,  <38.348927, 37.244633, 31.775145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136204, 37.354012, 31.755514>,  <37.781666, 37.536312, 31.722797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136204, 37.354012, 31.755514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200863, -0.219289, 0.954760,
		-0.417198, -0.862671, -0.285909,
		0.886341, -0.455752, 0.081792,
		38.402107, 37.217285, 31.780052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711285, 36.767567, 31.995308>,  <37.781666, 37.536312, 31.722797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711285, 36.767567, 31.995308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047276, 36.941879, 32.124630>,  <38.248871, 37.046467, 32.202221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047276, 36.941879, 32.124630>,  <37.711285, 36.767567, 31.995308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047276, 36.941879, 32.124630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083806, -0.484482, 0.870778,
		0.536105, -0.758532, -0.370434,
		0.839981, 0.435783, 0.323303,
		38.299271, 37.072613, 32.221622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247402, 36.228336, 32.267620>,  <37.711285, 36.767567, 31.995308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247402, 36.228336, 32.267620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241177, 36.577869, 32.462013>,  <38.237442, 36.787590, 32.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.241177, 36.577869, 32.462013>,  <38.247402, 36.228336, 32.267620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241177, 36.577869, 32.462013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218390, -0.477272, 0.851185,
		0.975737, -0.092886, 0.198264,
		-0.015563, 0.873832, 0.485978,
		38.236507, 36.840019, 32.607807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442482, 36.190464, 32.965450>,  <38.247402, 36.228336, 32.267620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442482, 36.190464, 32.965450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197502, 36.506599, 32.971977>,  <38.050514, 36.696281, 32.975895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197502, 36.506599, 32.971977>,  <38.442482, 36.190464, 32.965450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197502, 36.506599, 32.971977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489577, -0.395430, 0.777142,
		0.620660, 0.467971, 0.629114,
		-0.612450, 0.790341, 0.016320,
		38.013767, 36.743702, 32.976871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514210, 36.509129, 33.641762>,  <38.442482, 36.190464, 32.965450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514210, 36.509129, 33.641762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163395, 36.590164, 33.467510>,  <37.952908, 36.638786, 33.362961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163395, 36.590164, 33.467510>,  <38.514210, 36.509129, 33.641762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163395, 36.590164, 33.467510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475050, -0.500962, 0.723440,
		-0.071673, 0.841425, 0.535599,
		-0.877035, 0.202585, -0.435624,
		37.900284, 36.650940, 33.336823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144630, 37.033386, 34.073193>,  <38.514210, 36.509129, 33.641762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144630, 37.033386, 34.073193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950737, 36.759888, 33.855011>,  <37.834400, 36.595787, 33.724102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.950737, 36.759888, 33.855011>,  <38.144630, 37.033386, 34.073193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950737, 36.759888, 33.855011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338955, -0.428045, 0.837787,
		-0.806316, 0.590986, -0.024274,
		-0.484730, -0.683750, -0.545457,
		37.805317, 36.554764, 33.691376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379860, 37.015415, 34.140369>,  <38.144630, 37.033386, 34.073193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379860, 37.015415, 34.140369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488377, 36.644623, 34.036751>,  <37.553486, 36.422146, 33.974579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488377, 36.644623, 34.036751>,  <37.379860, 37.015415, 34.140369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488377, 36.644623, 34.036751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477923, -0.363350, 0.799729,
		-0.835459, -0.093154, -0.541600,
		0.271289, -0.926984, -0.259044,
		37.569763, 36.366528, 33.959038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733833, 36.528080, 34.197960>,  <37.379860, 37.015415, 34.140369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733833, 36.528080, 34.197960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 36.362240, 34.254147>,  <37.309254, 36.262737, 34.287857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093472, 36.362240, 34.254147>,  <36.733833, 36.528080, 34.197960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093472, 36.362240, 34.254147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355143, -0.503266, 0.787779,
		-0.255924, -0.758175, -0.599728,
		0.899098, -0.414601, 0.140463,
		37.363201, 36.237858, 34.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558025, 36.102097, 34.651527>,  <36.733833, 36.528080, 34.197960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558025, 36.102097, 34.651527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949097, 36.039318, 34.707405>,  <37.183739, 36.001652, 34.740932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949097, 36.039318, 34.707405>,  <36.558025, 36.102097, 34.651527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949097, 36.039318, 34.707405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200091, -0.492611, 0.846935,
		-0.064106, -0.855981, -0.513017,
		0.977678, -0.156943, 0.139694,
		37.242401, 35.992233, 34.749313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647129, 35.315571, 34.667358>,  <36.558025, 36.102097, 34.651527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647129, 35.315571, 34.667358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969646, 35.472179, 34.844719>,  <37.163158, 35.566143, 34.951134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969646, 35.472179, 34.844719>,  <36.647129, 35.315571, 34.667358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969646, 35.472179, 34.844719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378952, -0.233667, 0.895430,
		0.454184, -0.890008, -0.040038,
		0.806295, 0.391518, 0.443398,
		37.211536, 35.589634, 34.977737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008781, 34.854973, 35.132187>,  <36.647129, 35.315571, 34.667358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008781, 34.854973, 35.132187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079330, 35.235603, 35.232906>,  <37.121658, 35.463982, 35.293339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079330, 35.235603, 35.232906>,  <37.008781, 34.854973, 35.132187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079330, 35.235603, 35.232906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344883, -0.179853, 0.921254,
		0.921927, -0.249321, 0.296461,
		0.176368, 0.951573, 0.251798,
		37.132240, 35.521076, 35.308445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097633, 34.131008, 34.902878>,  <37.008781, 34.854973, 35.132187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097633, 34.131008, 34.902878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229973, 33.755440, 34.865025>,  <37.309376, 33.530098, 34.842312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229973, 33.755440, 34.865025>,  <37.097633, 34.131008, 34.902878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229973, 33.755440, 34.865025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789146, 0.330269, -0.517852,
		0.517480, 0.096650, 0.850219,
		0.330852, -0.938925, -0.094637,
		37.329227, 33.473763, 34.836632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767326, 34.111263, 35.214561>,  <37.097633, 34.131008, 34.902878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767326, 34.111263, 35.214561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723911, 33.816761, 34.947384>,  <37.697861, 33.640060, 34.787079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723911, 33.816761, 34.947384>,  <37.767326, 34.111263, 35.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723911, 33.816761, 34.947384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802264, 0.331894, -0.496204,
		0.587020, -0.589722, 0.554649,
		-0.108537, -0.736257, -0.667941,
		37.691349, 33.595882, 34.747002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330410, 33.781975, 35.071632>,  <37.767326, 34.111263, 35.214561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330410, 33.781975, 35.071632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188103, 33.673592, 34.713860>,  <38.102718, 33.608562, 34.499195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188103, 33.673592, 34.713860>,  <38.330410, 33.781975, 35.071632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188103, 33.673592, 34.713860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862476, 0.273414, -0.425887,
		0.359948, -0.922945, 0.136422,
		-0.355770, -0.270958, -0.894433,
		38.081371, 33.592304, 34.445530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609268, 33.163219, 34.659828>,  <38.330410, 33.781975, 35.071632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609268, 33.163219, 34.659828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492767, 33.449322, 34.405716>,  <38.422867, 33.620983, 34.253250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492767, 33.449322, 34.405716>,  <38.609268, 33.163219, 34.659828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492767, 33.449322, 34.405716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946639, 0.119673, -0.299256,
		-0.138019, -0.688536, -0.711947,
		-0.291250, 0.715259, -0.635278,
		38.405392, 33.663898, 34.215134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258801, 32.691166, 34.230152>,  <38.609268, 33.163219, 34.659828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258801, 32.691166, 34.230152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985806, 32.415630, 34.132408>,  <37.822010, 32.250309, 34.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985806, 32.415630, 34.132408>,  <38.258801, 32.691166, 34.230152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985806, 32.415630, 34.132408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540101, -0.700557, 0.466380,
		-0.492448, 0.186320, 0.850165,
		-0.682485, -0.688843, -0.244357,
		37.781059, 32.208977, 34.059101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797810, 32.769520, 33.740627>,  <38.258801, 32.691166, 34.230152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797810, 32.769520, 33.740627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108959, 32.548161, 33.621521>,  <39.295650, 32.415344, 33.550056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108959, 32.548161, 33.621521>,  <38.797810, 32.769520, 33.740627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108959, 32.548161, 33.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592131, 0.486771, 0.642212,
		-0.210456, -0.675874, 0.706330,
		0.777875, -0.553397, -0.297762,
		39.342323, 32.382141, 33.532192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992840, 32.292034, 34.284168>,  <38.797810, 32.769520, 33.740627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992840, 32.292034, 34.284168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317890, 32.395782, 34.075413>,  <39.512920, 32.458031, 33.950157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317890, 32.395782, 34.075413>,  <38.992840, 32.292034, 34.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317890, 32.395782, 34.075413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442309, 0.308628, 0.842088,
		0.379482, -0.915137, 0.136076,
		0.812623, 0.259370, -0.521892,
		39.561676, 32.473595, 33.918846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468548, 31.791533, 33.945976>,  <38.992840, 32.292034, 34.284168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468548, 31.791533, 33.945976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381645, 31.500599, 33.685581>,  <38.329506, 31.326038, 33.529343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381645, 31.500599, 33.685581>,  <38.468548, 31.791533, 33.945976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381645, 31.500599, 33.685581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857188, -0.461187, 0.229205,
		-0.466937, -0.508227, 0.723654,
		-0.217252, -0.727332, -0.650991,
		38.316471, 31.282400, 33.490284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458809, 30.993633, 34.270145>,  <38.468548, 31.791533, 33.945976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458809, 30.993633, 34.270145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592873, 31.079813, 33.903267>,  <38.673309, 31.131521, 33.683140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.592873, 31.079813, 33.903267>,  <38.458809, 30.993633, 34.270145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592873, 31.079813, 33.903267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941418, -0.115304, 0.316920,
		-0.037477, -0.969684, -0.241471,
		0.335154, 0.215448, -0.917199,
		38.693420, 31.144447, 33.628109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021328, 30.578505, 34.244808>,  <38.458809, 30.993633, 34.270145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021328, 30.578505, 34.244808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061771, 30.861822, 33.965351>,  <39.086037, 31.031813, 33.797676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061771, 30.861822, 33.965351>,  <39.021328, 30.578505, 34.244808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061771, 30.861822, 33.965351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928875, 0.184308, 0.321280,
		0.356326, -0.681433, -0.639282,
		0.101106, 0.708293, -0.698640,
		39.092102, 31.074310, 33.755760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587494, 30.460131, 33.638802>,  <39.021328, 30.578505, 34.244808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587494, 30.460131, 33.638802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520523, 30.837645, 33.752808>,  <39.480339, 31.064154, 33.821213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520523, 30.837645, 33.752808>,  <39.587494, 30.460131, 33.638802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520523, 30.837645, 33.752808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971857, 0.109403, 0.208628,
		0.165719, 0.311926, -0.935542,
		-0.167428, 0.943786, 0.285018,
		39.470295, 31.120781, 33.838314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097710, 30.900591, 33.414345>,  <39.587494, 30.460131, 33.638802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097710, 30.900591, 33.414345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929363, 31.011877, 33.759705>,  <39.828354, 31.078648, 33.966923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929363, 31.011877, 33.759705>,  <40.097710, 30.900591, 33.414345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929363, 31.011877, 33.759705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901011, 0.017925, 0.433425,
		0.105108, 0.960352, -0.258217,
		-0.420869, 0.278213, 0.863404,
		39.803101, 31.095341, 34.018726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325657, 31.544207, 33.832176>,  <40.097710, 30.900591, 33.414345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325657, 31.544207, 33.832176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184620, 31.328016, 34.137741>,  <40.099998, 31.198301, 34.321079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.184620, 31.328016, 34.137741>,  <40.325657, 31.544207, 33.832176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184620, 31.328016, 34.137741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818438, 0.217674, 0.531768,
		-0.453692, 0.812713, 0.365597,
		-0.352594, -0.540478, 0.763912,
		40.078842, 31.165873, 34.366913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432579, 31.731972, 33.041500>,  <40.325657, 31.544207, 33.832176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432579, 31.731972, 33.041500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389610, 31.346043, 32.945518>,  <40.363831, 31.114485, 32.887928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389610, 31.346043, 32.945518>,  <40.432579, 31.731972, 33.041500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389610, 31.346043, 32.945518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955587, 0.166816, -0.242951,
		0.274433, 0.203202, -0.939891,
		-0.107420, -0.964822, -0.239957,
		40.357384, 31.056597, 32.873531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096832, 31.910189, 32.685242>,  <40.432579, 31.731972, 33.041500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096832, 31.910189, 32.685242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178200, 31.530373, 32.780731>,  <41.227020, 31.302483, 32.838024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178200, 31.530373, 32.780731>,  <41.096832, 31.910189, 32.685242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178200, 31.530373, 32.780731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198735, -0.278794, -0.939563,
		0.958709, 0.143686, -0.245420,
		0.203423, -0.949541, 0.238727,
		41.239227, 31.245510, 32.852348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719658, 31.731916, 32.360641>,  <41.096832, 31.910189, 32.685242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719658, 31.731916, 32.360641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415314, 31.479176, 32.419777>,  <41.232708, 31.327532, 32.455257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415314, 31.479176, 32.419777>,  <41.719658, 31.731916, 32.360641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415314, 31.479176, 32.419777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016994, -0.247147, -0.968829,
		0.648694, -0.734631, 0.198781,
		-0.760860, -0.631851, 0.147838,
		41.187057, 31.289619, 32.464127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020336, 32.004421, 32.958221>,  <41.719658, 31.731916, 32.360641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020336, 32.004421, 32.958221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151154, 31.780121, 32.653957>,  <42.229645, 31.645540, 32.471397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151154, 31.780121, 32.653957>,  <42.020336, 32.004421, 32.958221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151154, 31.780121, 32.653957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943332, 0.145781, 0.298114,
		-0.056277, -0.815051, 0.576649,
		0.327043, -0.560749, -0.760660,
		42.249268, 31.611897, 32.425758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492867, 31.514069, 33.261864>,  <42.020336, 32.004421, 32.958221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492867, 31.514069, 33.261864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553444, 31.540987, 32.867393>,  <42.589790, 31.557138, 32.630711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553444, 31.540987, 32.867393>,  <42.492867, 31.514069, 33.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553444, 31.540987, 32.867393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974511, 0.156885, 0.160360,
		0.165507, -0.985321, -0.041823,
		0.151445, 0.067298, -0.986172,
		42.598877, 31.561176, 32.571541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118217, 31.898428, 33.910385>,  <42.492867, 31.514069, 33.261864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118217, 31.898428, 33.910385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504761, 31.864939, 34.007660>,  <42.736687, 31.844845, 34.066025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504761, 31.864939, 34.007660>,  <42.118217, 31.898428, 33.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504761, 31.864939, 34.007660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010753, -0.957857, -0.287044,
		0.256971, 0.274773, -0.926534,
		0.966359, -0.083725, 0.243187,
		42.794670, 31.839821, 34.080616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974617, 31.695078, 34.704987>,  <42.118217, 31.898428, 33.910385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974617, 31.695078, 34.704987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088982, 31.401299, 34.951187>,  <42.157600, 31.225031, 35.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088982, 31.401299, 34.951187>,  <41.974617, 31.695078, 34.704987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088982, 31.401299, 34.951187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945096, 0.322209, -0.054538,
		-0.158265, 0.597302, 0.786246,
		0.285911, -0.734446, 0.615503,
		42.174755, 31.180965, 35.135838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338894, 31.890110, 35.303562>,  <41.974617, 31.695078, 34.704987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338894, 31.890110, 35.303562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461464, 31.524956, 35.195679>,  <42.535007, 31.305862, 35.130947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461464, 31.524956, 35.195679>,  <42.338894, 31.890110, 35.303562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461464, 31.524956, 35.195679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923415, 0.353865, -0.148610,
		0.231106, -0.203517, 0.951405,
		0.306424, -0.912886, -0.269711,
		42.553391, 31.251091, 35.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476746, 32.283333, 36.026443>,  <42.338894, 31.890110, 35.303562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476746, 32.283333, 36.026443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371105, 31.904531, 35.953308>,  <42.307720, 31.677250, 35.909428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.371105, 31.904531, 35.953308>,  <42.476746, 32.283333, 36.026443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371105, 31.904531, 35.953308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499554, -0.296472, 0.813972,
		-0.825043, 0.123632, 0.551379,
		-0.264101, -0.947006, -0.182841,
		42.291874, 31.620430, 35.898457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264240, 31.880253, 36.684151>,  <42.476746, 32.283333, 36.026443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264240, 31.880253, 36.684151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434643, 31.646805, 36.407627>,  <42.536884, 31.506737, 36.241714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434643, 31.646805, 36.407627>,  <42.264240, 31.880253, 36.684151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434643, 31.646805, 36.407627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624568, -0.363112, 0.691422,
		-0.654551, -0.726317, 0.209824,
		0.426002, -0.583620, -0.691310,
		42.562443, 31.471720, 36.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301571, 31.182304, 36.895538>,  <42.264240, 31.880253, 36.684151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301571, 31.182304, 36.895538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594345, 31.297398, 36.648483>,  <42.770008, 31.366453, 36.500248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594345, 31.297398, 36.648483>,  <42.301571, 31.182304, 36.895538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594345, 31.297398, 36.648483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665925, -0.494014, 0.559012,
		-0.144275, -0.820462, -0.553196,
		0.731935, 0.287735, -0.617640,
		42.813927, 31.383718, 36.463192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695408, 30.493299, 36.737556>,  <42.301571, 31.182304, 36.895538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695408, 30.493299, 36.737556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877056, 30.848850, 36.713303>,  <42.986046, 31.062180, 36.698750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877056, 30.848850, 36.713303>,  <42.695408, 30.493299, 36.737556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877056, 30.848850, 36.713303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759870, -0.350883, 0.547247,
		0.465159, -0.294589, -0.834772,
		0.454120, 0.888875, -0.060633,
		43.013290, 31.115513, 36.695114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429893, 30.440001, 36.432232>,  <42.695408, 30.493299, 36.737556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429893, 30.440001, 36.432232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360439, 30.749727, 36.675636>,  <43.318768, 30.935562, 36.821678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360439, 30.749727, 36.675636>,  <43.429893, 30.440001, 36.432232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360439, 30.749727, 36.675636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736907, -0.307755, 0.601876,
		0.653315, 0.552923, -0.517162,
		-0.173632, 0.774315, 0.608513,
		43.308350, 30.982021, 36.858189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890663, 31.119455, 36.482414>,  <43.429893, 30.440001, 36.432232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890663, 31.119455, 36.482414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750072, 30.933144, 36.807255>,  <43.665718, 30.821356, 37.002159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750072, 30.933144, 36.807255>,  <43.890663, 31.119455, 36.482414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750072, 30.933144, 36.807255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920170, -0.331696, 0.208002,
		0.172489, 0.820383, 0.545179,
		-0.351475, -0.465779, 0.812105,
		43.644630, 30.793409, 37.050888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.440807, 30.815851, 36.025005>,  <43.890663, 31.119455, 36.482414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.440807, 30.815851, 36.025005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663383, 31.033009, 35.773403>,  <44.796928, 31.163303, 35.622444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.663383, 31.033009, 35.773403>,  <44.440807, 30.815851, 36.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663383, 31.033009, 35.773403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804003, -0.160783, 0.572476,
		0.209660, -0.824267, -0.525953,
		0.556437, 0.542893, -0.629003,
		44.830315, 31.195877, 35.584702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125370, 30.550663, 35.725254>,  <44.440807, 30.815851, 36.025005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125370, 30.550663, 35.725254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130325, 30.948938, 35.762020>,  <45.133297, 31.187904, 35.784081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130325, 30.948938, 35.762020>,  <45.125370, 30.550663, 35.725254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130325, 30.948938, 35.762020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895851, -0.051887, 0.441315,
		0.444182, 0.076877, -0.892632,
		0.012389, 0.995690, 0.091918,
		45.134041, 31.247644, 35.789597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773830, 30.815836, 35.432682>,  <45.125370, 30.550663, 35.725254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773830, 30.815836, 35.432682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639454, 31.080677, 35.700642>,  <45.558826, 31.239582, 35.861416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.639454, 31.080677, 35.700642>,  <45.773830, 30.815836, 35.432682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639454, 31.080677, 35.700642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935186, 0.149815, 0.320909,
		0.112115, 0.734284, -0.669520,
		-0.335942, 0.662104, 0.669896,
		45.538670, 31.279308, 35.901611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914024, 31.587337, 35.268982>,  <45.773830, 30.815836, 35.432682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914024, 31.587337, 35.268982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884609, 31.398678, 35.620468>,  <45.866962, 31.285482, 35.831360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884609, 31.398678, 35.620468>,  <45.914024, 31.587337, 35.268982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884609, 31.398678, 35.620468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966192, 0.184629, 0.179956,
		-0.247112, 0.862241, 0.442127,
		-0.073536, -0.471649, 0.878715,
		45.862549, 31.257183, 35.884083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446812, 31.892683, 35.758099>,  <45.914024, 31.587337, 35.268982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446812, 31.892683, 35.758099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356693, 31.550211, 35.944088>,  <46.302624, 31.344728, 36.055683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.356693, 31.550211, 35.944088>,  <46.446812, 31.892683, 35.758099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.356693, 31.550211, 35.944088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880613, 0.025239, 0.473163,
		-0.416847, 0.516064, 0.748276,
		-0.225297, -0.856178, 0.464974,
		46.289104, 31.293358, 36.083580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754604, 31.714483, 36.505314>,  <46.446812, 31.892683, 35.758099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754604, 31.714483, 36.505314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052261, 31.535769, 36.703960>,  <47.230858, 31.428539, 36.823147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052261, 31.535769, 36.703960>,  <46.754604, 31.714483, 36.505314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052261, 31.535769, 36.703960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632214, 0.230914, -0.739584,
		0.215761, 0.864326, 0.454299,
		0.744146, -0.446787, 0.496617,
		47.275505, 31.401733, 36.852947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.946785, 32.103001, 37.221382>,  <46.754604, 31.714483, 36.505314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.946785, 32.103001, 37.221382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325878, 32.220016, 37.170444>,  <47.553333, 32.290226, 37.139881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325878, 32.220016, 37.170444>,  <46.946785, 32.103001, 37.221382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325878, 32.220016, 37.170444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281807, 0.580374, -0.764036,
		-0.149600, 0.759992, 0.632480,
		0.947736, 0.292538, -0.127347,
		47.610199, 32.307777, 37.132240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.047630, 32.810993, 37.289482>,  <46.946785, 32.103001, 37.221382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.047630, 32.810993, 37.289482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337322, 32.681458, 37.045971>,  <47.511139, 32.603737, 36.899864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.337322, 32.681458, 37.045971>,  <47.047630, 32.810993, 37.289482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.337322, 32.681458, 37.045971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243660, 0.705718, -0.665276,
		0.645073, 0.630149, 0.432196,
		0.724231, -0.323842, -0.608782,
		47.554592, 32.584305, 36.863335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.409924, 33.370010, 36.938976>,  <47.047630, 32.810993, 37.289482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.409924, 33.370010, 36.938976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442009, 33.041866, 36.712498>,  <47.461262, 32.844982, 36.576611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442009, 33.041866, 36.712498>,  <47.409924, 33.370010, 36.938976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442009, 33.041866, 36.712498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227466, 0.537974, -0.811691,
		0.970477, 0.193898, -0.143451,
		0.080213, -0.820358, -0.566197,
		47.466072, 32.795757, 36.542637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.878162, 33.569668, 36.470100>,  <47.409924, 33.370010, 36.938976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.878162, 33.569668, 36.470100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634884, 33.285725, 36.328003>,  <47.488914, 33.115360, 36.242744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634884, 33.285725, 36.328003>,  <47.878162, 33.569668, 36.470100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634884, 33.285725, 36.328003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149582, 0.542008, -0.826954,
		0.779563, -0.449815, -0.435830,
		-0.608200, -0.709856, -0.355245,
		47.452423, 33.072769, 36.221428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.085632, 33.348854, 35.740093>,  <47.878162, 33.569668, 36.470100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.085632, 33.348854, 35.740093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699329, 33.363827, 35.842781>,  <47.467548, 33.372810, 35.904396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.699329, 33.363827, 35.842781>,  <48.085632, 33.348854, 35.740093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.699329, 33.363827, 35.842781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214259, 0.442899, -0.870594,
		-0.146293, -0.895789, -0.419714,
		-0.965760, 0.037434, 0.256724,
		47.409603, 33.375057, 35.919800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.766022, 33.124672, 35.193947>,  <48.085632, 33.348854, 35.740093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.766022, 33.124672, 35.193947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544167, 33.375130, 35.413151>,  <47.411053, 33.525406, 35.544674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.544167, 33.375130, 35.413151>,  <47.766022, 33.124672, 35.193947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.544167, 33.375130, 35.413151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066364, 0.623213, -0.779231,
		-0.829441, -0.468560, -0.304105,
		-0.554639, 0.626145, 0.548014,
		47.377773, 33.562973, 35.577557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.173836, 33.316006, 34.777248>,  <47.766022, 33.124672, 35.193947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.173836, 33.316006, 34.777248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310516, 33.580338, 35.044548>,  <47.392525, 33.738937, 35.204926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.310516, 33.580338, 35.044548>,  <47.173836, 33.316006, 34.777248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310516, 33.580338, 35.044548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164069, 0.658179, -0.734766,
		-0.925378, 0.360706, 0.116478,
		0.341698, 0.660826, 0.668245,
		47.413025, 33.778584, 35.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.030697, 33.958649, 34.570782>,  <47.173836, 33.316006, 34.777248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.030697, 33.958649, 34.570782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331348, 34.039131, 34.822041>,  <47.511738, 34.087421, 34.972794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.331348, 34.039131, 34.822041>,  <47.030697, 33.958649, 34.570782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.331348, 34.039131, 34.822041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332301, 0.707127, -0.624137,
		-0.569762, 0.677853, 0.464635,
		0.751630, 0.201211, 0.628145,
		47.556839, 34.099495, 35.010483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.092529, 34.683060, 34.696133>,  <47.030697, 33.958649, 34.570782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.092529, 34.683060, 34.696133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454781, 34.515240, 34.720844>,  <47.672131, 34.414547, 34.735672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.454781, 34.515240, 34.720844>,  <47.092529, 34.683060, 34.696133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.454781, 34.515240, 34.720844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404535, 0.810975, -0.422696,
		0.127237, 0.407798, 0.904163,
		0.905628, -0.419549, 0.061782,
		47.726467, 34.389374, 34.739380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.538177, 35.151772, 35.102791>,  <47.092529, 34.683060, 34.696133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.538177, 35.151772, 35.102791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754208, 34.920582, 34.858082>,  <47.883827, 34.781868, 34.711258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754208, 34.920582, 34.858082>,  <47.538177, 35.151772, 35.102791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754208, 34.920582, 34.858082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455824, 0.811935, -0.364671,
		0.707490, -0.081911, 0.701960,
		0.540076, -0.577972, -0.611773,
		47.916229, 34.747189, 34.674549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.376358, 34.580677, 24.316473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116714, 34.276402, 24.316959>,  <38.960926, 34.093834, 24.317251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116714, 34.276402, 24.316959>,  <39.376358, 34.580677, 24.316473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116714, 34.276402, 24.316959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153382, 0.132450, 0.979250,
		-0.745069, 0.635456, -0.202651,
		-0.649112, -0.760692, 0.001217,
		38.921982, 34.048195, 24.317324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867744, 34.802067, 24.682850>,  <39.376358, 34.580677, 24.316473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867744, 34.802067, 24.682850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870831, 34.402363, 24.697931>,  <38.872681, 34.162540, 24.706980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.870831, 34.402363, 24.697931>,  <38.867744, 34.802067, 24.682850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870831, 34.402363, 24.697931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141389, 0.036237, 0.989291,
		-0.989924, -0.012961, -0.141005,
		0.007712, -0.999259, 0.037704,
		38.873146, 34.102585, 24.709242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253914, 34.553364, 25.046768>,  <38.867744, 34.802067, 24.682850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253914, 34.553364, 25.046768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534477, 34.270679, 25.083830>,  <38.702816, 34.101070, 25.106066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.534477, 34.270679, 25.083830>,  <38.253914, 34.553364, 25.046768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534477, 34.270679, 25.083830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198349, -0.068677, 0.977722,
		-0.684604, -0.704162, -0.188346,
		0.701409, -0.706710, 0.092653,
		38.744900, 34.058666, 25.111626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993889, 34.002304, 25.409641>,  <38.253914, 34.553364, 25.046768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993889, 34.002304, 25.409641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384079, 33.943775, 25.475414>,  <38.618195, 33.908657, 25.514879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.384079, 33.943775, 25.475414>,  <37.993889, 34.002304, 25.409641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384079, 33.943775, 25.475414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172538, -0.044442, 0.984000,
		-0.136679, -0.988237, -0.068599,
		0.975474, -0.146328, 0.164434,
		38.676720, 33.899879, 25.524744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084900, 33.361984, 26.002714>,  <37.993889, 34.002304, 25.409641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084900, 33.361984, 26.002714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443855, 33.534653, 25.966152>,  <38.659229, 33.638256, 25.944216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443855, 33.534653, 25.966152>,  <38.084900, 33.361984, 26.002714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443855, 33.534653, 25.966152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187028, -0.184496, 0.964874,
		0.399648, -0.882960, -0.246299,
		0.897386, 0.431675, -0.091405,
		38.713070, 33.664154, 25.938730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552193, 32.829777, 26.322668>,  <38.084900, 33.361984, 26.002714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552193, 32.829777, 26.322668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746143, 33.179356, 26.309406>,  <38.862514, 33.389103, 26.301449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.746143, 33.179356, 26.309406>,  <38.552193, 32.829777, 26.322668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746143, 33.179356, 26.309406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052943, 0.008510, 0.998561,
		0.872977, -0.485938, -0.042143,
		0.484880, 0.873952, -0.033156,
		38.891609, 33.441540, 26.299459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085102, 32.762489, 26.936611>,  <38.552193, 32.829777, 26.322668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085102, 32.762489, 26.936611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009087, 33.136692, 26.817476>,  <38.963478, 33.361214, 26.745996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009087, 33.136692, 26.817476>,  <39.085102, 32.762489, 26.936611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009087, 33.136692, 26.817476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255261, 0.245849, 0.935094,
		0.948011, 0.253734, 0.192077,
		-0.190043, 0.935509, -0.297836,
		38.952072, 33.417343, 26.728125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331676, 33.126991, 27.545301>,  <39.085102, 32.762489, 26.936611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331676, 33.126991, 27.545301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081589, 33.370213, 27.349596>,  <38.931538, 33.516144, 27.232172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081589, 33.370213, 27.349596>,  <39.331676, 33.126991, 27.545301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081589, 33.370213, 27.349596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337980, 0.354122, 0.871990,
		0.703473, 0.710544, -0.015893,
		-0.625216, 0.608050, -0.489265,
		38.894024, 33.552628, 27.202816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421425, 33.789482, 27.874836>,  <39.331676, 33.126991, 27.545301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421425, 33.789482, 27.874836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082741, 33.809238, 27.662935>,  <38.879528, 33.821091, 27.535795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082741, 33.809238, 27.662935>,  <39.421425, 33.789482, 27.874836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082741, 33.809238, 27.662935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445648, 0.478087, 0.756856,
		0.290647, 0.876923, -0.382793,
		-0.846712, 0.049387, -0.529754,
		38.828728, 33.824055, 27.504009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234158, 34.534061, 27.934879>,  <39.421425, 33.789482, 27.874836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234158, 34.534061, 27.934879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907703, 34.326988, 27.832170>,  <38.711830, 34.202744, 27.770544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907703, 34.326988, 27.832170>,  <39.234158, 34.534061, 27.934879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907703, 34.326988, 27.832170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545132, 0.542291, 0.639337,
		-0.191728, 0.661759, -0.724787,
		-0.816132, -0.517683, -0.256773,
		38.662865, 34.171684, 27.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692684, 35.000530, 27.526285>,  <39.234158, 34.534061, 27.934879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692684, 35.000530, 27.526285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486301, 34.702312, 27.695019>,  <38.362473, 34.523380, 27.796259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.486301, 34.702312, 27.695019>,  <38.692684, 35.000530, 27.526285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486301, 34.702312, 27.695019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489312, 0.660711, 0.569240,
		-0.703106, 0.087296, -0.705706,
		-0.515960, -0.745547, 0.421835,
		38.331512, 34.478649, 27.821569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097084, 35.263737, 27.667166>,  <38.692684, 35.000530, 27.526285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097084, 35.263737, 27.667166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065380, 34.938110, 27.897303>,  <38.046356, 34.742737, 28.035385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065380, 34.938110, 27.897303>,  <38.097084, 35.263737, 27.667166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065380, 34.938110, 27.897303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470236, 0.539440, 0.698486,
		-0.878974, -0.215183, -0.425559,
		-0.079261, -0.814065, 0.575341,
		38.041603, 34.693890, 28.069904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418808, 35.260899, 27.944887>,  <38.097084, 35.263737, 27.667166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418808, 35.260899, 27.944887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638763, 35.044773, 28.199659>,  <37.770737, 34.915096, 28.352522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638763, 35.044773, 28.199659>,  <37.418808, 35.260899, 27.944887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638763, 35.044773, 28.199659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397729, 0.501175, 0.768528,
		-0.734459, -0.675934, 0.060694,
		0.549893, -0.540312, 0.636931,
		37.803730, 34.882679, 28.390739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903255, 35.206245, 28.435217>,  <37.418808, 35.260899, 27.944887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903255, 35.206245, 28.435217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222717, 35.059193, 28.625793>,  <37.414394, 34.970963, 28.740139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.222717, 35.059193, 28.625793>,  <36.903255, 35.206245, 28.435217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222717, 35.059193, 28.625793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295710, 0.449786, 0.842762,
		-0.524119, -0.813967, 0.250514,
		0.798658, -0.367629, 0.476439,
		37.462315, 34.948906, 28.768724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664059, 34.912136, 29.022953>,  <36.903255, 35.206245, 28.435217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664059, 34.912136, 29.022953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 35.021420, 29.114780>,  <37.261921, 35.086990, 29.169878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037724, 35.021420, 29.114780>,  <36.664059, 34.912136, 29.022953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037724, 35.021420, 29.114780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354539, 0.637413, 0.684111,
		0.040572, -0.720461, 0.692308,
		0.934161, 0.273206, 0.229570,
		37.317970, 35.103382, 29.183651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698498, 34.951366, 29.762884>,  <36.664059, 34.912136, 29.022953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698498, 34.951366, 29.762884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000816, 35.167225, 29.614532>,  <37.182209, 35.296741, 29.525522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.000816, 35.167225, 29.614532>,  <36.698498, 34.951366, 29.762884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000816, 35.167225, 29.614532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147038, 0.691801, 0.706959,
		0.638080, -0.479786, 0.602212,
		0.755800, 0.539644, -0.370878,
		37.227554, 35.329117, 29.503269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985546, 34.966568, 30.358002>,  <36.698498, 34.951366, 29.762884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985546, 34.966568, 30.358002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140625, 35.250717, 30.123034>,  <37.233673, 35.421207, 29.982054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140625, 35.250717, 30.123034>,  <36.985546, 34.966568, 30.358002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140625, 35.250717, 30.123034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097292, 0.665235, 0.740268,
		0.916639, -0.229847, 0.327022,
		0.387695, 0.710374, -0.587418,
		37.256935, 35.463829, 29.946808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462269, 35.318985, 30.790194>,  <36.985546, 34.966568, 30.358002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462269, 35.318985, 30.790194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389320, 35.590908, 30.506052>,  <37.345551, 35.754063, 30.335567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.389320, 35.590908, 30.506052>,  <37.462269, 35.318985, 30.790194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389320, 35.590908, 30.506052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226999, 0.673842, 0.703142,
		0.956667, 0.289483, 0.031425,
		-0.182372, 0.679806, -0.710354,
		37.334610, 35.794849, 30.292946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916355, 35.915596, 30.940521>,  <37.462269, 35.318985, 30.790194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916355, 35.915596, 30.940521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587643, 36.005695, 30.731163>,  <37.390415, 36.059753, 30.605549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.587643, 36.005695, 30.731163>,  <37.916355, 35.915596, 30.940521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587643, 36.005695, 30.731163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333633, 0.554419, 0.762436,
		0.461916, 0.801176, -0.380460,
		-0.821780, 0.225247, -0.523394,
		37.341110, 36.073269, 30.574144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927814, 36.682724, 30.966417>,  <37.916355, 35.915596, 30.940521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927814, 36.682724, 30.966417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549465, 36.621536, 30.851927>,  <37.322456, 36.584824, 30.783232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549465, 36.621536, 30.851927>,  <37.927814, 36.682724, 30.966417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549465, 36.621536, 30.851927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271796, 0.855326, 0.441072,
		0.177347, 0.494993, -0.850606,
		-0.945872, -0.152969, -0.286227,
		37.265705, 36.575645, 30.766058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638752, 37.362488, 30.867088>,  <37.927814, 36.682724, 30.966417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638752, 37.362488, 30.867088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314632, 37.128342, 30.878128>,  <37.120159, 36.987854, 30.884752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.314632, 37.128342, 30.878128>,  <37.638752, 37.362488, 30.867088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314632, 37.128342, 30.878128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485076, 0.696409, 0.528882,
		-0.328810, 0.415164, -0.848247,
		-0.810300, -0.585365, 0.027600,
		37.071541, 36.952732, 30.886408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203163, 37.833614, 30.664967>,  <37.638752, 37.362488, 30.867088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203163, 37.833614, 30.664967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001564, 37.551147, 30.863888>,  <36.880604, 37.381668, 30.983240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.001564, 37.551147, 30.863888>,  <37.203163, 37.833614, 30.664967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001564, 37.551147, 30.863888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661767, 0.685725, 0.303059,
		-0.555026, -0.176360, -0.812922,
		-0.503994, -0.706171, 0.497305,
		36.850365, 37.339294, 31.013079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935505, 38.281033, 31.130026>,  <37.203163, 37.833614, 30.664967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935505, 38.281033, 31.130026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165462, 38.594604, 31.223789>,  <37.303436, 38.782749, 31.280048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165462, 38.594604, 31.223789>,  <36.935505, 38.281033, 31.130026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165462, 38.594604, 31.223789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419468, -0.036395, -0.907040,
		-0.702525, 0.619780, -0.349757,
		0.574895, 0.783931, 0.234410,
		37.337933, 38.829784, 31.294111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910034, 38.803345, 30.612812>,  <36.935505, 38.281033, 31.130026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910034, 38.803345, 30.612812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267353, 38.908413, 30.758701>,  <37.481747, 38.971455, 30.846235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267353, 38.908413, 30.758701>,  <36.910034, 38.803345, 30.612812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267353, 38.908413, 30.758701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339492, 0.137474, -0.930509,
		-0.294553, 0.955043, 0.033632,
		0.893300, 0.262666, 0.364723,
		37.535343, 38.987213, 30.868118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054012, 39.340530, 30.261429>,  <36.910034, 38.803345, 30.612812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054012, 39.340530, 30.261429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401943, 39.198303, 30.398235>,  <37.610703, 39.112968, 30.480320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401943, 39.198303, 30.398235>,  <37.054012, 39.340530, 30.261429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401943, 39.198303, 30.398235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369691, 0.010691, -0.929093,
		0.326696, 0.934591, 0.140749,
		0.869827, -0.355565, 0.342017,
		37.662891, 39.091633, 30.500841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568901, 39.935108, 30.158966>,  <37.054012, 39.340530, 30.261429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568901, 39.935108, 30.158966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753468, 39.580235, 30.160240>,  <37.864208, 39.367310, 30.161005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753468, 39.580235, 30.160240>,  <37.568901, 39.935108, 30.158966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753468, 39.580235, 30.160240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349924, 0.178689, -0.919578,
		0.815261, 0.425421, 0.392895,
		0.461414, -0.887180, 0.003187,
		37.891891, 39.314079, 30.161196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134174, 40.055168, 29.660826>,  <37.568901, 39.935108, 30.158966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134174, 40.055168, 29.660826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154198, 39.657116, 29.694782>,  <38.166210, 39.418285, 29.715157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154198, 39.657116, 29.694782>,  <38.134174, 40.055168, 29.660826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154198, 39.657116, 29.694782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306227, -0.065614, -0.949695,
		0.950642, 0.073533, 0.301452,
		0.050054, -0.995132, 0.084893,
		38.169212, 39.358578, 29.720251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851398, 39.872646, 29.455782>,  <38.134174, 40.055168, 29.660826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851398, 39.872646, 29.455782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588940, 39.574505, 29.408587>,  <38.431465, 39.395622, 29.380270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588940, 39.574505, 29.408587>,  <38.851398, 39.872646, 29.455782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588940, 39.574505, 29.408587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399087, -0.210039, -0.892532,
		0.640468, -0.632720, 0.435277,
		-0.656148, -0.745351, -0.117987,
		38.392094, 39.350899, 29.373190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200691, 39.252205, 29.235516>,  <38.851398, 39.872646, 29.455782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200691, 39.252205, 29.235516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828838, 39.162140, 29.118843>,  <38.605724, 39.108101, 29.048840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828838, 39.162140, 29.118843>,  <39.200691, 39.252205, 29.235516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828838, 39.162140, 29.118843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364963, -0.453519, -0.813094,
		0.050798, -0.862334, 0.503785,
		-0.929635, -0.225167, -0.291683,
		38.549950, 39.094589, 29.031338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355274, 38.687576, 28.898626>,  <39.200691, 39.252205, 29.235516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355274, 38.687576, 28.898626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980770, 38.771225, 28.785713>,  <38.756069, 38.821415, 28.717966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980770, 38.771225, 28.785713>,  <39.355274, 38.687576, 28.898626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980770, 38.771225, 28.785713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170466, -0.432147, -0.885545,
		-0.307177, -0.877221, 0.368954,
		-0.936261, 0.209125, -0.282281,
		38.699890, 38.833961, 28.701029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039066, 38.072517, 28.604103>,  <39.355274, 38.687576, 28.898626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039066, 38.072517, 28.604103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804123, 38.358524, 28.452438>,  <38.663158, 38.530128, 28.361439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804123, 38.358524, 28.452438>,  <39.039066, 38.072517, 28.604103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804123, 38.358524, 28.452438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042686, -0.440468, -0.896753,
		-0.808203, -0.542897, 0.228190,
		-0.587354, 0.715018, -0.379162,
		38.627918, 38.573029, 28.338690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489498, 37.763687, 28.264219>,  <39.039066, 38.072517, 28.604103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489498, 37.763687, 28.264219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504482, 38.115910, 28.075235>,  <38.513474, 38.327244, 27.961845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504482, 38.115910, 28.075235>,  <38.489498, 37.763687, 28.264219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504482, 38.115910, 28.075235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062735, -0.469786, -0.880548,
		-0.997327, 0.062623, 0.037644,
		0.037458, 0.880556, -0.472459,
		38.515720, 38.380077, 27.933498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138836, 37.706543, 27.709324>,  <38.489498, 37.763687, 28.264219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138836, 37.706543, 27.709324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311726, 38.046322, 27.588249>,  <38.415459, 38.250191, 27.515604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311726, 38.046322, 27.588249>,  <38.138836, 37.706543, 27.709324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311726, 38.046322, 27.588249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118446, -0.279275, -0.952878,
		-0.893952, 0.447711, -0.020096,
		0.432226, 0.849447, -0.302688,
		38.441395, 38.301155, 27.497442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669743, 38.006348, 27.154182>,  <38.138836, 37.706543, 27.709324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669743, 38.006348, 27.154182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052109, 38.120411, 27.126169>,  <38.281528, 38.188850, 27.109362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.052109, 38.120411, 27.126169>,  <37.669743, 38.006348, 27.154182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052109, 38.120411, 27.126169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000285, -0.239402, -0.970920,
		-0.293633, 0.928101, -0.228930,
		0.955918, 0.285159, -0.070032,
		38.338882, 38.205959, 27.105160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776791, 38.431885, 26.536345>,  <37.669743, 38.006348, 27.154182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776791, 38.431885, 26.536345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150826, 38.320225, 26.623688>,  <38.375248, 38.253227, 26.676094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150826, 38.320225, 26.623688>,  <37.776791, 38.431885, 26.536345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150826, 38.320225, 26.623688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123329, -0.321308, -0.938910,
		0.332255, 0.904896, -0.266025,
		0.935092, -0.279149, 0.218356,
		38.431355, 38.236481, 26.689194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999664, 38.614960, 25.947178>,  <37.776791, 38.431885, 26.536345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999664, 38.614960, 25.947178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270111, 38.366493, 26.105680>,  <38.432381, 38.217415, 26.200783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270111, 38.366493, 26.105680>,  <37.999664, 38.614960, 25.947178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270111, 38.366493, 26.105680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170101, -0.391686, -0.904239,
		0.716890, 0.678775, -0.159165,
		0.676117, -0.621165, 0.396256,
		38.472946, 38.180145, 26.224558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531921, 38.638557, 25.501617>,  <37.999664, 38.614960, 25.947178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531921, 38.638557, 25.501617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 38.308147, 25.702408>,  <38.695961, 38.109901, 25.822882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634445, 38.308147, 25.702408>,  <38.531921, 38.638557, 25.501617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634445, 38.308147, 25.702408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329272, -0.413649, -0.848808,
		0.908782, 0.382844, 0.165966,
		0.256310, -0.826029, 0.501977,
		38.711338, 38.060337, 25.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205715, 38.514320, 25.490484>,  <38.531921, 38.638557, 25.501617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205715, 38.514320, 25.490484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.062180, 38.145126, 25.546089>,  <38.976059, 37.923611, 25.579453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.062180, 38.145126, 25.546089>,  <39.205715, 38.514320, 25.490484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062180, 38.145126, 25.546089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362277, -0.274979, -0.890585,
		0.860226, -0.269217, 0.433051,
		-0.358841, -0.922989, 0.139013,
		38.954529, 37.868229, 25.587793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750568, 38.149609, 25.211287>,  <39.205715, 38.514320, 25.490484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750568, 38.149609, 25.211287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448349, 37.888554, 25.233952>,  <39.267017, 37.731922, 25.247551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448349, 37.888554, 25.233952>,  <39.750568, 38.149609, 25.211287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448349, 37.888554, 25.233952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211897, -0.325319, -0.921557,
		0.619874, -0.684276, 0.384086,
		-0.755550, -0.652636, 0.056661,
		39.221684, 37.692764, 25.250950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041595, 37.528328, 25.043703>,  <39.750568, 38.149609, 25.211287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041595, 37.528328, 25.043703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645401, 37.499546, 24.996794>,  <39.407684, 37.482277, 24.968649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645401, 37.499546, 24.996794>,  <40.041595, 37.528328, 25.043703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645401, 37.499546, 24.996794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134000, -0.311088, -0.940887,
		0.031222, -0.947653, 0.317772,
		-0.990490, -0.071958, -0.117273,
		39.348255, 37.477959, 24.961613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.880718, 36.899048, 24.529587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 37.070763, 24.533789>,  <39.302727, 37.173790, 24.536310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.519474, 37.070763, 24.533789>,  <39.880718, 36.899048, 24.529587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519474, 37.070763, 24.533789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207890, -0.415686, -0.885430,
		-0.375730, -0.801825, 0.464654,
		-0.903111, 0.429280, 0.010506,
		39.248543, 37.199547, 24.536940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366268, 36.348534, 24.387108>,  <39.880718, 36.899048, 24.529587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366268, 36.348534, 24.387108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223766, 36.708427, 24.286266>,  <39.138264, 36.924366, 24.225761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.223766, 36.708427, 24.286266>,  <39.366268, 36.348534, 24.387108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223766, 36.708427, 24.286266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060347, -0.291397, -0.954697,
		-0.932439, -0.324901, 0.158107,
		-0.356254, 0.899738, -0.252103,
		39.116890, 36.978348, 24.210636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751404, 36.247623, 24.116642>,  <39.366268, 36.348534, 24.387108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751404, 36.247623, 24.116642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841175, 36.616428, 23.990448>,  <38.895039, 36.837711, 23.914732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841175, 36.616428, 23.990448>,  <38.751404, 36.247623, 24.116642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841175, 36.616428, 23.990448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000275, -0.323683, -0.946165,
		-0.974491, 0.212431, -0.072390,
		0.224426, 0.922010, -0.315485,
		38.908504, 36.893032, 23.895803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293476, 36.368099, 23.480843>,  <38.751404, 36.247623, 24.116642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293476, 36.368099, 23.480843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596672, 36.628056, 23.458599>,  <38.778591, 36.784031, 23.445253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596672, 36.628056, 23.458599>,  <38.293476, 36.368099, 23.480843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596672, 36.628056, 23.458599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201126, -0.313973, -0.927884,
		-0.620485, 0.692142, -0.368699,
		0.757989, 0.649893, -0.055608,
		38.824070, 36.823025, 23.441917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159153, 36.770214, 22.824377>,  <38.293476, 36.368099, 23.480843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159153, 36.770214, 22.824377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549774, 36.791828, 22.907732>,  <38.784145, 36.804798, 22.957745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.549774, 36.791828, 22.907732>,  <38.159153, 36.770214, 22.824377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549774, 36.791828, 22.907732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215273, -0.253696, -0.943025,
		0.001909, 0.965773, -0.259380,
		0.976552, 0.054038, 0.208389,
		38.842739, 36.808041, 22.970249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403290, 36.878513, 22.157055>,  <38.159153, 36.770214, 22.824377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403290, 36.878513, 22.157055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729111, 36.756363, 22.354336>,  <38.924603, 36.683071, 22.472704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.729111, 36.756363, 22.354336>,  <38.403290, 36.878513, 22.157055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729111, 36.756363, 22.354336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360074, -0.400425, -0.842619,
		0.454809, 0.863946, -0.216208,
		0.814552, -0.305379, 0.493202,
		38.973476, 36.664749, 22.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905750, 37.004452, 21.700666>,  <38.403290, 36.878513, 22.157055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905750, 37.004452, 21.700666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065960, 36.733440, 21.947420>,  <39.162086, 36.570835, 22.095472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065960, 36.733440, 21.947420>,  <38.905750, 37.004452, 21.700666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065960, 36.733440, 21.947420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455132, -0.437212, -0.775694,
		0.795260, 0.591444, 0.133251,
		0.400520, -0.677525, 0.616882,
		39.186115, 36.530182, 22.132484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609562, 37.093964, 21.712822>,  <38.905750, 37.004452, 21.700666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609562, 37.093964, 21.712822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.533043, 36.713646, 21.810310>,  <39.487129, 36.485455, 21.868803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.533043, 36.713646, 21.810310>,  <39.609562, 37.093964, 21.712822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533043, 36.713646, 21.810310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554893, -0.309582, -0.772174,
		0.809628, -0.012479, 0.586810,
		-0.191301, -0.950791, 0.243722,
		39.475651, 36.428410, 21.883427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216507, 36.729443, 21.596228>,  <39.609562, 37.093964, 21.712822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216507, 36.729443, 21.596228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923229, 36.458527, 21.620577>,  <39.747261, 36.295979, 21.635185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923229, 36.458527, 21.620577>,  <40.216507, 36.729443, 21.596228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923229, 36.458527, 21.620577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257184, -0.359048, -0.897185,
		0.629509, -0.642157, 0.437440,
		-0.733196, -0.677288, 0.060872,
		39.703270, 36.255341, 21.638838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539433, 36.085697, 21.439056>,  <40.216507, 36.729443, 21.596228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539433, 36.085697, 21.439056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150928, 36.024452, 21.366165>,  <39.917828, 35.987705, 21.322430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150928, 36.024452, 21.366165>,  <40.539433, 36.085697, 21.439056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150928, 36.024452, 21.366165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211634, -0.205222, -0.955560,
		0.108915, -0.966664, 0.231729,
		-0.971261, -0.153116, -0.182228,
		39.859550, 35.978516, 21.311497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555561, 35.475704, 21.100683>,  <40.539433, 36.085697, 21.439056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555561, 35.475704, 21.100683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 35.623745, 20.993879>,  <39.986095, 35.712570, 20.929796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199646, 35.623745, 20.993879>,  <40.555561, 35.475704, 21.100683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199646, 35.623745, 20.993879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152122, -0.311081, -0.938130,
		-0.430271, -0.875357, 0.220495,
		-0.889790, 0.370108, -0.267010,
		39.932709, 35.734776, 20.913776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222019, 34.967110, 20.817377>,  <40.555561, 35.475704, 21.100683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222019, 34.967110, 20.817377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039131, 35.279301, 20.646822>,  <39.929398, 35.466614, 20.544489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039131, 35.279301, 20.646822>,  <40.222019, 34.967110, 20.817377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039131, 35.279301, 20.646822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044981, -0.458528, -0.887541,
		-0.888214, -0.424984, 0.174543,
		-0.457223, 0.780475, -0.426387,
		39.901962, 35.513443, 20.518906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907593, 34.676128, 20.225927>,  <40.222019, 34.967110, 20.817377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907593, 34.676128, 20.225927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845940, 35.056019, 20.116926>,  <39.808949, 35.283955, 20.051525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.845940, 35.056019, 20.116926>,  <39.907593, 34.676128, 20.225927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845940, 35.056019, 20.116926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078253, -0.286667, -0.954829,
		-0.984947, -0.125844, 0.118503,
		-0.154131, 0.949729, -0.272504,
		39.799702, 35.340939, 20.035175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252396, 34.714382, 20.059477>,  <39.907593, 34.676128, 20.225927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252396, 34.714382, 20.059477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464352, 34.996216, 19.870676>,  <39.591526, 35.165318, 19.757397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464352, 34.996216, 19.870676>,  <39.252396, 34.714382, 20.059477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464352, 34.996216, 19.870676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426557, -0.259608, -0.866402,
		-0.732987, 0.660429, 0.162983,
		0.529886, 0.704583, -0.472000,
		39.623318, 35.207592, 19.729076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809341, 35.192501, 19.612936>,  <39.252396, 34.714382, 20.059477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809341, 35.192501, 19.612936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176472, 35.220993, 19.456720>,  <39.396751, 35.238087, 19.362991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.176472, 35.220993, 19.456720>,  <38.809341, 35.192501, 19.612936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176472, 35.220993, 19.456720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389975, -0.022270, -0.920556,
		-0.074265, 0.997212, 0.007336,
		0.917826, 0.071226, -0.390541,
		39.451820, 35.242359, 19.339558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674950, 35.532913, 18.911320>,  <38.809341, 35.192501, 19.612936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674950, 35.532913, 18.911320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058750, 35.426109, 18.875385>,  <39.289028, 35.362026, 18.853825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.058750, 35.426109, 18.875385>,  <38.674950, 35.532913, 18.911320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058750, 35.426109, 18.875385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117030, -0.087711, -0.989248,
		0.256254, 0.959695, -0.115406,
		0.959499, -0.267005, -0.089837,
		39.346600, 35.346008, 18.848434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809685, 35.986881, 18.397211>,  <38.674950, 35.532913, 18.911320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809685, 35.986881, 18.397211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078724, 35.692730, 18.430254>,  <39.240147, 35.516239, 18.450079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078724, 35.692730, 18.430254>,  <38.809685, 35.986881, 18.397211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078724, 35.692730, 18.430254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092698, -0.194477, -0.976517,
		0.734175, 0.649150, -0.198974,
		0.672602, -0.735379, 0.082606,
		39.280506, 35.472115, 18.455036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194935, 36.019665, 17.761999>,  <38.809685, 35.986881, 18.397211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194935, 36.019665, 17.761999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275837, 35.649548, 17.890326>,  <39.324379, 35.427475, 17.967321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275837, 35.649548, 17.890326>,  <39.194935, 36.019665, 17.761999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275837, 35.649548, 17.890326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279494, -0.368497, -0.886619,
		0.938604, 0.089654, -0.333144,
		0.202251, -0.925296, 0.320815,
		39.336514, 35.371960, 17.986570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737808, 35.706104, 17.233049>,  <39.194935, 36.019665, 17.761999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737808, 35.706104, 17.233049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528526, 35.421741, 17.421034>,  <39.402958, 35.251125, 17.533825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.528526, 35.421741, 17.421034>,  <39.737808, 35.706104, 17.233049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528526, 35.421741, 17.421034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253475, -0.396690, -0.882263,
		0.813636, -0.580731, 0.027354,
		-0.523208, -0.710907, 0.469962,
		39.371563, 35.208469, 17.562023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863899, 35.146858, 16.781435>,  <39.737808, 35.706104, 17.233049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863899, 35.146858, 16.781435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574253, 34.991383, 17.009321>,  <39.400467, 34.898098, 17.146053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.574253, 34.991383, 17.009321>,  <39.863899, 35.146858, 16.781435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574253, 34.991383, 17.009321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398702, -0.438119, -0.805661,
		0.562755, -0.810539, 0.162278,
		-0.724116, -0.388689, 0.569716,
		39.357018, 34.874775, 17.180237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943760, 34.448914, 16.604937>,  <39.863899, 35.146858, 16.781435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943760, 34.448914, 16.604937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579880, 34.530361, 16.749701>,  <39.361549, 34.579231, 16.836559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579880, 34.530361, 16.749701>,  <39.943760, 34.448914, 16.604937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579880, 34.530361, 16.749701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403401, -0.640111, -0.653854,
		0.098522, -0.740808, 0.664453,
		-0.909704, 0.203623, 0.361908,
		39.306969, 34.591450, 16.858273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687469, 33.795437, 16.521349>,  <39.943760, 34.448914, 16.604937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687469, 33.795437, 16.521349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381866, 34.044636, 16.588478>,  <39.198505, 34.194153, 16.628756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381866, 34.044636, 16.588478>,  <39.687469, 33.795437, 16.521349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381866, 34.044636, 16.588478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593957, -0.577532, -0.560065,
		-0.251994, -0.527575, 0.811273,
		-0.764012, 0.622994, 0.167822,
		39.152664, 34.231533, 16.638824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049278, 33.362240, 16.839911>,  <39.687469, 33.795437, 16.521349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049278, 33.362240, 16.839911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941608, 33.709778, 16.673706>,  <38.877007, 33.918301, 16.573984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.941608, 33.709778, 16.673706>,  <39.049278, 33.362240, 16.839911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941608, 33.709778, 16.673706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564739, -0.491873, -0.662670,
		-0.780137, 0.056279, 0.623073,
		-0.269178, 0.868846, -0.415511,
		38.860855, 33.970432, 16.549053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397118, 33.333702, 16.708471>,  <39.049278, 33.362240, 16.839911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397118, 33.333702, 16.708471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502552, 33.621098, 16.451008>,  <38.565811, 33.793537, 16.296530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502552, 33.621098, 16.451008>,  <38.397118, 33.333702, 16.708471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502552, 33.621098, 16.451008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758472, -0.257912, -0.598499,
		-0.596023, 0.645950, 0.476975,
		0.263583, 0.718492, -0.643656,
		38.581627, 33.836643, 16.257912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834896, 33.804337, 16.280972>,  <38.397118, 33.333702, 16.708471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834896, 33.804337, 16.280972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809639, 33.412956, 16.359598>,  <37.794483, 33.178127, 16.406775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809639, 33.412956, 16.359598>,  <37.834896, 33.804337, 16.280972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809639, 33.412956, 16.359598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312649, 0.206440, 0.927164,
		-0.947767, -0.002909, -0.318949,
		-0.063147, -0.978455, 0.196567,
		37.790695, 33.119419, 16.418568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302631, 33.773762, 16.707232>,  <37.834896, 33.804337, 16.280972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302631, 33.773762, 16.707232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478161, 33.418728, 16.763264>,  <37.583477, 33.205708, 16.796883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.478161, 33.418728, 16.763264>,  <37.302631, 33.773762, 16.707232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478161, 33.418728, 16.763264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233982, 0.037643, 0.971512,
		-0.867575, -0.459098, -0.191160,
		0.438823, -0.887588, 0.140079,
		37.609806, 33.152451, 16.805288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799656, 33.365326, 16.962366>,  <37.302631, 33.773762, 16.707232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799656, 33.365326, 16.962366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.158962, 33.232307, 17.077274>,  <37.374546, 33.152496, 17.146219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.158962, 33.232307, 17.077274>,  <36.799656, 33.365326, 16.962366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158962, 33.232307, 17.077274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341497, -0.116826, 0.932594,
		-0.276574, -0.935822, -0.218506,
		0.898269, -0.332550, 0.287269,
		37.428444, 33.132542, 17.163456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613998, 32.968361, 17.504530>,  <36.799656, 33.365326, 16.962366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613998, 32.968361, 17.504530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009380, 32.993546, 17.559662>,  <37.246609, 33.008656, 17.592741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009380, 32.993546, 17.559662>,  <36.613998, 32.968361, 17.504530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009380, 32.993546, 17.559662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142878, 0.084319, 0.986142,
		0.050459, -0.994448, 0.092340,
		0.988453, 0.062953, 0.137830,
		37.305916, 33.012432, 17.601011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775265, 32.454987, 17.991585>,  <36.613998, 32.968361, 17.504530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775265, 32.454987, 17.991585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085541, 32.706570, 18.012402>,  <37.271706, 32.857521, 18.024893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.085541, 32.706570, 18.012402>,  <36.775265, 32.454987, 17.991585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085541, 32.706570, 18.012402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036759, -0.037297, 0.998628,
		0.630037, -0.776543, -0.005811,
		0.775694, 0.628959, 0.052043,
		37.318249, 32.895256, 18.028015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244751, 32.180538, 18.506958>,  <36.775265, 32.454987, 17.991585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244751, 32.180538, 18.506958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380589, 32.556015, 18.483196>,  <37.462090, 32.781303, 18.468939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380589, 32.556015, 18.483196>,  <37.244751, 32.180538, 18.506958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380589, 32.556015, 18.483196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083177, 0.032938, 0.995990,
		0.936887, -0.343174, -0.066892,
		0.339594, 0.938694, -0.059404,
		37.482468, 32.837624, 18.465376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766907, 32.172321, 18.866516>,  <37.244751, 32.180538, 18.506958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766907, 32.172321, 18.866516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680458, 32.562637, 18.879906>,  <37.628590, 32.796829, 18.887939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680458, 32.562637, 18.879906>,  <37.766907, 32.172321, 18.866516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680458, 32.562637, 18.879906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348772, 0.045134, 0.936120,
		0.911948, 0.213992, -0.350083,
		-0.216123, 0.975792, 0.033474,
		37.615620, 32.855373, 18.889948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378326, 32.571640, 19.195087>,  <37.766907, 32.172321, 18.866516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378326, 32.571640, 19.195087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050999, 32.797253, 19.239307>,  <37.854603, 32.932621, 19.265841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.050999, 32.797253, 19.239307>,  <38.378326, 32.571640, 19.195087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050999, 32.797253, 19.239307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253831, 0.182074, 0.949957,
		0.515679, 0.805429, -0.292163,
		-0.818318, 0.564033, 0.110551,
		37.805504, 32.966461, 19.272472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677589, 33.220287, 19.414341>,  <38.378326, 32.571640, 19.195087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677589, 33.220287, 19.414341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293167, 33.247059, 19.521595>,  <38.062515, 33.263123, 19.585947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.293167, 33.247059, 19.521595>,  <38.677589, 33.220287, 19.414341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293167, 33.247059, 19.521595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276211, 0.264921, 0.923864,
		-0.009199, 0.961944, -0.273091,
		-0.961053, 0.066932, 0.268136,
		38.004852, 33.267139, 19.602036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646870, 33.887852, 19.747885>,  <38.677589, 33.220287, 19.414341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646870, 33.887852, 19.747885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325706, 33.681194, 19.866827>,  <38.133007, 33.557201, 19.938192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325706, 33.681194, 19.866827>,  <38.646870, 33.887852, 19.747885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325706, 33.681194, 19.866827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164503, 0.287425, 0.943571,
		-0.572956, 0.806516, -0.145786,
		-0.802908, -0.516642, 0.297356,
		38.084835, 33.526203, 19.956034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384567, 34.272530, 20.282602>,  <38.646870, 33.887852, 19.747885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384567, 34.272530, 20.282602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257271, 33.898907, 20.347412>,  <38.180893, 33.674732, 20.386297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.257271, 33.898907, 20.347412>,  <38.384567, 34.272530, 20.282602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257271, 33.898907, 20.347412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134271, 0.124774, 0.983058,
		-0.938453, 0.334605, 0.085709,
		-0.318242, -0.934062, 0.162022,
		38.161797, 33.618687, 20.396019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838669, 34.396225, 20.683987>,  <38.384567, 34.272530, 20.282602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838669, 34.396225, 20.683987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941917, 34.015293, 20.749018>,  <38.003868, 33.786732, 20.788036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941917, 34.015293, 20.749018>,  <37.838669, 34.396225, 20.683987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941917, 34.015293, 20.749018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209150, 0.219374, 0.952959,
		-0.943201, -0.211979, 0.255806,
		0.258125, -0.952334, 0.162578,
		38.019356, 33.729591, 20.797791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648430, 34.297741, 21.382000>,  <37.838669, 34.396225, 20.683987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648430, 34.297741, 21.382000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881275, 33.976418, 21.331661>,  <38.020985, 33.783623, 21.301458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881275, 33.976418, 21.331661>,  <37.648430, 34.297741, 21.382000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881275, 33.976418, 21.331661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213840, 0.001921, 0.976867,
		-0.784483, -0.595561, 0.172898,
		0.582116, -0.803308, -0.125847,
		38.055908, 33.735424, 21.293907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423286, 33.774429, 21.879324>,  <37.648430, 34.297741, 21.382000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423286, 33.774429, 21.879324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811047, 33.722046, 21.796267>,  <38.043701, 33.690617, 21.746431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.811047, 33.722046, 21.796267>,  <37.423286, 33.774429, 21.879324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811047, 33.722046, 21.796267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207119, -0.017774, 0.978154,
		-0.131790, -0.991228, 0.009895,
		0.969399, -0.130961, -0.207644,
		38.101868, 33.682758, 21.733973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646381, 33.328869, 22.264759>,  <37.423286, 33.774429, 21.879324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646381, 33.328869, 22.264759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985168, 33.513901, 22.159941>,  <38.188442, 33.624920, 22.097050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985168, 33.513901, 22.159941>,  <37.646381, 33.328869, 22.264759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985168, 33.513901, 22.159941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347675, -0.109040, 0.931253,
		0.402203, -0.879848, -0.253180,
		0.846968, 0.462577, -0.262045,
		38.239258, 33.652672, 22.081327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116547, 32.953003, 22.488136>,  <37.646381, 33.328869, 22.264759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116547, 32.953003, 22.488136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342834, 33.279293, 22.439882>,  <38.478607, 33.475067, 22.410931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.342834, 33.279293, 22.439882>,  <38.116547, 32.953003, 22.488136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342834, 33.279293, 22.439882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313925, -0.077774, 0.946257,
		0.762503, -0.573187, -0.300075,
		0.565721, 0.815725, -0.120635,
		38.512550, 33.524010, 22.403692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764385, 32.751110, 22.738535>,  <38.116547, 32.953003, 22.488136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764385, 32.751110, 22.738535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755798, 33.151016, 22.736959>,  <38.750645, 33.390961, 22.736015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.755798, 33.151016, 22.736959>,  <38.764385, 32.751110, 22.738535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755798, 33.151016, 22.736959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308372, 0.010368, 0.951209,
		0.951024, 0.019210, -0.308521,
		-0.021471, 0.999762, -0.003936,
		38.749355, 33.450943, 22.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353344, 32.932785, 23.151060>,  <38.764385, 32.751110, 22.738535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353344, 32.932785, 23.151060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118191, 33.255623, 23.172945>,  <38.977100, 33.449326, 23.186075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118191, 33.255623, 23.172945>,  <39.353344, 32.932785, 23.151060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118191, 33.255623, 23.172945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069169, -0.117537, 0.990657,
		0.805987, 0.578602, 0.124923,
		-0.587879, 0.807097, 0.054712,
		38.941826, 33.497753, 23.189358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629383, 33.239475, 23.747053>,  <39.353344, 32.932785, 23.151060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629383, 33.239475, 23.747053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.296379, 33.451893, 23.683914>,  <39.096577, 33.579346, 23.646030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.296379, 33.451893, 23.683914>,  <39.629383, 33.239475, 23.747053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296379, 33.451893, 23.683914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115599, 0.112136, 0.986946,
		0.541814, 0.839891, -0.031966,
		-0.832511, 0.531045, -0.157847,
		39.046627, 33.611206, 23.636560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695408, 34.053295, 23.924938>,  <39.629383, 33.239475, 23.747053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695408, 34.053295, 23.924938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319530, 33.919216, 23.952135>,  <39.094006, 33.838768, 23.968454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319530, 33.919216, 23.952135>,  <39.695408, 34.053295, 23.924938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319530, 33.919216, 23.952135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011522, 0.229707, 0.973192,
		-0.341831, 0.913716, -0.219716,
		-0.939691, -0.335199, 0.067993,
		39.037624, 33.818657, 23.972532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.521660, 38.802399, 26.923243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171253, 38.620945, 26.988729>,  <38.961010, 38.512074, 27.028023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.171253, 38.620945, 26.988729>,  <39.521660, 38.802399, 26.923243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171253, 38.620945, 26.988729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174074, 0.614004, 0.769869,
		-0.449764, 0.645921, -0.616846,
		-0.876020, -0.453636, 0.163719,
		38.908447, 38.484856, 27.037846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065941, 39.355942, 27.102825>,  <39.521660, 38.802399, 26.923243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065941, 39.355942, 27.102825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860764, 39.036777, 27.229462>,  <38.737659, 38.845280, 27.305445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.860764, 39.036777, 27.229462>,  <39.065941, 39.355942, 27.102825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860764, 39.036777, 27.229462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241689, 0.488124, 0.838643,
		-0.823699, 0.353656, -0.443224,
		-0.512940, -0.797911, 0.316592,
		38.706882, 38.797405, 27.324440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582172, 39.644329, 27.561028>,  <39.065941, 39.355942, 27.102825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582172, 39.644329, 27.561028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562302, 39.259678, 27.668957>,  <38.550381, 39.028889, 27.733715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.562302, 39.259678, 27.668957>,  <38.582172, 39.644329, 27.561028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562302, 39.259678, 27.668957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251570, 0.273494, 0.928393,
		-0.966563, -0.021759, -0.255503,
		-0.049678, -0.961628, 0.269823,
		38.547398, 38.971191, 27.749905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911564, 39.485081, 27.808260>,  <38.582172, 39.644329, 27.561028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911564, 39.485081, 27.808260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157253, 39.216526, 27.974138>,  <38.304668, 39.055393, 28.073666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.157253, 39.216526, 27.974138>,  <37.911564, 39.485081, 27.808260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157253, 39.216526, 27.974138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326261, 0.262439, 0.908119,
		-0.718530, -0.693086, -0.057851,
		0.614222, -0.671385, 0.414697,
		38.341518, 39.015110, 28.098547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450371, 39.050720, 28.260460>,  <37.911564, 39.485081, 27.808260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450371, 39.050720, 28.260460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827011, 38.989357, 28.380367>,  <38.052994, 38.952538, 28.452312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827011, 38.989357, 28.380367>,  <37.450371, 39.050720, 28.260460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827011, 38.989357, 28.380367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243230, 0.305814, 0.920498,
		-0.232886, -0.939651, 0.250640,
		0.941596, -0.153408, 0.299771,
		38.109489, 38.943336, 28.470299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278843, 38.761951, 28.869421>,  <37.450371, 39.050720, 28.260460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278843, 38.761951, 28.869421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663715, 38.862190, 28.912161>,  <37.894638, 38.922333, 28.937805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.663715, 38.862190, 28.912161>,  <37.278843, 38.761951, 28.869421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663715, 38.862190, 28.912161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115324, 0.019331, 0.993140,
		0.246811, -0.967899, 0.047500,
		0.962177, 0.250596, 0.106851,
		37.952370, 38.937370, 28.944216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636749, 38.218876, 29.255123>,  <37.278843, 38.761951, 28.869421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636749, 38.218876, 29.255123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 38.564857, 29.305401>,  <37.947701, 38.772446, 29.335567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 38.564857, 29.305401>,  <37.636749, 38.218876, 29.255123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831093, 38.564857, 29.305401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062690, -0.108953, 0.992068,
		0.871785, -0.489887, 0.001288,
		0.485861, 0.864951, 0.125695,
		37.976852, 38.824345, 29.343109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136314, 38.063976, 29.704708>,  <37.636749, 38.218876, 29.255123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136314, 38.063976, 29.704708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148750, 38.463596, 29.716900>,  <38.156212, 38.703369, 29.724215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148750, 38.463596, 29.716900>,  <38.136314, 38.063976, 29.704708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148750, 38.463596, 29.716900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001712, -0.030546, 0.999532,
		0.999515, -0.031021, -0.002660,
		0.031088, 0.999052, 0.030478,
		38.158077, 38.763313, 29.726044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576912, 38.179344, 30.392645>,  <38.136314, 38.063976, 29.704708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576912, 38.179344, 30.392645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.352360, 38.495613, 30.294918>,  <38.217628, 38.685375, 30.236282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.352360, 38.495613, 30.294918>,  <38.576912, 38.179344, 30.392645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352360, 38.495613, 30.294918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343388, 0.046056, 0.938064,
		0.752951, 0.610508, 0.245652,
		-0.561382, 0.790670, -0.244319,
		38.183945, 38.732815, 30.221622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730370, 38.535282, 30.902378>,  <38.576912, 38.179344, 30.392645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730370, 38.535282, 30.902378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417393, 38.741516, 30.762690>,  <38.229607, 38.865257, 30.678877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.417393, 38.741516, 30.762690>,  <38.730370, 38.535282, 30.902378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417393, 38.741516, 30.762690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236339, 0.272975, 0.932539,
		0.576134, 0.812191, -0.091733,
		-0.782441, 0.515588, -0.349222,
		38.182659, 38.896191, 30.657923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684998, 39.117443, 31.387936>,  <38.730370, 38.535282, 30.902378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684998, 39.117443, 31.387936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319279, 39.091255, 31.228045>,  <38.099850, 39.075542, 31.132111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319279, 39.091255, 31.228045>,  <38.684998, 39.117443, 31.387936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319279, 39.091255, 31.228045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405051, 0.150401, 0.901839,
		0.001073, 0.986455, -0.164031,
		-0.914294, -0.065473, -0.399725,
		38.044991, 39.071613, 31.108128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263504, 39.750130, 31.545889>,  <38.684998, 39.117443, 31.387936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263504, 39.750130, 31.545889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997616, 39.458115, 31.482395>,  <37.838081, 39.282906, 31.444300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997616, 39.458115, 31.482395>,  <38.263504, 39.750130, 31.545889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997616, 39.458115, 31.482395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433529, 0.203885, 0.877771,
		-0.608441, 0.652287, -0.452018,
		-0.664719, -0.730036, -0.158733,
		37.798199, 39.239105, 31.434774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595852, 40.061096, 31.750032>,  <38.263504, 39.750130, 31.545889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595852, 40.061096, 31.750032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516769, 39.669132, 31.739582>,  <37.469322, 39.433952, 31.733311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.516769, 39.669132, 31.739582>,  <37.595852, 40.061096, 31.750032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516769, 39.669132, 31.739582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531558, 0.084774, 0.842769,
		-0.823626, 0.180507, -0.537641,
		-0.197704, -0.979913, -0.026128,
		37.457458, 39.375156, 31.731743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929379, 40.008038, 31.610353>,  <37.595852, 40.061096, 31.750032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929379, 40.008038, 31.610353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053265, 39.690441, 31.819601>,  <37.127598, 39.499882, 31.945150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.053265, 39.690441, 31.819601>,  <36.929379, 40.008038, 31.610353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053265, 39.690441, 31.819601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706952, 0.175618, 0.685111,
		-0.635841, -0.582010, -0.506923,
		0.309716, -0.793992, 0.523118,
		37.146179, 39.452244, 31.976536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318474, 40.008369, 32.138676>,  <36.929379, 40.008038, 31.610353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318474, 40.008369, 32.138676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982113, 40.207756, 32.054371>,  <35.780296, 40.327389, 32.003788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.982113, 40.207756, 32.054371>,  <36.318474, 40.008369, 32.138676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982113, 40.207756, 32.054371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042280, -0.448754, -0.892655,
		-0.539537, -0.741722, 0.398432,
		-0.840899, 0.498466, -0.210759,
		35.729843, 40.357296, 31.991144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961651, 39.500031, 31.864454>,  <36.318474, 40.008369, 32.138676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961651, 39.500031, 31.864454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799686, 39.849098, 31.755283>,  <35.702507, 40.058540, 31.689781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799686, 39.849098, 31.755283>,  <35.961651, 39.500031, 31.864454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799686, 39.849098, 31.755283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170090, -0.365168, -0.915271,
		-0.898397, -0.324181, 0.296293,
		-0.404910, 0.872673, -0.272926,
		35.678215, 40.110901, 31.673405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362949, 39.375793, 31.514521>,  <35.961651, 39.500031, 31.864454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362949, 39.375793, 31.514521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402557, 39.759514, 31.408741>,  <35.426323, 39.989746, 31.345274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402557, 39.759514, 31.408741>,  <35.362949, 39.375793, 31.514521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402557, 39.759514, 31.408741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240691, -0.234775, -0.941779,
		-0.965538, 0.156903, 0.207648,
		0.099018, 0.959303, -0.264450,
		35.432262, 40.047306, 31.329407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836033, 39.504635, 30.925583>,  <35.362949, 39.375793, 31.514521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836033, 39.504635, 30.925583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114758, 39.789009, 30.887568>,  <35.281990, 39.959633, 30.864758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.114758, 39.789009, 30.887568>,  <34.836033, 39.504635, 30.925583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114758, 39.789009, 30.887568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159475, 0.024375, -0.986901,
		-0.699304, 0.702837, 0.130360,
		0.696808, 0.710933, -0.095039,
		35.323799, 40.002289, 30.859056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573624, 40.203182, 30.719831>,  <34.836033, 39.504635, 30.925583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573624, 40.203182, 30.719831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949188, 40.175030, 30.585079>,  <35.174526, 40.158138, 30.504227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949188, 40.175030, 30.585079>,  <34.573624, 40.203182, 30.719831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949188, 40.175030, 30.585079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339757, -0.033562, -0.939914,
		0.054845, 0.996955, -0.055424,
		0.938913, -0.070380, -0.336882,
		35.230862, 40.153915, 30.484015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671597, 40.782822, 30.211416>,  <34.573624, 40.203182, 30.719831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671597, 40.782822, 30.211416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964787, 40.517899, 30.149334>,  <35.140701, 40.358944, 30.112085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964787, 40.517899, 30.149334>,  <34.671597, 40.782822, 30.211416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964787, 40.517899, 30.149334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238816, -0.036904, -0.970363,
		0.636954, 0.748320, -0.185220,
		0.732978, -0.662310, -0.155205,
		35.184681, 40.319206, 30.102772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000465, 41.057747, 29.581474>,  <34.671597, 40.782822, 30.211416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000465, 41.057747, 29.581474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112778, 40.674427, 29.602722>,  <35.180164, 40.444435, 29.615471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.112778, 40.674427, 29.602722>,  <35.000465, 41.057747, 29.581474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112778, 40.674427, 29.602722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150848, -0.098720, -0.983616,
		0.947844, 0.268166, -0.172276,
		0.280780, -0.958301, 0.053119,
		35.197010, 40.386936, 29.618658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376595, 41.041576, 29.029116>,  <35.000465, 41.057747, 29.581474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376595, 41.041576, 29.029116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286491, 40.665318, 29.130659>,  <35.232430, 40.439564, 29.191586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.286491, 40.665318, 29.130659>,  <35.376595, 41.041576, 29.029116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286491, 40.665318, 29.130659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044448, -0.250361, -0.967132,
		0.973285, -0.229137, 0.014586,
		-0.225257, -0.940647, 0.253857,
		35.218914, 40.383125, 29.206816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831875, 40.540459, 28.671665>,  <35.376595, 41.041576, 29.029116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831875, 40.540459, 28.671665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525318, 40.292587, 28.739365>,  <35.341385, 40.143864, 28.779984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.525318, 40.292587, 28.739365>,  <35.831875, 40.540459, 28.671665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525318, 40.292587, 28.739365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194847, -0.475307, -0.857973,
		0.612114, -0.624564, 0.485012,
		-0.766389, -0.619680, 0.169248,
		35.295403, 40.106682, 28.790138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975330, 39.931633, 28.303368>,  <35.831875, 40.540459, 28.671665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975330, 39.931633, 28.303368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590115, 39.868187, 28.390450>,  <35.358986, 39.830120, 28.442698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590115, 39.868187, 28.390450>,  <35.975330, 39.931633, 28.303368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590115, 39.868187, 28.390450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090417, -0.570967, -0.815979,
		0.253730, -0.805505, 0.535522,
		-0.963040, -0.158618, 0.217703,
		35.301201, 39.820602, 28.455761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820614, 39.210754, 28.192352>,  <35.975330, 39.931633, 28.303368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820614, 39.210754, 28.192352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.471626, 39.405376, 28.174154>,  <35.262234, 39.522148, 28.163237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.471626, 39.405376, 28.174154>,  <35.820614, 39.210754, 28.192352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471626, 39.405376, 28.174154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236466, -0.501818, -0.832023,
		-0.427651, -0.715155, 0.552872,
		-0.872467, 0.486551, -0.045493,
		35.209885, 39.551342, 28.160505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369186, 38.693367, 28.035059>,  <35.820614, 39.210754, 28.192352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369186, 38.693367, 28.035059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191406, 39.038879, 27.940105>,  <35.084740, 39.246185, 27.883133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.191406, 39.038879, 27.940105>,  <35.369186, 38.693367, 28.035059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191406, 39.038879, 27.940105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356558, -0.413676, -0.837699,
		-0.821787, -0.287673, 0.491845,
		-0.444447, 0.863780, -0.237382,
		35.058071, 39.298012, 27.868891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755810, 38.453655, 27.575457>,  <35.369186, 38.693367, 28.035059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755810, 38.453655, 27.575457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784748, 38.847355, 27.510927>,  <34.802109, 39.083572, 27.472210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.784748, 38.847355, 27.510927>,  <34.755810, 38.453655, 27.575457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784748, 38.847355, 27.510927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337976, -0.127986, -0.932412,
		-0.938370, 0.121978, 0.323393,
		0.072344, 0.984246, -0.161324,
		34.806450, 39.142628, 27.462530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110527, 38.780861, 27.393024>,  <34.755810, 38.453655, 27.575457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110527, 38.780861, 27.393024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.420155, 38.986782, 27.245619>,  <34.605930, 39.110336, 27.157175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.420155, 38.986782, 27.245619>,  <34.110527, 38.780861, 27.393024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420155, 38.986782, 27.245619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405186, -0.044421, -0.913154,
		-0.486465, 0.856157, 0.174206,
		0.774065, 0.514803, -0.368512,
		34.652374, 39.141224, 27.135065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378269, 38.737545, 27.282333>,  <34.110527, 38.780861, 27.393024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378269, 38.737545, 27.282333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185585, 38.395351, 27.358330>,  <33.069973, 38.190033, 27.403929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.185585, 38.395351, 27.358330>,  <33.378269, 38.737545, 27.282333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185585, 38.395351, 27.358330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323344, 0.027995, 0.945867,
		-0.814495, 0.517068, 0.263131,
		-0.481711, -0.855486, 0.189993,
		33.041073, 38.138706, 27.415327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991848, 38.921059, 27.947842>,  <33.378269, 38.737545, 27.282333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991848, 38.921059, 27.947842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.017406, 38.525723, 27.892553>,  <33.032742, 38.288521, 27.859381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.017406, 38.525723, 27.892553>,  <32.991848, 38.921059, 27.947842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017406, 38.525723, 27.892553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288690, -0.114279, 0.950578,
		-0.955288, -0.100639, 0.278022,
		0.063894, -0.988338, -0.138223,
		33.036575, 38.229221, 27.851086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583206, 38.626850, 28.493996>,  <32.991848, 38.921059, 27.947842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583206, 38.626850, 28.493996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801003, 38.315620, 28.368698>,  <32.931683, 38.128883, 28.293520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.801003, 38.315620, 28.368698>,  <32.583206, 38.626850, 28.493996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801003, 38.315620, 28.368698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410131, -0.078790, 0.908617,
		-0.731656, -0.623206, 0.276214,
		0.544493, -0.778078, -0.313243,
		32.964352, 38.082195, 28.274725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302212, 37.944077, 28.915943>,  <32.583206, 38.626850, 28.493996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302212, 37.944077, 28.915943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.675144, 37.862320, 28.796625>,  <32.898903, 37.813267, 28.725035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.675144, 37.862320, 28.796625>,  <32.302212, 37.944077, 28.915943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675144, 37.862320, 28.796625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253214, -0.219883, 0.942091,
		-0.258147, -0.953874, -0.153248,
		0.932332, -0.204393, -0.298296,
		32.954845, 37.801003, 28.707136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528297, 37.287628, 29.161226>,  <32.302212, 37.944077, 28.915943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528297, 37.287628, 29.161226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.867573, 37.482162, 29.077267>,  <33.071136, 37.598885, 29.026892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.867573, 37.482162, 29.077267>,  <32.528297, 37.287628, 29.161226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867573, 37.482162, 29.077267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385876, -0.295836, 0.873831,
		0.362883, -0.822164, -0.438590,
		0.848184, 0.486340, -0.209900,
		33.122028, 37.628063, 29.014297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994247, 36.778934, 29.388491>,  <32.528297, 37.287628, 29.161226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994247, 36.778934, 29.388491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.226074, 37.103676, 29.360237>,  <33.365170, 37.298523, 29.343285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.226074, 37.103676, 29.360237>,  <32.994247, 36.778934, 29.388491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226074, 37.103676, 29.360237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213871, -0.067896, 0.974499,
		0.786358, -0.579896, -0.212983,
		0.579569, 0.811856, -0.070632,
		33.399944, 37.347233, 29.339048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838924, 36.664219, 29.623592>,  <32.994247, 36.778934, 29.388491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838924, 36.664219, 29.623592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755836, 37.048515, 29.697155>,  <33.705982, 37.279095, 29.741293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.755836, 37.048515, 29.697155>,  <33.838924, 36.664219, 29.623592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755836, 37.048515, 29.697155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216632, -0.138157, 0.966428,
		0.953899, 0.240586, -0.179430,
		-0.207719, 0.960745, 0.183906,
		33.693520, 37.336739, 29.752327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342472, 36.776520, 30.151735>,  <33.838924, 36.664219, 29.623592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342472, 36.776520, 30.151735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074787, 37.072876, 30.174484>,  <33.914177, 37.250690, 30.188133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.074787, 37.072876, 30.174484>,  <34.342472, 36.776520, 30.151735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074787, 37.072876, 30.174484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104293, 0.017873, 0.994386,
		0.735714, 0.671389, -0.089230,
		-0.669215, 0.740889, 0.056872,
		33.874023, 37.295143, 30.191545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465961, 37.146122, 30.688368>,  <34.342472, 36.776520, 30.151735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465961, 37.146122, 30.688368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090282, 37.282825, 30.675024>,  <33.864876, 37.364845, 30.667017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090282, 37.282825, 30.675024>,  <34.465961, 37.146122, 30.688368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090282, 37.282825, 30.675024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052974, -0.048214, 0.997431,
		0.339269, 0.938552, 0.063387,
		-0.939197, 0.341755, -0.033361,
		33.808525, 37.385353, 30.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347015, 37.687820, 31.130152>,  <34.465961, 37.146122, 30.688368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347015, 37.687820, 31.130152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.971291, 37.552086, 31.109945>,  <33.745857, 37.470646, 31.097822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.971291, 37.552086, 31.109945>,  <34.347015, 37.687820, 31.130152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971291, 37.552086, 31.109945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072547, 0.052553, 0.995979,
		-0.335316, 0.939196, -0.073981,
		-0.939308, -0.339335, -0.050514,
		33.689499, 37.450287, 31.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044533, 38.063148, 31.659077>,  <34.347015, 37.687820, 31.130152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044533, 38.063148, 31.659077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.811100, 37.748386, 31.578869>,  <33.671040, 37.559528, 31.530745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.811100, 37.748386, 31.578869>,  <34.044533, 38.063148, 31.659077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811100, 37.748386, 31.578869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122568, -0.158746, 0.979682,
		-0.802749, 0.596305, -0.003808,
		-0.583585, -0.786905, -0.200521,
		33.636024, 37.512314, 31.518713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465641, 38.152966, 32.152084>,  <34.044533, 38.063148, 31.659077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465641, 38.152966, 32.152084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439106, 37.776443, 32.019699>,  <33.423183, 37.550529, 31.940268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439106, 37.776443, 32.019699>,  <33.465641, 38.152966, 32.152084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439106, 37.776443, 32.019699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189819, -0.313734, 0.930344,
		-0.979576, 0.124540, -0.157866,
		-0.066337, -0.941308, -0.330966,
		33.419205, 37.494053, 31.920410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.698414, 38.480835, 23.878075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787119, 38.094273, 23.930037>,  <31.840342, 37.862335, 23.961214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787119, 38.094273, 23.930037>,  <31.698414, 38.480835, 23.878075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787119, 38.094273, 23.930037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213870, 0.081773, 0.973433,
		-0.951357, -0.243654, -0.188551,
		0.221763, -0.966408, 0.129906,
		31.853647, 37.804352, 23.969007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265076, 38.209358, 24.293213>,  <31.698414, 38.480835, 23.878075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265076, 38.209358, 24.293213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591490, 37.983200, 24.341236>,  <31.787338, 37.847504, 24.370050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591490, 37.983200, 24.341236>,  <31.265076, 38.209358, 24.293213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591490, 37.983200, 24.341236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149833, -0.006311, 0.988691,
		-0.558245, -0.824795, -0.089865,
		0.816035, -0.565397, 0.120058,
		31.836300, 37.813580, 24.377254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042303, 37.745026, 24.760969>,  <31.265076, 38.209358, 24.293213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042303, 37.745026, 24.760969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440514, 37.722439, 24.791258>,  <31.679440, 37.708885, 24.809431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440514, 37.722439, 24.791258>,  <31.042303, 37.745026, 24.760969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440514, 37.722439, 24.791258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072696, 0.053883, 0.995898,
		-0.060321, -0.996949, 0.049536,
		0.995528, -0.056473, 0.075724,
		31.739172, 37.705498, 24.813974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248135, 37.233109, 25.237402>,  <31.042303, 37.745026, 24.760969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248135, 37.233109, 25.237402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589987, 37.440804, 25.236858>,  <31.795099, 37.565418, 25.236532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589987, 37.440804, 25.236858>,  <31.248135, 37.233109, 25.237402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589987, 37.440804, 25.236858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170422, -0.278027, 0.945334,
		0.490471, -0.808145, -0.326100,
		0.854632, 0.519234, -0.001361,
		31.846376, 37.596573, 25.236450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696457, 36.886570, 25.789230>,  <31.248135, 37.233109, 25.237402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696457, 36.886570, 25.789230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899317, 37.223751, 25.717424>,  <32.021034, 37.426060, 25.674341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899317, 37.223751, 25.717424>,  <31.696457, 36.886570, 25.789230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899317, 37.223751, 25.717424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435421, -0.070844, 0.897435,
		0.743780, -0.533298, -0.402969,
		0.507149, 0.842956, -0.179517,
		32.051460, 37.476639, 25.663568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417141, 36.761913, 26.027571>,  <31.696457, 36.886570, 25.789230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417141, 36.761913, 26.027571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369793, 37.158829, 26.012863>,  <32.341385, 37.396976, 26.004040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369793, 37.158829, 26.012863>,  <32.417141, 36.761913, 26.027571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369793, 37.158829, 26.012863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608251, 0.101726, 0.787199,
		0.784869, 0.070815, -0.615602,
		-0.118368, 0.992289, -0.036768,
		32.334282, 37.456516, 26.001833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026466, 37.097794, 26.219353>,  <32.417141, 36.761913, 26.027571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026466, 37.097794, 26.219353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772331, 37.397476, 26.294224>,  <32.619850, 37.577286, 26.339146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772331, 37.397476, 26.294224>,  <33.026466, 37.097794, 26.219353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772331, 37.397476, 26.294224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516408, 0.231980, 0.824323,
		0.574166, 0.620384, -0.534282,
		-0.635340, 0.749205, 0.187176,
		32.581730, 37.622238, 26.350376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440784, 37.641998, 26.401678>,  <33.026466, 37.097794, 26.219353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440784, 37.641998, 26.401678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081245, 37.723747, 26.556751>,  <32.865520, 37.772797, 26.649796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081245, 37.723747, 26.556751>,  <33.440784, 37.641998, 26.401678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081245, 37.723747, 26.556751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425724, 0.197175, 0.883108,
		0.104042, 0.958829, -0.264238,
		-0.898852, 0.204373, 0.387682,
		32.811588, 37.785061, 26.673056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499836, 38.362373, 26.658413>,  <33.440784, 37.641998, 26.401678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499836, 38.362373, 26.658413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188198, 38.188217, 26.838833>,  <33.001217, 38.083721, 26.947084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188198, 38.188217, 26.838833>,  <33.499836, 38.362373, 26.658413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188198, 38.188217, 26.838833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404214, 0.201075, 0.892289,
		-0.479192, 0.877497, 0.019336,
		-0.779093, -0.435394, 0.451050,
		32.954472, 38.057598, 26.974148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934143, 39.014694, 26.731186>,  <33.499836, 38.362373, 26.658413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934143, 39.014694, 26.731186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328598, 39.060234, 26.682905>,  <34.565269, 39.087559, 26.653936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328598, 39.060234, 26.682905>,  <33.934143, 39.014694, 26.731186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328598, 39.060234, 26.682905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135167, 0.129326, -0.982346,
		-0.096231, 0.985044, 0.142922,
		0.986139, 0.113851, -0.120701,
		34.624439, 39.094391, 26.646694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000080, 39.562294, 26.325493>,  <33.934143, 39.014694, 26.731186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000080, 39.562294, 26.325493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373444, 39.421856, 26.295893>,  <34.597462, 39.337593, 26.278133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373444, 39.421856, 26.295893>,  <34.000080, 39.562294, 26.325493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373444, 39.421856, 26.295893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032856, 0.289011, -0.956762,
		0.357298, 0.890622, 0.281302,
		0.933413, -0.351091, -0.074000,
		34.653469, 39.316528, 26.273693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373283, 39.974266, 25.772242>,  <34.000080, 39.562294, 26.325493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373283, 39.974266, 25.772242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594257, 39.645428, 25.827333>,  <34.726841, 39.448124, 25.860390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594257, 39.645428, 25.827333>,  <34.373283, 39.974266, 25.772242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594257, 39.645428, 25.827333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123419, -0.082740, -0.988899,
		0.824367, 0.563303, 0.055754,
		0.552437, -0.822097, 0.137731,
		34.759987, 39.398800, 25.868652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797916, 40.111397, 25.330906>,  <34.373283, 39.974266, 25.772242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797916, 40.111397, 25.330906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887821, 39.725395, 25.384933>,  <34.941765, 39.493793, 25.417349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887821, 39.725395, 25.384933>,  <34.797916, 40.111397, 25.330906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887821, 39.725395, 25.384933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493685, -0.006730, -0.869615,
		0.840094, 0.262136, 0.474897,
		0.224761, -0.965008, 0.135067,
		34.955250, 39.435894, 25.425453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478958, 40.067616, 25.105225>,  <34.797916, 40.111397, 25.330906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478958, 40.067616, 25.105225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314056, 39.703609, 25.087700>,  <35.215115, 39.485207, 25.077185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314056, 39.703609, 25.087700>,  <35.478958, 40.067616, 25.105225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314056, 39.703609, 25.087700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494124, -0.182924, -0.849930,
		0.765435, -0.372033, 0.525071,
		-0.412250, -0.910016, -0.043814,
		35.190380, 39.430603, 25.074556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967373, 39.633701, 24.971918>,  <35.478958, 40.067616, 25.105225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967373, 39.633701, 24.971918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650066, 39.420498, 24.854183>,  <35.459682, 39.292576, 24.783543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650066, 39.420498, 24.854183>,  <35.967373, 39.633701, 24.971918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650066, 39.420498, 24.854183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386805, -0.067818, -0.919665,
		0.470228, -0.843388, 0.259968,
		-0.793264, -0.533008, -0.294336,
		35.412086, 39.260597, 24.765882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260727, 39.082962, 24.644047>,  <35.967373, 39.633701, 24.971918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260727, 39.082962, 24.644047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887157, 39.094624, 24.501539>,  <35.663013, 39.101620, 24.416035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887157, 39.094624, 24.501539>,  <36.260727, 39.082962, 24.644047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887157, 39.094624, 24.501539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349538, -0.134203, -0.927261,
		-0.074842, -0.990525, 0.115147,
		-0.933928, 0.029150, -0.356270,
		35.606979, 39.103371, 24.394657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115246, 38.404179, 24.309158>,  <36.260727, 39.082962, 24.644047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115246, 38.404179, 24.309158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886517, 38.685410, 24.140068>,  <35.749279, 38.854149, 24.038614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886517, 38.685410, 24.140068>,  <36.115246, 38.404179, 24.309158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886517, 38.685410, 24.140068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284382, -0.313454, -0.906021,
		-0.769509, -0.638301, -0.020702,
		-0.571825, 0.703078, -0.422727,
		35.714970, 38.896332, 24.013250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864799, 38.087128, 23.774664>,  <36.115246, 38.404179, 24.309158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864799, 38.087128, 23.774664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793621, 38.471870, 23.691563>,  <35.750912, 38.702717, 23.641703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793621, 38.471870, 23.691563>,  <35.864799, 38.087128, 23.774664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793621, 38.471870, 23.691563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111137, -0.190126, -0.975449,
		-0.977744, -0.196669, -0.073065,
		-0.177949, 0.961859, -0.207752,
		35.740238, 38.760429, 23.629236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526413, 37.987370, 23.123684>,  <35.864799, 38.087128, 23.774664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526413, 37.987370, 23.123684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615765, 38.377258, 23.124975>,  <35.669376, 38.611191, 23.125750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615765, 38.377258, 23.124975>,  <35.526413, 37.987370, 23.123684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615765, 38.377258, 23.124975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086956, 0.023227, -0.995942,
		-0.970844, 0.222196, 0.089947,
		0.223383, 0.974725, 0.003228,
		35.682781, 38.669678, 23.125944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079712, 38.327869, 22.653831>,  <35.526413, 37.987370, 23.123684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079712, 38.327869, 22.653831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384987, 38.584133, 22.687529>,  <35.568153, 38.737892, 22.707747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384987, 38.584133, 22.687529>,  <35.079712, 38.327869, 22.653831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384987, 38.584133, 22.687529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001948, 0.132654, -0.991161,
		-0.646170, 0.756280, 0.102488,
		0.763191, 0.640658, 0.084243,
		35.613945, 38.776329, 22.712801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869263, 38.916275, 22.243614>,  <35.079712, 38.327869, 22.653831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869263, 38.916275, 22.243614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266571, 38.909668, 22.289478>,  <35.504955, 38.905704, 22.316998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266571, 38.909668, 22.289478>,  <34.869263, 38.916275, 22.243614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266571, 38.909668, 22.289478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115515, 0.066552, -0.991074,
		0.008741, 0.997646, 0.068013,
		0.993267, -0.016519, 0.114661,
		35.564552, 38.904713, 22.323877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082272, 39.282822, 21.650829>,  <34.869263, 38.916275, 22.243614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082272, 39.282822, 21.650829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409618, 39.087040, 21.771296>,  <35.606026, 38.969570, 21.843575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409618, 39.087040, 21.771296>,  <35.082272, 39.282822, 21.650829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409618, 39.087040, 21.771296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289971, -0.100762, -0.951716,
		0.496171, 0.866185, 0.059468,
		0.818371, -0.489459, 0.301164,
		35.655128, 38.940201, 21.861645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521717, 39.447567, 21.094360>,  <35.082272, 39.282822, 21.650829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521717, 39.447567, 21.094360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712349, 39.162460, 21.300209>,  <35.826729, 38.991398, 21.423717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712349, 39.162460, 21.300209>,  <35.521717, 39.447567, 21.094360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712349, 39.162460, 21.300209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503157, -0.258874, -0.824510,
		0.720906, 0.651879, 0.235260,
		0.476578, -0.712768, 0.514621,
		35.855324, 38.948631, 21.454596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.433887, 30.578688, 22.961815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204422, 30.902008, 22.908806>,  <37.066742, 31.096001, 22.877001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204422, 30.902008, 22.908806>,  <37.433887, 30.578688, 22.961815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204422, 30.902008, 22.908806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049328, 0.195588, 0.979445,
		0.817605, 0.555333, -0.152073,
		-0.573662, 0.808301, -0.132520,
		37.032322, 31.144499, 22.869049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784271, 31.213495, 23.334949>,  <37.433887, 30.578688, 22.961815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784271, 31.213495, 23.334949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388306, 31.236153, 23.283016>,  <37.150726, 31.249746, 23.251856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388306, 31.236153, 23.283016>,  <37.784271, 31.213495, 23.334949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388306, 31.236153, 23.283016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128697, 0.023302, 0.991410,
		0.059182, 0.998123, -0.015778,
		-0.989916, 0.056643, -0.129834,
		37.091331, 31.253145, 23.244066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613342, 31.853844, 23.601862>,  <37.784271, 31.213495, 23.334949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613342, 31.853844, 23.601862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264694, 31.657778, 23.600479>,  <37.055504, 31.540138, 23.599649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.264694, 31.657778, 23.600479>,  <37.613342, 31.853844, 23.601862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264694, 31.657778, 23.600479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142394, 0.246447, 0.958639,
		-0.469038, 0.836064, -0.284605,
		-0.871623, -0.490164, -0.003457,
		37.003208, 31.510729, 23.599442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043015, 32.309441, 23.773014>,  <37.613342, 31.853844, 23.601862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043015, 32.309441, 23.773014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912205, 31.942234, 23.862720>,  <36.833717, 31.721910, 23.916544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912205, 31.942234, 23.862720>,  <37.043015, 32.309441, 23.773014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912205, 31.942234, 23.862720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029555, 0.227266, 0.973384,
		-0.944552, 0.324953, -0.047191,
		-0.327029, -0.918017, 0.224268,
		36.814095, 31.666828, 23.930000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757309, 32.602413, 24.326349>,  <37.043015, 32.309441, 23.773014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757309, 32.602413, 24.326349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708923, 32.205418, 24.333618>,  <36.679893, 31.967220, 24.337978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708923, 32.205418, 24.333618>,  <36.757309, 32.602413, 24.326349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708923, 32.205418, 24.333618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262350, 0.049619, 0.963696,
		-0.957361, 0.111806, -0.266382,
		-0.120965, -0.992491, 0.018171,
		36.672634, 31.907671, 24.339069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082241, 32.438831, 24.687902>,  <36.757309, 32.602413, 24.326349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082241, 32.438831, 24.687902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321564, 32.120049, 24.721117>,  <36.465157, 31.928780, 24.741045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321564, 32.120049, 24.721117>,  <36.082241, 32.438831, 24.687902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321564, 32.120049, 24.721117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215637, -0.060342, 0.974607,
		-0.771706, -0.601020, -0.207956,
		0.598307, -0.796953, 0.083036,
		36.501057, 31.880962, 24.746027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723026, 32.018215, 25.239906>,  <36.082241, 32.438831, 24.687902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723026, 32.018215, 25.239906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101089, 31.887617, 25.243412>,  <36.327927, 31.809259, 25.245516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.101089, 31.887617, 25.243412>,  <35.723026, 32.018215, 25.239906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101089, 31.887617, 25.243412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093832, -0.245731, 0.964786,
		-0.312842, -0.912699, -0.262890,
		0.945159, -0.326493, 0.008765,
		36.384636, 31.789669, 25.246042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652115, 31.505926, 25.666998>,  <35.723026, 32.018215, 25.239906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652115, 31.505926, 25.666998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043934, 31.586340, 25.663725>,  <36.279026, 31.634588, 25.661762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.043934, 31.586340, 25.663725>,  <35.652115, 31.505926, 25.666998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043934, 31.586340, 25.663725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064154, -0.273541, 0.959719,
		0.190699, -0.940617, -0.280844,
		0.979550, 0.201035, -0.008180,
		36.337799, 31.646650, 25.661270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039841, 31.022009, 26.086712>,  <35.652115, 31.505926, 25.666998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039841, 31.022009, 26.086712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286102, 31.336121, 26.060469>,  <36.433861, 31.524588, 26.044724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286102, 31.336121, 26.060469>,  <36.039841, 31.022009, 26.086712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286102, 31.336121, 26.060469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244223, -0.110986, 0.963347,
		0.749216, -0.609112, -0.260113,
		0.615655, 0.785280, -0.065607,
		36.470798, 31.571705, 26.040787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498215, 30.816025, 26.488697>,  <36.039841, 31.022009, 26.086712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498215, 30.816025, 26.488697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599472, 31.202911, 26.480633>,  <36.660229, 31.435043, 26.475794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599472, 31.202911, 26.480633>,  <36.498215, 30.816025, 26.488697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599472, 31.202911, 26.480633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314828, -0.062659, 0.947078,
		0.914768, -0.246095, -0.320369,
		0.253145, 0.967218, -0.020159,
		36.675415, 31.493076, 26.474585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116615, 30.888174, 26.902924>,  <36.498215, 30.816025, 26.488697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116615, 30.888174, 26.902924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982113, 31.264063, 26.878071>,  <36.901413, 31.489595, 26.863159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982113, 31.264063, 26.878071>,  <37.116615, 30.888174, 26.902924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982113, 31.264063, 26.878071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245556, 0.151175, 0.957522,
		0.909195, 0.306712, -0.281587,
		-0.336253, 0.939720, -0.062133,
		36.881237, 31.545979, 26.859430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671356, 31.343998, 27.089478>,  <37.116615, 30.888174, 26.902924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671356, 31.343998, 27.089478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320625, 31.528135, 27.144999>,  <37.110188, 31.638618, 27.178312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.320625, 31.528135, 27.144999>,  <37.671356, 31.343998, 27.089478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320625, 31.528135, 27.144999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349686, 0.412408, 0.841213,
		0.330003, 0.786132, -0.522584,
		-0.876822, 0.460343, 0.138804,
		37.057579, 31.666239, 27.186640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758774, 32.037277, 27.410528>,  <37.671356, 31.343998, 27.089478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758774, 32.037277, 27.410528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370060, 31.987165, 27.490475>,  <37.136833, 31.957098, 27.538443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.370060, 31.987165, 27.490475>,  <37.758774, 32.037277, 27.410528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370060, 31.987165, 27.490475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085581, 0.602319, 0.793654,
		-0.219811, 0.788363, -0.574601,
		-0.971781, -0.125279, 0.199865,
		37.078526, 31.949581, 27.550434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544201, 32.684509, 27.676319>,  <37.758774, 32.037277, 27.410528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544201, 32.684509, 27.676319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271351, 32.418552, 27.798058>,  <37.107643, 32.258980, 27.871101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271351, 32.418552, 27.798058>,  <37.544201, 32.684509, 27.676319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271351, 32.418552, 27.798058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166856, 0.546753, 0.820500,
		-0.711946, 0.508900, -0.483894,
		-0.682123, -0.664893, 0.304346,
		37.066715, 32.219086, 27.889360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606873, 33.425556, 27.436420>,  <37.544201, 32.684509, 27.676319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606873, 33.425556, 27.436420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899761, 33.683460, 27.524185>,  <38.075493, 33.838203, 27.576843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899761, 33.683460, 27.524185>,  <37.606873, 33.425556, 27.436420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899761, 33.683460, 27.524185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413845, -0.165342, -0.895206,
		-0.540915, 0.746289, -0.387896,
		0.732218, 0.644759, 0.219412,
		38.119427, 33.876888, 27.590010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694683, 33.843185, 26.801939>,  <37.606873, 33.425556, 27.436420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694683, 33.843185, 26.801939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031895, 33.849499, 27.016994>,  <38.234222, 33.853287, 27.146029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031895, 33.849499, 27.016994>,  <37.694683, 33.843185, 26.801939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031895, 33.849499, 27.016994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533424, -0.152802, -0.831932,
		0.069021, 0.988131, -0.137235,
		0.843027, 0.015784, 0.537639,
		38.284801, 33.854233, 27.178286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119579, 34.465267, 26.685331>,  <37.694683, 33.843185, 26.801939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119579, 34.465267, 26.685331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370770, 34.188305, 26.827444>,  <38.521484, 34.022129, 26.912712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370770, 34.188305, 26.827444>,  <38.119579, 34.465267, 26.685331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370770, 34.188305, 26.827444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594389, 0.132043, -0.793263,
		0.502348, 0.709322, 0.494478,
		0.627971, -0.692407, 0.355282,
		38.559162, 33.980583, 26.934029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955811, 34.702030, 26.650002>,  <38.119579, 34.465267, 26.685331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955811, 34.702030, 26.650002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931217, 34.302811, 26.645802>,  <38.916462, 34.063278, 26.643282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931217, 34.302811, 26.645802>,  <38.955811, 34.702030, 26.650002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931217, 34.302811, 26.645802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549535, -0.025068, -0.835095,
		0.833205, -0.057113, 0.550006,
		-0.061482, -0.998053, -0.010499,
		38.912773, 34.003395, 26.642653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586617, 34.495434, 26.381746>,  <38.955811, 34.702030, 26.650002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586617, 34.495434, 26.381746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358601, 34.169342, 26.340845>,  <39.221790, 33.973686, 26.316303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.358601, 34.169342, 26.340845>,  <39.586617, 34.495434, 26.381746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358601, 34.169342, 26.340845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359911, -0.135889, -0.923037,
		0.738590, -0.562973, 0.370872,
		-0.570043, -0.815227, -0.102254,
		39.187588, 33.924774, 26.310169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846600, 34.252056, 25.778938>,  <39.586617, 34.495434, 26.381746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846600, 34.252056, 25.778938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501575, 34.059406, 25.840946>,  <39.294563, 33.943817, 25.878151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.501575, 34.059406, 25.840946>,  <39.846600, 34.252056, 25.778938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501575, 34.059406, 25.840946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088573, -0.157922, -0.983471,
		0.498145, -0.862031, 0.093558,
		-0.862558, -0.481625, 0.155020,
		39.242809, 33.914917, 25.887453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879330, 33.568104, 25.485594>,  <39.846600, 34.252056, 25.778938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879330, 33.568104, 25.485594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.486031, 33.637039, 25.509312>,  <39.250050, 33.678402, 25.523542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.486031, 33.637039, 25.509312>,  <39.879330, 33.568104, 25.485594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486031, 33.637039, 25.509312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104482, -0.266443, -0.958171,
		-0.149329, -0.948319, 0.279986,
		-0.983252, 0.172336, 0.059295,
		39.191055, 33.688740, 25.527100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478477, 32.978954, 25.115141>,  <39.879330, 33.568104, 25.485594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478477, 32.978954, 25.115141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226460, 33.289261, 25.129175>,  <39.075249, 33.475445, 25.137596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.226460, 33.289261, 25.129175>,  <39.478477, 32.978954, 25.115141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226460, 33.289261, 25.129175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241806, -0.153050, -0.958178,
		-0.737952, -0.612179, 0.284013,
		-0.630045, 0.775766, 0.035085,
		39.037445, 33.521992, 25.139700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792206, 32.815418, 24.825563>,  <39.478477, 32.978954, 25.115141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792206, 32.815418, 24.825563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797684, 33.212685, 24.779194>,  <38.800972, 33.451042, 24.751373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.797684, 33.212685, 24.779194>,  <38.792206, 32.815418, 24.825563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797684, 33.212685, 24.779194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296781, -0.106673, -0.948969,
		-0.954847, 0.047398, 0.293292,
		0.013693, 0.993164, -0.115923,
		38.801792, 33.510635, 24.744417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165302, 33.003197, 24.559832>,  <38.792206, 32.815418, 24.825563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165302, 33.003197, 24.559832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412663, 33.304298, 24.469553>,  <38.561077, 33.484959, 24.415386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.412663, 33.304298, 24.469553>,  <38.165302, 33.003197, 24.559832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412663, 33.304298, 24.469553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265024, -0.070607, -0.961653,
		-0.739829, 0.654499, 0.155836,
		0.618398, 0.752759, -0.225695,
		38.598183, 33.530125, 24.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785923, 33.381306, 23.965229>,  <38.165302, 33.003197, 24.559832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785923, 33.381306, 23.965229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161694, 33.517162, 23.983650>,  <38.387157, 33.598675, 23.994703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161694, 33.517162, 23.983650>,  <37.785923, 33.381306, 23.965229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161694, 33.517162, 23.983650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012060, 0.167039, -0.985876,
		-0.342533, 0.925605, 0.161018,
		0.939428, 0.339637, 0.046053,
		38.443523, 33.619053, 23.997467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816502, 34.085606, 23.598719>,  <37.785923, 33.381306, 23.965229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816502, 34.085606, 23.598719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189606, 33.941620, 23.590773>,  <38.413467, 33.855228, 23.586006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189606, 33.941620, 23.590773>,  <37.816502, 34.085606, 23.598719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189606, 33.941620, 23.590773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134147, 0.397699, -0.907656,
		0.334620, 0.843957, 0.419244,
		0.932756, -0.359961, -0.019864,
		38.469433, 33.833633, 23.584814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283264, 34.595478, 23.320135>,  <37.816502, 34.085606, 23.598719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283264, 34.595478, 23.320135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489494, 34.256893, 23.266956>,  <38.613232, 34.053741, 23.235048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.489494, 34.256893, 23.266956>,  <38.283264, 34.595478, 23.320135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489494, 34.256893, 23.266956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061758, 0.118045, -0.991086,
		0.854614, 0.519192, 0.008585,
		0.515577, -0.846466, -0.132948,
		38.644169, 34.002953, 23.227072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805210, 34.751740, 22.810123>,  <38.283264, 34.595478, 23.320135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805210, 34.751740, 22.810123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780613, 34.353363, 22.783859>,  <38.765854, 34.114338, 22.768101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.780613, 34.353363, 22.783859>,  <38.805210, 34.751740, 22.810123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780613, 34.353363, 22.783859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016146, 0.064781, -0.997769,
		0.997977, -0.062419, 0.012096,
		-0.061496, -0.995945, -0.065658,
		38.762165, 34.054581, 22.764162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180206, 35.334843, 22.488434>,  <38.805210, 34.751740, 22.810123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180206, 35.334843, 22.488434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.315491, 35.653549, 22.288124>,  <39.396660, 35.844772, 22.167938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.315491, 35.653549, 22.288124>,  <39.180206, 35.334843, 22.488434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315491, 35.653549, 22.288124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027657, 0.523488, 0.851584,
		0.940664, -0.301864, 0.155012,
		0.338210, 0.796767, -0.500775,
		39.416954, 35.892578, 22.137892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734215, 35.654129, 22.946512>,  <39.180206, 35.334843, 22.488434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734215, 35.654129, 22.946512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577297, 35.927490, 22.700239>,  <39.483147, 36.091507, 22.552475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.577297, 35.927490, 22.700239>,  <39.734215, 35.654129, 22.946512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577297, 35.927490, 22.700239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249252, 0.565319, 0.786313,
		0.885425, 0.461928, -0.051433,
		-0.392296, 0.683401, -0.615684,
		39.459610, 36.132511, 22.515533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018993, 36.270779, 23.145082>,  <39.734215, 35.654129, 22.946512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018993, 36.270779, 23.145082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689014, 36.384144, 22.949474>,  <39.491028, 36.452164, 22.832109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.689014, 36.384144, 22.949474>,  <40.018993, 36.270779, 23.145082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689014, 36.384144, 22.949474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216207, 0.641162, 0.736320,
		0.522224, 0.713153, -0.467647,
		-0.824946, 0.283415, -0.489019,
		39.441532, 36.469170, 22.802769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134815, 36.960812, 22.986917>,  <40.018993, 36.270779, 23.145082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134815, 36.960812, 22.986917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740532, 36.896069, 23.005608>,  <39.503963, 36.857224, 23.016821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740532, 36.896069, 23.005608>,  <40.134815, 36.960812, 22.986917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740532, 36.896069, 23.005608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074148, 0.665858, 0.742385,
		-0.151275, 0.728309, -0.668343,
		-0.985707, -0.161860, 0.046725,
		39.444820, 36.847511, 23.019625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797924, 37.666985, 23.126266>,  <40.134815, 36.960812, 22.986917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797924, 37.666985, 23.126266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519390, 37.407589, 23.249283>,  <39.352272, 37.251953, 23.323093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519390, 37.407589, 23.249283>,  <39.797924, 37.666985, 23.126266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519390, 37.407589, 23.249283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215349, 0.597534, 0.772385,
		-0.684650, 0.471608, -0.555734,
		-0.696333, -0.648490, 0.307542,
		39.310490, 37.213043, 23.341545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325474, 38.035755, 23.447371>,  <39.797924, 37.666985, 23.126266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325474, 38.035755, 23.447371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180115, 37.687092, 23.578913>,  <39.092899, 37.477894, 23.657839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180115, 37.687092, 23.578913>,  <39.325474, 38.035755, 23.447371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180115, 37.687092, 23.578913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232791, 0.426749, 0.873896,
		-0.902081, 0.241017, -0.357995,
		-0.363398, -0.871663, 0.328855,
		39.071095, 37.425594, 23.677568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651661, 38.116322, 23.707312>,  <39.325474, 38.035755, 23.447371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651661, 38.116322, 23.707312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778381, 37.780144, 23.883171>,  <38.854412, 37.578438, 23.988688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778381, 37.780144, 23.883171>,  <38.651661, 38.116322, 23.707312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778381, 37.780144, 23.883171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130321, 0.420560, 0.897856,
		-0.939497, -0.341736, 0.023705,
		0.316799, -0.840444, 0.439650,
		38.873421, 37.528011, 24.015066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286373, 38.039284, 24.315220>,  <38.651661, 38.116322, 23.707312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286373, 38.039284, 24.315220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576813, 37.776577, 24.396648>,  <38.751076, 37.618954, 24.445505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.576813, 37.776577, 24.396648>,  <38.286373, 38.039284, 24.315220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576813, 37.776577, 24.396648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244366, 0.030257, 0.969211,
		-0.642705, -0.753487, -0.138522,
		0.726096, -0.656767, 0.203573,
		38.794643, 37.579548, 24.457720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009903, 37.420391, 24.811003>,  <38.286373, 38.039284, 24.315220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009903, 37.420391, 24.811003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405933, 37.451996, 24.857483>,  <38.643551, 37.470959, 24.885370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.405933, 37.451996, 24.857483>,  <38.009903, 37.420391, 24.811003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405933, 37.451996, 24.857483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116309, -0.003218, 0.993208,
		0.078853, -0.996868, 0.006004,
		0.990078, 0.079016, 0.116199,
		38.702957, 37.475700, 24.892342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195534, 36.876377, 25.239868>,  <38.009903, 37.420391, 24.811003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195534, 36.876377, 25.239868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478432, 37.157024, 25.274584>,  <38.648170, 37.325413, 25.295414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.478432, 37.157024, 25.274584>,  <38.195534, 36.876377, 25.239868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478432, 37.157024, 25.274584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138178, 0.016791, 0.990265,
		0.693333, -0.712353, 0.108824,
		0.707245, 0.701621, 0.086789,
		38.690605, 37.367512, 25.300621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386909, 36.770603, 25.957098>,  <38.195534, 36.876377, 25.239868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386909, 36.770603, 25.957098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592781, 37.095547, 25.847418>,  <38.716305, 37.290512, 25.781610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592781, 37.095547, 25.847418>,  <38.386909, 36.770603, 25.957098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592781, 37.095547, 25.847418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021622, 0.332006, 0.943030,
		0.857110, -0.479429, 0.188441,
		0.514679, 0.812355, -0.274199,
		38.747185, 37.339252, 25.765158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853210, 36.934242, 26.472795>,  <38.386909, 36.770603, 25.957098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853210, 36.934242, 26.472795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820061, 37.284004, 26.281570>,  <38.800171, 37.493862, 26.166836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820061, 37.284004, 26.281570>,  <38.853210, 36.934242, 26.472795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820061, 37.284004, 26.281570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024717, 0.481370, 0.876168,
		0.996253, 0.060799, -0.061507,
		-0.082878, 0.874406, -0.478064,
		38.795197, 37.546326, 26.138151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409218, 37.382622, 26.669680>,  <38.853210, 36.934242, 26.472795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409218, 37.382622, 26.669680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115299, 37.625233, 26.548220>,  <38.938950, 37.770798, 26.475344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.115299, 37.625233, 26.548220>,  <39.409218, 37.382622, 26.669680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115299, 37.625233, 26.548220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141980, 0.575289, 0.805533,
		0.663260, 0.548792, -0.508836,
		-0.734798, 0.606523, -0.303649,
		38.894859, 37.807190, 26.457125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689167, 38.000999, 26.874166>,  <39.409218, 37.382622, 26.669680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689167, 38.000999, 26.874166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300438, 38.073803, 26.814249>,  <39.067200, 38.117485, 26.778297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300438, 38.073803, 26.814249>,  <39.689167, 38.000999, 26.874166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300438, 38.073803, 26.814249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009003, 0.663656, 0.747984,
		0.235556, 0.725556, -0.646592,
		-0.971819, 0.182013, -0.149796,
		39.008892, 38.128407, 26.769310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.362995, 39.578487, 21.136782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293896, 39.189011, 21.196220>,  <36.252438, 38.955326, 21.231884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.293896, 39.189011, 21.196220>,  <36.362995, 39.578487, 21.136782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293896, 39.189011, 21.196220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713926, -0.227714, -0.662160,
		0.678577, -0.008302, 0.734482,
		-0.172749, -0.973693, 0.148595,
		36.242069, 38.896904, 21.240799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126671, 39.259933, 21.085741>,  <36.362995, 39.578487, 21.136782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126671, 39.259933, 21.085741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862919, 38.961205, 21.051147>,  <36.704670, 38.781967, 21.030392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.862919, 38.961205, 21.051147>,  <37.126671, 39.259933, 21.085741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862919, 38.961205, 21.051147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545685, -0.396284, -0.738368,
		0.517156, -0.534057, 0.668830,
		-0.659377, -0.746822, -0.086486,
		36.665108, 38.737160, 21.025202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521839, 38.604816, 21.142332>,  <37.126671, 39.259933, 21.085741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521839, 38.604816, 21.142332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195541, 38.507946, 20.932222>,  <36.999763, 38.449821, 20.806156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.195541, 38.507946, 20.932222>,  <37.521839, 38.604816, 21.142332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195541, 38.507946, 20.932222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558074, -0.568250, -0.604687,
		-0.152044, -0.786410, 0.598700,
		-0.815743, -0.242180, -0.525273,
		36.950817, 38.435291, 20.774641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576981, 37.843647, 20.832928>,  <37.521839, 38.604816, 21.142332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576981, 37.843647, 20.832928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.239445, 37.966267, 20.656761>,  <37.036922, 38.039837, 20.551062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.239445, 37.966267, 20.656761>,  <37.576981, 37.843647, 20.832928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239445, 37.966267, 20.656761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213692, -0.560888, -0.799838,
		-0.492209, -0.769048, 0.407794,
		-0.843840, 0.306545, -0.440414,
		36.986294, 38.058231, 20.524637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078735, 37.246155, 20.774414>,  <37.576981, 37.843647, 20.832928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078735, 37.246155, 20.774414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994778, 37.521843, 20.497019>,  <36.944401, 37.687256, 20.330582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.994778, 37.521843, 20.497019>,  <37.078735, 37.246155, 20.774414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994778, 37.521843, 20.497019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299245, -0.629964, -0.716658,
		-0.930804, -0.357947, -0.074017,
		-0.209897, 0.689217, -0.693486,
		36.931808, 37.728607, 20.288973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691723, 36.968811, 20.306297>,  <37.078735, 37.246155, 20.774414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691723, 36.968811, 20.306297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814926, 37.283020, 20.091602>,  <36.888847, 37.471546, 19.962786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.814926, 37.283020, 20.091602>,  <36.691723, 36.968811, 20.306297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814926, 37.283020, 20.091602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230306, -0.608948, -0.759040,
		-0.923088, 0.110175, -0.368470,
		0.308006, 0.785522, -0.536739,
		36.907330, 37.518677, 19.930580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359577, 36.822369, 19.732784>,  <36.691723, 36.968811, 20.306297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359577, 36.822369, 19.732784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637657, 37.084595, 19.614847>,  <36.804504, 37.241932, 19.544085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.637657, 37.084595, 19.614847>,  <36.359577, 36.822369, 19.732784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637657, 37.084595, 19.614847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191288, -0.564109, -0.803237,
		-0.692900, 0.502008, -0.517569,
		0.695196, 0.655568, -0.294843,
		36.846214, 37.281265, 19.526394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156219, 37.087280, 18.983971>,  <36.359577, 36.822369, 19.732784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156219, 37.087280, 18.983971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544907, 37.156731, 19.047989>,  <36.778118, 37.198402, 19.086399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544907, 37.156731, 19.047989>,  <36.156219, 37.087280, 18.983971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544907, 37.156731, 19.047989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206746, -0.298075, -0.931884,
		-0.114097, 0.938618, -0.325543,
		0.971719, 0.173629, 0.160046,
		36.836422, 37.208820, 19.096003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334297, 37.484661, 18.401260>,  <36.156219, 37.087280, 18.983971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334297, 37.484661, 18.401260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681618, 37.346046, 18.543222>,  <36.890011, 37.262878, 18.628399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.681618, 37.346046, 18.543222>,  <36.334297, 37.484661, 18.401260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681618, 37.346046, 18.543222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274734, -0.259736, -0.925774,
		0.412999, 0.901359, -0.130324,
		0.868305, -0.346539, 0.354905,
		36.942108, 37.242085, 18.649694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867908, 37.753101, 17.851410>,  <36.334297, 37.484661, 18.401260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867908, 37.753101, 17.851410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014175, 37.445709, 18.061449>,  <37.101936, 37.261276, 18.187473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.014175, 37.445709, 18.061449>,  <36.867908, 37.753101, 17.851410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014175, 37.445709, 18.061449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391401, -0.384898, -0.835858,
		0.844447, 0.511172, 0.160037,
		0.365669, -0.768477, 0.525099,
		37.123875, 37.215164, 18.218979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460785, 37.655815, 17.563492>,  <36.867908, 37.753101, 17.851410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460785, 37.655815, 17.563492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353607, 37.320480, 17.753397>,  <37.289303, 37.119278, 17.867340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353607, 37.320480, 17.753397>,  <37.460785, 37.655815, 17.563492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353607, 37.320480, 17.753397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313800, -0.541849, -0.779698,
		0.910899, -0.059932, 0.408254,
		-0.267941, -0.838336, 0.474763,
		37.273224, 37.068981, 17.895826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932930, 37.242523, 17.394888>,  <37.460785, 37.655815, 17.563492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932930, 37.242523, 17.394888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637268, 36.992138, 17.494335>,  <37.459869, 36.841908, 17.554003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.637268, 36.992138, 17.494335>,  <37.932930, 37.242523, 17.394888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637268, 36.992138, 17.494335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301079, -0.637272, -0.709391,
		0.602493, -0.449498, 0.659510,
		-0.739157, -0.625968, 0.248617,
		37.415520, 36.804348, 17.568920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149818, 36.499023, 17.390028>,  <37.932930, 37.242523, 17.394888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149818, 36.499023, 17.390028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755547, 36.503216, 17.322714>,  <37.518982, 36.505733, 17.282326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.755547, 36.503216, 17.322714>,  <38.149818, 36.499023, 17.390028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755547, 36.503216, 17.322714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102837, -0.753559, -0.649287,
		-0.133620, -0.657297, 0.741692,
		-0.985683, 0.010484, -0.168285,
		37.459843, 36.506359, 17.272228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976952, 35.806248, 17.317125>,  <38.149818, 36.499023, 17.390028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976952, 35.806248, 17.317125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745796, 36.066856, 17.120529>,  <37.607101, 36.223221, 17.002571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745796, 36.066856, 17.120529>,  <37.976952, 35.806248, 17.317125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745796, 36.066856, 17.120529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053096, -0.570941, -0.819272,
		-0.814384, -0.499547, 0.295349,
		-0.577892, 0.651521, -0.491489,
		37.572430, 36.262314, 16.973082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185940, 35.164528, 16.749266>,  <37.976952, 35.806248, 17.317125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185940, 35.164528, 16.749266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447502, 34.864189, 16.712099>,  <38.604439, 34.683987, 16.689800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.447502, 34.864189, 16.712099>,  <38.185940, 35.164528, 16.749266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447502, 34.864189, 16.712099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615006, 0.456002, 0.643296,
		-0.440646, -0.477801, 0.759959,
		0.653910, -0.750845, -0.092915,
		38.643677, 34.638935, 16.684225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177231, 34.900616, 17.389378>,  <38.185940, 35.164528, 16.749266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177231, 34.900616, 17.389378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521057, 34.784763, 17.220966>,  <38.727352, 34.715252, 17.119921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521057, 34.784763, 17.220966>,  <38.177231, 34.900616, 17.389378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521057, 34.784763, 17.220966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505476, 0.360777, 0.783795,
		-0.075112, -0.886541, 0.456511,
		0.859565, -0.289628, -0.421027,
		38.778927, 34.697876, 17.094658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409542, 34.385876, 17.850021>,  <38.177231, 34.900616, 17.389378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409542, 34.385876, 17.850021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.715797, 34.549015, 17.651041>,  <38.899551, 34.646900, 17.531652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.715797, 34.549015, 17.651041>,  <38.409542, 34.385876, 17.850021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715797, 34.549015, 17.651041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442690, 0.227001, 0.867465,
		0.466719, -0.884380, -0.006751,
		0.765637, 0.407851, -0.497452,
		38.945488, 34.671371, 17.501806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955524, 34.134907, 18.131935>,  <38.409542, 34.385876, 17.850021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955524, 34.134907, 18.131935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 34.473263, 17.965214>,  <39.168507, 34.676277, 17.865181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088638, 34.473263, 17.965214>,  <38.955524, 34.134907, 18.131935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088638, 34.473263, 17.965214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382694, 0.282821, 0.879522,
		0.861859, -0.452198, -0.229599,
		0.332782, 0.845890, -0.416805,
		39.188473, 34.727028, 17.840172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610420, 34.109470, 18.284817>,  <38.955524, 34.134907, 18.131935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610420, 34.109470, 18.284817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551147, 34.495811, 18.199799>,  <39.515583, 34.727615, 18.148788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.551147, 34.495811, 18.199799>,  <39.610420, 34.109470, 18.284817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551147, 34.495811, 18.199799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326445, 0.250642, 0.911379,
		0.933528, 0.065669, -0.352438,
		-0.148185, 0.965850, -0.212544,
		39.506691, 34.785568, 18.136036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158211, 34.474369, 18.545967>,  <39.610420, 34.109470, 18.284817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158211, 34.474369, 18.545967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.885395, 34.764603, 18.509403>,  <39.721706, 34.938744, 18.487465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.885395, 34.764603, 18.509403>,  <40.158211, 34.474369, 18.545967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885395, 34.764603, 18.509403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223416, 0.325745, 0.918681,
		0.696353, 0.606155, -0.384277,
		-0.682040, 0.725580, -0.091409,
		39.680782, 34.982277, 18.481981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536694, 35.052868, 18.653021>,  <40.158211, 34.474369, 18.545967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536694, 35.052868, 18.653021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154327, 35.131565, 18.740217>,  <39.924908, 35.178783, 18.792536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.154327, 35.131565, 18.740217>,  <40.536694, 35.052868, 18.653021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154327, 35.131565, 18.740217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289976, 0.515431, 0.806378,
		0.046292, 0.834039, -0.549759,
		-0.955914, 0.196746, 0.217991,
		39.867554, 35.190590, 18.805614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556419, 35.736927, 18.931877>,  <40.536694, 35.052868, 18.653021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556419, 35.736927, 18.931877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190048, 35.597103, 19.010748>,  <39.970226, 35.513210, 19.058069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190048, 35.597103, 19.010748>,  <40.556419, 35.736927, 18.931877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190048, 35.597103, 19.010748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052231, 0.590946, 0.805018,
		-0.397922, 0.727043, -0.559524,
		-0.915931, -0.349559, 0.197176,
		39.915268, 35.492237, 19.069901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092754, 36.302845, 19.172426>,  <40.556419, 35.736927, 18.931877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092754, 36.302845, 19.172426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.952347, 35.968136, 19.340521>,  <39.868103, 35.767311, 19.441378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.952347, 35.968136, 19.340521>,  <40.092754, 36.302845, 19.172426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952347, 35.968136, 19.340521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000320, 0.448901, 0.893582,
		-0.936368, 0.313531, -0.157842,
		-0.351021, -0.836771, 0.420236,
		39.847042, 35.717106, 19.466591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709385, 36.616844, 19.633459>,  <40.092754, 36.302845, 19.172426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709385, 36.616844, 19.633459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722755, 36.240166, 19.767382>,  <39.730778, 36.014160, 19.847734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.722755, 36.240166, 19.767382>,  <39.709385, 36.616844, 19.633459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722755, 36.240166, 19.767382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222800, 0.319543, 0.921006,
		-0.974291, -0.105378, -0.199129,
		0.033423, -0.941694, 0.334807,
		39.732784, 35.957657, 19.867825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295994, 36.630199, 20.286266>,  <39.709385, 36.616844, 19.633459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295994, 36.630199, 20.286266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462597, 36.268726, 20.326012>,  <39.562561, 36.051842, 20.349859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462597, 36.268726, 20.326012>,  <39.295994, 36.630199, 20.286266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462597, 36.268726, 20.326012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171290, 0.029334, 0.984784,
		-0.892848, -0.427195, -0.142574,
		0.416512, -0.903684, 0.099365,
		39.587551, 35.997620, 20.355822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791721, 36.057613, 20.519114>,  <39.295994, 36.630199, 20.286266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791721, 36.057613, 20.519114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163960, 35.979404, 20.642900>,  <39.387302, 35.932480, 20.717173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.163960, 35.979404, 20.642900>,  <38.791721, 36.057613, 20.519114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163960, 35.979404, 20.642900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337826, -0.133170, 0.931740,
		-0.140962, -0.971616, -0.189978,
		0.930593, -0.195519, 0.309465,
		39.443138, 35.920750, 20.735741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678951, 35.597061, 21.204515>,  <38.791721, 36.057613, 20.519114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678951, 35.597061, 21.204515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067524, 35.690117, 21.223253>,  <39.300667, 35.745949, 21.234495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067524, 35.690117, 21.223253>,  <38.678951, 35.597061, 21.204515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067524, 35.690117, 21.223253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059237, 0.046576, 0.997157,
		0.229794, -0.971448, 0.059027,
		0.971435, 0.232638, 0.046843,
		39.358955, 35.759907, 21.237307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054283, 35.117859, 21.688078>,  <38.678951, 35.597061, 21.204515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054283, 35.117859, 21.688078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239223, 35.472385, 21.677616>,  <39.350185, 35.685101, 21.671339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.239223, 35.472385, 21.677616>,  <39.054283, 35.117859, 21.688078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239223, 35.472385, 21.677616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249975, 0.158588, 0.955176,
		0.850733, -0.435085, 0.294879,
		0.462348, 0.886313, -0.026156,
		39.377930, 35.738277, 21.669769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259819, 34.550121, 22.250931>,  <39.054283, 35.117859, 21.688078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259819, 34.550121, 22.250931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018604, 34.232895, 22.285328>,  <38.873875, 34.042557, 22.305967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.018604, 34.232895, 22.285328>,  <39.259819, 34.550121, 22.250931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018604, 34.232895, 22.285328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134191, -0.005413, -0.990941,
		0.786349, -0.609109, -0.103158,
		-0.603032, -0.793068, 0.085994,
		38.837696, 33.994976, 22.311127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423153, 34.047348, 21.694834>,  <39.259819, 34.550121, 22.250931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423153, 34.047348, 21.694834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057350, 33.948990, 21.823345>,  <38.837868, 33.889977, 21.900452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057350, 33.948990, 21.823345>,  <39.423153, 34.047348, 21.694834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057350, 33.948990, 21.823345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300046, -0.120493, -0.946284,
		0.271396, -0.961779, 0.036412,
		-0.914504, -0.245892, 0.321279,
		38.782997, 33.875221, 21.919729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328728, 33.390465, 21.323456>,  <39.423153, 34.047348, 21.694834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328728, 33.390465, 21.323456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956295, 33.473774, 21.443264>,  <38.732838, 33.523758, 21.515150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.956295, 33.473774, 21.443264>,  <39.328728, 33.390465, 21.323456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956295, 33.473774, 21.443264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361432, -0.415052, -0.834924,
		-0.049575, -0.885638, 0.461723,
		-0.931079, 0.208273, 0.299522,
		38.676971, 33.536255, 21.533121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884644, 32.803619, 21.233242>,  <39.328728, 33.390465, 21.323456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884644, 32.803619, 21.233242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611355, 33.095646, 21.227385>,  <38.447380, 33.270863, 21.223871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611355, 33.095646, 21.227385>,  <38.884644, 32.803619, 21.233242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611355, 33.095646, 21.227385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409775, -0.399926, -0.819844,
		-0.604394, -0.554136, 0.572400,
		-0.683223, 0.730063, -0.014642,
		38.406387, 33.314663, 21.222992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337349, 32.498367, 20.990829>,  <38.884644, 32.803619, 21.233242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337349, 32.498367, 20.990829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265205, 32.884163, 20.913652>,  <38.221920, 33.115643, 20.867346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.265205, 32.884163, 20.913652>,  <38.337349, 32.498367, 20.990829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265205, 32.884163, 20.913652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500300, -0.258845, -0.826256,
		-0.846859, -0.052493, 0.529220,
		-0.180358, 0.964491, -0.192943,
		38.211098, 33.173512, 20.855770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615051, 32.461384, 20.749376>,  <38.337349, 32.498367, 20.990829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615051, 32.461384, 20.749376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773968, 32.809322, 20.632399>,  <37.869316, 33.018085, 20.562212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773968, 32.809322, 20.632399>,  <37.615051, 32.461384, 20.749376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773968, 32.809322, 20.632399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466481, -0.083008, -0.880628,
		-0.790288, 0.486285, 0.372789,
		0.397292, 0.869848, -0.292443,
		37.893154, 33.070278, 20.544666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077198, 32.799034, 20.397127>,  <37.615051, 32.461384, 20.749376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077198, 32.799034, 20.397127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402210, 32.990177, 20.263588>,  <37.597218, 33.104862, 20.183464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.402210, 32.990177, 20.263588>,  <37.077198, 32.799034, 20.397127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402210, 32.990177, 20.263588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379028, -0.002019, -0.925383,
		-0.442875, 0.878435, 0.179481,
		0.812526, 0.477858, -0.333846,
		37.645969, 33.133533, 20.163435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373760, 32.770340, 20.531881>,  <37.077198, 32.799034, 20.397127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373760, 32.770340, 20.531881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237488, 32.408657, 20.428850>,  <36.155724, 32.191647, 20.367031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.237488, 32.408657, 20.428850>,  <36.373760, 32.770340, 20.531881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237488, 32.408657, 20.428850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233009, -0.346622, 0.908603,
		-0.910847, 0.249527, 0.328776,
		-0.340682, -0.904207, -0.257578,
		36.135284, 32.137394, 20.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878006, 32.506512, 21.019903>,  <36.373760, 32.770340, 20.531881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878006, 32.506512, 21.019903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045010, 32.176117, 20.868412>,  <36.145210, 31.977880, 20.777517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045010, 32.176117, 20.868412>,  <35.878006, 32.506512, 21.019903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045010, 32.176117, 20.868412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008241, -0.420220, 0.907385,
		-0.908635, -0.375720, -0.182253,
		0.417509, -0.825984, -0.378730,
		36.170261, 31.928322, 20.754793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596821, 32.096836, 21.474539>,  <35.878006, 32.506512, 21.019903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596821, 32.096836, 21.474539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899010, 31.905634, 21.295307>,  <36.080322, 31.790913, 21.187769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899010, 31.905634, 21.295307>,  <35.596821, 32.096836, 21.474539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899010, 31.905634, 21.295307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213558, -0.466889, 0.858142,
		-0.619402, -0.743990, -0.250637,
		0.755469, -0.478009, -0.448078,
		36.125652, 31.762232, 21.160885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499352, 31.433067, 21.545664>,  <35.596821, 32.096836, 21.474539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499352, 31.433067, 21.545664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890156, 31.438972, 21.460590>,  <36.124638, 31.442516, 21.409546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.890156, 31.438972, 21.460590>,  <35.499352, 31.433067, 21.545664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890156, 31.438972, 21.460590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183567, -0.565603, 0.803988,
		-0.108427, -0.824546, -0.555309,
		0.977009, 0.014763, -0.212686,
		36.183258, 31.443401, 21.396784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789700, 30.869686, 21.904646>,  <35.499352, 31.433067, 21.545664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789700, 30.869686, 21.904646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126286, 31.057678, 21.798023>,  <36.328236, 31.170473, 21.734049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.126286, 31.057678, 21.798023>,  <35.789700, 30.869686, 21.904646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126286, 31.057678, 21.798023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441475, -0.313623, 0.840679,
		0.311504, -0.825081, -0.471388,
		0.841466, 0.469980, -0.266558,
		36.378727, 31.198673, 21.718056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257515, 30.393251, 22.086529>,  <35.789700, 30.869686, 21.904646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257515, 30.393251, 22.086529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443233, 30.746883, 22.065243>,  <36.554665, 30.959063, 22.052471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.443233, 30.746883, 22.065243>,  <36.257515, 30.393251, 22.086529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443233, 30.746883, 22.065243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294888, -0.097655, 0.950528,
		0.835147, -0.457018, -0.306046,
		0.464296, 0.884080, -0.053213,
		36.582523, 31.012108, 22.049278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976234, 30.291906, 22.478546>,  <36.257515, 30.393251, 22.086529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976234, 30.291906, 22.478546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916214, 30.685987, 22.445410>,  <36.880203, 30.922436, 22.425528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916214, 30.685987, 22.445410>,  <36.976234, 30.291906, 22.478546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916214, 30.685987, 22.445410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335615, 0.129573, 0.933045,
		0.929972, 0.112201, -0.350091,
		-0.150051, 0.985202, -0.082842,
		36.871201, 30.981548, 22.420557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.498047, 35.607941, 17.600712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812962, 35.776508, 17.780754>,  <35.001911, 35.877647, 17.888779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812962, 35.776508, 17.780754>,  <34.498047, 35.607941, 17.600712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812962, 35.776508, 17.780754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522001, 0.066997, 0.850309,
		0.328179, -0.904389, 0.272726,
		0.787282, 0.421417, 0.450105,
		35.049145, 35.902931, 17.915785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632164, 35.255936, 18.195395>,  <34.498047, 35.607941, 17.600712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632164, 35.255936, 18.195395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.827950, 35.601463, 18.243147>,  <34.945419, 35.808781, 18.271797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.827950, 35.601463, 18.243147>,  <34.632164, 35.255936, 18.195395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827950, 35.601463, 18.243147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356409, 0.073224, 0.931456,
		0.795865, -0.498459, 0.343712,
		0.489461, 0.863816, 0.119378,
		34.974789, 35.860607, 18.278961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932602, 35.187538, 18.854431>,  <34.632164, 35.255936, 18.195395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932602, 35.187538, 18.854431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973579, 35.583202, 18.812370>,  <34.998165, 35.820602, 18.787134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973579, 35.583202, 18.812370>,  <34.932602, 35.187538, 18.854431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973579, 35.583202, 18.812370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317012, 0.132663, 0.939098,
		0.942872, -0.062873, 0.327168,
		0.102447, 0.989165, -0.105153,
		35.004314, 35.879951, 18.780825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290337, 35.387547, 19.428488>,  <34.932602, 35.187538, 18.854431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290337, 35.387547, 19.428488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087158, 35.704945, 19.294405>,  <34.965252, 35.895382, 19.213955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.087158, 35.704945, 19.294405>,  <35.290337, 35.387547, 19.428488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087158, 35.704945, 19.294405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391067, 0.134303, 0.910510,
		0.767503, 0.593574, 0.242091,
		-0.507942, 0.793494, -0.335206,
		34.934776, 35.942993, 19.193844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475792, 35.893856, 19.908937>,  <35.290337, 35.387547, 19.428488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475792, 35.893856, 19.908937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144802, 36.037384, 19.736177>,  <34.946209, 36.123501, 19.632521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144802, 36.037384, 19.736177>,  <35.475792, 35.893856, 19.908937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144802, 36.037384, 19.736177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362233, 0.246602, 0.898874,
		0.429042, 0.900242, -0.074079,
		-0.827472, 0.358821, -0.431900,
		34.896561, 36.145031, 19.606607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293678, 36.559677, 20.304359>,  <35.475792, 35.893856, 19.908937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293678, 36.559677, 20.304359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956436, 36.427444, 20.134703>,  <34.754093, 36.348106, 20.032909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956436, 36.427444, 20.134703>,  <35.293678, 36.559677, 20.304359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956436, 36.427444, 20.134703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508286, 0.232390, 0.829241,
		-0.175563, 0.914720, -0.363957,
		-0.843103, -0.330578, -0.424140,
		34.703506, 36.328270, 20.007462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836990, 36.978447, 20.480268>,  <35.293678, 36.559677, 20.304359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836990, 36.978447, 20.480268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580605, 36.696442, 20.358860>,  <34.426773, 36.527237, 20.286015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.580605, 36.696442, 20.358860>,  <34.836990, 36.978447, 20.480268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580605, 36.696442, 20.358860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533081, 0.124360, 0.836875,
		-0.552262, 0.698205, -0.455539,
		-0.640961, -0.705014, -0.303521,
		34.388317, 36.484936, 20.267803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155144, 37.304821, 20.543242>,  <34.836990, 36.978447, 20.480268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155144, 37.304821, 20.543242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.077652, 36.912613, 20.530313>,  <34.031155, 36.677288, 20.522556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.077652, 36.912613, 20.530313>,  <34.155144, 37.304821, 20.543242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077652, 36.912613, 20.530313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777278, 0.133310, 0.614872,
		-0.598587, 0.144242, -0.787964,
		-0.193734, -0.980521, -0.032319,
		34.019531, 36.618458, 20.520618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377117, 37.281120, 20.432934>,  <34.155144, 37.304821, 20.543242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377117, 37.281120, 20.432934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504173, 36.941219, 20.601234>,  <33.580406, 36.737278, 20.702215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504173, 36.941219, 20.601234>,  <33.377117, 37.281120, 20.432934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504173, 36.941219, 20.601234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761067, 0.036193, 0.647663,
		-0.565579, -0.525945, -0.635219,
		0.317644, -0.849749, 0.420749,
		33.599468, 36.686295, 20.727459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718948, 36.939701, 20.689507>,  <33.377117, 37.281120, 20.432934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718948, 36.939701, 20.689507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011002, 36.760612, 20.895983>,  <33.186234, 36.653160, 21.019869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.011002, 36.760612, 20.895983>,  <32.718948, 36.939701, 20.689507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011002, 36.760612, 20.895983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601742, -0.063379, 0.796172,
		-0.323749, -0.891923, -0.315689,
		0.730133, -0.447723, 0.516189,
		33.230042, 36.626297, 21.050840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350830, 36.412220, 21.050703>,  <32.718948, 36.939701, 20.689507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350830, 36.412220, 21.050703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704437, 36.446598, 21.234495>,  <32.916603, 36.467224, 21.344770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704437, 36.446598, 21.234495>,  <32.350830, 36.412220, 21.050703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704437, 36.446598, 21.234495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456474, -0.053053, 0.888154,
		0.100709, -0.994886, -0.007668,
		0.884019, 0.085945, 0.459483,
		32.969643, 36.472382, 21.372339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579292, 35.815784, 21.513031>,  <32.350830, 36.412220, 21.050703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579292, 35.815784, 21.513031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796555, 36.108047, 21.678501>,  <32.926910, 36.283405, 21.777782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.796555, 36.108047, 21.678501>,  <32.579292, 35.815784, 21.513031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796555, 36.108047, 21.678501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460763, -0.152493, 0.874324,
		0.701912, -0.665498, 0.253832,
		0.543154, 0.730656, 0.413674,
		32.959499, 36.327244, 21.802603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991631, 35.202442, 21.776234>,  <32.579292, 35.815784, 21.513031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991631, 35.202442, 21.776234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900387, 34.821724, 21.858253>,  <32.845642, 34.593292, 21.907465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900387, 34.821724, 21.858253>,  <32.991631, 35.202442, 21.776234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900387, 34.821724, 21.858253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362052, -0.278421, -0.889606,
		0.903816, -0.128689, 0.408112,
		-0.228110, -0.951799, 0.205049,
		32.831955, 34.536186, 21.919767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539574, 34.720985, 21.414196>,  <32.991631, 35.202442, 21.776234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539574, 34.720985, 21.414196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.203262, 34.511265, 21.468164>,  <33.001476, 34.385433, 21.500546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.203262, 34.511265, 21.468164>,  <33.539574, 34.720985, 21.414196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203262, 34.511265, 21.468164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020756, -0.217811, -0.975770,
		0.540987, -0.823203, 0.172248,
		-0.840775, -0.524303, 0.134919,
		32.951031, 34.353973, 21.508640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617702, 34.194736, 20.945013>,  <33.539574, 34.720985, 21.414196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617702, 34.194736, 20.945013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229305, 34.149982, 21.029543>,  <32.996265, 34.123131, 21.080261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.229305, 34.149982, 21.029543>,  <33.617702, 34.194736, 20.945013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229305, 34.149982, 21.029543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153657, -0.385180, -0.909959,
		0.183208, -0.916034, 0.356814,
		-0.970991, -0.111885, 0.211323,
		32.938007, 34.116417, 21.092939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364101, 33.518337, 20.628387>,  <33.617702, 34.194736, 20.945013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364101, 33.518337, 20.628387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.013092, 33.696548, 20.699326>,  <32.802486, 33.803474, 20.741888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.013092, 33.696548, 20.699326>,  <33.364101, 33.518337, 20.628387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013092, 33.696548, 20.699326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363037, -0.375626, -0.852707,
		-0.313284, -0.812659, 0.491364,
		-0.877529, 0.445523, 0.177347,
		32.749832, 33.830208, 20.752529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839760, 32.979633, 20.524784>,  <33.364101, 33.518337, 20.628387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839760, 32.979633, 20.524784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.666374, 33.333363, 20.455412>,  <32.562344, 33.545601, 20.413788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.666374, 33.333363, 20.455412>,  <32.839760, 32.979633, 20.524784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666374, 33.333363, 20.455412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314058, -0.328622, -0.890716,
		-0.844677, -0.331623, 0.420174,
		-0.433461, 0.884327, -0.173431,
		32.536335, 33.598660, 20.403383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307053, 32.829857, 20.053209>,  <32.839760, 32.979633, 20.524784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307053, 32.829857, 20.053209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.325359, 33.228027, 20.019682>,  <32.336346, 33.466930, 19.999565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.325359, 33.228027, 20.019682>,  <32.307053, 32.829857, 20.053209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325359, 33.228027, 20.019682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260902, -0.069081, -0.962891,
		-0.964280, 0.065938, 0.256547,
		0.045769, 0.995430, -0.083817,
		32.339088, 33.526657, 19.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688990, 33.154308, 19.733665>,  <32.307053, 32.829857, 20.053209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688990, 33.154308, 19.733665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.982203, 33.420174, 19.675850>,  <32.158131, 33.579693, 19.641161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.982203, 33.420174, 19.675850>,  <31.688990, 33.154308, 19.733665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982203, 33.420174, 19.675850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037708, -0.172463, -0.984294,
		-0.679149, 0.726968, -0.101358,
		0.733031, 0.664660, -0.144541,
		32.202110, 33.619572, 19.632488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474663, 33.525246, 19.105728>,  <31.688990, 33.154308, 19.733665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474663, 33.525246, 19.105728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863155, 33.598324, 19.166821>,  <32.096252, 33.642170, 19.203476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863155, 33.598324, 19.166821>,  <31.474663, 33.525246, 19.105728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863155, 33.598324, 19.166821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124318, 0.158022, -0.979578,
		-0.203101, 0.970387, 0.130764,
		0.971234, 0.182697, 0.152732,
		32.154526, 33.653133, 19.212641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520300, 34.076187, 18.618454>,  <31.474663, 33.525246, 19.105728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520300, 34.076187, 18.618454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882404, 33.951675, 18.734116>,  <32.099667, 33.876968, 18.803513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882404, 33.951675, 18.734116>,  <31.520300, 34.076187, 18.618454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882404, 33.951675, 18.734116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347198, 0.149755, -0.925758,
		0.244867, 0.938445, 0.243643,
		0.905259, -0.311280, 0.289156,
		32.153980, 33.858292, 18.820862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031818, 34.547272, 18.359821>,  <31.520300, 34.076187, 18.618454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031818, 34.547272, 18.359821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.214561, 34.199032, 18.432850>,  <32.324207, 33.990086, 18.476667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.214561, 34.199032, 18.432850>,  <32.031818, 34.547272, 18.359821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214561, 34.199032, 18.432850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344849, -0.015851, -0.938524,
		0.819975, 0.491732, 0.292985,
		0.456858, -0.870602, 0.182571,
		32.351620, 33.937851, 18.487621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807610, 34.517040, 18.097935>,  <32.031818, 34.547272, 18.359821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807610, 34.517040, 18.097935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698135, 34.132519, 18.110506>,  <32.632450, 33.901806, 18.118050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.698135, 34.132519, 18.110506>,  <32.807610, 34.517040, 18.097935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698135, 34.132519, 18.110506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440882, -0.154427, -0.884181,
		0.854823, -0.228127, 0.466086,
		-0.273682, -0.961307, 0.031431,
		32.616032, 33.844128, 18.119936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398411, 34.104137, 18.074673>,  <32.807610, 34.517040, 18.097935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398411, 34.104137, 18.074673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123013, 33.829929, 17.979990>,  <32.957771, 33.665405, 17.923180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123013, 33.829929, 17.979990>,  <33.398411, 34.104137, 18.074673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123013, 33.829929, 17.979990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580000, -0.324517, -0.747188,
		0.435397, -0.651728, 0.621032,
		-0.688498, -0.685521, -0.236708,
		32.916462, 33.624271, 17.908978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744419, 33.502213, 17.956514>,  <33.398411, 34.104137, 18.074673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744419, 33.502213, 17.956514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.396553, 33.464703, 17.762651>,  <33.187836, 33.442196, 17.646334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.396553, 33.464703, 17.762651>,  <33.744419, 33.502213, 17.956514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396553, 33.464703, 17.762651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480830, -0.383184, -0.788652,
		-0.111759, -0.918900, 0.378330,
		-0.869662, -0.093774, -0.484659,
		33.135654, 33.436569, 17.617254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796577, 32.791130, 17.812645>,  <33.744419, 33.502213, 17.956514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796577, 32.791130, 17.812645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.540398, 32.934193, 17.540789>,  <33.386692, 33.020031, 17.377674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.540398, 32.934193, 17.540789>,  <33.796577, 32.791130, 17.812645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540398, 32.934193, 17.540789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539532, -0.420264, -0.729577,
		-0.546564, -0.833944, 0.076191,
		-0.640447, 0.357653, -0.679641,
		33.348263, 33.041489, 17.336897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969299, 32.518959, 18.439398>,  <33.796577, 32.791130, 17.812645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969299, 32.518959, 18.439398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305084, 32.558079, 18.225578>,  <34.506554, 32.581551, 18.097286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305084, 32.558079, 18.225578>,  <33.969299, 32.518959, 18.439398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305084, 32.558079, 18.225578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538110, -0.286815, 0.792575,
		-0.075804, -0.952981, -0.293396,
		0.839459, 0.097799, -0.534550,
		34.556923, 32.587418, 18.065214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390869, 31.928785, 18.549246>,  <33.969299, 32.518959, 18.439398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390869, 31.928785, 18.549246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648273, 32.203690, 18.414446>,  <34.802715, 32.368633, 18.333567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.648273, 32.203690, 18.414446>,  <34.390869, 31.928785, 18.549246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648273, 32.203690, 18.414446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667651, -0.288652, 0.686238,
		0.374349, -0.666598, -0.644600,
		0.643510, 0.687261, -0.336998,
		34.841328, 32.409866, 18.313347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996288, 31.525208, 18.427567>,  <34.390869, 31.928785, 18.549246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996288, 31.525208, 18.427567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.082836, 31.912231, 18.479733>,  <35.134766, 32.144447, 18.511032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.082836, 31.912231, 18.479733>,  <34.996288, 31.525208, 18.427567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082836, 31.912231, 18.479733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792904, -0.252090, 0.554756,
		0.569637, -0.016627, -0.821728,
		0.216374, 0.967561, 0.130416,
		35.147747, 32.202499, 18.518858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765614, 31.635832, 18.290936>,  <34.996288, 31.525208, 18.427567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765614, 31.635832, 18.290936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620461, 31.909786, 18.543680>,  <35.533371, 32.074158, 18.695328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.620461, 31.909786, 18.543680>,  <35.765614, 31.635832, 18.290936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620461, 31.909786, 18.543680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713623, -0.231789, 0.661072,
		0.599217, 0.690802, -0.404637,
		-0.362879, 0.684884, 0.631864,
		35.511597, 32.115250, 18.733240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317719, 31.835938, 18.657515>,  <35.765614, 31.635832, 18.290936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317719, 31.835938, 18.657515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050846, 32.013905, 18.896484>,  <35.890720, 32.120686, 19.039865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.050846, 32.013905, 18.896484>,  <36.317719, 31.835938, 18.657515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050846, 32.013905, 18.896484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541731, -0.260666, 0.799113,
		0.511266, 0.856798, -0.067112,
		-0.667185, 0.444916, 0.597423,
		35.850689, 32.147381, 19.075712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679329, 32.276493, 19.105677>,  <36.317719, 31.835938, 18.657515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679329, 32.276493, 19.105677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343651, 32.199158, 19.309000>,  <36.142246, 32.152756, 19.430994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.343651, 32.199158, 19.309000>,  <36.679329, 32.276493, 19.105677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343651, 32.199158, 19.309000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543491, -0.331404, 0.771225,
		0.019352, 0.923468, 0.383187,
		-0.839192, -0.193334, 0.508310,
		36.091892, 32.141159, 19.461493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775700, 32.534035, 19.755074>,  <36.679329, 32.276493, 19.105677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775700, 32.534035, 19.755074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454731, 32.303646, 19.817522>,  <36.262150, 32.165413, 19.854992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454731, 32.303646, 19.817522>,  <36.775700, 32.534035, 19.755074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454731, 32.303646, 19.817522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413899, -0.348703, 0.840888,
		-0.429888, 0.739367, 0.518202,
		-0.802424, -0.575971, 0.156120,
		36.214005, 32.130856, 19.864359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726891, 33.292316, 19.929819>,  <36.775700, 32.534035, 19.755074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726891, 33.292316, 19.929819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113403, 33.300419, 19.827147>,  <37.345310, 33.305279, 19.765543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113403, 33.300419, 19.827147>,  <36.726891, 33.292316, 19.929819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113403, 33.300419, 19.827147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257176, 0.027655, -0.965969,
		-0.012469, 0.999412, 0.031932,
		0.966284, 0.020257, -0.256680,
		37.403290, 33.306496, 19.750143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810463, 33.810902, 19.359447>,  <36.726891, 33.292316, 19.929819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810463, 33.810902, 19.359447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107445, 33.543438, 19.343121>,  <37.285633, 33.382961, 19.333324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.107445, 33.543438, 19.343121>,  <36.810463, 33.810902, 19.359447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107445, 33.543438, 19.343121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022629, 0.085927, -0.996045,
		0.669518, 0.738591, 0.078927,
		0.742451, -0.668656, -0.040816,
		37.330181, 33.342842, 19.330875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377293, 34.118927, 18.992970>,  <36.810463, 33.810902, 19.359447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377293, 34.118927, 18.992970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.429768, 33.722858, 18.973547>,  <37.461250, 33.485218, 18.961893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.429768, 33.722858, 18.973547>,  <37.377293, 34.118927, 18.992970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429768, 33.722858, 18.973547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062217, 0.040661, -0.997234,
		0.989404, 0.133843, -0.056271,
		0.131185, -0.990168, -0.048558,
		37.469124, 33.425808, 18.958981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702583, 34.114746, 18.409971>,  <37.377293, 34.118927, 18.992970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702583, 34.114746, 18.409971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647205, 33.719326, 18.433989>,  <37.613979, 33.482075, 18.448399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.647205, 33.719326, 18.433989>,  <37.702583, 34.114746, 18.409971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647205, 33.719326, 18.433989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037119, -0.065762, -0.997145,
		0.989675, -0.135818, 0.045798,
		-0.138442, -0.988549, 0.060042,
		37.605671, 33.422760, 18.452002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359596, 33.627567, 18.172373>,  <37.702583, 34.114746, 18.409971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359596, 33.627567, 18.172373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027916, 33.411095, 18.116440>,  <37.828907, 33.281212, 18.082880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027916, 33.411095, 18.116440>,  <38.359596, 33.627567, 18.172373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027916, 33.411095, 18.116440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236591, -0.113165, -0.964997,
		0.506412, -0.833258, 0.221874,
		-0.829200, -0.541180, -0.139833,
		37.779156, 33.248741, 18.074490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577919, 33.108444, 17.780182>,  <38.359596, 33.627567, 18.172373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577919, 33.108444, 17.780182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185383, 33.057503, 17.722548>,  <37.949863, 33.026939, 17.687967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.185383, 33.057503, 17.722548>,  <38.577919, 33.108444, 17.780182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185383, 33.057503, 17.722548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185060, -0.421744, -0.887629,
		0.052274, -0.897727, 0.437440,
		-0.981336, -0.127352, -0.144087,
		37.890984, 33.019299, 17.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450848, 32.457882, 17.478119>,  <38.577919, 33.108444, 17.780182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450848, 32.457882, 17.478119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124130, 32.662811, 17.372009>,  <37.928101, 32.785770, 17.308344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124130, 32.662811, 17.372009>,  <38.450848, 32.457882, 17.478119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124130, 32.662811, 17.372009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091589, -0.338823, -0.936381,
		-0.569614, -0.789126, 0.229825,
		-0.816793, 0.512326, -0.265274,
		37.879093, 32.816509, 17.292427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316273, 32.026894, 16.932230>,  <38.450848, 32.457882, 17.478119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316273, 32.026894, 16.932230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093922, 32.357277, 16.894711>,  <37.960510, 32.555508, 16.872198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.093922, 32.357277, 16.894711>,  <38.316273, 32.026894, 16.932230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093922, 32.357277, 16.894711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121987, -0.192672, -0.973651,
		-0.822265, -0.529788, 0.207858,
		-0.555877, 0.825956, -0.093800,
		37.927158, 32.605064, 16.866571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591583, 31.882849, 16.645378>,  <38.316273, 32.026894, 16.932230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591583, 31.882849, 16.645378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685318, 32.267273, 16.586794>,  <37.741558, 32.497929, 16.551643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685318, 32.267273, 16.586794>,  <37.591583, 31.882849, 16.645378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685318, 32.267273, 16.586794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057313, -0.164050, -0.984786,
		-0.970464, 0.222379, -0.093525,
		0.234338, 0.961060, -0.146460,
		37.755619, 32.555592, 16.542856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.265335, 36.409489, 31.750797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397804, 36.695385, 31.504393>,  <36.477283, 36.866924, 31.356550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397804, 36.695385, 31.504393>,  <36.265335, 36.409489, 31.750797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397804, 36.695385, 31.504393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247770, -0.695814, -0.674131,
		-0.910459, 0.070623, -0.407524,
		0.331170, 0.714742, -0.616012,
		36.497154, 36.909809, 31.319590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018635, 36.240723, 31.091257>,  <36.265335, 36.409489, 31.750797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018635, 36.240723, 31.091257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339420, 36.468639, 31.019497>,  <36.531891, 36.605389, 30.976440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.339420, 36.468639, 31.019497>,  <36.018635, 36.240723, 31.091257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339420, 36.468639, 31.019497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326690, -0.669764, -0.666850,
		-0.500122, 0.476184, -0.723275,
		0.801967, 0.569793, -0.179399,
		36.580009, 36.639576, 30.965677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135094, 36.074760, 30.445049>,  <36.018635, 36.240723, 31.091257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135094, 36.074760, 30.445049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478405, 36.255569, 30.542236>,  <36.684391, 36.364056, 30.600548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.478405, 36.255569, 30.542236>,  <36.135094, 36.074760, 30.445049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478405, 36.255569, 30.542236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430666, -0.376959, -0.820017,
		-0.279078, 0.808441, -0.518207,
		0.858279, 0.452023, 0.242967,
		36.735889, 36.391178, 30.615126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324657, 36.528008, 29.822294>,  <36.135094, 36.074760, 30.445049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324657, 36.528008, 29.822294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625893, 36.387356, 30.044722>,  <36.806633, 36.302963, 30.178179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625893, 36.387356, 30.044722>,  <36.324657, 36.528008, 29.822294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625893, 36.387356, 30.044722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293752, -0.576564, -0.762420,
		0.588700, 0.737516, -0.330911,
		0.753088, -0.351631, 0.556070,
		36.851818, 36.281868, 30.211542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048290, 36.669323, 29.455933>,  <36.324657, 36.528008, 29.822294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048290, 36.669323, 29.455933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093391, 36.372192, 29.719902>,  <37.120453, 36.193913, 29.878284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093391, 36.372192, 29.719902>,  <37.048290, 36.669323, 29.455933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093391, 36.372192, 29.719902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266488, -0.617220, -0.740286,
		0.957221, 0.259328, 0.128363,
		0.112749, -0.742825, 0.659923,
		37.127216, 36.149345, 29.917879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795578, 36.418221, 29.196682>,  <37.048290, 36.669323, 29.455933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795578, 36.418221, 29.196682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608978, 36.132507, 29.405363>,  <37.497017, 35.961079, 29.530573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.608978, 36.132507, 29.405363>,  <37.795578, 36.418221, 29.196682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608978, 36.132507, 29.405363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335177, -0.688582, -0.643048,
		0.818554, -0.125120, 0.560637,
		-0.466503, -0.714283, 0.521704,
		37.469028, 35.918224, 29.561874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282524, 36.003090, 29.093937>,  <37.795578, 36.418221, 29.196682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282524, 36.003090, 29.093937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960754, 35.798370, 29.214575>,  <37.767693, 35.675541, 29.286959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.960754, 35.798370, 29.214575>,  <38.282524, 36.003090, 29.093937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960754, 35.798370, 29.214575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270748, -0.767765, -0.580717,
		0.528764, -0.385489, 0.756180,
		-0.804428, -0.511796, 0.301596,
		37.719425, 35.644833, 29.305054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507435, 35.422043, 29.444460>,  <38.282524, 36.003090, 29.093937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507435, 35.422043, 29.444460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140350, 35.327980, 29.316397>,  <37.920097, 35.271542, 29.239559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140350, 35.327980, 29.316397>,  <38.507435, 35.422043, 29.444460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140350, 35.327980, 29.316397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377667, -0.766366, -0.519664,
		-0.123158, -0.597817, 0.792116,
		-0.917715, -0.235155, -0.320160,
		37.865036, 35.257435, 29.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507542, 34.690544, 29.469206>,  <38.507435, 35.422043, 29.444460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507542, 34.690544, 29.469206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189014, 34.775684, 29.242731>,  <37.997898, 34.826767, 29.106846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189014, 34.775684, 29.242731>,  <38.507542, 34.690544, 29.469206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189014, 34.775684, 29.242731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183767, -0.806662, -0.561717,
		-0.576281, -0.551354, 0.603249,
		-0.796323, 0.212849, -0.566185,
		37.950119, 34.839539, 29.072876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491917, 34.108105, 29.179333>,  <38.507542, 34.690544, 29.469206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491917, 34.108105, 29.179333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.284096, 34.346439, 28.934366>,  <38.159405, 34.489441, 28.787386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.284096, 34.346439, 28.934366>,  <38.491917, 34.108105, 29.179333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284096, 34.346439, 28.934366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096408, -0.671288, -0.734900,
		-0.848986, -0.440857, 0.291323,
		-0.519547, 0.595833, -0.612416,
		38.128231, 34.525188, 28.750641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117809, 33.637276, 28.836727>,  <38.491917, 34.108105, 29.179333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117809, 33.637276, 28.836727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094604, 33.959545, 28.600922>,  <38.080681, 34.152905, 28.459438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094604, 33.959545, 28.600922>,  <38.117809, 33.637276, 28.836727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094604, 33.959545, 28.600922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040045, -0.588156, -0.807755,
		-0.997513, -0.070463, 0.001855,
		-0.058008, 0.805672, -0.589515,
		38.077202, 34.201248, 28.424067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617432, 33.482998, 28.264273>,  <38.117809, 33.637276, 28.836727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617432, 33.482998, 28.264273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855286, 33.781536, 28.144693>,  <37.997997, 33.960659, 28.072947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855286, 33.781536, 28.144693>,  <37.617432, 33.482998, 28.264273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855286, 33.781536, 28.144693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241762, -0.520606, -0.818853,
		-0.766785, 0.414646, -0.490010,
		0.594636, 0.746350, -0.298947,
		38.033676, 34.005440, 28.055010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041080, 33.006397, 28.051807>,  <37.617432, 33.482998, 28.264273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041080, 33.006397, 28.051807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957863, 32.632763, 28.167871>,  <36.907932, 32.408581, 28.237509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.957863, 32.632763, 28.167871>,  <37.041080, 33.006397, 28.051807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957863, 32.632763, 28.167871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328732, 0.346168, 0.878694,
		-0.921223, 0.087425, -0.379085,
		-0.208047, -0.934090, 0.290159,
		36.895451, 32.352535, 28.254919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331738, 33.007931, 28.251030>,  <37.041080, 33.006397, 28.051807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331738, 33.007931, 28.251030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526188, 32.704479, 28.424541>,  <36.642857, 32.522408, 28.528648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526188, 32.704479, 28.424541>,  <36.331738, 33.007931, 28.251030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526188, 32.704479, 28.424541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244879, 0.358239, 0.900944,
		-0.838878, -0.544195, -0.011624,
		0.486125, -0.758628, 0.433781,
		36.672024, 32.476891, 28.554676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050545, 32.995335, 28.861958>,  <36.331738, 33.007931, 28.251030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050545, 32.995335, 28.861958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370998, 32.775406, 28.956511>,  <36.563271, 32.643448, 29.013243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370998, 32.775406, 28.956511>,  <36.050545, 32.995335, 28.861958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370998, 32.775406, 28.956511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110420, 0.252396, 0.961303,
		-0.588211, -0.796234, 0.141491,
		0.801134, -0.549825, 0.236382,
		36.611340, 32.610458, 29.027426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912167, 32.612183, 29.511898>,  <36.050545, 32.995335, 28.861958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912167, 32.612183, 29.511898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311268, 32.618866, 29.485956>,  <36.550728, 32.622875, 29.470390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.311268, 32.618866, 29.485956>,  <35.912167, 32.612183, 29.511898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311268, 32.618866, 29.485956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064424, 0.025087, 0.997607,
		0.018273, -0.999546, 0.023955,
		0.997755, 0.016686, -0.064853,
		36.610596, 32.623878, 29.466499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109985, 32.091862, 29.913059>,  <35.912167, 32.612183, 29.511898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109985, 32.091862, 29.913059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419765, 32.344372, 29.896511>,  <36.605633, 32.495880, 29.886581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.419765, 32.344372, 29.896511>,  <36.109985, 32.091862, 29.913059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419765, 32.344372, 29.896511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012275, 0.050389, 0.998654,
		0.632514, -0.773917, 0.031275,
		0.774451, 0.631279, -0.041372,
		36.652100, 32.533756, 29.884100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467125, 31.902718, 30.466139>,  <36.109985, 32.091862, 29.913059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467125, 31.902718, 30.466139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649490, 32.248272, 30.380493>,  <36.758911, 32.455605, 30.329105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649490, 32.248272, 30.380493>,  <36.467125, 31.902718, 30.466139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649490, 32.248272, 30.380493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092385, 0.193338, 0.976773,
		0.885215, -0.465108, 0.008336,
		0.455916, 0.863884, -0.214115,
		36.786266, 32.507439, 30.316259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040699, 31.987762, 30.912237>,  <36.467125, 31.902718, 30.466139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040699, 31.987762, 30.912237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941666, 32.364170, 30.819986>,  <36.882248, 32.590015, 30.764637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.941666, 32.364170, 30.819986>,  <37.040699, 31.987762, 30.912237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941666, 32.364170, 30.819986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044060, 0.226855, 0.972931,
		0.967865, 0.251041, -0.014704,
		-0.247581, 0.941018, -0.230625,
		36.867390, 32.646477, 30.750799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452831, 32.474285, 31.294256>,  <37.040699, 31.987762, 30.912237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452831, 32.474285, 31.294256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117992, 32.679386, 31.217991>,  <36.917091, 32.802448, 31.172232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117992, 32.679386, 31.217991>,  <37.452831, 32.474285, 31.294256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117992, 32.679386, 31.217991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013034, 0.329729, 0.943986,
		0.546902, 0.792691, -0.269331,
		-0.837095, 0.512757, -0.190661,
		36.866863, 32.833214, 31.160793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590504, 33.114464, 31.572018>,  <37.452831, 32.474285, 31.294256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590504, 33.114464, 31.572018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192726, 33.128922, 31.532455>,  <36.954060, 33.137596, 31.508718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192726, 33.128922, 31.532455>,  <37.590504, 33.114464, 31.572018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192726, 33.128922, 31.532455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067945, 0.497324, 0.864900,
		0.080448, 0.866811, -0.492104,
		-0.994440, 0.036144, -0.098904,
		36.894394, 33.139763, 31.502785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410030, 33.762215, 31.668592>,  <37.590504, 33.114464, 31.572018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410030, 33.762215, 31.668592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.061272, 33.578743, 31.737198>,  <36.852016, 33.468658, 31.778360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.061272, 33.578743, 31.737198>,  <37.410030, 33.762215, 31.668592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061272, 33.578743, 31.737198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113761, 0.530379, 0.840093,
		-0.476301, 0.712959, -0.514613,
		-0.871892, -0.458680, 0.171513,
		36.799706, 33.441139, 31.788652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819923, 34.261730, 31.805023>,  <37.410030, 33.762215, 31.668592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819923, 34.261730, 31.805023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686287, 33.922337, 31.969196>,  <36.606106, 33.718700, 32.067699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.686287, 33.922337, 31.969196>,  <36.819923, 34.261730, 31.805023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686287, 33.922337, 31.969196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035657, 0.446523, 0.894062,
		-0.941865, 0.284065, -0.179435,
		-0.334094, -0.848484, 0.410435,
		36.586060, 33.667793, 32.092327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588871, 34.469501, 32.361946>,  <36.819923, 34.261730, 31.805023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588871, 34.469501, 32.361946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542561, 34.081829, 32.448921>,  <36.514774, 33.849224, 32.501106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542561, 34.081829, 32.448921>,  <36.588871, 34.469501, 32.361946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542561, 34.081829, 32.448921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081099, 0.227407, 0.970417,
		-0.989958, 0.094721, -0.104929,
		-0.115781, -0.969182, 0.217441,
		36.507828, 33.791073, 32.514153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002930, 34.445297, 32.812031>,  <36.588871, 34.469501, 32.361946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002930, 34.445297, 32.812031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230793, 34.121109, 32.866623>,  <36.367512, 33.926594, 32.899376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230793, 34.121109, 32.866623>,  <36.002930, 34.445297, 32.812031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230793, 34.121109, 32.866623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105872, 0.237034, 0.965715,
		-0.815037, -0.535675, 0.220834,
		0.569655, -0.810474, 0.136479,
		36.401688, 33.877968, 32.907566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753853, 34.086540, 33.412868>,  <36.002930, 34.445297, 32.812031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753853, 34.086540, 33.412868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132435, 33.964458, 33.370785>,  <36.359585, 33.891209, 33.345535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132435, 33.964458, 33.370785>,  <35.753853, 34.086540, 33.412868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132435, 33.964458, 33.370785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184651, 0.244477, 0.951911,
		-0.264807, -0.920370, 0.287743,
		0.946457, -0.305204, -0.105208,
		36.416370, 33.872898, 33.339222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230350, 34.484379, 33.487339>,  <35.753853, 34.086540, 33.412868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230350, 34.484379, 33.487339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037052, 34.826756, 33.560917>,  <34.921074, 35.032181, 33.605064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037052, 34.826756, 33.560917>,  <35.230350, 34.484379, 33.487339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037052, 34.826756, 33.560917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820405, -0.369383, -0.436454,
		-0.305634, -0.361822, 0.880723,
		-0.483243, 0.855944, 0.183944,
		34.892078, 35.083538, 33.616100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802479, 34.397472, 32.848469>,  <35.230350, 34.484379, 33.487339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802479, 34.397472, 32.848469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491096, 34.642784, 32.794964>,  <34.304268, 34.789970, 32.762863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491096, 34.642784, 32.794964>,  <34.802479, 34.397472, 32.848469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491096, 34.642784, 32.794964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188003, -0.431113, -0.882494,
		-0.598885, -0.661834, 0.450901,
		-0.778454, 0.613283, -0.133760,
		34.257561, 34.826771, 32.754837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194565, 34.096798, 32.676262>,  <34.802479, 34.397472, 32.848469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194565, 34.096798, 32.676262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163166, 34.458691, 32.508785>,  <34.144325, 34.675827, 32.408298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163166, 34.458691, 32.508785>,  <34.194565, 34.096798, 32.676262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163166, 34.458691, 32.508785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311380, -0.421225, -0.851829,
		-0.947038, 0.063506, 0.314780,
		-0.078497, 0.904730, -0.418690,
		34.139618, 34.730110, 32.383179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553669, 34.076656, 32.274433>,  <34.194565, 34.096798, 32.676262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553669, 34.076656, 32.274433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735004, 34.397831, 32.119633>,  <33.843807, 34.590538, 32.026752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735004, 34.397831, 32.119633>,  <33.553669, 34.076656, 32.274433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735004, 34.397831, 32.119633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457956, -0.162675, -0.873964,
		-0.764696, 0.573432, 0.293964,
		0.453338, 0.802940, -0.387004,
		33.871006, 34.638714, 32.003532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092030, 34.408409, 31.841106>,  <33.553669, 34.076656, 32.274433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092030, 34.408409, 31.841106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441570, 34.538483, 31.696531>,  <33.651295, 34.616528, 31.609785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441570, 34.538483, 31.696531>,  <33.092030, 34.408409, 31.841106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441570, 34.538483, 31.696531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286304, -0.256671, -0.923119,
		-0.392951, 0.910153, -0.131193,
		0.873853, 0.325180, -0.361440,
		33.703728, 34.636036, 31.588099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002796, 34.863979, 31.369041>,  <33.092030, 34.408409, 31.841106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002796, 34.863979, 31.369041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378136, 34.772427, 31.265409>,  <33.603340, 34.717495, 31.203230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378136, 34.772427, 31.265409>,  <33.002796, 34.863979, 31.369041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378136, 34.772427, 31.265409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249700, 0.069546, -0.965822,
		0.239077, 0.970967, 0.008106,
		0.938345, -0.228881, -0.259078,
		33.659637, 34.703762, 31.187687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175461, 35.280609, 30.765079>,  <33.002796, 34.863979, 31.369041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175461, 35.280609, 30.765079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472836, 35.013092, 30.763454>,  <33.651260, 34.852581, 30.762480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472836, 35.013092, 30.763454>,  <33.175461, 35.280609, 30.765079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472836, 35.013092, 30.763454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011044, -0.006200, -0.999920,
		0.668716, 0.743421, -0.011995,
		0.743436, -0.668795, -0.004064,
		33.695866, 34.812454, 30.762236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703495, 35.500042, 30.398842>,  <33.175461, 35.280609, 30.765079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703495, 35.500042, 30.398842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713680, 35.100266, 30.407473>,  <33.719791, 34.860397, 30.412651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713680, 35.100266, 30.407473>,  <33.703495, 35.500042, 30.398842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713680, 35.100266, 30.407473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130501, -0.024721, -0.991140,
		0.991121, 0.022424, -0.131058,
		0.025465, -0.999443, 0.021576,
		33.721321, 34.800434, 30.413946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184822, 35.380489, 29.852779>,  <33.703495, 35.500042, 30.398842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184822, 35.380489, 29.852779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957367, 35.058399, 29.920015>,  <33.820892, 34.865143, 29.960358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957367, 35.058399, 29.920015>,  <34.184822, 35.380489, 29.852779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957367, 35.058399, 29.920015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080024, -0.149223, -0.985560,
		0.818683, -0.573882, 0.020417,
		-0.568642, -0.805228, 0.168090,
		33.786774, 34.816830, 29.970442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515076, 34.908981, 29.307276>,  <34.184822, 35.380489, 29.852779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515076, 34.908981, 29.307276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157040, 34.757637, 29.401632>,  <33.942219, 34.666828, 29.458246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157040, 34.757637, 29.401632>,  <34.515076, 34.908981, 29.307276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157040, 34.757637, 29.401632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169192, -0.201263, -0.964815,
		0.412529, -0.903511, 0.116132,
		-0.895094, -0.378366, 0.235894,
		33.888512, 34.644127, 29.472401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468555, 34.159733, 29.120846>,  <34.515076, 34.908981, 29.307276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468555, 34.159733, 29.120846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097939, 34.308598, 29.142826>,  <33.875568, 34.397915, 29.156013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097939, 34.308598, 29.142826>,  <34.468555, 34.159733, 29.120846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097939, 34.308598, 29.142826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136606, -0.196747, -0.970891,
		-0.350520, -0.907075, 0.233133,
		-0.926539, 0.372164, 0.054948,
		33.819977, 34.420246, 29.159311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165062, 33.773544, 28.612175>,  <34.468555, 34.159733, 29.120846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165062, 33.773544, 28.612175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902077, 34.071030, 28.660549>,  <33.744286, 34.249523, 28.689573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902077, 34.071030, 28.660549>,  <34.165062, 33.773544, 28.612175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902077, 34.071030, 28.660549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144861, 0.032748, -0.988910,
		-0.739429, -0.667693, 0.086205,
		-0.657465, 0.743716, 0.120937,
		33.704838, 34.294144, 28.696831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572697, 33.507725, 28.305473>,  <34.165062, 33.773544, 28.612175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572697, 33.507725, 28.305473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512428, 33.901752, 28.338800>,  <33.476269, 34.138168, 28.358797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.512428, 33.901752, 28.338800>,  <33.572697, 33.507725, 28.305473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512428, 33.901752, 28.338800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399749, 0.016374, -0.916478,
		-0.904157, -0.171394, 0.391312,
		-0.150671, 0.985066, 0.083319,
		33.467228, 34.197273, 28.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936378, 33.688454, 28.042549>,  <33.572697, 33.507725, 28.305473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936378, 33.688454, 28.042549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124142, 34.040817, 28.018358>,  <33.236801, 34.252235, 28.003843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124142, 34.040817, 28.018358>,  <32.936378, 33.688454, 28.042549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124142, 34.040817, 28.018358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244038, 0.063608, -0.967677,
		-0.848587, 0.468996, 0.244833,
		0.469410, 0.880907, -0.060476,
		33.264965, 34.305088, 28.000216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547951, 34.137646, 27.673290>,  <32.936378, 33.688454, 28.042549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547951, 34.137646, 27.673290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893723, 34.331657, 27.620356>,  <33.101185, 34.448063, 27.588594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.893723, 34.331657, 27.620356>,  <32.547951, 34.137646, 27.673290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893723, 34.331657, 27.620356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241246, 0.169226, -0.955596,
		-0.441095, 0.857969, 0.263294,
		0.864428, 0.485027, -0.132337,
		33.153049, 34.477165, 27.580654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389469, 34.752872, 27.186010>,  <32.547951, 34.137646, 27.673290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389469, 34.752872, 27.186010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783245, 34.728039, 27.120260>,  <33.019512, 34.713139, 27.080811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783245, 34.728039, 27.120260>,  <32.389469, 34.752872, 27.186010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783245, 34.728039, 27.120260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168287, -0.064080, -0.983653,
		0.050538, 0.996012, -0.073531,
		0.984442, -0.062086, -0.164377,
		33.078579, 34.709412, 27.070948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592705, 35.283035, 26.746807>,  <32.389469, 34.752872, 27.186010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592705, 35.283035, 26.746807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871784, 34.998341, 26.714182>,  <33.039230, 34.827526, 26.694607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871784, 34.998341, 26.714182>,  <32.592705, 35.283035, 26.746807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871784, 34.998341, 26.714182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063968, 0.051503, -0.996622,
		0.713531, 0.700558, -0.009595,
		0.697698, -0.711734, -0.081563,
		33.081093, 34.784821, 26.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057152, 35.554001, 26.192131>,  <32.592705, 35.283035, 26.746807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057152, 35.554001, 26.192131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157017, 35.169483, 26.238745>,  <33.216934, 34.938774, 26.266714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157017, 35.169483, 26.238745>,  <33.057152, 35.554001, 26.192131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157017, 35.169483, 26.238745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170452, -0.162096, -0.971942,
		0.953214, 0.222792, -0.204324,
		0.249661, -0.961296, 0.116537,
		33.231915, 34.881096, 26.273706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594578, 35.425240, 25.717875>,  <33.057152, 35.554001, 26.192131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594578, 35.425240, 25.717875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428497, 35.072647, 25.807854>,  <33.328850, 34.861092, 25.861841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428497, 35.072647, 25.807854>,  <33.594578, 35.425240, 25.717875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428497, 35.072647, 25.807854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026999, -0.235220, -0.971567,
		0.909330, -0.409466, 0.073864,
		-0.415198, -0.881481, 0.224948,
		33.303936, 34.808205, 25.875338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954937, 34.983574, 25.264124>,  <33.594578, 35.425240, 25.717875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954937, 34.983574, 25.264124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618191, 34.786919, 25.353163>,  <33.416142, 34.668926, 25.406586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618191, 34.786919, 25.353163>,  <33.954937, 34.983574, 25.264124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618191, 34.786919, 25.353163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097863, -0.266548, -0.958840,
		0.530734, -0.829002, 0.176286,
		-0.841870, -0.491637, 0.222595,
		33.365631, 34.639427, 25.419941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987762, 34.394035, 25.034603>,  <33.954937, 34.983574, 25.264124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987762, 34.394035, 25.034603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590187, 34.437004, 25.043951>,  <33.351643, 34.462784, 25.049561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.590187, 34.437004, 25.043951>,  <33.987762, 34.394035, 25.034603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590187, 34.437004, 25.043951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064607, -0.398760, -0.914777,
		-0.088945, -0.910742, 0.403283,
		-0.993939, 0.107419, 0.023372,
		33.292004, 34.469231, 25.050962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765442, 33.877789, 24.562599>,  <33.987762, 34.394035, 25.034603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765442, 33.877789, 24.562599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466423, 34.140465, 24.602468>,  <33.287010, 34.298069, 24.626390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466423, 34.140465, 24.602468>,  <33.765442, 33.877789, 24.562599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466423, 34.140465, 24.602468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269113, -0.162252, -0.949343,
		-0.607251, -0.736501, 0.298015,
		-0.747546, 0.656689, 0.099675,
		33.242161, 34.337471, 24.632372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206291, 33.554623, 24.288149>,  <33.765442, 33.877789, 24.562599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206291, 33.554623, 24.288149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078552, 33.933456, 24.275217>,  <33.001907, 34.160755, 24.267458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078552, 33.933456, 24.275217>,  <33.206291, 33.554623, 24.288149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078552, 33.933456, 24.275217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175502, -0.092637, -0.980111,
		-0.931244, -0.307322, 0.195799,
		-0.319348, 0.947086, -0.032332,
		32.982746, 34.217583, 24.265518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604580, 33.568199, 23.835882>,  <33.206291, 33.554623, 24.288149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604580, 33.568199, 23.835882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696289, 33.957542, 23.835300>,  <32.751312, 34.191151, 23.834951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.696289, 33.957542, 23.835300>,  <32.604580, 33.568199, 23.835882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696289, 33.957542, 23.835300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387751, 0.089964, -0.917363,
		-0.892796, 0.210886, 0.398048,
		0.229269, 0.973362, -0.001452,
		32.765068, 34.249550, 23.834866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081238, 33.796028, 23.439413>,  <32.604580, 33.568199, 23.835882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081238, 33.796028, 23.439413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353596, 34.088970, 23.441708>,  <32.517010, 34.264736, 23.443085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.353596, 34.088970, 23.441708>,  <32.081238, 33.796028, 23.439413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353596, 34.088970, 23.441708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260679, 0.249668, -0.932584,
		-0.684416, 0.633498, 0.360908,
		0.680897, 0.732357, 0.005737,
		32.557865, 34.308678, 23.443428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757441, 34.320393, 23.134802>,  <32.081238, 33.796028, 23.439413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757441, 34.320393, 23.134802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154694, 34.342312, 23.093452>,  <32.393044, 34.355465, 23.068644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.154694, 34.342312, 23.093452>,  <31.757441, 34.320393, 23.134802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154694, 34.342312, 23.093452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104626, 0.020511, -0.994300,
		-0.052367, 0.998287, 0.026104,
		0.993132, 0.054799, -0.103373,
		32.452633, 34.358753, 23.062441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887732, 34.794197, 22.567270>,  <31.757441, 34.320393, 23.134802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887732, 34.794197, 22.567270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223076, 34.581455, 22.615072>,  <32.424282, 34.453808, 22.643753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.223076, 34.581455, 22.615072>,  <31.887732, 34.794197, 22.567270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223076, 34.581455, 22.615072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155848, 0.023778, -0.987495,
		0.522364, 0.846501, 0.102823,
		0.838360, -0.531857, 0.119505,
		32.474583, 34.421898, 22.650923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523029, 35.231407, 22.306286>,  <31.887732, 34.794197, 22.567270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523029, 35.231407, 22.306286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619152, 34.843273, 22.316866>,  <32.676826, 34.610394, 22.323214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.619152, 34.843273, 22.316866>,  <32.523029, 35.231407, 22.306286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619152, 34.843273, 22.316866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279908, 0.043176, -0.959056,
		0.929464, 0.237872, 0.281980,
		0.240308, -0.970336, 0.026451,
		32.691246, 34.552174, 22.324800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654968, 35.676804, 22.734644>,  <32.523029, 35.231407, 22.306286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654968, 35.676804, 22.734644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754219, 36.035568, 22.588228>,  <32.813770, 36.250828, 22.500378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754219, 36.035568, 22.588228>,  <32.654968, 35.676804, 22.734644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754219, 36.035568, 22.588228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194362, 0.416265, 0.888227,
		0.949030, -0.149245, 0.277610,
		0.248123, 0.896911, -0.366041,
		32.828655, 36.304642, 22.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200108, 36.015869, 23.237707>,  <32.654968, 35.676804, 22.734644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200108, 36.015869, 23.237707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988739, 36.273045, 23.015932>,  <32.861919, 36.427349, 22.882866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988739, 36.273045, 23.015932>,  <33.200108, 36.015869, 23.237707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988739, 36.273045, 23.015932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165647, 0.562433, 0.810081,
		0.832668, 0.519903, -0.190699,
		-0.528418, 0.642939, -0.554440,
		32.830215, 36.465927, 22.849600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415653, 36.713398, 23.345598>,  <33.200108, 36.015869, 23.237707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415653, 36.713398, 23.345598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039600, 36.759132, 23.217175>,  <32.813969, 36.786572, 23.140121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039600, 36.759132, 23.217175>,  <33.415653, 36.713398, 23.345598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039600, 36.759132, 23.217175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148805, 0.709795, 0.688511,
		0.306608, 0.695067, -0.650287,
		-0.940132, 0.114337, -0.321058,
		32.757561, 36.793434, 23.120857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372551, 37.409412, 23.360092>,  <33.415653, 36.713398, 23.345598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372551, 37.409412, 23.360092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994438, 37.279270, 23.369867>,  <32.767570, 37.201187, 23.375732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994438, 37.279270, 23.369867>,  <33.372551, 37.409412, 23.360092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994438, 37.279270, 23.369867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213300, 0.672919, 0.708296,
		-0.246889, 0.664324, -0.705492,
		-0.945277, -0.325352, 0.024436,
		32.710854, 37.181664, 23.377197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974613, 38.016010, 23.540621>,  <33.372551, 37.409412, 23.360092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974613, 38.016010, 23.540621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719315, 37.714222, 23.601831>,  <32.566135, 37.533150, 23.638557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719315, 37.714222, 23.601831>,  <32.974613, 38.016010, 23.540621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719315, 37.714222, 23.601831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535773, 0.578075, 0.615449,
		-0.552797, 0.310822, -0.773179,
		-0.638250, -0.754466, 0.153028,
		32.527840, 37.487881, 23.647739>
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
