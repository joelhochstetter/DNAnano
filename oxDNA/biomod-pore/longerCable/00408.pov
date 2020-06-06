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
	<24.685595, 35.110916, 34.748989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480762, 34.885441, 35.008228>,  <24.357864, 34.750156, 35.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480762, 34.885441, 35.008228>,  <24.685595, 35.110916, 34.748989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480762, 34.885441, 35.008228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512663, -0.805977, -0.295934,
		0.689168, 0.180716, 0.701705,
		-0.512078, -0.563687, 0.648100,
		24.327139, 34.716335, 35.202660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.147161, 34.740898, 34.856148>,  <24.685595, 35.110916, 34.748989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.147161, 34.740898, 34.856148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828726, 34.563042, 35.020359>,  <24.637665, 34.456326, 35.118885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828726, 34.563042, 35.020359>,  <25.147161, 34.740898, 34.856148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828726, 34.563042, 35.020359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451313, -0.888138, -0.086765,
		0.403183, 0.116203, 0.907711,
		-0.796090, -0.444644, 0.410527,
		24.589899, 34.429649, 35.143517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035690, 34.079269, 34.577904>,  <25.147161, 34.740898, 34.856148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035690, 34.079269, 34.577904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346025, 33.956974, 34.357140>,  <25.532227, 33.883598, 34.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346025, 33.956974, 34.357140>,  <25.035690, 34.079269, 34.577904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346025, 33.956974, 34.357140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630107, 0.330671, 0.702582,
		-0.032307, -0.892850, 0.449195,
		0.775836, -0.305740, -0.551908,
		25.578775, 33.865253, 34.191566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366806, 33.674980, 34.986275>,  <25.035690, 34.079269, 34.577904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366806, 33.674980, 34.986275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621080, 33.785500, 34.697952>,  <25.773645, 33.851810, 34.524960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621080, 33.785500, 34.697952>,  <25.366806, 33.674980, 34.986275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621080, 33.785500, 34.697952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722205, 0.116901, 0.681729,
		0.272621, -0.953937, -0.125230,
		0.635687, 0.276295, -0.720808,
		25.811787, 33.868389, 34.481709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835213, 33.254398, 35.010113>,  <25.366806, 33.674980, 34.986275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835213, 33.254398, 35.010113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011499, 33.580719, 34.860317>,  <26.117271, 33.776512, 34.770439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011499, 33.580719, 34.860317>,  <25.835213, 33.254398, 35.010113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011499, 33.580719, 34.860317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671045, -0.022332, 0.741080,
		0.596210, -0.577903, -0.557281,
		0.440717, 0.815800, -0.374485,
		26.143715, 33.825459, 34.747971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594824, 33.162323, 34.830601>,  <25.835213, 33.254398, 35.010113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594824, 33.162323, 34.830601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541683, 33.548813, 34.918930>,  <26.509798, 33.780704, 34.971928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541683, 33.548813, 34.918930>,  <26.594824, 33.162323, 34.830601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541683, 33.548813, 34.918930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699346, -0.066493, 0.711684,
		0.702329, 0.248983, -0.666890,
		-0.132854, 0.966223, 0.220825,
		26.501827, 33.838680, 34.985176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206425, 33.342499, 34.950085>,  <26.594824, 33.162323, 34.830601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206425, 33.342499, 34.950085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004082, 33.641140, 35.122913>,  <26.882675, 33.820324, 35.226612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004082, 33.641140, 35.122913>,  <27.206425, 33.342499, 34.950085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004082, 33.641140, 35.122913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539995, -0.116524, 0.833563,
		0.672691, 0.654981, -0.344220,
		-0.505858, 0.746607, 0.432071,
		26.852324, 33.865124, 35.252533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676411, 33.906010, 34.993816>,  <27.206425, 33.342499, 34.950085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676411, 33.906010, 34.993816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388584, 33.876732, 35.270039>,  <27.215889, 33.859165, 35.435772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388584, 33.876732, 35.270039>,  <27.676411, 33.906010, 34.993816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388584, 33.876732, 35.270039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694370, -0.063467, 0.716814,
		-0.008641, 0.995296, 0.096494,
		-0.719566, -0.073196, 0.690556,
		27.172714, 33.854774, 35.477207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826647, 34.388435, 35.675884>,  <27.676411, 33.906010, 34.993816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826647, 34.388435, 35.675884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580952, 34.102440, 35.809456>,  <27.433535, 33.930843, 35.889599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580952, 34.102440, 35.809456>,  <27.826647, 34.388435, 35.675884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580952, 34.102440, 35.809456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657608, -0.229875, 0.717433,
		-0.436193, 0.660267, 0.611378,
		-0.614237, -0.714986, 0.333927,
		27.396681, 33.887943, 35.909634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674181, 34.512398, 36.325424>,  <27.826647, 34.388435, 35.675884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674181, 34.512398, 36.325424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578987, 34.124611, 36.301781>,  <27.521870, 33.891937, 36.287594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578987, 34.124611, 36.301781>,  <27.674181, 34.512398, 36.325424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578987, 34.124611, 36.301781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497758, -0.173999, 0.849683,
		-0.834026, 0.172790, 0.523970,
		-0.237987, -0.969468, -0.059112,
		27.507591, 33.833771, 36.284046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337776, 34.356747, 36.966732>,  <27.674181, 34.512398, 36.325424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337776, 34.356747, 36.966732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503994, 34.030621, 36.805443>,  <27.603724, 33.834946, 36.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503994, 34.030621, 36.805443>,  <27.337776, 34.356747, 36.966732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503994, 34.030621, 36.805443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537638, -0.137412, 0.831903,
		-0.733669, -0.562481, 0.381242,
		0.415542, -0.815312, -0.403226,
		27.628656, 33.786026, 36.684475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375082, 33.787102, 37.548069>,  <27.337776, 34.356747, 36.966732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375082, 33.787102, 37.548069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642029, 33.753254, 37.252106>,  <27.802197, 33.732944, 37.074528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642029, 33.753254, 37.252106>,  <27.375082, 33.787102, 37.548069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642029, 33.753254, 37.252106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693257, -0.292366, 0.658724,
		-0.272061, -0.952556, -0.136456,
		0.667366, -0.084614, -0.739907,
		27.842237, 33.727867, 37.030132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747601, 33.164486, 37.556831>,  <27.375082, 33.787102, 37.548069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747601, 33.164486, 37.556831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989134, 33.460693, 37.438831>,  <28.134054, 33.638416, 37.368031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989134, 33.460693, 37.438831>,  <27.747601, 33.164486, 37.556831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989134, 33.460693, 37.438831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710705, -0.332568, 0.619917,
		0.360951, -0.583983, -0.727103,
		0.603832, 0.740515, -0.294999,
		28.170284, 33.682846, 37.350330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506620, 33.003723, 37.261780>,  <27.747601, 33.164486, 37.556831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506620, 33.003723, 37.261780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459282, 33.352692, 37.451466>,  <28.430880, 33.562073, 37.565277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459282, 33.352692, 37.451466>,  <28.506620, 33.003723, 37.261780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459282, 33.352692, 37.451466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793587, -0.203947, 0.573259,
		0.596837, 0.444170, -0.668205,
		-0.118346, 0.872421, 0.474211,
		28.423779, 33.614418, 37.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044069, 33.469097, 37.117256>,  <28.506620, 33.003723, 37.261780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044069, 33.469097, 37.117256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883953, 33.558430, 37.472759>,  <28.787884, 33.612030, 37.686062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883953, 33.558430, 37.472759>,  <29.044069, 33.469097, 37.117256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883953, 33.558430, 37.472759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902322, -0.073218, 0.424799,
		0.159943, 0.971990, -0.172205,
		-0.400292, 0.223328, 0.888758,
		28.763866, 33.625427, 37.739388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673044, 33.141312, 36.412495>,  <29.044069, 33.469097, 37.117256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673044, 33.141312, 36.412495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342693, 33.222675, 36.622849>,  <28.144482, 33.271492, 36.749062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342693, 33.222675, 36.622849>,  <28.673044, 33.141312, 36.412495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342693, 33.222675, 36.622849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543209, -0.036995, -0.838782,
		-0.151160, -0.978395, 0.141046,
		-0.825878, 0.203408, 0.525880,
		28.094929, 33.283695, 36.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055779, 32.672596, 36.237698>,  <28.673044, 33.141312, 36.412495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055779, 32.672596, 36.237698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905657, 33.020199, 36.366676>,  <27.815584, 33.228760, 36.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905657, 33.020199, 36.366676>,  <28.055779, 32.672596, 36.237698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905657, 33.020199, 36.366676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602309, 0.035776, -0.797461,
		-0.704536, -0.493501, 0.509985,
		-0.375303, 0.869009, 0.322446,
		27.793066, 33.280903, 36.463409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320372, 32.553009, 36.363270>,  <28.055779, 32.672596, 36.237698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320372, 32.553009, 36.363270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373056, 32.947319, 36.321499>,  <27.404667, 33.183903, 36.296436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373056, 32.947319, 36.321499>,  <27.320372, 32.553009, 36.363270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373056, 32.947319, 36.321499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789662, 0.040653, -0.612194,
		-0.599238, 0.163099, 0.783781,
		0.131711, 0.985772, -0.104432,
		27.412569, 33.243050, 36.290169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659479, 32.897739, 36.313496>,  <27.320372, 32.553009, 36.363270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659479, 32.897739, 36.313496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867838, 33.215611, 36.188820>,  <26.992853, 33.406334, 36.114014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867838, 33.215611, 36.188820>,  <26.659479, 32.897739, 36.313496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867838, 33.215611, 36.188820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675499, 0.160503, -0.719680,
		-0.521887, 0.585427, 0.620410,
		0.520898, 0.794679, -0.311691,
		27.024107, 33.454014, 36.095314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105801, 33.380409, 36.176517>,  <26.659479, 32.897739, 36.313496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105801, 33.380409, 36.176517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421293, 33.523960, 35.976875>,  <26.610590, 33.610092, 35.857090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421293, 33.523960, 35.976875>,  <26.105801, 33.380409, 36.176517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421293, 33.523960, 35.976875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606286, 0.319973, -0.728035,
		-0.101576, 0.876825, 0.469957,
		0.788733, 0.358879, -0.499105,
		26.657913, 33.631622, 35.827145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133924, 34.145035, 36.113422>,  <26.105801, 33.380409, 36.176517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133924, 34.145035, 36.113422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319874, 33.980694, 35.799709>,  <26.431442, 33.882092, 35.611481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319874, 33.980694, 35.799709>,  <26.133924, 34.145035, 36.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319874, 33.980694, 35.799709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575619, 0.532808, -0.620305,
		0.672724, 0.739809, 0.011194,
		0.464871, -0.410850, -0.784281,
		26.459335, 33.857437, 35.564426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080902, 34.720760, 35.722111>,  <26.133924, 34.145035, 36.113422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080902, 34.720760, 35.722111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397577, 34.529037, 35.570587>,  <26.587584, 34.414005, 35.479675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397577, 34.529037, 35.570587>,  <26.080902, 34.720760, 35.722111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397577, 34.529037, 35.570587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187307, 0.399757, -0.897280,
		0.581502, 0.781320, 0.226705,
		0.791689, -0.479306, -0.378806,
		26.635084, 34.385246, 35.456944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597519, 35.224457, 35.402882>,  <26.080902, 34.720760, 35.722111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597519, 35.224457, 35.402882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583752, 34.862419, 35.233353>,  <26.575491, 34.645195, 35.131638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.583752, 34.862419, 35.233353>,  <26.597519, 35.224457, 35.402882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583752, 34.862419, 35.233353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334250, 0.410073, -0.848597,
		0.941856, 0.112455, -0.316641,
		-0.034417, -0.905093, -0.423818,
		26.573427, 34.590893, 35.106209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781294, 35.078907, 34.695141>,  <26.597519, 35.224457, 35.402882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781294, 35.078907, 34.695141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714621, 34.685036, 34.715603>,  <26.674618, 34.448711, 34.727882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714621, 34.685036, 34.715603>,  <26.781294, 35.078907, 34.695141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714621, 34.685036, 34.715603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468113, 0.033361, -0.883039,
		0.867806, -0.171134, -0.466503,
		-0.166681, -0.984683, 0.051159,
		26.664616, 34.389629, 34.730949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765671, 34.786617, 34.035885>,  <26.781294, 35.078907, 34.695141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765671, 34.786617, 34.035885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576773, 34.500854, 34.242420>,  <26.463434, 34.329395, 34.366341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576773, 34.500854, 34.242420>,  <26.765671, 34.786617, 34.035885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576773, 34.500854, 34.242420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554192, -0.214875, -0.804176,
		0.685460, -0.665917, -0.294447,
		-0.472245, -0.714411, 0.516334,
		26.435099, 34.286530, 34.397320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642740, 34.328751, 33.553581>,  <26.765671, 34.786617, 34.035885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642740, 34.328751, 33.553581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406441, 34.184597, 33.842339>,  <26.264660, 34.098103, 34.015594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.406441, 34.184597, 33.842339>,  <26.642740, 34.328751, 33.553581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.406441, 34.184597, 33.842339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608662, -0.388286, -0.691929,
		0.529665, -0.848148, 0.010026,
		-0.590751, -0.360388, 0.721896,
		26.229216, 34.076481, 34.058907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571953, 33.640862, 33.375233>,  <26.642740, 34.328751, 33.553581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571953, 33.640862, 33.375233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264967, 33.753250, 33.605728>,  <26.080774, 33.820683, 33.744026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264967, 33.753250, 33.605728>,  <26.571953, 33.640862, 33.375233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264967, 33.753250, 33.605728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638780, -0.411361, -0.650186,
		0.054361, -0.867086, 0.495183,
		-0.767467, 0.280968, 0.576240,
		26.034727, 33.837540, 33.778599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191927, 33.003826, 33.447693>,  <26.571953, 33.640862, 33.375233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191927, 33.003826, 33.447693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992062, 33.343773, 33.514706>,  <25.872143, 33.547741, 33.554913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992062, 33.343773, 33.514706>,  <26.191927, 33.003826, 33.447693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992062, 33.343773, 33.514706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718915, -0.298969, -0.627518,
		-0.483218, -0.433990, 0.760364,
		-0.499661, 0.849865, 0.167534,
		25.842163, 33.598732, 33.564964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358433, 32.708221, 32.863735>,  <26.191927, 33.003826, 33.447693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358433, 32.708221, 32.863735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420727, 32.829292, 32.487621>,  <26.458103, 32.901936, 32.261955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.420727, 32.829292, 32.487621>,  <26.358433, 32.708221, 32.863735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.420727, 32.829292, 32.487621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181699, 0.926876, 0.328460,
		0.970944, -0.222000, 0.089350,
		0.155734, 0.302682, -0.940282,
		26.467447, 32.920097, 32.205536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079214, 32.782623, 32.686363>,  <26.358433, 32.708221, 32.863735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079214, 32.782623, 32.686363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862837, 33.043850, 32.474365>,  <26.733011, 33.200584, 32.347168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862837, 33.043850, 32.474365>,  <27.079214, 32.782623, 32.686363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862837, 33.043850, 32.474365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480445, 0.757151, 0.442600,
		0.690330, -0.015211, -0.723335,
		-0.540941, 0.653063, -0.529992,
		26.700554, 33.239769, 32.315369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507751, 33.205086, 32.368347>,  <27.079214, 32.782623, 32.686363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507751, 33.205086, 32.368347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165033, 33.407223, 32.409386>,  <26.959402, 33.528507, 32.434010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165033, 33.407223, 32.409386>,  <27.507751, 33.205086, 32.368347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165033, 33.407223, 32.409386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501765, 0.771183, 0.391802,
		0.118872, 0.387175, -0.914311,
		-0.856797, 0.505344, 0.102599,
		26.907993, 33.558826, 32.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692053, 33.773006, 32.822594>,  <27.507751, 33.205086, 32.368347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692053, 33.773006, 32.822594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838594, 33.929153, 32.484741>,  <27.926519, 34.022842, 32.282028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838594, 33.929153, 32.484741>,  <27.692053, 33.773006, 32.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838594, 33.929153, 32.484741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733169, 0.680036, -0.003717,
		0.572927, 0.620619, 0.535338,
		0.366356, 0.390364, -0.844630,
		27.948502, 34.046261, 32.231354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799767, 34.424988, 32.995396>,  <27.692053, 33.773006, 32.822594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799767, 34.424988, 32.995396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737406, 34.389084, 32.601921>,  <27.699989, 34.367542, 32.365837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737406, 34.389084, 32.601921>,  <27.799767, 34.424988, 32.995396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737406, 34.389084, 32.601921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729939, 0.681415, 0.053508,
		0.665495, 0.726373, -0.171752,
		-0.155901, -0.089759, -0.983686,
		27.690636, 34.362156, 32.306816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707191, 35.090107, 32.771023>,  <27.799767, 34.424988, 32.995396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707191, 35.090107, 32.771023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551270, 34.896572, 32.457603>,  <27.457716, 34.780449, 32.269550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551270, 34.896572, 32.457603>,  <27.707191, 35.090107, 32.771023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551270, 34.896572, 32.457603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636517, 0.756447, -0.150446,
		0.665506, 0.440098, -0.602840,
		-0.389806, -0.483840, -0.783550,
		27.434328, 34.751419, 32.222538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777143, 35.477112, 32.131344>,  <27.707191, 35.090107, 32.771023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777143, 35.477112, 32.131344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467119, 35.224468, 32.138817>,  <27.281105, 35.072880, 32.143303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467119, 35.224468, 32.138817>,  <27.777143, 35.477112, 32.131344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467119, 35.224468, 32.138817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626528, 0.771991, 0.107207,
		-0.082139, 0.071384, -0.994061,
		-0.775059, -0.631613, 0.018686,
		27.234602, 35.034985, 32.144424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196941, 35.759041, 31.621424>,  <27.777143, 35.477112, 32.131344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196941, 35.759041, 31.621424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059612, 35.418171, 31.463476>,  <26.977215, 35.213650, 31.368708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059612, 35.418171, 31.463476>,  <27.196941, 35.759041, 31.621424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059612, 35.418171, 31.463476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938990, 0.320680, 0.124345,
		0.020662, 0.413469, -0.910284,
		-0.343322, -0.852178, -0.394869,
		26.956615, 35.162518, 31.345015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624615, 35.801750, 31.069202>,  <27.196941, 35.759041, 31.621424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624615, 35.801750, 31.069202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606092, 35.467697, 31.288441>,  <26.594978, 35.267265, 31.419985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606092, 35.467697, 31.288441>,  <26.624615, 35.801750, 31.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606092, 35.467697, 31.288441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913818, 0.257034, 0.314436,
		-0.403475, -0.486300, -0.775061,
		-0.046307, -0.835132, 0.548097,
		26.592201, 35.217159, 31.452869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061930, 35.564056, 30.835800>,  <26.624615, 35.801750, 31.069202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061930, 35.564056, 30.835800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164362, 35.411911, 31.191271>,  <26.225821, 35.320625, 31.404552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164362, 35.411911, 31.191271>,  <26.061930, 35.564056, 30.835800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164362, 35.411911, 31.191271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793806, 0.441877, 0.417872,
		-0.551630, -0.812445, -0.188780,
		0.256081, -0.380365, 0.888676,
		26.241186, 35.297802, 31.457874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.391621, 35.395119, 31.224594>,  <26.061930, 35.564056, 30.835800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.391621, 35.395119, 31.224594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677282, 35.441414, 31.500736>,  <25.848679, 35.469193, 31.666422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677282, 35.441414, 31.500736>,  <25.391621, 35.395119, 31.224594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677282, 35.441414, 31.500736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660621, 0.437531, 0.610039,
		-0.231445, -0.891724, 0.388925,
		0.714152, 0.115741, 0.690356,
		25.891527, 35.476135, 31.707842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815395, 35.565872, 31.766344>,  <25.391621, 35.395119, 31.224594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815395, 35.565872, 31.766344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196686, 35.677021, 31.813921>,  <25.425461, 35.743710, 31.842466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196686, 35.677021, 31.813921>,  <24.815395, 35.565872, 31.766344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196686, 35.677021, 31.813921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256399, 0.534988, 0.805014,
		0.160055, -0.797858, 0.581210,
		0.953227, 0.277869, 0.118943,
		25.482655, 35.760384, 31.849604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.770302, 35.800091, 32.393238>,  <24.815395, 35.565872, 31.766344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.770302, 35.800091, 32.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140087, 35.900963, 32.278854>,  <25.361958, 35.961487, 32.210224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140087, 35.900963, 32.278854>,  <24.770302, 35.800091, 32.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140087, 35.900963, 32.278854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041291, 0.679380, 0.732624,
		0.379028, -0.689092, 0.617649,
		0.924463, 0.252182, -0.285958,
		25.417425, 35.976616, 32.193066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048679, 35.079235, 32.374344>,  <24.770302, 35.800091, 32.393238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048679, 35.079235, 32.374344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105120, 35.154488, 32.763126>,  <25.138983, 35.199638, 32.996395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105120, 35.154488, 32.763126>,  <25.048679, 35.079235, 32.374344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105120, 35.154488, 32.763126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939032, -0.336376, -0.071211,
		0.313545, 0.922745, -0.224122,
		0.141099, 0.188130, 0.971956,
		25.147449, 35.210926, 33.054714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636578, 34.480705, 32.340424>,  <25.048679, 35.079235, 32.374344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636578, 34.480705, 32.340424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938181, 34.321259, 32.549255>,  <26.119143, 34.225590, 32.674557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938181, 34.321259, 32.549255>,  <25.636578, 34.480705, 32.340424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938181, 34.321259, 32.549255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113551, 0.703748, 0.701317,
		-0.646974, -0.588083, 0.485369,
		0.754010, -0.398620, 0.522083,
		26.164383, 34.201672, 32.705879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.279236, 34.848461, 32.577965>,  <25.636578, 34.480705, 32.340424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.279236, 34.848461, 32.577965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203459, 34.863770, 32.185505>,  <26.157993, 34.872955, 31.950029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.203459, 34.863770, 32.185505>,  <26.279236, 34.848461, 32.577965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.203459, 34.863770, 32.185505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979085, -0.068135, -0.191701,
		-0.074187, -0.996942, -0.024564,
		-0.189441, 0.038272, -0.981146,
		26.146626, 34.875252, 31.891161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501663, 34.235867, 32.319397>,  <26.279236, 34.848461, 32.577965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501663, 34.235867, 32.319397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529146, 34.531254, 32.051086>,  <26.545635, 34.708485, 31.890100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529146, 34.531254, 32.051086>,  <26.501663, 34.235867, 32.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529146, 34.531254, 32.051086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869974, -0.373436, -0.322010,
		-0.488287, -0.561434, -0.668107,
		0.068708, 0.738470, -0.670777,
		26.549759, 34.752796, 31.849854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614182, 33.959923, 31.560347>,  <26.501663, 34.235867, 32.319397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614182, 33.959923, 31.560347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767874, 34.314957, 31.661983>,  <26.860088, 34.527977, 31.722965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767874, 34.314957, 31.661983>,  <26.614182, 33.959923, 31.560347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767874, 34.314957, 31.661983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916745, -0.399375, 0.008815,
		0.109303, 0.229550, -0.967140,
		0.384228, 0.887584, 0.254092,
		26.883142, 34.581230, 31.738211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130962, 34.110222, 31.113817>,  <26.614182, 33.959923, 31.560347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130962, 34.110222, 31.113817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212360, 34.307495, 31.452133>,  <27.261200, 34.425858, 31.655123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212360, 34.307495, 31.452133>,  <27.130962, 34.110222, 31.113817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212360, 34.307495, 31.452133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929261, -0.369332, -0.008222,
		0.308323, 0.787633, -0.533452,
		0.203497, 0.493181, 0.845791,
		27.273409, 34.455448, 31.705870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.672409, 34.498554, 31.029634>,  <27.130962, 34.110222, 31.113817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.672409, 34.498554, 31.029634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673101, 34.429260, 31.423586>,  <27.673517, 34.387684, 31.659958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673101, 34.429260, 31.423586>,  <27.672409, 34.498554, 31.029634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673101, 34.429260, 31.423586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933550, -0.352745, -0.063685,
		0.358443, 0.919544, 0.161111,
		0.001730, -0.173233, 0.984879,
		27.673620, 34.377289, 31.719049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353325, 34.582588, 31.156406>,  <27.672409, 34.498554, 31.029634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353325, 34.582588, 31.156406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226421, 34.420250, 31.499250>,  <28.150280, 34.322845, 31.704956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226421, 34.420250, 31.499250>,  <28.353325, 34.582588, 31.156406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226421, 34.420250, 31.499250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859246, -0.505472, 0.078707,
		0.401302, 0.761438, 0.509086,
		-0.317259, -0.405845, 0.857109,
		28.131243, 34.298496, 31.756384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935858, 34.498337, 31.475780>,  <28.353325, 34.582588, 31.156406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935858, 34.498337, 31.475780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678341, 34.247341, 31.650955>,  <28.523830, 34.096745, 31.756060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678341, 34.247341, 31.650955>,  <28.935858, 34.498337, 31.475780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678341, 34.247341, 31.650955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725438, -0.682588, 0.088397,
		0.243461, 0.374604, 0.894650,
		-0.643791, -0.627492, 0.437936,
		28.485203, 34.059093, 31.782335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298080, 34.121662, 31.981026>,  <28.935858, 34.498337, 31.475780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298080, 34.121662, 31.981026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960419, 33.911446, 31.938662>,  <28.757822, 33.785316, 31.913242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960419, 33.911446, 31.938662>,  <29.298080, 34.121662, 31.981026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960419, 33.911446, 31.938662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532613, -0.844634, -0.054005,
		-0.061074, -0.101997, 0.992908,
		-0.844153, -0.525537, -0.105910,
		28.707172, 33.753784, 31.906889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398144, 33.559071, 32.415283>,  <29.298080, 34.121662, 31.981026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398144, 33.559071, 32.415283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128796, 33.459114, 32.136967>,  <28.967188, 33.399139, 31.969976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128796, 33.459114, 32.136967>,  <29.398144, 33.559071, 32.415283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128796, 33.459114, 32.136967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453457, -0.882925, -0.121740,
		-0.583910, -0.397488, 0.707850,
		-0.673369, -0.249894, -0.695793,
		28.926785, 33.384148, 31.928228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975563, 33.708054, 32.773422>,  <29.398144, 33.559071, 32.415283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975563, 33.708054, 32.773422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186316, 33.922417, 32.509544>,  <30.312767, 34.051037, 32.351219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186316, 33.922417, 32.509544>,  <29.975563, 33.708054, 32.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186316, 33.922417, 32.509544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025374, 0.765902, 0.642456,
		0.849560, -0.355237, 0.389942,
		0.526882, 0.535911, -0.659694,
		30.344379, 34.083191, 32.311638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606333, 34.185280, 32.951050>,  <29.975563, 33.708054, 32.773422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606333, 34.185280, 32.951050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218353, 34.196301, 33.047749>,  <29.985565, 34.202915, 33.105770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218353, 34.196301, 33.047749>,  <30.606333, 34.185280, 32.951050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218353, 34.196301, 33.047749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222703, 0.500770, 0.836441,
		-0.098012, 0.865142, -0.491857,
		-0.969947, 0.027556, 0.241751,
		29.927370, 34.204567, 33.120274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209946, 34.814022, 32.961693>,  <30.606333, 34.185280, 32.951050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209946, 34.814022, 32.961693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070034, 34.569099, 33.245308>,  <29.986088, 34.422146, 33.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070034, 34.569099, 33.245308>,  <30.209946, 34.814022, 32.961693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070034, 34.569099, 33.245308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308914, 0.639131, 0.704332,
		-0.884436, 0.465391, -0.034403,
		-0.349778, -0.612309, 0.709037,
		29.965101, 34.385406, 33.458019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792252, 35.153625, 33.414158>,  <30.209946, 34.814022, 32.961693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792252, 35.153625, 33.414158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974480, 34.848972, 33.598492>,  <30.083817, 34.666180, 33.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974480, 34.848972, 33.598492>,  <29.792252, 35.153625, 33.414158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974480, 34.848972, 33.598492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370987, 0.633017, 0.679453,
		-0.809212, -0.138574, 0.570940,
		0.455570, -0.761634, 0.460836,
		30.111151, 34.620483, 33.736744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623272, 35.179417, 34.134487>,  <29.792252, 35.153625, 33.414158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623272, 35.179417, 34.134487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976688, 34.999935, 34.080791>,  <30.188738, 34.892246, 34.048573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976688, 34.999935, 34.080791>,  <29.623272, 35.179417, 34.134487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976688, 34.999935, 34.080791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438350, 0.691307, 0.574408,
		-0.164934, -0.566359, 0.807486,
		0.883542, -0.448700, -0.134243,
		30.241751, 34.865326, 34.040520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866518, 35.088352, 34.880924>,  <29.623272, 35.179417, 34.134487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866518, 35.088352, 34.880924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134777, 35.089710, 34.584217>,  <30.295732, 35.090527, 34.406193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134777, 35.089710, 34.584217>,  <29.866518, 35.088352, 34.880924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134777, 35.089710, 34.584217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663169, 0.445257, 0.601625,
		0.332322, -0.895396, 0.296357,
		0.670648, 0.003399, -0.741768,
		30.335972, 35.090729, 34.361687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529949, 34.707302, 35.087833>,  <29.866518, 35.088352, 34.880924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529949, 34.707302, 35.087833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547644, 35.007969, 34.824612>,  <30.558260, 35.188370, 34.666679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547644, 35.007969, 34.824612>,  <30.529949, 34.707302, 35.087833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547644, 35.007969, 34.824612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405824, 0.588381, 0.699368,
		0.912880, -0.297990, -0.279019,
		0.044235, 0.751672, -0.658052,
		30.560915, 35.233471, 34.627197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292475, 34.916004, 34.844856>,  <30.529949, 34.707302, 35.087833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292475, 34.916004, 34.844856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018183, 35.206684, 34.828491>,  <30.853607, 35.381092, 34.818672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018183, 35.206684, 34.828491>,  <31.292475, 34.916004, 34.844856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018183, 35.206684, 34.828491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601726, 0.597630, 0.529872,
		0.409510, 0.338732, -0.847090,
		-0.685731, 0.726704, -0.040911,
		30.812464, 35.424694, 34.816219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621664, 35.567348, 34.741070>,  <31.292475, 34.916004, 34.844856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621664, 35.567348, 34.741070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300983, 35.644371, 34.967411>,  <31.108574, 35.690586, 35.103218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300983, 35.644371, 34.967411>,  <31.621664, 35.567348, 34.741070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300983, 35.644371, 34.967411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556436, 0.586172, 0.588882,
		-0.218293, 0.786971, -0.577083,
		-0.801703, 0.192561, 0.565856,
		31.060472, 35.702141, 35.137169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354923, 35.262238, 34.693192>,  <31.621664, 35.567348, 34.741070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354923, 35.262238, 34.693192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715408, 35.435040, 34.707024>,  <32.931698, 35.538719, 34.715324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715408, 35.435040, 34.707024>,  <32.354923, 35.262238, 34.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715408, 35.435040, 34.707024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064444, 0.212484, -0.975037,
		-0.428568, 0.876483, 0.219332,
		0.901209, 0.432004, 0.034580,
		32.985771, 35.564640, 34.717396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252949, 35.951817, 34.446175>,  <32.354923, 35.262238, 34.693192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252949, 35.951817, 34.446175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638306, 35.867435, 34.379997>,  <32.869518, 35.816807, 34.340290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638306, 35.867435, 34.379997>,  <32.252949, 35.951817, 34.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638306, 35.867435, 34.379997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052745, 0.455924, -0.888454,
		0.262851, 0.864657, 0.428108,
		0.963394, -0.210951, -0.165447,
		32.927322, 35.804150, 34.330364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524269, 36.550980, 34.282272>,  <32.252949, 35.951817, 34.446175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524269, 36.550980, 34.282272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746899, 36.254688, 34.131783>,  <32.880478, 36.076912, 34.041489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746899, 36.254688, 34.131783>,  <32.524269, 36.550980, 34.282272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746899, 36.254688, 34.131783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135391, 0.527666, -0.838593,
		0.819692, 0.415801, 0.393973,
		0.556574, -0.740728, -0.376228,
		32.913872, 36.032471, 34.018913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170887, 36.829720, 33.911091>,  <32.524269, 36.550980, 34.282272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170887, 36.829720, 33.911091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001255, 36.503258, 33.754089>,  <32.899475, 36.307381, 33.659889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001255, 36.503258, 33.754089>,  <33.170887, 36.829720, 33.911091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001255, 36.503258, 33.754089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014156, 0.427375, -0.903963,
		0.905515, -0.388907, -0.169687,
		-0.424078, -0.816151, -0.392500,
		32.874031, 36.258411, 33.636341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635551, 36.494041, 33.436134>,  <33.170887, 36.829720, 33.911091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635551, 36.494041, 33.436134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253197, 36.404293, 33.360313>,  <33.023785, 36.350445, 33.314819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253197, 36.404293, 33.360313>,  <33.635551, 36.494041, 33.436134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253197, 36.404293, 33.360313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062041, 0.476551, -0.876955,
		0.287094, -0.850034, -0.441610,
		-0.955891, -0.224371, -0.189552,
		32.966431, 36.336983, 33.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656307, 36.120316, 32.733662>,  <33.635551, 36.494041, 33.436134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656307, 36.120316, 32.733662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308849, 36.290695, 32.834877>,  <33.100376, 36.392925, 32.895607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308849, 36.290695, 32.834877>,  <33.656307, 36.120316, 32.733662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308849, 36.290695, 32.834877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011201, 0.493714, -0.869552,
		-0.495316, -0.758163, -0.424089,
		-0.868641, 0.425952, 0.253037,
		33.048256, 36.418480, 32.910789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173161, 36.168755, 32.148685>,  <33.656307, 36.120316, 32.733662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173161, 36.168755, 32.148685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527584, 36.331371, 32.237801>,  <33.740238, 36.428940, 32.291267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527584, 36.331371, 32.237801>,  <33.173161, 36.168755, 32.148685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527584, 36.331371, 32.237801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369478, -0.329047, -0.869030,
		-0.279989, 0.852322, -0.441762,
		0.886054, 0.406540, 0.222785,
		33.793400, 36.453335, 32.304638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463768, 36.653164, 31.555803>,  <33.173161, 36.168755, 32.148685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463768, 36.653164, 31.555803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795818, 36.584267, 31.767923>,  <33.995049, 36.542927, 31.895195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795818, 36.584267, 31.767923>,  <33.463768, 36.653164, 31.555803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795818, 36.584267, 31.767923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512697, -0.138013, -0.847404,
		0.219149, 0.975338, -0.026260,
		0.830130, -0.172244, 0.530298,
		34.044857, 36.532593, 31.927013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940479, 37.091896, 31.217981>,  <33.463768, 36.653164, 31.555803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940479, 37.091896, 31.217981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160679, 36.829948, 31.425095>,  <34.292797, 36.672779, 31.549362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160679, 36.829948, 31.425095>,  <33.940479, 37.091896, 31.217981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160679, 36.829948, 31.425095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524394, -0.211347, -0.824829,
		0.649588, 0.725588, 0.227065,
		0.550496, -0.654870, 0.517783,
		34.325829, 36.633488, 31.580429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646545, 37.333111, 31.220945>,  <33.940479, 37.091896, 31.217981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646545, 37.333111, 31.220945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650852, 36.937088, 31.277060>,  <34.653435, 36.699474, 31.310728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650852, 36.937088, 31.277060>,  <34.646545, 37.333111, 31.220945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650852, 36.937088, 31.277060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705216, -0.091945, -0.703005,
		0.708911, 0.106497, 0.697211,
		0.010763, -0.990053, 0.140284,
		34.654079, 36.640072, 31.319145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285965, 37.156197, 31.220264>,  <34.646545, 37.333111, 31.220945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285965, 37.156197, 31.220264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090569, 36.823597, 31.114447>,  <34.973331, 36.624035, 31.050957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090569, 36.823597, 31.114447>,  <35.285965, 37.156197, 31.220264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090569, 36.823597, 31.114447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711775, -0.204347, -0.672026,
		0.504732, -0.516572, 0.691664,
		-0.488489, -0.831502, -0.264543,
		34.944023, 36.574146, 31.035084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859585, 36.686390, 31.199265>,  <35.285965, 37.156197, 31.220264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859585, 36.686390, 31.199265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553925, 36.490704, 31.031101>,  <35.370529, 36.373291, 30.930202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553925, 36.490704, 31.031101>,  <35.859585, 36.686390, 31.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553925, 36.490704, 31.031101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635517, -0.459396, -0.620543,
		0.110447, -0.741363, 0.661953,
		-0.764146, -0.489220, -0.420410,
		35.324680, 36.343937, 30.904978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014439, 36.012550, 31.172373>,  <35.859585, 36.686390, 31.199265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014439, 36.012550, 31.172373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735817, 36.047249, 30.887474>,  <35.568645, 36.068069, 30.716536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735817, 36.047249, 30.887474>,  <36.014439, 36.012550, 31.172373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735817, 36.047249, 30.887474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618443, -0.430722, -0.657273,
		-0.363795, -0.898306, 0.246372,
		-0.696550, 0.086745, -0.712246,
		35.526852, 36.073273, 30.673800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020809, 35.365391, 30.760883>,  <36.014439, 36.012550, 31.172373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020809, 35.365391, 30.760883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850685, 35.647728, 30.534290>,  <35.748611, 35.817131, 30.398335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850685, 35.647728, 30.534290>,  <36.020809, 35.365391, 30.760883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850685, 35.647728, 30.534290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456314, -0.373298, -0.807729,
		-0.781596, -0.602025, -0.163321,
		-0.425305, 0.705844, -0.566481,
		35.723095, 35.859482, 30.364346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728603, 34.962898, 30.094366>,  <36.020809, 35.365391, 30.760883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728603, 34.962898, 30.094366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749256, 35.356007, 30.023371>,  <35.761646, 35.591869, 29.980774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749256, 35.356007, 30.023371>,  <35.728603, 34.962898, 30.094366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749256, 35.356007, 30.023371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549543, -0.176357, -0.816640,
		-0.833869, -0.055375, -0.549179,
		0.051631, 0.982767, -0.177489,
		35.764744, 35.650837, 29.970123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605061, 35.122398, 29.368753>,  <35.728603, 34.962898, 30.094366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605061, 35.122398, 29.368753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779720, 35.464443, 29.480556>,  <35.884518, 35.669670, 29.547638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779720, 35.464443, 29.480556>,  <35.605061, 35.122398, 29.368753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779720, 35.464443, 29.480556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453345, 0.059208, -0.889367,
		-0.777055, 0.515055, -0.361806,
		0.436650, 0.855110, 0.279505,
		35.910717, 35.720978, 29.564407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506321, 35.525211, 28.762806>,  <35.605061, 35.122398, 29.368753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506321, 35.525211, 28.762806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787281, 35.741989, 28.947380>,  <35.955856, 35.872055, 29.058125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787281, 35.741989, 28.947380>,  <35.506321, 35.525211, 28.762806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787281, 35.741989, 28.947380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540110, 0.016410, -0.841435,
		-0.463583, 0.840254, -0.281183,
		0.702405, 0.541944, 0.461437,
		35.998001, 35.904572, 29.085812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830315, 36.036209, 28.148130>,  <35.506321, 35.525211, 28.762806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830315, 36.036209, 28.148130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089241, 35.982090, 28.448175>,  <36.244598, 35.949619, 28.628202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089241, 35.982090, 28.448175>,  <35.830315, 36.036209, 28.148130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089241, 35.982090, 28.448175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760099, 0.041239, -0.648498,
		0.056809, 0.989946, 0.129537,
		0.647320, -0.135302, 0.750114,
		36.283436, 35.941498, 28.673210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312737, 36.519554, 28.019585>,  <35.830315, 36.036209, 28.148130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312737, 36.519554, 28.019585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510067, 36.282185, 28.273979>,  <36.628464, 36.139763, 28.426617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510067, 36.282185, 28.273979>,  <36.312737, 36.519554, 28.019585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510067, 36.282185, 28.273979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832905, 0.111455, -0.542076,
		0.250797, 0.797136, 0.549249,
		0.493325, -0.593424, 0.635986,
		36.658066, 36.104156, 28.464775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954628, 36.906738, 28.216417>,  <36.312737, 36.519554, 28.019585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954628, 36.906738, 28.216417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027077, 36.524254, 28.308380>,  <37.070545, 36.294762, 28.363558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027077, 36.524254, 28.308380>,  <36.954628, 36.906738, 28.216417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027077, 36.524254, 28.308380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847117, 0.032938, -0.530385,
		0.499586, 0.290824, 0.815987,
		0.181126, -0.956209, 0.229906,
		37.081413, 36.237392, 28.377352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727646, 36.835022, 28.359272>,  <36.954628, 36.906738, 28.216417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727646, 36.835022, 28.359272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617687, 36.459538, 28.276091>,  <37.551712, 36.234245, 28.226183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617687, 36.459538, 28.276091>,  <37.727646, 36.835022, 28.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617687, 36.459538, 28.276091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822155, -0.117367, -0.557034,
		0.498489, -0.324097, 0.804033,
		-0.274900, -0.938715, -0.207952,
		37.535217, 36.177921, 28.213705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270348, 36.692726, 28.106606>,  <37.727646, 36.835022, 28.359272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270348, 36.692726, 28.106606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039452, 36.381039, 28.008947>,  <37.900913, 36.194027, 27.950352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.039452, 36.381039, 28.008947>,  <38.270348, 36.692726, 28.106606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039452, 36.381039, 28.008947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735559, -0.366349, -0.569861,
		0.354605, -0.508530, 0.784635,
		-0.577241, -0.779221, -0.244145,
		37.866280, 36.147274, 27.935703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709072, 36.115479, 28.034723>,  <38.270348, 36.692726, 28.106606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709072, 36.115479, 28.034723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373257, 36.047920, 27.828171>,  <38.171768, 36.007385, 27.704239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373257, 36.047920, 27.828171>,  <38.709072, 36.115479, 28.034723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373257, 36.047920, 27.828171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541769, -0.188935, -0.819017,
		0.040769, -0.967355, 0.250123,
		-0.839538, -0.168899, -0.516381,
		38.121395, 35.997250, 27.673256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766537, 35.552593, 27.645405>,  <38.709072, 36.115479, 28.034723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766537, 35.552593, 27.645405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462326, 35.711086, 27.439648>,  <38.279800, 35.806183, 27.316193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462326, 35.711086, 27.439648>,  <38.766537, 35.552593, 27.645405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462326, 35.711086, 27.439648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586002, 0.077656, -0.806580,
		-0.279648, -0.914860, -0.291252,
		-0.760525, 0.396233, -0.514393,
		38.234169, 35.829956, 27.285330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768616, 35.195354, 26.980581>,  <38.766537, 35.552593, 27.645405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768616, 35.195354, 26.980581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563744, 35.530109, 26.903332>,  <38.440819, 35.730961, 26.856981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.563744, 35.530109, 26.903332>,  <38.768616, 35.195354, 26.980581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563744, 35.530109, 26.903332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546300, 0.143929, -0.825131,
		-0.662743, -0.528119, -0.530907,
		-0.512181, 0.836884, -0.193123,
		38.410088, 35.781174, 26.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665855, 35.188496, 26.287411>,  <38.768616, 35.195354, 26.980581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665855, 35.188496, 26.287411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609657, 35.575176, 26.372974>,  <38.575939, 35.807182, 26.424313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609657, 35.575176, 26.372974>,  <38.665855, 35.188496, 26.287411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609657, 35.575176, 26.372974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533393, 0.255922, -0.806223,
		-0.834118, 0.000828, -0.551586,
		-0.140495, 0.966697, 0.213911,
		38.567509, 35.865185, 26.437147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498337, 35.602325, 25.685724>,  <38.665855, 35.188496, 26.287411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498337, 35.602325, 25.685724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611279, 35.896687, 25.931883>,  <38.679047, 36.073303, 26.079578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611279, 35.896687, 25.931883>,  <38.498337, 35.602325, 25.685724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611279, 35.896687, 25.931883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698702, 0.281807, -0.657572,
		-0.657335, 0.615651, -0.434608,
		0.282359, 0.735906, 0.615398,
		38.695988, 36.117458, 26.116503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551231, 36.146172, 25.247154>,  <38.498337, 35.602325, 25.685724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551231, 36.146172, 25.247154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725937, 36.302418, 25.571293>,  <38.830761, 36.396164, 25.765776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725937, 36.302418, 25.571293>,  <38.551231, 36.146172, 25.247154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725937, 36.302418, 25.571293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666314, 0.464722, -0.583145,
		-0.604371, 0.794640, -0.057300,
		0.436762, 0.390616, 0.810345,
		38.856964, 36.419601, 25.814396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593281, 36.821590, 25.103613>,  <38.551231, 36.146172, 25.247154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593281, 36.821590, 25.103613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871731, 36.760658, 25.384245>,  <39.038799, 36.724098, 25.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871731, 36.760658, 25.384245>,  <38.593281, 36.821590, 25.103613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871731, 36.760658, 25.384245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665098, 0.504755, -0.550333,
		-0.270295, 0.849717, 0.452683,
		0.696121, -0.152327, 0.701578,
		39.080566, 36.714962, 25.594719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888832, 37.382202, 25.195724>,  <38.593281, 36.821590, 25.103613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888832, 37.382202, 25.195724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153374, 37.115070, 25.332321>,  <39.312099, 36.954792, 25.414278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153374, 37.115070, 25.332321>,  <38.888832, 37.382202, 25.195724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153374, 37.115070, 25.332321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677122, 0.335710, -0.654832,
		0.322675, 0.664306, 0.674225,
		0.661353, -0.667830, 0.341490,
		39.351780, 36.914722, 25.434769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434460, 37.794666, 25.247606>,  <38.888832, 37.382202, 25.195724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434460, 37.794666, 25.247606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576427, 37.421215, 25.267084>,  <39.661610, 37.197144, 25.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576427, 37.421215, 25.267084>,  <39.434460, 37.794666, 25.247606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576427, 37.421215, 25.267084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518498, 0.153235, -0.841237,
		0.777939, 0.323823, 0.538470,
		0.354924, -0.933626, 0.048694,
		39.682903, 37.141129, 25.281693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240898, 37.882137, 25.163143>,  <39.434460, 37.794666, 25.247606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240898, 37.882137, 25.163143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113266, 37.513847, 25.073301>,  <40.036686, 37.292873, 25.019396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113266, 37.513847, 25.073301>,  <40.240898, 37.882137, 25.163143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113266, 37.513847, 25.073301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533092, 0.021582, -0.845782,
		0.783584, -0.389605, 0.483947,
		-0.319077, -0.920729, -0.224607,
		40.017544, 37.237629, 25.005919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829029, 37.593250, 24.915691>,  <40.240898, 37.882137, 25.163143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829029, 37.593250, 24.915691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535938, 37.380451, 24.745945>,  <40.360085, 37.252769, 24.644096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.535938, 37.380451, 24.745945>,  <40.829029, 37.593250, 24.915691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535938, 37.380451, 24.745945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578384, -0.158258, -0.800266,
		0.358582, -0.831824, 0.423660,
		-0.732728, -0.531999, -0.424366,
		40.316120, 37.220852, 24.618635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166920, 37.149597, 24.515543>,  <40.829029, 37.593250, 24.915691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166920, 37.149597, 24.515543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805355, 37.125137, 24.346210>,  <40.588417, 37.110462, 24.244610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805355, 37.125137, 24.346210>,  <41.166920, 37.149597, 24.515543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805355, 37.125137, 24.346210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427719, -0.135475, -0.893702,
		-0.002699, -0.988892, 0.148613,
		-0.903908, -0.061153, -0.423333,
		40.534184, 37.106792, 24.219210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248947, 36.708836, 23.832964>,  <41.166920, 37.149597, 24.515543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248947, 36.708836, 23.832964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899548, 36.897358, 23.784189>,  <40.689907, 37.010471, 23.754925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899548, 36.897358, 23.784189>,  <41.248947, 36.708836, 23.832964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899548, 36.897358, 23.784189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178263, 0.076583, -0.980998,
		-0.453015, -0.878637, -0.150912,
		-0.873498, 0.471309, -0.121936,
		40.637497, 37.038750, 23.747608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942490, 36.361633, 23.346327>,  <41.248947, 36.708836, 23.832964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942490, 36.361633, 23.346327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762016, 36.718517, 23.338413>,  <40.653732, 36.932648, 23.333666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762016, 36.718517, 23.338413>,  <40.942490, 36.361633, 23.346327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762016, 36.718517, 23.338413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102041, 0.029555, -0.994341,
		-0.886577, -0.450652, -0.104377,
		-0.451186, 0.892210, -0.019783,
		40.626659, 36.986179, 23.332478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420681, 36.296791, 22.862263>,  <40.942490, 36.361633, 23.346327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420681, 36.296791, 22.862263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482758, 36.691429, 22.882463>,  <40.520004, 36.928211, 22.894583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482758, 36.691429, 22.882463>,  <40.420681, 36.296791, 22.862263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482758, 36.691429, 22.882463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369161, -0.010499, -0.929306,
		-0.916317, 0.162859, -0.365841,
		0.155187, 0.986594, 0.050501,
		40.529312, 36.987408, 22.897614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158257, 36.602715, 22.292145>,  <40.420681, 36.296791, 22.862263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158257, 36.602715, 22.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416256, 36.880276, 22.420193>,  <40.571056, 37.046810, 22.497021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416256, 36.880276, 22.420193>,  <40.158257, 36.602715, 22.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416256, 36.880276, 22.420193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423161, 0.024499, -0.905723,
		-0.636324, 0.719654, -0.277830,
		0.645001, 0.693900, 0.320119,
		40.609756, 37.088448, 22.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190296, 37.082436, 21.790478>,  <40.158257, 36.602715, 22.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190296, 37.082436, 21.790478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509117, 37.182201, 22.010475>,  <40.700409, 37.242062, 22.142473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509117, 37.182201, 22.010475>,  <40.190296, 37.082436, 21.790478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509117, 37.182201, 22.010475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563796, 0.019043, -0.825695,
		-0.216417, 0.968209, -0.125442,
		0.797056, 0.249418, 0.549993,
		40.748234, 37.257027, 22.175472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427013, 37.804340, 21.551186>,  <40.190296, 37.082436, 21.790478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427013, 37.804340, 21.551186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748188, 37.629456, 21.713243>,  <40.940891, 37.524525, 21.810478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748188, 37.629456, 21.713243>,  <40.427013, 37.804340, 21.551186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748188, 37.629456, 21.713243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518186, 0.176085, -0.836945,
		0.294584, 0.881951, 0.367943,
		0.802934, -0.437214, 0.405143,
		40.989067, 37.498291, 21.834787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024727, 38.280701, 21.424059>,  <40.427013, 37.804340, 21.551186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024727, 38.280701, 21.424059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165539, 37.917603, 21.515347>,  <41.250027, 37.699745, 21.570120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165539, 37.917603, 21.515347>,  <41.024727, 38.280701, 21.424059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165539, 37.917603, 21.515347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731766, 0.114880, -0.671804,
		0.583606, 0.403496, 0.704695,
		0.352026, -0.907741, 0.228220,
		41.271145, 37.645279, 21.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712032, 38.366592, 21.626736>,  <41.024727, 38.280701, 21.424059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712032, 38.366592, 21.626736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665016, 37.987358, 21.508532>,  <41.636806, 37.759819, 21.437609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665016, 37.987358, 21.508532>,  <41.712032, 38.366592, 21.626736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665016, 37.987358, 21.508532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793885, 0.089065, -0.601510,
		0.596600, -0.305301, 0.742199,
		-0.117537, -0.948082, -0.295510,
		41.629757, 37.702934, 21.419878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473568, 38.046616, 21.550673>,  <41.712032, 38.366592, 21.626736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473568, 38.046616, 21.550673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233807, 37.798420, 21.348402>,  <42.089951, 37.649502, 21.227039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233807, 37.798420, 21.348402>,  <42.473568, 38.046616, 21.550673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233807, 37.798420, 21.348402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739911, -0.188490, -0.645758,
		0.305374, -0.761222, 0.572090,
		-0.599399, -0.620493, -0.505677,
		42.053986, 37.612270, 21.196699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829193, 37.546654, 21.559881>,  <42.473568, 38.046616, 21.550673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829193, 37.546654, 21.559881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587830, 37.513790, 21.242605>,  <42.443012, 37.494072, 21.052240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587830, 37.513790, 21.242605>,  <42.829193, 37.546654, 21.559881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587830, 37.513790, 21.242605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795771, -0.126256, -0.592291,
		-0.051483, -0.988589, 0.141564,
		-0.603406, -0.082159, -0.793191,
		42.406807, 37.489143, 21.004648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182144, 36.994499, 21.062263>,  <42.829193, 37.546654, 21.559881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182144, 36.994499, 21.062263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898571, 37.181335, 20.850893>,  <42.728428, 37.293438, 20.724072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898571, 37.181335, 20.850893>,  <43.182144, 36.994499, 21.062263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898571, 37.181335, 20.850893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592955, -0.010919, -0.805161,
		-0.381855, -0.884141, -0.269224,
		-0.708937, 0.467092, -0.528426,
		42.685890, 37.321465, 20.692366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877857, 36.590038, 20.344641>,  <43.182144, 36.994499, 21.062263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877857, 36.590038, 20.344641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872967, 36.989777, 20.331059>,  <42.870033, 37.229622, 20.322908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872967, 36.989777, 20.331059>,  <42.877857, 36.590038, 20.344641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872967, 36.989777, 20.331059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584348, -0.020415, -0.811247,
		-0.811411, -0.029763, -0.583717,
		-0.012229, 0.999349, -0.033957,
		42.869297, 37.289581, 20.320871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951660, 36.739864, 19.663637>,  <42.877857, 36.590038, 20.344641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951660, 36.739864, 19.663637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991928, 37.119862, 19.781876>,  <43.016087, 37.347858, 19.852819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.991928, 37.119862, 19.781876>,  <42.951660, 36.739864, 19.663637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991928, 37.119862, 19.781876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365355, 0.241051, -0.899116,
		-0.925409, 0.198508, -0.322820,
		0.100666, 0.949994, 0.295597,
		43.022129, 37.404861, 19.870554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654419, 37.187195, 19.142515>,  <42.951660, 36.739864, 19.663637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654419, 37.187195, 19.142515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925785, 37.395084, 19.350224>,  <43.088604, 37.519817, 19.474848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925785, 37.395084, 19.350224>,  <42.654419, 37.187195, 19.142515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925785, 37.395084, 19.350224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489315, 0.207582, -0.847043,
		-0.548020, 0.828731, -0.113483,
		0.678413, 0.519726, 0.519269,
		43.129311, 37.551003, 19.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040321, 37.423222, 18.452995>,  <42.654419, 37.187195, 19.142515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040321, 37.423222, 18.452995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222126, 37.578224, 18.773809>,  <43.331207, 37.671227, 18.966297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222126, 37.578224, 18.773809>,  <43.040321, 37.423222, 18.452995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222126, 37.578224, 18.773809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724655, 0.362735, -0.585917,
		-0.517974, 0.847502, -0.115944,
		0.454509, 0.387509, 0.802034,
		43.358479, 37.694477, 19.014420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099705, 38.196693, 18.335035>,  <43.040321, 37.423222, 18.452995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099705, 38.196693, 18.335035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369762, 38.000389, 18.555336>,  <43.531799, 37.882607, 18.687517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369762, 38.000389, 18.555336>,  <43.099705, 38.196693, 18.335035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369762, 38.000389, 18.555336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707586, 0.219746, -0.671590,
		0.208566, 0.843126, 0.495618,
		0.675146, -0.490764, 0.550753,
		43.572308, 37.853161, 18.720562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807026, 38.634373, 18.621477>,  <43.099705, 38.196693, 18.335035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807026, 38.634373, 18.621477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832020, 38.243774, 18.538971>,  <43.847015, 38.009415, 18.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832020, 38.243774, 18.538971>,  <43.807026, 38.634373, 18.621477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832020, 38.243774, 18.538971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678650, 0.193105, -0.708622,
		0.731799, -0.095704, 0.674767,
		0.062483, -0.976499, -0.206264,
		43.850765, 37.950825, 18.477091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538319, 38.409161, 18.699305>,  <43.807026, 38.634373, 18.621477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538319, 38.409161, 18.699305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347496, 38.155586, 18.455814>,  <44.233002, 38.003441, 18.309721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347496, 38.155586, 18.455814>,  <44.538319, 38.409161, 18.699305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347496, 38.155586, 18.455814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680583, 0.171769, -0.712251,
		0.556082, -0.754070, 0.349503,
		-0.477053, -0.633935, -0.608725,
		44.204380, 37.965405, 18.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149616, 38.047764, 18.380732>,  <44.538319, 38.409161, 18.699305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149616, 38.047764, 18.380732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805546, 38.007519, 18.180742>,  <44.599102, 37.983372, 18.060749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805546, 38.007519, 18.180742>,  <45.149616, 38.047764, 18.380732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805546, 38.007519, 18.180742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474873, 0.199519, -0.857139,
		0.185992, -0.974715, -0.123845,
		-0.860176, -0.100610, -0.499975,
		44.547493, 37.977337, 18.030750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681831, 37.594288, 18.848677>,  <45.149616, 38.047764, 18.380732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681831, 37.594288, 18.848677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932098, 37.444782, 19.122564>,  <46.082260, 37.355080, 19.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.932098, 37.444782, 19.122564>,  <45.681831, 37.594288, 18.848677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.932098, 37.444782, 19.122564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178025, 0.786169, 0.591816,
		-0.759503, -0.492178, 0.425342,
		0.625669, -0.373765, 0.684717,
		46.119801, 37.332653, 19.327980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433800, 37.382442, 19.461246>,  <45.681831, 37.594288, 18.848677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433800, 37.382442, 19.461246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802509, 37.527039, 19.517344>,  <46.023735, 37.613796, 19.551003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802509, 37.527039, 19.517344>,  <45.433800, 37.382442, 19.461246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802509, 37.527039, 19.517344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363770, 0.681049, 0.635487,
		0.134209, -0.636789, 0.759268,
		0.921769, 0.361487, 0.140242,
		46.079041, 37.635483, 19.559416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544350, 37.656292, 20.081360>,  <45.433800, 37.382442, 19.461246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544350, 37.656292, 20.081360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826336, 37.867325, 19.891760>,  <45.995529, 37.993946, 19.778000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.826336, 37.867325, 19.891760>,  <45.544350, 37.656292, 20.081360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826336, 37.867325, 19.891760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119882, 0.747345, 0.653532,
		0.699029, -0.403899, 0.590105,
		0.704972, 0.527580, -0.473996,
		46.037827, 38.025600, 19.749561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021599, 37.888374, 20.651426>,  <45.544350, 37.656292, 20.081360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021599, 37.888374, 20.651426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981182, 38.142399, 20.345097>,  <45.956932, 38.294815, 20.161299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.981182, 38.142399, 20.345097>,  <46.021599, 37.888374, 20.651426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.981182, 38.142399, 20.345097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441872, 0.661030, 0.606456,
		0.891370, 0.399673, 0.213826,
		-0.101039, 0.635060, -0.765827,
		45.950871, 38.332916, 20.115349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492584, 38.519360, 20.611176>,  <46.021599, 37.888374, 20.651426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492584, 38.519360, 20.611176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136669, 38.599163, 20.446995>,  <45.923119, 38.647045, 20.348486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.136669, 38.599163, 20.446995>,  <46.492584, 38.519360, 20.611176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.136669, 38.599163, 20.446995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156202, 0.711924, 0.684665,
		0.428810, 0.673320, -0.602298,
		-0.889788, 0.199511, -0.410453,
		45.869732, 38.659016, 20.323858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396229, 39.213261, 20.640154>,  <46.492584, 38.519360, 20.611176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396229, 39.213261, 20.640154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022293, 39.077011, 20.600052>,  <45.797932, 38.995262, 20.575991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022293, 39.077011, 20.600052>,  <46.396229, 39.213261, 20.640154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022293, 39.077011, 20.600052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314002, 0.661257, 0.681280,
		-0.165766, 0.668367, -0.725126,
		-0.934839, -0.340624, -0.100255,
		45.741840, 38.974823, 20.569975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936291, 39.818756, 20.784306>,  <46.396229, 39.213261, 20.640154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936291, 39.818756, 20.784306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715809, 39.487217, 20.822641>,  <45.583519, 39.288292, 20.845642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715809, 39.487217, 20.822641>,  <45.936291, 39.818756, 20.784306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715809, 39.487217, 20.822641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508919, 0.425004, 0.748581,
		-0.661191, 0.363848, -0.656080,
		-0.551207, -0.828847, 0.095839,
		45.550446, 39.238564, 20.851393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284008, 40.124638, 20.846483>,  <45.936291, 39.818756, 20.784306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284008, 40.124638, 20.846483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241123, 39.747562, 20.972881>,  <45.215393, 39.521317, 21.048719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.241123, 39.747562, 20.972881>,  <45.284008, 40.124638, 20.846483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241123, 39.747562, 20.972881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731136, 0.290132, 0.617466,
		-0.673755, -0.164835, -0.720336,
		-0.107212, -0.942684, 0.315994,
		45.208958, 39.464756, 21.067680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657516, 39.991627, 20.817696>,  <45.284008, 40.124638, 20.846483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657516, 39.991627, 20.817696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778900, 39.719482, 21.084536>,  <44.851730, 39.556194, 21.244638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778900, 39.719482, 21.084536>,  <44.657516, 39.991627, 20.817696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778900, 39.719482, 21.084536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729928, 0.284033, 0.621716,
		-0.612471, -0.675597, -0.410425,
		0.303456, -0.680364, 0.667099,
		44.869938, 39.515373, 21.284666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035961, 39.934860, 21.182072>,  <44.657516, 39.991627, 20.817696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035961, 39.934860, 21.182072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314640, 39.755375, 21.405952>,  <44.481850, 39.647686, 21.540281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.314640, 39.755375, 21.405952>,  <44.035961, 39.934860, 21.182072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314640, 39.755375, 21.405952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554690, 0.157789, 0.816959,
		-0.454892, -0.879638, -0.138963,
		0.696701, -0.448710, 0.559703,
		44.523651, 39.620762, 21.573864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567455, 39.563423, 21.649088>,  <44.035961, 39.934860, 21.182072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567455, 39.563423, 21.649088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936691, 39.588409, 21.800877>,  <44.158234, 39.603401, 21.891951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936691, 39.588409, 21.800877>,  <43.567455, 39.563423, 21.649088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936691, 39.588409, 21.800877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384442, 0.123418, 0.914862,
		0.010314, -0.990387, 0.137941,
		0.923091, 0.062466, 0.379474,
		44.213619, 39.607151, 21.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633430, 39.002048, 22.034182>,  <43.567455, 39.563423, 21.649088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633430, 39.002048, 22.034182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875954, 39.291466, 22.166168>,  <44.021469, 39.465115, 22.245361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875954, 39.291466, 22.166168>,  <43.633430, 39.002048, 22.034182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875954, 39.291466, 22.166168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402117, -0.079029, 0.912171,
		0.686070, -0.685742, 0.243032,
		0.606308, 0.723541, 0.329968,
		44.057846, 39.508530, 22.265158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835911, 38.743114, 22.615179>,  <43.633430, 39.002048, 22.034182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835911, 38.743114, 22.615179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900150, 39.137459, 22.634296>,  <43.938694, 39.374065, 22.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.900150, 39.137459, 22.634296>,  <43.835911, 38.743114, 22.615179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.900150, 39.137459, 22.634296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283521, -0.000304, 0.958966,
		0.945423, -0.167556, 0.279464,
		0.160595, 0.985863, 0.047793,
		43.948330, 39.433216, 22.648634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101383, 38.837490, 23.310707>,  <43.835911, 38.743114, 22.615179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101383, 38.837490, 23.310707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990597, 39.200230, 23.183641>,  <43.924126, 39.417873, 23.107403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.990597, 39.200230, 23.183641>,  <44.101383, 38.837490, 23.310707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.990597, 39.200230, 23.183641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383044, 0.198990, 0.902042,
		0.881230, 0.371515, 0.292250,
		-0.276967, 0.906852, -0.317662,
		43.907505, 39.472286, 23.088343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274715, 39.267208, 23.805412>,  <44.101383, 38.837490, 23.310707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274715, 39.267208, 23.805412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021511, 39.491188, 23.591589>,  <43.869587, 39.625576, 23.463295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021511, 39.491188, 23.591589>,  <44.274715, 39.267208, 23.805412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021511, 39.491188, 23.591589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371918, 0.385634, 0.844372,
		0.678949, 0.733309, -0.035855,
		-0.633012, 0.559950, -0.534557,
		43.831608, 39.659172, 23.431221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146603, 40.010426, 24.215218>,  <44.274715, 39.267208, 23.805412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146603, 40.010426, 24.215218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834644, 39.982555, 23.966412>,  <43.647469, 39.965836, 23.817127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.834644, 39.982555, 23.966412>,  <44.146603, 40.010426, 24.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.834644, 39.982555, 23.966412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619147, 0.231533, 0.750366,
		0.091738, 0.970329, -0.223710,
		-0.779898, -0.069672, -0.622016,
		43.600674, 39.961655, 23.779806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757263, 40.615215, 24.330139>,  <44.146603, 40.010426, 24.215218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757263, 40.615215, 24.330139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512936, 40.334126, 24.184217>,  <43.366341, 40.165470, 24.096664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.512936, 40.334126, 24.184217>,  <43.757263, 40.615215, 24.330139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512936, 40.334126, 24.184217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656434, 0.191832, 0.729585,
		-0.442716, 0.685113, -0.578466,
		-0.610816, -0.702724, -0.364805,
		43.329689, 40.123310, 24.074776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092537, 40.915157, 24.376923>,  <43.757263, 40.615215, 24.330139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092537, 40.915157, 24.376923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055405, 40.519066, 24.335308>,  <43.033123, 40.281410, 24.310339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055405, 40.519066, 24.335308>,  <43.092537, 40.915157, 24.376923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055405, 40.519066, 24.335308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696422, -0.010099, 0.717561,
		-0.711602, 0.139069, -0.688682,
		-0.092835, -0.990231, -0.104037,
		43.027554, 40.221996, 24.304096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386730, 40.725903, 24.475885>,  <43.092537, 40.915157, 24.376923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386730, 40.725903, 24.475885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597698, 40.393085, 24.544624>,  <42.724281, 40.193394, 24.585869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.597698, 40.393085, 24.544624>,  <42.386730, 40.725903, 24.475885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597698, 40.393085, 24.544624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602944, -0.224060, 0.765673,
		-0.598568, -0.507449, -0.619849,
		0.527423, -0.832042, 0.171848,
		42.755924, 40.143475, 24.596178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859795, 40.363087, 24.651001>,  <42.386730, 40.725903, 24.475885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859795, 40.363087, 24.651001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180344, 40.151047, 24.761843>,  <42.372673, 40.023823, 24.828348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180344, 40.151047, 24.761843>,  <41.859795, 40.363087, 24.651001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180344, 40.151047, 24.761843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522050, -0.393695, 0.756616,
		-0.291989, -0.750997, -0.592238,
		0.801378, -0.530102, 0.277104,
		42.420757, 39.992016, 24.844975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712074, 39.622002, 24.727003>,  <41.859795, 40.363087, 24.651001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712074, 39.622002, 24.727003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039951, 39.701366, 24.941940>,  <42.236679, 39.748985, 25.070902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039951, 39.701366, 24.941940>,  <41.712074, 39.622002, 24.727003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039951, 39.701366, 24.941940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497631, -0.217900, 0.839573,
		0.283668, -0.955590, -0.079875,
		0.819692, 0.198411, 0.537343,
		42.285858, 39.760891, 25.103144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770657, 39.086170, 25.083231>,  <41.712074, 39.622002, 24.727003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770657, 39.086170, 25.083231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030972, 39.307808, 25.290867>,  <42.187160, 39.440792, 25.415449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030972, 39.307808, 25.290867>,  <41.770657, 39.086170, 25.083231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030972, 39.307808, 25.290867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422080, -0.304282, 0.853968,
		0.631131, -0.774848, 0.035850,
		0.650786, 0.554097, 0.519090,
		42.226208, 39.474037, 25.446594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800571, 38.741310, 25.706903>,  <41.770657, 39.086170, 25.083231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800571, 38.741310, 25.706903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904064, 39.117565, 25.794769>,  <41.966160, 39.343319, 25.847488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904064, 39.117565, 25.794769>,  <41.800571, 38.741310, 25.706903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904064, 39.117565, 25.794769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474417, -0.074342, 0.877156,
		0.841418, -0.331163, 0.427020,
		0.258735, 0.940640, 0.219662,
		41.981686, 39.399757, 25.860668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129539, 38.758904, 26.423153>,  <41.800571, 38.741310, 25.706903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129539, 38.758904, 26.423153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986835, 39.122147, 26.335461>,  <41.901215, 39.340092, 26.282845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986835, 39.122147, 26.335461>,  <42.129539, 38.758904, 26.423153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986835, 39.122147, 26.335461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564801, -0.022740, 0.824914,
		0.744127, 0.418115, 0.521013,
		-0.356757, 0.908109, -0.219230,
		41.879807, 39.394581, 26.269691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988247, 39.027836, 27.088047>,  <42.129539, 38.758904, 26.423153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988247, 39.027836, 27.088047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810455, 39.285496, 26.839046>,  <41.703781, 39.440090, 26.689646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810455, 39.285496, 26.839046>,  <41.988247, 39.027836, 27.088047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810455, 39.285496, 26.839046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734293, 0.136036, 0.665062,
		0.513084, 0.752704, 0.412531,
		-0.444476, 0.644151, -0.622504,
		41.677113, 39.478741, 26.652296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790886, 39.534733, 27.497437>,  <41.988247, 39.027836, 27.088047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790886, 39.534733, 27.497437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536434, 39.548504, 27.189112>,  <41.383762, 39.556767, 27.004116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536434, 39.548504, 27.189112>,  <41.790886, 39.534733, 27.497437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536434, 39.548504, 27.189112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771231, -0.058519, 0.633860,
		-0.023287, 0.997692, 0.063774,
		-0.636130, 0.034424, -0.770814,
		41.345596, 39.558830, 26.957867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265995, 39.963802, 27.742260>,  <41.790886, 39.534733, 27.497437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265995, 39.963802, 27.742260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078201, 39.828705, 27.415945>,  <40.965527, 39.747646, 27.220156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078201, 39.828705, 27.415945>,  <41.265995, 39.963802, 27.742260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078201, 39.828705, 27.415945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866332, -0.002152, 0.499464,
		-0.170448, 0.941235, -0.291591,
		-0.469485, -0.337747, -0.815789,
		40.937355, 39.727383, 27.171209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566597, 40.327896, 27.647339>,  <41.265995, 39.963802, 27.742260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566597, 40.327896, 27.647339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547470, 39.980080, 27.450720>,  <40.535992, 39.771389, 27.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547470, 39.980080, 27.450720>,  <40.566597, 40.327896, 27.647339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547470, 39.980080, 27.450720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856023, -0.217912, 0.468763,
		-0.514720, 0.443193, -0.733923,
		-0.047822, -0.869537, -0.491547,
		40.533123, 39.719219, 27.303255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905964, 40.208607, 27.591900>,  <40.566597, 40.327896, 27.647339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905964, 40.208607, 27.591900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033398, 39.839508, 27.505136>,  <40.109859, 39.618050, 27.453077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033398, 39.839508, 27.505136>,  <39.905964, 40.208607, 27.591900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033398, 39.839508, 27.505136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664005, -0.380554, 0.643642,
		-0.676463, -0.061024, -0.733944,
		0.318583, -0.922743, -0.216910,
		40.128971, 39.562687, 27.440063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321781, 39.915199, 27.550327>,  <39.905964, 40.208607, 27.591900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321781, 39.915199, 27.550327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581116, 39.622395, 27.634066>,  <39.736717, 39.446712, 27.684309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581116, 39.622395, 27.634066>,  <39.321781, 39.915199, 27.550327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581116, 39.622395, 27.634066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688545, -0.446391, 0.571524,
		-0.324912, -0.514681, -0.793433,
		0.648334, -0.732010, 0.209344,
		39.775616, 39.402790, 27.696869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952717, 39.219673, 27.426050>,  <39.321781, 39.915199, 27.550327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952717, 39.219673, 27.426050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272495, 39.095955, 27.632046>,  <39.464363, 39.021725, 27.755644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272495, 39.095955, 27.632046>,  <38.952717, 39.219673, 27.426050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272495, 39.095955, 27.632046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575153, -0.641587, 0.507509,
		0.173438, -0.701926, -0.690811,
		0.799449, -0.309300, 0.514990,
		39.512329, 39.003166, 27.786543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876179, 38.476170, 27.459433>,  <38.952717, 39.219673, 27.426050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876179, 38.476170, 27.459433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118958, 38.581207, 27.759476>,  <39.264626, 38.644230, 27.939501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118958, 38.581207, 27.759476>,  <38.876179, 38.476170, 27.459433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118958, 38.581207, 27.759476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635895, -0.405683, 0.656551,
		0.476709, -0.875482, -0.079249,
		0.606948, 0.262590, 0.750107,
		39.301041, 38.659985, 27.984509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976803, 37.861370, 27.957069>,  <38.876179, 38.476170, 27.459433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976803, 37.861370, 27.957069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059513, 38.199478, 28.154154>,  <39.109138, 38.402344, 28.272404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059513, 38.199478, 28.154154>,  <38.976803, 37.861370, 27.957069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059513, 38.199478, 28.154154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583889, -0.297470, 0.755371,
		0.785058, -0.443882, 0.432033,
		0.206779, 0.845269, 0.492709,
		39.121548, 38.453060, 28.301966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057049, 37.624218, 28.584272>,  <38.976803, 37.861370, 27.957069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057049, 37.624218, 28.584272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005550, 38.018742, 28.625498>,  <38.974651, 38.255455, 28.650232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005550, 38.018742, 28.625498>,  <39.057049, 37.624218, 28.584272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005550, 38.018742, 28.625498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522814, -0.155818, 0.838084,
		0.842668, 0.054017, 0.535717,
		-0.128745, 0.986308, 0.103062,
		38.966927, 38.314632, 28.656416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230175, 37.744377, 29.257191>,  <39.057049, 37.624218, 28.584272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230175, 37.744377, 29.257191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006493, 38.056435, 29.145004>,  <38.872284, 38.243671, 29.077692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006493, 38.056435, 29.145004>,  <39.230175, 37.744377, 29.257191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006493, 38.056435, 29.145004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628464, -0.178289, 0.757130,
		0.540669, 0.599652, 0.589995,
		-0.559205, 0.780147, -0.280465,
		38.838730, 38.290478, 29.060865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129524, 38.176769, 29.854315>,  <39.230175, 37.744377, 29.257191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129524, 38.176769, 29.854315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826984, 38.256004, 29.604933>,  <38.645462, 38.303547, 29.455303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826984, 38.256004, 29.604933>,  <39.129524, 38.176769, 29.854315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826984, 38.256004, 29.604933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630282, 0.034515, 0.775599,
		0.175158, 0.979576, 0.098748,
		-0.756349, 0.198092, -0.623455,
		38.600079, 38.315434, 29.417896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882553, 38.853642, 30.177662>,  <39.129524, 38.176769, 29.854315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882553, 38.853642, 30.177662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601135, 38.675400, 29.956226>,  <38.432285, 38.568455, 29.823364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601135, 38.675400, 29.956226>,  <38.882553, 38.853642, 30.177662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601135, 38.675400, 29.956226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640589, 0.060382, 0.765506,
		-0.307688, 0.893190, -0.327933,
		-0.703544, -0.445607, -0.553589,
		38.390072, 38.541718, 29.790150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236317, 39.244389, 30.220879>,  <38.882553, 38.853642, 30.177662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236317, 39.244389, 30.220879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092171, 38.899635, 30.078165>,  <38.005684, 38.692783, 29.992537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092171, 38.899635, 30.078165>,  <38.236317, 39.244389, 30.220879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092171, 38.899635, 30.078165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819889, 0.110241, 0.561808,
		-0.444881, 0.494979, -0.746376,
		-0.360365, -0.861883, -0.356784,
		37.984062, 38.641071, 29.971130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483761, 39.264557, 30.181110>,  <38.236317, 39.244389, 30.220879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483761, 39.264557, 30.181110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530521, 38.867668, 30.164005>,  <37.558578, 38.629536, 30.153742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530521, 38.867668, 30.164005>,  <37.483761, 39.264557, 30.181110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530521, 38.867668, 30.164005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679542, -0.111313, 0.725143,
		-0.724263, -0.055712, -0.687270,
		0.116901, -0.992223, -0.042761,
		37.565590, 38.570000, 30.151176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773590, 38.971363, 30.175283>,  <37.483761, 39.264557, 30.181110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773590, 38.971363, 30.175283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045437, 38.704971, 30.298309>,  <37.208546, 38.545135, 30.372126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.045437, 38.704971, 30.298309>,  <36.773590, 38.971363, 30.175283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045437, 38.704971, 30.298309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615403, -0.289418, 0.733155,
		-0.399250, -0.687540, -0.606537,
		0.679616, -0.665977, 0.307564,
		37.249321, 38.505180, 30.390579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482891, 38.332073, 30.157804>,  <36.773590, 38.971363, 30.175283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482891, 38.332073, 30.157804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769707, 38.294712, 30.434103>,  <36.941795, 38.272297, 30.599882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769707, 38.294712, 30.434103>,  <36.482891, 38.332073, 30.157804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769707, 38.294712, 30.434103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696801, -0.121497, 0.706900,
		0.017900, -0.988188, -0.152199,
		0.717041, -0.093399, 0.690745,
		36.984818, 38.266693, 30.641327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277092, 37.820339, 30.556227>,  <36.482891, 38.332073, 30.157804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277092, 37.820339, 30.556227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570522, 37.977657, 30.777925>,  <36.746582, 38.072048, 30.910944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570522, 37.977657, 30.777925>,  <36.277092, 37.820339, 30.556227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570522, 37.977657, 30.777925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470647, -0.294326, 0.831783,
		0.490263, -0.871030, -0.030808,
		0.733575, 0.393293, 0.554245,
		36.790596, 38.095646, 30.944199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244465, 37.393055, 31.121752>,  <36.277092, 37.820339, 30.556227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244465, 37.393055, 31.121752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463432, 37.694134, 31.268055>,  <36.594814, 37.874783, 31.355837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463432, 37.694134, 31.268055>,  <36.244465, 37.393055, 31.121752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463432, 37.694134, 31.268055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413353, -0.136825, 0.900232,
		0.727646, -0.643993, 0.236228,
		0.547422, 0.752696, 0.365757,
		36.627659, 37.919941, 31.377783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794186, 37.186878, 31.575722>,  <36.244465, 37.393055, 31.121752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794186, 37.186878, 31.575722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690559, 37.562031, 31.668032>,  <36.628384, 37.787125, 31.723417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690559, 37.562031, 31.668032>,  <36.794186, 37.186878, 31.575722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690559, 37.562031, 31.668032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088809, -0.261052, 0.961231,
		0.961768, 0.228529, 0.150923,
		-0.259068, 0.937884, 0.230776,
		36.612839, 37.843395, 31.737265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197964, 37.391457, 32.142250>,  <36.794186, 37.186878, 31.575722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197964, 37.391457, 32.142250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877705, 37.631107, 32.142056>,  <36.685547, 37.774899, 32.141937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877705, 37.631107, 32.142056>,  <37.197964, 37.391457, 32.142250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877705, 37.631107, 32.142056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096437, -0.128068, 0.987066,
		0.591318, 0.790343, 0.160316,
		-0.800651, 0.599130, -0.000490,
		36.637508, 37.810848, 32.141907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739704, 37.050064, 31.880482>,  <37.197964, 37.391457, 32.142250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739704, 37.050064, 31.880482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937630, 36.705013, 31.922491>,  <38.056385, 36.497982, 31.947697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937630, 36.705013, 31.922491>,  <37.739704, 37.050064, 31.880482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937630, 36.705013, 31.922491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712622, 0.471961, 0.519060,
		-0.497324, -0.181994, 0.848261,
		0.494812, -0.862630, 0.105024,
		38.086075, 36.446224, 31.953999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972206, 37.136425, 32.587276>,  <37.739704, 37.050064, 31.880482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972206, 37.136425, 32.587276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205349, 36.891991, 32.373043>,  <38.345234, 36.745331, 32.244503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205349, 36.891991, 32.373043>,  <37.972206, 37.136425, 32.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205349, 36.891991, 32.373043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796809, 0.559039, 0.229283,
		0.159303, -0.560400, 0.812757,
		0.582854, -0.611087, -0.535588,
		38.380203, 36.708664, 32.212368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578434, 37.081810, 33.011684>,  <37.972206, 37.136425, 32.587276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578434, 37.081810, 33.011684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661156, 36.985519, 32.632362>,  <38.710789, 36.927746, 32.404770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661156, 36.985519, 32.632362>,  <38.578434, 37.081810, 33.011684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661156, 36.985519, 32.632362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835709, 0.547464, 0.043282,
		0.508744, -0.801458, 0.314395,
		0.206808, -0.240724, -0.948305,
		38.723198, 36.913303, 32.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315422, 37.110279, 32.957047>,  <38.578434, 37.081810, 33.011684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315422, 37.110279, 32.957047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192238, 37.118946, 32.576584>,  <39.118328, 37.124146, 32.348309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192238, 37.118946, 32.576584>,  <39.315422, 37.110279, 32.957047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192238, 37.118946, 32.576584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848699, 0.458068, -0.264354,
		0.429965, -0.888653, -0.159455,
		-0.307960, 0.021666, -0.951153,
		39.099850, 37.125446, 32.291237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914421, 36.981743, 32.627304>,  <39.315422, 37.110279, 32.957047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914421, 36.981743, 32.627304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 37.137630, 32.345436>,  <39.534946, 37.231163, 32.176315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677250, 37.137630, 32.345436>,  <39.914421, 36.981743, 32.627304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677250, 37.137630, 32.345436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761291, 0.556490, -0.332798,
		0.262443, -0.733782, -0.626649,
		-0.592925, 0.389722, -0.704668,
		39.499374, 37.254547, 32.134037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268940, 36.858467, 32.011646>,  <39.914421, 36.981743, 32.627304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268940, 36.858467, 32.011646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002502, 37.143192, 31.922520>,  <39.842640, 37.314026, 31.869045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002502, 37.143192, 31.922520>,  <40.268940, 36.858467, 32.011646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002502, 37.143192, 31.922520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681868, 0.460060, -0.568683,
		-0.302288, -0.530724, -0.791804,
		-0.666091, 0.711812, -0.222813,
		39.802673, 37.356735, 31.855675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512280, 36.872738, 31.417362>,  <40.268940, 36.858467, 32.011646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512280, 36.872738, 31.417362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313721, 37.206799, 31.512115>,  <40.194584, 37.407234, 31.568968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313721, 37.206799, 31.512115>,  <40.512280, 36.872738, 31.417362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313721, 37.206799, 31.512115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680903, 0.543844, -0.490515,
		-0.538481, -0.082196, -0.838619,
		-0.496396, 0.835151, 0.236883,
		40.164803, 37.457344, 31.583179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309177, 37.085255, 30.759016>,  <40.512280, 36.872738, 31.417362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309177, 37.085255, 30.759016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312572, 37.384491, 31.024431>,  <40.314610, 37.564034, 31.183680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312572, 37.384491, 31.024431>,  <40.309177, 37.085255, 30.759016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312572, 37.384491, 31.024431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653159, 0.498300, -0.570158,
		-0.757173, 0.438236, -0.484394,
		0.008490, 0.748095, 0.663537,
		40.315121, 37.608921, 31.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185387, 37.718838, 30.390131>,  <40.309177, 37.085255, 30.759016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185387, 37.718838, 30.390131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386925, 37.811626, 30.722958>,  <40.507847, 37.867302, 30.922653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386925, 37.811626, 30.722958>,  <40.185387, 37.718838, 30.390131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386925, 37.811626, 30.722958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649644, 0.533097, -0.542005,
		-0.569303, 0.813631, 0.117895,
		0.503841, 0.231976, 0.832064,
		40.538078, 37.881218, 30.972576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289597, 38.480247, 30.346945>,  <40.185387, 37.718838, 30.390131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289597, 38.480247, 30.346945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575661, 38.360561, 30.599617>,  <40.747299, 38.288750, 30.751221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575661, 38.360561, 30.599617>,  <40.289597, 38.480247, 30.346945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575661, 38.360561, 30.599617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678239, 0.515504, -0.523687,
		-0.168937, 0.802948, 0.571607,
		0.715159, -0.299216, 0.631678,
		40.790207, 38.270798, 30.789120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736519, 39.109509, 30.459370>,  <40.289597, 38.480247, 30.346945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736519, 39.109509, 30.459370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951038, 38.802399, 30.599600>,  <41.079750, 38.618134, 30.683739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951038, 38.802399, 30.599600>,  <40.736519, 39.109509, 30.459370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951038, 38.802399, 30.599600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824088, 0.386580, -0.414048,
		0.182368, 0.510961, 0.840036,
		0.536303, -0.767772, 0.350577,
		41.111931, 38.572067, 30.704773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382744, 39.410412, 30.751783>,  <40.736519, 39.109509, 30.459370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382744, 39.410412, 30.751783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454559, 39.025593, 30.669586>,  <41.497646, 38.794701, 30.620268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454559, 39.025593, 30.669586>,  <41.382744, 39.410412, 30.751783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454559, 39.025593, 30.669586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763086, 0.268023, -0.588101,
		0.620859, -0.051225, 0.782246,
		0.179534, -0.962050, -0.205493,
		41.508419, 38.736977, 30.607939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064884, 39.469547, 30.686060>,  <41.382744, 39.410412, 30.751783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064884, 39.469547, 30.686060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976009, 39.122013, 30.509085>,  <41.922684, 38.913490, 30.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976009, 39.122013, 30.509085>,  <42.064884, 39.469547, 30.686060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976009, 39.122013, 30.509085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636837, 0.214286, -0.740621,
		0.738289, -0.446318, 0.505697,
		-0.222189, -0.868839, -0.442437,
		41.909351, 38.861362, 30.376354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698002, 39.238079, 30.452583>,  <42.064884, 39.469547, 30.686060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698002, 39.238079, 30.452583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451881, 39.005733, 30.239418>,  <42.304207, 38.866325, 30.111519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451881, 39.005733, 30.239418>,  <42.698002, 39.238079, 30.452583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451881, 39.005733, 30.239418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615998, 0.067535, -0.784847,
		0.491882, -0.811192, 0.316258,
		-0.615304, -0.580867, -0.532912,
		42.267292, 38.831474, 30.079544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037395, 38.635162, 30.254799>,  <42.698002, 39.238079, 30.452583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037395, 38.635162, 30.254799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748455, 38.693455, 29.984402>,  <42.575089, 38.728428, 29.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748455, 38.693455, 29.984402>,  <43.037395, 38.635162, 30.254799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748455, 38.693455, 29.984402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643330, -0.216925, -0.734214,
		-0.253639, -0.965249, 0.062943,
		-0.722353, 0.145732, -0.675994,
		42.531750, 38.737171, 29.781603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186939, 38.141289, 29.730335>,  <43.037395, 38.635162, 30.254799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186939, 38.141289, 29.730335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926022, 38.380898, 29.544569>,  <42.769470, 38.524662, 29.433109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926022, 38.380898, 29.544569>,  <43.186939, 38.141289, 29.730335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926022, 38.380898, 29.544569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410151, -0.236305, -0.880872,
		-0.637404, -0.765072, -0.091548,
		-0.652298, 0.599019, -0.464417,
		42.730331, 38.560604, 29.405245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980705, 37.810745, 29.078564>,  <43.186939, 38.141289, 29.730335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980705, 37.810745, 29.078564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870586, 38.186810, 28.998259>,  <42.804516, 38.412449, 28.950075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870586, 38.186810, 28.998259>,  <42.980705, 37.810745, 29.078564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870586, 38.186810, 28.998259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363093, -0.091679, -0.927232,
		-0.890154, -0.328161, -0.316127,
		-0.275299, 0.940162, -0.200761,
		42.787998, 38.468857, 28.938030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629887, 37.775391, 28.439983>,  <42.980705, 37.810745, 29.078564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629887, 37.775391, 28.439983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754871, 38.155201, 28.451040>,  <42.829861, 38.383087, 28.457674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754871, 38.155201, 28.451040>,  <42.629887, 37.775391, 28.439983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754871, 38.155201, 28.451040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277732, -0.063489, -0.958558,
		-0.908423, 0.307190, -0.283552,
		0.312462, 0.949528, 0.027642,
		42.848610, 38.440060, 28.459333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551804, 38.034492, 27.684118>,  <42.629887, 37.775391, 28.439983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551804, 38.034492, 27.684118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766068, 38.315685, 27.871256>,  <42.894627, 38.484402, 27.983538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766068, 38.315685, 27.871256>,  <42.551804, 38.034492, 27.684118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766068, 38.315685, 27.871256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474160, 0.208048, -0.855505,
		-0.698742, 0.680094, -0.221885,
		0.535661, 0.702986, 0.467845,
		42.926765, 38.526581, 28.011610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518894, 38.561710, 27.264526>,  <42.551804, 38.034492, 27.684118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.518894, 38.561710, 27.264526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847012, 38.618305, 27.486193>,  <43.043880, 38.652264, 27.619192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847012, 38.618305, 27.486193>,  <42.518894, 38.561710, 27.264526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847012, 38.618305, 27.486193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515868, 0.235368, -0.823700,
		-0.246978, 0.961552, 0.120081,
		0.820294, 0.141490, 0.554164,
		43.093102, 38.660751, 27.652443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708073, 39.142757, 27.047382>,  <42.518894, 38.561710, 27.264526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708073, 39.142757, 27.047382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033638, 38.970676, 27.203569>,  <43.228977, 38.867428, 27.297281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033638, 38.970676, 27.203569>,  <42.708073, 39.142757, 27.047382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033638, 38.970676, 27.203569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457154, 0.059478, -0.887396,
		0.358536, 0.900771, 0.245079,
		0.813918, -0.430202, 0.390466,
		43.277813, 38.841614, 27.320709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210594, 39.558388, 26.669079>,  <42.708073, 39.142757, 27.047382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210594, 39.558388, 26.669079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380726, 39.235062, 26.831913>,  <43.482803, 39.041065, 26.929613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.380726, 39.235062, 26.831913>,  <43.210594, 39.558388, 26.669079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380726, 39.235062, 26.831913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500204, -0.164907, -0.850060,
		0.754251, 0.565177, 0.334185,
		0.425325, -0.808320, 0.407085,
		43.508324, 38.992565, 26.954039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937332, 39.627628, 26.471889>,  <43.210594, 39.558388, 26.669079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937332, 39.627628, 26.471889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911549, 39.244713, 26.584639>,  <43.896080, 39.014965, 26.652288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911549, 39.244713, 26.584639>,  <43.937332, 39.627628, 26.471889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911549, 39.244713, 26.584639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554191, -0.269238, -0.787644,
		0.829890, 0.105442, 0.547873,
		-0.064457, -0.957284, 0.281873,
		43.892212, 38.957527, 26.669201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646317, 39.385815, 26.551613>,  <43.937332, 39.627628, 26.471889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646317, 39.385815, 26.551613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413334, 39.067600, 26.484833>,  <44.273544, 38.876671, 26.444765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413334, 39.067600, 26.484833>,  <44.646317, 39.385815, 26.551613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413334, 39.067600, 26.484833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677592, -0.361719, -0.640335,
		0.449020, -0.486089, 0.749732,
		-0.582452, -0.795536, -0.166951,
		44.238598, 38.828941, 26.434748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122578, 38.832657, 26.513802>,  <44.646317, 39.385815, 26.551613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122578, 38.832657, 26.513802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782566, 38.701283, 26.349083>,  <44.578560, 38.622459, 26.250252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782566, 38.701283, 26.349083>,  <45.122578, 38.832657, 26.513802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782566, 38.701283, 26.349083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524574, -0.457184, -0.718195,
		0.047616, -0.826506, 0.560911,
		-0.850032, -0.328437, -0.411794,
		44.527557, 38.602753, 26.225544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180767, 38.086231, 26.364714>,  <45.122578, 38.832657, 26.513802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180767, 38.086231, 26.364714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899117, 38.218155, 26.113178>,  <44.730125, 38.297310, 25.962257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.899117, 38.218155, 26.113178>,  <45.180767, 38.086231, 26.364714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899117, 38.218155, 26.113178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431593, -0.504452, -0.747834,
		-0.563858, -0.797971, 0.212855,
		-0.704125, 0.329806, -0.628837,
		44.687878, 38.317097, 25.924526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971844, 37.477943, 25.926702>,  <45.180767, 38.086231, 26.364714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971844, 37.477943, 25.926702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858719, 37.795059, 25.710737>,  <44.790844, 37.985329, 25.581158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.858719, 37.795059, 25.710737>,  <44.971844, 37.477943, 25.926702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858719, 37.795059, 25.710737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130971, -0.525705, -0.840525,
		-0.950193, -0.308421, 0.044842,
		-0.282809, 0.792787, -0.539914,
		44.773876, 38.032894, 25.548763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487408, 37.231678, 25.531940>,  <44.971844, 37.477943, 25.926702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487408, 37.231678, 25.531940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601746, 37.572144, 25.355846>,  <44.670349, 37.776424, 25.250189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601746, 37.572144, 25.355846>,  <44.487408, 37.231678, 25.531940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601746, 37.572144, 25.355846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111679, -0.485864, -0.866870,
		-0.951745, 0.198627, -0.233940,
		0.285847, 0.851166, -0.440237,
		44.687500, 37.827492, 25.223776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321987, 37.122280, 24.783718>,  <44.487408, 37.231678, 25.531940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321987, 37.122280, 24.783718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568008, 37.437309, 24.768547>,  <44.715622, 37.626328, 24.759445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.568008, 37.437309, 24.768547>,  <44.321987, 37.122280, 24.783718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568008, 37.437309, 24.768547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259406, -0.247538, -0.933506,
		-0.744592, 0.564318, -0.356550,
		0.615054, 0.787573, -0.037928,
		44.752525, 37.673580, 24.757170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117275, 37.482544, 24.165411>,  <44.321987, 37.122280, 24.783718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117275, 37.482544, 24.165411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494209, 37.571735, 24.265242>,  <44.720367, 37.625252, 24.325140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.494209, 37.571735, 24.265242>,  <44.117275, 37.482544, 24.165411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494209, 37.571735, 24.265242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277780, -0.105149, -0.954873,
		-0.186673, 0.969136, -0.161024,
		0.942333, 0.222978, 0.249578,
		44.776909, 37.638630, 24.340115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373135, 38.025333, 23.673660>,  <44.117275, 37.482544, 24.165411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373135, 38.025333, 23.673660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685379, 37.826893, 23.825733>,  <44.872726, 37.707829, 23.916977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685379, 37.826893, 23.825733>,  <44.373135, 38.025333, 23.673660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685379, 37.826893, 23.825733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486739, 0.100930, -0.867697,
		0.392091, 0.862381, 0.320257,
		0.780609, -0.496098, 0.380180,
		44.919563, 37.678062, 23.939787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872639, 38.324062, 23.436657>,  <44.373135, 38.025333, 23.673660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872639, 38.324062, 23.436657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030289, 37.969936, 23.535355>,  <45.124878, 37.757462, 23.594574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.030289, 37.969936, 23.535355>,  <44.872639, 38.324062, 23.436657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030289, 37.969936, 23.535355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545608, 0.009341, -0.837989,
		0.739578, 0.464900, 0.486716,
		0.394127, -0.885314, 0.246744,
		45.148525, 37.704342, 23.609377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594059, 38.339993, 23.278210>,  <44.872639, 38.324062, 23.436657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594059, 38.339993, 23.278210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535965, 37.947720, 23.330624>,  <45.501110, 37.712357, 23.362072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535965, 37.947720, 23.330624>,  <45.594059, 38.339993, 23.278210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535965, 37.947720, 23.330624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627984, -0.193709, -0.753733,
		0.764555, -0.027180, 0.643986,
		-0.145232, -0.980682, 0.131033,
		45.492393, 37.653515, 23.369934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267384, 37.990669, 23.371853>,  <45.594059, 38.339993, 23.278210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267384, 37.990669, 23.371853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984364, 37.744183, 23.233494>,  <45.814552, 37.596291, 23.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984364, 37.744183, 23.233494>,  <46.267384, 37.990669, 23.371853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984364, 37.744183, 23.233494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526617, -0.133399, -0.839571,
		0.471219, -0.776193, 0.418899,
		-0.707550, -0.616221, -0.345897,
		45.772099, 37.559315, 23.129725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683395, 37.426765, 23.225719>,  <46.267384, 37.990669, 23.371853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683395, 37.426765, 23.225719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334049, 37.369183, 23.039598>,  <46.124439, 37.334633, 22.927927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.334049, 37.369183, 23.039598>,  <46.683395, 37.426765, 23.225719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334049, 37.369183, 23.039598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486772, -0.290825, -0.823695,
		-0.016747, -0.945885, 0.324070,
		-0.873369, -0.143954, -0.465300,
		46.072037, 37.325996, 22.900009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.668133, 36.771873, 23.009979>,  <46.683395, 37.426765, 23.225719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.668133, 36.771873, 23.009979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397316, 36.949345, 22.775112>,  <46.234825, 37.055828, 22.634192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397316, 36.949345, 22.775112>,  <46.668133, 36.771873, 23.009979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397316, 36.949345, 22.775112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343251, -0.515371, -0.785220,
		-0.650991, -0.733174, 0.196637,
		-0.677045, 0.443675, -0.587165,
		46.194202, 37.082447, 22.598963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418159, 36.180061, 22.629015>,  <46.668133, 36.771873, 23.009979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418159, 36.180061, 22.629015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303761, 36.493553, 22.408478>,  <46.235119, 36.681648, 22.276155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.303761, 36.493553, 22.408478>,  <46.418159, 36.180061, 22.629015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.303761, 36.493553, 22.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455705, -0.394903, -0.797737,
		-0.842933, -0.479403, -0.244206,
		-0.286000, 0.783725, -0.551343,
		46.217960, 36.728672, 22.243074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.201656, 35.924904, 21.885151>,  <46.418159, 36.180061, 22.629015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.201656, 35.924904, 21.885151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257713, 36.319080, 21.846659>,  <46.291348, 36.555588, 21.823563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257713, 36.319080, 21.846659>,  <46.201656, 35.924904, 21.885151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257713, 36.319080, 21.846659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484758, -0.153035, -0.861156,
		-0.863348, 0.074036, -0.499149,
		0.140143, 0.985444, -0.096233,
		46.299755, 36.614712, 21.817789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557796, 35.648521, 21.215624>,  <46.201656, 35.924904, 21.885151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557796, 35.648521, 21.215624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609821, 35.255043, 21.165943>,  <46.641037, 35.018955, 21.136135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609821, 35.255043, 21.165943>,  <46.557796, 35.648521, 21.215624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609821, 35.255043, 21.165943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175675, -0.146149, 0.973539,
		-0.975818, -0.104803, -0.191820,
		0.130064, -0.983695, -0.124204,
		46.648842, 34.959934, 21.128681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922894, 35.284752, 21.453236>,  <46.557796, 35.648521, 21.215624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922894, 35.284752, 21.453236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211967, 35.008446, 21.462833>,  <46.385410, 34.842663, 21.468592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211967, 35.008446, 21.462833>,  <45.922894, 35.284752, 21.453236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211967, 35.008446, 21.462833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237581, -0.215663, 0.947124,
		-0.649065, -0.690170, -0.319968,
		0.722683, -0.690764, 0.023992,
		46.428772, 34.801216, 21.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664761, 34.677269, 21.580292>,  <45.922894, 35.284752, 21.453236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664761, 34.677269, 21.580292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046017, 34.623749, 21.688824>,  <46.274769, 34.591637, 21.753942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.046017, 34.623749, 21.688824>,  <45.664761, 34.677269, 21.580292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046017, 34.623749, 21.688824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301338, -0.340529, 0.890638,
		-0.026770, -0.930665, -0.364891,
		0.953142, -0.133798, 0.271329,
		46.331959, 34.583611, 21.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726994, 33.951977, 21.833012>,  <45.664761, 34.677269, 21.580292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726994, 33.951977, 21.833012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026100, 34.172276, 21.981348>,  <46.205563, 34.304455, 22.070351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026100, 34.172276, 21.981348>,  <45.726994, 33.951977, 21.833012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026100, 34.172276, 21.981348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351040, -0.146147, 0.924885,
		0.563578, -0.821776, 0.084052,
		0.747764, 0.550750, 0.370842,
		46.250431, 34.337502, 22.092600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960861, 33.551025, 22.431587>,  <45.726994, 33.951977, 21.833012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.960861, 33.551025, 22.431587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096191, 33.924458, 22.478863>,  <46.177391, 34.148518, 22.507227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.096191, 33.924458, 22.478863>,  <45.960861, 33.551025, 22.431587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096191, 33.924458, 22.478863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237053, -0.036991, 0.970792,
		0.910682, -0.356461, 0.208792,
		0.338326, 0.933578, 0.118187,
		46.197689, 34.204533, 22.514318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385738, 33.480877, 22.983484>,  <45.960861, 33.551025, 22.431587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385738, 33.480877, 22.983484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278687, 33.865040, 22.952541>,  <46.214455, 34.095539, 22.933975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278687, 33.865040, 22.952541>,  <46.385738, 33.480877, 22.983484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278687, 33.865040, 22.952541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159470, 0.035029, 0.986581,
		0.950234, 0.276375, 0.143782,
		-0.267629, 0.960411, -0.077359,
		46.198399, 34.153164, 22.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704422, 33.902294, 23.582003>,  <46.385738, 33.480877, 22.983484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704422, 33.902294, 23.582003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390507, 34.123005, 23.469114>,  <46.202156, 34.255432, 23.401382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.390507, 34.123005, 23.469114>,  <46.704422, 33.902294, 23.582003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390507, 34.123005, 23.469114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172168, 0.243346, 0.954537,
		0.595365, 0.797702, -0.095978,
		-0.784792, 0.551773, -0.282218,
		46.155067, 34.288536, 23.384449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.732910, 34.468372, 24.149389>,  <46.704422, 33.902294, 23.582003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.732910, 34.468372, 24.149389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369797, 34.479778, 23.982004>,  <46.151928, 34.486622, 23.881573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.369797, 34.479778, 23.982004>,  <46.732910, 34.468372, 24.149389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.369797, 34.479778, 23.982004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363816, 0.442937, 0.819418,
		0.208720, 0.896099, -0.391717,
		-0.907785, 0.028516, -0.418465,
		46.097462, 34.488335, 23.856464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467201, 35.095139, 24.348717>,  <46.732910, 34.468372, 24.149389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467201, 35.095139, 24.348717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153938, 34.877048, 24.229122>,  <45.965981, 34.746193, 24.157366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153938, 34.877048, 24.229122>,  <46.467201, 35.095139, 24.348717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153938, 34.877048, 24.229122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546841, 0.374982, 0.748568,
		-0.296024, 0.749744, -0.591822,
		-0.783157, -0.545226, -0.298988,
		45.918991, 34.713482, 24.139425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910503, 35.502605, 24.451405>,  <46.467201, 35.095139, 24.348717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910503, 35.502605, 24.451405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696236, 35.165668, 24.427702>,  <45.567673, 34.963505, 24.413481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.696236, 35.165668, 24.427702>,  <45.910503, 35.502605, 24.451405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696236, 35.165668, 24.427702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546194, 0.292114, 0.785074,
		-0.643993, 0.452908, -0.616561,
		-0.535672, -0.842344, -0.059256,
		45.535534, 34.912964, 24.409925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226212, 35.738251, 24.514492>,  <45.910503, 35.502605, 24.451405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226212, 35.738251, 24.514492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236485, 35.352291, 24.619036>,  <45.242649, 35.120716, 24.681761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.236485, 35.352291, 24.619036>,  <45.226212, 35.738251, 24.514492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.236485, 35.352291, 24.619036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543721, 0.205907, 0.813616,
		-0.838873, -0.163002, -0.519348,
		0.025684, -0.964901, 0.261357,
		45.244190, 35.062820, 24.697443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459225, 35.616642, 24.676458>,  <45.226212, 35.738251, 24.514492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459225, 35.616642, 24.676458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680527, 35.329571, 24.845621>,  <44.813309, 35.157330, 24.947119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680527, 35.329571, 24.845621>,  <44.459225, 35.616642, 24.676458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680527, 35.329571, 24.845621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530378, 0.087998, 0.843182,
		-0.642346, -0.690796, -0.331953,
		0.553256, -0.717674, 0.422908,
		44.846504, 35.114269, 24.972494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026688, 35.032173, 24.841124>,  <44.459225, 35.616642, 24.676458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026688, 35.032173, 24.841124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329708, 35.108932, 25.090696>,  <44.511520, 35.154987, 25.240440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329708, 35.108932, 25.090696>,  <44.026688, 35.032173, 24.841124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329708, 35.108932, 25.090696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649120, 0.120473, 0.751085,
		0.068967, -0.973992, 0.215831,
		0.757553, 0.191900, 0.623930,
		44.556973, 35.166504, 25.277876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690319, 34.854782, 25.485775>,  <44.026688, 35.032173, 24.841124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690319, 34.854782, 25.485775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019791, 35.036663, 25.621305>,  <44.217472, 35.145790, 25.702623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019791, 35.036663, 25.621305>,  <43.690319, 34.854782, 25.485775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019791, 35.036663, 25.621305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503427, 0.311352, 0.805991,
		0.260983, -0.834454, 0.485359,
		0.823680, 0.454693, 0.338829,
		44.266895, 35.173073, 25.722954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738880, 34.679535, 26.190922>,  <43.690319, 34.854782, 25.485775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738880, 34.679535, 26.190922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974228, 34.999950, 26.146820>,  <44.115437, 35.192200, 26.120359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974228, 34.999950, 26.146820>,  <43.738880, 34.679535, 26.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974228, 34.999950, 26.146820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411322, 0.413894, 0.812100,
		0.696161, -0.432461, 0.573008,
		0.588365, 0.801043, -0.110256,
		44.150738, 35.240265, 26.113743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169338, 34.793724, 26.909096>,  <43.738880, 34.679535, 26.190922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169338, 34.793724, 26.909096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163494, 35.139362, 26.707851>,  <44.159988, 35.346745, 26.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163494, 35.139362, 26.707851>,  <44.169338, 34.793724, 26.909096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163494, 35.139362, 26.707851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254939, 0.483318, 0.837502,
		0.966847, 0.140497, 0.213232,
		-0.014608, 0.864097, -0.503113,
		44.159111, 35.398590, 26.556917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555801, 35.217621, 27.282516>,  <44.169338, 34.793724, 26.909096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555801, 35.217621, 27.282516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330750, 35.458191, 27.055632>,  <44.195717, 35.602535, 26.919500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330750, 35.458191, 27.055632>,  <44.555801, 35.217621, 27.282516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330750, 35.458191, 27.055632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221112, 0.551640, 0.804241,
		0.796589, 0.577909, -0.177388,
		-0.562633, 0.601427, -0.567213,
		44.161961, 35.638618, 26.885468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780701, 35.891407, 27.360796>,  <44.555801, 35.217621, 27.282516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780701, 35.891407, 27.360796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394917, 35.929073, 27.262045>,  <44.163445, 35.951675, 27.202795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.394917, 35.929073, 27.262045>,  <44.780701, 35.891407, 27.360796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394917, 35.929073, 27.262045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184446, 0.429080, 0.884234,
		0.189199, 0.898344, -0.396461,
		-0.964460, 0.094170, -0.246877,
		44.105579, 35.957325, 27.187983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647835, 36.477612, 27.638107>,  <44.780701, 35.891407, 27.360796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647835, 36.477612, 27.638107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287643, 36.312756, 27.582579>,  <44.071529, 36.213840, 27.549261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287643, 36.312756, 27.582579>,  <44.647835, 36.477612, 27.638107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287643, 36.312756, 27.582579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339820, 0.467616, 0.816001,
		-0.271392, 0.781969, -0.561134,
		-0.900483, -0.412140, -0.138822,
		44.017498, 36.189114, 27.540932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161312, 36.988838, 27.789764>,  <44.647835, 36.477612, 27.638107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161312, 36.988838, 27.789764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965706, 36.645393, 27.851288>,  <43.848343, 36.439327, 27.888203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965706, 36.645393, 27.851288>,  <44.161312, 36.988838, 27.789764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965706, 36.645393, 27.851288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404287, 0.379346, 0.832255,
		-0.772929, 0.344801, -0.532629,
		-0.489013, -0.858609, 0.153809,
		43.819000, 36.387810, 27.897430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439266, 37.204521, 27.939684>,  <44.161312, 36.988838, 27.789764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439266, 37.204521, 27.939684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501118, 36.834358, 28.078079>,  <43.538227, 36.612259, 28.161118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501118, 36.834358, 28.078079>,  <43.439266, 37.204521, 27.939684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501118, 36.834358, 28.078079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557722, 0.207306, 0.803723,
		-0.815498, -0.317241, -0.484066,
		0.154624, -0.925409, 0.345990,
		43.547504, 36.556736, 28.181877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768703, 36.893524, 28.185438>,  <43.439266, 37.204521, 27.939684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768703, 36.893524, 28.185438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022053, 36.653526, 28.380924>,  <43.174061, 36.509529, 28.498217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022053, 36.653526, 28.380924>,  <42.768703, 36.893524, 28.185438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022053, 36.653526, 28.380924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596051, 0.024515, 0.802572,
		-0.493521, -0.799628, -0.342101,
		0.633373, -0.599995, 0.488717,
		43.212063, 36.473526, 28.527540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383614, 36.385113, 28.489092>,  <42.768703, 36.893524, 28.185438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383614, 36.385113, 28.489092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722866, 36.385239, 28.701006>,  <42.926418, 36.385315, 28.828154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722866, 36.385239, 28.701006>,  <42.383614, 36.385113, 28.489092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722866, 36.385239, 28.701006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528901, -0.057261, 0.846750,
		0.030603, -0.998359, -0.048398,
		0.848132, 0.000316, 0.529785,
		42.977306, 36.385334, 28.859941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252884, 35.840084, 28.969717>,  <42.383614, 36.385113, 28.489092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252884, 35.840084, 28.969717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579369, 36.028053, 29.104160>,  <42.775261, 36.140835, 29.184826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.579369, 36.028053, 29.104160>,  <42.252884, 35.840084, 28.969717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579369, 36.028053, 29.104160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326713, -0.104384, 0.939342,
		0.476501, -0.876514, 0.068330,
		0.816214, 0.469922, 0.336108,
		42.824234, 36.169029, 29.204992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652672, 35.345680, 29.446234>,  <42.252884, 35.840084, 28.969717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652672, 35.345680, 29.446234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735828, 35.725506, 29.540134>,  <42.785721, 35.953400, 29.596474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.735828, 35.725506, 29.540134>,  <42.652672, 35.345680, 29.446234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735828, 35.725506, 29.540134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233638, -0.184843, 0.954592,
		0.949840, -0.253296, 0.183428,
		0.207889, 0.949565, 0.234751,
		42.798195, 36.010376, 29.610559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868382, 35.345692, 30.122244>,  <42.652672, 35.345680, 29.446234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868382, 35.345692, 30.122244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787281, 35.736881, 30.102438>,  <42.738621, 35.971596, 30.090555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787281, 35.736881, 30.102438>,  <42.868382, 35.345692, 30.122244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787281, 35.736881, 30.102438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441880, -0.046251, 0.895881,
		0.873861, 0.203522, 0.441526,
		-0.202753, 0.977977, -0.049515,
		42.726456, 36.030273, 30.087584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036026, 35.512554, 30.746099>,  <42.868382, 35.345692, 30.122244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036026, 35.512554, 30.746099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783783, 35.789715, 30.606258>,  <42.632435, 35.956009, 30.522354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783783, 35.789715, 30.606258>,  <43.036026, 35.512554, 30.746099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783783, 35.789715, 30.606258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522645, -0.046138, 0.851301,
		0.573735, 0.719557, 0.391236,
		-0.630610, 0.692899, -0.349602,
		42.594601, 35.997585, 30.501377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973976, 36.091057, 31.294605>,  <43.036026, 35.512554, 30.746099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973976, 36.091057, 31.294605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640762, 36.103519, 31.073668>,  <42.440834, 36.110996, 30.941105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640762, 36.103519, 31.073668>,  <42.973976, 36.091057, 31.294605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640762, 36.103519, 31.073668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552966, -0.016411, 0.833042,
		0.016887, 0.999380, 0.030897,
		-0.833033, 0.031152, -0.552346,
		42.390854, 36.112865, 30.907965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522083, 36.526566, 31.573092>,  <42.973976, 36.091057, 31.294605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522083, 36.526566, 31.573092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284328, 36.286194, 31.359329>,  <42.141674, 36.141972, 31.231071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284328, 36.286194, 31.359329>,  <42.522083, 36.526566, 31.573092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284328, 36.286194, 31.359329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520040, -0.219661, 0.825414,
		-0.613402, 0.768528, -0.181943,
		-0.594388, -0.600928, -0.534406,
		42.106010, 36.105915, 31.199007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954098, 36.678699, 31.767759>,  <42.522083, 36.526566, 31.573092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954098, 36.678699, 31.767759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855240, 36.338612, 31.581839>,  <41.795925, 36.134560, 31.470285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855240, 36.338612, 31.581839>,  <41.954098, 36.678699, 31.767759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855240, 36.338612, 31.581839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498118, -0.299970, 0.813571,
		-0.831142, 0.432597, -0.349374,
		-0.247147, -0.850222, -0.464802,
		41.781097, 36.083546, 31.442398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335896, 36.465050, 32.077610>,  <41.954098, 36.678699, 31.767759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335896, 36.465050, 32.077610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454464, 36.121819, 31.909882>,  <41.525604, 35.915878, 31.809244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454464, 36.121819, 31.909882>,  <41.335896, 36.465050, 32.077610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454464, 36.121819, 31.909882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406618, -0.510664, 0.757552,
		-0.864174, -0.054049, -0.500282,
		0.296420, -0.858080, -0.419325,
		41.543388, 35.864395, 31.784084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798386, 36.060112, 32.169758>,  <41.335896, 36.465050, 32.077610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798386, 36.060112, 32.169758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086029, 35.790348, 32.102768>,  <41.258617, 35.628490, 32.062576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086029, 35.790348, 32.102768>,  <40.798386, 36.060112, 32.169758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086029, 35.790348, 32.102768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334038, -0.546821, 0.767727,
		-0.609346, -0.496136, -0.618504,
		0.719108, -0.674415, -0.167475,
		41.301762, 35.588024, 32.052525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504486, 35.297394, 32.218307>,  <40.798386, 36.060112, 32.169758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504486, 35.297394, 32.218307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896172, 35.266945, 32.293514>,  <41.131184, 35.248676, 32.338638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896172, 35.266945, 32.293514>,  <40.504486, 35.297394, 32.218307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896172, 35.266945, 32.293514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188678, -0.682098, 0.706501,
		0.074469, -0.727289, -0.682280,
		0.979211, -0.076119, 0.188019,
		41.189934, 35.244110, 32.349918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702206, 34.606903, 32.203751>,  <40.504486, 35.297394, 32.218307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702206, 34.606903, 32.203751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980564, 34.786716, 32.427769>,  <41.147579, 34.894604, 32.562180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980564, 34.786716, 32.427769>,  <40.702206, 34.606903, 32.203751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980564, 34.786716, 32.427769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096300, -0.714398, 0.693081,
		0.711658, -0.536244, -0.453856,
		0.695894, 0.449531, 0.560048,
		41.189331, 34.921577, 32.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018822, 34.046829, 32.567245>,  <40.702206, 34.606903, 32.203751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018822, 34.046829, 32.567245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128239, 34.373909, 32.769848>,  <41.193890, 34.570156, 32.891411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128239, 34.373909, 32.769848>,  <41.018822, 34.046829, 32.567245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128239, 34.373909, 32.769848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135144, -0.554040, 0.821448,
		0.952317, -0.156253, -0.262063,
		0.273547, 0.817695, 0.506505,
		41.210304, 34.619217, 32.921799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551750, 33.763451, 33.181667>,  <41.018822, 34.046829, 32.567245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551750, 33.763451, 33.181667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459335, 34.130600, 33.310745>,  <41.403889, 34.350891, 33.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459335, 34.130600, 33.310745>,  <41.551750, 33.763451, 33.181667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459335, 34.130600, 33.310745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091752, -0.350743, 0.931966,
		0.968610, 0.185709, 0.165251,
		-0.231035, 0.917874, 0.322694,
		41.390026, 34.405964, 33.407555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987007, 33.870419, 33.785580>,  <41.551750, 33.763451, 33.181667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987007, 33.870419, 33.785580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672821, 34.115608, 33.819759>,  <41.484310, 34.262722, 33.840267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672821, 34.115608, 33.819759>,  <41.987007, 33.870419, 33.785580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672821, 34.115608, 33.819759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172870, -0.349865, 0.920712,
		0.594272, 0.708416, 0.380773,
		-0.785466, 0.612978, 0.085451,
		41.437180, 34.299503, 33.845394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868641, 34.107670, 34.434647>,  <41.987007, 33.870419, 33.785580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868641, 34.107670, 34.434647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503708, 34.219303, 34.314804>,  <41.284748, 34.286282, 34.242897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503708, 34.219303, 34.314804>,  <41.868641, 34.107670, 34.434647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503708, 34.219303, 34.314804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375363, -0.277772, 0.884277,
		0.163565, 0.919215, 0.358177,
		-0.912332, 0.279083, -0.299606,
		41.230007, 34.303028, 34.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620316, 34.491920, 34.911442>,  <41.868641, 34.107670, 34.434647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620316, 34.491920, 34.911442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281300, 34.381817, 34.729931>,  <41.077888, 34.315754, 34.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281300, 34.381817, 34.729931>,  <41.620316, 34.491920, 34.911442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281300, 34.381817, 34.729931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440843, -0.110963, 0.890699,
		-0.295525, 0.954945, -0.027301,
		-0.847539, -0.275260, -0.453773,
		41.027039, 34.299240, 34.593800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019855, 34.809105, 35.304440>,  <41.620316, 34.491920, 34.911442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019855, 34.809105, 35.304440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897831, 34.483974, 35.105946>,  <40.824615, 34.288895, 34.986847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897831, 34.483974, 35.105946>,  <41.019855, 34.809105, 35.304440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897831, 34.483974, 35.105946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561068, -0.267643, 0.783307,
		-0.769508, 0.517377, -0.374405,
		-0.305058, -0.812828, -0.496237,
		40.806313, 34.240128, 34.957073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309742, 34.720100, 35.422825>,  <41.019855, 34.809105, 35.304440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309742, 34.720100, 35.422825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447762, 34.360298, 35.315624>,  <40.530575, 34.144417, 35.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447762, 34.360298, 35.315624>,  <40.309742, 34.720100, 35.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447762, 34.360298, 35.315624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526675, -0.421907, 0.737976,
		-0.776888, -0.113489, -0.619327,
		0.345050, -0.899508, -0.268002,
		40.551277, 34.090446, 35.235222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855408, 34.175186, 35.631599>,  <40.309742, 34.720100, 35.422825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855408, 34.175186, 35.631599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189995, 33.958233, 35.600266>,  <40.390747, 33.828060, 35.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189995, 33.958233, 35.600266>,  <39.855408, 34.175186, 35.631599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189995, 33.958233, 35.600266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345610, -0.633046, 0.692680,
		-0.425291, -0.552331, -0.716978,
		0.836469, -0.542386, -0.078337,
		40.440937, 33.795517, 35.576763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676392, 33.332642, 35.547760>,  <39.855408, 34.175186, 35.631599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676392, 33.332642, 35.547760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039604, 33.384193, 35.707195>,  <40.257530, 33.415123, 35.802856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039604, 33.384193, 35.707195>,  <39.676392, 33.332642, 35.547760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039604, 33.384193, 35.707195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193135, -0.715544, 0.671338,
		0.371731, -0.686576, -0.624844,
		0.908028, 0.128878, 0.398591,
		40.312012, 33.422855, 35.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789333, 32.694088, 35.779781>,  <39.676392, 33.332642, 35.547760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789333, 32.694088, 35.779781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119312, 32.862720, 35.930370>,  <40.317299, 32.963902, 36.020721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119312, 32.862720, 35.930370>,  <39.789333, 32.694088, 35.779781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119312, 32.862720, 35.930370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088430, -0.561596, 0.822672,
		0.558249, -0.711952, -0.426007,
		0.824947, 0.421585, 0.376469,
		40.366795, 32.989197, 36.043312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377853, 32.213783, 35.951359>,  <39.789333, 32.694088, 35.779781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377853, 32.213783, 35.951359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376953, 32.536720, 36.187389>,  <40.376411, 32.730484, 36.329010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.376953, 32.536720, 36.187389>,  <40.377853, 32.213783, 35.951359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376953, 32.536720, 36.187389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069469, -0.588783, 0.805300,
		0.997581, -0.039176, 0.057413,
		-0.002255, 0.807341, 0.590080,
		40.376278, 32.778923, 36.364414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883846, 32.073792, 36.337463>,  <40.377853, 32.213783, 35.951359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883846, 32.073792, 36.337463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617901, 32.323082, 36.502171>,  <40.458332, 32.472656, 36.600994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617901, 32.323082, 36.502171>,  <40.883846, 32.073792, 36.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617901, 32.323082, 36.502171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027978, -0.530084, 0.847484,
		0.746442, 0.574980, 0.334996,
		-0.664863, 0.623225, 0.411763,
		40.418442, 32.510048, 36.625698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949787, 31.888996, 37.015167>,  <40.883846, 32.073792, 36.337463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949787, 31.888996, 37.015167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651459, 32.152760, 37.052959>,  <40.472462, 32.311016, 37.075634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651459, 32.152760, 37.052959>,  <40.949787, 31.888996, 37.015167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651459, 32.152760, 37.052959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147951, -0.302262, 0.941673,
		0.649504, 0.688345, 0.322995,
		-0.745825, 0.659408, 0.094479,
		40.427711, 32.350582, 37.081303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054382, 32.188156, 37.681232>,  <40.949787, 31.888996, 37.015167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054382, 32.188156, 37.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674576, 32.261978, 37.579750>,  <40.446693, 32.306271, 37.518860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674576, 32.261978, 37.579750>,  <41.054382, 32.188156, 37.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674576, 32.261978, 37.579750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291625, -0.221019, 0.930648,
		0.115678, 0.957649, 0.263680,
		-0.949512, 0.184551, -0.253707,
		40.389721, 32.317345, 37.503639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773560, 32.461758, 38.334133>,  <41.054382, 32.188156, 37.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773560, 32.461758, 38.334133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489567, 32.343704, 38.078381>,  <40.319172, 32.272873, 37.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489567, 32.343704, 38.078381>,  <40.773560, 32.461758, 38.334133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489567, 32.343704, 38.078381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372049, -0.613681, 0.696402,
		-0.597912, 0.732318, 0.325900,
		-0.709986, -0.295137, -0.639386,
		40.276569, 32.255165, 37.886566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303947, 32.154099, 38.660969>,  <40.773560, 32.461758, 38.334133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303947, 32.154099, 38.660969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108101, 32.059975, 38.325134>,  <39.990593, 32.003502, 38.123634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108101, 32.059975, 38.325134>,  <40.303947, 32.154099, 38.660969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108101, 32.059975, 38.325134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489356, -0.722794, 0.487954,
		-0.721667, 0.649768, 0.238743,
		-0.489619, -0.235310, -0.839585,
		39.961216, 31.989382, 38.073257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581097, 32.044277, 38.875423>,  <40.303947, 32.154099, 38.660969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581097, 32.044277, 38.875423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711121, 31.799929, 38.586655>,  <39.789135, 31.653320, 38.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711121, 31.799929, 38.586655>,  <39.581097, 32.044277, 38.875423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711121, 31.799929, 38.586655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291745, -0.790922, 0.537891,
		-0.899568, 0.035772, -0.435314,
		0.325058, -0.610870, -0.721924,
		39.808640, 31.616667, 38.370079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004642, 31.692112, 38.596272>,  <39.581097, 32.044277, 38.875423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004642, 31.692112, 38.596272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349113, 31.491051, 38.566029>,  <39.555798, 31.370415, 38.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349113, 31.491051, 38.566029>,  <39.004642, 31.692112, 38.596272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349113, 31.491051, 38.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413931, -0.779818, 0.469622,
		-0.295018, -0.373130, -0.879624,
		0.861177, -0.502651, -0.075610,
		39.607468, 31.340256, 38.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899071, 31.050488, 38.238308>,  <39.004642, 31.692112, 38.596272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899071, 31.050488, 38.238308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202660, 31.006866, 38.495075>,  <39.384815, 30.980694, 38.649136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202660, 31.006866, 38.495075>,  <38.899071, 31.050488, 38.238308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202660, 31.006866, 38.495075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561280, -0.609285, 0.560122,
		0.330029, -0.785417, -0.523643,
		0.758977, -0.109054, 0.641920,
		39.430351, 30.974150, 38.687653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735184, 30.426567, 38.740475>,  <38.899071, 31.050488, 38.238308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735184, 30.426567, 38.740475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045403, 30.588921, 38.933880>,  <39.231533, 30.686333, 39.049923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045403, 30.588921, 38.933880>,  <38.735184, 30.426567, 38.740475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045403, 30.588921, 38.933880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282144, -0.462301, 0.840638,
		0.564730, -0.788375, -0.244019,
		0.775548, 0.405885, 0.483510,
		39.278069, 30.710686, 39.078934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929108, 29.905933, 39.240101>,  <38.735184, 30.426567, 38.740475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929108, 29.905933, 39.240101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087162, 30.238794, 39.395737>,  <39.181995, 30.438511, 39.489117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087162, 30.238794, 39.395737>,  <38.929108, 29.905933, 39.240101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087162, 30.238794, 39.395737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111099, -0.377154, 0.919463,
		0.911879, -0.406542, -0.056577,
		0.395138, 0.832153, 0.389085,
		39.205704, 30.488440, 39.512463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188229, 29.614376, 39.774910>,  <38.929108, 29.905933, 39.240101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188229, 29.614376, 39.774910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174641, 30.006308, 39.853687>,  <39.166489, 30.241467, 39.900951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174641, 30.006308, 39.853687>,  <39.188229, 29.614376, 39.774910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174641, 30.006308, 39.853687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029022, -0.197939, 0.979785,
		0.999001, 0.027570, 0.035161,
		-0.033972, 0.979827, 0.196941,
		39.164448, 30.300255, 39.912769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689930, 29.901712, 40.140476>,  <39.188229, 29.614376, 39.774910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689930, 29.901712, 40.140476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415604, 30.171829, 40.249027>,  <39.251007, 30.333899, 40.314156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415604, 30.171829, 40.249027>,  <39.689930, 29.901712, 40.140476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415604, 30.171829, 40.249027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006613, -0.367084, 0.930164,
		0.727748, 0.639714, 0.247285,
		-0.685813, 0.675290, 0.271375,
		39.209858, 30.374416, 40.330441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970142, 30.091433, 40.736481>,  <39.689930, 29.901712, 40.140476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970142, 30.091433, 40.736481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600689, 30.239231, 40.777233>,  <39.379017, 30.327911, 40.801685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600689, 30.239231, 40.777233>,  <39.970142, 30.091433, 40.736481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600689, 30.239231, 40.777233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021795, -0.214736, 0.976429,
		0.382665, 0.904079, 0.190284,
		-0.923630, 0.369498, 0.101877,
		39.323601, 30.350080, 40.807796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979088, 30.630665, 41.211830>,  <39.970142, 30.091433, 40.736481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979088, 30.630665, 41.211830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608852, 30.479288, 41.215038>,  <39.386711, 30.388462, 41.216961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608852, 30.479288, 41.215038>,  <39.979088, 30.630665, 41.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608852, 30.479288, 41.215038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084012, -0.184732, 0.979192,
		-0.369087, 0.907003, 0.202780,
		-0.925590, -0.378443, 0.008017,
		39.331177, 30.365755, 41.217442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570492, 30.868919, 41.859440>,  <39.979088, 30.630665, 41.211830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570492, 30.868919, 41.859440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401016, 30.541481, 41.704319>,  <39.299332, 30.345018, 41.611248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401016, 30.541481, 41.704319>,  <39.570492, 30.868919, 41.859440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401016, 30.541481, 41.704319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113762, -0.472827, 0.873781,
		-0.898634, 0.326097, 0.293457,
		-0.423692, -0.818594, -0.387801,
		39.273911, 30.295902, 41.587978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062057, 30.555193, 42.384022>,  <39.570492, 30.868919, 41.859440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062057, 30.555193, 42.384022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210247, 30.289387, 42.124432>,  <39.299160, 30.129904, 41.968678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210247, 30.289387, 42.124432>,  <39.062057, 30.555193, 42.384022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210247, 30.289387, 42.124432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234946, -0.608930, 0.757631,
		-0.898639, -0.433155, -0.069465,
		0.370471, -0.664516, -0.648976,
		39.321388, 30.090033, 41.929737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683262, 29.831425, 42.473434>,  <39.062057, 30.555193, 42.384022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683262, 29.831425, 42.473434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049603, 29.788971, 42.318539>,  <39.269405, 29.763498, 42.225601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049603, 29.788971, 42.318539>,  <38.683262, 29.831425, 42.473434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049603, 29.788971, 42.318539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212824, -0.689487, 0.692325,
		-0.340476, -0.716480, -0.608878,
		0.915850, -0.106136, -0.387238,
		39.324356, 29.757130, 42.202366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893665, 29.086498, 42.292793>,  <38.683262, 29.831425, 42.473434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893665, 29.086498, 42.292793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216713, 29.298170, 42.396889>,  <39.410542, 29.425173, 42.459347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216713, 29.298170, 42.396889>,  <38.893665, 29.086498, 42.292793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216713, 29.298170, 42.396889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235619, -0.694108, 0.680219,
		0.540592, -0.488039, -0.685258,
		0.807616, 0.529181, 0.260238,
		39.459000, 29.456924, 42.474960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454903, 28.630482, 42.109169>,  <38.893665, 29.086498, 42.292793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454903, 28.630482, 42.109169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515915, 28.892628, 42.405067>,  <39.552521, 29.049915, 42.582607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515915, 28.892628, 42.405067>,  <39.454903, 28.630482, 42.109169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515915, 28.892628, 42.405067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455388, -0.710917, 0.535927,
		0.877130, 0.255128, -0.406882,
		0.152529, 0.655367, 0.739749,
		39.561672, 29.089237, 42.626991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234100, 29.159752, 41.518978>,  <39.454903, 28.630482, 42.109169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234100, 29.159752, 41.518978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107899, 29.501905, 41.683304>,  <39.032177, 29.707197, 41.781898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107899, 29.501905, 41.683304>,  <39.234100, 29.159752, 41.518978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107899, 29.501905, 41.683304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174463, 0.373261, -0.911174,
		-0.932747, -0.359155, 0.031466,
		-0.315508, 0.855385, 0.410818,
		39.013245, 29.758520, 41.806549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550091, 29.338337, 41.294785>,  <39.234100, 29.159752, 41.518978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550091, 29.338337, 41.294785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722996, 29.674326, 41.425995>,  <38.826736, 29.875919, 41.504719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722996, 29.674326, 41.425995>,  <38.550091, 29.338337, 41.294785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722996, 29.674326, 41.425995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166041, 0.431682, -0.886612,
		-0.886331, 0.328781, 0.326068,
		0.432259, 0.839973, 0.328022,
		38.852673, 29.926317, 41.524403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093124, 29.985798, 41.084690>,  <38.550091, 29.338337, 41.294785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093124, 29.985798, 41.084690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478733, 30.084660, 41.123825>,  <38.710098, 30.143976, 41.147305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478733, 30.084660, 41.123825>,  <38.093124, 29.985798, 41.084690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478733, 30.084660, 41.123825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030804, 0.469463, -0.882415,
		-0.264022, 0.847656, 0.460188,
		0.964025, 0.247152, 0.097837,
		38.767941, 30.158806, 41.153175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130211, 30.786585, 41.017647>,  <38.093124, 29.985798, 41.084690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130211, 30.786585, 41.017647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492592, 30.633505, 40.945206>,  <38.710018, 30.541656, 40.901741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492592, 30.633505, 40.945206>,  <38.130211, 30.786585, 41.017647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492592, 30.633505, 40.945206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001253, 0.430172, -0.902746,
		0.423386, 0.817614, 0.390193,
		0.905948, -0.382699, -0.181104,
		38.764378, 30.518696, 40.890873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386932, 31.342661, 40.624538>,  <38.130211, 30.786585, 41.017647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386932, 31.342661, 40.624538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617073, 31.028009, 40.534931>,  <38.755157, 30.839218, 40.481167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617073, 31.028009, 40.534931>,  <38.386932, 31.342661, 40.624538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617073, 31.028009, 40.534931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238938, 0.423599, -0.873769,
		0.782225, 0.449201, 0.431675,
		0.575355, -0.786627, -0.224019,
		38.789680, 30.792021, 40.467724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799515, 31.551519, 40.134262>,  <38.386932, 31.342661, 40.624538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799515, 31.551519, 40.134262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940655, 31.177332, 40.126297>,  <39.025337, 30.952820, 40.121517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940655, 31.177332, 40.126297>,  <38.799515, 31.551519, 40.134262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940655, 31.177332, 40.126297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555657, 0.226618, -0.799930,
		0.752823, 0.271187, 0.599762,
		0.352848, -0.935468, -0.019916,
		39.046509, 30.896690, 40.120323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513756, 31.635277, 39.941616>,  <38.799515, 31.551519, 40.134262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513756, 31.635277, 39.941616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463654, 31.256227, 39.824093>,  <39.433594, 31.028797, 39.753578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463654, 31.256227, 39.824093>,  <39.513756, 31.635277, 39.941616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463654, 31.256227, 39.824093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408400, 0.220639, -0.885736,
		0.904169, -0.230932, 0.359373,
		-0.125253, -0.947623, -0.293808,
		39.426079, 30.971941, 39.735950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138859, 31.391727, 39.739349>,  <39.513756, 31.635277, 39.941616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138859, 31.391727, 39.739349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871239, 31.176058, 39.534737>,  <39.710667, 31.046656, 39.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871239, 31.176058, 39.534737>,  <40.138859, 31.391727, 39.739349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871239, 31.176058, 39.534737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447984, 0.256614, -0.856422,
		0.593027, -0.802146, 0.069855,
		-0.669050, -0.539176, -0.511528,
		39.670525, 31.014305, 39.381279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498123, 30.833374, 39.303722>,  <40.138859, 31.391727, 39.739349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498123, 30.833374, 39.303722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133007, 30.922802, 39.167004>,  <39.913937, 30.976460, 39.084972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133007, 30.922802, 39.167004>,  <40.498123, 30.833374, 39.303722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133007, 30.922802, 39.167004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406952, 0.426968, -0.807520,
		-0.034603, -0.876193, -0.480716,
		-0.912794, 0.223571, -0.341794,
		39.859169, 30.989874, 39.064465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455124, 30.566490, 38.642220>,  <40.498123, 30.833374, 39.303722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455124, 30.566490, 38.642220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230804, 30.890785, 38.709404>,  <40.096214, 31.085361, 38.749714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230804, 30.890785, 38.709404>,  <40.455124, 30.566490, 38.642220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230804, 30.890785, 38.709404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357123, 0.419879, -0.834365,
		-0.746973, -0.407930, -0.525001,
		-0.560799, 0.810737, 0.167957,
		40.062565, 31.134007, 38.759792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662148, 30.908739, 37.956234>,  <40.455124, 30.566490, 38.642220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662148, 30.908739, 37.956234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286934, 30.973860, 38.078598>,  <40.061806, 31.012932, 38.152016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286934, 30.973860, 38.078598>,  <40.662148, 30.908739, 37.956234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286934, 30.973860, 38.078598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097612, 0.722894, -0.684029,
		-0.332503, -0.671505, -0.662210,
		-0.938037, 0.162802, 0.305912,
		40.005524, 31.022699, 38.170372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360783, 31.088650, 37.282768>,  <40.662148, 30.908739, 37.956234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360783, 31.088650, 37.282768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140858, 31.226229, 37.587242>,  <40.008904, 31.308777, 37.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140858, 31.226229, 37.587242>,  <40.360783, 31.088650, 37.282768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140858, 31.226229, 37.587242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085870, 0.883183, -0.461100,
		-0.830862, -0.318882, -0.456051,
		-0.549814, 0.343949, 0.761186,
		39.975914, 31.329414, 37.815598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591431, 31.243685, 37.163898>,  <40.360783, 31.088650, 37.282768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591431, 31.243685, 37.163898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760464, 31.470942, 37.446354>,  <39.861885, 31.607296, 37.615829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760464, 31.470942, 37.446354>,  <39.591431, 31.243685, 37.163898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760464, 31.470942, 37.446354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154131, 0.812828, -0.561742,
		-0.893122, 0.128544, 0.431056,
		0.422583, 0.568143, 0.706143,
		39.887238, 31.641384, 37.658195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162098, 31.830664, 37.287151>,  <39.591431, 31.243685, 37.163898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162098, 31.830664, 37.287151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537403, 31.927816, 37.385677>,  <39.762585, 31.986109, 37.444794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537403, 31.927816, 37.385677>,  <39.162098, 31.830664, 37.287151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537403, 31.927816, 37.385677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052344, 0.803537, -0.592948,
		-0.341939, 0.543448, 0.766643,
		0.938263, 0.242881, 0.246314,
		39.818882, 32.000679, 37.459572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125851, 32.472969, 37.128300>,  <39.162098, 31.830664, 37.287151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125851, 32.472969, 37.128300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511662, 32.411865, 37.214420>,  <39.743149, 32.375202, 37.266090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511662, 32.411865, 37.214420>,  <39.125851, 32.472969, 37.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511662, 32.411865, 37.214420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259178, 0.702941, -0.662344,
		-0.050159, 0.694649, 0.717598,
		0.964526, -0.152763, 0.215297,
		39.801018, 32.366035, 37.279011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391342, 33.101440, 37.103691>,  <39.125851, 32.472969, 37.128300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391342, 33.101440, 37.103691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718212, 32.871250, 37.090660>,  <39.914333, 32.733135, 37.082844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718212, 32.871250, 37.090660>,  <39.391342, 33.101440, 37.103691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718212, 32.871250, 37.090660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458413, 0.683126, -0.568504,
		0.349411, 0.449633, 0.822035,
		0.817172, -0.575473, -0.032574,
		39.963364, 32.698608, 37.080887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948101, 33.526520, 37.426567>,  <39.391342, 33.101440, 37.103691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948101, 33.526520, 37.426567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 33.233921, 37.205692>,  <40.204105, 33.058361, 37.073170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108105, 33.233921, 37.205692>,  <39.948101, 33.526520, 37.426567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108105, 33.233921, 37.205692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361664, 0.679576, -0.638260,
		0.842135, 0.055604, 0.536392,
		0.400009, -0.731495, -0.552185,
		40.228107, 33.014473, 37.040035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479813, 33.874271, 37.086803>,  <39.948101, 33.526520, 37.426567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479813, 33.874271, 37.086803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463223, 33.527325, 36.888428>,  <40.453266, 33.319157, 36.769402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463223, 33.527325, 36.888428>,  <40.479813, 33.874271, 37.086803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463223, 33.527325, 36.888428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341459, 0.454172, -0.822881,
		0.938981, -0.203473, 0.277332,
		-0.041477, -0.867367, -0.495937,
		40.450779, 33.267113, 36.739647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082493, 33.818798, 36.709591>,  <40.479813, 33.874271, 37.086803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082493, 33.818798, 36.709591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827812, 33.570026, 36.527245>,  <40.675003, 33.420765, 36.417835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827812, 33.570026, 36.527245>,  <41.082493, 33.818798, 36.709591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827812, 33.570026, 36.527245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328905, 0.315675, -0.890040,
		0.697446, -0.716628, 0.003564,
		-0.636703, -0.621927, -0.455869,
		40.636803, 33.383450, 36.390484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488907, 33.380276, 36.328827>,  <41.082493, 33.818798, 36.709591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488907, 33.380276, 36.328827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120502, 33.415016, 36.176937>,  <40.899460, 33.435860, 36.085804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120502, 33.415016, 36.176937>,  <41.488907, 33.380276, 36.328827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120502, 33.415016, 36.176937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388735, 0.267364, -0.881704,
		0.024947, -0.959673, -0.280008,
		-0.921012, 0.086853, -0.379728,
		40.844200, 33.441071, 36.063019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539284, 33.169777, 35.634251>,  <41.488907, 33.380276, 36.328827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539284, 33.169777, 35.634251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193233, 33.369339, 35.613632>,  <40.985603, 33.489075, 35.601261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193233, 33.369339, 35.613632>,  <41.539284, 33.169777, 35.634251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193233, 33.369339, 35.613632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244507, 0.329781, -0.911845,
		-0.437921, -0.801463, -0.407287,
		-0.865125, 0.498901, -0.051545,
		40.933697, 33.519009, 35.598167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.372986, 33.131573, 34.958588>,  <41.539284, 33.169777, 35.634251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.372986, 33.131573, 34.958588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167427, 33.443565, 35.101437>,  <41.044090, 33.630760, 35.187145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167427, 33.443565, 35.101437>,  <41.372986, 33.131573, 34.958588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167427, 33.443565, 35.101437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258395, 0.537702, -0.802564,
		-0.818012, -0.320156, -0.477867,
		-0.513896, 0.779985, 0.357119,
		41.013260, 33.677563, 35.208572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954693, 33.306519, 34.432194>,  <41.372986, 33.131573, 34.958588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.954693, 33.306519, 34.432194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032585, 33.623264, 34.663719>,  <41.079319, 33.813313, 34.802635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032585, 33.623264, 34.663719>,  <40.954693, 33.306519, 34.432194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032585, 33.623264, 34.663719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036049, 0.583935, -0.810999,
		-0.980194, 0.178792, 0.085164,
		0.194730, 0.791867, 0.578816,
		41.091003, 33.860825, 34.837364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865253, 33.187771, 33.770401>,  <40.954693, 33.306519, 34.432194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865253, 33.187771, 33.770401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162529, 33.454937, 33.786198>,  <41.340893, 33.615238, 33.795677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162529, 33.454937, 33.786198>,  <40.865253, 33.187771, 33.770401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162529, 33.454937, 33.786198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631244, 0.719500, -0.289570,
		-0.221825, 0.190274, 0.956342,
		0.743186, 0.667919, 0.039494,
		41.385483, 33.655312, 33.798046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213634, 32.467518, 33.733761>,  <40.865253, 33.187771, 33.770401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213634, 32.467518, 33.733761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515591, 32.660549, 33.911415>,  <41.696766, 32.776367, 34.018005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515591, 32.660549, 33.911415>,  <41.213634, 32.467518, 33.733761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515591, 32.660549, 33.911415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255439, -0.840051, 0.478607,
		0.604063, -0.247847, -0.757417,
		0.754890, 0.482582, 0.444134,
		41.742058, 32.805325, 34.044655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002186, 32.214630, 33.649422>,  <41.213634, 32.467518, 33.733761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002186, 32.214630, 33.649422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933807, 32.395592, 33.999531>,  <41.892780, 32.504169, 34.209595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.933807, 32.395592, 33.999531>,  <42.002186, 32.214630, 33.649422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933807, 32.395592, 33.999531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253979, -0.838096, 0.482794,
		0.951984, 0.304832, 0.028365,
		-0.170944, 0.452408, 0.875274,
		41.882523, 32.531315, 34.262112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585876, 32.109837, 34.142109>,  <42.002186, 32.214630, 33.649422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585876, 32.109837, 34.142109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243267, 32.198608, 34.328491>,  <42.037701, 32.251873, 34.440319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243267, 32.198608, 34.328491>,  <42.585876, 32.109837, 34.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243267, 32.198608, 34.328491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062042, -0.851997, 0.519857,
		0.512363, 0.474179, 0.715988,
		-0.856525, 0.221934, 0.465951,
		41.986309, 32.265190, 34.468277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736305, 32.434460, 34.760090>,  <42.585876, 32.109837, 34.142109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736305, 32.434460, 34.760090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748428, 32.612236, 35.118210>,  <42.755703, 32.718903, 35.333080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748428, 32.612236, 35.118210>,  <42.736305, 32.434460, 34.760090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748428, 32.612236, 35.118210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213033, -0.878000, 0.428640,
		0.976575, 0.177737, -0.121288,
		0.030306, 0.444437, 0.895297,
		42.757519, 32.745567, 35.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326054, 32.179714, 35.081841>,  <42.736305, 32.434460, 34.760090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326054, 32.179714, 35.081841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056957, 32.315994, 35.344547>,  <42.895500, 32.397762, 35.502171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056957, 32.315994, 35.344547>,  <43.326054, 32.179714, 35.081841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056957, 32.315994, 35.344547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188182, -0.779686, 0.597226,
		0.715551, 0.525367, 0.460409,
		-0.672737, 0.340705, 0.656769,
		42.855137, 32.418205, 35.541576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587856, 32.317509, 35.846905>,  <43.326054, 32.179714, 35.081841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587856, 32.317509, 35.846905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207638, 32.195076, 35.825840>,  <42.979507, 32.121616, 35.813202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207638, 32.195076, 35.825840>,  <43.587856, 32.317509, 35.846905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207638, 32.195076, 35.825840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224566, -0.794483, 0.564240,
		-0.214538, 0.524512, 0.823930,
		-0.950549, -0.306078, -0.052659,
		42.922474, 32.103252, 35.810043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715145, 32.884670, 35.370121>,  <43.587856, 32.317509, 35.846905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715145, 32.884670, 35.370121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394356, 33.073837, 35.516102>,  <43.201881, 33.187336, 35.603691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394356, 33.073837, 35.516102>,  <43.715145, 32.884670, 35.370121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394356, 33.073837, 35.516102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420514, 0.013022, 0.907193,
		0.424276, 0.881010, -0.209312,
		-0.801971, 0.472919, 0.364952,
		43.153763, 33.215714, 35.625587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098984, 33.266151, 35.727661>,  <43.715145, 32.884670, 35.370121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098984, 33.266151, 35.727661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721912, 33.269993, 35.861084>,  <43.495670, 33.272297, 35.941139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721912, 33.269993, 35.861084>,  <44.098984, 33.266151, 35.727661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721912, 33.269993, 35.861084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333630, 0.006790, 0.942679,
		0.006790, 0.999931, -0.009606,
		-0.942679, 0.009606, 0.333561,
		43.439110, 33.272873, 35.961151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394459, 33.716576, 36.310619>,  <44.098984, 33.266151, 35.727661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394459, 33.716576, 36.310619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606079, 33.835239, 35.992599>,  <44.733051, 33.906437, 35.801788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606079, 33.835239, 35.992599>,  <44.394459, 33.716576, 36.310619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606079, 33.835239, 35.992599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848059, 0.218005, -0.482980,
		0.030046, 0.929768, 0.366918,
		0.529049, 0.296656, -0.795048,
		44.764793, 33.924236, 35.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090405, 34.304371, 36.085155>,  <44.394459, 33.716576, 36.310619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090405, 34.304371, 36.085155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279633, 34.201305, 35.748154>,  <44.393169, 34.139465, 35.545952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.279633, 34.201305, 35.748154>,  <44.090405, 34.304371, 36.085155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.279633, 34.201305, 35.748154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806532, 0.258181, -0.531835,
		0.354555, 0.931101, -0.085679,
		0.473072, -0.257668, -0.842502,
		44.421555, 34.124004, 35.495403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049358, 34.888325, 35.520203>,  <44.090405, 34.304371, 36.085155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049358, 34.888325, 35.520203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087887, 34.526333, 35.354443>,  <44.111004, 34.309135, 35.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087887, 34.526333, 35.354443>,  <44.049358, 34.888325, 35.520203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087887, 34.526333, 35.354443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851982, 0.140299, -0.504423,
		0.514635, 0.401648, -0.757516,
		0.096322, -0.904983, -0.414400,
		44.116783, 34.254837, 35.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635830, 34.801136, 35.050228>,  <44.049358, 34.888325, 35.520203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635830, 34.801136, 35.050228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837601, 34.496838, 35.213600>,  <44.958664, 34.314259, 35.311623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837601, 34.496838, 35.213600>,  <44.635830, 34.801136, 35.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837601, 34.496838, 35.213600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837390, 0.315662, -0.446247,
		0.210556, 0.567113, 0.796272,
		0.504425, -0.760750, 0.408430,
		44.988930, 34.268612, 35.336128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201668, 35.124283, 35.038265>,  <44.635830, 34.801136, 35.050228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201668, 35.124283, 35.038265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264153, 34.735527, 35.108727>,  <45.301643, 34.502274, 35.151005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264153, 34.735527, 35.108727>,  <45.201668, 35.124283, 35.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264153, 34.735527, 35.108727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906209, 0.070079, -0.416981,
		0.392915, 0.224769, 0.891682,
		0.156213, -0.971889, 0.176153,
		45.311016, 34.443962, 35.161572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.802624, 35.096249, 35.342136>,  <45.201668, 35.124283, 35.038265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.802624, 35.096249, 35.342136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756935, 34.742130, 35.161827>,  <45.729523, 34.529659, 35.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756935, 34.742130, 35.161827>,  <45.802624, 35.096249, 35.342136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756935, 34.742130, 35.161827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898670, 0.101345, -0.426756,
		0.423490, -0.453844, 0.784016,
		-0.114224, -0.885299, -0.450775,
		45.722668, 34.476540, 35.026596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.200363, 34.508400, 35.505802>,  <45.802624, 35.096249, 35.342136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.200363, 34.508400, 35.505802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127068, 34.475403, 35.113960>,  <46.083088, 34.455605, 34.878857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.127068, 34.475403, 35.113960>,  <46.200363, 34.508400, 35.505802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.127068, 34.475403, 35.113960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924372, 0.324707, -0.200255,
		0.334602, -0.942211, 0.016751,
		-0.183243, -0.082490, -0.979601,
		46.072094, 34.450657, 34.820080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622257, 33.963364, 35.131931>,  <46.200363, 34.508400, 35.505802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622257, 33.963364, 35.131931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530922, 34.262955, 34.883125>,  <46.476120, 34.442707, 34.733841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530922, 34.262955, 34.883125>,  <46.622257, 33.963364, 35.131931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530922, 34.262955, 34.883125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936897, 0.342768, 0.068799,
		0.264734, -0.567051, -0.779980,
		-0.228339, 0.748975, -0.622011,
		46.462421, 34.487648, 34.696522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.171230, 33.962147, 34.639034>,  <46.622257, 33.963364, 35.131931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.171230, 33.962147, 34.639034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982639, 34.314884, 34.641945>,  <46.869484, 34.526527, 34.643692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.982639, 34.314884, 34.641945>,  <47.171230, 33.962147, 34.639034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982639, 34.314884, 34.641945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864696, 0.460658, 0.200235,
		0.173226, 0.100697, -0.979721,
		-0.471479, 0.881847, 0.007274,
		46.841194, 34.579437, 34.644127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.572731, 34.452911, 34.316708>,  <47.171230, 33.962147, 34.639034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.572731, 34.452911, 34.316708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342850, 34.640007, 34.585316>,  <47.204922, 34.752266, 34.746479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.342850, 34.640007, 34.585316>,  <47.572731, 34.452911, 34.316708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.342850, 34.640007, 34.585316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815063, 0.400736, 0.418429,
		-0.073386, 0.787802, -0.611541,
		-0.574706, 0.467738, 0.671517,
		47.170437, 34.780327, 34.786770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.044804, 34.917511, 34.388287>,  <47.572731, 34.452911, 34.316708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.044804, 34.917511, 34.388287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792076, 34.976543, 34.692661>,  <47.640438, 35.011963, 34.875286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792076, 34.976543, 34.692661>,  <48.044804, 34.917511, 34.388287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792076, 34.976543, 34.692661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679114, 0.578625, 0.451661,
		-0.373637, 0.802130, -0.465814,
		-0.631823, 0.147583, 0.760933,
		47.602528, 35.020817, 34.920940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.500107, 32.544559, 25.297701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274818, 32.846516, 25.163292>,  <40.139645, 33.027691, 25.082645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274818, 32.846516, 25.163292>,  <40.500107, 32.544559, 25.297701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274818, 32.846516, 25.163292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389210, 0.116355, 0.913771,
		0.728898, 0.645443, 0.228278,
		-0.563226, 0.754894, -0.336024,
		40.105850, 33.072983, 25.062485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494743, 33.127407, 25.826994>,  <40.500107, 32.544559, 25.297701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494743, 33.127407, 25.826994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166584, 33.225506, 25.620384>,  <39.969688, 33.284367, 25.496418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.166584, 33.225506, 25.620384>,  <40.494743, 33.127407, 25.826994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166584, 33.225506, 25.620384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458670, 0.257126, 0.850593,
		0.341416, 0.934741, -0.098460,
		-0.820400, 0.245246, -0.516524,
		39.920464, 33.299080, 25.465427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211285, 33.846081, 26.070110>,  <40.494743, 33.127407, 25.826994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211285, 33.846081, 26.070110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898827, 33.669205, 25.893803>,  <39.711349, 33.563080, 25.788017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898827, 33.669205, 25.893803>,  <40.211285, 33.846081, 26.070110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898827, 33.669205, 25.893803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549813, 0.152690, 0.821214,
		-0.295830, 0.883830, -0.362394,
		-0.781147, -0.442188, -0.440771,
		39.664482, 33.536549, 25.761572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629333, 34.337322, 26.036972>,  <40.211285, 33.846081, 26.070110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629333, 34.337322, 26.036972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476524, 33.967896, 26.023783>,  <39.384838, 33.746239, 26.015869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476524, 33.967896, 26.023783>,  <39.629333, 34.337322, 26.036972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476524, 33.967896, 26.023783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651360, 0.243772, 0.718544,
		-0.655583, 0.295978, -0.694699,
		-0.382021, -0.923565, -0.032975,
		39.361919, 33.690826, 26.013889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972500, 34.330517, 26.012747>,  <39.629333, 34.337322, 26.036972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972500, 34.330517, 26.012747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000793, 33.958740, 26.157600>,  <39.017769, 33.735676, 26.244513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.000793, 33.958740, 26.157600>,  <38.972500, 34.330517, 26.012747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000793, 33.958740, 26.157600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645631, 0.234081, 0.726888,
		-0.760367, -0.285217, -0.583519,
		0.070730, -0.929439, 0.362132,
		39.022011, 33.679909, 26.266239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243412, 34.171154, 26.157326>,  <38.972500, 34.330517, 26.012747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243412, 34.171154, 26.157326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470970, 33.895481, 26.336830>,  <38.607506, 33.730076, 26.444532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470970, 33.895481, 26.336830>,  <38.243412, 34.171154, 26.157326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470970, 33.895481, 26.336830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521359, 0.119784, 0.844889,
		-0.636036, -0.714619, -0.291166,
		0.568896, -0.689181, 0.448760,
		38.641640, 33.688728, 26.471458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819603, 33.710548, 26.564917>,  <38.243412, 34.171154, 26.157326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819603, 33.710548, 26.564917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179893, 33.659187, 26.730906>,  <38.396069, 33.628372, 26.830500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.179893, 33.659187, 26.730906>,  <37.819603, 33.710548, 26.564917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179893, 33.659187, 26.730906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407897, 0.078480, 0.909649,
		-0.149369, -0.988612, 0.018314,
		0.900727, -0.128403, 0.414975,
		38.450111, 33.620667, 26.855398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686245, 33.234310, 27.199173>,  <37.819603, 33.710548, 26.564917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686245, 33.234310, 27.199173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039356, 33.412174, 27.259819>,  <38.251221, 33.518890, 27.296207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039356, 33.412174, 27.259819>,  <37.686245, 33.234310, 27.199173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039356, 33.412174, 27.259819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135779, -0.067469, 0.988439,
		0.449745, -0.893157, 0.000815,
		0.882776, 0.444656, 0.151616,
		38.304188, 33.545570, 27.305304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146355, 32.771393, 27.639929>,  <37.686245, 33.234310, 27.199173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146355, 32.771393, 27.639929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291477, 33.136696, 27.714039>,  <38.378551, 33.355877, 27.758505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291477, 33.136696, 27.714039>,  <38.146355, 32.771393, 27.639929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291477, 33.136696, 27.714039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028523, -0.187848, 0.981784,
		0.931427, -0.361485, -0.042104,
		0.362809, 0.913259, 0.185277,
		38.400318, 33.410675, 27.769623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645573, 32.703983, 28.116850>,  <38.146355, 32.771393, 27.639929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645573, 32.703983, 28.116850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507542, 33.078457, 28.143620>,  <38.424721, 33.303143, 28.159681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507542, 33.078457, 28.143620>,  <38.645573, 32.703983, 28.116850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507542, 33.078457, 28.143620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071273, -0.044960, 0.996443,
		0.935863, 0.348624, -0.051210,
		-0.345082, 0.936184, 0.066924,
		38.404018, 33.359310, 28.163696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069733, 32.970974, 28.659224>,  <38.645573, 32.703983, 28.116850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069733, 32.970974, 28.659224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773602, 33.239170, 28.639805>,  <38.595921, 33.400089, 28.628155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773602, 33.239170, 28.639805>,  <39.069733, 32.970974, 28.659224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773602, 33.239170, 28.639805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071526, 0.150369, 0.986039,
		0.668428, 0.726522, -0.159280,
		-0.740330, 0.670489, -0.048545,
		38.551502, 33.440315, 28.625240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211536, 33.271988, 29.287758>,  <39.069733, 32.970974, 28.659224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211536, 33.271988, 29.287758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855930, 33.415382, 29.173815>,  <38.642567, 33.501419, 29.105450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855930, 33.415382, 29.173815>,  <39.211536, 33.271988, 29.287758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855930, 33.415382, 29.173815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259101, 0.119069, 0.958483,
		0.377523, 0.925910, -0.012968,
		-0.889012, 0.358489, -0.284855,
		38.589226, 33.522930, 29.088358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130280, 34.006824, 29.688568>,  <39.211536, 33.271988, 29.287758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130280, 34.006824, 29.688568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781612, 33.850723, 29.569983>,  <38.572411, 33.757061, 29.498831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781612, 33.850723, 29.569983>,  <39.130280, 34.006824, 29.688568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781612, 33.850723, 29.569983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384105, 0.168297, 0.907821,
		-0.304388, 0.905194, -0.296599,
		-0.871671, -0.390255, -0.296462,
		38.520111, 33.733646, 29.481045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628517, 34.359882, 29.966043>,  <39.130280, 34.006824, 29.688568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628517, 34.359882, 29.966043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393990, 34.045830, 29.886250>,  <38.253273, 33.857399, 29.838373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.393990, 34.045830, 29.886250>,  <38.628517, 34.359882, 29.966043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393990, 34.045830, 29.886250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398792, 0.065407, 0.914706,
		-0.705117, 0.615866, -0.351454,
		-0.586324, -0.785131, -0.199483,
		38.218094, 33.810291, 29.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988934, 34.610485, 30.111240>,  <38.628517, 34.359882, 29.966043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988934, 34.610485, 30.111240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966076, 34.211143, 30.113245>,  <37.952362, 33.971539, 30.114449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966076, 34.211143, 30.113245>,  <37.988934, 34.610485, 30.111240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966076, 34.211143, 30.113245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437950, 0.029578, 0.898513,
		-0.897181, 0.049152, -0.438919,
		-0.057146, -0.998353, 0.005011,
		37.948933, 33.911636, 30.114748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371449, 34.431446, 30.323103>,  <37.988934, 34.610485, 30.111240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371449, 34.431446, 30.323103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564610, 34.089333, 30.398254>,  <37.680504, 33.884064, 30.443346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564610, 34.089333, 30.398254>,  <37.371449, 34.431446, 30.323103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564610, 34.089333, 30.398254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398238, -0.023414, 0.916983,
		-0.779881, -0.517631, -0.351913,
		0.482899, -0.855283, 0.187880,
		37.709480, 33.832748, 30.454618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934052, 33.830715, 30.520052>,  <37.371449, 34.431446, 30.323103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934052, 33.830715, 30.520052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286255, 33.724072, 30.676836>,  <37.497578, 33.660088, 30.770906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286255, 33.724072, 30.676836>,  <36.934052, 33.830715, 30.520052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286255, 33.724072, 30.676836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437511, -0.138768, 0.888441,
		-0.182474, -0.953763, -0.238830,
		0.880504, -0.266608, 0.391960,
		37.550407, 33.644089, 30.794424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769505, 33.439003, 31.160484>,  <36.934052, 33.830715, 30.520052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769505, 33.439003, 31.160484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165611, 33.466743, 31.208744>,  <37.403275, 33.483387, 31.237700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.165611, 33.466743, 31.208744>,  <36.769505, 33.439003, 31.160484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165611, 33.466743, 31.208744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116948, -0.055147, 0.991606,
		0.075421, -0.996067, -0.046500,
		0.990270, 0.069350, 0.120648,
		37.462692, 33.487549, 31.244938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979870, 32.826023, 31.636808>,  <36.769505, 33.439003, 31.160484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979870, 32.826023, 31.636808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284119, 33.085506, 31.626713>,  <37.466667, 33.241196, 31.620655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284119, 33.085506, 31.626713>,  <36.979870, 32.826023, 31.636808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284119, 33.085506, 31.626713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058049, -0.029236, 0.997886,
		0.646595, -0.760478, -0.059894,
		0.760621, 0.648705, -0.025241,
		37.512306, 33.280117, 31.619141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697060, 32.514774, 31.838875>,  <36.979870, 32.826023, 31.636808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697060, 32.514774, 31.838875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676556, 32.905121, 31.923782>,  <37.664253, 33.139328, 31.974728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676556, 32.905121, 31.923782>,  <37.697060, 32.514774, 31.838875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676556, 32.905121, 31.923782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014787, -0.213267, 0.976882,
		0.998576, 0.046938, 0.025362,
		-0.051262, 0.975866, 0.212269,
		37.661179, 33.197880, 31.987463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073204, 32.608868, 32.500614>,  <37.697060, 32.514774, 31.838875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073204, 32.608868, 32.500614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889236, 32.963596, 32.482624>,  <37.778858, 33.176434, 32.471832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889236, 32.963596, 32.482624>,  <38.073204, 32.608868, 32.500614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889236, 32.963596, 32.482624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020624, 0.061300, 0.997906,
		0.887722, 0.458027, -0.046483,
		-0.459917, 0.886822, -0.044971,
		37.751263, 33.229645, 32.469131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451725, 33.064167, 33.002888>,  <38.073204, 32.608868, 32.500614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451725, 33.064167, 33.002888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094788, 33.231369, 32.934765>,  <37.880627, 33.331688, 32.893890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094788, 33.231369, 32.934765>,  <38.451725, 33.064167, 33.002888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094788, 33.231369, 32.934765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171538, 0.034939, 0.984558,
		0.417498, 0.907774, 0.040526,
		-0.892340, 0.418002, -0.170304,
		37.827087, 33.356770, 32.883675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198048, 33.021412, 33.143738>,  <38.451725, 33.064167, 33.002888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198048, 33.021412, 33.143738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321175, 32.697140, 33.342957>,  <39.395050, 32.502575, 33.462486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321175, 32.697140, 33.342957>,  <39.198048, 33.021412, 33.143738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321175, 32.697140, 33.342957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541550, -0.281112, -0.792275,
		0.782288, 0.513589, 0.352493,
		0.307814, -0.810680, 0.498045,
		39.413517, 32.453938, 33.492371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949623, 32.980156, 33.135361>,  <39.198048, 33.021412, 33.143738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949623, 32.980156, 33.135361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803429, 32.611507, 33.187580>,  <39.715714, 32.390320, 33.218910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.803429, 32.611507, 33.187580>,  <39.949623, 32.980156, 33.135361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803429, 32.611507, 33.187580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620983, -0.345896, -0.703375,
		0.693398, -0.176005, 0.698728,
		-0.365485, -0.921617, 0.130547,
		39.693783, 32.335022, 33.226746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491581, 32.592770, 32.980221>,  <39.949623, 32.980156, 33.135361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491581, 32.592770, 32.980221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183815, 32.337444, 32.970791>,  <39.999157, 32.184250, 32.965134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183815, 32.337444, 32.970791>,  <40.491581, 32.592770, 32.980221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183815, 32.337444, 32.970791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427779, -0.487525, -0.761134,
		0.474348, -0.595714, 0.648166,
		-0.769415, -0.638314, -0.023577,
		39.952991, 32.145950, 32.963718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736835, 32.004860, 32.874405>,  <40.491581, 32.592770, 32.980221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736835, 32.004860, 32.874405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363342, 31.947800, 32.743076>,  <40.139248, 31.913565, 32.664280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.363342, 31.947800, 32.743076>,  <40.736835, 32.004860, 32.874405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363342, 31.947800, 32.743076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357508, -0.418327, -0.834980,
		-0.018237, -0.897025, 0.441603,
		-0.933732, -0.142648, -0.328323,
		40.083221, 31.905005, 32.644581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801178, 31.438906, 32.454025>,  <40.736835, 32.004860, 32.874405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801178, 31.438906, 32.454025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444027, 31.569803, 32.330296>,  <40.229736, 31.648342, 32.256058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.444027, 31.569803, 32.330296>,  <40.801178, 31.438906, 32.454025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444027, 31.569803, 32.330296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208486, -0.308451, -0.928112,
		-0.399133, -0.893179, 0.207182,
		-0.892875, 0.327246, -0.309328,
		40.176163, 31.667976, 32.237499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617989, 30.983063, 31.962603>,  <40.801178, 31.438906, 32.454025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617989, 30.983063, 31.962603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388340, 31.298750, 31.875412>,  <40.250549, 31.488163, 31.823097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.388340, 31.298750, 31.875412>,  <40.617989, 30.983063, 31.962603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388340, 31.298750, 31.875412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198038, -0.124468, -0.972259,
		-0.794457, -0.601366, -0.084835,
		-0.574125, 0.789218, -0.217978,
		40.216103, 31.535515, 31.810019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130459, 30.800299, 31.441435>,  <40.617989, 30.983063, 31.962603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130459, 30.800299, 31.441435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155243, 31.197844, 31.404779>,  <40.170113, 31.436371, 31.382786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.155243, 31.197844, 31.404779>,  <40.130459, 30.800299, 31.441435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155243, 31.197844, 31.404779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160305, -0.100533, -0.981934,
		-0.985121, 0.046153, -0.165550,
		0.061963, 0.993863, -0.091639,
		40.173832, 31.496002, 31.377287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788876, 30.926586, 30.779360>,  <40.130459, 30.800299, 31.441435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788876, 30.926586, 30.779360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.995026, 31.253094, 30.883738>,  <40.118717, 31.448997, 30.946365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.995026, 31.253094, 30.883738>,  <39.788876, 30.926586, 30.779360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995026, 31.253094, 30.883738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186974, 0.190058, -0.963804,
		-0.836317, 0.545514, -0.054669,
		0.515378, 0.816267, 0.260946,
		40.149639, 31.497974, 30.962021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437630, 31.548191, 30.451887>,  <39.788876, 30.926586, 30.779360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437630, 31.548191, 30.451887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828175, 31.596804, 30.523390>,  <40.062500, 31.625971, 30.566292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828175, 31.596804, 30.523390>,  <39.437630, 31.548191, 30.451887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828175, 31.596804, 30.523390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155575, 0.179036, -0.971464,
		-0.150067, 0.976307, 0.155896,
		0.976359, 0.121531, 0.178756,
		40.121082, 31.633263, 30.577017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533623, 31.958572, 29.972012>,  <39.437630, 31.548191, 30.451887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533623, 31.958572, 29.972012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 31.884134, 30.072111>,  <40.141705, 31.839472, 30.132172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913673, 31.884134, 30.072111>,  <39.533623, 31.958572, 29.972012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913673, 31.884134, 30.072111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249707, -0.026733, -0.967952,
		0.186820, 0.982168, 0.021069,
		0.950129, -0.186094, 0.250248,
		40.198711, 31.828306, 30.147186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871326, 32.413204, 29.583332>,  <39.533623, 31.958572, 29.972012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871326, 32.413204, 29.583332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.145664, 32.140553, 29.685320>,  <40.310265, 31.976963, 29.746511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.145664, 32.140553, 29.685320>,  <39.871326, 32.413204, 29.583332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145664, 32.140553, 29.685320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282737, -0.073262, -0.956395,
		0.670582, 0.728025, 0.142475,
		0.685842, -0.681625, 0.254968,
		40.351418, 31.936066, 29.761810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499619, 32.719517, 29.379276>,  <39.871326, 32.413204, 29.583332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499619, 32.719517, 29.379276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570621, 32.326031, 29.390600>,  <40.613224, 32.089939, 29.397394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570621, 32.326031, 29.390600>,  <40.499619, 32.719517, 29.379276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570621, 32.326031, 29.390600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564622, 0.078239, -0.821633,
		0.806036, 0.161827, 0.569313,
		0.177505, -0.983713, 0.028308,
		40.623875, 32.030918, 29.399092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199284, 32.641335, 29.172668>,  <40.499619, 32.719517, 29.379276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199284, 32.641335, 29.172668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064137, 32.269306, 29.114969>,  <40.983047, 32.046089, 29.080349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.064137, 32.269306, 29.114969>,  <41.199284, 32.641335, 29.172668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064137, 32.269306, 29.114969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569577, -0.080039, -0.818031,
		0.749283, -0.358550, 0.556791,
		-0.337870, -0.930073, -0.144250,
		40.962776, 31.990284, 29.071693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735767, 32.266415, 29.204163>,  <41.199284, 32.641335, 29.172668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735767, 32.266415, 29.204163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.464504, 32.083664, 28.973907>,  <41.301746, 31.974012, 28.835754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.464504, 32.083664, 28.973907>,  <41.735767, 32.266415, 29.204163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464504, 32.083664, 28.973907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635657, 0.028452, -0.771447,
		0.368837, -0.889073, 0.271124,
		-0.678159, -0.456880, -0.575640,
		41.261055, 31.946600, 28.801216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106586, 31.802563, 28.872091>,  <41.735767, 32.266415, 29.204163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106586, 31.802563, 28.872091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787449, 31.823193, 28.631828>,  <41.595966, 31.835571, 28.487671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.787449, 31.823193, 28.631828>,  <42.106586, 31.802563, 28.872091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787449, 31.823193, 28.631828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595626, -0.086540, -0.798586,
		-0.093198, -0.994910, 0.038303,
		-0.797837, 0.051612, -0.600660,
		41.548096, 31.838665, 28.451632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438480, 31.480125, 28.337048>,  <42.106586, 31.802563, 28.872091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438480, 31.480125, 28.337048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098007, 31.642729, 28.204241>,  <41.893723, 31.740290, 28.124557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.098007, 31.642729, 28.204241>,  <42.438480, 31.480125, 28.337048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098007, 31.642729, 28.204241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406251, 0.109729, -0.907149,
		-0.332330, -0.907035, -0.258543,
		-0.851186, 0.406507, -0.332017,
		41.842651, 31.764681, 28.104635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201157, 31.153835, 27.697771>,  <42.438480, 31.480125, 28.337048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201157, 31.153835, 27.697771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.010822, 31.505404, 27.710953>,  <41.896622, 31.716345, 27.718861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.010822, 31.505404, 27.710953>,  <42.201157, 31.153835, 27.697771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010822, 31.505404, 27.710953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285428, 0.189747, -0.939429,
		-0.831934, -0.437605, -0.341155,
		-0.475832, 0.878919, 0.032952,
		41.868073, 31.769079, 27.720839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709404, 31.089186, 27.123396>,  <42.201157, 31.153835, 27.697771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709404, 31.089186, 27.123396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.753662, 31.479359, 27.199598>,  <41.780216, 31.713463, 27.245319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.753662, 31.479359, 27.199598>,  <41.709404, 31.089186, 27.123396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753662, 31.479359, 27.199598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281036, 0.153154, -0.947398,
		-0.953297, 0.158366, -0.257185,
		0.110647, 0.975430, 0.190508,
		41.786858, 31.771988, 27.256750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.493893, 31.367716, 26.513208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681850, 31.678169, 26.681406>,  <41.794624, 31.864441, 26.782324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681850, 31.678169, 26.681406>,  <41.493893, 31.367716, 26.513208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681850, 31.678169, 26.681406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210972, 0.363808, -0.907268,
		-0.857141, 0.515032, 0.007208,
		0.469894, 0.776135, 0.420492,
		41.822819, 31.911011, 26.807554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194786, 31.963196, 26.292967>,  <41.493893, 31.367716, 26.513208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194786, 31.963196, 26.292967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.571972, 32.040794, 26.401180>,  <41.798283, 32.087353, 26.466108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.571972, 32.040794, 26.401180>,  <41.194786, 31.963196, 26.292967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571972, 32.040794, 26.401180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182381, 0.378793, -0.907333,
		-0.278493, 0.904921, 0.321806,
		0.942963, 0.193995, 0.270532,
		41.854862, 32.098991, 26.482340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287861, 32.543453, 26.024076>,  <41.194786, 31.963196, 26.292967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287861, 32.543453, 26.024076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661648, 32.410702, 26.075657>,  <41.885921, 32.331051, 26.106606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.661648, 32.410702, 26.075657>,  <41.287861, 32.543453, 26.024076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661648, 32.410702, 26.075657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243703, 0.332148, -0.911201,
		0.259576, 0.882913, 0.391261,
		0.934467, -0.331877, 0.128952,
		41.941986, 32.311138, 26.114342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680511, 33.105728, 25.833740>,  <41.287861, 32.543453, 26.024076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680511, 33.105728, 25.833740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905876, 32.777340, 25.796709>,  <42.041096, 32.580307, 25.774490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905876, 32.777340, 25.796709>,  <41.680511, 33.105728, 25.833740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905876, 32.777340, 25.796709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205302, 0.247665, -0.946844,
		0.800261, 0.514457, 0.308085,
		0.563412, -0.820973, -0.092577,
		42.074902, 32.531048, 25.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247242, 33.366882, 25.602703>,  <41.680511, 33.105728, 25.833740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247242, 33.366882, 25.602703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286930, 32.981377, 25.503660>,  <42.310745, 32.750072, 25.444235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.286930, 32.981377, 25.503660>,  <42.247242, 33.366882, 25.602703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286930, 32.981377, 25.503660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538305, 0.261268, -0.801228,
		0.836889, -0.053789, 0.544724,
		0.099222, -0.963766, -0.247607,
		42.316696, 32.692245, 25.429379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861935, 33.311089, 25.257223>,  <42.247242, 33.366882, 25.602703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861935, 33.311089, 25.257223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.718430, 32.945316, 25.182281>,  <42.632328, 32.725853, 25.137316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.718430, 32.945316, 25.182281>,  <42.861935, 33.311089, 25.257223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718430, 32.945316, 25.182281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435364, 0.013621, -0.900152,
		0.825680, -0.404508, 0.393224,
		-0.358763, -0.914433, -0.187354,
		42.610802, 32.670986, 25.126076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411442, 33.055309, 25.006548>,  <42.861935, 33.311089, 25.257223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411442, 33.055309, 25.006548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085224, 32.854465, 24.891466>,  <42.889492, 32.733959, 24.822416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.085224, 32.854465, 24.891466>,  <43.411442, 33.055309, 25.006548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085224, 32.854465, 24.891466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243707, 0.152926, -0.957716,
		0.524874, -0.851177, -0.002351,
		-0.815545, -0.502107, -0.287704,
		42.840561, 32.703835, 24.805155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698452, 32.499180, 24.593988>,  <43.411442, 33.055309, 25.006548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698452, 32.499180, 24.593988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317192, 32.573780, 24.498716>,  <43.088436, 32.618538, 24.441553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.317192, 32.573780, 24.498716>,  <43.698452, 32.499180, 24.593988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317192, 32.573780, 24.498716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234884, -0.039899, -0.971204,
		-0.190634, -0.981644, -0.005776,
		-0.953146, 0.186501, -0.238178,
		43.031246, 32.629730, 24.427263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499744, 31.998934, 24.070347>,  <43.698452, 32.499180, 24.593988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499744, 31.998934, 24.070347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265526, 32.322155, 24.044464>,  <43.124996, 32.516087, 24.028934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.265526, 32.322155, 24.044464>,  <43.499744, 31.998934, 24.070347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265526, 32.322155, 24.044464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024169, -0.062387, -0.997759,
		-0.810278, -0.585799, 0.017000,
		-0.585547, 0.808052, -0.064709,
		43.089863, 32.564571, 24.025051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126923, 31.817451, 23.509062>,  <43.499744, 31.998934, 24.070347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126923, 31.817451, 23.509062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102184, 32.213657, 23.558142>,  <43.087341, 32.451382, 23.587589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.102184, 32.213657, 23.558142>,  <43.126923, 31.817451, 23.509062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102184, 32.213657, 23.558142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245830, 0.134262, -0.959970,
		-0.967338, -0.029203, -0.251801,
		-0.061841, 0.990515, 0.122698,
		43.083633, 32.510811, 23.594952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897339, 31.891821, 22.917799>,  <43.126923, 31.817451, 23.509062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897339, 31.891821, 22.917799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985924, 32.253681, 23.063433>,  <43.039074, 32.470798, 23.150814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.985924, 32.253681, 23.063433>,  <42.897339, 31.891821, 22.917799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985924, 32.253681, 23.063433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418302, 0.249136, -0.873473,
		-0.880896, 0.345739, -0.323244,
		0.221461, 0.904653, 0.364086,
		43.052361, 32.525078, 23.172659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648727, 32.362068, 22.410715>,  <42.897339, 31.891821, 22.917799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648727, 32.362068, 22.410715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901379, 32.583027, 22.628305>,  <43.052967, 32.715603, 22.758860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.901379, 32.583027, 22.628305>,  <42.648727, 32.362068, 22.410715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901379, 32.583027, 22.628305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373440, 0.398113, -0.837883,
		-0.679407, 0.732370, 0.045171,
		0.631624, 0.552395, 0.543977,
		43.090866, 32.748745, 22.791498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626965, 33.109550, 22.135101>,  <42.648727, 32.362068, 22.410715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626965, 33.109550, 22.135101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978241, 33.067848, 22.321827>,  <43.189007, 33.042828, 22.433863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978241, 33.067848, 22.321827>,  <42.626965, 33.109550, 22.135101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978241, 33.067848, 22.321827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469611, 0.373244, -0.800097,
		-0.090821, 0.921857, 0.376738,
		0.878190, -0.104255, 0.466813,
		43.241699, 33.036572, 22.461870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056606, 33.747253, 22.002022>,  <42.626965, 33.109550, 22.135101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056606, 33.747253, 22.002022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.334843, 33.480713, 22.109449>,  <43.501785, 33.320789, 22.173906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.334843, 33.480713, 22.109449>,  <43.056606, 33.747253, 22.002022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334843, 33.480713, 22.109449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502563, 0.184163, -0.844698,
		0.513404, 0.722538, 0.462985,
		0.695591, -0.666351, 0.268571,
		43.543518, 33.280807, 22.190022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700665, 34.089268, 21.997524>,  <43.056606, 33.747253, 22.002022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700665, 34.089268, 21.997524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.779751, 33.701942, 21.936495>,  <43.827202, 33.469547, 21.899878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.779751, 33.701942, 21.936495>,  <43.700665, 34.089268, 21.997524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779751, 33.701942, 21.936495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595131, 0.242250, -0.766247,
		0.778927, 0.060697, 0.624170,
		0.197714, -0.968313, -0.152572,
		43.839066, 33.411449, 21.890722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348099, 34.090672, 21.895117>,  <43.700665, 34.089268, 21.997524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348099, 34.090672, 21.895117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237404, 33.746223, 21.724524>,  <44.170986, 33.539555, 21.622168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.237404, 33.746223, 21.724524>,  <44.348099, 34.090672, 21.895117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237404, 33.746223, 21.724524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582141, 0.202879, -0.787370,
		0.764546, -0.466165, 0.445151,
		-0.276733, -0.861121, -0.426484,
		44.154385, 33.487888, 21.596579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822186, 33.745056, 21.566444>,  <44.348099, 34.090672, 21.895117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822186, 33.745056, 21.566444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.572342, 33.541645, 21.329374>,  <44.422436, 33.419598, 21.187132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.572342, 33.541645, 21.329374>,  <44.822186, 33.745056, 21.566444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572342, 33.541645, 21.329374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598537, 0.175744, -0.781580,
		0.501618, -0.842917, 0.194605,
		-0.624606, -0.508533, -0.592674,
		44.384960, 33.389084, 21.151573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326733, 33.336864, 21.142504>,  <44.822186, 33.745056, 21.566444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326733, 33.336864, 21.142504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.975777, 33.369484, 20.953384>,  <44.765202, 33.389057, 20.839912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.975777, 33.369484, 20.953384>,  <45.326733, 33.336864, 21.142504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975777, 33.369484, 20.953384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479636, 0.124998, -0.868519,
		-0.011731, -0.988800, -0.148787,
		-0.877389, 0.081552, -0.472798,
		44.712559, 33.393948, 20.811544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451981, 33.040516, 20.554703>,  <45.326733, 33.336864, 21.142504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451981, 33.040516, 20.554703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.105015, 33.209240, 20.449120>,  <44.896835, 33.310474, 20.385769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.105015, 33.209240, 20.449120>,  <45.451981, 33.040516, 20.554703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.105015, 33.209240, 20.449120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339608, 0.114143, -0.933615,
		-0.363675, -0.899473, -0.242258,
		-0.867414, 0.421806, -0.263957,
		44.844791, 33.335781, 20.369932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274551, 32.757286, 19.849932>,  <45.451981, 33.040516, 20.554703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274551, 32.757286, 19.849932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.053543, 33.087189, 19.898083>,  <44.920937, 33.285130, 19.926973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.053543, 33.087189, 19.898083>,  <45.274551, 32.757286, 19.849932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053543, 33.087189, 19.898083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217054, 0.281817, -0.934595,
		-0.804739, -0.490258, -0.334728,
		-0.552525, 0.824759, 0.120376,
		44.887787, 33.334618, 19.934196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891315, 32.756172, 19.211327>,  <45.274551, 32.757286, 19.849932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891315, 32.756172, 19.211327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899792, 33.125069, 19.365738>,  <44.904877, 33.346409, 19.458384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.899792, 33.125069, 19.365738>,  <44.891315, 32.756172, 19.211327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.899792, 33.125069, 19.365738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103519, 0.382014, -0.918340,
		-0.994402, 0.059423, -0.087374,
		0.021192, 0.922244, 0.386027,
		44.906151, 33.401741, 19.481546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439209, 33.232773, 18.693035>,  <44.891315, 32.756172, 19.211327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439209, 33.232773, 18.693035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.722340, 33.430283, 18.895094>,  <44.892216, 33.548786, 19.016329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.722340, 33.430283, 18.895094>,  <44.439209, 33.232773, 18.693035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.722340, 33.430283, 18.895094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280177, 0.460212, -0.842440,
		-0.648448, 0.737831, 0.187406,
		0.707825, 0.493772, 0.505147,
		44.934689, 33.578415, 19.046638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376549, 33.956028, 18.633924>,  <44.439209, 33.232773, 18.693035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376549, 33.956028, 18.633924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.760193, 33.857849, 18.690308>,  <44.990379, 33.798943, 18.724136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.760193, 33.857849, 18.690308>,  <44.376549, 33.956028, 18.633924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760193, 33.857849, 18.690308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237772, 0.428511, -0.871690,
		0.153554, 0.869559, 0.469349,
		0.959107, -0.245449, 0.140957,
		45.047924, 33.784214, 18.732595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756573, 34.438953, 18.431906>,  <44.376549, 33.956028, 18.633924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756573, 34.438953, 18.431906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.715454, 34.822937, 18.327663>,  <43.690781, 35.053326, 18.265118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.715454, 34.822937, 18.327663>,  <43.756573, 34.438953, 18.431906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715454, 34.822937, 18.327663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605228, 0.147551, 0.782258,
		0.789387, 0.238142, 0.565825,
		-0.102800, 0.959957, -0.260605,
		43.684612, 35.110924, 18.249481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025158, 35.045357, 18.961113>,  <43.756573, 34.438953, 18.431906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025158, 35.045357, 18.961113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722527, 35.163002, 18.727501>,  <43.540947, 35.233589, 18.587334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722527, 35.163002, 18.727501>,  <44.025158, 35.045357, 18.961113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722527, 35.163002, 18.727501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575087, 0.125828, 0.808358,
		0.311236, 0.947451, 0.073943,
		-0.756576, 0.294114, -0.584029,
		43.495552, 35.251236, 18.552292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764259, 35.723698, 19.227827>,  <44.025158, 35.045357, 18.961113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764259, 35.723698, 19.227827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466835, 35.553776, 19.021273>,  <43.288380, 35.451824, 18.897339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466835, 35.553776, 19.021273>,  <43.764259, 35.723698, 19.227827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466835, 35.553776, 19.021273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585441, 0.040468, 0.809704,
		-0.323069, 0.904380, -0.278789,
		-0.743562, -0.424805, -0.516387,
		43.243767, 35.426334, 18.866356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175488, 36.133907, 19.362247>,  <43.764259, 35.723698, 19.227827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175488, 36.133907, 19.362247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048340, 35.772797, 19.246353>,  <42.972050, 35.556129, 19.176817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.048340, 35.772797, 19.246353>,  <43.175488, 36.133907, 19.362247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048340, 35.772797, 19.246353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653156, -0.013007, 0.757112,
		-0.687275, 0.429903, -0.585522,
		-0.317869, -0.902781, -0.289734,
		42.952980, 35.501961, 19.159433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495014, 36.173737, 19.456354>,  <43.175488, 36.133907, 19.362247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495014, 36.173737, 19.456354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566490, 35.781265, 19.427080>,  <42.609375, 35.545780, 19.409515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.566490, 35.781265, 19.427080>,  <42.495014, 36.173737, 19.456354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566490, 35.781265, 19.427080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729306, -0.182012, 0.659533,
		-0.660441, -0.064476, -0.748104,
		0.178688, -0.981180, -0.073185,
		42.620098, 35.486912, 19.405125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795097, 35.937057, 19.353418>,  <42.495014, 36.173737, 19.456354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795097, 35.937057, 19.353418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041546, 35.644527, 19.470419>,  <42.189415, 35.469009, 19.540619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041546, 35.644527, 19.470419>,  <41.795097, 35.937057, 19.353418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041546, 35.644527, 19.470419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667598, -0.287802, 0.686646,
		-0.417979, -0.618332, -0.665552,
		0.616122, -0.731324, 0.292502,
		42.226383, 35.425129, 19.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378872, 35.624580, 19.793484>,  <41.795097, 35.937057, 19.353418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378872, 35.624580, 19.793484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.720455, 35.433987, 19.877129>,  <41.925404, 35.319630, 19.927315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.720455, 35.433987, 19.877129>,  <41.378872, 35.624580, 19.793484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720455, 35.433987, 19.877129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415197, -0.381716, 0.825775,
		-0.313643, -0.791998, -0.523801,
		0.853956, -0.476479, 0.209112,
		41.976643, 35.291042, 19.939861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247486, 34.942074, 20.030586>,  <41.378872, 35.624580, 19.793484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247486, 34.942074, 20.030586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.604286, 35.032040, 20.187428>,  <41.818367, 35.086018, 20.281532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.604286, 35.032040, 20.187428>,  <41.247486, 34.942074, 20.030586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604286, 35.032040, 20.187428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325040, -0.283664, 0.902155,
		0.314132, -0.932174, -0.179923,
		0.892003, 0.224914, 0.392101,
		41.871887, 35.099514, 20.305058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427952, 34.358997, 20.418997>,  <41.247486, 34.942074, 20.030586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427952, 34.358997, 20.418997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638340, 34.668964, 20.559208>,  <41.764572, 34.854942, 20.643335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.638340, 34.668964, 20.559208>,  <41.427952, 34.358997, 20.418997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638340, 34.668964, 20.559208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281549, -0.230263, 0.931509,
		0.802552, -0.588633, 0.097066,
		0.525966, 0.774913, 0.350527,
		41.796131, 34.901440, 20.664366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750973, 33.963921, 20.928202>,  <41.427952, 34.358997, 20.418997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750973, 33.963921, 20.928202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805973, 34.344841, 21.037170>,  <41.838974, 34.573395, 21.102552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805973, 34.344841, 21.037170>,  <41.750973, 33.963921, 20.928202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805973, 34.344841, 21.037170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107344, -0.259088, 0.959870,
		0.984668, -0.161223, 0.066600,
		0.137498, 0.952303, 0.272423,
		41.847221, 34.630531, 21.118896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206306, 33.972385, 21.515368>,  <41.750973, 33.963921, 20.928202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206306, 33.972385, 21.515368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021576, 34.327068, 21.523932>,  <41.910736, 34.539879, 21.529070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021576, 34.327068, 21.523932>,  <42.206306, 33.972385, 21.515368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021576, 34.327068, 21.523932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113478, -0.083009, 0.990067,
		0.879681, 0.454809, 0.138958,
		-0.461827, 0.886712, 0.021411,
		41.883026, 34.593082, 21.530355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483616, 34.279652, 22.019999>,  <42.206306, 33.972385, 21.515368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483616, 34.279652, 22.019999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.137527, 34.472973, 21.966625>,  <41.929874, 34.588966, 21.934601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.137527, 34.472973, 21.966625>,  <42.483616, 34.279652, 22.019999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137527, 34.472973, 21.966625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104828, 0.085872, 0.990776,
		0.490302, 0.871232, -0.023635,
		-0.865225, 0.483302, -0.133433,
		41.877960, 34.617962, 21.926596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375835, 34.562603, 22.686602>,  <42.483616, 34.279652, 22.019999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375835, 34.562603, 22.686602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.017590, 34.576828, 22.509237>,  <41.802643, 34.585365, 22.402819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.017590, 34.576828, 22.509237>,  <42.375835, 34.562603, 22.686602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017590, 34.576828, 22.509237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429375, -0.329646, 0.840816,
		-0.116264, 0.943435, 0.310506,
		-0.895612, 0.035566, -0.443413,
		41.748905, 34.587498, 22.376213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930386, 34.815762, 23.267454>,  <42.375835, 34.562603, 22.686602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930386, 34.815762, 23.267454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719826, 34.639645, 22.976511>,  <41.593491, 34.533974, 22.801945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.719826, 34.639645, 22.976511>,  <41.930386, 34.815762, 23.267454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719826, 34.639645, 22.976511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570539, -0.451351, 0.686125,
		-0.630389, 0.776160, -0.013615,
		-0.526398, -0.440293, -0.727356,
		41.561905, 34.507557, 22.758305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308483, 34.877834, 23.514626>,  <41.930386, 34.815762, 23.267454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308483, 34.877834, 23.514626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276859, 34.601608, 23.227051>,  <41.257885, 34.435875, 23.054506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.276859, 34.601608, 23.227051>,  <41.308483, 34.877834, 23.514626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276859, 34.601608, 23.227051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606537, -0.539016, 0.584444,
		-0.791115, 0.482270, -0.376236,
		-0.079062, -0.690563, -0.718937,
		41.253139, 34.394440, 23.011370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610771, 34.823250, 23.357271>,  <41.308483, 34.877834, 23.514626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610771, 34.823250, 23.357271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761772, 34.476208, 23.227810>,  <40.852375, 34.267982, 23.150133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.761772, 34.476208, 23.227810>,  <40.610771, 34.823250, 23.357271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761772, 34.476208, 23.227810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575093, -0.493601, 0.652400,
		-0.725781, -0.060154, -0.685291,
		0.377505, -0.867606, -0.323652,
		40.875023, 34.215927, 23.130714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030056, 34.397232, 23.279690>,  <40.610771, 34.823250, 23.357271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030056, 34.397232, 23.279690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338497, 34.143990, 23.306759>,  <40.523560, 33.992043, 23.323000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.338497, 34.143990, 23.306759>,  <40.030056, 34.397232, 23.279690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338497, 34.143990, 23.306759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513974, -0.556196, 0.653052,
		-0.375812, -0.538351, -0.754283,
		0.771101, -0.633107, 0.067674,
		40.569828, 33.954056, 23.327061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803528, 33.835075, 23.170483>,  <40.030056, 34.397232, 23.279690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803528, 33.835075, 23.170483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134972, 33.741020, 23.373707>,  <40.333836, 33.684589, 23.495642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.134972, 33.741020, 23.373707>,  <39.803528, 33.835075, 23.170483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134972, 33.741020, 23.373707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558051, -0.419266, 0.716097,
		0.044633, -0.876885, -0.478623,
		0.828605, -0.235135, 0.508060,
		40.383553, 33.670479, 23.526125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735210, 33.143616, 23.378843>,  <39.803528, 33.835075, 23.170483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735210, 33.143616, 23.378843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008144, 33.300350, 23.625708>,  <40.171906, 33.394390, 23.773827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.008144, 33.300350, 23.625708>,  <39.735210, 33.143616, 23.378843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008144, 33.300350, 23.625708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583946, -0.215753, 0.782597,
		0.439801, -0.894381, 0.081594,
		0.682336, 0.391833, 0.617159,
		40.212845, 33.417900, 23.810856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900253, 32.608334, 23.907787>,  <39.735210, 33.143616, 23.378843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900253, 32.608334, 23.907787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002335, 32.958179, 24.072670>,  <40.063583, 33.168087, 24.171598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.002335, 32.958179, 24.072670>,  <39.900253, 32.608334, 23.907787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002335, 32.958179, 24.072670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319510, -0.326088, 0.889708,
		0.912570, -0.358760, 0.196230,
		0.255204, 0.874618, 0.412206,
		40.078896, 33.220566, 24.196331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212631, 32.391041, 24.625708>,  <39.900253, 32.608334, 23.907787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212631, 32.391041, 24.625708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.135292, 32.782921, 24.646923>,  <40.088890, 33.018047, 24.659653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.135292, 32.782921, 24.646923>,  <40.212631, 32.391041, 24.625708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135292, 32.782921, 24.646923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520720, -0.148281, 0.840752,
		0.831545, 0.134939, 0.538817,
		-0.193346, 0.979696, 0.053037,
		40.077290, 33.076828, 24.662834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.077358, 30.808739, 29.327049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924671, 31.178078, 29.343643>,  <40.833057, 31.399681, 29.353600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.924671, 31.178078, 29.343643>,  <41.077358, 30.808739, 29.327049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924671, 31.178078, 29.343643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324897, -0.176063, 0.929217,
		0.865292, 0.341225, 0.367199,
		-0.381722, 0.923346, 0.041483,
		40.810154, 31.455082, 29.356089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213657, 31.008450, 30.070700>,  <41.077358, 30.808739, 29.327049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213657, 31.008450, 30.070700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963413, 31.307737, 29.982355>,  <40.813267, 31.487310, 29.929348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963413, 31.307737, 29.982355>,  <41.213657, 31.008450, 30.070700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963413, 31.307737, 29.982355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201378, 0.118626, 0.972304,
		0.753695, 0.652761, 0.076461,
		-0.625612, 0.748218, -0.220860,
		40.775730, 31.532204, 29.916098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388790, 31.464241, 30.558048>,  <41.213657, 31.008450, 30.070700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388790, 31.464241, 30.558048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030453, 31.567436, 30.413322>,  <40.815453, 31.629354, 30.326487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030453, 31.567436, 30.413322>,  <41.388790, 31.464241, 30.558048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030453, 31.567436, 30.413322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302096, 0.243555, 0.921639,
		0.325895, 0.934945, -0.140248,
		-0.895841, 0.257989, -0.361816,
		40.761700, 31.644833, 30.304777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293205, 32.068073, 30.910273>,  <41.388790, 31.464241, 30.558048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293205, 32.068073, 30.910273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940804, 31.920475, 30.791834>,  <40.729362, 31.831915, 30.720770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940804, 31.920475, 30.791834>,  <41.293205, 32.068073, 30.910273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940804, 31.920475, 30.791834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374697, 0.162091, 0.912868,
		-0.288851, 0.915187, -0.281065,
		-0.881003, -0.368998, -0.296098,
		40.676502, 31.809776, 30.703005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901760, 32.497406, 31.202085>,  <41.293205, 32.068073, 30.910273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901760, 32.497406, 31.202085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669594, 32.180325, 31.127535>,  <40.530293, 31.990076, 31.082804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.669594, 32.180325, 31.127535>,  <40.901760, 32.497406, 31.202085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669594, 32.180325, 31.127535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464303, 0.134128, 0.875461,
		-0.668982, 0.594669, -0.445905,
		-0.580418, -0.792703, -0.186377,
		40.495468, 31.942514, 31.071621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222195, 32.745583, 31.290701>,  <40.901760, 32.497406, 31.202085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222195, 32.745583, 31.290701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204975, 32.348072, 31.331810>,  <40.194645, 32.109566, 31.356476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.204975, 32.348072, 31.331810>,  <40.222195, 32.745583, 31.290701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204975, 32.348072, 31.331810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550073, 0.109448, 0.827914,
		-0.834006, -0.020891, -0.551359,
		-0.043050, -0.993773, 0.102772,
		40.192059, 32.049942, 31.362642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523956, 32.593796, 31.451250>,  <40.222195, 32.745583, 31.290701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523956, 32.593796, 31.451250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715931, 32.262325, 31.566458>,  <39.831116, 32.063442, 31.635582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715931, 32.262325, 31.566458>,  <39.523956, 32.593796, 31.451250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715931, 32.262325, 31.566458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465434, 0.037780, 0.884276,
		-0.743660, -0.558451, -0.367563,
		0.479938, -0.828677, 0.288018,
		39.859913, 32.013721, 31.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034122, 32.174717, 31.792482>,  <39.523956, 32.593796, 31.451250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034122, 32.174717, 31.792482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380859, 32.024326, 31.923464>,  <39.588902, 31.934093, 32.002052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380859, 32.024326, 31.923464>,  <39.034122, 32.174717, 31.792482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380859, 32.024326, 31.923464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388587, -0.097971, 0.916189,
		-0.312382, -0.921437, -0.231024,
		0.866843, -0.375974, 0.327454,
		39.640911, 31.911535, 32.021702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857246, 31.695005, 32.293186>,  <39.034122, 32.174717, 31.792482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857246, 31.695005, 32.293186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237576, 31.761078, 32.397991>,  <39.465775, 31.800720, 32.460873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237576, 31.761078, 32.397991>,  <38.857246, 31.695005, 32.293186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237576, 31.761078, 32.397991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263938, -0.010569, 0.964482,
		0.162084, -0.986206, 0.033548,
		0.950823, 0.165182, 0.262010,
		39.522823, 31.810633, 32.476593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960251, 31.330074, 32.902412>,  <38.857246, 31.695005, 32.293186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960251, 31.330074, 32.902412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272827, 31.579184, 32.917904>,  <39.460373, 31.728649, 32.927200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272827, 31.579184, 32.917904>,  <38.960251, 31.330074, 32.902412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272827, 31.579184, 32.917904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259751, 0.268235, 0.927674,
		0.567340, -0.734986, 0.371376,
		0.781444, 0.622772, 0.038732,
		39.507259, 31.766016, 32.929523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244698, 31.148632, 33.569843>,  <38.960251, 31.330074, 32.902412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244698, 31.148632, 33.569843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371773, 31.511293, 33.458805>,  <39.448017, 31.728889, 33.392181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371773, 31.511293, 33.458805>,  <39.244698, 31.148632, 33.569843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371773, 31.511293, 33.458805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232282, 0.358253, 0.904267,
		0.919305, -0.222792, 0.324411,
		0.317685, 0.906652, -0.277593,
		39.467079, 31.783289, 33.375526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707581, 31.360685, 34.162903>,  <39.244698, 31.148632, 33.569843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707581, 31.360685, 34.162903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619709, 31.693731, 33.959534>,  <39.566986, 31.893559, 33.837513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619709, 31.693731, 33.959534>,  <39.707581, 31.360685, 34.162903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619709, 31.693731, 33.959534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061630, 0.508272, 0.858988,
		0.973625, 0.220032, -0.060341,
		-0.219675, 0.832613, -0.508427,
		39.553806, 31.943516, 33.807007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287933, 31.921864, 34.274509>,  <39.707581, 31.360685, 34.162903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287933, 31.921864, 34.274509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915531, 32.042294, 34.191971>,  <39.692089, 32.114552, 34.142448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915531, 32.042294, 34.191971>,  <40.287933, 31.921864, 34.274509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915531, 32.042294, 34.191971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028085, 0.504567, 0.862916,
		0.363916, 0.809177, -0.461300,
		-0.931008, 0.301073, -0.206345,
		39.636230, 32.132614, 34.130066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230721, 32.584759, 34.183643>,  <40.287933, 31.921864, 34.274509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230721, 32.584759, 34.183643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879173, 32.442768, 34.311138>,  <39.668247, 32.357574, 34.387634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.879173, 32.442768, 34.311138>,  <40.230721, 32.584759, 34.183643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879173, 32.442768, 34.311138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204657, 0.322976, 0.924014,
		-0.430946, 0.877313, -0.211203,
		-0.878864, -0.354976, 0.318733,
		39.615513, 32.336277, 34.406757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188751, 33.357918, 34.260574>,  <40.230721, 32.584759, 34.183643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188751, 33.357918, 34.260574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375816, 33.639629, 34.474220>,  <40.488056, 33.808659, 34.602409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.375816, 33.639629, 34.474220>,  <40.188751, 33.357918, 34.260574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375816, 33.639629, 34.474220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249432, 0.474558, -0.844144,
		-0.847984, 0.527999, 0.046262,
		0.467661, 0.704282, 0.534117,
		40.516113, 33.850914, 34.634457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029465, 33.889168, 33.894550>,  <40.188751, 33.357918, 34.260574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029465, 33.889168, 33.894550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315228, 34.058838, 34.117157>,  <40.486683, 34.160641, 34.250721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315228, 34.058838, 34.117157>,  <40.029465, 33.889168, 33.894550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315228, 34.058838, 34.117157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332706, 0.493756, -0.803437,
		-0.615577, 0.759133, 0.211617,
		0.714403, 0.424172, 0.556514,
		40.529549, 34.186089, 34.284111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068256, 34.621418, 33.752674>,  <40.029465, 33.889168, 33.894550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068256, 34.621418, 33.752674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427177, 34.542912, 33.910824>,  <40.642532, 34.495808, 34.005714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.427177, 34.542912, 33.910824>,  <40.068256, 34.621418, 33.752674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427177, 34.542912, 33.910824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436069, 0.533042, -0.725059,
		-0.068445, 0.823010, 0.563888,
		0.897307, -0.196267, 0.395373,
		40.696369, 34.484032, 34.029434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407940, 35.128342, 33.872807>,  <40.068256, 34.621418, 33.752674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407940, 35.128342, 33.872807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727528, 34.888332, 33.856762>,  <40.919281, 34.744328, 33.847134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727528, 34.888332, 33.856762>,  <40.407940, 35.128342, 33.872807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727528, 34.888332, 33.856762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469559, 0.664137, -0.581752,
		0.375706, 0.445970, 0.812376,
		0.798974, -0.600026, -0.040111,
		40.967220, 34.708324, 33.844730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003708, 35.589546, 33.779541>,  <40.407940, 35.128342, 33.872807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003708, 35.589546, 33.779541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131870, 35.228504, 33.664555>,  <41.208767, 35.011879, 33.595562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.131870, 35.228504, 33.664555>,  <41.003708, 35.589546, 33.779541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131870, 35.228504, 33.664555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498526, 0.418713, -0.759047,
		0.805487, 0.099897, 0.584133,
		0.320410, -0.902607, -0.287467,
		41.227993, 34.957722, 33.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809093, 35.584030, 33.589024>,  <41.003708, 35.589546, 33.779541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809093, 35.584030, 33.589024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622055, 35.294945, 33.385441>,  <41.509830, 35.121494, 33.263290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.622055, 35.294945, 33.385441>,  <41.809093, 35.584030, 33.589024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622055, 35.294945, 33.385441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322107, 0.396875, -0.859499,
		0.823165, -0.565836, 0.047215,
		-0.467597, -0.722717, -0.508953,
		41.481777, 35.078129, 33.232754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.232849, 35.509750, 33.112640>,  <41.809093, 35.584030, 33.589024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.232849, 35.509750, 33.112640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926285, 35.297924, 32.967220>,  <41.742344, 35.170826, 32.879971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926285, 35.297924, 32.967220>,  <42.232849, 35.509750, 33.112640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926285, 35.297924, 32.967220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240250, 0.288563, -0.926829,
		0.595725, -0.797677, -0.093931,
		-0.766415, -0.529568, -0.363546,
		41.696362, 35.139053, 32.858158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433243, 34.926178, 32.647690>,  <42.232849, 35.509750, 33.112640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433243, 34.926178, 32.647690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063847, 35.022171, 32.527973>,  <41.842209, 35.079765, 32.456142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.063847, 35.022171, 32.527973>,  <42.433243, 34.926178, 32.647690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063847, 35.022171, 32.527973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355723, 0.243596, -0.902287,
		-0.143625, -0.939718, -0.310325,
		-0.923490, 0.239981, -0.299293,
		41.786800, 35.094166, 32.438187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355682, 34.840034, 31.922581>,  <42.433243, 34.926178, 32.647690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355682, 34.840034, 31.922581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023197, 35.059906, 31.955921>,  <41.823708, 35.191830, 31.975925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.023197, 35.059906, 31.955921>,  <42.355682, 34.840034, 31.922581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023197, 35.059906, 31.955921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182900, 0.411940, -0.892666,
		-0.525012, -0.726748, -0.442944,
		-0.831210, 0.549675, 0.083351,
		41.773834, 35.224808, 31.980927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975574, 34.772522, 31.382183>,  <42.355682, 34.840034, 31.922581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975574, 34.772522, 31.382183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863258, 35.134098, 31.511211>,  <41.795868, 35.351044, 31.588629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.863258, 35.134098, 31.511211>,  <41.975574, 34.772522, 31.382183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863258, 35.134098, 31.511211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132273, 0.369330, -0.919837,
		-0.950611, -0.215614, -0.223271,
		-0.280790, 0.903939, 0.322569,
		41.779022, 35.405281, 31.607983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490295, 35.005108, 30.861635>,  <41.975574, 34.772522, 31.382183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490295, 35.005108, 30.861635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616016, 35.334084, 31.051291>,  <41.691448, 35.531467, 31.165083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.616016, 35.334084, 31.051291>,  <41.490295, 35.005108, 30.861635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616016, 35.334084, 31.051291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037847, 0.488195, -0.871914,
		-0.948567, 0.291991, 0.122315,
		0.314304, 0.822440, 0.474137,
		41.710308, 35.580814, 31.193531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209015, 35.510921, 30.382761>,  <41.490295, 35.005108, 30.861635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209015, 35.510921, 30.382761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497307, 35.659061, 30.617159>,  <41.670280, 35.747948, 30.757797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.497307, 35.659061, 30.617159>,  <41.209015, 35.510921, 30.382761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497307, 35.659061, 30.617159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347767, 0.538089, -0.767801,
		-0.599676, 0.757165, 0.259019,
		0.720727, 0.370354, 0.585996,
		41.713524, 35.770168, 30.792957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381344, 36.211491, 30.164310>,  <41.209015, 35.510921, 30.382761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381344, 36.211491, 30.164310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696625, 36.138023, 30.399260>,  <41.885792, 36.093945, 30.540230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.696625, 36.138023, 30.399260>,  <41.381344, 36.211491, 30.164310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696625, 36.138023, 30.399260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590434, 0.494875, -0.637563,
		-0.173578, 0.849332, 0.498503,
		0.788199, -0.183666, 0.587374,
		41.933086, 36.082924, 30.575472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714230, 36.892750, 30.265043>,  <41.381344, 36.211491, 30.164310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714230, 36.892750, 30.265043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977371, 36.593189, 30.296976>,  <42.135254, 36.413452, 30.316135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.977371, 36.593189, 30.296976>,  <41.714230, 36.892750, 30.265043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977371, 36.593189, 30.296976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588013, 0.444482, -0.675779,
		0.470610, 0.491504, 0.732768,
		0.657850, -0.748905, 0.079833,
		42.174725, 36.368519, 30.320927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963707, 37.543934, 30.451099>,  <41.714230, 36.892750, 30.265043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963707, 37.543934, 30.451099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804008, 37.910133, 30.470963>,  <41.708187, 38.129852, 30.482880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804008, 37.910133, 30.470963>,  <41.963707, 37.543934, 30.451099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804008, 37.910133, 30.470963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575656, -0.292461, 0.763601,
		0.713597, 0.276282, 0.643776,
		-0.399249, 0.915497, 0.049656,
		41.684235, 38.184784, 30.485859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741100, 37.503735, 31.098099>,  <41.963707, 37.543934, 30.451099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741100, 37.503735, 31.098099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571564, 37.852707, 31.000751>,  <41.469841, 38.062088, 30.942343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571564, 37.852707, 31.000751>,  <41.741100, 37.503735, 31.098099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571564, 37.852707, 31.000751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749095, -0.186608, 0.635637,
		0.509133, 0.451716, 0.732623,
		-0.423840, 0.872428, -0.243370,
		41.444412, 38.114437, 30.927740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634865, 37.918175, 31.694736>,  <41.741100, 37.503735, 31.098099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634865, 37.918175, 31.694736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 38.017891, 31.418451>,  <41.200436, 38.077721, 31.252680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.363346, 38.017891, 31.418451>,  <41.634865, 37.918175, 31.694736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363346, 38.017891, 31.418451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731875, -0.152940, 0.664055,
		0.059907, 0.956276, 0.286266,
		-0.678801, 0.249292, -0.690712,
		41.159706, 38.092678, 31.211237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150440, 38.357224, 31.974005>,  <41.634865, 37.918175, 31.694736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150440, 38.357224, 31.974005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952713, 38.186058, 31.671339>,  <40.834076, 38.083359, 31.489740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952713, 38.186058, 31.671339>,  <41.150440, 38.357224, 31.974005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952713, 38.186058, 31.671339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827113, -0.036291, 0.560863,
		-0.267462, 0.903090, -0.335995,
		-0.494316, -0.427915, -0.756663,
		40.804417, 38.057682, 31.444340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447819, 38.524643, 32.194775>,  <41.150440, 38.357224, 31.974005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447819, 38.524643, 32.194775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398937, 38.270763, 31.889563>,  <40.369610, 38.118435, 31.706434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398937, 38.270763, 31.889563>,  <40.447819, 38.524643, 32.194775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398937, 38.270763, 31.889563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949467, -0.149176, 0.276150,
		-0.289099, 0.758223, -0.584397,
		-0.122205, -0.634700, -0.763034,
		40.362274, 38.080353, 31.660652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681999, 38.652531, 31.995285>,  <40.447819, 38.524643, 32.194775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681999, 38.652531, 31.995285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804722, 38.300354, 31.850676>,  <39.878353, 38.089050, 31.763910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.804722, 38.300354, 31.850676>,  <39.681999, 38.652531, 31.995285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804722, 38.300354, 31.850676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836648, -0.430566, 0.338575,
		-0.453753, 0.198589, -0.868718,
		0.306803, -0.880440, -0.361520,
		39.896763, 38.036221, 31.742218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047844, 38.336998, 31.642653>,  <39.681999, 38.652531, 31.995285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047844, 38.336998, 31.642653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284615, 38.022911, 31.715387>,  <39.426678, 37.834461, 31.759029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284615, 38.022911, 31.715387>,  <39.047844, 38.336998, 31.642653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284615, 38.022911, 31.715387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802259, -0.552304, 0.226585,
		-0.077488, -0.280003, -0.956867,
		0.591926, -0.785213, 0.181838,
		39.462193, 37.787346, 31.769939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770744, 37.802608, 31.229027>,  <39.047844, 38.336998, 31.642653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770744, 37.802608, 31.229027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990143, 37.635094, 31.518515>,  <39.121780, 37.534584, 31.692207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.990143, 37.635094, 31.518515>,  <38.770744, 37.802608, 31.229027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990143, 37.635094, 31.518515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658959, -0.749293, 0.065825,
		0.514711, -0.513007, -0.686947,
		0.548493, -0.418789, 0.723720,
		39.154690, 37.509457, 31.735630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698235, 37.062817, 31.052040>,  <38.770744, 37.802608, 31.229027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698235, 37.062817, 31.052040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833851, 37.077953, 31.428043>,  <38.915222, 37.087036, 31.653646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833851, 37.077953, 31.428043>,  <38.698235, 37.062817, 31.052040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833851, 37.077953, 31.428043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580008, -0.778290, 0.240530,
		0.740703, -0.626763, -0.241924,
		0.339043, 0.037843, 0.940010,
		38.935562, 37.089306, 31.710047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004467, 36.419621, 31.168655>,  <38.698235, 37.062817, 31.052040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004467, 36.419621, 31.168655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902313, 36.587448, 31.517080>,  <38.841022, 36.688145, 31.726135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.902313, 36.587448, 31.517080>,  <39.004467, 36.419621, 31.168655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902313, 36.587448, 31.517080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517879, -0.820152, 0.243211,
		0.816445, -0.388992, 0.426735,
		-0.255381, 0.419565, 0.871060,
		38.825699, 36.713318, 31.778399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210091, 35.884701, 31.667557>,  <39.004467, 36.419621, 31.168655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210091, 35.884701, 31.667557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939190, 36.144192, 31.806398>,  <38.776649, 36.299885, 31.889704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939190, 36.144192, 31.806398>,  <39.210091, 35.884701, 31.667557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939190, 36.144192, 31.806398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653835, -0.746999, 0.120386,
		0.337384, -0.145416, 0.930068,
		-0.677254, 0.648727, 0.347103,
		38.736015, 36.338810, 31.910530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797974, 35.414371, 32.053699>,  <39.210091, 35.884701, 31.667557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797974, 35.414371, 32.053699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564629, 35.738766, 32.035870>,  <38.424622, 35.933403, 32.025173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564629, 35.738766, 32.035870>,  <38.797974, 35.414371, 32.053699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564629, 35.738766, 32.035870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805048, -0.570068, 0.164072,
		0.107650, 0.131597, 0.985441,
		-0.583360, 0.810990, -0.044574,
		38.389622, 35.982063, 32.022499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.399220, 38.442001, 27.845001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040298, 38.538868, 27.697376>,  <43.824947, 38.596989, 27.608801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.040298, 38.538868, 27.697376>,  <44.399220, 38.442001, 27.845001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040298, 38.538868, 27.697376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336103, 0.167181, 0.926869,
		0.286157, 0.955722, -0.068619,
		-0.897301, 0.242167, -0.369061,
		43.771107, 38.611519, 27.586658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133724, 38.765438, 28.434414>,  <44.399220, 38.442001, 27.845001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133724, 38.765438, 28.434414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827641, 38.756386, 28.177061>,  <43.643990, 38.750954, 28.022650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827641, 38.756386, 28.177061>,  <44.133724, 38.765438, 28.434414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827641, 38.756386, 28.177061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640883, 0.121511, 0.757960,
		0.061022, 0.992332, -0.107488,
		-0.765209, -0.022635, -0.643384,
		43.598080, 38.749596, 27.984045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755745, 39.384045, 28.514391>,  <44.133724, 38.765438, 28.434414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755745, 39.384045, 28.514391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492458, 39.123325, 28.363707>,  <43.334484, 38.966896, 28.273296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492458, 39.123325, 28.363707>,  <43.755745, 39.384045, 28.514391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492458, 39.123325, 28.363707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599009, 0.150349, 0.786501,
		-0.455999, 0.743344, -0.489393,
		-0.658220, -0.651794, -0.376711,
		43.294991, 38.927788, 28.250694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174850, 39.660458, 28.736723>,  <43.755745, 39.384045, 28.514391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174850, 39.660458, 28.736723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092442, 39.285954, 28.622900>,  <43.042995, 39.061253, 28.554605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092442, 39.285954, 28.622900>,  <43.174850, 39.660458, 28.736723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092442, 39.285954, 28.622900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654949, -0.084125, 0.750975,
		-0.727047, 0.341086, -0.595872,
		-0.206020, -0.936260, -0.284557,
		43.030636, 39.005074, 28.537533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454002, 39.748337, 28.800402>,  <43.174850, 39.660458, 28.736723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454002, 39.748337, 28.800402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562778, 39.366486, 28.848963>,  <42.628044, 39.137375, 28.878099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562778, 39.366486, 28.848963>,  <42.454002, 39.748337, 28.800402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562778, 39.366486, 28.848963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632849, -0.082373, 0.769881,
		-0.724948, -0.286192, -0.626534,
		0.271943, -0.954625, 0.121400,
		42.644360, 39.080097, 28.885384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897743, 39.354084, 28.759693>,  <42.454002, 39.748337, 28.800402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897743, 39.354084, 28.759693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159191, 39.132710, 28.966181>,  <42.316059, 38.999886, 29.090073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159191, 39.132710, 28.966181>,  <41.897743, 39.354084, 28.759693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159191, 39.132710, 28.966181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634774, -0.029476, 0.772135,
		-0.412113, -0.832368, -0.370575,
		0.653624, -0.553439, 0.516219,
		42.355278, 38.966679, 29.121046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434620, 38.944279, 29.156994>,  <41.897743, 39.354084, 28.759693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434620, 38.944279, 29.156994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782734, 38.877052, 29.342192>,  <41.991600, 38.836716, 29.453310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782734, 38.877052, 29.342192>,  <41.434620, 38.944279, 29.156994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782734, 38.877052, 29.342192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492530, -0.306299, 0.814614,
		0.004906, -0.936982, -0.349344,
		0.870282, -0.168066, 0.462994,
		42.043819, 38.826633, 29.481091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297707, 38.282757, 29.436005>,  <41.434620, 38.944279, 29.156994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297707, 38.282757, 29.436005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603844, 38.455009, 29.627338>,  <41.787525, 38.558361, 29.742140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603844, 38.455009, 29.627338>,  <41.297707, 38.282757, 29.436005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603844, 38.455009, 29.627338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257857, -0.475788, 0.840913,
		0.589712, -0.766929, -0.253099,
		0.765343, 0.430633, 0.478336,
		41.833447, 38.584198, 29.770840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785755, 37.722164, 29.741783>,  <41.297707, 38.282757, 29.436005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785755, 37.722164, 29.741783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782543, 38.072369, 29.935034>,  <41.780617, 38.282490, 30.050985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782543, 38.072369, 29.935034>,  <41.785755, 37.722164, 29.741783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782543, 38.072369, 29.935034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478850, -0.427515, 0.766768,
		0.877860, -0.225187, 0.422673,
		-0.008033, 0.875512, 0.483129,
		41.780132, 38.335022, 30.079973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303322, 37.166431, 29.760265>,  <41.785755, 37.722164, 29.741783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303322, 37.166431, 29.760265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469246, 36.831890, 29.903624>,  <42.568798, 36.631165, 29.989637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469246, 36.831890, 29.903624>,  <42.303322, 37.166431, 29.760265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469246, 36.831890, 29.903624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690609, 0.032926, -0.722478,
		0.592447, 0.547201, 0.591251,
		0.414808, -0.836353, 0.358395,
		42.593689, 36.580982, 30.011143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002636, 37.252728, 29.914726>,  <42.303322, 37.166431, 29.760265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002636, 37.252728, 29.914726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953411, 36.866943, 29.821190>,  <42.923878, 36.635475, 29.765068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953411, 36.866943, 29.821190>,  <43.002636, 37.252728, 29.914726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953411, 36.866943, 29.821190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625073, 0.107690, -0.773102,
		0.770805, -0.241305, 0.589603,
		-0.123059, -0.964456, -0.233841,
		42.916492, 36.577606, 29.751038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717697, 37.007000, 29.687342>,  <43.002636, 37.252728, 29.914726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717697, 37.007000, 29.687342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453972, 36.728008, 29.575039>,  <43.295734, 36.560612, 29.507656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453972, 36.728008, 29.575039>,  <43.717697, 37.007000, 29.687342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453972, 36.728008, 29.575039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472702, -0.094146, -0.876179,
		0.584684, -0.710394, 0.391772,
		-0.659316, -0.697480, -0.280759,
		43.256176, 36.518764, 29.490810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068550, 36.350796, 29.547602>,  <43.717697, 37.007000, 29.687342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068550, 36.350796, 29.547602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725021, 36.362190, 29.343010>,  <43.518906, 36.369026, 29.220255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725021, 36.362190, 29.343010>,  <44.068550, 36.350796, 29.547602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725021, 36.362190, 29.343010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479538, -0.306495, -0.822256,
		-0.180189, -0.951446, 0.249565,
		-0.858822, 0.028485, -0.511481,
		43.467373, 36.370735, 29.189566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038277, 35.724998, 29.111044>,  <44.068550, 36.350796, 29.547602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038277, 35.724998, 29.111044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762512, 35.941158, 28.918100>,  <43.597054, 36.070854, 28.802334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762512, 35.941158, 28.918100>,  <44.038277, 35.724998, 29.111044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762512, 35.941158, 28.918100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412935, -0.253907, -0.874652,
		-0.595139, -0.802181, -0.048105,
		-0.689415, 0.540404, -0.482359,
		43.555687, 36.103279, 28.773392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583797, 35.361778, 28.620485>,  <44.038277, 35.724998, 29.111044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583797, 35.361778, 28.620485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604492, 35.741001, 28.494940>,  <43.616909, 35.968536, 28.419613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604492, 35.741001, 28.494940>,  <43.583797, 35.361778, 28.620485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604492, 35.741001, 28.494940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357103, -0.311069, -0.880746,
		-0.932631, -0.066512, -0.354649,
		0.051741, 0.948057, -0.313864,
		43.620014, 36.025417, 28.400780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091648, 35.360222, 28.080257>,  <43.583797, 35.361778, 28.620485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091648, 35.360222, 28.080257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330780, 35.675426, 28.021412>,  <43.474258, 35.864548, 27.986105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330780, 35.675426, 28.021412>,  <43.091648, 35.360222, 28.080257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330780, 35.675426, 28.021412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120669, -0.269890, -0.955300,
		-0.792490, 0.553354, -0.256436,
		0.597829, 0.788010, -0.147112,
		43.510128, 35.911831, 27.977278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888756, 35.533958, 27.401428>,  <43.091648, 35.360222, 28.080257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888756, 35.533958, 27.401428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230476, 35.732292, 27.463802>,  <43.435509, 35.851292, 27.501226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230476, 35.732292, 27.463802>,  <42.888756, 35.533958, 27.401428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230476, 35.732292, 27.463802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197559, -0.032262, -0.979760,
		-0.480769, 0.867817, -0.125519,
		0.854301, 0.495836, 0.155935,
		43.486767, 35.881042, 27.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960014, 35.887798, 26.738775>,  <42.888756, 35.533958, 27.401428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960014, 35.887798, 26.738775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333504, 35.934895, 26.874002>,  <43.557598, 35.963154, 26.955139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333504, 35.934895, 26.874002>,  <42.960014, 35.887798, 26.738775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333504, 35.934895, 26.874002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357821, -0.335522, -0.871430,
		0.010828, 0.934646, -0.355415,
		0.933727, 0.117740, 0.338069,
		43.613621, 35.970215, 26.975424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317127, 36.264088, 26.145393>,  <42.960014, 35.887798, 26.738775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317127, 36.264088, 26.145393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601509, 36.114594, 26.383677>,  <43.772137, 36.024899, 26.526646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601509, 36.114594, 26.383677>,  <43.317127, 36.264088, 26.145393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601509, 36.114594, 26.383677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509776, -0.309637, -0.802654,
		0.484433, 0.874327, -0.029616,
		0.710953, -0.373734, 0.595709,
		43.814796, 36.002472, 26.562389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008423, 36.520363, 25.935562>,  <43.317127, 36.264088, 26.145393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008423, 36.520363, 25.935562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056610, 36.169056, 26.120661>,  <44.085522, 35.958271, 26.231720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056610, 36.169056, 26.120661>,  <44.008423, 36.520363, 25.935562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056610, 36.169056, 26.120661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647753, -0.283693, -0.707060,
		0.752265, 0.384926, 0.534723,
		0.120469, -0.878266, 0.462749,
		44.092751, 35.905575, 26.259485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731133, 36.377613, 26.053549>,  <44.008423, 36.520363, 25.935562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731133, 36.377613, 26.053549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562565, 36.015465, 26.074385>,  <44.461426, 35.798176, 26.086885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562565, 36.015465, 26.074385>,  <44.731133, 36.377613, 26.053549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562565, 36.015465, 26.074385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620754, -0.329859, -0.711237,
		0.661115, -0.267392, 0.701020,
		-0.421417, -0.905370, 0.052090,
		44.436138, 35.743855, 26.090012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272362, 35.989326, 26.154213>,  <44.731133, 36.377613, 26.053549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272362, 35.989326, 26.154213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979321, 35.766335, 25.998007>,  <44.803493, 35.632538, 25.904284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979321, 35.766335, 25.998007>,  <45.272362, 35.989326, 26.154213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979321, 35.766335, 25.998007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680187, -0.578432, -0.450291,
		0.025143, -0.595510, 0.802954,
		-0.732607, -0.557481, -0.390515,
		44.759537, 35.599091, 25.880852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370831, 35.203125, 26.251278>,  <45.272362, 35.989326, 26.154213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370831, 35.203125, 26.251278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133263, 35.230545, 25.930639>,  <44.990723, 35.246998, 25.738256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133263, 35.230545, 25.930639>,  <45.370831, 35.203125, 26.251278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133263, 35.230545, 25.930639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688758, -0.471597, -0.550644,
		-0.415775, -0.879146, 0.232881,
		-0.593922, 0.068545, -0.801597,
		44.955086, 35.251110, 25.690161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.362396, 36.940331, 23.730377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728340, 36.975254, 23.888062>,  <39.947906, 36.996208, 23.982672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.728340, 36.975254, 23.888062>,  <39.362396, 36.940331, 23.730377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728340, 36.975254, 23.888062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380238, -0.142109, 0.913906,
		0.135814, -0.985993, -0.096811,
		0.914863, 0.087310, 0.394212,
		40.002800, 37.001446, 24.006325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496532, 36.367401, 24.052687>,  <39.362396, 36.940331, 23.730377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496532, 36.367401, 24.052687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744740, 36.622574, 24.235119>,  <39.893661, 36.775677, 24.344578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.744740, 36.622574, 24.235119>,  <39.496532, 36.367401, 24.052687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744740, 36.622574, 24.235119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299360, -0.344849, 0.889642,
		0.724807, -0.688567, -0.023013,
		0.620515, 0.637929, 0.456079,
		39.930893, 36.813953, 24.371943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745872, 36.008484, 24.643869>,  <39.496532, 36.367401, 24.052687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745872, 36.008484, 24.643869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830196, 36.382038, 24.759399>,  <39.880791, 36.606171, 24.828718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.830196, 36.382038, 24.759399>,  <39.745872, 36.008484, 24.643869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830196, 36.382038, 24.759399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225633, -0.240998, 0.943933,
		0.951129, -0.264162, 0.159909,
		0.210814, 0.933883, 0.288824,
		39.893440, 36.662205, 24.846046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995396, 35.860867, 25.337090>,  <39.745872, 36.008484, 24.643869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995396, 35.860867, 25.337090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910919, 36.250610, 25.306044>,  <39.860233, 36.484455, 25.287416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910919, 36.250610, 25.306044>,  <39.995396, 35.860867, 25.337090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910919, 36.250610, 25.306044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359247, -0.003526, 0.933236,
		0.909032, 0.224976, 0.350780,
		-0.211192, 0.974358, -0.077616,
		39.847561, 36.542919, 25.282759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195671, 36.035007, 25.892992>,  <39.995396, 35.860867, 25.337090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195671, 36.035007, 25.892992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940720, 36.306023, 25.746191>,  <39.787750, 36.468632, 25.658110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.940720, 36.306023, 25.746191>,  <40.195671, 36.035007, 25.892992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940720, 36.306023, 25.746191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534603, -0.045822, 0.843860,
		0.554929, 0.734060, 0.391419,
		-0.637380, 0.677536, -0.367003,
		39.749504, 36.509285, 25.636089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004711, 36.407452, 26.445356>,  <40.195671, 36.035007, 25.892992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004711, 36.407452, 26.445356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710217, 36.485031, 26.186020>,  <39.533520, 36.531578, 26.030418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710217, 36.485031, 26.186020>,  <40.004711, 36.407452, 26.445356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710217, 36.485031, 26.186020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669912, -0.073235, 0.738820,
		0.095810, 0.978275, 0.183845,
		-0.736232, 0.193946, -0.648341,
		39.489346, 36.543217, 25.991518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589088, 36.781670, 26.821468>,  <40.004711, 36.407452, 26.445356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589088, 36.781670, 26.821468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351418, 36.682510, 26.515396>,  <39.208817, 36.623013, 26.331753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351418, 36.682510, 26.515396>,  <39.589088, 36.781670, 26.821468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351418, 36.682510, 26.515396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743476, -0.193739, 0.640085,
		-0.306923, 0.949216, -0.069193,
		-0.594173, -0.247901, -0.765182,
		39.173164, 36.608139, 26.285841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008297, 36.992542, 27.029886>,  <39.589088, 36.781670, 26.821468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008297, 36.992542, 27.029886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923943, 36.714878, 26.754593>,  <38.873329, 36.548279, 26.589417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923943, 36.714878, 26.754593>,  <39.008297, 36.992542, 27.029886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923943, 36.714878, 26.754593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889745, -0.155270, 0.429237,
		-0.404823, 0.702870, -0.584886,
		-0.210882, -0.694165, -0.688232,
		38.860680, 36.506630, 26.548122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394390, 37.127457, 26.781397>,  <39.008297, 36.992542, 27.029886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394390, 37.127457, 26.781397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460968, 36.738426, 26.716413>,  <38.500916, 36.505009, 26.677423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460968, 36.738426, 26.716413>,  <38.394390, 37.127457, 26.781397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460968, 36.738426, 26.716413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880123, -0.220819, 0.420264,
		-0.444613, 0.073033, -0.892741,
		0.166441, -0.972577, -0.162457,
		38.510899, 36.446651, 26.667677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814976, 36.858864, 26.525990>,  <38.394390, 37.127457, 26.781397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814976, 36.858864, 26.525990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002483, 36.528603, 26.651564>,  <38.114990, 36.330448, 26.726908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002483, 36.528603, 26.651564>,  <37.814976, 36.858864, 26.525990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002483, 36.528603, 26.651564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792458, -0.236097, 0.562378,
		-0.390208, -0.512408, -0.764968,
		0.468773, -0.825649, 0.313935,
		38.143116, 36.280907, 26.745745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338802, 36.522118, 26.770737>,  <37.814976, 36.858864, 26.525990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338802, 36.522118, 26.770737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617565, 36.271431, 26.910196>,  <37.784821, 36.121017, 26.993872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.617565, 36.271431, 26.910196>,  <37.338802, 36.522118, 26.770737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617565, 36.271431, 26.910196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622891, -0.288012, 0.727362,
		-0.355439, -0.724066, -0.591094,
		0.696900, -0.626720, 0.348643,
		37.826637, 36.083416, 27.014790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987015, 35.815395, 26.871727>,  <37.338802, 36.522118, 26.770737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987015, 35.815395, 26.871727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310822, 35.866848, 27.100859>,  <37.505104, 35.897720, 27.238338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.310822, 35.866848, 27.100859>,  <36.987015, 35.815395, 26.871727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310822, 35.866848, 27.100859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544527, -0.200252, 0.814487,
		0.219480, -0.971263, -0.092064,
		0.809517, 0.128632, 0.572831,
		37.553677, 35.905437, 27.272709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056194, 35.224991, 27.312325>,  <36.987015, 35.815395, 26.871727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056194, 35.224991, 27.312325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283138, 35.494190, 27.502136>,  <37.419304, 35.655712, 27.616022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.283138, 35.494190, 27.502136>,  <37.056194, 35.224991, 27.312325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283138, 35.494190, 27.502136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351910, -0.322827, 0.878602,
		0.744491, -0.665471, 0.053678,
		0.567355, 0.673002, 0.474527,
		37.453346, 35.696091, 27.644495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318298, 34.949516, 27.952040>,  <37.056194, 35.224991, 27.312325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318298, 34.949516, 27.952040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343029, 35.341068, 28.029993>,  <37.357868, 35.576000, 28.076765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343029, 35.341068, 28.029993>,  <37.318298, 34.949516, 27.952040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343029, 35.341068, 28.029993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418031, -0.151909, 0.895642,
		0.906327, -0.136840, 0.399808,
		0.061825, 0.978876, 0.194883,
		37.361576, 35.634731, 28.088457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149643, 34.687176, 28.107117>,  <37.318298, 34.949516, 27.952040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149643, 34.687176, 28.107117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241802, 34.299561, 28.142630>,  <38.297096, 34.066990, 28.163937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.241802, 34.299561, 28.142630>,  <38.149643, 34.687176, 28.107117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241802, 34.299561, 28.142630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514972, 0.044008, -0.856077,
		0.825663, 0.242960, 0.509166,
		0.230400, -0.969038, 0.088782,
		38.310921, 34.008850, 28.169264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851601, 34.607983, 27.896345>,  <38.149643, 34.687176, 28.107117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851601, 34.607983, 27.896345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699116, 34.239178, 27.869307>,  <38.607624, 34.017895, 27.853085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.699116, 34.239178, 27.869307>,  <38.851601, 34.607983, 27.896345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699116, 34.239178, 27.869307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451192, -0.121735, -0.884085,
		0.806908, -0.367525, 0.462412,
		-0.381215, -0.922012, -0.067595,
		38.584751, 33.962574, 27.849028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409531, 34.202385, 27.515541>,  <38.851601, 34.607983, 27.896345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409531, 34.202385, 27.515541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085480, 33.973640, 27.463902>,  <38.891048, 33.836395, 27.432919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.085480, 33.973640, 27.463902>,  <39.409531, 34.202385, 27.515541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085480, 33.973640, 27.463902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355069, -0.303392, -0.884239,
		0.466495, -0.762186, 0.448837,
		-0.810128, -0.571862, -0.129098,
		38.842442, 33.802082, 27.425173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612289, 33.476517, 27.402788>,  <39.409531, 34.202385, 27.515541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612289, 33.476517, 27.402788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259975, 33.525352, 27.219782>,  <39.048588, 33.554653, 27.109978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259975, 33.525352, 27.219782>,  <39.612289, 33.476517, 27.402788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259975, 33.525352, 27.219782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351424, -0.479039, -0.804378,
		-0.317375, -0.869262, 0.379022,
		-0.880780, 0.122092, -0.457514,
		38.995743, 33.561981, 27.082527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452221, 32.875439, 27.137707>,  <39.612289, 33.476517, 27.402788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452221, 32.875439, 27.137707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218086, 33.125675, 26.931398>,  <39.077606, 33.275818, 26.807613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218086, 33.125675, 26.931398>,  <39.452221, 32.875439, 27.137707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218086, 33.125675, 26.931398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341559, -0.386675, -0.856633,
		-0.735337, -0.677584, 0.012659,
		-0.585335, 0.625590, -0.515771,
		39.042484, 33.313351, 26.776667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141182, 32.443668, 26.517464>,  <39.452221, 32.875439, 27.137707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141182, 32.443668, 26.517464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116127, 32.835949, 26.443386>,  <39.101093, 33.071320, 26.398939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116127, 32.835949, 26.443386>,  <39.141182, 32.443668, 26.517464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116127, 32.835949, 26.443386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340254, -0.153460, -0.927727,
		-0.938245, -0.121121, -0.324077,
		-0.062634, 0.980704, -0.185195,
		39.097336, 33.130161, 26.387827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840778, 32.472919, 25.880846>,  <39.141182, 32.443668, 26.517464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840778, 32.472919, 25.880846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014511, 32.829201, 25.934523>,  <39.118752, 33.042969, 25.966728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014511, 32.829201, 25.934523>,  <38.840778, 32.472919, 25.880846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014511, 32.829201, 25.934523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402825, -0.058824, -0.913385,
		-0.805657, 0.450771, -0.384346,
		0.434336, 0.890699, 0.134190,
		39.144814, 33.096409, 25.974779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653271, 32.854877, 25.299637>,  <38.840778, 32.472919, 25.880846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653271, 32.854877, 25.299637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957108, 33.074150, 25.439646>,  <39.139412, 33.205711, 25.523651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957108, 33.074150, 25.439646>,  <38.653271, 32.854877, 25.299637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957108, 33.074150, 25.439646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404358, 0.023494, -0.914299,
		-0.509421, 0.836032, -0.203813,
		0.759595, 0.548177, 0.350025,
		39.184986, 33.238602, 25.544653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837959, 33.317982, 24.760906>,  <38.653271, 32.854877, 25.299637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837959, 33.317982, 24.760906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174084, 33.325489, 24.977621>,  <39.375759, 33.329994, 25.107649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.174084, 33.325489, 24.977621>,  <38.837959, 33.317982, 24.760906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174084, 33.325489, 24.977621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542104, -0.034196, -0.839616,
		0.002770, 0.999239, -0.038909,
		0.840307, 0.018767, 0.541786,
		39.426174, 33.331120, 25.140158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215931, 33.970795, 24.661938>,  <38.837959, 33.317982, 24.760906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215931, 33.970795, 24.661938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475060, 33.688259, 24.776072>,  <39.630535, 33.518738, 24.844551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.475060, 33.688259, 24.776072>,  <39.215931, 33.970795, 24.661938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475060, 33.688259, 24.776072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645195, 0.309580, -0.698487,
		0.405034, 0.636590, 0.656278,
		0.647820, -0.706338, 0.285334,
		39.669407, 33.476357, 24.861671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880112, 34.322273, 24.724482>,  <39.215931, 33.970795, 24.661938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880112, 34.322273, 24.724482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964050, 33.931179, 24.724457>,  <40.014416, 33.696522, 24.724442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964050, 33.931179, 24.724457>,  <39.880112, 34.322273, 24.724482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964050, 33.931179, 24.724457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659485, 0.141592, -0.738262,
		0.721832, 0.154884, 0.674514,
		0.209851, -0.977733, -0.000062,
		40.027004, 33.637859, 24.724438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555492, 34.255928, 24.806467>,  <39.880112, 34.322273, 24.724482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555492, 34.255928, 24.806467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426987, 33.933201, 24.608139>,  <40.349884, 33.739563, 24.489143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426987, 33.933201, 24.608139>,  <40.555492, 34.255928, 24.806467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426987, 33.933201, 24.608139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767977, 0.084369, -0.634896,
		0.554076, -0.584746, 0.592513,
		-0.321263, -0.806817, -0.495819,
		40.330608, 33.691154, 24.459393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156784, 33.945835, 24.554035>,  <40.555492, 34.255928, 24.806467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156784, 33.945835, 24.554035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870693, 33.776623, 24.331505>,  <40.699039, 33.675095, 24.197987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.870693, 33.776623, 24.331505>,  <41.156784, 33.945835, 24.554035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.870693, 33.776623, 24.331505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575668, 0.094789, -0.812171,
		0.396310, -0.901142, 0.175732,
		-0.715224, -0.423035, -0.556324,
		40.656128, 33.649712, 24.164608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433384, 33.311584, 24.140945>,  <41.156784, 33.945835, 24.554035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433384, 33.311584, 24.140945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116615, 33.462788, 23.949123>,  <40.926556, 33.553509, 23.834030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.116615, 33.462788, 23.949123>,  <41.433384, 33.311584, 24.140945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116615, 33.462788, 23.949123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567971, 0.167630, -0.805797,
		-0.224206, -0.910502, -0.347445,
		-0.791922, 0.378003, -0.479555,
		40.879040, 33.576187, 23.805256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807785, 32.706627, 24.033367>,  <41.433384, 33.311584, 24.140945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807785, 32.706627, 24.033367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184765, 32.682255, 24.164869>,  <42.410954, 32.667633, 24.243771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.184765, 32.682255, 24.164869>,  <41.807785, 32.706627, 24.033367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184765, 32.682255, 24.164869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306127, -0.552650, 0.775154,
		0.134458, -0.831183, -0.539496,
		0.942448, -0.060929, 0.328756,
		42.467499, 32.663975, 24.263496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790810, 32.084614, 24.352192>,  <41.807785, 32.706627, 24.033367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790810, 32.084614, 24.352192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119480, 32.268566, 24.486870>,  <42.316681, 32.378937, 24.567677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.119480, 32.268566, 24.486870>,  <41.790810, 32.084614, 24.352192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119480, 32.268566, 24.486870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241431, -0.254282, 0.936510,
		0.516296, -0.850795, -0.097908,
		0.821674, 0.459879, 0.336693,
		42.365982, 32.406528, 24.587877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062714, 31.551691, 24.785242>,  <41.790810, 32.084614, 24.352192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062714, 31.551691, 24.785242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240990, 31.897120, 24.879564>,  <42.347954, 32.104378, 24.936157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.240990, 31.897120, 24.879564>,  <42.062714, 31.551691, 24.785242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240990, 31.897120, 24.879564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039202, -0.281988, 0.958617,
		0.894329, -0.418002, -0.159533,
		0.445690, 0.863572, 0.235804,
		42.374695, 32.156193, 24.950306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521538, 31.373850, 25.265871>,  <42.062714, 31.551691, 24.785242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521538, 31.373850, 25.265871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476139, 31.765770, 25.331732>,  <42.448898, 32.000923, 25.371248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.476139, 31.765770, 25.331732>,  <42.521538, 31.373850, 25.265871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476139, 31.765770, 25.331732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089211, -0.155002, 0.983878,
		0.989525, 0.126359, -0.069817,
		-0.113500, 0.979800, 0.164651,
		42.442089, 32.059711, 25.381126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844299, 31.490337, 25.800766>,  <42.521538, 31.373850, 25.265871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844299, 31.490337, 25.800766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625782, 31.825365, 25.798325>,  <42.494671, 32.026382, 25.796860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.625782, 31.825365, 25.798325>,  <42.844299, 31.490337, 25.800766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625782, 31.825365, 25.798325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158835, -0.096436, 0.982584,
		0.822395, 0.537751, 0.185718,
		-0.546295, 0.837570, -0.006105,
		42.461895, 32.076637, 25.796494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160004, 32.020550, 26.228800>,  <42.844299, 31.490337, 25.800766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160004, 32.020550, 26.228800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.768589, 32.101398, 26.212753>,  <42.533741, 32.149906, 26.203125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.768589, 32.101398, 26.212753>,  <43.160004, 32.020550, 26.228800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768589, 32.101398, 26.212753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047445, -0.031537, 0.998376,
		0.200527, 0.978853, 0.040450,
		-0.978539, 0.202121, -0.040118,
		42.475029, 32.162033, 26.200718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044975, 32.425327, 26.866024>,  <43.160004, 32.020550, 26.228800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044975, 32.425327, 26.866024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.669609, 32.340782, 26.756691>,  <42.444389, 32.290054, 26.691092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.669609, 32.340782, 26.756691>,  <43.044975, 32.425327, 26.866024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669609, 32.340782, 26.756691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273685, -0.028163, 0.961407,
		-0.210906, 0.977001, -0.031419,
		-0.938411, -0.211366, -0.273330,
		42.388084, 32.277374, 26.674692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592289, 32.877422, 27.242151>,  <43.044975, 32.425327, 26.866024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592289, 32.877422, 27.242151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.353893, 32.579956, 27.120991>,  <42.210854, 32.401474, 27.048294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.353893, 32.579956, 27.120991>,  <42.592289, 32.877422, 27.242151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353893, 32.579956, 27.120991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393887, -0.057963, 0.917329,
		-0.699746, 0.666030, -0.258376,
		-0.595993, -0.743669, -0.302900,
		42.175095, 32.356853, 27.030121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930050, 33.084232, 27.434399>,  <42.592289, 32.877422, 27.242151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930050, 33.084232, 27.434399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921448, 32.686844, 27.389587>,  <41.916286, 32.448410, 27.362701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921448, 32.686844, 27.389587>,  <41.930050, 33.084232, 27.434399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921448, 32.686844, 27.389587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520676, -0.084528, 0.849560,
		-0.853483, 0.076602, -0.515460,
		-0.021507, -0.993473, -0.112028,
		41.914997, 32.388802, 27.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215626, 32.923431, 27.738251>,  <41.930050, 33.084232, 27.434399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215626, 32.923431, 27.738251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396973, 32.567631, 27.715458>,  <41.505779, 32.354149, 27.701782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.396973, 32.567631, 27.715458>,  <41.215626, 32.923431, 27.738251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396973, 32.567631, 27.715458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425473, -0.272146, 0.863081,
		-0.783221, -0.367045, -0.501840,
		0.453363, -0.889502, -0.056983,
		41.532982, 32.300781, 27.698362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792713, 32.405960, 27.634909>,  <41.215626, 32.923431, 27.738251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792713, 32.405960, 27.634909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099113, 32.191322, 27.776503>,  <41.282955, 32.062538, 27.861458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099113, 32.191322, 27.776503>,  <40.792713, 32.405960, 27.634909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099113, 32.191322, 27.776503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628746, -0.510722, 0.586380,
		-0.133862, -0.671735, -0.728597,
		0.766002, -0.536596, 0.353984,
		41.328915, 32.030342, 27.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473785, 31.742804, 27.738573>,  <40.792713, 32.405960, 27.634909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473785, 31.742804, 27.738573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806461, 31.786335, 27.956364>,  <41.006065, 31.812454, 28.087038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.806461, 31.786335, 27.956364>,  <40.473785, 31.742804, 27.738573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806461, 31.786335, 27.956364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489420, -0.319431, 0.811438,
		0.262230, -0.941340, -0.212404,
		0.831688, 0.108828, 0.544475,
		41.055969, 31.818983, 28.119705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367840, 31.236055, 28.199007>,  <40.473785, 31.742804, 27.738573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367840, 31.236055, 28.199007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642689, 31.469450, 28.372168>,  <40.807598, 31.609486, 28.476063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642689, 31.469450, 28.372168>,  <40.367840, 31.236055, 28.199007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642689, 31.469450, 28.372168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449531, -0.126658, 0.884240,
		0.570772, -0.802186, 0.175265,
		0.687126, 0.583486, 0.432900,
		40.848827, 31.644495, 28.502037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419693, 30.873888, 28.823206>,  <40.367840, 31.236055, 28.199007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419693, 30.873888, 28.823206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586788, 31.226748, 28.910212>,  <40.687046, 31.438463, 28.962416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.586788, 31.226748, 28.910212>,  <40.419693, 30.873888, 28.823206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586788, 31.226748, 28.910212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342545, -0.068824, 0.936977,
		0.841523, -0.465916, 0.273425,
		0.417734, 0.882148, 0.217515,
		40.712109, 31.491392, 28.975466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.580326, 34.133205, 25.464808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.337376, 34.411331, 25.311115>,  <45.191605, 34.578205, 25.218899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.337376, 34.411331, 25.311115>,  <45.580326, 34.133205, 25.464808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337376, 34.411331, 25.311115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274020, -0.270614, -0.922866,
		-0.745657, -0.665816, -0.026164,
		-0.607379, 0.695311, -0.384232,
		45.155163, 34.619923, 25.195847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115814, 33.747265, 24.935642>,  <45.580326, 34.133205, 25.464808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115814, 33.747265, 24.935642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.155979, 34.138523, 24.862816>,  <45.180077, 34.373280, 24.819120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.155979, 34.138523, 24.862816>,  <45.115814, 33.747265, 24.935642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155979, 34.138523, 24.862816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344921, -0.205866, -0.915778,
		-0.933245, 0.029156, -0.358055,
		0.100412, 0.978146, -0.182067,
		45.186104, 34.431969, 24.808195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823685, 33.839912, 24.297163>,  <45.115814, 33.747265, 24.935642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823685, 33.839912, 24.297163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.074108, 34.149414, 24.335854>,  <45.224361, 34.335114, 24.359068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.074108, 34.149414, 24.335854>,  <44.823685, 33.839912, 24.297163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074108, 34.149414, 24.335854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293705, -0.119077, -0.948450,
		-0.722350, 0.622193, -0.301805,
		0.626057, 0.773754, 0.096726,
		45.261925, 34.381542, 24.364872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982635, 33.931236, 23.669518>,  <44.823685, 33.839912, 24.297163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982635, 33.931236, 23.669518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244408, 34.190815, 23.824745>,  <45.401470, 34.346561, 23.917881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.244408, 34.190815, 23.824745>,  <44.982635, 33.931236, 23.669518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244408, 34.190815, 23.824745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407497, 0.129626, -0.903960,
		-0.636923, 0.749713, -0.179611,
		0.654428, 0.648943, 0.388068,
		45.440735, 34.385498, 23.941166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937962, 34.485847, 23.268066>,  <44.982635, 33.931236, 23.669518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937962, 34.485847, 23.268066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.290436, 34.501472, 23.456526>,  <45.501923, 34.510849, 23.569601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.290436, 34.501472, 23.456526>,  <44.937962, 34.485847, 23.268066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290436, 34.501472, 23.456526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467256, 0.079729, -0.880520,
		-0.071960, 0.996051, 0.052004,
		0.881189, 0.039063, 0.471148,
		45.554794, 34.513191, 23.597870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253868, 35.081287, 22.987961>,  <44.937962, 34.485847, 23.268066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253868, 35.081287, 22.987961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.539082, 34.838882, 23.129005>,  <45.710209, 34.693439, 23.213633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.539082, 34.838882, 23.129005>,  <45.253868, 35.081287, 22.987961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539082, 34.838882, 23.129005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563239, 0.195582, -0.802814,
		0.417552, 0.771035, 0.480787,
		0.713030, -0.606014, 0.352611,
		45.752991, 34.657078, 23.234789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929264, 35.401798, 22.943621>,  <45.253868, 35.081287, 22.987961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929264, 35.401798, 22.943621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.019844, 35.012394, 22.956245>,  <46.074192, 34.778751, 22.963820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.019844, 35.012394, 22.956245>,  <45.929264, 35.401798, 22.943621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019844, 35.012394, 22.956245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555207, 0.102389, -0.825385,
		0.800291, 0.204431, 0.563687,
		0.226450, -0.973511, 0.031561,
		46.087780, 34.720341, 22.965714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.701561, 35.374847, 22.858442>,  <45.929264, 35.401798, 22.943621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.701561, 35.374847, 22.858442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.549702, 35.025608, 22.736092>,  <46.458588, 34.816063, 22.662682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.549702, 35.025608, 22.736092>,  <46.701561, 35.374847, 22.858442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.549702, 35.025608, 22.736092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480574, 0.096398, -0.871640,
		0.790516, -0.477914, 0.382993,
		-0.379649, -0.873101, -0.305877,
		46.435806, 34.763680, 22.644329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.274403, 35.045795, 22.596087>,  <46.701561, 35.374847, 22.858442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.274403, 35.045795, 22.596087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.957909, 34.847134, 22.453381>,  <46.768013, 34.727936, 22.367756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.957909, 34.847134, 22.453381>,  <47.274403, 35.045795, 22.596087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957909, 34.847134, 22.453381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379454, 0.058756, -0.923343,
		0.479548, -0.865955, 0.141969,
		-0.791232, -0.496658, -0.356767,
		46.720539, 34.698135, 22.346350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.606342, 34.561333, 22.062780>,  <47.274403, 35.045795, 22.596087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.606342, 34.561333, 22.062780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.213600, 34.567463, 21.987171>,  <46.977955, 34.571140, 21.941805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.213600, 34.567463, 21.987171>,  <47.606342, 34.561333, 22.062780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213600, 34.567463, 21.987171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189407, 0.029424, -0.981458,
		-0.009485, -0.999449, -0.031794,
		-0.981853, 0.015331, -0.189024,
		46.919044, 34.572060, 21.930464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.559120, 34.019108, 21.450201>,  <47.606342, 34.561333, 22.062780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.559120, 34.019108, 21.450201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.231628, 34.248158, 21.467075>,  <47.035133, 34.385586, 21.477200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.231628, 34.248158, 21.467075>,  <47.559120, 34.019108, 21.450201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231628, 34.248158, 21.467075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013792, 0.053834, -0.998455,
		-0.574008, -0.818050, -0.036179,
		-0.818734, 0.572622, 0.042184,
		46.986008, 34.419945, 21.479731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948803, 33.690948, 21.148863>,  <47.559120, 34.019108, 21.450201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948803, 33.690948, 21.148863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.876179, 34.084126, 21.137100>,  <46.832603, 34.320030, 21.130043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.876179, 34.084126, 21.137100>,  <46.948803, 33.690948, 21.148863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.876179, 34.084126, 21.137100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130914, -0.005478, -0.991379,
		-0.974626, -0.183848, -0.127685,
		-0.181564, 0.982939, -0.029408,
		46.821709, 34.379005, 21.128279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.524223, 33.820248, 20.539211>,  <46.948803, 33.690948, 21.148863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.524223, 33.820248, 20.539211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.688053, 34.171623, 20.637676>,  <46.786350, 34.382446, 20.696754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.688053, 34.171623, 20.637676>,  <46.524223, 33.820248, 20.539211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.688053, 34.171623, 20.637676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184411, 0.184540, -0.965369,
		-0.893442, 0.440788, -0.086410,
		0.409578, 0.878437, 0.246162,
		46.810925, 34.435154, 20.711525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126129, 34.403400, 20.208073>,  <46.524223, 33.820248, 20.539211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126129, 34.403400, 20.208073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.512184, 34.481369, 20.277937>,  <46.743816, 34.528152, 20.319855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.512184, 34.481369, 20.277937>,  <46.126129, 34.403400, 20.208073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512184, 34.481369, 20.277937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176882, 0.006089, -0.984213,
		-0.192912, 0.980799, -0.028602,
		0.965141, 0.194925, 0.174660,
		46.801727, 34.539848, 20.330336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793312, 34.419693, 19.612061>,  <46.126129, 34.403400, 20.208073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793312, 34.419693, 19.612061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.526268, 34.169449, 19.450613>,  <45.366043, 34.019302, 19.353745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.526268, 34.169449, 19.450613>,  <45.793312, 34.419693, 19.612061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526268, 34.169449, 19.450613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414248, -0.138325, 0.899592,
		-0.618623, 0.767776, -0.166810,
		-0.667611, -0.625608, -0.403620,
		45.325985, 33.981766, 19.329527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114830, 34.604916, 19.993439>,  <45.793312, 34.419693, 19.612061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114830, 34.604916, 19.993439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057415, 34.238953, 19.842527>,  <45.022968, 34.019375, 19.751982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.057415, 34.238953, 19.842527>,  <45.114830, 34.604916, 19.993439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057415, 34.238953, 19.842527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630559, -0.209275, 0.747395,
		-0.762753, 0.345174, -0.546866,
		-0.143536, -0.914909, -0.377277,
		45.014355, 33.964481, 19.729343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430550, 34.539433, 20.112768>,  <45.114830, 34.604916, 19.993439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430550, 34.539433, 20.112768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.575554, 34.169754, 20.064688>,  <44.662556, 33.947948, 20.035839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.575554, 34.169754, 20.064688>,  <44.430550, 34.539433, 20.112768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575554, 34.169754, 20.064688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572697, -0.322653, 0.753600,
		-0.735257, -0.204350, -0.646250,
		0.362512, -0.924195, -0.120202,
		44.684307, 33.892494, 20.028627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791882, 34.045498, 20.145082>,  <44.430550, 34.539433, 20.112768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791882, 34.045498, 20.145082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115276, 33.822968, 20.221874>,  <44.309311, 33.689449, 20.267950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115276, 33.822968, 20.221874>,  <43.791882, 34.045498, 20.145082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115276, 33.822968, 20.221874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492544, -0.461083, 0.738108,
		-0.322109, -0.691307, -0.646793,
		0.808484, -0.556325, 0.191980,
		44.357822, 33.656071, 20.279469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631878, 33.360008, 20.151197>,  <43.791882, 34.045498, 20.145082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631878, 33.360008, 20.151197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.964878, 33.371586, 20.372501>,  <44.164680, 33.378532, 20.505283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.964878, 33.371586, 20.372501>,  <43.631878, 33.360008, 20.151197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964878, 33.371586, 20.372501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496618, -0.403666, 0.768391,
		0.245573, -0.914448, -0.321680,
		0.832505, 0.028945, 0.553261,
		44.214630, 33.380268, 20.538479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678429, 32.613026, 20.487104>,  <43.631878, 33.360008, 20.151197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678429, 32.613026, 20.487104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.885849, 32.884373, 20.695305>,  <44.010300, 33.047180, 20.820225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.885849, 32.884373, 20.695305>,  <43.678429, 32.613026, 20.487104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885849, 32.884373, 20.695305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398351, -0.346979, 0.849071,
		0.756589, -0.647625, 0.090305,
		0.518546, 0.678371, 0.520503,
		44.041412, 33.087883, 20.851456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818943, 32.286812, 21.107401>,  <43.678429, 32.613026, 20.487104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818943, 32.286812, 21.107401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907017, 32.651661, 21.245705>,  <43.959862, 32.870571, 21.328686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.907017, 32.651661, 21.245705>,  <43.818943, 32.286812, 21.107401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907017, 32.651661, 21.245705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240033, -0.292894, 0.925525,
		0.945464, -0.286782, 0.154448,
		0.220187, 0.912123, 0.345758,
		43.973072, 32.925297, 21.349432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964180, 32.108654, 21.759754>,  <43.818943, 32.286812, 21.107401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964180, 32.108654, 21.759754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.937744, 32.506897, 21.786297>,  <43.921883, 32.745842, 21.802221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.937744, 32.506897, 21.786297>,  <43.964180, 32.108654, 21.759754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937744, 32.506897, 21.786297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349665, -0.085394, 0.932975,
		0.934540, 0.038462, 0.353772,
		-0.066094, 0.995605, 0.066355,
		43.917915, 32.805580, 21.806204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388809, 32.313282, 22.489658>,  <43.964180, 32.108654, 21.759754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388809, 32.313282, 22.489658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.132835, 32.606785, 22.398373>,  <43.979252, 32.782887, 22.343601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.132835, 32.606785, 22.398373>,  <44.388809, 32.313282, 22.489658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132835, 32.606785, 22.398373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282888, 0.051178, 0.957787,
		0.714462, 0.677483, 0.174820,
		-0.639937, 0.733756, -0.228216,
		43.940853, 32.826912, 22.329908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388691, 32.854900, 23.029354>,  <44.388809, 32.313282, 22.489658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388691, 32.854900, 23.029354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035656, 32.908745, 22.849169>,  <43.823833, 32.941051, 22.741056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035656, 32.908745, 22.849169>,  <44.388691, 32.854900, 23.029354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035656, 32.908745, 22.849169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454276, 0.002680, 0.890857,
		0.121126, 0.990895, 0.058784,
		-0.882588, 0.134610, -0.450465,
		43.770878, 32.949127, 22.714029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030674, 33.424892, 23.367565>,  <44.388691, 32.854900, 23.029354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030674, 33.424892, 23.367565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.740635, 33.214855, 23.189350>,  <43.566612, 33.088833, 23.082420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.740635, 33.214855, 23.189350>,  <44.030674, 33.424892, 23.367565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740635, 33.214855, 23.189350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534743, 0.021670, 0.844737,
		-0.433914, 0.850767, -0.296505,
		-0.725099, -0.525096, -0.445539,
		43.523106, 33.057327, 23.055689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.503807, 33.687500, 23.644733>,  <44.030674, 33.424892, 23.367565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.503807, 33.687500, 23.644733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354183, 33.344345, 23.503819>,  <43.264408, 33.138451, 23.419270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354183, 33.344345, 23.503819>,  <43.503807, 33.687500, 23.644733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354183, 33.344345, 23.503819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519926, -0.120566, 0.845660,
		-0.767958, 0.499486, -0.400942,
		-0.374055, -0.857891, -0.352285,
		43.241966, 33.086979, 23.398132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792934, 33.761253, 23.700073>,  <43.503807, 33.687500, 23.644733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792934, 33.761253, 23.700073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.892540, 33.375744, 23.661869>,  <42.952305, 33.144436, 23.638947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.892540, 33.375744, 23.661869>,  <42.792934, 33.761253, 23.700073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892540, 33.375744, 23.661869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649499, -0.239336, 0.721712,
		-0.718430, -0.117683, -0.685572,
		0.249016, -0.963779, -0.095511,
		42.967243, 33.086609, 23.633217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150436, 33.335999, 23.755169>,  <42.792934, 33.761253, 23.700073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150436, 33.335999, 23.755169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.476452, 33.131142, 23.863560>,  <42.672062, 33.008228, 23.928595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.476452, 33.131142, 23.863560>,  <42.150436, 33.335999, 23.755169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476452, 33.131142, 23.863560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484554, -0.346041, 0.803407,
		-0.317692, -0.786106, -0.530197,
		0.815033, -0.512145, 0.270976,
		42.720963, 32.977501, 23.944853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603115, 33.164871, 23.413412>,  <42.150436, 33.335999, 23.755169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603115, 33.164871, 23.413412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.267162, 33.375164, 23.359442>,  <41.065590, 33.501339, 23.327061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.267162, 33.375164, 23.359442>,  <41.603115, 33.164871, 23.413412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267162, 33.375164, 23.359442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373753, 0.379936, -0.846143,
		-0.393582, -0.761088, -0.515595,
		-0.839882, 0.525732, -0.134923,
		41.015198, 33.532883, 23.318964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381210, 33.097424, 22.731855>,  <41.603115, 33.164871, 23.413412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381210, 33.097424, 22.731855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216663, 33.439980, 22.856670>,  <41.117935, 33.645515, 22.931559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.216663, 33.439980, 22.856670>,  <41.381210, 33.097424, 22.731855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216663, 33.439980, 22.856670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380855, 0.472527, -0.794775,
		-0.828086, -0.208104, -0.520544,
		-0.411368, 0.856394, 0.312036,
		41.093254, 33.696899, 22.950281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066334, 33.347244, 22.252756>,  <41.381210, 33.097424, 22.731855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066334, 33.347244, 22.252756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121105, 33.667759, 22.485714>,  <41.153969, 33.860069, 22.625488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.121105, 33.667759, 22.485714>,  <41.066334, 33.347244, 22.252756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121105, 33.667759, 22.485714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322490, 0.519845, -0.791050,
		-0.936617, 0.296134, -0.187227,
		0.136928, 0.801290, 0.582396,
		41.162182, 33.908146, 22.660433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753120, 33.951801, 21.819490>,  <41.066334, 33.347244, 22.252756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753120, 33.951801, 21.819490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.965805, 34.111080, 22.118481>,  <41.093414, 34.206650, 22.297874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.965805, 34.111080, 22.118481>,  <40.753120, 33.951801, 21.819490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965805, 34.111080, 22.118481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328000, 0.716882, -0.615220,
		-0.780833, 0.572291, 0.250564,
		0.531710, 0.398199, 0.747477,
		41.125317, 34.230541, 22.342724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640610, 34.685932, 21.719055>,  <40.753120, 33.951801, 21.819490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640610, 34.685932, 21.719055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.977859, 34.639835, 21.929142>,  <41.180210, 34.612175, 22.055195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.977859, 34.639835, 21.929142>,  <40.640610, 34.685932, 21.719055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977859, 34.639835, 21.929142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502559, 0.516266, -0.693473,
		-0.191231, 0.848639, 0.493196,
		0.843128, -0.115246, 0.525217,
		41.230797, 34.605263, 22.086706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907009, 35.376675, 21.953920>,  <40.640610, 34.685932, 21.719055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907009, 35.376675, 21.953920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208561, 35.117386, 21.911068>,  <41.389492, 34.961811, 21.885357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.208561, 35.117386, 21.911068>,  <40.907009, 35.376675, 21.953920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208561, 35.117386, 21.911068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408281, 0.589959, -0.696602,
		0.514756, 0.481413, 0.709414,
		0.753878, -0.648221, -0.107133,
		41.434723, 34.922920, 21.878927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410278, 35.813400, 21.736746>,  <40.907009, 35.376675, 21.953920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410278, 35.813400, 21.736746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568394, 35.455536, 21.653479>,  <41.663261, 35.240818, 21.603518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.568394, 35.455536, 21.653479>,  <41.410278, 35.813400, 21.736746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568394, 35.455536, 21.653479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187160, 0.300318, -0.935297,
		0.899288, 0.330750, 0.286156,
		0.395287, -0.894658, -0.208169,
		41.686981, 35.187138, 21.591028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706764, 36.459888, 21.824074>,  <41.410278, 35.813400, 21.736746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706764, 36.459888, 21.824074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561935, 36.824677, 21.746904>,  <41.475037, 37.043549, 21.700602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.561935, 36.824677, 21.746904>,  <41.706764, 36.459888, 21.824074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561935, 36.824677, 21.746904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501471, -0.016103, 0.865024,
		0.785766, 0.409950, 0.463155,
		-0.362075, 0.911966, -0.192925,
		41.453312, 37.098267, 21.689028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958046, 36.805595, 22.343256>,  <41.706764, 36.459888, 21.824074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958046, 36.805595, 22.343256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.651657, 37.001999, 22.177269>,  <41.467823, 37.119843, 22.077677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.651657, 37.001999, 22.177269>,  <41.958046, 36.805595, 22.343256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651657, 37.001999, 22.177269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333471, 0.248392, 0.909449,
		0.549623, 0.834992, -0.026524,
		-0.765971, 0.491009, -0.414968,
		41.421867, 37.149303, 22.052778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890644, 37.482513, 22.768894>,  <41.958046, 36.805595, 22.343256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890644, 37.482513, 22.768894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.537823, 37.410477, 22.594744>,  <41.326130, 37.367252, 22.490253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.537823, 37.410477, 22.594744>,  <41.890644, 37.482513, 22.768894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537823, 37.410477, 22.594744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470571, 0.290671, 0.833111,
		-0.023488, 0.939721, -0.341134,
		-0.882050, -0.180096, -0.435378,
		41.273209, 37.356449, 22.464130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429672, 37.999184, 22.940065>,  <41.890644, 37.482513, 22.768894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429672, 37.999184, 22.940065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.169098, 37.722775, 22.814770>,  <41.012753, 37.556931, 22.739594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.169098, 37.722775, 22.814770>,  <41.429672, 37.999184, 22.940065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169098, 37.722775, 22.814770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609957, 0.231478, 0.757872,
		-0.451198, 0.684769, -0.572287,
		-0.651439, -0.691020, -0.313237,
		40.973667, 37.515469, 22.720798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772034, 38.279972, 22.978224>,  <41.429672, 37.999184, 22.940065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772034, 38.279972, 22.978224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696068, 37.888203, 22.950893>,  <40.650490, 37.653141, 22.934494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.696068, 37.888203, 22.950893>,  <40.772034, 38.279972, 22.978224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696068, 37.888203, 22.950893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410094, 0.015901, 0.911905,
		-0.892052, 0.201201, -0.404674,
		-0.189910, -0.979421, -0.068327,
		40.639095, 37.594376, 22.930395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141975, 38.160549, 23.333841>,  <40.772034, 38.279972, 22.978224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141975, 38.160549, 23.333841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.265614, 37.780270, 23.323809>,  <40.339794, 37.552101, 23.317789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.265614, 37.780270, 23.323809>,  <40.141975, 38.160549, 23.333841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265614, 37.780270, 23.323809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593301, -0.213374, 0.776186,
		-0.743273, -0.225032, -0.630005,
		0.309094, -0.950701, -0.025084,
		40.358341, 37.495060, 23.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534012, 37.721119, 23.510704>,  <40.141975, 38.160549, 23.333841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534012, 37.721119, 23.510704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862961, 37.507526, 23.589262>,  <40.060329, 37.379372, 23.636396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862961, 37.507526, 23.589262>,  <39.534012, 37.721119, 23.510704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862961, 37.507526, 23.589262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397378, -0.292030, 0.869948,
		-0.407182, -0.793463, -0.452349,
		0.822371, -0.533981, 0.196396,
		40.109673, 37.347332, 23.648182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.604187, 37.871746, 21.730423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.488743, 37.488930, 21.741568>,  <46.419476, 37.259239, 21.748255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.488743, 37.488930, 21.741568>,  <46.604187, 37.871746, 21.730423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488743, 37.488930, 21.741568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648946, 0.216933, 0.729252,
		-0.703968, 0.192393, -0.683677,
		-0.288615, -0.957040, 0.027861,
		46.402157, 37.201817, 21.749926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909733, 37.864841, 21.621960>,  <46.604187, 37.871746, 21.730423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909733, 37.864841, 21.621960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.009190, 37.528797, 21.814787>,  <46.068863, 37.327171, 21.930483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.009190, 37.528797, 21.814787>,  <45.909733, 37.864841, 21.621960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009190, 37.528797, 21.814787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516363, 0.306110, 0.799791,
		-0.819481, -0.447781, -0.357692,
		0.248638, -0.840112, 0.482068,
		46.083782, 37.276764, 21.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286678, 37.580692, 21.866764>,  <45.909733, 37.864841, 21.621960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286678, 37.580692, 21.866764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.577450, 37.417877, 22.087994>,  <45.751915, 37.320187, 22.220732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.577450, 37.417877, 22.087994>,  <45.286678, 37.580692, 21.866764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577450, 37.417877, 22.087994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510363, 0.218641, 0.831701,
		-0.459459, -0.886858, -0.048800,
		0.726930, -0.407038, 0.553075,
		45.795528, 37.295765, 22.253916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924397, 37.086552, 22.217201>,  <45.286678, 37.580692, 21.866764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924397, 37.086552, 22.217201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264271, 37.149296, 22.418568>,  <45.468197, 37.186943, 22.539387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.264271, 37.149296, 22.418568>,  <44.924397, 37.086552, 22.217201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264271, 37.149296, 22.418568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527289, 0.252076, 0.811433,
		0.000384, -0.954910, 0.296897,
		0.849686, 0.156862, 0.503416,
		45.519176, 37.196354, 22.569593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755901, 36.748932, 22.785255>,  <44.924397, 37.086552, 22.217201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755901, 36.748932, 22.785255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.078541, 36.965530, 22.880072>,  <45.272125, 37.095490, 22.936962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.078541, 36.965530, 22.880072>,  <44.755901, 36.748932, 22.785255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.078541, 36.965530, 22.880072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366881, 0.144188, 0.919026,
		0.463466, -0.828249, 0.314965,
		0.806596, 0.541492, 0.237042,
		45.320518, 37.127979, 22.951185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124226, 36.435020, 23.390736>,  <44.755901, 36.748932, 22.785255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124226, 36.435020, 23.390736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.231098, 36.820244, 23.377333>,  <45.295223, 37.051380, 23.369291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.231098, 36.820244, 23.377333>,  <45.124226, 36.435020, 23.390736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231098, 36.820244, 23.377333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122563, 0.068450, 0.990097,
		0.955819, -0.260433, 0.136325,
		0.267185, 0.963062, -0.033507,
		45.311253, 37.109161, 23.367281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533962, 36.535549, 24.049688>,  <45.124226, 36.435020, 23.390736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533962, 36.535549, 24.049688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.417152, 36.893688, 23.915186>,  <45.347065, 37.108574, 23.834484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.417152, 36.893688, 23.915186>,  <45.533962, 36.535549, 24.049688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417152, 36.893688, 23.915186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014020, 0.355553, 0.934551,
		0.956307, 0.268200, -0.116384,
		-0.292027, 0.895350, -0.336258,
		45.329544, 37.162292, 23.814308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909233, 37.066566, 24.460327>,  <45.533962, 36.535549, 24.049688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909233, 37.066566, 24.460327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.602734, 37.260395, 24.291544>,  <45.418835, 37.376694, 24.190275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.602734, 37.260395, 24.291544>,  <45.909233, 37.066566, 24.460327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602734, 37.260395, 24.291544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281277, 0.337466, 0.898332,
		0.577704, 0.807034, -0.122284,
		-0.766251, 0.484574, -0.421956,
		45.372860, 37.405766, 24.164957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945892, 37.744263, 24.787271>,  <45.909233, 37.066566, 24.460327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945892, 37.744263, 24.787271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.574234, 37.748699, 24.639452>,  <45.351238, 37.751362, 24.550760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.574234, 37.748699, 24.639452>,  <45.945892, 37.744263, 24.787271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574234, 37.748699, 24.639452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265628, 0.675223, 0.688125,
		0.257161, 0.737531, -0.624433,
		-0.929145, 0.011092, -0.369550,
		45.295490, 37.752026, 24.528587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.746620, 38.523003, 24.714523>,  <45.945892, 37.744263, 24.787271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.746620, 38.523003, 24.714523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.440674, 38.267296, 24.746326>,  <45.257107, 38.113873, 24.765409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.440674, 38.267296, 24.746326>,  <45.746620, 38.523003, 24.714523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440674, 38.267296, 24.746326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471428, 0.639574, 0.607207,
		-0.439018, 0.426949, -0.790555,
		-0.764865, -0.639265, 0.079509,
		45.211216, 38.075516, 24.770180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.184502, 38.914883, 24.633017>,  <45.746620, 38.523003, 24.714523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.184502, 38.914883, 24.633017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.028622, 38.588905, 24.804594>,  <44.935093, 38.393318, 24.907541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.028622, 38.588905, 24.804594>,  <45.184502, 38.914883, 24.633017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028622, 38.588905, 24.804594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552404, 0.579525, 0.599167,
		-0.736873, -0.003454, -0.676022,
		-0.389702, -0.814947, 0.428944,
		44.911713, 38.344421, 24.933277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354546, 39.002151, 24.777203>,  <45.184502, 38.914883, 24.633017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354546, 39.002151, 24.777203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.499954, 38.723660, 25.024790>,  <44.587200, 38.556564, 25.173342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.499954, 38.723660, 25.024790>,  <44.354546, 39.002151, 24.777203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.499954, 38.723660, 25.024790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613678, 0.320920, 0.721394,
		-0.700894, -0.642087, -0.310599,
		0.363520, -0.696228, 0.618966,
		44.609009, 38.514790, 25.210480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515831, 39.101818, 24.605566>,  <44.354546, 39.002151, 24.777203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515831, 39.101818, 24.605566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258598, 39.407639, 24.623032>,  <43.104259, 39.591129, 24.633511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258598, 39.407639, 24.623032>,  <43.515831, 39.101818, 24.605566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258598, 39.407639, 24.623032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081587, 0.125095, -0.988784,
		-0.761439, -0.632307, -0.142824,
		-0.643081, 0.764552, 0.043664,
		43.065674, 39.637005, 24.636131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954136, 38.920013, 24.153606>,  <43.515831, 39.101818, 24.605566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954136, 38.920013, 24.153606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987373, 39.316841, 24.191319>,  <43.007317, 39.554939, 24.213945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.987373, 39.316841, 24.191319>,  <42.954136, 38.920013, 24.153606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987373, 39.316841, 24.191319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156015, 0.080489, -0.984470,
		-0.984253, 0.096515, -0.148090,
		0.083097, 0.992072, 0.094279,
		43.012302, 39.614464, 24.219603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419357, 39.347382, 23.645470>,  <42.954136, 38.920013, 24.153606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419357, 39.347382, 23.645470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.719704, 39.586483, 23.757824>,  <42.899910, 39.729942, 23.825237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.719704, 39.586483, 23.757824>,  <42.419357, 39.347382, 23.645470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719704, 39.586483, 23.757824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295330, 0.076524, -0.952326,
		-0.590747, 0.798022, -0.119074,
		0.750865, 0.597750, 0.280886,
		42.944962, 39.765808, 23.842091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531551, 39.768654, 23.022650>,  <42.419357, 39.347382, 23.645470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531551, 39.768654, 23.022650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858219, 39.817371, 23.248291>,  <43.054222, 39.846603, 23.383677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.858219, 39.817371, 23.248291>,  <42.531551, 39.768654, 23.022650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858219, 39.817371, 23.248291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557572, 0.085628, -0.825700,
		-0.148868, 0.988855, 0.002022,
		0.816671, 0.121793, 0.564105,
		43.103222, 39.853909, 23.417522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.971607, 40.250435, 22.726776>,  <42.531551, 39.768654, 23.022650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.971607, 40.250435, 22.726776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.233841, 40.049450, 22.952253>,  <43.391182, 39.928860, 23.087540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.233841, 40.049450, 22.952253>,  <42.971607, 40.250435, 22.726776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233841, 40.049450, 22.952253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650712, -0.002836, -0.759319,
		0.383124, 0.864597, 0.325096,
		0.655583, -0.502458, 0.563691,
		43.430515, 39.898712, 23.121361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618488, 40.642872, 22.706602>,  <42.971607, 40.250435, 22.726776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618488, 40.642872, 22.706602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.677357, 40.257374, 22.795630>,  <43.712677, 40.026073, 22.849045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.677357, 40.257374, 22.795630>,  <43.618488, 40.642872, 22.706602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677357, 40.257374, 22.795630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669437, -0.068598, -0.739695,
		0.728145, 0.257856, 0.635071,
		0.147170, -0.963745, 0.222567,
		43.721508, 39.968250, 22.862400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275406, 40.669418, 22.721704>,  <43.618488, 40.642872, 22.706602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275406, 40.669418, 22.721704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.167561, 40.287758, 22.669712>,  <44.102852, 40.058762, 22.638517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.167561, 40.287758, 22.669712>,  <44.275406, 40.669418, 22.721704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167561, 40.287758, 22.669712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723216, -0.111514, -0.681560,
		0.635819, -0.277764, 0.720126,
		-0.269616, -0.954155, -0.129980,
		44.086674, 40.001511, 22.630718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.903572, 40.359993, 22.631153>,  <44.275406, 40.669418, 22.721704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.903572, 40.359993, 22.631153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.646950, 40.069969, 22.530994>,  <44.492977, 39.895954, 22.470900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.646950, 40.069969, 22.530994>,  <44.903572, 40.359993, 22.631153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646950, 40.069969, 22.530994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615730, -0.292087, -0.731821,
		0.457477, -0.623679, 0.633830,
		-0.641555, -0.725059, -0.250395,
		44.454483, 39.852451, 22.455875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.337337, 39.875374, 22.441450>,  <44.903572, 40.359993, 22.631153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.337337, 39.875374, 22.441450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.992683, 39.760399, 22.274137>,  <44.785889, 39.691414, 22.173750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.992683, 39.760399, 22.274137>,  <45.337337, 39.875374, 22.441450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992683, 39.760399, 22.274137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499007, -0.329458, -0.801529,
		0.092581, -0.899355, 0.427306,
		-0.861638, -0.287435, -0.418283,
		44.734192, 39.674168, 22.148653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432144, 39.126839, 22.363504>,  <45.337337, 39.875374, 22.441450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432144, 39.126839, 22.363504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.151360, 39.272717, 22.118799>,  <44.982891, 39.360245, 21.971975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.151360, 39.272717, 22.118799>,  <45.432144, 39.126839, 22.363504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151360, 39.272717, 22.118799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379177, -0.535745, -0.754455,
		-0.602895, -0.761561, 0.237786,
		-0.701956, 0.364694, -0.611764,
		44.940773, 39.382126, 21.935270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170452, 38.552895, 22.042860>,  <45.432144, 39.126839, 22.363504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170452, 38.552895, 22.042860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.087196, 38.864731, 21.806581>,  <45.037243, 39.051830, 21.664814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.087196, 38.864731, 21.806581>,  <45.170452, 38.552895, 22.042860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087196, 38.864731, 21.806581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397322, -0.484461, -0.779379,
		-0.893764, -0.396916, -0.208912,
		-0.208138, 0.779586, -0.590698,
		45.024754, 39.098606, 21.629372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981022, 38.246517, 21.461914>,  <45.170452, 38.552895, 22.042860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981022, 38.246517, 21.461914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.032513, 38.621044, 21.331226>,  <45.063408, 38.845760, 21.252813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.032513, 38.621044, 21.331226>,  <44.981022, 38.246517, 21.461914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032513, 38.621044, 21.331226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401762, -0.350451, -0.846033,
		-0.906651, -0.022353, -0.421289,
		0.128730, 0.936314, -0.326717,
		45.071133, 38.901939, 21.233212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573082, 38.330326, 20.785227>,  <44.981022, 38.246517, 21.461914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573082, 38.330326, 20.785227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.876564, 38.589539, 20.811827>,  <45.058655, 38.745064, 20.827785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.876564, 38.589539, 20.811827>,  <44.573082, 38.330326, 20.785227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876564, 38.589539, 20.811827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315632, -0.276391, -0.907736,
		-0.569858, 0.709696, -0.414238,
		0.758708, 0.648028, 0.066499,
		45.104176, 38.783947, 20.831776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686699, 38.505192, 20.138960>,  <44.573082, 38.330326, 20.785227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686699, 38.505192, 20.138960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.027985, 38.586414, 20.331123>,  <45.232758, 38.635147, 20.446421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.027985, 38.586414, 20.331123>,  <44.686699, 38.505192, 20.138960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027985, 38.586414, 20.331123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510779, -0.511623, -0.690902,
		0.105495, 0.834871, -0.540242,
		0.853215, 0.203057, 0.480409,
		45.283951, 38.647331, 20.475246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923008, 38.359592, 20.045450>,  <44.686699, 38.505192, 20.138960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923008, 38.359592, 20.045450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651611, 38.120480, 19.874662>,  <43.488773, 37.977013, 19.772190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.651611, 38.120480, 19.874662>,  <43.923008, 38.359592, 20.045450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.651611, 38.120480, 19.874662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644576, 0.205659, 0.736360,
		-0.352373, 0.774830, -0.524855,
		-0.678495, -0.597782, -0.426968,
		43.448063, 37.941147, 19.746572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261555, 38.621498, 20.109806>,  <43.923008, 38.359592, 20.045450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261555, 38.621498, 20.109806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197636, 38.229908, 20.059093>,  <43.159283, 37.994953, 20.028666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.197636, 38.229908, 20.059093>,  <43.261555, 38.621498, 20.109806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197636, 38.229908, 20.059093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726334, 0.029631, 0.686702,
		-0.668508, 0.201819, -0.715798,
		-0.159799, -0.978975, -0.126779,
		43.149696, 37.936214, 20.021059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523296, 38.506332, 19.985390>,  <43.261555, 38.621498, 20.109806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523296, 38.506332, 19.985390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648197, 38.147358, 20.110035>,  <42.723137, 37.931973, 20.184822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.648197, 38.147358, 20.110035>,  <42.523296, 38.506332, 19.985390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648197, 38.147358, 20.110035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827819, -0.096117, 0.552699,
		-0.466063, -0.430539, -0.772930,
		0.312250, -0.897440, 0.311612,
		42.741871, 37.878124, 20.203518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962128, 38.026527, 19.887983>,  <42.523296, 38.506332, 19.985390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962128, 38.026527, 19.887983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158485, 37.783928, 20.138161>,  <42.276299, 37.638367, 20.288267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.158485, 37.783928, 20.138161>,  <41.962128, 38.026527, 19.887983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158485, 37.783928, 20.138161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814541, -0.064799, 0.576476,
		-0.309106, -0.792437, -0.525830,
		0.490894, -0.606502, 0.625443,
		42.305756, 37.601978, 20.325794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538910, 37.409370, 20.002531>,  <41.962128, 38.026527, 19.887983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538910, 37.409370, 20.002531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.796398, 37.432087, 20.307789>,  <41.950893, 37.445717, 20.490944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.796398, 37.432087, 20.307789>,  <41.538910, 37.409370, 20.002531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796398, 37.432087, 20.307789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747600, -0.166315, 0.642988,
		0.163440, -0.984436, -0.064603,
		0.643725, 0.056793, 0.763147,
		41.989517, 37.449123, 20.536734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315727, 36.815884, 20.473610>,  <41.538910, 37.409370, 20.002531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315727, 36.815884, 20.473610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535267, 37.071838, 20.688759>,  <41.666988, 37.225410, 20.817848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.535267, 37.071838, 20.688759>,  <41.315727, 36.815884, 20.473610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535267, 37.071838, 20.688759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555370, -0.201780, 0.806752,
		0.624766, -0.741501, 0.244630,
		0.548846, 0.639891, 0.537873,
		41.699921, 37.263805, 20.850121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522251, 36.436268, 21.066326>,  <41.315727, 36.815884, 20.473610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522251, 36.436268, 21.066326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543079, 36.823315, 21.165121>,  <41.555576, 37.055542, 21.224398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.543079, 36.823315, 21.165121>,  <41.522251, 36.436268, 21.066326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543079, 36.823315, 21.165121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491901, -0.190391, 0.849579,
		0.869093, -0.165728, 0.466059,
		0.052066, 0.967619, 0.246989,
		41.558701, 37.113602, 21.239218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024330, 35.923309, 21.322853>,  <41.522251, 36.436268, 21.066326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024330, 35.923309, 21.322853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980598, 35.528347, 21.277102>,  <41.954361, 35.291370, 21.249651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.980598, 35.528347, 21.277102>,  <42.024330, 35.923309, 21.322853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980598, 35.528347, 21.277102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379699, 0.064857, -0.922834,
		0.918628, -0.144319, 0.367825,
		-0.109327, -0.987404, -0.114377,
		41.947800, 35.232124, 21.242788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637630, 35.686138, 21.184126>,  <42.024330, 35.923309, 21.322853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637630, 35.686138, 21.184126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348961, 35.467884, 21.013733>,  <42.175758, 35.336929, 20.911497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.348961, 35.467884, 21.013733>,  <42.637630, 35.686138, 21.184126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348961, 35.467884, 21.013733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419408, 0.144916, -0.896156,
		0.550708, -0.825397, 0.124262,
		-0.721677, -0.545637, -0.425985,
		42.132458, 35.304192, 20.885937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049068, 35.355232, 20.750563>,  <42.637630, 35.686138, 21.184126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049068, 35.355232, 20.750563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683365, 35.284721, 20.604652>,  <42.463943, 35.242416, 20.517107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.683365, 35.284721, 20.604652>,  <43.049068, 35.355232, 20.750563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683365, 35.284721, 20.604652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394640, -0.183885, -0.900248,
		0.091618, -0.967012, 0.237685,
		-0.914257, -0.176278, -0.364774,
		42.409088, 35.231838, 20.495220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045570, 34.751656, 20.463980>,  <43.049068, 35.355232, 20.750563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045570, 34.751656, 20.463980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.731472, 34.931046, 20.293217>,  <42.543011, 35.038681, 20.190760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.731472, 34.931046, 20.293217>,  <43.045570, 34.751656, 20.463980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731472, 34.931046, 20.293217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441278, -0.078308, -0.893947,
		-0.434345, -0.890357, -0.136412,
		-0.785250, 0.448477, -0.426908,
		42.495895, 35.065590, 20.165144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883953, 34.364502, 19.951796>,  <43.045570, 34.751656, 20.463980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883953, 34.364502, 19.951796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.704945, 34.697319, 19.820684>,  <42.597542, 34.897007, 19.742018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.704945, 34.697319, 19.820684>,  <42.883953, 34.364502, 19.951796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704945, 34.697319, 19.820684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423879, -0.125381, -0.896999,
		-0.787435, -0.540362, -0.296573,
		-0.447519, 0.832039, -0.327777,
		42.570690, 34.946930, 19.722351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611927, 34.224049, 19.298452>,  <42.883953, 34.364502, 19.951796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611927, 34.224049, 19.298452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629936, 34.623516, 19.308559>,  <42.640743, 34.863197, 19.314623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.629936, 34.623516, 19.308559>,  <42.611927, 34.224049, 19.298452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629936, 34.623516, 19.308559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290829, 0.011093, -0.956711,
		-0.955715, 0.050427, -0.289942,
		0.045028, 0.998666, 0.025267,
		42.643444, 34.923115, 19.316139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332516, 34.445854, 18.613472>,  <42.611927, 34.224049, 19.298452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332516, 34.445854, 18.613472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540524, 34.739048, 18.788887>,  <42.665329, 34.914963, 18.894136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540524, 34.739048, 18.788887>,  <42.332516, 34.445854, 18.613472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540524, 34.739048, 18.788887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469478, 0.183634, -0.863637,
		-0.713564, 0.654989, -0.248628,
		0.520016, 0.732985, 0.438538,
		42.696529, 34.958942, 18.920448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200176, 35.028255, 18.163595>,  <42.332516, 34.445854, 18.613472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200176, 35.028255, 18.163595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523117, 35.148438, 18.366737>,  <42.716881, 35.220547, 18.488623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523117, 35.148438, 18.366737>,  <42.200176, 35.028255, 18.163595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523117, 35.148438, 18.366737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480036, 0.166085, -0.861384,
		-0.343151, 0.939225, -0.010139,
		0.807349, 0.300452, 0.507854,
		42.765324, 35.238575, 18.519094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541752, 35.490112, 17.737129>,  <42.200176, 35.028255, 18.163595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541752, 35.490112, 17.737129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.837681, 35.399837, 17.990656>,  <43.015240, 35.345673, 18.142773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.837681, 35.399837, 17.990656>,  <42.541752, 35.490112, 17.737129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837681, 35.399837, 17.990656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654031, 0.020296, -0.756195,
		0.157799, 0.973988, 0.162622,
		0.739826, -0.225687, 0.633816,
		43.059628, 35.332130, 18.180801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.605675, 33.732822, 32.597740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988129, 33.647465, 32.678017>,  <37.217602, 33.596249, 32.726181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988129, 33.647465, 32.678017>,  <36.605675, 33.732822, 32.597740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988129, 33.647465, 32.678017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235163, 0.150610, -0.960216,
		0.174682, 0.965287, 0.194186,
		0.956130, -0.213397, 0.200690,
		37.274967, 33.583447, 32.738224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061974, 34.281723, 32.181808>,  <36.605675, 33.732822, 32.597740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061974, 34.281723, 32.181808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292385, 33.970905, 32.283314>,  <37.430630, 33.784416, 32.344215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.292385, 33.970905, 32.283314>,  <37.061974, 34.281723, 32.181808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292385, 33.970905, 32.283314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431758, 0.025618, -0.901625,
		0.694103, 0.628923, 0.350253,
		0.576026, -0.777046, 0.253761,
		37.465195, 33.737793, 32.359444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719406, 34.502354, 32.041851>,  <37.061974, 34.281723, 32.181808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719406, 34.502354, 32.041851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692913, 34.103245, 32.045074>,  <37.677017, 33.863781, 32.047009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692913, 34.103245, 32.045074>,  <37.719406, 34.502354, 32.041851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692913, 34.103245, 32.045074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411485, -0.034666, -0.910757,
		0.909007, -0.057008, 0.412864,
		-0.066233, -0.997772, 0.008054,
		37.673042, 33.803913, 32.047489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286690, 34.299385, 31.607082>,  <37.719406, 34.502354, 32.041851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286690, 34.299385, 31.607082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018822, 34.002331, 31.609192>,  <37.858101, 33.824097, 31.610456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.018822, 34.002331, 31.609192>,  <38.286690, 34.299385, 31.607082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018822, 34.002331, 31.609192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259912, -0.241012, -0.935072,
		0.695691, -0.624821, 0.354420,
		-0.669671, -0.742639, 0.005272,
		37.817921, 33.779541, 31.610773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658733, 33.687412, 31.627203>,  <38.286690, 34.299385, 31.607082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658733, 33.687412, 31.627203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301556, 33.611641, 31.463852>,  <38.087250, 33.566177, 31.365841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.301556, 33.611641, 31.463852>,  <38.658733, 33.687412, 31.627203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301556, 33.611641, 31.463852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426052, -0.062641, -0.902527,
		0.145388, -0.979893, 0.136643,
		-0.892940, -0.189433, -0.408379,
		38.033672, 33.554810, 31.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740894, 33.143131, 31.096577>,  <38.658733, 33.687412, 31.627203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740894, 33.143131, 31.096577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378902, 33.303555, 31.039782>,  <38.161705, 33.399807, 31.005705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.378902, 33.303555, 31.039782>,  <38.740894, 33.143131, 31.096577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378902, 33.303555, 31.039782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077480, -0.172799, -0.981905,
		-0.418334, -0.899608, 0.125306,
		-0.904982, 0.401056, -0.141990,
		38.107407, 33.423870, 30.997185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409191, 32.728745, 30.637171>,  <38.740894, 33.143131, 31.096577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409191, 32.728745, 30.637171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199078, 33.064655, 30.582268>,  <38.073009, 33.266201, 30.549326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.199078, 33.064655, 30.582268>,  <38.409191, 32.728745, 30.637171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199078, 33.064655, 30.582268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118049, -0.087826, -0.989116,
		-0.842696, -0.535774, -0.053002,
		-0.525288, 0.839781, -0.137258,
		38.041492, 33.316589, 30.541090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956638, 32.563198, 30.160162>,  <38.409191, 32.728745, 30.637171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956638, 32.563198, 30.160162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986481, 32.961933, 30.149227>,  <38.004387, 33.201176, 30.142666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.986481, 32.961933, 30.149227>,  <37.956638, 32.563198, 30.160162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986481, 32.961933, 30.149227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199461, -0.041775, -0.979015,
		-0.977062, 0.067586, -0.201947,
		0.074604, 0.996838, -0.027336,
		38.008862, 33.260986, 30.141026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533165, 32.700226, 29.555355>,  <37.956638, 32.563198, 30.160162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533165, 32.700226, 29.555355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748528, 33.028011, 29.633949>,  <37.877747, 33.224682, 29.681105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.748528, 33.028011, 29.633949>,  <37.533165, 32.700226, 29.555355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748528, 33.028011, 29.633949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114036, 0.160167, -0.980481,
		-0.834934, 0.550302, -0.007213,
		0.538406, 0.819459, 0.196483,
		37.910049, 33.273849, 29.692894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449512, 33.104935, 28.980108>,  <37.533165, 32.700226, 29.555355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449512, 33.104935, 28.980108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755600, 33.299225, 29.149107>,  <37.939255, 33.415798, 29.250505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755600, 33.299225, 29.149107>,  <37.449512, 33.104935, 28.980108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755600, 33.299225, 29.149107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288389, 0.328110, -0.899542,
		-0.575560, 0.810192, 0.110998,
		0.765221, 0.485730, 0.422497,
		37.985165, 33.444942, 29.275856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399620, 33.757393, 28.657608>,  <37.449512, 33.104935, 28.980108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399620, 33.757393, 28.657608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.776043, 33.704784, 28.782263>,  <38.001896, 33.673222, 28.857056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.776043, 33.704784, 28.782263>,  <37.399620, 33.757393, 28.657608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776043, 33.704784, 28.782263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335875, 0.254310, -0.906926,
		0.040024, 0.958139, 0.283493,
		0.941056, -0.131517, 0.311636,
		38.058361, 33.665329, 28.875753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618397, 34.367332, 28.492580>,  <37.399620, 33.757393, 28.657608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618397, 34.367332, 28.492580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887077, 34.072056, 28.517508>,  <38.048286, 33.894890, 28.532463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887077, 34.072056, 28.517508>,  <37.618397, 34.367332, 28.492580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887077, 34.072056, 28.517508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180641, 0.081627, -0.980156,
		0.718458, 0.669632, 0.188178,
		0.671704, -0.738194, 0.062317,
		38.088589, 33.850597, 28.536203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434727, 35.033680, 28.696835>,  <37.618397, 34.367332, 28.492580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434727, 35.033680, 28.696835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.309174, 35.401581, 28.602579>,  <37.233841, 35.622322, 28.546026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.309174, 35.401581, 28.602579>,  <37.434727, 35.033680, 28.696835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309174, 35.401581, 28.602579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509541, 0.046232, 0.859203,
		0.801151, 0.389759, 0.454142,
		-0.313886, 0.919756, -0.235637,
		37.215008, 35.677509, 28.531889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303036, 35.323662, 29.302013>,  <37.434727, 35.033680, 28.696835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303036, 35.323662, 29.302013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128510, 35.576275, 29.045641>,  <37.023792, 35.727844, 28.891817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.128510, 35.576275, 29.045641>,  <37.303036, 35.323662, 29.302013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128510, 35.576275, 29.045641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598883, 0.327792, 0.730679,
		0.671542, 0.702649, 0.235195,
		-0.436316, 0.631535, -0.640930,
		36.997616, 35.765736, 28.853361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219929, 35.969101, 29.604406>,  <37.303036, 35.323662, 29.302013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219929, 35.969101, 29.604406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934971, 36.001717, 29.325596>,  <36.763996, 36.021286, 29.158310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934971, 36.001717, 29.325596>,  <37.219929, 35.969101, 29.604406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934971, 36.001717, 29.325596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645792, 0.312570, 0.696601,
		0.274672, 0.946388, -0.170014,
		-0.712396, 0.081543, -0.697024,
		36.721252, 36.026180, 29.116489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875736, 36.672054, 29.607361>,  <37.219929, 35.969101, 29.604406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875736, 36.672054, 29.607361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629475, 36.397545, 29.452440>,  <36.481716, 36.232841, 29.359488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629475, 36.397545, 29.452440>,  <36.875736, 36.672054, 29.607361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629475, 36.397545, 29.452440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687932, 0.228346, 0.688918,
		-0.384346, 0.690572, -0.612690,
		-0.615653, -0.686271, -0.387303,
		36.444778, 36.191662, 29.336250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318134, 36.892635, 29.882742>,  <36.875736, 36.672054, 29.607361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318134, 36.892635, 29.882742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173050, 36.554428, 29.726004>,  <36.085999, 36.351505, 29.631960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173050, 36.554428, 29.726004>,  <36.318134, 36.892635, 29.882742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173050, 36.554428, 29.726004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828151, 0.099633, 0.551578,
		-0.427328, 0.524570, -0.736354,
		-0.362707, -0.845517, -0.391848,
		36.064240, 36.300774, 29.608450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679695, 36.947681, 29.626945>,  <36.318134, 36.892635, 29.882742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679695, 36.947681, 29.626945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712227, 36.561993, 29.727869>,  <35.731747, 36.330578, 29.788424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712227, 36.561993, 29.727869>,  <35.679695, 36.947681, 29.626945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712227, 36.561993, 29.727869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833377, 0.073068, 0.547854,
		-0.546688, -0.254825, -0.797619,
		0.081327, -0.964222, 0.252311,
		35.736626, 36.272724, 29.803562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069881, 36.462147, 29.418297>,  <35.679695, 36.947681, 29.626945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069881, 36.462147, 29.418297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255531, 36.283672, 29.724371>,  <35.366920, 36.176586, 29.908016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.255531, 36.283672, 29.724371>,  <35.069881, 36.462147, 29.418297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255531, 36.283672, 29.724371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873865, -0.089478, 0.477863,
		-0.144750, -0.890454, -0.431438,
		0.464120, -0.446189, 0.765185,
		35.394768, 36.149815, 29.953926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581779, 36.046368, 29.726686>,  <35.069881, 36.462147, 29.418297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581779, 36.046368, 29.726686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865353, 36.058769, 30.008522>,  <35.035496, 36.066212, 30.177624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865353, 36.058769, 30.008522>,  <34.581779, 36.046368, 29.726686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865353, 36.058769, 30.008522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705154, 0.012894, 0.708937,
		0.012894, -0.999436, 0.031004,
		-0.708937, -0.031004, -0.704590,
		35.078033, 36.068069, 30.219898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351276, 35.643326, 30.274624>,  <34.581779, 36.046368, 29.726686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351276, 35.643326, 30.274624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619999, 35.884205, 30.447149>,  <34.781231, 36.028732, 30.550665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619999, 35.884205, 30.447149>,  <34.351276, 35.643326, 30.274624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619999, 35.884205, 30.447149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504679, -0.054099, 0.861611,
		0.542197, -0.796509, 0.267575,
		0.671805, 0.602202, 0.431313,
		34.821541, 36.064865, 30.576544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394165, 35.403866, 30.907709>,  <34.351276, 35.643326, 30.274624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394165, 35.403866, 30.907709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595982, 35.745266, 30.959826>,  <34.717072, 35.950108, 30.991095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.595982, 35.745266, 30.959826>,  <34.394165, 35.403866, 30.907709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595982, 35.745266, 30.959826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393625, 0.093080, 0.914546,
		0.768438, -0.512713, 0.382922,
		0.504542, 0.853499, 0.130290,
		34.747345, 36.001316, 30.998913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583416, 35.336239, 31.597876>,  <34.394165, 35.403866, 30.907709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583416, 35.336239, 31.597876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605274, 35.717407, 31.478573>,  <34.618389, 35.946110, 31.406992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605274, 35.717407, 31.478573>,  <34.583416, 35.336239, 31.597876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605274, 35.717407, 31.478573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313115, 0.299989, 0.901091,
		0.948142, 0.044151, 0.314766,
		0.054642, 0.952921, -0.298256,
		34.621666, 36.003284, 31.389095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015545, 35.728996, 32.118858>,  <34.583416, 35.336239, 31.597876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015545, 35.728996, 32.118858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787323, 36.008804, 31.946747>,  <34.650391, 36.176689, 31.843481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787323, 36.008804, 31.946747>,  <35.015545, 35.728996, 32.118858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787323, 36.008804, 31.946747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225080, 0.370672, 0.901078,
		0.789817, 0.610957, -0.054039,
		-0.570550, 0.699524, -0.430277,
		34.616158, 36.218662, 31.817663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122356, 36.294720, 32.484344>,  <35.015545, 35.728996, 32.118858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122356, 36.294720, 32.484344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758549, 36.331814, 32.322273>,  <34.540264, 36.354069, 32.225029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.758549, 36.331814, 32.322273>,  <35.122356, 36.294720, 32.484344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758549, 36.331814, 32.322273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326782, 0.442893, 0.834901,
		0.256874, 0.891766, -0.372517,
		-0.909522, 0.092732, -0.405181,
		34.485691, 36.359634, 32.200718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999332, 36.954807, 32.650093>,  <35.122356, 36.294720, 32.484344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999332, 36.954807, 32.650093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651642, 36.784111, 32.550224>,  <34.443027, 36.681694, 32.490303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651642, 36.784111, 32.550224>,  <34.999332, 36.954807, 32.650093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651642, 36.784111, 32.550224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446371, 0.460214, 0.767434,
		-0.212598, 0.778519, -0.590517,
		-0.869226, -0.426745, -0.249668,
		34.390873, 36.656086, 32.475323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561630, 37.506763, 32.449413>,  <34.999332, 36.954807, 32.650093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561630, 37.506763, 32.449413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807838, 37.732048, 32.669930>,  <35.955563, 37.867218, 32.802238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.807838, 37.732048, 32.669930>,  <35.561630, 37.506763, 32.449413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807838, 37.732048, 32.669930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645388, 0.041261, -0.762740,
		-0.452331, 0.825282, -0.338093,
		0.615525, 0.563212, 0.551291,
		35.992496, 37.901012, 32.835316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581875, 38.166115, 32.195702>,  <35.561630, 37.506763, 32.449413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581875, 38.166115, 32.195702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933945, 38.122501, 32.380482>,  <36.145187, 38.096333, 32.491348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933945, 38.122501, 32.380482>,  <35.581875, 38.166115, 32.195702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933945, 38.122501, 32.380482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474231, 0.242694, -0.846289,
		-0.019836, 0.963956, 0.265323,
		0.880177, -0.109037, 0.461952,
		36.197998, 38.089790, 32.519066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891495, 38.792274, 32.045971>,  <35.581875, 38.166115, 32.195702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891495, 38.792274, 32.045971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139622, 38.491943, 32.136715>,  <36.288498, 38.311745, 32.191162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139622, 38.491943, 32.136715>,  <35.891495, 38.792274, 32.045971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139622, 38.491943, 32.136715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604295, 0.273103, -0.748493,
		0.500030, 0.601397, 0.623131,
		0.620321, -0.750824, 0.226861,
		36.325718, 38.266697, 32.204773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540695, 39.089790, 32.079811>,  <35.891495, 38.792274, 32.045971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540695, 39.089790, 32.079811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567978, 38.699532, 31.996424>,  <36.584347, 38.465378, 31.946392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567978, 38.699532, 31.996424>,  <36.540695, 39.089790, 32.079811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567978, 38.699532, 31.996424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601490, 0.206923, -0.771617,
		0.795963, -0.072760, 0.600956,
		0.068208, -0.975648, -0.208467,
		36.588440, 38.406837, 31.933884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250843, 38.969593, 31.879623>,  <36.540695, 39.089790, 32.079811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250843, 38.969593, 31.879623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073372, 38.643124, 31.731560>,  <36.966888, 38.447243, 31.642721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.073372, 38.643124, 31.731560>,  <37.250843, 38.969593, 31.879623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073372, 38.643124, 31.731560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663032, -0.021055, -0.748295,
		0.602943, -0.577428, 0.550488,
		-0.443677, -0.816170, -0.370159,
		36.940269, 38.398273, 31.620512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770103, 38.531292, 31.709734>,  <37.250843, 38.969593, 31.879623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770103, 38.531292, 31.709734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461834, 38.400986, 31.490667>,  <37.276871, 38.322803, 31.359228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461834, 38.400986, 31.490667>,  <37.770103, 38.531292, 31.709734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461834, 38.400986, 31.490667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605120, -0.104759, -0.789212,
		0.199722, -0.939630, 0.277860,
		-0.770675, -0.325762, -0.547666,
		37.230633, 38.303257, 31.326368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040901, 38.014980, 31.340372>,  <37.770103, 38.531292, 31.709734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040901, 38.014980, 31.340372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713612, 38.108814, 31.130424>,  <37.517239, 38.165115, 31.004456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.713612, 38.108814, 31.130424>,  <38.040901, 38.014980, 31.340372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713612, 38.108814, 31.130424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533667, -0.029621, -0.845176,
		-0.213810, -0.971645, -0.100953,
		-0.818220, 0.234582, -0.524868,
		37.468143, 38.179188, 30.972963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034618, 37.561005, 30.852743>,  <38.040901, 38.014980, 31.340372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034618, 37.561005, 30.852743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814384, 37.861198, 30.706520>,  <37.682243, 38.041313, 30.618786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.814384, 37.861198, 30.706520>,  <38.034618, 37.561005, 30.852743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814384, 37.861198, 30.706520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493579, -0.060492, -0.867595,
		-0.673229, -0.658115, -0.337117,
		-0.550584, 0.750483, -0.365557,
		37.649208, 38.086342, 30.596853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001095, 37.374409, 30.176481>,  <38.034618, 37.561005, 30.852743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001095, 37.374409, 30.176481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845642, 37.742390, 30.155878>,  <37.752369, 37.963177, 30.143517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845642, 37.742390, 30.155878>,  <38.001095, 37.374409, 30.176481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845642, 37.742390, 30.155878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480268, 0.154550, -0.863398,
		-0.786323, -0.360285, -0.501887,
		-0.388636, 0.919950, -0.051507,
		37.729050, 38.018375, 30.140427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710243, 37.489697, 29.438473>,  <38.001095, 37.374409, 30.176481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710243, 37.489697, 29.438473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797398, 37.835594, 29.619465>,  <37.849689, 38.043133, 29.728060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797398, 37.835594, 29.619465>,  <37.710243, 37.489697, 29.438473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797398, 37.835594, 29.619465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474760, 0.311156, -0.823277,
		-0.852718, 0.394200, -0.342751,
		0.217887, 0.864747, 0.452479,
		37.862762, 38.095020, 29.755209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501690, 37.918133, 28.946739>,  <37.710243, 37.489697, 29.438473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501690, 37.918133, 28.946739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742588, 38.093079, 29.213877>,  <37.887127, 38.198044, 29.374159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742588, 38.093079, 29.213877>,  <37.501690, 37.918133, 28.946739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742588, 38.093079, 29.213877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637022, 0.240926, -0.732228,
		-0.481150, 0.866411, -0.133514,
		0.602244, 0.437363, 0.667845,
		37.923260, 38.224289, 29.414230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605923, 38.559006, 28.624258>,  <37.501690, 37.918133, 28.946739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605923, 38.559006, 28.624258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908836, 38.502861, 28.879387>,  <38.090584, 38.469173, 29.032465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908836, 38.502861, 28.879387>,  <37.605923, 38.559006, 28.624258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908836, 38.502861, 28.879387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613486, 0.487776, -0.621055,
		-0.223945, 0.861611, 0.455494,
		0.757287, -0.140357, 0.637822,
		38.136021, 38.460754, 29.070734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029919, 39.256355, 28.729099>,  <37.605923, 38.559006, 28.624258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029919, 39.256355, 28.729099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282112, 38.959686, 28.820675>,  <38.433430, 38.781685, 28.875620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282112, 38.959686, 28.820675>,  <38.029919, 39.256355, 28.729099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282112, 38.959686, 28.820675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687258, 0.396316, -0.608778,
		0.360779, 0.541167, 0.759590,
		0.630488, -0.741668, 0.228939,
		38.471260, 38.737186, 28.889357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689163, 39.554585, 28.859013>,  <38.029919, 39.256355, 28.729099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689163, 39.554585, 28.859013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791359, 39.173035, 28.795958>,  <38.852676, 38.944103, 28.758123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.791359, 39.173035, 28.795958>,  <38.689163, 39.554585, 28.859013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791359, 39.173035, 28.795958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686941, 0.293833, -0.664660,
		0.680322, 0.061523, 0.730327,
		0.255486, -0.953875, -0.157638,
		38.868004, 38.886871, 28.748667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491978, 39.563396, 28.887995>,  <38.689163, 39.554585, 28.859013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491978, 39.563396, 28.887995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399742, 39.205627, 28.734716>,  <39.344402, 38.990967, 28.642750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.399742, 39.205627, 28.734716>,  <39.491978, 39.563396, 28.887995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399742, 39.205627, 28.734716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853100, 0.003592, -0.521735,
		0.468028, -0.447207, 0.762204,
		-0.230586, -0.894423, -0.383194,
		39.330566, 38.937302, 28.619759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027699, 39.183853, 28.904165>,  <39.491978, 39.563396, 28.887995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027699, 39.183853, 28.904165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.815052, 38.978981, 28.634336>,  <39.687462, 38.856056, 28.472439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.815052, 38.978981, 28.634336>,  <40.027699, 39.183853, 28.904165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815052, 38.978981, 28.634336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675394, 0.224253, -0.702534,
		0.511101, -0.829083, 0.226708,
		-0.531619, -0.512183, -0.674574,
		39.655567, 38.825325, 28.431965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505699, 38.849922, 28.550869>,  <40.027699, 39.183853, 28.904165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505699, 38.849922, 28.550869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192940, 38.875965, 28.302870>,  <40.005283, 38.891590, 28.154070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192940, 38.875965, 28.302870>,  <40.505699, 38.849922, 28.550869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192940, 38.875965, 28.302870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604201, 0.324103, -0.727941,
		0.153544, -0.943778, -0.292756,
		-0.781898, 0.065113, -0.619997,
		39.958370, 38.895500, 28.116871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635750, 38.477043, 27.903156>,  <40.505699, 38.849922, 28.550869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635750, 38.477043, 27.903156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.378220, 38.774670, 27.831778>,  <40.223701, 38.953247, 27.788950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.378220, 38.774670, 27.831778>,  <40.635750, 38.477043, 27.903156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378220, 38.774670, 27.831778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500137, 0.232724, -0.834088,
		-0.579091, -0.626258, -0.521972,
		-0.643829, 0.744070, -0.178446,
		40.185070, 38.997890, 27.778244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619686, 38.391506, 27.197945>,  <40.635750, 38.477043, 27.903156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619686, 38.391506, 27.197945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451157, 38.747307, 27.268675>,  <40.350040, 38.960789, 27.311113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451157, 38.747307, 27.268675>,  <40.619686, 38.391506, 27.197945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451157, 38.747307, 27.268675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524432, 0.398031, -0.752690,
		-0.739904, -0.224391, -0.634185,
		-0.421322, 0.889505, 0.176827,
		40.324760, 39.014160, 27.321722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456867, 38.677860, 26.536627>,  <40.619686, 38.391506, 27.197945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456867, 38.677860, 26.536627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.456375, 39.000690, 26.772806>,  <40.456081, 39.194389, 26.914515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.456375, 39.000690, 26.772806>,  <40.456867, 38.677860, 26.536627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456375, 39.000690, 26.772806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687596, 0.429405, -0.585511,
		-0.726092, 0.405271, -0.555468,
		-0.001230, 0.807073, 0.590450,
		40.456005, 39.242813, 26.949942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283157, 39.202259, 26.194946>,  <40.456867, 38.677860, 26.536627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283157, 39.202259, 26.194946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506721, 39.354198, 26.489792>,  <40.640858, 39.445362, 26.666698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.506721, 39.354198, 26.489792>,  <40.283157, 39.202259, 26.194946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506721, 39.354198, 26.489792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624445, 0.392086, -0.675527,
		-0.545611, 0.837844, -0.018056,
		0.558907, 0.379850, 0.737114,
		40.674393, 39.468155, 26.710926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495869, 39.831120, 25.995684>,  <40.283157, 39.202259, 26.194946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495869, 39.831120, 25.995684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.762203, 39.744995, 26.281425>,  <40.922005, 39.693321, 26.452871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.762203, 39.744995, 26.281425>,  <40.495869, 39.831120, 25.995684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762203, 39.744995, 26.281425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745962, 0.210308, -0.631911,
		-0.014178, 0.953631, 0.300644,
		0.665837, -0.215310, 0.714354,
		40.961956, 39.680401, 26.495731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988014, 40.221745, 25.813313>,  <40.495869, 39.831120, 25.995684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988014, 40.221745, 25.813313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.188084, 39.984814, 26.065971>,  <41.308125, 39.842655, 26.217566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.188084, 39.984814, 26.065971>,  <40.988014, 40.221745, 25.813313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188084, 39.984814, 26.065971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857878, 0.239748, -0.454496,
		0.117774, 0.769201, 0.628059,
		0.500174, -0.592326, 0.631645,
		41.338135, 39.807117, 26.255465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588615, 40.581631, 26.065811>,  <40.988014, 40.221745, 25.813313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588615, 40.581631, 26.065811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.678429, 40.197598, 26.132536>,  <41.732315, 39.967178, 26.172571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.678429, 40.197598, 26.132536>,  <41.588615, 40.581631, 26.065811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678429, 40.197598, 26.132536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882089, 0.127495, -0.453502,
		0.414132, 0.248966, 0.875506,
		0.224529, -0.960084, 0.166810,
		41.745789, 39.909573, 26.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355213, 40.582947, 26.274424>,  <41.588615, 40.581631, 26.065811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355213, 40.582947, 26.274424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.234840, 40.234715, 26.118719>,  <42.162617, 40.025776, 26.025297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.234840, 40.234715, 26.118719>,  <42.355213, 40.582947, 26.274424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234840, 40.234715, 26.118719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850837, -0.060746, -0.521908,
		0.430718, -0.488255, 0.759005,
		-0.300930, -0.870584, -0.389260,
		42.144562, 39.973537, 26.001942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926624, 40.228779, 26.182213>,  <42.355213, 40.582947, 26.274424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926624, 40.228779, 26.182213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.670746, 40.036446, 25.942347>,  <42.517220, 39.921047, 25.798428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.670746, 40.036446, 25.942347>,  <42.926624, 40.228779, 26.182213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670746, 40.036446, 25.942347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697633, -0.035713, -0.715565,
		0.322649, -0.876087, 0.358288,
		-0.639693, -0.480829, -0.599664,
		42.478840, 39.892197, 25.762447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388161, 39.882183, 25.753088>,  <42.926624, 40.228779, 26.182213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388161, 39.882183, 25.753088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.044300, 39.835537, 25.554131>,  <42.837986, 39.807549, 25.434755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.044300, 39.835537, 25.554131>,  <43.388161, 39.882183, 25.753088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044300, 39.835537, 25.554131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506876, -0.072980, -0.858924,
		0.063867, -0.990492, 0.121849,
		-0.859649, -0.116619, -0.497396,
		42.786404, 39.800552, 25.404911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534283, 39.429283, 25.241814>,  <43.388161, 39.882183, 25.753088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534283, 39.429283, 25.241814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.184036, 39.578083, 25.118584>,  <42.973888, 39.667362, 25.044645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.184036, 39.578083, 25.118584>,  <43.534283, 39.429283, 25.241814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184036, 39.578083, 25.118584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311458, -0.052647, -0.948800,
		-0.369169, -0.926740, -0.069763,
		-0.875618, 0.371996, -0.308077,
		42.921352, 39.689682, 25.026161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659203, 38.660343, 25.224495>,  <43.534283, 39.429283, 25.241814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659203, 38.660343, 25.224495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.982883, 38.550095, 25.432041>,  <44.177094, 38.483944, 25.556568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.982883, 38.550095, 25.432041>,  <43.659203, 38.660343, 25.224495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982883, 38.550095, 25.432041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536092, 0.014972, 0.844027,
		-0.240402, -0.961149, -0.135644,
		0.809205, -0.275623, 0.518864,
		44.225643, 38.467407, 25.587700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419872, 38.250206, 25.743334>,  <43.659203, 38.660343, 25.224495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419872, 38.250206, 25.743334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.776009, 38.372112, 25.878632>,  <43.989689, 38.445255, 25.959810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.776009, 38.372112, 25.878632>,  <43.419872, 38.250206, 25.743334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776009, 38.372112, 25.878632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390150, 0.127774, 0.911843,
		0.234682, -0.943817, 0.232668,
		0.890341, 0.304768, 0.338244,
		44.043110, 38.463543, 25.980104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480125, 37.792225, 26.319578>,  <43.419872, 38.250206, 25.743334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480125, 37.792225, 26.319578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.728638, 38.104305, 26.348707>,  <43.877747, 38.291553, 26.366184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.728638, 38.104305, 26.348707>,  <43.480125, 37.792225, 26.319578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728638, 38.104305, 26.348707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324593, 0.171661, 0.930146,
		0.713196, -0.601520, 0.359896,
		0.621281, 0.780197, 0.072821,
		43.915024, 38.338364, 26.370554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754452, 37.684822, 26.902679>,  <43.480125, 37.792225, 26.319578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754452, 37.684822, 26.902679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.826550, 38.072857, 26.837645>,  <43.869808, 38.305679, 26.798624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.826550, 38.072857, 26.837645>,  <43.754452, 37.684822, 26.902679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826550, 38.072857, 26.837645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251811, 0.205296, 0.945751,
		0.950843, -0.129528, 0.281283,
		0.180248, 0.970091, -0.162588,
		43.880623, 38.363884, 26.788868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219860, 37.931515, 27.363630>,  <43.754452, 37.684822, 26.902679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219860, 37.931515, 27.363630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007065, 38.252853, 27.256584>,  <43.879387, 38.445656, 27.192356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.007065, 38.252853, 27.256584>,  <44.219860, 37.931515, 27.363630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007065, 38.252853, 27.256584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198807, 0.188711, 0.961699,
		0.823083, 0.564815, 0.059320,
		-0.531987, 0.803351, -0.267614,
		43.847469, 38.493858, 27.176300>
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
