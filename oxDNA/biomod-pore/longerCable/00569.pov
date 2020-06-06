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
	<24.247450, 34.593105, 34.840752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.003359, 34.908352, 34.808506>,  <23.856903, 35.097500, 34.789158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.003359, 34.908352, 34.808506>,  <24.247450, 34.593105, 34.840752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.003359, 34.908352, 34.808506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581832, -0.376781, 0.720769,
		0.537673, 0.486739, 0.688472,
		-0.610229, 0.788113, -0.080615,
		23.820290, 35.144787, 34.784321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.985771, 33.846466, 34.869972>,  <24.247450, 34.593105, 34.840752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.985771, 33.846466, 34.869972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201200, 33.969109, 34.556046>,  <24.330458, 34.042694, 34.367691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201200, 33.969109, 34.556046>,  <23.985771, 33.846466, 34.869972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201200, 33.969109, 34.556046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826875, -0.371327, 0.422367,
		-0.161923, -0.876419, -0.453510,
		0.538571, 0.306605, -0.784815,
		24.362772, 34.061089, 34.320602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386438, 33.269634, 34.542980>,  <23.985771, 33.846466, 34.869972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386438, 33.269634, 34.542980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585686, 33.613628, 34.498604>,  <24.705235, 33.820026, 34.471977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.585686, 33.613628, 34.498604>,  <24.386438, 33.269634, 34.542980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585686, 33.613628, 34.498604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824326, -0.429954, 0.368274,
		0.269011, -0.274893, -0.923075,
		0.498116, 0.859984, -0.110939,
		24.735121, 33.871624, 34.465321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.073097, 33.131248, 34.487553>,  <24.386438, 33.269634, 34.542980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.073097, 33.131248, 34.487553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107889, 33.511841, 34.605621>,  <25.128763, 33.740196, 34.676464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107889, 33.511841, 34.605621>,  <25.073097, 33.131248, 34.487553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107889, 33.511841, 34.605621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852153, -0.224534, 0.472674,
		0.516014, 0.210420, -0.830333,
		0.086978, 0.951477, 0.295172,
		25.133982, 33.797283, 34.694172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719259, 33.431026, 34.211479>,  <25.073097, 33.131248, 34.487553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719259, 33.431026, 34.211479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600990, 33.586281, 34.560635>,  <25.530029, 33.679436, 34.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600990, 33.586281, 34.560635>,  <25.719259, 33.431026, 34.211479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600990, 33.586281, 34.560635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779717, -0.429863, 0.455258,
		0.551924, 0.815209, -0.175539,
		-0.295673, 0.388138, 0.872884,
		25.512289, 33.702721, 34.822498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197126, 33.933826, 34.555973>,  <25.719259, 33.431026, 34.211479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197126, 33.933826, 34.555973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972168, 33.760204, 34.837482>,  <25.837193, 33.656029, 35.006390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972168, 33.760204, 34.837482>,  <26.197126, 33.933826, 34.555973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972168, 33.760204, 34.837482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826866, -0.294029, 0.479416,
		-0.001165, 0.851551, 0.524270,
		-0.562398, -0.434060, 0.703776,
		25.803448, 33.629986, 35.048615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397226, 34.121944, 35.270630>,  <26.197126, 33.933826, 34.555973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397226, 34.121944, 35.270630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269350, 33.742989, 35.264351>,  <26.192625, 33.515614, 35.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269350, 33.742989, 35.264351>,  <26.397226, 34.121944, 35.270630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269350, 33.742989, 35.264351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870055, -0.300073, 0.391102,
		-0.375237, 0.111372, 0.920214,
		-0.319689, -0.947392, -0.015698,
		26.173443, 33.458771, 35.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006905, 34.128052, 35.805485>,  <26.397226, 34.121944, 35.270630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006905, 34.128052, 35.805485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321880, 33.913033, 35.684830>,  <27.510866, 33.784019, 35.612438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321880, 33.913033, 35.684830>,  <27.006905, 34.128052, 35.805485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321880, 33.913033, 35.684830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579900, 0.811936, 0.066904,
		0.208945, -0.227602, 0.951073,
		0.787438, -0.537548, -0.301636,
		27.558111, 33.751770, 35.594337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648235, 34.305851, 36.178585>,  <27.006905, 34.128052, 35.805485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648235, 34.305851, 36.178585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763575, 34.169041, 35.820843>,  <27.832779, 34.086952, 35.606197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763575, 34.169041, 35.820843>,  <27.648235, 34.305851, 36.178585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763575, 34.169041, 35.820843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626294, 0.773895, -0.094038,
		0.724300, -0.533013, 0.437364,
		0.288350, -0.342030, -0.894354,
		27.850080, 34.066433, 35.552536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347677, 34.270638, 36.201027>,  <27.648235, 34.305851, 36.178585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347677, 34.270638, 36.201027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288200, 34.266808, 35.805492>,  <28.252514, 34.264511, 35.568172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288200, 34.266808, 35.805492>,  <28.347677, 34.270638, 36.201027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288200, 34.266808, 35.805492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661245, 0.742554, -0.106619,
		0.735286, -0.669718, -0.104084,
		-0.148693, -0.009571, -0.988837,
		28.243593, 34.263935, 35.508842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116266, 34.296566, 35.877472>,  <28.347677, 34.270638, 36.201027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116266, 34.296566, 35.877472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847618, 34.379986, 35.593098>,  <28.686428, 34.430038, 35.422474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847618, 34.379986, 35.593098>,  <29.116266, 34.296566, 35.877472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847618, 34.379986, 35.593098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636973, 0.652623, -0.410303,
		0.378402, -0.728415, -0.571160,
		-0.671623, 0.208554, -0.710935,
		28.646132, 34.442551, 35.379818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103165, 34.803833, 35.316380>,  <29.116266, 34.296566, 35.877472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103165, 34.803833, 35.316380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100592, 34.539101, 35.016529>,  <29.099049, 34.380260, 34.836620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100592, 34.539101, 35.016529>,  <29.103165, 34.803833, 35.316380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100592, 34.539101, 35.016529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278116, -0.721245, 0.634395,
		-0.960526, -0.204401, 0.188706,
		-0.006432, -0.661835, -0.749622,
		29.098661, 34.340549, 34.791641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298269, 35.551094, 35.026855>,  <29.103165, 34.803833, 35.316380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298269, 35.551094, 35.026855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054678, 35.491432, 34.715240>,  <28.908524, 35.455635, 34.528271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054678, 35.491432, 34.715240>,  <29.298269, 35.551094, 35.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054678, 35.491432, 34.715240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506368, -0.682874, 0.526568,
		-0.610524, 0.715149, 0.340329,
		-0.608976, -0.149150, -0.779039,
		28.871984, 35.446686, 34.481529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506960, 35.738346, 35.265484>,  <29.298269, 35.551094, 35.026855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506960, 35.738346, 35.265484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655451, 35.453644, 35.026958>,  <28.744545, 35.282822, 34.883842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655451, 35.453644, 35.026958>,  <28.506960, 35.738346, 35.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655451, 35.453644, 35.026958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582136, -0.678725, 0.447716,
		-0.723401, 0.180936, -0.666298,
		0.371226, -0.711754, -0.596320,
		28.766819, 35.240116, 34.848064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969231, 35.388062, 35.040726>,  <28.506960, 35.738346, 35.265484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969231, 35.388062, 35.040726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279537, 35.148483, 34.961277>,  <28.465721, 35.004734, 34.913609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279537, 35.148483, 34.961277>,  <27.969231, 35.388062, 35.040726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279537, 35.148483, 34.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527912, -0.788445, 0.315695,
		-0.345686, -0.140051, -0.927840,
		0.775764, -0.598950, -0.198620,
		28.512266, 34.968800, 34.901691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825508, 34.947109, 34.510529>,  <27.969231, 35.388062, 35.040726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825508, 34.947109, 34.510529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079958, 34.798664, 34.781120>,  <28.232628, 34.709599, 34.943474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.079958, 34.798664, 34.781120>,  <27.825508, 34.947109, 34.510529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079958, 34.798664, 34.781120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597583, -0.791576, 0.127681,
		0.488100, -0.485473, -0.725310,
		0.636124, -0.371112, 0.676478,
		28.270796, 34.687332, 34.984062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990074, 34.229240, 34.282715>,  <27.825508, 34.947109, 34.510529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990074, 34.229240, 34.282715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042667, 34.258450, 34.678165>,  <28.074223, 34.275974, 34.915436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042667, 34.258450, 34.678165>,  <27.990074, 34.229240, 34.282715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042667, 34.258450, 34.678165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555350, -0.820672, 0.134479,
		0.821157, -0.566714, -0.067349,
		0.131482, 0.073026, 0.988625,
		28.082111, 34.280357, 34.974754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141977, 33.601688, 34.374592>,  <27.990074, 34.229240, 34.282715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141977, 33.601688, 34.374592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022100, 33.762928, 34.720470>,  <27.950174, 33.859673, 34.927998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022100, 33.762928, 34.720470>,  <28.141977, 33.601688, 34.374592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022100, 33.762928, 34.720470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591269, -0.789779, 0.163247,
		0.748723, -0.462344, 0.475029,
		-0.299691, 0.403097, 0.864695,
		27.932194, 33.883858, 34.979877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363258, 33.140213, 34.989601>,  <28.141977, 33.601688, 34.374592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363258, 33.140213, 34.989601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019857, 33.335590, 35.052090>,  <27.813818, 33.452816, 35.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019857, 33.335590, 35.052090>,  <28.363258, 33.140213, 34.989601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019857, 33.335590, 35.052090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422702, -0.846489, 0.323696,
		0.290345, 0.211858, 0.933175,
		-0.858500, 0.488439, 0.156221,
		27.762308, 33.482121, 35.098957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321365, 32.909748, 35.581516>,  <28.363258, 33.140213, 34.989601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321365, 32.909748, 35.581516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982414, 32.969555, 35.377716>,  <27.779043, 33.005440, 35.255436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982414, 32.969555, 35.377716>,  <28.321365, 32.909748, 35.581516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982414, 32.969555, 35.377716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333570, -0.896460, 0.291704,
		-0.413132, 0.417138, 0.809517,
		-0.847380, 0.149519, -0.509501,
		27.728201, 33.014412, 35.224865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049637, 32.771740, 35.724606>,  <28.321365, 32.909748, 35.581516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049637, 32.771740, 35.724606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352888, 32.514973, 35.678673>,  <29.534838, 32.360912, 35.651112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352888, 32.514973, 35.678673>,  <29.049637, 32.771740, 35.724606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352888, 32.514973, 35.678673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192107, -0.051571, -0.980018,
		0.623169, 0.765037, -0.162414,
		0.758126, -0.641918, -0.114831,
		29.580326, 32.322399, 35.644222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533657, 32.903584, 35.203888>,  <29.049637, 32.771740, 35.724606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533657, 32.903584, 35.203888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475611, 32.512142, 35.262230>,  <29.440783, 32.277275, 35.297234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475611, 32.512142, 35.262230>,  <29.533657, 32.903584, 35.203888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475611, 32.512142, 35.262230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125247, -0.128061, -0.983826,
		0.981455, -0.161035, -0.103984,
		-0.145114, -0.978605, 0.145855,
		29.432076, 32.218559, 35.305988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783350, 32.524273, 34.612953>,  <29.533657, 32.903584, 35.203888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783350, 32.524273, 34.612953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527542, 32.275604, 34.793854>,  <29.374058, 32.126404, 34.902393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.527542, 32.275604, 34.793854>,  <29.783350, 32.524273, 34.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527542, 32.275604, 34.793854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358474, -0.279262, -0.890791,
		0.680080, -0.731801, -0.044260,
		-0.639522, -0.621676, 0.452252,
		29.335686, 32.089100, 34.929531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830956, 31.824118, 34.616119>,  <29.783350, 32.524273, 34.612953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830956, 31.824118, 34.616119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433693, 31.847450, 34.656590>,  <29.195335, 31.861450, 34.680870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433693, 31.847450, 34.656590>,  <29.830956, 31.824118, 34.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433693, 31.847450, 34.656590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115292, -0.351623, -0.929015,
		-0.018615, -0.934323, 0.355942,
		-0.993157, 0.058331, 0.101174,
		29.135746, 31.864950, 34.686943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670362, 31.273533, 34.148842>,  <29.830956, 31.824118, 34.616119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670362, 31.273533, 34.148842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965406, 31.506310, 34.011864>,  <30.142433, 31.645975, 33.929676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965406, 31.506310, 34.011864>,  <29.670362, 31.273533, 34.148842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965406, 31.506310, 34.011864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216237, -0.684037, -0.696660,
		-0.639664, 0.439814, -0.630391,
		0.737612, 0.581943, -0.342450,
		30.186689, 31.680893, 33.909130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386795, 31.590504, 33.571087>,  <29.670362, 31.273533, 34.148842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386795, 31.590504, 33.571087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782082, 31.531162, 33.586155>,  <30.019253, 31.495558, 33.595196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782082, 31.531162, 33.586155>,  <29.386795, 31.590504, 33.571087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782082, 31.531162, 33.586155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078488, -0.702470, -0.707372,
		0.131404, 0.696081, -0.705836,
		0.988217, -0.148352, 0.037673,
		30.078547, 31.486656, 33.597458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626217, 31.558445, 32.871506>,  <29.386795, 31.590504, 33.571087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626217, 31.558445, 32.871506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913254, 31.369287, 33.076027>,  <30.085476, 31.255793, 33.198742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913254, 31.369287, 33.076027>,  <29.626217, 31.558445, 32.871506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913254, 31.369287, 33.076027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075578, -0.782682, -0.617816,
		0.692351, 0.404696, -0.597387,
		0.717592, -0.472895, 0.511305,
		30.128531, 31.227419, 33.229420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264208, 31.364397, 32.461094>,  <29.626217, 31.558445, 32.871506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264208, 31.364397, 32.461094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244455, 31.095501, 32.756569>,  <30.232605, 30.934162, 32.933853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244455, 31.095501, 32.756569>,  <30.264208, 31.364397, 32.461094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244455, 31.095501, 32.756569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047269, -0.740330, -0.670580,
		0.997661, 0.001803, 0.068333,
		-0.049380, -0.672241, 0.738683,
		30.229641, 30.893829, 32.978172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388388, 31.445856, 31.785912>,  <30.264208, 31.364397, 32.461094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388388, 31.445856, 31.785912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130283, 31.635002, 31.545898>,  <29.975420, 31.748489, 31.401892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130283, 31.635002, 31.545898>,  <30.388388, 31.445856, 31.785912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130283, 31.635002, 31.545898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637743, 0.099028, 0.763857,
		0.420621, 0.875553, 0.237667,
		-0.645262, 0.472865, -0.600030,
		29.936705, 31.776861, 31.365889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231283, 32.101402, 32.140430>,  <30.388388, 31.445856, 31.785912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231283, 32.101402, 32.140430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932947, 31.961601, 31.913603>,  <29.753946, 31.877720, 31.777506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932947, 31.961601, 31.913603>,  <30.231283, 32.101402, 32.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932947, 31.961601, 31.913603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662933, 0.306171, 0.683213,
		-0.065164, 0.885497, -0.460052,
		-0.745838, -0.349505, -0.567074,
		29.709196, 31.856750, 31.743481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713362, 32.654545, 31.994375>,  <30.231283, 32.101402, 32.140430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713362, 32.654545, 31.994375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507145, 32.315781, 31.942291>,  <29.383415, 32.112522, 31.911041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507145, 32.315781, 31.942291>,  <29.713362, 32.654545, 31.994375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507145, 32.315781, 31.942291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777754, 0.398733, 0.485912,
		-0.359607, 0.351778, -0.864254,
		-0.515540, -0.846914, -0.130210,
		29.352484, 32.061707, 31.903229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001595, 32.932755, 32.010136>,  <29.713362, 32.654545, 31.994375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001595, 32.932755, 32.010136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905201, 32.551495, 32.083267>,  <28.847364, 32.322739, 32.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905201, 32.551495, 32.083267>,  <29.001595, 32.932755, 32.010136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905201, 32.551495, 32.083267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795000, 0.301916, 0.526138,
		-0.556688, -0.018555, -0.830514,
		-0.240983, -0.953154, 0.182825,
		28.832907, 32.265549, 32.138115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255692, 32.831432, 31.793818>,  <29.001595, 32.932755, 32.010136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255692, 32.831432, 31.793818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363718, 32.564690, 32.071629>,  <28.428534, 32.404644, 32.238316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363718, 32.564690, 32.071629>,  <28.255692, 32.831432, 31.793818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363718, 32.564690, 32.071629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722661, 0.336280, 0.603885,
		-0.636259, -0.664997, -0.391093,
		0.270065, -0.666855, 0.694529,
		28.444738, 32.364632, 32.279987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619543, 32.404278, 31.892265>,  <28.255692, 32.831432, 31.793818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619543, 32.404278, 31.892265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862877, 32.377048, 32.208569>,  <28.008877, 32.360710, 32.398350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862877, 32.377048, 32.208569>,  <27.619543, 32.404278, 31.892265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862877, 32.377048, 32.208569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758729, 0.242535, 0.604572,
		-0.232941, -0.967751, 0.095895,
		0.608333, -0.068071, 0.790757,
		28.045378, 32.356628, 32.445797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383863, 31.946880, 32.436066>,  <27.619543, 32.404278, 31.892265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383863, 31.946880, 32.436066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594961, 32.240715, 32.606647>,  <27.721621, 32.417015, 32.708996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594961, 32.240715, 32.606647>,  <27.383863, 31.946880, 32.436066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594961, 32.240715, 32.606647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735232, 0.143649, 0.662419,
		0.425344, -0.663135, 0.615902,
		0.527746, 0.734587, 0.426458,
		27.753284, 32.461090, 32.734585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336899, 31.197826, 32.644089>,  <27.383863, 31.946880, 32.436066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336899, 31.197826, 32.644089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125212, 31.061186, 32.333416>,  <26.998199, 30.979202, 32.147011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125212, 31.061186, 32.333416>,  <27.336899, 31.197826, 32.644089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125212, 31.061186, 32.333416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841073, -0.090464, -0.533304,
		0.111916, -0.935481, 0.335188,
		-0.529218, -0.341602, -0.776683,
		26.966446, 30.958706, 32.100410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004238, 31.766174, 33.144840>,  <27.336899, 31.197826, 32.644089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004238, 31.766174, 33.144840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280550, 32.052334, 33.186852>,  <27.446337, 32.224030, 33.212059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280550, 32.052334, 33.186852>,  <27.004238, 31.766174, 33.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280550, 32.052334, 33.186852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631657, 0.526362, 0.569168,
		0.351899, -0.459511, 0.815485,
		0.690780, 0.715397, 0.105027,
		27.487783, 32.266953, 33.218361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938931, 31.977760, 33.823067>,  <27.004238, 31.766174, 33.144840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938931, 31.977760, 33.823067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112213, 32.279457, 33.625702>,  <27.216183, 32.460476, 33.507282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112213, 32.279457, 33.625702>,  <26.938931, 31.977760, 33.823067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112213, 32.279457, 33.625702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668059, 0.636188, 0.385955,
		0.605006, 0.162431, 0.779477,
		0.433203, 0.754242, -0.493411,
		27.242174, 32.505730, 33.477680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210445, 32.575104, 34.195309>,  <26.938931, 31.977760, 33.823067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210445, 32.575104, 34.195309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052431, 32.667583, 33.839668>,  <26.957623, 32.723072, 33.626286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052431, 32.667583, 33.839668>,  <27.210445, 32.575104, 34.195309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052431, 32.667583, 33.839668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497919, 0.759445, 0.418712,
		0.772025, 0.608105, -0.184892,
		-0.395036, 0.231195, -0.889098,
		26.933920, 32.736942, 33.572937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737749, 32.683006, 34.667603>,  <27.210445, 32.575104, 34.195309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737749, 32.683006, 34.667603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652813, 33.071140, 34.621357>,  <26.601852, 33.304020, 34.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652813, 33.071140, 34.621357>,  <26.737749, 32.683006, 34.667603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652813, 33.071140, 34.621357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397125, -0.022419, -0.917490,
		-0.892863, -0.240733, -0.380583,
		-0.212338, 0.970332, -0.115618,
		26.589111, 33.362240, 34.586670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399609, 32.808777, 33.996464>,  <26.737749, 32.683006, 34.667603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399609, 32.808777, 33.996464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609415, 33.136532, 34.088966>,  <26.735300, 33.333187, 34.144466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609415, 33.136532, 34.088966>,  <26.399609, 32.808777, 33.996464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609415, 33.136532, 34.088966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590531, -0.154470, -0.792094,
		-0.613314, 0.552029, -0.564898,
		0.524519, 0.819392, 0.231252,
		26.766771, 33.382351, 34.158340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399040, 33.429001, 33.504986>,  <26.399609, 32.808777, 33.996464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399040, 33.429001, 33.504986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728182, 33.351204, 33.718555>,  <26.925667, 33.304523, 33.846699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728182, 33.351204, 33.718555>,  <26.399040, 33.429001, 33.504986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728182, 33.351204, 33.718555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504608, -0.181968, -0.843954,
		0.261303, 0.963877, -0.051590,
		0.822856, -0.194495, 0.533929,
		26.975039, 33.292854, 33.878735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003965, 33.603985, 32.950768>,  <26.399040, 33.429001, 33.504986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003965, 33.603985, 32.950768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115778, 33.376041, 33.259861>,  <27.182865, 33.239273, 33.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115778, 33.376041, 33.259861>,  <27.003965, 33.603985, 32.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115778, 33.376041, 33.259861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571379, -0.548061, -0.610865,
		0.771614, 0.612280, 0.172407,
		0.279531, -0.569862, 0.772735,
		27.199636, 33.205082, 33.491680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595800, 33.538128, 32.843475>,  <27.003965, 33.603985, 32.950768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595800, 33.538128, 32.843475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526211, 33.228695, 33.087215>,  <27.484457, 33.043037, 33.233459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526211, 33.228695, 33.087215>,  <27.595800, 33.538128, 32.843475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526211, 33.228695, 33.087215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670494, -0.546252, -0.502042,
		0.721228, 0.321223, 0.613715,
		-0.173976, -0.773579, 0.609351,
		27.474018, 32.996620, 33.270020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290714, 33.322701, 33.182186>,  <27.595800, 33.538128, 32.843475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290714, 33.322701, 33.182186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043972, 33.008865, 33.207218>,  <27.895927, 32.820564, 33.222237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.043972, 33.008865, 33.207218>,  <28.290714, 33.322701, 33.182186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043972, 33.008865, 33.207218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757918, -0.613564, -0.221584,
		0.212249, -0.089253, 0.973131,
		-0.616856, -0.784585, 0.062581,
		27.858915, 32.773491, 33.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527672, 32.787334, 33.598492>,  <28.290714, 33.322701, 33.182186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527672, 32.787334, 33.598492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296364, 32.599304, 33.331768>,  <28.157579, 32.486485, 33.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296364, 32.599304, 33.331768>,  <28.527672, 32.787334, 33.598492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296364, 32.599304, 33.331768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792469, -0.517889, -0.322154,
		-0.193897, -0.714717, 0.671999,
		-0.578271, -0.470074, -0.666808,
		28.122883, 32.458282, 33.131725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699833, 32.014400, 33.486805>,  <28.527672, 32.787334, 33.598492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699833, 32.014400, 33.486805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500010, 32.133537, 33.161415>,  <28.380116, 32.205017, 32.966183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500010, 32.133537, 33.161415>,  <28.699833, 32.014400, 33.486805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500010, 32.133537, 33.161415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602511, -0.555253, -0.573302,
		-0.622433, -0.776522, 0.097930,
		-0.499557, 0.297838, -0.813471,
		28.350143, 32.222889, 32.917374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664339, 31.367075, 33.066376>,  <28.699833, 32.014400, 33.486805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664339, 31.367075, 33.066376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593924, 31.688545, 32.839001>,  <28.551674, 31.881428, 32.702576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593924, 31.688545, 32.839001>,  <28.664339, 31.367075, 33.066376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593924, 31.688545, 32.839001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586362, -0.378218, -0.716331,
		-0.790690, -0.459410, -0.404664,
		-0.176038, 0.803675, -0.568434,
		28.541113, 31.929647, 32.668472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730160, 31.068754, 32.489326>,  <28.664339, 31.367075, 33.066376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730160, 31.068754, 32.489326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774948, 31.457932, 32.408485>,  <28.801821, 31.691439, 32.359982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774948, 31.457932, 32.408485>,  <28.730160, 31.068754, 32.489326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774948, 31.457932, 32.408485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330222, -0.228254, -0.915889,
		-0.937239, 0.035813, -0.346845,
		0.111970, 0.972943, -0.202102,
		28.808538, 31.749815, 32.347855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762899, 30.983990, 31.748165>,  <28.730160, 31.068754, 32.489326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762899, 30.983990, 31.748165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909765, 31.351767, 31.804472>,  <28.997885, 31.572433, 31.838255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909765, 31.351767, 31.804472>,  <28.762899, 30.983990, 31.748165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909765, 31.351767, 31.804472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587469, -0.111890, -0.801474,
		-0.721160, 0.376967, -0.581227,
		0.367163, 0.919444, 0.140766,
		29.019915, 31.627600, 31.846703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720083, 31.448658, 31.067667>,  <28.762899, 30.983990, 31.748165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720083, 31.448658, 31.067667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036570, 31.544706, 31.292635>,  <29.226461, 31.602335, 31.427616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036570, 31.544706, 31.292635>,  <28.720083, 31.448658, 31.067667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036570, 31.544706, 31.292635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609779, -0.240151, -0.755313,
		-0.046299, 0.940569, -0.336431,
		0.791218, 0.240119, 0.562420,
		29.273935, 31.616741, 31.461361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161686, 31.975170, 30.743437>,  <28.720083, 31.448658, 31.067667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161686, 31.975170, 30.743437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358786, 31.708271, 30.966858>,  <29.477045, 31.548132, 31.100910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358786, 31.708271, 30.966858>,  <29.161686, 31.975170, 30.743437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358786, 31.708271, 30.966858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670707, -0.117720, -0.732321,
		0.554391, 0.735476, 0.389519,
		0.492751, -0.667245, 0.558552,
		29.506611, 31.508097, 31.134424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881874, 32.210423, 30.907263>,  <29.161686, 31.975170, 30.743437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881874, 32.210423, 30.907263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848019, 31.813412, 30.942419>,  <29.827705, 31.575205, 30.963512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848019, 31.813412, 30.942419>,  <29.881874, 32.210423, 30.907263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848019, 31.813412, 30.942419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713043, -0.121943, -0.690435,
		0.695993, 0.004232, 0.718036,
		-0.084638, -0.992528, 0.087889,
		29.822628, 31.515654, 30.968786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607075, 31.963993, 30.834923>,  <29.881874, 32.210423, 30.907263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607075, 31.963993, 30.834923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369482, 31.650499, 30.762320>,  <30.226927, 31.462402, 30.718758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369482, 31.650499, 30.762320>,  <30.607075, 31.963993, 30.834923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369482, 31.650499, 30.762320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614883, -0.296800, -0.730636,
		0.518752, -0.545592, 0.658198,
		-0.593983, -0.783734, -0.181510,
		30.191288, 31.415379, 30.707867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880911, 31.236404, 30.847656>,  <30.607075, 31.963993, 30.834923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880911, 31.236404, 30.847656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628550, 31.350189, 30.558924>,  <30.477133, 31.418459, 30.385683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628550, 31.350189, 30.558924>,  <30.880911, 31.236404, 30.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628550, 31.350189, 30.558924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744002, -0.042050, -0.666853,
		-0.220047, -0.957765, -0.185110,
		-0.630904, 0.284462, -0.721832,
		30.439278, 31.435528, 30.342375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819237, 30.667820, 30.205866>,  <30.880911, 31.236404, 30.847656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819237, 30.667820, 30.205866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776838, 31.058689, 30.132223>,  <30.751398, 31.293211, 30.088037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776838, 31.058689, 30.132223>,  <30.819237, 30.667820, 30.205866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776838, 31.058689, 30.132223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700602, -0.057996, -0.711192,
		-0.705636, -0.204368, -0.678463,
		-0.105997, 0.977175, -0.184105,
		30.745039, 31.351841, 30.076992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700274, 30.772770, 29.417034>,  <30.819237, 30.667820, 30.205866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700274, 30.772770, 29.417034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842480, 31.087477, 29.618870>,  <30.927803, 31.276300, 29.739971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842480, 31.087477, 29.618870>,  <30.700274, 30.772770, 29.417034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842480, 31.087477, 29.618870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729825, 0.103597, -0.675739,
		-0.583922, 0.608495, -0.537372,
		0.355514, 0.786767, 0.504587,
		30.949133, 31.323507, 29.770247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653814, 31.434513, 29.096176>,  <30.700274, 30.772770, 29.417034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653814, 31.434513, 29.096176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009386, 31.404234, 29.276873>,  <31.222729, 31.386066, 29.385290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009386, 31.404234, 29.276873>,  <30.653814, 31.434513, 29.096176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009386, 31.404234, 29.276873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426234, -0.224389, -0.876341,
		0.167704, 0.971555, -0.167200,
		0.888932, -0.075700, 0.451741,
		31.276066, 31.381523, 29.412395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157604, 31.916559, 28.761776>,  <30.653814, 31.434513, 29.096176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157604, 31.916559, 28.761776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361172, 31.610449, 28.919437>,  <31.483313, 31.426783, 29.014034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361172, 31.610449, 28.919437>,  <31.157604, 31.916559, 28.761776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361172, 31.610449, 28.919437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403357, -0.192503, -0.894564,
		0.760464, 0.614243, 0.210711,
		0.508918, -0.765276, 0.394151,
		31.513847, 31.380865, 29.037683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856081, 31.918146, 28.489906>,  <31.157604, 31.916559, 28.761776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856081, 31.918146, 28.489906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807026, 31.533363, 28.587561>,  <31.777594, 31.302494, 28.646154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807026, 31.533363, 28.587561>,  <31.856081, 31.918146, 28.489906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807026, 31.533363, 28.587561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439768, -0.273197, -0.855551,
		0.889699, 0.002442, 0.456541,
		-0.122636, -0.961955, 0.244137,
		31.770235, 31.244778, 28.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437157, 31.616621, 28.437334>,  <31.856081, 31.918146, 28.489906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437157, 31.616621, 28.437334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174160, 31.316601, 28.408672>,  <32.016361, 31.136589, 28.391476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174160, 31.316601, 28.408672>,  <32.437157, 31.616621, 28.437334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174160, 31.316601, 28.408672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406698, -0.273231, -0.871746,
		0.634275, -0.602304, 0.484690,
		-0.657489, -0.750050, -0.071653,
		31.976913, 31.091585, 28.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770771, 30.941364, 28.190796>,  <32.437157, 31.616621, 28.437334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770771, 30.941364, 28.190796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387314, 30.948032, 28.077148>,  <32.157238, 30.952034, 28.008959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387314, 30.948032, 28.077148>,  <32.770771, 30.941364, 28.190796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387314, 30.948032, 28.077148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281599, -0.089252, -0.955372,
		-0.041280, -0.995870, 0.080868,
		-0.958644, 0.016666, -0.284121,
		32.099720, 30.953033, 27.991913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843483, 30.828884, 27.522881>,  <32.770771, 30.941364, 28.190796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843483, 30.828884, 27.522881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445293, 30.866911, 27.522310>,  <32.206379, 30.889727, 27.521967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445293, 30.866911, 27.522310>,  <32.843483, 30.828884, 27.522881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445293, 30.866911, 27.522310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009895, 0.088660, -0.996013,
		-0.094561, -0.991515, -0.089199,
		-0.995470, 0.095067, -0.001427,
		32.146652, 30.895432, 27.521883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645508, 30.321499, 27.031498>,  <32.843483, 30.828884, 27.522881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645508, 30.321499, 27.031498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426517, 30.652328, 27.082436>,  <32.295124, 30.850826, 27.112999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426517, 30.652328, 27.082436>,  <32.645508, 30.321499, 27.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426517, 30.652328, 27.082436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040423, 0.178137, -0.983175,
		-0.835842, -0.533121, -0.130959,
		-0.547480, 0.827073, 0.127344,
		32.262272, 30.900450, 27.120638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017933, 30.293821, 26.602295>,  <32.645508, 30.321499, 27.031498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017933, 30.293821, 26.602295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118523, 30.668566, 26.699501>,  <32.178875, 30.893412, 26.757824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118523, 30.668566, 26.699501>,  <32.017933, 30.293821, 26.602295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118523, 30.668566, 26.699501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156660, 0.208371, -0.965422,
		-0.955102, 0.280846, -0.094369,
		0.251471, 0.936860, 0.243013,
		32.193966, 30.949623, 26.772406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579994, 30.774334, 26.321053>,  <32.017933, 30.293821, 26.602295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579994, 30.774334, 26.321053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954784, 30.901365, 26.379318>,  <32.179657, 30.977585, 26.414278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954784, 30.901365, 26.379318>,  <31.579994, 30.774334, 26.321053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954784, 30.901365, 26.379318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052254, 0.284840, -0.957150,
		-0.345461, 0.904439, 0.250293,
		0.936977, 0.317579, 0.145662,
		32.235878, 30.996639, 26.423018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741385, 31.471460, 26.015623>,  <31.579994, 30.774334, 26.321053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741385, 31.471460, 26.015623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076233, 31.257875, 26.063147>,  <32.277142, 31.129725, 26.091660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076233, 31.257875, 26.063147>,  <31.741385, 31.471460, 26.015623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076233, 31.257875, 26.063147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307723, 0.280109, -0.909311,
		0.452260, 0.797760, 0.398797,
		0.837119, -0.533964, 0.118807,
		32.327370, 31.097687, 26.098789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341476, 31.861603, 25.890764>,  <31.741385, 31.471460, 26.015623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341476, 31.861603, 25.890764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398987, 31.477932, 25.793348>,  <32.433495, 31.247730, 25.734900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398987, 31.477932, 25.793348>,  <32.341476, 31.861603, 25.890764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398987, 31.477932, 25.793348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271057, 0.274854, -0.922487,
		0.951765, 0.066617, 0.299509,
		0.143774, -0.959175, -0.243539,
		32.442120, 31.190180, 25.720287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980152, 31.776493, 25.576859>,  <32.341476, 31.861603, 25.890764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980152, 31.776493, 25.576859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738930, 31.480795, 25.456966>,  <32.594196, 31.303375, 25.385031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738930, 31.480795, 25.456966>,  <32.980152, 31.776493, 25.576859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738930, 31.480795, 25.456966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085228, 0.313881, -0.945629,
		0.793133, -0.595812, -0.126283,
		-0.603055, -0.739247, -0.299730,
		32.558014, 31.259020, 25.367048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309711, 31.559443, 25.031883>,  <32.980152, 31.776493, 25.576859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309711, 31.559443, 25.031883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945480, 31.400434, 24.986572>,  <32.726944, 31.305029, 24.959385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945480, 31.400434, 24.986572>,  <33.309711, 31.559443, 25.031883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945480, 31.400434, 24.986572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008570, 0.292145, -0.956336,
		0.413258, -0.869843, -0.269426,
		-0.910574, -0.397522, -0.113277,
		32.672310, 31.281178, 24.952589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257599, 31.337538, 24.302025>,  <33.309711, 31.559443, 25.031883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257599, 31.337538, 24.302025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874554, 31.345144, 24.416994>,  <32.644726, 31.349709, 24.485975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874554, 31.345144, 24.416994>,  <33.257599, 31.337538, 24.302025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874554, 31.345144, 24.416994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247091, 0.458627, -0.853585,
		-0.148052, -0.888426, -0.434489,
		-0.957615, 0.019017, 0.287422,
		32.587269, 31.350849, 24.503222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891647, 31.094538, 23.703205>,  <33.257599, 31.337538, 24.302025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891647, 31.094538, 23.703205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634605, 31.297949, 23.932451>,  <32.480381, 31.419994, 24.070000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634605, 31.297949, 23.932451>,  <32.891647, 31.094538, 23.703205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634605, 31.297949, 23.932451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412935, 0.400215, -0.818115,
		-0.645402, -0.762384, -0.047192,
		-0.642605, 0.508526, 0.573114,
		32.441822, 31.450506, 24.104385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189472, 30.966276, 23.476871>,  <32.891647, 31.094538, 23.703205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189472, 30.966276, 23.476871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193264, 31.305660, 23.688540>,  <32.195538, 31.509291, 23.815540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193264, 31.305660, 23.688540>,  <32.189472, 30.966276, 23.476871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193264, 31.305660, 23.688540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264533, 0.512469, -0.816944,
		-0.964330, -0.132243, 0.229302,
		0.009475, 0.848462, 0.529171,
		32.196106, 31.560200, 23.847290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640781, 31.312862, 23.172541>,  <32.189472, 30.966276, 23.476871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640781, 31.312862, 23.172541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820753, 31.596582, 23.389597>,  <31.928736, 31.766813, 23.519831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820753, 31.596582, 23.389597>,  <31.640781, 31.312862, 23.172541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820753, 31.596582, 23.389597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037590, 0.622121, -0.782018,
		-0.892273, 0.331455, 0.306573,
		0.449929, 0.709298, 0.542642,
		31.955732, 31.809372, 23.552389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195837, 31.869802, 23.161381>,  <31.640781, 31.312862, 23.172541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195837, 31.869802, 23.161381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570988, 31.991501, 23.228094>,  <31.796078, 32.064522, 23.268122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570988, 31.991501, 23.228094>,  <31.195837, 31.869802, 23.161381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570988, 31.991501, 23.228094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105081, 0.707197, -0.699164,
		-0.330667, 0.638206, 0.695236,
		0.937879, 0.304247, 0.166783,
		31.852352, 32.082775, 23.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160627, 32.545807, 23.122887>,  <31.195837, 31.869802, 23.161381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160627, 32.545807, 23.122887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551756, 32.477592, 23.074259>,  <31.786434, 32.436665, 23.045082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551756, 32.477592, 23.074259>,  <31.160627, 32.545807, 23.122887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551756, 32.477592, 23.074259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013353, 0.630055, -0.776436,
		0.209009, 0.757593, 0.618360,
		0.977823, -0.170539, -0.121571,
		31.845102, 32.426430, 23.037788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577765, 33.204502, 23.147034>,  <31.160627, 32.545807, 23.122887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577765, 33.204502, 23.147034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785950, 32.939255, 22.931854>,  <31.910860, 32.780106, 22.802746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785950, 32.939255, 22.931854>,  <31.577765, 33.204502, 23.147034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785950, 32.939255, 22.931854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060877, 0.657216, -0.751239,
		0.851712, 0.358242, 0.382425,
		0.520461, -0.663121, -0.537951,
		31.942087, 32.740318, 22.770470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097538, 33.711170, 22.854982>,  <31.577765, 33.204502, 23.147034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097538, 33.711170, 22.854982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112850, 33.366833, 22.652010>,  <32.122036, 33.160229, 22.530228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112850, 33.366833, 22.652010>,  <32.097538, 33.711170, 22.854982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112850, 33.366833, 22.652010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081752, 0.508797, -0.856996,
		0.995917, -0.008677, 0.089853,
		0.038280, -0.860843, -0.507429,
		32.124332, 33.108582, 22.499781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630459, 33.743034, 22.415697>,  <32.097538, 33.711170, 22.854982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630459, 33.743034, 22.415697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447155, 33.440235, 22.229383>,  <32.337173, 33.258556, 22.117596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447155, 33.440235, 22.229383>,  <32.630459, 33.743034, 22.415697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447155, 33.440235, 22.229383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208078, 0.418115, -0.884242,
		0.864121, -0.502129, -0.034089,
		-0.458256, -0.756998, -0.465784,
		32.309677, 33.213135, 22.089647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025227, 33.607121, 21.815117>,  <32.630459, 33.743034, 22.415697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025227, 33.607121, 21.815117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657116, 33.471230, 21.737482>,  <32.436249, 33.389694, 21.690901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657116, 33.471230, 21.737482>,  <33.025227, 33.607121, 21.815117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657116, 33.471230, 21.737482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060305, 0.366972, -0.928275,
		0.386593, -0.865975, -0.317228,
		-0.920277, -0.339734, -0.194092,
		32.381031, 33.369312, 21.679255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086460, 33.111382, 21.250292>,  <33.025227, 33.607121, 21.815117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086460, 33.111382, 21.250292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702713, 33.223953, 21.258326>,  <32.472466, 33.291496, 21.263145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702713, 33.223953, 21.258326>,  <33.086460, 33.111382, 21.250292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702713, 33.223953, 21.258326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028402, 0.167155, -0.985521,
		-0.280714, -0.944910, -0.168357,
		-0.959371, 0.281431, 0.020085,
		32.414902, 33.308384, 21.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853218, 32.725014, 20.767845>,  <33.086460, 33.111382, 21.250292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853218, 32.725014, 20.767845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534538, 32.963158, 20.809448>,  <32.343330, 33.106045, 20.834410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534538, 32.963158, 20.809448>,  <32.853218, 32.725014, 20.767845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534538, 32.963158, 20.809448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010363, 0.185522, -0.982585,
		-0.604289, -0.781746, -0.153975,
		-0.796698, 0.595361, 0.104008,
		32.295528, 33.141766, 20.840651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255955, 32.593075, 20.270464>,  <32.853218, 32.725014, 20.767845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255955, 32.593075, 20.270464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218334, 32.981846, 20.356730>,  <32.195763, 33.215107, 20.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218334, 32.981846, 20.356730>,  <32.255955, 32.593075, 20.270464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218334, 32.981846, 20.356730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058085, 0.210897, -0.975781,
		-0.993872, -0.104297, 0.036620,
		-0.094048, 0.971928, 0.215663,
		32.190121, 33.273426, 20.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759275, 32.731354, 19.747898>,  <32.255955, 32.593075, 20.270464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759275, 32.731354, 19.747898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926254, 33.082535, 19.841652>,  <32.026440, 33.293243, 19.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926254, 33.082535, 19.841652>,  <31.759275, 32.731354, 19.747898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926254, 33.082535, 19.841652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012065, 0.252557, -0.967507,
		-0.908621, 0.406711, 0.094836,
		0.417447, 0.877953, 0.234385,
		32.051487, 33.345921, 19.911968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380257, 33.163147, 19.393509>,  <31.759275, 32.731354, 19.747898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380257, 33.163147, 19.393509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703148, 33.390461, 19.457304>,  <31.896883, 33.526848, 19.495581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703148, 33.390461, 19.457304>,  <31.380257, 33.163147, 19.393509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703148, 33.390461, 19.457304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059620, 0.347334, -0.935844,
		-0.587219, 0.745932, 0.314260,
		0.807229, 0.568282, 0.159489,
		31.945316, 33.560944, 19.505150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200636, 33.928154, 19.258795>,  <31.380257, 33.163147, 19.393509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200636, 33.928154, 19.258795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598316, 33.909424, 19.220062>,  <31.836924, 33.898186, 19.196823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598316, 33.909424, 19.220062>,  <31.200636, 33.928154, 19.258795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598316, 33.909424, 19.220062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061369, 0.492397, -0.868205,
		0.088331, 0.869111, 0.486667,
		0.994199, -0.046823, -0.096831,
		31.896576, 33.895378, 19.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418030, 34.598965, 19.049425>,  <31.200636, 33.928154, 19.258795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418030, 34.598965, 19.049425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731451, 34.371033, 18.950356>,  <31.919504, 34.234276, 18.890915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731451, 34.371033, 18.950356>,  <31.418030, 34.598965, 19.049425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731451, 34.371033, 18.950356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082469, 0.490474, -0.867545,
		0.615827, 0.659342, 0.431306,
		0.783553, -0.569827, -0.247672,
		31.966516, 34.200085, 18.876055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992550, 34.975468, 18.580988>,  <31.418030, 34.598965, 19.049425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992550, 34.975468, 18.580988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068279, 34.588768, 18.512218>,  <32.113716, 34.356750, 18.470957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068279, 34.588768, 18.512218>,  <31.992550, 34.975468, 18.580988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068279, 34.588768, 18.512218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184620, 0.207016, -0.960760,
		0.964402, 0.150155, 0.217674,
		0.189325, -0.966746, -0.171925,
		32.125076, 34.298744, 18.460642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666916, 34.922546, 18.269960>,  <31.992550, 34.975468, 18.580988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666916, 34.922546, 18.269960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451092, 34.606518, 18.153568>,  <32.321598, 34.416901, 18.083733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451092, 34.606518, 18.153568>,  <32.666916, 34.922546, 18.269960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451092, 34.606518, 18.153568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058450, 0.309619, -0.949062,
		0.839917, -0.529082, -0.120878,
		-0.539558, -0.790068, -0.290979,
		32.289223, 34.369495, 18.066275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054634, 34.640934, 17.636965>,  <32.666916, 34.922546, 18.269960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054634, 34.640934, 17.636965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681229, 34.498142, 17.623573>,  <32.457184, 34.412468, 17.615540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681229, 34.498142, 17.623573>,  <33.054634, 34.640934, 17.636965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681229, 34.498142, 17.623573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023432, 0.032428, -0.999199,
		0.357775, -0.933551, -0.021907,
		-0.933513, -0.356975, -0.033477,
		32.401173, 34.391048, 17.613531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063015, 34.280560, 17.026085>,  <33.054634, 34.640934, 17.636965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063015, 34.280560, 17.026085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673035, 34.307587, 17.110851>,  <32.439049, 34.323803, 17.161711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.673035, 34.307587, 17.110851>,  <33.063015, 34.280560, 17.026085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673035, 34.307587, 17.110851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202737, 0.121966, -0.971608,
		-0.091501, -0.990231, -0.105211,
		-0.974949, 0.067573, 0.211917,
		32.380550, 34.327858, 17.174427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750446, 33.898201, 16.536026>,  <33.063015, 34.280560, 17.026085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750446, 33.898201, 16.536026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447659, 34.123222, 16.669008>,  <32.265987, 34.258236, 16.748796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447659, 34.123222, 16.669008>,  <32.750446, 33.898201, 16.536026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447659, 34.123222, 16.669008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279189, 0.181560, -0.942915,
		-0.590804, -0.806576, 0.019624,
		-0.756970, 0.562557, 0.332454,
		32.220566, 34.291988, 16.768745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100056, 33.566257, 16.166777>,  <32.750446, 33.898201, 16.536026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100056, 33.566257, 16.166777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041523, 33.939320, 16.298683>,  <32.006401, 34.163155, 16.377827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041523, 33.939320, 16.298683>,  <32.100056, 33.566257, 16.166777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041523, 33.939320, 16.298683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424337, 0.241948, -0.872582,
		-0.893602, -0.267622, 0.360354,
		-0.146335, 0.932652, 0.329767,
		31.997622, 34.219116, 16.397614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443357, 33.723465, 15.991181>,  <32.100056, 33.566257, 16.166777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443357, 33.723465, 15.991181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628071, 34.074718, 16.041199>,  <31.738899, 34.285469, 16.071209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628071, 34.074718, 16.041199>,  <31.443357, 33.723465, 15.991181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628071, 34.074718, 16.041199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479869, 0.365893, -0.797401,
		-0.745978, 0.308222, 0.590353,
		0.461783, 0.878135, 0.125042,
		31.766605, 34.338158, 16.078711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916893, 34.231255, 15.872686>,  <31.443357, 33.723465, 15.991181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916893, 34.231255, 15.872686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262814, 34.419147, 15.801728>,  <31.470366, 34.531883, 15.759153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262814, 34.419147, 15.801728>,  <30.916893, 34.231255, 15.872686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262814, 34.419147, 15.801728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431244, 0.513888, -0.741585,
		-0.257183, 0.717825, 0.646980,
		0.864803, 0.469730, -0.177395,
		31.522255, 34.560066, 15.748509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686270, 34.939751, 15.726712>,  <30.916893, 34.231255, 15.872686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686270, 34.939751, 15.726712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057631, 34.922768, 15.579057>,  <31.280447, 34.912579, 15.490463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057631, 34.922768, 15.579057>,  <30.686270, 34.939751, 15.726712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057631, 34.922768, 15.579057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280559, 0.571264, -0.771326,
		0.243625, 0.819668, 0.518452,
		0.928404, -0.042458, -0.369139,
		31.336151, 34.910030, 15.468315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883081, 35.667549, 15.540517>,  <30.686270, 34.939751, 15.726712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883081, 35.667549, 15.540517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078430, 35.396996, 15.319973>,  <31.195641, 35.234665, 15.187647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078430, 35.396996, 15.319973>,  <30.883081, 35.667549, 15.540517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078430, 35.396996, 15.319973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376204, 0.406909, -0.832404,
		0.787377, 0.613948, -0.055734,
		0.488374, -0.676382, -0.551360,
		31.224943, 35.194080, 15.154565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067942, 36.024467, 14.964693>,  <30.883081, 35.667549, 15.540517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067942, 36.024467, 14.964693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054472, 35.641605, 14.849646>,  <31.046391, 35.411888, 14.780617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054472, 35.641605, 14.849646>,  <31.067942, 36.024467, 14.964693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054472, 35.641605, 14.849646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548679, 0.258243, -0.795149,
		0.835354, 0.131034, -0.533866,
		-0.033676, -0.957152, -0.287620,
		31.044369, 35.354458, 14.763360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245371, 36.014042, 14.263720>,  <31.067942, 36.024467, 14.964693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245371, 36.014042, 14.263720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059048, 35.665150, 14.323361>,  <30.947254, 35.455814, 14.359146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059048, 35.665150, 14.323361>,  <31.245371, 36.014042, 14.263720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059048, 35.665150, 14.323361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537837, 0.145266, -0.830439,
		0.702678, -0.467017, -0.536786,
		-0.465806, -0.872235, 0.149104,
		30.919306, 35.403481, 14.368093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426670, 35.546165, 13.734441>,  <31.245371, 36.014042, 14.263720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426670, 35.546165, 13.734441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073925, 35.422127, 13.876514>,  <30.862278, 35.347706, 13.961759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073925, 35.422127, 13.876514>,  <31.426670, 35.546165, 13.734441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073925, 35.422127, 13.876514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413311, 0.145874, -0.898830,
		0.226912, -0.939447, -0.256807,
		-0.881864, -0.310096, 0.355183,
		30.809366, 35.329098, 13.983069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092766, 35.111797, 13.201421>,  <31.426670, 35.546165, 13.734441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092766, 35.111797, 13.201421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770327, 35.115845, 13.438099>,  <30.576862, 35.118275, 13.580106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770327, 35.115845, 13.438099>,  <31.092766, 35.111797, 13.201421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770327, 35.115845, 13.438099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582144, -0.193281, -0.789779,
		0.106371, -0.981091, 0.161694,
		-0.806098, 0.010120, 0.591696,
		30.528498, 35.118881, 13.615607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565815, 34.614334, 12.923367>,  <31.092766, 35.111797, 13.201421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565815, 34.614334, 12.923367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370216, 34.889553, 13.137835>,  <30.252857, 35.054684, 13.266516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370216, 34.889553, 13.137835>,  <30.565815, 34.614334, 12.923367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370216, 34.889553, 13.137835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758851, -0.032437, -0.650456,
		-0.430151, -0.724943, 0.537985,
		-0.488994, 0.688045, 0.536171,
		30.223518, 35.095966, 13.298686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899347, 34.302307, 13.067128>,  <30.565815, 34.614334, 12.923367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899347, 34.302307, 13.067128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857361, 34.700001, 13.058274>,  <29.832169, 34.938618, 13.052961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857361, 34.700001, 13.058274>,  <29.899347, 34.302307, 13.067128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857361, 34.700001, 13.058274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810620, -0.098433, -0.577240,
		-0.576088, -0.042647, 0.816275,
		-0.104966, 0.994229, -0.022135,
		29.825871, 34.998268, 13.051634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102697, 34.533772, 13.045209>,  <29.899347, 34.302307, 13.067128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102697, 34.533772, 13.045209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268610, 34.887360, 12.958913>,  <29.368158, 35.099514, 12.907135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.268610, 34.887360, 12.958913>,  <29.102697, 34.533772, 13.045209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268610, 34.887360, 12.958913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664593, 0.132368, -0.735388,
		-0.621507, 0.448405, 0.642388,
		0.414783, 0.883975, -0.215739,
		29.393045, 35.152554, 12.894191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558699, 35.146366, 13.028259>,  <29.102697, 34.533772, 13.045209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558699, 35.146366, 13.028259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857887, 35.247643, 12.782844>,  <29.037401, 35.308407, 12.635594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857887, 35.247643, 12.782844>,  <28.558699, 35.146366, 13.028259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857887, 35.247643, 12.782844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644708, 0.057442, -0.762267,
		-0.157755, 0.965710, 0.206199,
		0.747974, 0.253190, -0.613539,
		29.082279, 35.323601, 12.598782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246586, 35.691944, 12.506657>,  <28.558699, 35.146366, 13.028259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246586, 35.691944, 12.506657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573849, 35.577827, 12.306967>,  <28.770206, 35.509357, 12.187153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573849, 35.577827, 12.306967>,  <28.246586, 35.691944, 12.506657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573849, 35.577827, 12.306967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499600, 0.077077, -0.862820,
		0.284637, 0.955336, -0.079473,
		0.818157, -0.285295, -0.499225,
		28.819296, 35.492237, 12.157199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232355, 36.104488, 11.852440>,  <28.246586, 35.691944, 12.506657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232355, 36.104488, 11.852440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459286, 35.780823, 11.791254>,  <28.595444, 35.586624, 11.754542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459286, 35.780823, 11.791254>,  <28.232355, 36.104488, 11.852440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459286, 35.780823, 11.791254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437051, -0.138426, -0.888721,
		0.697944, 0.571049, -0.432177,
		0.567328, -0.809161, -0.152964,
		28.629484, 35.538074, 11.745365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601215, 36.233566, 11.272876>,  <28.232355, 36.104488, 11.852440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601215, 36.233566, 11.272876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602554, 35.834816, 11.304444>,  <28.603357, 35.595566, 11.323385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602554, 35.834816, 11.304444>,  <28.601215, 36.233566, 11.272876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602554, 35.834816, 11.304444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405566, -0.073492, -0.911106,
		0.914060, -0.028959, -0.404545,
		0.003346, -0.996875, 0.078921,
		28.603558, 35.535755, 11.328121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737930, 36.004692, 10.648865>,  <28.601215, 36.233566, 11.272876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737930, 36.004692, 10.648865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569530, 35.681644, 10.814037>,  <28.468491, 35.487816, 10.913140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569530, 35.681644, 10.814037>,  <28.737930, 36.004692, 10.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569530, 35.681644, 10.814037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502644, -0.171232, -0.847366,
		0.755055, -0.564298, -0.333856,
		-0.421000, -0.807618, 0.412931,
		28.443230, 35.439358, 10.937917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769548, 35.423607, 10.195134>,  <28.737930, 36.004692, 10.648865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769548, 35.423607, 10.195134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479120, 35.311981, 10.446513>,  <28.304863, 35.245007, 10.597341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479120, 35.311981, 10.446513>,  <28.769548, 35.423607, 10.195134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479120, 35.311981, 10.446513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541832, -0.330526, -0.772768,
		0.423368, -0.901597, 0.088782,
		-0.726070, -0.279060, 0.628448,
		28.261299, 35.228264, 10.635048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458553, 34.752632, 10.075126>,  <28.769548, 35.423607, 10.195134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458553, 34.752632, 10.075126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227852, 35.045994, 10.219052>,  <28.089432, 35.222012, 10.305408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227852, 35.045994, 10.219052>,  <28.458553, 34.752632, 10.075126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227852, 35.045994, 10.219052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496611, 0.034954, -0.867269,
		-0.648639, -0.678890, 0.344058,
		-0.576754, 0.733408, 0.359816,
		28.054825, 35.266018, 10.326998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808069, 34.482010, 9.884910>,  <28.458553, 34.752632, 10.075126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808069, 34.482010, 9.884910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784454, 34.876247, 9.948298>,  <27.770285, 35.112789, 9.986330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784454, 34.876247, 9.948298>,  <27.808069, 34.482010, 9.884910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784454, 34.876247, 9.948298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471111, 0.112448, -0.874877,
		-0.880096, -0.126309, 0.457687,
		-0.059039, 0.985597, 0.158470,
		27.766743, 35.171928, 9.995838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970039, 34.067120, 10.440724>,  <27.808069, 34.482010, 9.884910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970039, 34.067120, 10.440724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655052, 33.841560, 10.341200>,  <27.466059, 33.706223, 10.281486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655052, 33.841560, 10.341200>,  <27.970039, 34.067120, 10.440724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655052, 33.841560, 10.341200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174497, 0.591136, -0.787470,
		0.591136, -0.576693, -0.563901,
		0.787470, 0.563901, 0.248810,
		27.418812, 33.672390, 10.266557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124289, 33.736668, 9.762125>,  <27.970039, 34.067120, 10.440724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124289, 33.736668, 9.762125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748888, 33.812881, 9.877305>,  <27.523647, 33.858608, 9.946413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748888, 33.812881, 9.877305>,  <28.124289, 33.736668, 9.762125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748888, 33.812881, 9.877305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159968, 0.499121, -0.851638,
		-0.305987, -0.845325, -0.437946,
		-0.938500, 0.190533, 0.287950,
		27.467339, 33.870041, 9.963690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600868, 33.511086, 9.317151>,  <28.124289, 33.736668, 9.762125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600868, 33.511086, 9.317151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427908, 33.811272, 9.517083>,  <27.324133, 33.991383, 9.637043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427908, 33.811272, 9.517083>,  <27.600868, 33.511086, 9.317151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427908, 33.811272, 9.517083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236696, 0.440420, -0.866028,
		-0.870061, -0.492778, -0.012805,
		-0.432399, 0.750467, 0.499831,
		27.298187, 34.036411, 9.667032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919102, 33.680916, 9.144851>,  <27.600868, 33.511086, 9.317151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919102, 33.680916, 9.144851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045752, 34.041088, 9.264163>,  <27.121742, 34.257191, 9.335751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045752, 34.041088, 9.264163>,  <26.919102, 33.680916, 9.144851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045752, 34.041088, 9.264163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250057, 0.382572, -0.889444,
		-0.914997, 0.207034, 0.346291,
		0.316626, 0.900431, 0.298282,
		27.140739, 34.311218, 9.353647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318701, 34.143875, 9.172999>,  <26.919102, 33.680916, 9.144851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318701, 34.143875, 9.172999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682489, 34.291107, 9.095668>,  <26.900763, 34.379448, 9.049269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682489, 34.291107, 9.095668>,  <26.318701, 34.143875, 9.172999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682489, 34.291107, 9.095668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277195, 0.190247, -0.941790,
		-0.309873, 0.910123, 0.275055,
		0.909473, 0.368079, -0.193329,
		26.955332, 34.401531, 9.037669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278450, 33.800442, 9.781760>,  <26.318701, 34.143875, 9.172999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278450, 33.800442, 9.781760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667976, 33.711334, 9.763635>,  <26.901693, 33.657867, 9.752759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667976, 33.711334, 9.763635>,  <26.278450, 33.800442, 9.781760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667976, 33.711334, 9.763635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084761, -0.540756, 0.836898,
		-0.210941, -0.811144, -0.545480,
		0.973817, -0.222772, -0.045315,
		26.960121, 33.644501, 9.750040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.299456, 33.153931, 9.991305>,  <26.278450, 33.800442, 9.781760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.299456, 33.153931, 9.991305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659597, 33.311050, 10.066208>,  <26.875683, 33.405323, 10.111149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659597, 33.311050, 10.066208>,  <26.299456, 33.153931, 9.991305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659597, 33.311050, 10.066208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032304, -0.489466, 0.871424,
		0.433954, -0.778543, -0.453382,
		0.900356, 0.392804, 0.187256,
		26.929705, 33.428890, 10.122385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693489, 32.564362, 10.222447>,  <26.299456, 33.153931, 9.991305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693489, 32.564362, 10.222447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859043, 32.904724, 10.351855>,  <26.958376, 33.108940, 10.429500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859043, 32.904724, 10.351855>,  <26.693489, 32.564362, 10.222447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859043, 32.904724, 10.351855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258073, -0.450482, 0.854672,
		0.872982, -0.270244, -0.406043,
		0.413885, 0.850902, 0.323520,
		26.983210, 33.159996, 10.448912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425116, 32.416176, 10.407365>,  <26.693489, 32.564362, 10.222447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425116, 32.416176, 10.407365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320095, 32.735977, 10.623462>,  <27.257082, 32.927856, 10.753120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320095, 32.735977, 10.623462>,  <27.425116, 32.416176, 10.407365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320095, 32.735977, 10.623462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386532, -0.425856, 0.818071,
		0.884115, 0.423607, -0.197224,
		-0.262552, 0.799502, 0.540243,
		27.241329, 32.975826, 10.785535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027760, 32.600285, 10.869199>,  <27.425116, 32.416176, 10.407365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027760, 32.600285, 10.869199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702826, 32.766014, 11.033370>,  <27.507866, 32.865452, 11.131873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702826, 32.766014, 11.033370>,  <28.027760, 32.600285, 10.869199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702826, 32.766014, 11.033370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203394, -0.458299, 0.865213,
		0.546576, 0.786320, 0.288021,
		-0.812334, 0.414323, 0.410428,
		27.459126, 32.890312, 11.156498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219231, 32.831676, 11.546653>,  <28.027760, 32.600285, 10.869199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219231, 32.831676, 11.546653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825653, 32.817154, 11.616547>,  <27.589506, 32.808441, 11.658483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825653, 32.817154, 11.616547>,  <28.219231, 32.831676, 11.546653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825653, 32.817154, 11.616547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177982, -0.271601, 0.945809,
		0.013121, 0.961725, 0.273702,
		-0.983946, -0.036304, 0.174733,
		27.530470, 32.806263, 11.668966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167166, 33.282825, 12.090925>,  <28.219231, 32.831676, 11.546653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167166, 33.282825, 12.090925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847185, 33.042801, 12.091672>,  <27.655197, 32.898788, 12.092120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847185, 33.042801, 12.091672>,  <28.167166, 33.282825, 12.090925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847185, 33.042801, 12.091672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137765, -0.180630, 0.973855,
		-0.584033, 0.779296, 0.227163,
		-0.799954, -0.600059, 0.001866,
		27.607199, 32.862782, 12.092232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936245, 33.391468, 12.665953>,  <28.167166, 33.282825, 12.090925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936245, 33.391468, 12.665953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714962, 33.068596, 12.583566>,  <27.582191, 32.874874, 12.534134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714962, 33.068596, 12.583566>,  <27.936245, 33.391468, 12.665953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714962, 33.068596, 12.583566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193996, -0.115620, 0.974165,
		-0.810139, 0.578874, -0.092628,
		-0.553209, -0.807179, -0.205967,
		27.549000, 32.826443, 12.521775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364845, 33.454426, 13.073285>,  <27.936245, 33.391468, 12.665953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364845, 33.454426, 13.073285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409632, 33.063713, 13.000235>,  <27.436502, 32.829285, 12.956404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409632, 33.063713, 13.000235>,  <27.364845, 33.454426, 13.073285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409632, 33.063713, 13.000235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105571, -0.194435, 0.975218,
		-0.988088, -0.089910, -0.124890,
		0.111965, -0.976786, -0.182627,
		27.443222, 32.770676, 12.945446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929314, 33.188145, 13.417510>,  <27.364845, 33.454426, 13.073285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929314, 33.188145, 13.417510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139883, 32.854786, 13.350181>,  <27.266224, 32.654770, 13.309783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139883, 32.854786, 13.350181>,  <26.929314, 33.188145, 13.417510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139883, 32.854786, 13.350181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131129, -0.275188, 0.952406,
		-0.840051, -0.479294, -0.254147,
		0.526421, -0.833396, -0.168323,
		27.297810, 32.604767, 13.299684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539875, 32.680771, 13.624381>,  <26.929314, 33.188145, 13.417510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539875, 32.680771, 13.624381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908737, 32.529320, 13.656048>,  <27.130054, 32.438450, 13.675048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908737, 32.529320, 13.656048>,  <26.539875, 32.680771, 13.624381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908737, 32.529320, 13.656048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218473, -0.340916, 0.914355,
		-0.319202, -0.860479, -0.397097,
		0.922160, -0.378619, 0.079170,
		27.185385, 32.415733, 13.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446739, 32.133694, 14.100151>,  <26.539875, 32.680771, 13.624381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446739, 32.133694, 14.100151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840750, 32.200928, 14.084820>,  <27.077156, 32.241268, 14.075622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840750, 32.200928, 14.084820>,  <26.446739, 32.133694, 14.100151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840750, 32.200928, 14.084820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060230, -0.127212, 0.990045,
		0.161534, -0.977530, -0.135431,
		0.985027, 0.168083, -0.038328,
		27.136257, 32.251354, 14.073321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706326, 31.565153, 14.483333>,  <26.446739, 32.133694, 14.100151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706326, 31.565153, 14.483333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984934, 31.850288, 14.450541>,  <27.152098, 32.021370, 14.430867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984934, 31.850288, 14.450541>,  <26.706326, 31.565153, 14.483333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984934, 31.850288, 14.450541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148510, -0.031442, 0.988411,
		0.702001, -0.700621, -0.127764,
		0.696519, 0.712840, -0.081977,
		27.193890, 32.064140, 14.425948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.336716, 31.282391, 14.791967>,  <26.706326, 31.565153, 14.483333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.336716, 31.282391, 14.791967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367559, 31.681028, 14.803658>,  <27.386065, 31.920212, 14.810672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367559, 31.681028, 14.803658>,  <27.336716, 31.282391, 14.791967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367559, 31.681028, 14.803658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286114, -0.050197, 0.956880,
		0.955088, -0.065421, -0.289010,
		0.077107, 0.996594, 0.029225,
		27.390692, 31.980007, 14.812425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910686, 31.462370, 15.097572>,  <27.336716, 31.282391, 14.791967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910686, 31.462370, 15.097572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720591, 31.813166, 15.125959>,  <27.606533, 32.023643, 15.142991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720591, 31.813166, 15.125959>,  <27.910686, 31.462370, 15.097572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720591, 31.813166, 15.125959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224448, 0.042849, 0.973543,
		0.850746, 0.478596, -0.217202,
		-0.475241, 0.876989, 0.070967,
		27.578018, 32.076263, 15.147249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437904, 31.951004, 15.349418>,  <27.910686, 31.462370, 15.097572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437904, 31.951004, 15.349418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068747, 32.095463, 15.402841>,  <27.847252, 32.182137, 15.434895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068747, 32.095463, 15.402841>,  <28.437904, 31.951004, 15.349418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068747, 32.095463, 15.402841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197225, 0.145461, 0.969507,
		0.330708, 0.921093, -0.205473,
		-0.922894, 0.361148, 0.133557,
		27.791878, 32.203808, 15.442908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579479, 32.534958, 15.548477>,  <28.437904, 31.951004, 15.349418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579479, 32.534958, 15.548477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205145, 32.451878, 15.662368>,  <27.980543, 32.402031, 15.730702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205145, 32.451878, 15.662368>,  <28.579479, 32.534958, 15.548477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205145, 32.451878, 15.662368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270714, 0.093651, 0.958094,
		-0.225658, 0.973700, -0.031416,
		-0.935838, -0.207697, 0.284727,
		27.924393, 32.389568, 15.747787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426067, 33.106781, 16.040741>,  <28.579479, 32.534958, 15.548477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426067, 33.106781, 16.040741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180305, 32.801468, 16.120651>,  <28.032848, 32.618282, 16.168598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180305, 32.801468, 16.120651>,  <28.426067, 33.106781, 16.040741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180305, 32.801468, 16.120651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231661, 0.067522, 0.970451,
		-0.754213, 0.642531, 0.135335,
		-0.614407, -0.763279, 0.199775,
		27.995983, 32.572483, 16.180584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101749, 33.286655, 16.718283>,  <28.426067, 33.106781, 16.040741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101749, 33.286655, 16.718283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995003, 32.902950, 16.681198>,  <27.930954, 32.672726, 16.658947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995003, 32.902950, 16.681198>,  <28.101749, 33.286655, 16.718283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995003, 32.902950, 16.681198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239979, -0.159315, 0.957616,
		-0.933377, 0.233307, 0.272719,
		-0.266867, -0.959264, -0.092713,
		27.914944, 32.615170, 16.653385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708265, 33.175964, 17.285686>,  <28.101749, 33.286655, 16.718283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708265, 33.175964, 17.285686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829792, 32.809589, 17.180799>,  <27.902708, 32.589764, 17.117867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829792, 32.809589, 17.180799>,  <27.708265, 33.175964, 17.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829792, 32.809589, 17.180799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254460, -0.187217, 0.948789,
		-0.918120, -0.354983, 0.176189,
		0.303819, -0.915935, -0.262217,
		27.920938, 32.534809, 17.102135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570707, 32.808567, 17.818844>,  <27.708265, 33.175964, 17.285686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570707, 32.808567, 17.818844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832834, 32.578777, 17.622663>,  <27.990110, 32.440903, 17.504955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.832834, 32.578777, 17.622663>,  <27.570707, 32.808567, 17.818844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.832834, 32.578777, 17.622663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399675, -0.287251, 0.870486,
		-0.640953, -0.766465, 0.041361,
		0.655316, -0.574472, -0.490451,
		28.029428, 32.406437, 17.475529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610292, 32.252415, 18.218782>,  <27.570707, 32.808567, 17.818844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610292, 32.252415, 18.218782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944464, 32.207623, 18.003553>,  <28.144966, 32.180748, 17.874416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944464, 32.207623, 18.003553>,  <27.610292, 32.252415, 18.218782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944464, 32.207623, 18.003553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417704, -0.506910, 0.754033,
		-0.357189, -0.854695, -0.376714,
		0.835428, -0.111977, -0.538072,
		28.195091, 32.174030, 17.842133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809200, 31.547798, 18.281832>,  <27.610292, 32.252415, 18.218782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809200, 31.547798, 18.281832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138206, 31.751661, 18.180859>,  <28.335609, 31.873980, 18.120275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138206, 31.751661, 18.180859>,  <27.809200, 31.547798, 18.281832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138206, 31.751661, 18.180859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510514, -0.465961, 0.722673,
		0.250691, -0.723278, -0.643445,
		0.822514, 0.509655, -0.252431,
		28.384960, 31.904558, 18.105129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428509, 30.961338, 18.075087>,  <27.809200, 31.547798, 18.281832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428509, 30.961338, 18.075087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584925, 31.317728, 18.167395>,  <28.678774, 31.531561, 18.222780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584925, 31.317728, 18.167395>,  <28.428509, 30.961338, 18.075087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584925, 31.317728, 18.167395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605526, -0.437879, 0.664530,
		0.693129, -0.120118, -0.710735,
		0.391038, 0.890973, 0.230772,
		28.702236, 31.585020, 18.236626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150986, 30.970161, 17.920776>,  <28.428509, 30.961338, 18.075087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150986, 30.970161, 17.920776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104992, 31.257267, 18.195467>,  <29.077396, 31.429531, 18.360281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104992, 31.257267, 18.195467>,  <29.150986, 30.970161, 17.920776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104992, 31.257267, 18.195467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662995, -0.459354, 0.591127,
		0.739740, 0.523267, -0.423056,
		-0.114985, 0.717765, 0.686726,
		29.070496, 31.472597, 18.401485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770557, 31.229763, 18.008520>,  <29.150986, 30.970161, 17.920776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770557, 31.229763, 18.008520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590063, 31.323841, 18.352861>,  <29.481768, 31.380287, 18.559467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590063, 31.323841, 18.352861>,  <29.770557, 31.229763, 18.008520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590063, 31.323841, 18.352861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745460, -0.430961, 0.508490,
		0.490589, 0.871181, 0.019137,
		-0.451234, 0.235193, 0.860855,
		29.454693, 31.394400, 18.611118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302811, 31.410227, 18.502728>,  <29.770557, 31.229763, 18.008520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302811, 31.410227, 18.502728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985485, 31.360641, 18.741152>,  <29.795090, 31.330891, 18.884207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985485, 31.360641, 18.741152>,  <30.302811, 31.410227, 18.502728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985485, 31.360641, 18.741152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589542, -0.400809, 0.701279,
		0.151974, 0.907737, 0.391048,
		-0.793312, -0.123963, 0.596062,
		29.747492, 31.323452, 18.919970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644983, 31.345892, 19.293455>,  <30.302811, 31.410227, 18.502728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644983, 31.345892, 19.293455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261377, 31.286139, 19.389765>,  <30.031214, 31.250286, 19.447550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.261377, 31.286139, 19.389765>,  <30.644983, 31.345892, 19.293455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261377, 31.286139, 19.389765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274548, -0.279757, 0.919978,
		-0.070073, 0.948377, 0.309305,
		-0.959017, -0.149385, 0.240772,
		29.973673, 31.241323, 19.461996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545582, 31.528862, 20.017012>,  <30.644983, 31.345892, 19.293455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545582, 31.528862, 20.017012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220360, 31.300348, 19.972158>,  <30.025227, 31.163240, 19.945246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220360, 31.300348, 19.972158>,  <30.545582, 31.528862, 20.017012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220360, 31.300348, 19.972158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291946, -0.566724, 0.770449,
		-0.503696, 0.593680, 0.627562,
		-0.813054, -0.571287, -0.112134,
		29.976444, 31.128962, 19.938519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316332, 31.446117, 20.645727>,  <30.545582, 31.528862, 20.017012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316332, 31.446117, 20.645727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163370, 31.133631, 20.448357>,  <30.071594, 30.946138, 20.329935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163370, 31.133631, 20.448357>,  <30.316332, 31.446117, 20.645727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163370, 31.133631, 20.448357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212493, -0.594051, 0.775854,
		-0.899230, 0.191840, 0.393170,
		-0.382403, -0.781217, -0.493424,
		30.048649, 30.899265, 20.300329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791033, 31.127771, 21.106760>,  <30.316332, 31.446117, 20.645727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791033, 31.127771, 21.106760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921040, 30.847198, 20.853033>,  <29.999044, 30.678856, 20.700796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921040, 30.847198, 20.853033>,  <29.791033, 31.127771, 21.106760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921040, 30.847198, 20.853033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325518, -0.546770, 0.771415,
		-0.887920, -0.457205, 0.050618,
		0.325018, -0.701431, -0.634316,
		30.018545, 30.636768, 20.662739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655024, 30.555357, 21.411255>,  <29.791033, 31.127771, 21.106760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655024, 30.555357, 21.411255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908848, 30.416880, 21.134853>,  <30.061142, 30.333794, 20.969013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908848, 30.416880, 21.134853>,  <29.655024, 30.555357, 21.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908848, 30.416880, 21.134853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371865, -0.647018, 0.665646,
		-0.677534, -0.679351, -0.281834,
		0.634559, -0.346194, -0.691002,
		30.099216, 30.313023, 20.927553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403629, 29.864895, 21.224659>,  <29.655024, 30.555357, 21.411255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403629, 29.864895, 21.224659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797182, 29.903954, 21.164736>,  <30.033314, 29.927389, 21.128782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797182, 29.903954, 21.164736>,  <29.403629, 29.864895, 21.224659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797182, 29.903954, 21.164736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178817, -0.531177, 0.828176,
		0.001293, -0.841615, -0.540076,
		0.983881, 0.097646, -0.149809,
		30.092346, 29.933247, 21.119793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761862, 29.213755, 21.277697>,  <29.403629, 29.864895, 21.224659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761862, 29.213755, 21.277697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053844, 29.479441, 21.342171>,  <30.229034, 29.638851, 21.380856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053844, 29.479441, 21.342171>,  <29.761862, 29.213755, 21.277697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053844, 29.479441, 21.342171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284541, -0.509737, 0.811914,
		0.621447, -0.546799, -0.561083,
		0.729959, 0.664213, 0.161188,
		30.272833, 29.678705, 21.390528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334904, 28.799297, 21.401476>,  <29.761862, 29.213755, 21.277697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334904, 28.799297, 21.401476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443474, 29.155975, 21.546368>,  <30.508615, 29.369982, 21.633303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443474, 29.155975, 21.546368>,  <30.334904, 28.799297, 21.401476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443474, 29.155975, 21.546368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460006, -0.450776, 0.764981,
		0.845413, -0.041009, -0.532537,
		0.271426, 0.891694, 0.362228,
		30.524902, 29.423483, 21.655035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006676, 28.621342, 21.822977>,  <30.334904, 28.799297, 21.401476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006676, 28.621342, 21.822977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950802, 29.002560, 21.930452>,  <30.917278, 29.231291, 21.994938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950802, 29.002560, 21.930452>,  <31.006676, 28.621342, 21.822977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950802, 29.002560, 21.930452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544863, -0.152596, 0.824523,
		0.826808, 0.261572, -0.497964,
		-0.139685, 0.953045, 0.268688,
		30.908895, 29.288473, 22.011059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686892, 28.977869, 22.065022>,  <31.006676, 28.621342, 21.822977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686892, 28.977869, 22.065022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373308, 29.164351, 22.229002>,  <31.185158, 29.276239, 22.327391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373308, 29.164351, 22.229002>,  <31.686892, 28.977869, 22.065022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373308, 29.164351, 22.229002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400618, -0.124544, 0.907741,
		0.474248, 0.875868, -0.089131,
		-0.783961, 0.466202, 0.409953,
		31.138121, 29.304211, 22.351988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962446, 29.399252, 22.648695>,  <31.686892, 28.977869, 22.065022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962446, 29.399252, 22.648695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571548, 29.352795, 22.719694>,  <31.337009, 29.324921, 22.762293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571548, 29.352795, 22.719694>,  <31.962446, 29.399252, 22.648695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571548, 29.352795, 22.719694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177520, 0.010247, 0.984064,
		-0.116110, 0.993180, 0.010604,
		-0.977244, -0.116142, 0.177499,
		31.278376, 29.317951, 22.772943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723928, 30.002821, 23.043016>,  <31.962446, 29.399252, 22.648695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723928, 30.002821, 23.043016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465387, 29.709051, 23.125813>,  <31.310263, 29.532789, 23.175491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465387, 29.709051, 23.125813>,  <31.723928, 30.002821, 23.043016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465387, 29.709051, 23.125813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218827, 0.081465, 0.972357,
		-0.730986, 0.673783, 0.108057,
		-0.646354, -0.734425, 0.206992,
		31.271481, 29.488724, 23.187910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470104, 30.255569, 23.685270>,  <31.723928, 30.002821, 23.043016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470104, 30.255569, 23.685270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352886, 29.873762, 23.663284>,  <31.282555, 29.644678, 23.650093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352886, 29.873762, 23.663284>,  <31.470104, 30.255569, 23.685270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352886, 29.873762, 23.663284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112296, -0.091452, 0.989458,
		-0.949481, 0.283785, 0.133988,
		-0.293046, -0.954517, -0.054964,
		31.264973, 29.587406, 23.646795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898136, 30.113411, 24.234362>,  <31.470104, 30.255569, 23.685270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898136, 30.113411, 24.234362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054970, 29.750906, 24.171165>,  <31.149069, 29.533403, 24.133247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054970, 29.750906, 24.171165>,  <30.898136, 30.113411, 24.234362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054970, 29.750906, 24.171165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010885, -0.176299, 0.984276,
		-0.919865, -0.384198, -0.078989,
		0.392083, -0.906262, -0.157989,
		31.172594, 29.479027, 24.123768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550562, 29.672907, 24.677078>,  <30.898136, 30.113411, 24.234362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550562, 29.672907, 24.677078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887537, 29.478870, 24.583281>,  <31.089722, 29.362450, 24.527002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887537, 29.478870, 24.583281>,  <30.550562, 29.672907, 24.677078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887537, 29.478870, 24.583281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168779, -0.175727, 0.969863,
		-0.511678, -0.856626, -0.066166,
		0.842437, -0.485090, -0.234496,
		31.140268, 29.333344, 24.512932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830809, 29.367298, 24.617161>,  <30.550562, 29.672907, 24.677078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830809, 29.367298, 24.617161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482323, 29.439171, 24.799896>,  <29.273232, 29.482294, 24.909536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482323, 29.439171, 24.799896>,  <29.830809, 29.367298, 24.617161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482323, 29.439171, 24.799896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477985, -0.098426, -0.872836,
		-0.111874, -0.978787, 0.171639,
		-0.871214, 0.179689, 0.456834,
		29.220959, 29.493074, 24.936947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377750, 28.992435, 24.241899>,  <29.830809, 29.367298, 24.617161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377750, 28.992435, 24.241899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150473, 29.249870, 24.447014>,  <29.014105, 29.404331, 24.570082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150473, 29.249870, 24.447014>,  <29.377750, 28.992435, 24.241899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150473, 29.249870, 24.447014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538227, 0.180713, -0.823198,
		-0.622467, -0.743732, 0.243716,
		-0.568196, 0.643588, 0.512785,
		28.980015, 29.442947, 24.600849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797621, 28.906412, 23.837877>,  <29.377750, 28.992435, 24.241899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797621, 28.906412, 23.837877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731979, 29.238968, 24.050240>,  <28.692595, 29.438501, 24.177658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731979, 29.238968, 24.050240>,  <28.797621, 28.906412, 23.837877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731979, 29.238968, 24.050240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636984, 0.321640, -0.700570,
		-0.753208, -0.453144, 0.476800,
		-0.164101, 0.831389, 0.530907,
		28.682749, 29.488384, 24.209511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995485, 28.933647, 23.925068>,  <28.797621, 28.906412, 23.837877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995485, 28.933647, 23.925068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137903, 29.299559, 24.001396>,  <28.223354, 29.519106, 24.047194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137903, 29.299559, 24.001396>,  <27.995485, 28.933647, 23.925068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137903, 29.299559, 24.001396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734660, 0.400214, -0.547817,
		-0.577499, 0.054860, 0.814546,
		0.356046, 0.914778, 0.190820,
		28.244717, 29.573992, 24.058641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411596, 29.425005, 24.199192>,  <27.995485, 28.933647, 23.925068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411596, 29.425005, 24.199192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717718, 29.604406, 24.014517>,  <27.901392, 29.712048, 23.903711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717718, 29.604406, 24.014517>,  <27.411596, 29.425005, 24.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717718, 29.604406, 24.014517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643547, 0.519194, -0.562392,
		-0.012529, 0.727519, 0.685974,
		0.765304, 0.448502, -0.461687,
		27.947309, 29.738956, 23.876011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131996, 30.036449, 24.077871>,  <27.411596, 29.425005, 24.199192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131996, 30.036449, 24.077871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447420, 30.025892, 23.832115>,  <27.636675, 30.019558, 23.684662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447420, 30.025892, 23.832115>,  <27.131996, 30.036449, 24.077871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447420, 30.025892, 23.832115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454064, 0.648787, -0.610656,
		0.414726, 0.760512, 0.499623,
		0.788561, -0.026394, -0.614390,
		27.683989, 30.017975, 23.647799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136868, 30.645105, 23.845671>,  <27.131996, 30.036449, 24.077871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136868, 30.645105, 23.845671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366983, 30.461346, 23.574970>,  <27.505053, 30.351089, 23.412550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366983, 30.461346, 23.574970>,  <27.136868, 30.645105, 23.845671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366983, 30.461346, 23.574970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434559, 0.529289, -0.728706,
		0.692964, 0.713306, 0.104859,
		0.575291, -0.459400, -0.676752,
		27.539570, 30.323526, 23.371944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389215, 31.146368, 23.446308>,  <27.136868, 30.645105, 23.845671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389215, 31.146368, 23.446308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444519, 30.815422, 23.228556>,  <27.477701, 30.616854, 23.097904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444519, 30.815422, 23.228556>,  <27.389215, 31.146368, 23.446308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444519, 30.815422, 23.228556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497866, 0.417102, -0.760365,
		0.856162, 0.376157, -0.354249,
		0.138258, -0.827364, -0.544383,
		27.485996, 30.567213, 23.065241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724674, 31.372522, 22.813896>,  <27.389215, 31.146368, 23.446308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724674, 31.372522, 22.813896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548801, 31.020554, 22.741879>,  <27.443277, 30.809372, 22.698668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548801, 31.020554, 22.741879>,  <27.724674, 31.372522, 22.813896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548801, 31.020554, 22.741879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394995, 0.369473, -0.841111,
		0.806634, -0.298705, -0.510016,
		-0.439682, -0.879923, -0.180042,
		27.416897, 30.756577, 22.687866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653568, 31.366457, 22.061674>,  <27.724674, 31.372522, 22.813896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653568, 31.366457, 22.061674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394863, 31.091211, 22.193245>,  <27.239639, 30.926064, 22.272188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394863, 31.091211, 22.193245>,  <27.653568, 31.366457, 22.061674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394863, 31.091211, 22.193245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581253, 0.165479, -0.796719,
		0.493805, -0.706479, -0.506995,
		-0.646763, -0.688117, 0.328929,
		27.200834, 30.884777, 22.291924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577238, 31.018545, 21.458485>,  <27.653568, 31.366457, 22.061674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577238, 31.018545, 21.458485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260555, 30.931499, 21.686815>,  <27.070545, 30.879272, 21.823814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260555, 30.931499, 21.686815>,  <27.577238, 31.018545, 21.458485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260555, 30.931499, 21.686815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592243, 0.044251, -0.804543,
		0.149821, -0.975031, -0.163915,
		-0.791708, -0.217615, 0.570826,
		27.023043, 30.866215, 21.858063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235086, 30.489996, 21.091026>,  <27.577238, 31.018545, 21.458485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235086, 30.489996, 21.091026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978443, 30.643110, 21.356901>,  <26.824457, 30.734980, 21.516426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978443, 30.643110, 21.356901>,  <27.235086, 30.489996, 21.091026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978443, 30.643110, 21.356901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666880, 0.149749, -0.729963,
		-0.378957, -0.911619, 0.159192,
		-0.641609, 0.382787, 0.664689,
		26.785961, 30.757946, 21.556309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621279, 30.137602, 20.914818>,  <27.235086, 30.489996, 21.091026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621279, 30.137602, 20.914818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510777, 30.468048, 21.111271>,  <26.444475, 30.666317, 21.229143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510777, 30.468048, 21.111271>,  <26.621279, 30.137602, 20.914818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510777, 30.468048, 21.111271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483054, 0.322432, -0.814062,
		-0.830867, -0.462135, 0.309985,
		-0.276258, 0.826117, 0.491135,
		26.427898, 30.715883, 21.258612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013922, 30.211153, 20.665579>,  <26.621279, 30.137602, 20.914818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013922, 30.211153, 20.665579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134649, 30.569166, 20.796925>,  <26.207085, 30.783974, 20.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134649, 30.569166, 20.796925>,  <26.013922, 30.211153, 20.665579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134649, 30.569166, 20.796925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119703, 0.377277, -0.918332,
		-0.945821, 0.237862, 0.221006,
		0.301817, 0.895033, 0.328364,
		26.225195, 30.837677, 20.895433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495094, 30.694340, 20.328234>,  <26.013922, 30.211153, 20.665579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495094, 30.694340, 20.328234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816305, 30.905193, 20.439430>,  <26.009031, 31.031706, 20.506147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816305, 30.905193, 20.439430>,  <25.495094, 30.694340, 20.328234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816305, 30.905193, 20.439430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051230, 0.525803, -0.849062,
		-0.593738, 0.667578, 0.449239,
		0.803026, 0.527135, 0.277989,
		26.057213, 31.063334, 20.522827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297693, 31.411938, 20.374924>,  <25.495094, 30.694340, 20.328234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297693, 31.411938, 20.374924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694649, 31.441166, 20.335268>,  <25.932821, 31.458702, 20.311474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694649, 31.441166, 20.335268>,  <25.297693, 31.411938, 20.374924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694649, 31.441166, 20.335268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122793, 0.525156, -0.842100,
		-0.009468, 0.847863, 0.530131,
		0.992387, 0.073070, -0.099139,
		25.992365, 31.463087, 20.305527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.379223, 32.063114, 20.083572>,  <25.297693, 31.411938, 20.374924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.379223, 32.063114, 20.083572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738468, 31.896097, 20.028358>,  <25.954016, 31.795887, 19.995230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738468, 31.896097, 20.028358>,  <25.379223, 32.063114, 20.083572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738468, 31.896097, 20.028358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092064, 0.485447, -0.869405,
		0.430022, 0.768116, 0.474426,
		0.898112, -0.417540, -0.138037,
		26.007902, 31.770836, 19.986948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731674, 32.535679, 19.771832>,  <25.379223, 32.063114, 20.083572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731674, 32.535679, 19.771832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946384, 32.210987, 19.679773>,  <26.075211, 32.016171, 19.624538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946384, 32.210987, 19.679773>,  <25.731674, 32.535679, 19.771832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946384, 32.210987, 19.679773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271520, 0.424451, -0.863782,
		0.798843, 0.401168, 0.448235,
		0.536775, -0.811730, -0.230145,
		26.107416, 31.967468, 19.610729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347057, 32.745705, 19.432041>,  <25.731674, 32.535679, 19.771832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347057, 32.745705, 19.432041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256905, 32.373795, 19.315611>,  <26.202812, 32.150650, 19.245752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256905, 32.373795, 19.315611>,  <26.347057, 32.745705, 19.432041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256905, 32.373795, 19.315611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025466, 0.304283, -0.952241,
		0.973938, -0.207204, -0.092257,
		-0.225381, -0.929773, -0.291076,
		26.189291, 32.094864, 19.228289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493946, 32.779999, 18.826715>,  <26.347057, 32.745705, 19.432041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493946, 32.779999, 18.826715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332350, 32.417496, 18.776941>,  <26.235392, 32.199993, 18.747078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332350, 32.417496, 18.776941>,  <26.493946, 32.779999, 18.826715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332350, 32.417496, 18.776941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039581, 0.153219, -0.987399,
		0.913907, -0.393973, -0.097770,
		-0.403989, -0.906261, -0.124434,
		26.211153, 32.145618, 18.739611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910259, 32.369408, 18.357992>,  <26.493946, 32.779999, 18.826715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910259, 32.369408, 18.357992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535059, 32.231388, 18.344793>,  <26.309938, 32.148575, 18.336874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535059, 32.231388, 18.344793>,  <26.910259, 32.369408, 18.357992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535059, 32.231388, 18.344793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014481, 0.056104, -0.998320,
		0.346326, -0.936904, -0.047629,
		-0.938002, -0.345054, -0.032998,
		26.253658, 32.127872, 18.334894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003649, 31.844101, 17.767456>,  <26.910259, 32.369408, 18.357992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003649, 31.844101, 17.767456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641041, 31.992561, 17.847923>,  <26.423475, 32.081638, 17.896204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641041, 31.992561, 17.847923>,  <27.003649, 31.844101, 17.767456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641041, 31.992561, 17.847923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150997, 0.159937, -0.975510,
		-0.394237, -0.914695, -0.088944,
		-0.906519, 0.371152, 0.201169,
		26.369085, 32.103909, 17.908274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640499, 31.535456, 17.195168>,  <27.003649, 31.844101, 17.767456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640499, 31.535456, 17.195168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412689, 31.815159, 17.367992>,  <26.276003, 31.982981, 17.471687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412689, 31.815159, 17.367992>,  <26.640499, 31.535456, 17.195168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412689, 31.815159, 17.367992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337182, 0.280634, -0.898639,
		-0.749634, -0.657480, 0.075950,
		-0.569523, 0.699260, 0.432063,
		26.241833, 32.024937, 17.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922878, 31.448261, 16.957531>,  <26.640499, 31.535456, 17.195168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922878, 31.448261, 16.957531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975546, 31.828310, 17.070618>,  <26.007147, 32.056339, 17.138470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975546, 31.828310, 17.070618>,  <25.922878, 31.448261, 16.957531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975546, 31.828310, 17.070618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255911, 0.308111, -0.916285,
		-0.957691, 0.048297, 0.283716,
		0.131669, 0.950124, 0.282715,
		26.015047, 32.113346, 17.155432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364681, 31.887094, 16.651350>,  <25.922878, 31.448261, 16.957531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364681, 31.887094, 16.651350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658777, 32.148041, 16.724934>,  <25.835236, 32.304607, 16.769085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658777, 32.148041, 16.724934>,  <25.364681, 31.887094, 16.651350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658777, 32.148041, 16.724934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156812, 0.427756, -0.890188,
		-0.659417, 0.625655, 0.416802,
		0.735241, 0.652365, 0.183960,
		25.879349, 32.343750, 16.780121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994898, 32.509972, 16.633261>,  <25.364681, 31.887094, 16.651350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994898, 32.509972, 16.633261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382971, 32.575882, 16.562166>,  <25.615814, 32.615429, 16.519508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382971, 32.575882, 16.562166>,  <24.994898, 32.509972, 16.633261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382971, 32.575882, 16.562166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241469, 0.594057, -0.767326,
		-0.020851, 0.787366, 0.616133,
		0.970185, 0.164776, -0.177737,
		25.674026, 32.625317, 16.508844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077393, 33.246185, 16.629208>,  <24.994898, 32.509972, 16.633261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077393, 33.246185, 16.629208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366562, 33.072418, 16.414297>,  <25.540064, 32.968159, 16.285351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366562, 33.072418, 16.414297>,  <25.077393, 33.246185, 16.629208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366562, 33.072418, 16.414297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172362, 0.639640, -0.749101,
		0.669082, 0.634149, 0.387536,
		0.722925, -0.434413, -0.537275,
		25.583439, 32.942093, 16.253115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588554, 33.729904, 16.429640>,  <25.077393, 33.246185, 16.629208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588554, 33.729904, 16.429640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616810, 33.427013, 16.169912>,  <25.633762, 33.245277, 16.014076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616810, 33.427013, 16.169912>,  <25.588554, 33.729904, 16.429640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616810, 33.427013, 16.169912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046039, 0.647777, -0.760438,
		0.996439, 0.083610, 0.010896,
		0.070639, -0.757228, -0.649320,
		25.638000, 33.199844, 15.975117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150904, 33.846828, 15.992772>,  <25.588554, 33.729904, 16.429640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150904, 33.846828, 15.992772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906004, 33.614548, 15.778132>,  <25.759064, 33.475178, 15.649348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906004, 33.614548, 15.778132>,  <26.150904, 33.846828, 15.992772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906004, 33.614548, 15.778132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051472, 0.647955, -0.759937,
		0.788989, -0.492890, -0.366819,
		-0.612248, -0.580701, -0.536600,
		25.722330, 33.440338, 15.617152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418047, 33.970848, 15.403449>,  <26.150904, 33.846828, 15.992772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418047, 33.970848, 15.403449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082157, 33.772064, 15.315909>,  <25.880623, 33.652794, 15.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082157, 33.772064, 15.315909>,  <26.418047, 33.970848, 15.403449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082157, 33.772064, 15.315909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065417, 0.492676, -0.867750,
		0.539060, -0.714353, -0.446221,
		-0.839723, -0.496960, -0.218851,
		25.830240, 33.622978, 15.250255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432673, 33.810970, 14.689741>,  <26.418047, 33.970848, 15.403449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432673, 33.810970, 14.689741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043564, 33.830109, 14.780447>,  <25.810099, 33.841591, 14.834870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.043564, 33.830109, 14.780447>,  <26.432673, 33.810970, 14.689741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043564, 33.830109, 14.780447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183511, 0.438562, -0.879765,
		-0.141546, -0.897426, -0.417841,
		-0.972773, 0.047849, 0.226765,
		25.751732, 33.844463, 14.848476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148254, 33.644176, 14.004261>,  <26.432673, 33.810970, 14.689741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148254, 33.644176, 14.004261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882256, 33.837982, 14.231604>,  <25.722656, 33.954266, 14.368009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882256, 33.837982, 14.231604>,  <26.148254, 33.644176, 14.004261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882256, 33.837982, 14.231604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276602, 0.547114, -0.790036,
		-0.693737, -0.682580, -0.229813,
		-0.664997, 0.484511, 0.568356,
		25.682756, 33.983334, 14.402110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.542538, 33.714409, 13.622270>,  <26.148254, 33.644176, 14.004261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.542538, 33.714409, 13.622270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522572, 33.994488, 13.907152>,  <25.510592, 34.162533, 14.078081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522572, 33.994488, 13.907152>,  <25.542538, 33.714409, 13.622270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522572, 33.994488, 13.907152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423264, 0.631063, -0.650083,
		-0.904631, -0.333899, 0.264868,
		-0.049914, 0.700194, 0.712206,
		25.507597, 34.204544, 14.120814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039108, 34.013668, 13.400533>,  <25.542538, 33.714409, 13.622270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039108, 34.013668, 13.400533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185343, 34.292957, 13.646731>,  <25.273085, 34.460529, 13.794451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185343, 34.292957, 13.646731>,  <25.039108, 34.013668, 13.400533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185343, 34.292957, 13.646731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265400, 0.712018, -0.650072,
		-0.892137, 0.074306, 0.445613,
		0.365589, 0.698219, 0.615496,
		25.295019, 34.502422, 13.831380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513317, 34.516502, 13.397239>,  <25.039108, 34.013668, 13.400533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513317, 34.516502, 13.397239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840946, 34.694920, 13.541554>,  <25.037523, 34.801971, 13.628143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.840946, 34.694920, 13.541554>,  <24.513317, 34.516502, 13.397239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840946, 34.694920, 13.541554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235103, 0.834628, -0.498118,
		-0.523307, 0.323172, 0.788486,
		0.819070, 0.446044, 0.360788,
		25.086668, 34.828732, 13.649791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.221622, 35.048782, 13.577803>,  <24.513317, 34.516502, 13.397239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.221622, 35.048782, 13.577803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604710, 35.157959, 13.541414>,  <24.834562, 35.223465, 13.519582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604710, 35.157959, 13.541414>,  <24.221622, 35.048782, 13.577803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604710, 35.157959, 13.541414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271653, 0.753758, -0.598376,
		-0.094753, 0.597789, 0.796034,
		0.957720, 0.272943, -0.090971,
		24.892025, 35.239841, 13.514123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193060, 35.814209, 13.595416>,  <24.221622, 35.048782, 13.577803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193060, 35.814209, 13.595416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527090, 35.698853, 13.408022>,  <24.727509, 35.629639, 13.295586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.527090, 35.698853, 13.408022>,  <24.193060, 35.814209, 13.595416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.527090, 35.698853, 13.408022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104729, 0.752677, -0.650007,
		0.540072, 0.591870, 0.598341,
		0.835077, -0.288387, -0.468486,
		24.777613, 35.612335, 13.267476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603514, 36.441093, 13.539724>,  <24.193060, 35.814209, 13.595416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603514, 36.441093, 13.539724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710131, 36.179626, 13.256409>,  <24.774101, 36.022747, 13.086419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710131, 36.179626, 13.256409>,  <24.603514, 36.441093, 13.539724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710131, 36.179626, 13.256409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016835, 0.731605, -0.681521,
		0.963676, 0.193579, 0.184001,
		0.266544, -0.653668, -0.708289,
		24.790094, 35.983524, 13.043922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114193, 36.931961, 13.800369>,  <24.603514, 36.441093, 13.539724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114193, 36.931961, 13.800369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990263, 37.300438, 13.894531>,  <24.915905, 37.521523, 13.951028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.990263, 37.300438, 13.894531>,  <25.114193, 36.931961, 13.800369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.990263, 37.300438, 13.894531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163819, -0.192164, 0.967593,
		0.936574, 0.338349, -0.091371,
		-0.309826, 0.921191, 0.235404,
		24.897316, 37.576794, 13.965153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593622, 37.180546, 14.260952>,  <25.114193, 36.931961, 13.800369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593622, 37.180546, 14.260952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270535, 37.406895, 14.327138>,  <25.076683, 37.542706, 14.366849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270535, 37.406895, 14.327138>,  <25.593622, 37.180546, 14.260952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270535, 37.406895, 14.327138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209883, 0.013720, 0.977630,
		0.550947, 0.824377, -0.129850,
		-0.807717, 0.565875, 0.165464,
		25.028219, 37.576656, 14.376777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885784, 37.552391, 14.829188>,  <25.593622, 37.180546, 14.260952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885784, 37.552391, 14.829188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487333, 37.587521, 14.830862>,  <25.248262, 37.608597, 14.831866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.487333, 37.587521, 14.830862>,  <25.885784, 37.552391, 14.829188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.487333, 37.587521, 14.830862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003190, -0.011459, 0.999929,
		0.087861, 0.996070, 0.011135,
		-0.996128, 0.087819, 0.004184,
		25.188496, 37.613865, 14.832117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674778, 38.065838, 15.397934>,  <25.885784, 37.552391, 14.829188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674778, 38.065838, 15.397934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368666, 37.818295, 15.327093>,  <25.184999, 37.669769, 15.284588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368666, 37.818295, 15.327093>,  <25.674778, 38.065838, 15.397934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368666, 37.818295, 15.327093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064627, -0.199875, 0.977688,
		-0.640446, 0.759650, 0.112965,
		-0.765279, -0.618856, -0.177103,
		25.139082, 37.632637, 15.273962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267357, 38.158329, 16.042593>,  <25.674778, 38.065838, 15.397934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267357, 38.158329, 16.042593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104069, 37.840553, 15.862718>,  <25.006096, 37.649887, 15.754793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104069, 37.840553, 15.862718>,  <25.267357, 38.158329, 16.042593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104069, 37.840553, 15.862718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203156, -0.401188, 0.893183,
		-0.889990, 0.455974, 0.002379,
		-0.408223, -0.794441, -0.449687,
		24.981602, 37.602222, 15.727812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678104, 38.126289, 16.391842>,  <25.267357, 38.158329, 16.042593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678104, 38.126289, 16.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783293, 37.783955, 16.213680>,  <24.846405, 37.578552, 16.106783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.783293, 37.783955, 16.213680>,  <24.678104, 38.126289, 16.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.783293, 37.783955, 16.213680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156068, -0.493306, 0.855740,
		-0.952097, -0.155521, -0.263294,
		0.262971, -0.855840, -0.445403,
		24.862185, 37.527203, 16.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194241, 37.722076, 16.524282>,  <24.678104, 38.126289, 16.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194241, 37.722076, 16.524282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476480, 37.454193, 16.431662>,  <24.645824, 37.293465, 16.376089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476480, 37.454193, 16.431662>,  <24.194241, 37.722076, 16.524282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476480, 37.454193, 16.431662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243666, -0.536158, 0.808184,
		-0.665398, -0.513834, -0.541499,
		0.705601, -0.669709, -0.231555,
		24.688162, 37.253281, 16.362196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.941305, 37.140903, 16.637325>,  <24.194241, 37.722076, 16.524282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.941305, 37.140903, 16.637325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328789, 37.041962, 16.629108>,  <24.561279, 36.982597, 16.624178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328789, 37.041962, 16.629108>,  <23.941305, 37.140903, 16.637325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328789, 37.041962, 16.629108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139119, -0.609636, 0.780378,
		-0.205554, -0.753100, -0.624970,
		0.968707, -0.247356, -0.020543,
		24.619400, 36.967754, 16.622946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907534, 36.509148, 16.766893>,  <23.941305, 37.140903, 16.637325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907534, 36.509148, 16.766893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289148, 36.597252, 16.848183>,  <24.518118, 36.650116, 16.896955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289148, 36.597252, 16.848183>,  <23.907534, 36.509148, 16.766893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289148, 36.597252, 16.848183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079339, -0.839546, 0.537465,
		0.288997, -0.496637, -0.818433,
		0.954037, 0.220260, 0.203224,
		24.575359, 36.663330, 16.909149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333193, 35.875801, 16.814636>,  <23.907534, 36.509148, 16.766893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333193, 35.875801, 16.814636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565449, 36.136673, 17.009581>,  <24.704803, 36.293198, 17.126547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.565449, 36.136673, 17.009581>,  <24.333193, 35.875801, 16.814636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.565449, 36.136673, 17.009581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192275, -0.691515, 0.696302,
		0.791130, -0.310595, -0.526920,
		0.580641, 0.652179, 0.487359,
		24.739641, 36.332325, 17.155788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885611, 35.503174, 16.949688>,  <24.333193, 35.875801, 16.814636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885611, 35.503174, 16.949688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946638, 35.798859, 17.212074>,  <24.983253, 35.976269, 17.369505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946638, 35.798859, 17.212074>,  <24.885611, 35.503174, 16.949688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946638, 35.798859, 17.212074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260767, -0.670324, 0.694742,
		0.953270, 0.065059, -0.295031,
		0.152567, 0.739211, 0.655965,
		24.992409, 36.020622, 17.408863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.566133, 35.415222, 17.291771>,  <24.885611, 35.503174, 16.949688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.566133, 35.415222, 17.291771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334436, 35.639133, 17.528793>,  <25.195417, 35.773479, 17.671007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.334436, 35.639133, 17.528793>,  <25.566133, 35.415222, 17.291771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334436, 35.639133, 17.528793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295397, -0.533372, 0.792625,
		0.759748, 0.634163, 0.143595,
		-0.579244, 0.559778, 0.592558,
		25.160664, 35.807068, 17.706560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894213, 35.532932, 17.869905>,  <25.566133, 35.415222, 17.291771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894213, 35.532932, 17.869905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517851, 35.582359, 17.996033>,  <25.292034, 35.612015, 18.071709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517851, 35.582359, 17.996033>,  <25.894213, 35.532932, 17.869905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517851, 35.582359, 17.996033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240626, -0.411247, 0.879190,
		0.238314, 0.903109, 0.357211,
		-0.940907, 0.123569, 0.315318,
		25.235579, 35.619431, 18.090628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900785, 35.834862, 18.546242>,  <25.894213, 35.532932, 17.869905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900785, 35.834862, 18.546242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546177, 35.654137, 18.506342>,  <25.333412, 35.545700, 18.482401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.546177, 35.654137, 18.506342>,  <25.900785, 35.834862, 18.546242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546177, 35.654137, 18.506342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105587, -0.407447, 0.907105,
		-0.450483, 0.793633, 0.408915,
		-0.886519, -0.451812, -0.099751,
		25.280222, 35.518593, 18.476418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616276, 35.908394, 19.236961>,  <25.900785, 35.834862, 18.546242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616276, 35.908394, 19.236961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380581, 35.625221, 19.081203>,  <25.239164, 35.455318, 18.987749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.380581, 35.625221, 19.081203>,  <25.616276, 35.908394, 19.236961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380581, 35.625221, 19.081203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032039, -0.461095, 0.886772,
		-0.807326, 0.534994, 0.249012,
		-0.589236, -0.707936, -0.389395,
		25.203810, 35.412842, 18.964386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082285, 35.858669, 19.630781>,  <25.616276, 35.908394, 19.236961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082285, 35.858669, 19.630781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060970, 35.510315, 19.435349>,  <25.048182, 35.301300, 19.318089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060970, 35.510315, 19.435349>,  <25.082285, 35.858669, 19.630781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060970, 35.510315, 19.435349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063064, -0.485363, 0.872035,
		-0.996586, 0.077281, -0.029057,
		-0.053289, -0.870891, -0.488580,
		25.044983, 35.249046, 19.288774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466223, 35.445908, 19.838572>,  <25.082285, 35.858669, 19.630781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466223, 35.445908, 19.838572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715210, 35.165112, 19.700157>,  <24.864603, 34.996635, 19.617109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715210, 35.165112, 19.700157>,  <24.466223, 35.445908, 19.838572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715210, 35.165112, 19.700157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184085, -0.561056, 0.807050,
		-0.760687, -0.438663, -0.478466,
		0.622469, -0.701991, -0.346037,
		24.901951, 34.954514, 19.596346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.073784, 34.813572, 19.921991>,  <24.466223, 35.445908, 19.838572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.073784, 34.813572, 19.921991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458731, 34.706478, 19.903362>,  <24.689699, 34.642220, 19.892185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.458731, 34.706478, 19.903362>,  <24.073784, 34.813572, 19.921991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.458731, 34.706478, 19.903362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147976, -0.660014, 0.736535,
		-0.227937, -0.701925, -0.674794,
		0.962366, -0.267737, -0.046573,
		24.747440, 34.626156, 19.889391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142984, 34.022793, 19.953354>,  <24.073784, 34.813572, 19.921991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142984, 34.022793, 19.953354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482149, 34.185978, 20.088768>,  <24.685648, 34.283890, 20.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.482149, 34.185978, 20.088768>,  <24.142984, 34.022793, 19.953354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.482149, 34.185978, 20.088768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070458, -0.719645, 0.690758,
		0.525432, -0.561850, -0.638941,
		0.847913, 0.407965, 0.338538,
		24.736523, 34.308369, 20.190329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488541, 33.455605, 20.194139>,  <24.142984, 34.022793, 19.953354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488541, 33.455605, 20.194139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751604, 33.715324, 20.346922>,  <24.909443, 33.871159, 20.438591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751604, 33.715324, 20.346922>,  <24.488541, 33.455605, 20.194139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751604, 33.715324, 20.346922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112202, -0.585809, 0.802645,
		0.744912, -0.485011, -0.458116,
		0.657659, 0.649302, 0.381957,
		24.948902, 33.910114, 20.461510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095005, 33.098064, 20.446924>,  <24.488541, 33.455605, 20.194139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.095005, 33.098064, 20.446924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125504, 33.439182, 20.653584>,  <25.143803, 33.643852, 20.777578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125504, 33.439182, 20.653584>,  <25.095005, 33.098064, 20.446924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125504, 33.439182, 20.653584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231503, -0.519135, 0.822742,
		0.969842, 0.056875, -0.237006,
		0.076245, 0.852798, 0.516646,
		25.148376, 33.695023, 20.808577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.629780, 33.039387, 20.803003>,  <25.095005, 33.098064, 20.446924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.629780, 33.039387, 20.803003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466608, 33.317184, 21.040073>,  <25.368704, 33.483864, 21.182316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466608, 33.317184, 21.040073>,  <25.629780, 33.039387, 20.803003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466608, 33.317184, 21.040073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389990, -0.454401, 0.800892,
		0.825530, 0.557847, -0.085482,
		-0.407932, 0.694498, 0.592676,
		25.344229, 33.525536, 21.217876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079920, 33.272781, 21.345942>,  <25.629780, 33.039387, 20.803003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079920, 33.272781, 21.345942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727911, 33.382969, 21.500692>,  <25.516705, 33.449081, 21.593542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727911, 33.382969, 21.500692>,  <26.079920, 33.272781, 21.345942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727911, 33.382969, 21.500692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230264, -0.464968, 0.854859,
		0.415376, 0.841379, 0.345751,
		-0.880024, 0.275474, 0.386875,
		25.463903, 33.465611, 21.616755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273844, 33.400433, 21.985592>,  <26.079920, 33.272781, 21.345942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273844, 33.400433, 21.985592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877377, 33.355179, 22.013258>,  <25.639496, 33.328026, 22.029858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877377, 33.355179, 22.013258>,  <26.273844, 33.400433, 21.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877377, 33.355179, 22.013258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093434, -0.225746, 0.969695,
		-0.094096, 0.967594, 0.234324,
		-0.991169, -0.113138, 0.069164,
		25.580027, 33.321236, 22.034008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047575, 33.755127, 22.620695>,  <26.273844, 33.400433, 21.985592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047575, 33.755127, 22.620695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752712, 33.500286, 22.530628>,  <25.575794, 33.347382, 22.476587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752712, 33.500286, 22.530628>,  <26.047575, 33.755127, 22.620695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752712, 33.500286, 22.530628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013801, -0.347354, 0.937632,
		-0.675580, 0.688075, 0.264847,
		-0.737157, -0.637101, -0.225170,
		25.531565, 33.309155, 22.463078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650135, 33.767124, 23.220116>,  <26.047575, 33.755127, 22.620695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650135, 33.767124, 23.220116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577068, 33.432858, 23.012928>,  <25.533228, 33.232296, 22.888617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.577068, 33.432858, 23.012928>,  <25.650135, 33.767124, 23.220116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.577068, 33.432858, 23.012928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050804, -0.534151, 0.843862,
		-0.981862, 0.127830, 0.140026,
		-0.182666, -0.835669, -0.517968,
		25.522268, 33.182156, 22.857538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.018642, 33.500633, 23.382135>,  <25.650135, 33.767124, 23.220116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.018642, 33.500633, 23.382135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241842, 33.191452, 23.261347>,  <25.375761, 33.005943, 23.188873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241842, 33.191452, 23.261347>,  <25.018642, 33.500633, 23.382135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241842, 33.191452, 23.261347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126007, -0.438588, 0.889810,
		-0.820220, -0.458462, -0.342129,
		0.557998, -0.772950, -0.301969,
		25.409243, 32.959568, 23.170755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765596, 33.072449, 23.811596>,  <25.018642, 33.500633, 23.382135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765596, 33.072449, 23.811596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084242, 32.885185, 23.658632>,  <25.275429, 32.772827, 23.566854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084242, 32.885185, 23.658632>,  <24.765596, 33.072449, 23.811596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084242, 32.885185, 23.658632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162369, -0.443653, 0.881367,
		-0.582276, -0.764199, -0.277406,
		0.796612, -0.468156, -0.382411,
		25.323225, 32.744740, 23.543909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626972, 32.358269, 23.854845>,  <24.765596, 33.072449, 23.811596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626972, 32.358269, 23.854845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024029, 32.405270, 23.843145>,  <25.262262, 32.433472, 23.836126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024029, 32.405270, 23.843145>,  <24.626972, 32.358269, 23.854845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024029, 32.405270, 23.843145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076205, -0.418491, 0.905018,
		0.094105, -0.900587, -0.424366,
		0.992641, 0.117505, -0.029247,
		25.321821, 32.440521, 23.834372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800819, 31.839785, 24.237999>,  <24.626972, 32.358269, 23.854845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800819, 31.839785, 24.237999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128080, 32.069458, 24.250229>,  <25.324438, 32.207264, 24.257566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128080, 32.069458, 24.250229>,  <24.800819, 31.839785, 24.237999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128080, 32.069458, 24.250229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124739, -0.229142, 0.965367,
		0.561305, -0.786006, -0.259097,
		0.818155, 0.574185, 0.030573,
		25.373528, 32.241714, 24.259401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330736, 31.444790, 24.539677>,  <24.800819, 31.839785, 24.237999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330736, 31.444790, 24.539677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460745, 31.818987, 24.595119>,  <25.538750, 32.043507, 24.628386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460745, 31.818987, 24.595119>,  <25.330736, 31.444790, 24.539677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460745, 31.818987, 24.595119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305142, -0.242465, 0.920923,
		0.895125, -0.257026, -0.364265,
		0.325022, 0.935494, 0.138607,
		25.558252, 32.099636, 24.636702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050264, 31.283131, 24.747919>,  <25.330736, 31.444790, 24.539677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050264, 31.283131, 24.747919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959644, 31.649578, 24.880222>,  <25.905272, 31.869446, 24.959604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959644, 31.649578, 24.880222>,  <26.050264, 31.283131, 24.747919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959644, 31.649578, 24.880222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374554, -0.231532, 0.897832,
		0.899102, 0.327291, -0.290682,
		-0.226551, 0.916119, 0.330759,
		25.891680, 31.924414, 24.979450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624067, 31.510124, 25.109766>,  <26.050264, 31.283131, 24.747919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624067, 31.510124, 25.109766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354883, 31.782001, 25.226482>,  <26.193373, 31.945127, 25.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354883, 31.782001, 25.226482>,  <26.624067, 31.510124, 25.109766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354883, 31.782001, 25.226482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472953, 0.092091, 0.876261,
		0.568718, 0.727692, -0.383437,
		-0.672960, 0.679694, 0.291790,
		26.152996, 31.985910, 25.314020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075836, 32.068623, 25.492094>,  <26.624067, 31.510124, 25.109766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075836, 32.068623, 25.492094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692904, 32.104481, 25.601986>,  <26.463144, 32.125996, 25.667921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692904, 32.104481, 25.601986>,  <27.075836, 32.068623, 25.492094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692904, 32.104481, 25.601986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286713, 0.175663, 0.941774,
		0.036168, 0.980360, -0.193871,
		-0.957333, 0.089647, 0.274729,
		26.405703, 32.131374, 25.684404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015158, 32.739784, 25.797451>,  <27.075836, 32.068623, 25.492094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015158, 32.739784, 25.797451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693506, 32.538483, 25.924015>,  <26.500515, 32.417702, 25.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693506, 32.538483, 25.924015>,  <27.015158, 32.739784, 25.797451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693506, 32.538483, 25.924015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244421, 0.205289, 0.947689,
		-0.541881, 0.839401, -0.042074,
		-0.804129, -0.503252, 0.316409,
		26.452267, 32.387508, 26.018938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702703, 33.209873, 26.274937>,  <27.015158, 32.739784, 25.797451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702703, 33.209873, 26.274937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585121, 32.837128, 26.359997>,  <26.514572, 32.613480, 26.411034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585121, 32.837128, 26.359997>,  <26.702703, 33.209873, 26.274937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585121, 32.837128, 26.359997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078894, 0.198065, 0.977009,
		-0.952557, 0.303977, 0.015296,
		-0.293958, -0.931863, 0.212650,
		26.496933, 32.557568, 26.423792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358997, 33.303585, 26.845387>,  <26.702703, 33.209873, 26.274937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358997, 33.303585, 26.845387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452061, 32.914898, 26.829206>,  <26.507898, 32.681686, 26.819498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452061, 32.914898, 26.829206>,  <26.358997, 33.303585, 26.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452061, 32.914898, 26.829206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159625, -0.002873, 0.987173,
		-0.959370, -0.236130, 0.154442,
		0.232658, -0.971717, -0.040449,
		26.521858, 32.623383, 26.817072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899511, 33.028389, 27.318768>,  <26.358997, 33.303585, 26.845387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899511, 33.028389, 27.318768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196095, 32.765015, 27.267071>,  <26.374044, 32.606991, 27.236052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196095, 32.765015, 27.267071>,  <25.899511, 33.028389, 27.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196095, 32.765015, 27.267071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112944, -0.067398, 0.991313,
		-0.661427, -0.749613, 0.024394,
		0.741457, -0.658436, -0.129244,
		26.418531, 32.567486, 27.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902155, 32.550167, 27.849638>,  <25.899511, 33.028389, 27.318768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902155, 32.550167, 27.849638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277031, 32.471542, 27.734373>,  <26.501957, 32.424370, 27.665215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277031, 32.471542, 27.734373>,  <25.902155, 32.550167, 27.849638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277031, 32.471542, 27.734373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272025, -0.105262, 0.956516,
		-0.218346, -0.974825, -0.045181,
		0.937191, -0.196562, -0.288160,
		26.558187, 32.412575, 27.647924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190056, 32.011208, 28.153803>,  <25.902155, 32.550167, 27.849638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190056, 32.011208, 28.153803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528574, 32.206623, 28.068844>,  <26.731686, 32.323872, 28.017868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528574, 32.206623, 28.068844>,  <26.190056, 32.011208, 28.153803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528574, 32.206623, 28.068844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165720, 0.137487, 0.976542,
		0.506280, -0.861642, 0.035394,
		0.846296, 0.488539, -0.212398,
		26.782463, 32.353184, 28.005125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760719, 31.725328, 28.590874>,  <26.190056, 32.011208, 28.153803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760719, 31.725328, 28.590874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801783, 32.107185, 28.479073>,  <26.826420, 32.336300, 28.411991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801783, 32.107185, 28.479073>,  <26.760719, 31.725328, 28.590874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801783, 32.107185, 28.479073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372197, 0.223712, 0.900790,
		0.922459, -0.196503, -0.332349,
		0.102658, 0.954641, -0.279503,
		26.832581, 32.393578, 28.395222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474791, 31.980612, 28.584602>,  <26.760719, 31.725328, 28.590874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474791, 31.980612, 28.584602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235115, 32.296238, 28.638784>,  <27.091309, 32.485615, 28.671293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235115, 32.296238, 28.638784>,  <27.474791, 31.980612, 28.584602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235115, 32.296238, 28.638784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510536, 0.246261, 0.823838,
		0.616704, 0.562790, -0.550403,
		-0.599191, 0.789065, 0.135454,
		27.055357, 32.532959, 28.679420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979351, 32.139370, 28.184715>,  <27.474791, 31.980612, 28.584602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979351, 32.139370, 28.184715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994164, 32.130451, 28.584341>,  <28.003052, 32.125099, 28.824118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994164, 32.130451, 28.584341>,  <27.979351, 32.139370, 28.184715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994164, 32.130451, 28.584341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714755, 0.699290, -0.010889,
		-0.698394, 0.714490, 0.041831,
		0.037032, -0.022294, 0.999065,
		28.005274, 32.123764, 28.884060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332886, 32.731876, 28.309809>,  <27.979351, 32.139370, 28.184715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332886, 32.731876, 28.309809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351679, 32.496380, 28.632591>,  <28.362955, 32.355083, 28.826262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351679, 32.496380, 28.632591>,  <28.332886, 32.731876, 28.309809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351679, 32.496380, 28.632591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862258, 0.431740, 0.264786,
		-0.504285, 0.683364, 0.527930,
		0.046983, -0.588740, 0.806956,
		28.365774, 32.319759, 28.874678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165472, 32.998512, 29.124271>,  <28.332886, 32.731876, 28.309809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165472, 32.998512, 29.124271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433723, 32.707355, 29.067095>,  <28.594675, 32.532661, 29.032789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433723, 32.707355, 29.067095>,  <28.165472, 32.998512, 29.124271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433723, 32.707355, 29.067095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709889, 0.573853, 0.408350,
		-0.215208, -0.375322, 0.901565,
		0.670629, -0.727891, -0.142940,
		28.634912, 32.488987, 29.024214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595083, 33.049877, 29.701956>,  <28.165472, 32.998512, 29.124271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595083, 33.049877, 29.701956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778204, 32.887470, 29.385586>,  <28.888077, 32.790024, 29.195765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.778204, 32.887470, 29.385586>,  <28.595083, 33.049877, 29.701956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778204, 32.887470, 29.385586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840937, 0.486461, 0.237027,
		0.288516, -0.773630, 0.564141,
		0.457804, -0.406021, -0.790925,
		28.915545, 32.765663, 29.148308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254587, 32.713577, 29.897306>,  <28.595083, 33.049877, 29.701956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254587, 32.713577, 29.897306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264805, 32.832081, 29.515400>,  <29.270935, 32.903183, 29.286257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264805, 32.832081, 29.515400>,  <29.254587, 32.713577, 29.897306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264805, 32.832081, 29.515400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708060, 0.668847, 0.226485,
		0.705690, -0.681816, -0.192687,
		0.025543, 0.296262, -0.954765,
		29.272469, 32.920959, 29.228970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968563, 32.789650, 29.799728>,  <29.254587, 32.713577, 29.897306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968563, 32.789650, 29.799728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787788, 33.018646, 29.526085>,  <29.679323, 33.156044, 29.361898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787788, 33.018646, 29.526085>,  <29.968563, 32.789650, 29.799728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787788, 33.018646, 29.526085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793637, 0.608199, -0.015328,
		0.407298, -0.549860, -0.729220,
		-0.451939, 0.572493, -0.684107,
		29.652206, 33.190395, 29.320852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259865, 32.901321, 29.062943>,  <29.968563, 32.789650, 29.799728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259865, 32.901321, 29.062943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054573, 33.216965, 29.197943>,  <29.931398, 33.406349, 29.278942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054573, 33.216965, 29.197943>,  <30.259865, 32.901321, 29.062943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054573, 33.216965, 29.197943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771066, 0.596637, -0.222443,
		-0.376896, 0.146070, -0.914666,
		-0.513231, 0.789105, 0.337500,
		29.900604, 33.453697, 29.299192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289158, 33.322876, 28.577316>,  <30.259865, 32.901321, 29.062943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289158, 33.322876, 28.577316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260458, 33.497055, 28.936256>,  <30.243238, 33.601562, 29.151621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260458, 33.497055, 28.936256>,  <30.289158, 33.322876, 28.577316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260458, 33.497055, 28.936256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911287, 0.394353, -0.118499,
		-0.405473, 0.809242, -0.425111,
		-0.071750, 0.435446, 0.897351,
		30.238934, 33.627689, 29.205462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591749, 34.059151, 28.589169>,  <30.289158, 33.322876, 28.577316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591749, 34.059151, 28.589169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573748, 33.962078, 28.976793>,  <30.562946, 33.903835, 29.209368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573748, 33.962078, 28.976793>,  <30.591749, 34.059151, 28.589169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573748, 33.962078, 28.976793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951141, 0.286200, 0.115843,
		-0.305458, 0.926929, 0.217942,
		-0.045003, -0.242678, 0.969062,
		30.560247, 33.889275, 29.267511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016418, 33.402515, 28.620407>,  <30.591749, 34.059151, 28.589169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016418, 33.402515, 28.620407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938669, 33.349041, 28.231697>,  <30.892019, 33.316956, 27.998470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938669, 33.349041, 28.231697>,  <31.016418, 33.402515, 28.620407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938669, 33.349041, 28.231697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944067, -0.294516, -0.148314,
		-0.266375, -0.946249, 0.183457,
		-0.194373, -0.133689, -0.971775,
		30.880358, 33.308933, 27.940165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596733, 33.197971, 28.285448>,  <31.016418, 33.402515, 28.620407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596733, 33.197971, 28.285448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375839, 33.287403, 27.964188>,  <31.243303, 33.341061, 27.771431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375839, 33.287403, 27.964188>,  <31.596733, 33.197971, 28.285448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375839, 33.287403, 27.964188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749589, -0.288501, -0.595721,
		-0.364901, -0.931009, -0.008272,
		-0.552235, 0.223580, -0.803149,
		31.210169, 33.354477, 27.723244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206226, 33.151714, 27.814840>,  <31.596733, 33.197971, 28.285448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206226, 33.151714, 27.814840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456711, 32.843578, 27.862904>,  <32.607002, 32.658695, 27.891741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456711, 32.843578, 27.862904>,  <32.206226, 33.151714, 27.814840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456711, 32.843578, 27.862904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762475, -0.572917, 0.300662,
		-0.162773, -0.279893, -0.946132,
		0.626208, -0.770342, 0.120156,
		32.644573, 32.612476, 27.898951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959381, 32.656013, 27.435863>,  <32.206226, 33.151714, 27.814840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959381, 32.656013, 27.435863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150669, 32.517342, 27.758633>,  <32.265442, 32.434139, 27.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150669, 32.517342, 27.758633>,  <31.959381, 32.656013, 27.435863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150669, 32.517342, 27.758633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774078, -0.600400, 0.200806,
		0.414860, -0.720649, -0.555478,
		0.478219, -0.346677, 0.806921,
		32.294136, 32.413338, 28.000710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464561, 32.181648, 27.059330>,  <31.959381, 32.656013, 27.435863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464561, 32.181648, 27.059330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357090, 31.808952, 26.961624>,  <32.292606, 31.585335, 26.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357090, 31.808952, 26.961624>,  <32.464561, 32.181648, 27.059330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357090, 31.808952, 26.961624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482650, -0.089230, 0.871256,
		-0.833583, 0.351985, -0.425731,
		-0.268681, -0.931743, -0.244266,
		32.276485, 31.529430, 26.888344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677347, 32.062866, 27.077366>,  <32.464561, 32.181648, 27.059330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677347, 32.062866, 27.077366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867029, 31.711784, 27.104996>,  <31.980839, 31.501137, 27.121574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867029, 31.711784, 27.104996>,  <31.677347, 32.062866, 27.077366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867029, 31.711784, 27.104996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589165, -0.258054, 0.765697,
		-0.654227, -0.403795, -0.639481,
		0.474206, -0.877700, 0.069076,
		32.009293, 31.448475, 27.125719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204243, 31.492096, 27.021807>,  <31.677347, 32.062866, 27.077366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204243, 31.492096, 27.021807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525284, 31.354284, 27.216591>,  <31.717909, 31.271597, 27.333462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525284, 31.354284, 27.216591>,  <31.204243, 31.492096, 27.021807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525284, 31.354284, 27.216591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566789, -0.185963, 0.802601,
		-0.185963, -0.920172, -0.344530,
		-0.802601, 0.344530, -0.486962,
		31.766064, 31.250925, 27.362679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032267, 30.820354, 27.454769>,  <31.204243, 31.492096, 27.021807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032267, 30.820354, 27.454769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343752, 30.986971, 27.642429>,  <31.530643, 31.086941, 27.755026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343752, 30.986971, 27.642429>,  <31.032267, 30.820354, 27.454769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343752, 30.986971, 27.642429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397816, -0.250402, 0.882633,
		0.485130, -0.873951, -0.029283,
		0.778711, 0.416543, 0.469149,
		31.577366, 31.111933, 27.783175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065714, 30.309210, 27.928095>,  <31.032267, 30.820354, 27.454769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065714, 30.309210, 27.928095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451397, 30.407625, 27.967627>,  <31.682808, 30.466675, 27.991344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451397, 30.407625, 27.967627>,  <31.065714, 30.309210, 27.928095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451397, 30.407625, 27.967627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161340, 0.248658, 0.955059,
		0.210401, -0.936823, 0.279453,
		0.964210, 0.246032, 0.098829,
		31.740660, 30.481438, 27.997274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268650, 29.978899, 28.393993>,  <31.065714, 30.309210, 27.928095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268650, 29.978899, 28.393993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496765, 30.307364, 28.402622>,  <31.633635, 30.504442, 28.407799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496765, 30.307364, 28.402622>,  <31.268650, 29.978899, 28.393993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496765, 30.307364, 28.402622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344697, 0.215387, 0.913669,
		0.745625, -0.528489, 0.405885,
		0.570287, 0.821162, 0.021571,
		31.667850, 30.553713, 28.409094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499666, 30.055595, 29.093197>,  <31.268650, 29.978899, 28.393993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499666, 30.055595, 29.093197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592001, 30.416664, 28.947926>,  <31.647402, 30.633305, 28.860762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592001, 30.416664, 28.947926>,  <31.499666, 30.055595, 29.093197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592001, 30.416664, 28.947926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052513, 0.384275, 0.921724,
		0.971574, -0.193697, 0.136107,
		0.230837, 0.902671, -0.363180,
		31.661253, 30.687466, 28.838972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131523, 30.280348, 29.436928>,  <31.499666, 30.055595, 29.093197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131523, 30.280348, 29.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903912, 30.586555, 29.316799>,  <31.767345, 30.770279, 29.244722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903912, 30.586555, 29.316799>,  <32.131523, 30.280348, 29.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903912, 30.586555, 29.316799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058874, 0.326352, 0.943413,
		0.820210, 0.554507, -0.140634,
		-0.569026, 0.765517, -0.300323,
		31.733204, 30.816210, 29.226702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839684, 30.387236, 29.797972>,  <32.131523, 30.280348, 29.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839684, 30.387236, 29.797972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543610, 30.650829, 29.851429>,  <32.365963, 30.808985, 29.883503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543610, 30.650829, 29.851429>,  <32.839684, 30.387236, 29.797972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543610, 30.650829, 29.851429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015711, 0.215654, -0.976344,
		-0.672216, -0.720578, -0.169978,
		-0.740188, 0.658985, 0.133645,
		32.321552, 30.848524, 29.891521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237717, 30.863180, 30.387217>,  <32.839684, 30.387236, 29.797972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237717, 30.863180, 30.387217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194561, 31.198256, 30.173061>,  <33.168667, 31.399302, 30.044569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194561, 31.198256, 30.173061>,  <33.237717, 30.863180, 30.387217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194561, 31.198256, 30.173061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524195, 0.409656, 0.746594,
		0.844737, 0.361194, 0.394916,
		-0.107886, 0.837688, -0.535388,
		33.162197, 31.449562, 30.012445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421474, 31.298517, 30.890940>,  <33.237717, 30.863180, 30.387217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421474, 31.298517, 30.890940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181511, 31.459198, 30.614174>,  <33.037533, 31.555607, 30.448114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181511, 31.459198, 30.614174>,  <33.421474, 31.298517, 30.890940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181511, 31.459198, 30.614174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554769, 0.414288, 0.721524,
		0.576491, 0.816700, -0.025682,
		-0.599908, 0.401704, -0.691913,
		33.001537, 31.579710, 30.406599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113136, 31.123587, 31.091320>,  <33.421474, 31.298517, 30.890940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113136, 31.123587, 31.091320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127098, 31.109133, 31.490814>,  <34.135475, 31.100460, 31.730511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127098, 31.109133, 31.490814>,  <34.113136, 31.123587, 31.091320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127098, 31.109133, 31.490814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650249, -0.759706, -0.004764,
		0.758919, -0.649262, -0.050012,
		0.034901, -0.036135, 0.998737,
		34.137569, 31.098291, 31.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312233, 31.493698, 30.530823>,  <34.113136, 31.123587, 31.091320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312233, 31.493698, 30.530823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222324, 31.106672, 30.484705>,  <34.168377, 30.874456, 30.457035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222324, 31.106672, 30.484705>,  <34.312233, 31.493698, 30.530823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222324, 31.106672, 30.484705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808432, 0.119122, 0.576410,
		-0.543980, 0.222769, -0.808987,
		-0.224774, -0.967566, -0.115294,
		34.154892, 30.816402, 30.450117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619598, 31.924576, 30.558207>,  <34.312233, 31.493698, 30.530823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619598, 31.924576, 30.558207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484978, 32.091465, 30.895884>,  <33.404205, 32.191597, 31.098490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484978, 32.091465, 30.895884>,  <33.619598, 31.924576, 30.558207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484978, 32.091465, 30.895884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317423, -0.793754, 0.518842,
		0.886552, 0.442583, 0.134703,
		-0.336552, 0.417223, 0.844191,
		33.384010, 32.216633, 31.149141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067310, 31.853268, 31.172144>,  <33.619598, 31.924576, 30.558207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067310, 31.853268, 31.172144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700859, 31.900875, 31.325266>,  <33.480988, 31.929440, 31.417139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700859, 31.900875, 31.325266>,  <34.067310, 31.853268, 31.172144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700859, 31.900875, 31.325266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166489, -0.755699, 0.633404,
		0.364672, 0.644014, 0.672504,
		-0.916131, 0.119020, 0.382803,
		33.426022, 31.936581, 31.440107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062374, 32.180004, 31.834082>,  <34.067310, 31.853268, 31.172144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062374, 32.180004, 31.834082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775246, 31.905392, 31.787762>,  <33.602970, 31.740625, 31.759970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775246, 31.905392, 31.787762>,  <34.062374, 32.180004, 31.834082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775246, 31.905392, 31.787762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428692, -0.566888, 0.703463,
		-0.548592, 0.455320, 0.701235,
		-0.717823, -0.686529, -0.115798,
		33.559898, 31.699432, 31.753021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858124, 31.923380, 32.437202>,  <34.062374, 32.180004, 31.834082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858124, 31.923380, 32.437202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766003, 31.630819, 32.180450>,  <33.710728, 31.455284, 32.026398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766003, 31.630819, 32.180450>,  <33.858124, 31.923380, 32.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766003, 31.630819, 32.180450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167042, -0.679537, 0.714371,
		-0.958674, 0.057303, 0.278677,
		-0.230307, -0.731400, -0.641882,
		33.696911, 31.411400, 31.987886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446880, 31.520264, 32.609211>,  <33.858124, 31.923380, 32.437202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446880, 31.520264, 32.609211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831219, 31.464764, 32.513271>,  <35.061821, 31.431463, 32.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831219, 31.464764, 32.513271>,  <34.446880, 31.520264, 32.609211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831219, 31.464764, 32.513271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061297, 0.950591, -0.304334,
		0.270228, 0.277715, 0.921874,
		0.960843, -0.138748, -0.239853,
		35.119473, 31.423140, 32.441315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694263, 32.162067, 32.666920>,  <34.446880, 31.520264, 32.609211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694263, 32.162067, 32.666920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005119, 31.980242, 32.492828>,  <35.191631, 31.871145, 32.388374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005119, 31.980242, 32.492828>,  <34.694263, 32.162067, 32.666920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005119, 31.980242, 32.492828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310190, 0.878410, -0.363564,
		0.547575, 0.147536, 0.823648,
		0.777139, -0.454566, -0.435231,
		35.238262, 31.843872, 32.362259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352962, 32.477970, 32.891853>,  <34.694263, 32.162067, 32.666920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352962, 32.477970, 32.891853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420738, 32.367386, 32.513466>,  <35.461403, 32.301033, 32.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420738, 32.367386, 32.513466>,  <35.352962, 32.477970, 32.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420738, 32.367386, 32.513466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154108, 0.955473, -0.251637,
		0.973417, -0.103145, 0.204500,
		0.169439, -0.276463, -0.945970,
		35.471569, 32.284447, 32.229675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880619, 32.946362, 33.081013>,  <35.352962, 32.477970, 32.891853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880619, 32.946362, 33.081013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101376, 33.279858, 33.074059>,  <36.233829, 33.479954, 33.069885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101376, 33.279858, 33.074059>,  <35.880619, 32.946362, 33.081013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101376, 33.279858, 33.074059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803478, 0.526046, -0.278744,
		-0.223255, 0.167802, 0.960208,
		0.551888, 0.833737, -0.017383,
		36.266941, 33.529980, 33.068844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711121, 33.418259, 33.683617>,  <35.880619, 32.946362, 33.081013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711121, 33.418259, 33.683617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809174, 33.557209, 33.321568>,  <35.868004, 33.640579, 33.104340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809174, 33.557209, 33.321568>,  <35.711121, 33.418259, 33.683617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809174, 33.557209, 33.321568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940200, 0.312930, -0.134535,
		0.236504, 0.883972, 0.403312,
		0.245133, 0.347375, -0.905119,
		35.882713, 33.661423, 33.050034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543079, 32.580208, 33.706238>,  <35.711121, 33.418259, 33.683617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543079, 32.580208, 33.706238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844086, 32.445477, 33.479866>,  <36.024689, 32.364639, 33.344044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844086, 32.445477, 33.479866>,  <35.543079, 32.580208, 33.706238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844086, 32.445477, 33.479866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504146, 0.847525, 0.165942,
		0.423742, -0.410183, 0.807584,
		0.752515, -0.336824, -0.565924,
		36.069839, 32.344429, 33.310089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150246, 32.639015, 34.107964>,  <35.543079, 32.580208, 33.706238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150246, 32.639015, 34.107964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223114, 32.659416, 33.715187>,  <36.266834, 32.671658, 33.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223114, 32.659416, 33.715187>,  <36.150246, 32.639015, 34.107964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223114, 32.659416, 33.715187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552789, 0.820577, 0.145180,
		0.813164, -0.569256, 0.121293,
		0.182175, 0.051006, -0.981943,
		36.277767, 32.674717, 33.420605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820839, 32.544132, 34.080444>,  <36.150246, 32.639015, 34.107964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820839, 32.544132, 34.080444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697559, 32.760662, 33.767525>,  <36.623592, 32.890579, 33.579773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697559, 32.760662, 33.767525>,  <36.820839, 32.544132, 34.080444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697559, 32.760662, 33.767525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668546, 0.708271, 0.226711,
		0.676800, -0.453127, -0.580187,
		-0.308201, 0.541320, -0.782294,
		36.605099, 32.923058, 33.532837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262646, 31.860926, 34.204872>,  <36.820839, 32.544132, 34.080444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262646, 31.860926, 34.204872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395180, 31.878046, 34.581890>,  <37.474701, 31.888319, 34.808102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395180, 31.878046, 34.581890>,  <37.262646, 31.860926, 34.204872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395180, 31.878046, 34.581890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929480, -0.186450, -0.318280,
		0.162114, 0.981532, -0.101560,
		0.331338, 0.042801, 0.942541,
		37.494579, 31.890886, 34.864651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758812, 32.506927, 34.335007>,  <37.262646, 31.860926, 34.204872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758812, 32.506927, 34.335007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865330, 32.192921, 34.558739>,  <37.929241, 32.004517, 34.692978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865330, 32.192921, 34.558739>,  <37.758812, 32.506927, 34.335007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865330, 32.192921, 34.558739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880298, -0.038310, -0.472872,
		0.392638, 0.618294, 0.680843,
		0.266291, -0.785012, 0.559325,
		37.945217, 31.957417, 34.726536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440361, 32.646858, 34.648403>,  <37.758812, 32.506927, 34.335007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440361, 32.646858, 34.648403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416180, 32.248592, 34.620132>,  <38.401672, 32.009632, 34.603168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416180, 32.248592, 34.620132>,  <38.440361, 32.646858, 34.648403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416180, 32.248592, 34.620132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806604, -0.007015, -0.591051,
		0.587993, -0.092738, 0.803532,
		-0.060450, -0.995666, -0.070678,
		38.398045, 31.949892, 34.598930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057159, 32.413094, 34.972374>,  <38.440361, 32.646858, 34.648403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057159, 32.413094, 34.972374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915028, 32.182896, 34.677742>,  <38.829746, 32.044777, 34.500961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915028, 32.182896, 34.677742>,  <39.057159, 32.413094, 34.972374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915028, 32.182896, 34.677742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850719, 0.127413, -0.509944,
		0.387318, -0.807822, 0.444307,
		-0.355334, -0.575491, -0.736579,
		38.808426, 32.010250, 34.456768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454281, 31.780424, 34.913910>,  <39.057159, 32.413094, 34.972374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454281, 31.780424, 34.913910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300083, 31.915159, 34.570297>,  <39.207565, 31.996000, 34.364128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300083, 31.915159, 34.570297>,  <39.454281, 31.780424, 34.913910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300083, 31.915159, 34.570297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907954, -0.027353, -0.418177,
		-0.164354, -0.941166, -0.295287,
		-0.385497, 0.336836, -0.859031,
		39.184433, 32.016209, 34.312588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918907, 31.460983, 34.449318>,  <39.454281, 31.780424, 34.913910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918907, 31.460983, 34.449318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727791, 31.781889, 34.306164>,  <39.613121, 31.974432, 34.220272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727791, 31.781889, 34.306164>,  <39.918907, 31.460983, 34.449318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727791, 31.781889, 34.306164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847528, 0.313800, -0.428049,
		-0.231104, -0.507839, -0.829874,
		-0.477794, 0.802265, -0.357888,
		39.584454, 32.022568, 34.198799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940910, 31.377249, 33.726631>,  <39.918907, 31.460983, 34.449318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940910, 31.377249, 33.726631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912830, 31.750061, 33.868839>,  <39.895981, 31.973747, 33.954163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912830, 31.750061, 33.868839>,  <39.940910, 31.377249, 33.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912830, 31.750061, 33.868839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866312, 0.233656, -0.441485,
		-0.494546, 0.276995, -0.823831,
		-0.070204, 0.932029, 0.355518,
		39.891769, 32.029671, 33.975494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464134, 31.784002, 33.436249>,  <39.940910, 31.377249, 33.726631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464134, 31.784002, 33.436249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387238, 32.046146, 33.728428>,  <40.341099, 32.203434, 33.903736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387238, 32.046146, 33.728428>,  <40.464134, 31.784002, 33.436249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387238, 32.046146, 33.728428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853476, 0.479040, -0.205180,
		-0.484379, 0.583975, -0.651422,
		-0.192238, 0.655358, 0.730445,
		40.329567, 32.242752, 33.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624199, 32.538525, 33.295555>,  <40.464134, 31.784002, 33.436249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624199, 32.538525, 33.295555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651379, 32.549534, 33.694477>,  <40.667686, 32.556137, 33.933830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651379, 32.549534, 33.694477>,  <40.624199, 32.538525, 33.295555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651379, 32.549534, 33.694477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844110, 0.531290, -0.072174,
		-0.531847, 0.846743, 0.012871,
		0.067951, 0.027520, 0.997309,
		40.671764, 32.557789, 33.993671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885761, 33.223068, 33.549454>,  <40.624199, 32.538525, 33.295555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885761, 33.223068, 33.549454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958405, 32.930458, 33.812328>,  <41.001991, 32.754894, 33.970055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958405, 32.930458, 33.812328>,  <40.885761, 33.223068, 33.549454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958405, 32.930458, 33.812328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977727, 0.205822, -0.041085,
		-0.105209, 0.650011, 0.752607,
		0.181609, -0.731521, 0.657187,
		41.012886, 32.711002, 34.009483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244392, 33.600033, 34.068439>,  <40.885761, 33.223068, 33.549454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244392, 33.600033, 34.068439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324570, 33.209515, 34.101124>,  <41.372677, 32.975204, 34.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324570, 33.209515, 34.101124>,  <41.244392, 33.600033, 34.068439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324570, 33.209515, 34.101124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969665, 0.209611, 0.125751,
		-0.139896, 0.054022, 0.988691,
		0.200447, -0.976291, 0.081707,
		41.384705, 32.916626, 34.125637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674900, 33.340847, 34.641884>,  <41.244392, 33.600033, 34.068439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674900, 33.340847, 34.641884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741306, 33.071976, 34.353271>,  <41.781151, 32.910652, 34.180103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741306, 33.071976, 34.353271>,  <41.674900, 33.340847, 34.641884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741306, 33.071976, 34.353271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979979, 0.194011, 0.044739,
		0.109913, -0.714516, 0.690931,
		0.166015, -0.672181, -0.721535,
		41.791111, 32.870323, 34.136810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151478, 32.897411, 34.917149>,  <41.674900, 33.340847, 34.641884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151478, 32.897411, 34.917149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168472, 32.931282, 34.518948>,  <42.178669, 32.951603, 34.280025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168472, 32.931282, 34.518948>,  <42.151478, 32.897411, 34.917149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168472, 32.931282, 34.518948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963938, 0.258530, 0.063130,
		0.262712, -0.962285, -0.070638,
		0.042487, 0.084675, -0.995502,
		42.181217, 32.956684, 34.220299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.773487, 32.489323, 34.723892>,  <42.151478, 32.897411, 34.917149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.773487, 32.489323, 34.723892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707966, 32.788902, 34.467068>,  <42.668652, 32.968651, 34.312973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707966, 32.788902, 34.467068>,  <42.773487, 32.489323, 34.723892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707966, 32.788902, 34.467068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948769, 0.297869, 0.105405,
		0.270193, -0.591898, -0.759376,
		-0.163806, 0.748953, -0.642057,
		42.658825, 33.013588, 34.274452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186298, 32.434227, 34.041985>,  <42.773487, 32.489323, 34.723892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186298, 32.434227, 34.041985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105942, 32.803619, 34.172722>,  <43.057728, 33.025253, 34.251163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105942, 32.803619, 34.172722>,  <43.186298, 32.434227, 34.041985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105942, 32.803619, 34.172722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978779, 0.202986, 0.028081,
		-0.040413, 0.325549, -0.944661,
		-0.200895, 0.923479, 0.326844,
		43.045673, 33.080662, 34.270775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515610, 32.955338, 33.669029>,  <43.186298, 32.434227, 34.041985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515610, 32.955338, 33.669029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446571, 33.113087, 34.030067>,  <43.405148, 33.207737, 34.246689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446571, 33.113087, 34.030067>,  <43.515610, 32.955338, 33.669029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446571, 33.113087, 34.030067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981456, 0.146441, 0.123687,
		-0.083397, 0.907205, -0.412339,
		-0.172593, 0.394377, 0.902595,
		43.394794, 33.231400, 34.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758167, 33.656429, 33.769245>,  <43.515610, 32.955338, 33.669029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758167, 33.656429, 33.769245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771053, 33.486481, 34.131119>,  <43.778786, 33.384514, 34.348244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771053, 33.486481, 34.131119>,  <43.758167, 33.656429, 33.769245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771053, 33.486481, 34.131119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891393, 0.421629, 0.166274,
		-0.452084, 0.801071, 0.392307,
		0.032210, -0.424869, 0.904681,
		43.780716, 33.359020, 34.402523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945354, 34.244644, 34.281017>,  <43.758167, 33.656429, 33.769245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945354, 34.244644, 34.281017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030487, 33.876022, 34.410900>,  <44.081566, 33.654850, 34.488831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.030487, 33.876022, 34.410900>,  <43.945354, 34.244644, 34.281017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.030487, 33.876022, 34.410900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948137, 0.275085, 0.159263,
		-0.236092, 0.273971, 0.932309,
		0.212830, -0.921557, 0.324708,
		44.094337, 33.599556, 34.508312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413044, 34.246189, 34.880276>,  <43.945354, 34.244644, 34.281017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413044, 34.246189, 34.880276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458065, 33.874760, 34.738811>,  <44.485077, 33.651901, 34.653934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458065, 33.874760, 34.738811>,  <44.413044, 34.246189, 34.880276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458065, 33.874760, 34.738811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993189, 0.115925, 0.011701,
		0.030133, -0.352568, 0.935301,
		0.112550, -0.928578, -0.353660,
		44.491829, 33.596188, 34.632713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946835, 33.884201, 35.164799>,  <44.413044, 34.246189, 34.880276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946835, 33.884201, 35.164799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981659, 33.798683, 34.775600>,  <45.002552, 33.747372, 34.542084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.981659, 33.798683, 34.775600>,  <44.946835, 33.884201, 35.164799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.981659, 33.798683, 34.775600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862867, 0.504313, -0.033606,
		0.497877, -0.836637, 0.228379,
		0.087058, -0.213792, -0.972992,
		45.007778, 33.734547, 34.483704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515987, 33.372025, 34.992489>,  <44.946835, 33.884201, 35.164799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515987, 33.372025, 34.992489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454861, 33.664852, 34.726940>,  <45.418186, 33.840549, 34.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454861, 33.664852, 34.726940>,  <45.515987, 33.372025, 34.992489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454861, 33.664852, 34.726940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894030, 0.388675, 0.222806,
		0.421138, -0.559469, -0.713889,
		-0.152818, 0.732070, -0.663868,
		45.409016, 33.884472, 34.527779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961575, 33.382675, 34.451290>,  <45.515987, 33.372025, 34.992489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961575, 33.382675, 34.451290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856216, 33.754040, 34.556110>,  <45.792999, 33.976860, 34.619003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856216, 33.754040, 34.556110>,  <45.961575, 33.382675, 34.451290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856216, 33.754040, 34.556110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964687, 0.253169, 0.072699,
		0.001151, 0.271947, -0.962312,
		-0.263398, 0.928413, 0.262052,
		45.777199, 34.032562, 34.634727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556435, 33.670700, 34.300488>,  <45.961575, 33.382675, 34.451290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556435, 33.670700, 34.300488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380630, 33.967121, 34.503532>,  <46.275146, 34.144974, 34.625359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.380630, 33.967121, 34.503532>,  <46.556435, 33.670700, 34.300488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380630, 33.967121, 34.503532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895294, 0.407120, 0.180838,
		-0.072647, 0.533938, -0.842397,
		-0.439513, 0.741055, 0.507608,
		46.248775, 34.189438, 34.655815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626598, 34.351604, 33.919041>,  <46.556435, 33.670700, 34.300488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626598, 34.351604, 33.919041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629421, 34.353386, 34.319027>,  <46.631115, 34.354454, 34.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.629421, 34.353386, 34.319027>,  <46.626598, 34.351604, 33.919041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.629421, 34.353386, 34.319027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946638, 0.322197, -0.008114,
		-0.322222, 0.946662, -0.001941,
		0.007056, 0.004452, 0.999965,
		46.631538, 34.354721, 34.619015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665684, 35.060677, 34.217140>,  <46.626598, 34.351604, 33.919041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665684, 35.060677, 34.217140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856148, 34.780087, 34.429253>,  <46.970428, 34.611732, 34.556522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856148, 34.780087, 34.429253>,  <46.665684, 35.060677, 34.217140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856148, 34.780087, 34.429253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856304, 0.507059, -0.098154,
		-0.200032, 0.500821, 0.842120,
		0.476162, -0.701477, 0.530283,
		46.998997, 34.569645, 34.588337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064278, 35.367104, 34.740540>,  <46.665684, 35.060677, 34.217140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064278, 35.367104, 34.740540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266376, 35.033054, 34.653542>,  <47.387634, 34.832626, 34.601345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266376, 35.033054, 34.653542>,  <47.064278, 35.367104, 34.740540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266376, 35.033054, 34.653542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862875, 0.485008, 0.142177,
		-0.013250, -0.259502, 0.965652,
		0.505244, -0.835121, -0.217491,
		47.417950, 34.782516, 34.588295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537788, 35.157726, 35.309334>,  <47.064278, 35.367104, 34.740540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537788, 35.157726, 35.309334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664921, 35.056549, 34.943821>,  <47.741199, 34.995842, 34.724514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.664921, 35.056549, 34.943821>,  <47.537788, 35.157726, 35.309334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.664921, 35.056549, 34.943821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757308, 0.647615, 0.084138,
		0.570498, -0.718758, 0.397389,
		0.317830, -0.252946, -0.913785,
		47.760269, 34.980667, 34.669685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.765232, 37.119736, 18.834042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044849, 36.880749, 18.676884>,  <30.212620, 36.737354, 18.582588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.044849, 36.880749, 18.676884>,  <29.765232, 37.119736, 18.834042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044849, 36.880749, 18.676884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072774, -0.487150, 0.870281,
		-0.711367, -0.636957, -0.297058,
		0.699043, -0.597471, -0.392896,
		30.254562, 36.701508, 18.559015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599033, 36.423260, 19.012465>,  <29.765232, 37.119736, 18.834042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599033, 36.423260, 19.012465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990976, 36.387173, 18.941202>,  <30.226143, 36.365520, 18.898445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.990976, 36.387173, 18.941202>,  <29.599033, 36.423260, 19.012465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990976, 36.387173, 18.941202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103186, -0.535074, 0.838480,
		-0.170974, -0.839974, -0.514987,
		0.979858, -0.090219, -0.178157,
		30.284933, 36.360107, 18.887754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714220, 35.770004, 19.180029>,  <29.599033, 36.423260, 19.012465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714220, 35.770004, 19.180029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084986, 35.920059, 19.183956>,  <30.307446, 36.010094, 19.186314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.084986, 35.920059, 19.183956>,  <29.714220, 35.770004, 19.180029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084986, 35.920059, 19.183956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182279, -0.472951, 0.862028,
		0.328025, -0.797238, -0.506766,
		0.926917, 0.375140, 0.009820,
		30.363060, 36.032600, 19.186903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235392, 35.158943, 19.295137>,  <29.714220, 35.770004, 19.180029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235392, 35.158943, 19.295137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405106, 35.499744, 19.417824>,  <30.506933, 35.704224, 19.491436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.405106, 35.499744, 19.417824>,  <30.235392, 35.158943, 19.295137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405106, 35.499744, 19.417824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088599, -0.376149, 0.922313,
		0.901185, -0.364147, -0.235080,
		0.424283, 0.852003, 0.306717,
		30.532391, 35.755344, 19.509838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933218, 35.070709, 19.525581>,  <30.235392, 35.158943, 19.295137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933218, 35.070709, 19.525581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.800554, 35.390121, 19.726521>,  <30.720957, 35.581768, 19.847084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.800554, 35.390121, 19.726521>,  <30.933218, 35.070709, 19.525581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800554, 35.390121, 19.726521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119687, -0.492571, 0.862003,
		0.935776, 0.346016, 0.067792,
		-0.331659, 0.798528, 0.502350,
		30.701057, 35.629681, 19.877226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398132, 35.079128, 20.072977>,  <30.933218, 35.070709, 19.525581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398132, 35.079128, 20.072977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109409, 35.332466, 20.184597>,  <30.936174, 35.484467, 20.251570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109409, 35.332466, 20.184597>,  <31.398132, 35.079128, 20.072977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109409, 35.332466, 20.184597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024445, -0.379616, 0.924821,
		0.691660, 0.674366, 0.258528,
		-0.721809, 0.633342, 0.279050,
		30.892866, 35.522469, 20.268312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699808, 35.312912, 20.663607>,  <31.398132, 35.079128, 20.072977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699808, 35.312912, 20.663607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310368, 35.389816, 20.712824>,  <31.076704, 35.435959, 20.742355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.310368, 35.389816, 20.712824>,  <31.699808, 35.312912, 20.663607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310368, 35.389816, 20.712824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049547, -0.348198, 0.936111,
		0.222818, 0.917494, 0.329480,
		-0.973600, 0.192258, 0.123044,
		31.018288, 35.447495, 20.749737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619707, 35.648273, 21.269224>,  <31.699808, 35.312912, 20.663607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619707, 35.648273, 21.269224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269562, 35.469883, 21.194553>,  <31.059475, 35.362850, 21.149752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269562, 35.469883, 21.194553>,  <31.619707, 35.648273, 21.269224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269562, 35.469883, 21.194553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004124, -0.379213, 0.925300,
		-0.483452, 0.810742, 0.330109,
		-0.875362, -0.445976, -0.186675,
		31.006954, 35.336090, 21.138552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428362, 35.731804, 21.929338>,  <31.619707, 35.648273, 21.269224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428362, 35.731804, 21.929338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.163227, 35.497150, 21.743217>,  <31.004147, 35.356358, 21.631544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.163227, 35.497150, 21.743217>,  <31.428362, 35.731804, 21.929338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163227, 35.497150, 21.743217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238817, -0.423339, 0.873928,
		-0.709658, 0.690394, 0.140506,
		-0.662836, -0.586635, -0.465304,
		30.964376, 35.321159, 21.603626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723486, 35.809242, 22.254946>,  <31.428362, 35.731804, 21.929338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723486, 35.809242, 22.254946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768108, 35.452057, 22.080509>,  <30.794882, 35.237747, 21.975847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.768108, 35.452057, 22.080509>,  <30.723486, 35.809242, 22.254946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768108, 35.452057, 22.080509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088473, -0.446013, 0.890643,
		-0.989812, -0.060773, -0.128758,
		0.111555, -0.892961, -0.436093,
		30.801575, 35.184170, 21.949682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390139, 35.502274, 22.730864>,  <30.723486, 35.809242, 22.254946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390139, 35.502274, 22.730864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.557089, 35.201988, 22.526031>,  <30.657259, 35.021816, 22.403131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.557089, 35.201988, 22.526031>,  <30.390139, 35.502274, 22.730864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557089, 35.201988, 22.526031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005219, -0.565479, 0.824746,
		-0.908720, -0.341554, -0.239934,
		0.417373, -0.750715, -0.512080,
		30.682301, 34.976772, 22.372408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915134, 34.912838, 22.807808>,  <30.390139, 35.502274, 22.730864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915134, 34.912838, 22.807808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284327, 34.789070, 22.716270>,  <30.505842, 34.714809, 22.661348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.284327, 34.789070, 22.716270>,  <29.915134, 34.912838, 22.807808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284327, 34.789070, 22.716270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009671, -0.613090, 0.789954,
		-0.384725, -0.726899, -0.568863,
		0.922981, -0.309416, -0.228841,
		30.561220, 34.696243, 22.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843353, 34.228794, 23.010878>,  <29.915134, 34.912838, 22.807808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843353, 34.228794, 23.010878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234138, 34.313900, 23.004292>,  <30.468611, 34.364964, 23.000340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.234138, 34.313900, 23.004292>,  <29.843353, 34.228794, 23.010878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234138, 34.313900, 23.004292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113579, -0.453090, 0.884200,
		0.180669, -0.865702, -0.466818,
		0.976964, 0.212768, -0.016466,
		30.527227, 34.377731, 22.999352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203789, 33.578510, 23.126074>,  <29.843353, 34.228794, 23.010878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203789, 33.578510, 23.126074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425705, 33.889046, 23.245747>,  <30.558855, 34.075367, 23.317551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.425705, 33.889046, 23.245747>,  <30.203789, 33.578510, 23.126074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425705, 33.889046, 23.245747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084554, -0.410345, 0.908002,
		0.827683, -0.478453, -0.293297,
		0.554789, 0.776337, 0.299181,
		30.592142, 34.121948, 23.335501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603355, 33.223377, 23.743303>,  <30.203789, 33.578510, 23.126074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603355, 33.223377, 23.743303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.707138, 33.608173, 23.777370>,  <30.769407, 33.839050, 23.797812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.707138, 33.608173, 23.777370>,  <30.603355, 33.223377, 23.743303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707138, 33.608173, 23.777370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157640, -0.129190, 0.979009,
		0.952803, -0.240583, -0.185168,
		0.259455, 0.961993, 0.085168,
		30.784975, 33.896770, 23.802921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139128, 33.197380, 24.134314>,  <30.603355, 33.223377, 23.743303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139128, 33.197380, 24.134314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032795, 33.577332, 24.200117>,  <30.968994, 33.805302, 24.239599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032795, 33.577332, 24.200117>,  <31.139128, 33.197380, 24.134314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032795, 33.577332, 24.200117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064836, -0.187881, 0.980050,
		0.961836, 0.249864, 0.111531,
		-0.265834, 0.949878, 0.164511,
		30.953045, 33.862293, 24.249470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571827, 33.491287, 24.601585>,  <31.139128, 33.197380, 24.134314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571827, 33.491287, 24.601585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224234, 33.689121, 24.607910>,  <31.015676, 33.807823, 24.611706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.224234, 33.689121, 24.607910>,  <31.571827, 33.491287, 24.601585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224234, 33.689121, 24.607910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063408, -0.142983, 0.987692,
		0.490761, 0.857286, 0.155611,
		-0.868984, 0.494587, 0.015812,
		30.963539, 33.837498, 24.612654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502558, 33.776508, 25.258062>,  <31.571827, 33.491287, 24.601585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502558, 33.776508, 25.258062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.114128, 33.833401, 25.181343>,  <30.881071, 33.867535, 25.135311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.114128, 33.833401, 25.181343>,  <31.502558, 33.776508, 25.258062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114128, 33.833401, 25.181343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206889, -0.100136, 0.973226,
		0.119214, 0.984756, 0.126665,
		-0.971074, 0.142228, -0.191798,
		30.822805, 33.876068, 25.123804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265625, 34.221859, 25.799829>,  <31.502558, 33.776508, 25.258062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265625, 34.221859, 25.799829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940079, 34.040169, 25.654886>,  <30.744751, 33.931156, 25.567921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.940079, 34.040169, 25.654886>,  <31.265625, 34.221859, 25.799829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940079, 34.040169, 25.654886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389989, -0.035275, 0.920144,
		-0.430733, 0.890189, -0.148433,
		-0.813866, -0.454223, -0.362358,
		30.695919, 33.903900, 25.546179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587891, 34.567612, 25.940784>,  <31.265625, 34.221859, 25.799829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587891, 34.567612, 25.940784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.492609, 34.183376, 25.883476>,  <30.435440, 33.952835, 25.849091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.492609, 34.183376, 25.883476>,  <30.587891, 34.567612, 25.940784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492609, 34.183376, 25.883476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267305, -0.076977, 0.960532,
		-0.933707, 0.267098, -0.238434,
		-0.238202, -0.960590, -0.143270,
		30.421148, 33.895199, 25.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076773, 34.495335, 26.347219>,  <30.587891, 34.567612, 25.940784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076773, 34.495335, 26.347219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.145342, 34.108353, 26.272760>,  <30.186483, 33.876163, 26.228085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.145342, 34.108353, 26.272760>,  <30.076773, 34.495335, 26.347219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145342, 34.108353, 26.272760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178639, -0.216334, 0.959837,
		-0.968867, -0.131285, -0.209909,
		0.171423, -0.967452, -0.186146,
		30.196768, 33.818115, 26.216917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362480, 34.014328, 26.550169>,  <30.076773, 34.495335, 26.347219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362480, 34.014328, 26.550169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692122, 33.787922, 26.541330>,  <29.889906, 33.652081, 26.536028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.692122, 33.787922, 26.541330>,  <29.362480, 34.014328, 26.550169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692122, 33.787922, 26.541330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220416, -0.356366, 0.907976,
		-0.521799, -0.743393, -0.418439,
		0.824101, -0.566012, -0.022096,
		29.939352, 33.618118, 26.534702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385225, 33.181843, 26.653887>,  <29.362480, 34.014328, 26.550169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385225, 33.181843, 26.653887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.092888, 33.428482, 26.770964>,  <28.917484, 33.576466, 26.841209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.092888, 33.428482, 26.770964>,  <29.385225, 33.181843, 26.653887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092888, 33.428482, 26.770964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309889, 0.082316, -0.947203,
		-0.608140, -0.782960, 0.130918,
		-0.730845, 0.616602, 0.292691,
		28.873634, 33.613464, 26.858770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778242, 32.950031, 26.245058>,  <29.385225, 33.181843, 26.653887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778242, 32.950031, 26.245058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.689224, 33.323986, 26.355665>,  <28.635813, 33.548359, 26.422029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.689224, 33.323986, 26.355665>,  <28.778242, 32.950031, 26.245058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689224, 33.323986, 26.355665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540743, 0.117639, -0.832921,
		-0.811215, -0.334889, 0.479353,
		-0.222546, 0.934885, 0.276520,
		28.622461, 33.604450, 26.438622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098959, 33.156319, 25.941233>,  <28.778242, 32.950031, 26.245058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098959, 33.156319, 25.941233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.223101, 33.522545, 26.043549>,  <28.297586, 33.742279, 26.104939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.223101, 33.522545, 26.043549>,  <28.098959, 33.156319, 25.941233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223101, 33.522545, 26.043549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513825, 0.387946, -0.765168,
		-0.799790, 0.106044, 0.590839,
		0.310355, 0.915561, 0.255787,
		28.316208, 33.797215, 26.120285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515356, 33.642250, 25.907146>,  <28.098959, 33.156319, 25.941233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515356, 33.642250, 25.907146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829571, 33.879803, 25.837591>,  <28.018099, 34.022335, 25.795858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829571, 33.879803, 25.837591>,  <27.515356, 33.642250, 25.907146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829571, 33.879803, 25.837591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495284, 0.434929, -0.752018,
		-0.370982, 0.676860, 0.635793,
		0.785535, 0.593883, -0.173887,
		28.065231, 34.057968, 25.785425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236956, 34.310703, 25.658655>,  <27.515356, 33.642250, 25.907146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236956, 34.310703, 25.658655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623325, 34.337730, 25.558718>,  <27.855148, 34.353947, 25.498755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623325, 34.337730, 25.558718>,  <27.236956, 34.310703, 25.658655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623325, 34.337730, 25.558718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254996, 0.413737, -0.873956,
		0.044321, 0.907886, 0.416868,
		0.965926, 0.067565, -0.249845,
		27.913103, 34.357998, 25.483765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378819, 34.936916, 25.519825>,  <27.236956, 34.310703, 25.658655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378819, 34.936916, 25.519825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.674513, 34.754032, 25.322041>,  <27.851929, 34.644302, 25.203369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.674513, 34.754032, 25.322041>,  <27.378819, 34.936916, 25.519825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674513, 34.754032, 25.322041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241318, 0.505628, -0.828315,
		0.628728, 0.731641, 0.263445,
		0.739234, -0.457210, -0.494461,
		27.896282, 34.616871, 25.173702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712156, 35.559551, 25.204578>,  <27.378819, 34.936916, 25.519825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712156, 35.559551, 25.204578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870142, 35.247265, 25.010885>,  <27.964933, 35.059891, 24.894670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870142, 35.247265, 25.010885>,  <27.712156, 35.559551, 25.204578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870142, 35.247265, 25.010885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038948, 0.512382, -0.857874,
		0.917870, 0.357691, 0.171966,
		0.394966, -0.780719, -0.484232,
		27.988632, 35.013050, 24.865616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350382, 35.791149, 24.797014>,  <27.712156, 35.559551, 25.204578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350382, 35.791149, 24.797014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.203789, 35.449570, 24.649250>,  <28.115833, 35.244621, 24.560591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.203789, 35.449570, 24.649250>,  <28.350382, 35.791149, 24.797014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203789, 35.449570, 24.649250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032277, 0.408463, -0.912204,
		0.929865, -0.322383, -0.177257,
		-0.366482, -0.853948, -0.369410,
		28.093843, 35.193386, 24.538427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672411, 35.733086, 24.179102>,  <28.350382, 35.791149, 24.797014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672411, 35.733086, 24.179102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341486, 35.512012, 24.138899>,  <28.142931, 35.379368, 24.114777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.341486, 35.512012, 24.138899>,  <28.672411, 35.733086, 24.179102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341486, 35.512012, 24.138899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146636, 0.385189, -0.911113,
		0.542270, -0.739035, -0.399714,
		-0.827310, -0.552682, -0.100508,
		28.093292, 35.346207, 24.108747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779911, 35.351067, 23.575462>,  <28.672411, 35.733086, 24.179102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779911, 35.351067, 23.575462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.388460, 35.394901, 23.645063>,  <28.153589, 35.421204, 23.686823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.388460, 35.394901, 23.645063>,  <28.779911, 35.351067, 23.575462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388460, 35.394901, 23.645063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111110, 0.430215, -0.895862,
		-0.173032, -0.896050, -0.408845,
		-0.978629, 0.109586, 0.174002,
		28.094872, 35.427776, 23.697264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613338, 34.954548, 23.018744>,  <28.779911, 35.351067, 23.575462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613338, 34.954548, 23.018744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.278439, 35.138874, 23.136497>,  <28.077499, 35.249470, 23.207150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.278439, 35.138874, 23.136497>,  <28.613338, 34.954548, 23.018744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278439, 35.138874, 23.136497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184655, 0.268467, -0.945425,
		-0.514702, -0.845914, -0.139681,
		-0.837248, 0.460820, 0.294383,
		28.027264, 35.277119, 23.224812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098726, 34.797749, 22.558062>,  <28.613338, 34.954548, 23.018744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098726, 34.797749, 22.558062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.934622, 35.130035, 22.708576>,  <27.836159, 35.329407, 22.798885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.934622, 35.130035, 22.708576>,  <28.098726, 34.797749, 22.558062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934622, 35.130035, 22.708576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211273, 0.314806, -0.925344,
		-0.887157, -0.459133, 0.046355,
		-0.410263, 0.830719, 0.376285,
		27.811543, 35.379250, 22.821461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458132, 34.925232, 22.175646>,  <28.098726, 34.797749, 22.558062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458132, 34.925232, 22.175646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.576982, 35.271389, 22.337048>,  <27.648293, 35.479084, 22.433887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.576982, 35.271389, 22.337048>,  <27.458132, 34.925232, 22.175646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576982, 35.271389, 22.337048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065901, 0.440166, -0.895495,
		-0.952562, 0.239483, 0.187814,
		0.297125, 0.865391, 0.403503,
		27.666121, 35.531006, 22.458099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889263, 35.479576, 22.019068>,  <27.458132, 34.925232, 22.175646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889263, 35.479576, 22.019068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.234615, 35.674015, 22.073160>,  <27.441826, 35.790680, 22.105616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.234615, 35.674015, 22.073160>,  <26.889263, 35.479576, 22.019068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234615, 35.674015, 22.073160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119741, 0.457761, -0.880975,
		-0.490143, 0.744422, 0.453427,
		0.863378, 0.486097, 0.135231,
		27.493629, 35.819843, 22.113729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724981, 36.123241, 21.766781>,  <26.889263, 35.479576, 22.019068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724981, 36.123241, 21.766781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.122738, 36.128216, 21.808800>,  <27.361391, 36.131203, 21.834011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.122738, 36.128216, 21.808800>,  <26.724981, 36.123241, 21.766781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122738, 36.128216, 21.808800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092997, 0.370474, -0.924176,
		-0.050415, 0.928759, 0.367239,
		0.994389, 0.012440, 0.105049,
		27.421055, 36.131947, 21.840315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013073, 36.865723, 21.682470>,  <26.724981, 36.123241, 21.766781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013073, 36.865723, 21.682470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.288404, 36.605011, 21.555105>,  <27.453604, 36.448586, 21.478685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.288404, 36.605011, 21.555105>,  <27.013073, 36.865723, 21.682470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288404, 36.605011, 21.555105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091270, 0.513279, -0.853355,
		0.719633, 0.558328, 0.412793,
		0.688330, -0.651778, -0.318414,
		27.494904, 36.409477, 21.459581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430618, 37.237167, 21.206812>,  <27.013073, 36.865723, 21.682470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430618, 37.237167, 21.206812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.568031, 36.869675, 21.128929>,  <27.650478, 36.649178, 21.082199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.568031, 36.869675, 21.128929>,  <27.430618, 37.237167, 21.206812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568031, 36.869675, 21.128929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207021, 0.276308, -0.938507,
		0.916040, 0.282097, 0.285118,
		0.343530, -0.918736, -0.194709,
		27.671091, 36.594055, 21.070517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017241, 37.343437, 20.941002>,  <27.430618, 37.237167, 21.206812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017241, 37.343437, 20.941002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.927555, 36.981850, 20.795361>,  <27.873745, 36.764896, 20.707975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.927555, 36.981850, 20.795361>,  <28.017241, 37.343437, 20.941002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927555, 36.981850, 20.795361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290456, 0.294648, -0.910394,
		0.930249, -0.309877, 0.196499,
		-0.224213, -0.903968, -0.364102,
		27.860291, 36.710659, 20.686131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.591112, 37.124512, 20.471590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.294004, 36.874043, 20.376766>,  <28.115740, 36.723759, 20.319872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.294004, 36.874043, 20.376766>,  <28.591112, 37.124512, 20.471590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294004, 36.874043, 20.376766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108269, 0.237069, -0.965441,
		0.660736, -0.742765, -0.108292,
		-0.742769, -0.626177, -0.237058,
		28.071173, 36.686188, 20.305649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884109, 36.652943, 19.975405>,  <28.591112, 37.124512, 20.471590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884109, 36.652943, 19.975405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489033, 36.701099, 19.935465>,  <28.251987, 36.729996, 19.911501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.489033, 36.701099, 19.935465>,  <28.884109, 36.652943, 19.975405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489033, 36.701099, 19.935465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134181, 0.324131, -0.936448,
		-0.080381, -0.938320, -0.336296,
		-0.987691, 0.120397, -0.099850,
		28.192726, 36.737217, 19.905510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771309, 36.520760, 19.249521>,  <28.884109, 36.652943, 19.975405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771309, 36.520760, 19.249521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402927, 36.623714, 19.366547>,  <28.181898, 36.685486, 19.436762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.402927, 36.623714, 19.366547>,  <28.771309, 36.520760, 19.249521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402927, 36.623714, 19.366547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203194, 0.323438, -0.924175,
		-0.332496, -0.910571, -0.245573,
		-0.920955, 0.257386, 0.292565,
		28.126640, 36.700932, 19.454315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394361, 36.291080, 18.688938>,  <28.771309, 36.520760, 19.249521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394361, 36.291080, 18.688938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217978, 36.590359, 18.887234>,  <28.112148, 36.769924, 19.006210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.217978, 36.590359, 18.887234>,  <28.394361, 36.291080, 18.688938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217978, 36.590359, 18.887234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214780, 0.448324, -0.867684,
		-0.871450, -0.489088, -0.036995,
		-0.440959, 0.748197, 0.495738,
		28.085690, 36.814819, 19.035955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818930, 36.494301, 18.270700>,  <28.394361, 36.291080, 18.688938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818930, 36.494301, 18.270700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.880993, 36.814198, 18.502682>,  <27.918230, 37.006134, 18.641870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.880993, 36.814198, 18.502682>,  <27.818930, 36.494301, 18.270700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880993, 36.814198, 18.502682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001232, 0.586905, -0.809655,
		-0.987889, 0.126340, 0.090078,
		0.155159, 0.799738, 0.579953,
		27.927540, 37.054119, 18.676668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339127, 36.974930, 18.043074>,  <27.818930, 36.494301, 18.270700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339127, 36.974930, 18.043074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631073, 37.173889, 18.230642>,  <27.806240, 37.293266, 18.343184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631073, 37.173889, 18.230642>,  <27.339127, 36.974930, 18.043074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631073, 37.173889, 18.230642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018936, 0.700418, -0.713481,
		-0.683328, 0.511866, 0.520630,
		0.729866, 0.497401, 0.468922,
		27.850033, 37.323109, 18.371319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175049, 37.671448, 18.111465>,  <27.339127, 36.974930, 18.043074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175049, 37.671448, 18.111465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574203, 37.672092, 18.137463>,  <27.813696, 37.672478, 18.153061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.574203, 37.672092, 18.137463>,  <27.175049, 37.671448, 18.111465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574203, 37.672092, 18.137463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044974, 0.704791, -0.707988,
		-0.046945, 0.709413, 0.703228,
		0.997885, 0.001610, 0.064991,
		27.873569, 37.672577, 18.156960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430077, 38.398857, 18.111870>,  <27.175049, 37.671448, 18.111465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430077, 38.398857, 18.111870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724504, 38.158676, 17.986870>,  <27.901161, 38.014568, 17.911871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724504, 38.158676, 17.986870>,  <27.430077, 38.398857, 18.111870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724504, 38.158676, 17.986870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225955, 0.653134, -0.722745,
		0.638077, 0.461381, 0.616429,
		0.736072, -0.600452, -0.312499,
		27.945326, 37.978542, 17.893120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919073, 38.909000, 18.013386>,  <27.430077, 38.398857, 18.111870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919073, 38.909000, 18.013386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.006079, 38.566814, 17.825399>,  <28.058281, 38.361504, 17.712608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.006079, 38.566814, 17.825399>,  <27.919073, 38.909000, 18.013386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006079, 38.566814, 17.825399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113929, 0.500454, -0.858234,
		0.969386, 0.133134, 0.206317,
		0.217512, -0.855466, -0.469965,
		28.071333, 38.310173, 17.684410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452343, 39.137280, 17.610765>,  <27.919073, 38.909000, 18.013386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452343, 39.137280, 17.610765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337933, 38.798443, 17.431604>,  <28.269287, 38.595139, 17.324108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337933, 38.798443, 17.431604>,  <28.452343, 39.137280, 17.610765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337933, 38.798443, 17.431604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093304, 0.489832, -0.866810,
		0.953668, -0.206139, -0.219142,
		-0.286026, -0.847096, -0.447904,
		28.252125, 38.544315, 17.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713541, 39.169010, 16.897131>,  <28.452343, 39.137280, 17.610765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713541, 39.169010, 16.897131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421307, 38.897663, 16.865978>,  <28.245966, 38.734856, 16.847286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421307, 38.897663, 16.865978>,  <28.713541, 39.169010, 16.897131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421307, 38.897663, 16.865978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184693, 0.306128, -0.933903,
		0.657369, -0.667911, -0.348942,
		-0.730584, -0.678366, -0.077880,
		28.202131, 38.694153, 16.842615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829882, 38.851250, 16.248739>,  <28.713541, 39.169010, 16.897131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829882, 38.851250, 16.248739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449144, 38.760971, 16.331738>,  <28.220701, 38.706802, 16.381536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.449144, 38.760971, 16.331738>,  <28.829882, 38.851250, 16.248739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449144, 38.760971, 16.331738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291358, 0.455278, -0.841328,
		0.095416, -0.861268, -0.499112,
		-0.951844, -0.225696, 0.207496,
		28.163591, 38.693260, 16.393986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623981, 38.596035, 15.601050>,  <28.829882, 38.851250, 16.248739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623981, 38.596035, 15.601050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291986, 38.683487, 15.806311>,  <28.092791, 38.735958, 15.929467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.291986, 38.683487, 15.806311>,  <28.623981, 38.596035, 15.601050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291986, 38.683487, 15.806311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409290, 0.386313, -0.826586,
		-0.378952, -0.896083, -0.231152,
		-0.829987, 0.218628, 0.513151,
		28.042990, 38.749077, 15.960256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027372, 38.279213, 15.203398>,  <28.623981, 38.596035, 15.601050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027372, 38.279213, 15.203398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861012, 38.553352, 15.442505>,  <27.761194, 38.717834, 15.585969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.861012, 38.553352, 15.442505>,  <28.027372, 38.279213, 15.203398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861012, 38.553352, 15.442505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532804, 0.349054, -0.770896,
		-0.736984, -0.639111, 0.219982,
		-0.415903, 0.685345, 0.597768,
		27.736240, 38.758957, 15.621836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339602, 38.263802, 15.131214>,  <28.027372, 38.279213, 15.203398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339602, 38.263802, 15.131214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.360935, 38.637997, 15.270934>,  <27.373735, 38.862514, 15.354766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.360935, 38.637997, 15.270934>,  <27.339602, 38.263802, 15.131214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360935, 38.637997, 15.270934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490069, 0.329297, -0.807091,
		-0.870050, -0.128134, 0.476019,
		0.053336, 0.935492, 0.349300,
		27.376936, 38.918644, 15.375724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645262, 38.495251, 15.229483>,  <27.339602, 38.263802, 15.131214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645262, 38.495251, 15.229483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.858166, 38.833344, 15.210405>,  <26.985909, 39.036201, 15.198958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.858166, 38.833344, 15.210405>,  <26.645262, 38.495251, 15.229483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858166, 38.833344, 15.210405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668538, 0.385091, -0.636209,
		-0.519381, 0.370514, 0.770041,
		0.532260, 0.845237, -0.047694,
		27.017843, 39.086914, 15.196097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199110, 38.980961, 15.153177>,  <26.645262, 38.495251, 15.229483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199110, 38.980961, 15.153177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.533916, 39.166580, 15.037205>,  <26.734800, 39.277954, 14.967621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.533916, 39.166580, 15.037205>,  <26.199110, 38.980961, 15.153177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.533916, 39.166580, 15.037205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507141, 0.458960, -0.729495,
		-0.205456, 0.757636, 0.619497,
		0.837016, 0.464051, -0.289932,
		26.785021, 39.305794, 14.950225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035168, 39.686790, 14.958269>,  <26.199110, 38.980961, 15.153177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035168, 39.686790, 14.958269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.377003, 39.618984, 14.761925>,  <26.582104, 39.578300, 14.644118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.377003, 39.618984, 14.761925>,  <26.035168, 39.686790, 14.958269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377003, 39.618984, 14.761925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417151, 0.338887, -0.843292,
		0.309295, 0.925430, 0.218896,
		0.854589, -0.169513, -0.490860,
		26.633379, 39.568130, 14.614667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176878, 40.246044, 14.498698>,  <26.035168, 39.686790, 14.958269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176878, 40.246044, 14.498698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.384459, 39.946342, 14.334110>,  <26.509007, 39.766521, 14.235357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.384459, 39.946342, 14.334110>,  <26.176878, 40.246044, 14.498698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384459, 39.946342, 14.334110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313487, 0.281005, -0.907062,
		0.795245, 0.599713, -0.089053,
		0.518953, -0.749253, -0.411470,
		26.540144, 39.721565, 14.210670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563326, 40.510975, 13.891115>,  <26.176878, 40.246044, 14.498698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563326, 40.510975, 13.891115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584314, 40.121529, 13.802279>,  <26.596909, 39.887863, 13.748976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584314, 40.121529, 13.802279>,  <26.563326, 40.510975, 13.891115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584314, 40.121529, 13.802279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082224, 0.217432, -0.972606,
		0.995231, 0.069296, -0.068645,
		0.052472, -0.973613, -0.222093,
		26.600056, 39.829445, 13.735651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955599, 40.496342, 13.211436>,  <26.563326, 40.510975, 13.891115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955599, 40.496342, 13.211436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.781912, 40.140076, 13.265347>,  <26.677700, 39.926315, 13.297694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.781912, 40.140076, 13.265347>,  <26.955599, 40.496342, 13.211436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781912, 40.140076, 13.265347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030890, -0.134809, -0.990390,
		0.900277, -0.434210, 0.031023,
		-0.434219, -0.890667, 0.134778,
		26.651646, 39.872875, 13.305780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294502, 40.033798, 12.808285>,  <26.955599, 40.496342, 13.211436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294502, 40.033798, 12.808285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.940674, 39.859344, 12.874402>,  <26.728376, 39.754673, 12.914073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.940674, 39.859344, 12.874402>,  <27.294502, 40.033798, 12.808285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940674, 39.859344, 12.874402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146116, -0.077426, -0.986233,
		0.442930, -0.896543, 0.004762,
		-0.884569, -0.436136, 0.165294,
		26.675303, 39.728504, 12.923990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296272, 39.253284, 12.740970>,  <27.294502, 40.033798, 12.808285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296272, 39.253284, 12.740970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.985428, 39.476849, 12.625236>,  <26.798922, 39.610989, 12.555795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.985428, 39.476849, 12.625236>,  <27.296272, 39.253284, 12.740970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985428, 39.476849, 12.625236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190762, -0.228923, -0.954570,
		-0.599757, -0.797001, 0.071279,
		-0.777111, 0.558913, -0.289336,
		26.752295, 39.644524, 12.538435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660089, 39.611378, 12.070873>,  <27.296272, 39.253284, 12.740970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660089, 39.611378, 12.070873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.764603, 39.443180, 11.723330>,  <27.827311, 39.342262, 11.514803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.764603, 39.443180, 11.723330>,  <27.660089, 39.611378, 12.070873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764603, 39.443180, 11.723330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255746, -0.837803, 0.482369,
		-0.930765, -0.348243, -0.111367,
		0.261285, -0.420491, -0.868860,
		27.842989, 39.317032, 11.462671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344490, 38.969856, 12.000326>,  <27.660089, 39.611378, 12.070873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344490, 38.969856, 12.000326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.679699, 38.981537, 11.782383>,  <27.880823, 38.988544, 11.651617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.679699, 38.981537, 11.782383>,  <27.344490, 38.969856, 12.000326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679699, 38.981537, 11.782383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455196, -0.588022, 0.668600,
		-0.300863, -0.808317, -0.506068,
		0.838020, 0.029203, -0.544857,
		27.931105, 38.990299, 11.618926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523825, 38.311317, 11.950724>,  <27.344490, 38.969856, 12.000326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523825, 38.311317, 11.950724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.853569, 38.501720, 11.828188>,  <28.051416, 38.615963, 11.754666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.853569, 38.501720, 11.828188>,  <27.523825, 38.311317, 11.950724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853569, 38.501720, 11.828188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537648, -0.489115, 0.686805,
		0.177088, -0.730879, -0.659133,
		0.824363, 0.476007, -0.306339,
		28.100878, 38.644524, 11.736286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115763, 37.820385, 11.782831>,  <27.523825, 38.311317, 11.950724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115763, 37.820385, 11.782831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324537, 38.156860, 11.839375>,  <28.449802, 38.358746, 11.873301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.324537, 38.156860, 11.839375>,  <28.115763, 37.820385, 11.782831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324537, 38.156860, 11.839375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539090, -0.453733, 0.709584,
		0.661034, -0.294152, -0.690296,
		0.521936, 0.841190, 0.141359,
		28.481117, 38.409218, 11.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705044, 37.587334, 11.808541>,  <28.115763, 37.820385, 11.782831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705044, 37.587334, 11.808541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734245, 37.942032, 11.991122>,  <28.751766, 38.154850, 12.100671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734245, 37.942032, 11.991122>,  <28.705044, 37.587334, 11.808541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734245, 37.942032, 11.991122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503094, -0.427920, 0.750853,
		0.861142, 0.174822, -0.477359,
		0.073006, 0.886748, 0.456452,
		28.756147, 38.208057, 12.128057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309088, 37.524509, 12.060531>,  <28.705044, 37.587334, 11.808541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309088, 37.524509, 12.060531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.173855, 37.831360, 12.278604>,  <29.092714, 38.015469, 12.409448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.173855, 37.831360, 12.278604>,  <29.309088, 37.524509, 12.060531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173855, 37.831360, 12.278604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626450, -0.248872, 0.738663,
		0.702326, 0.591259, -0.396424,
		-0.338082, 0.767122, 0.545183,
		29.072430, 38.061497, 12.442159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950977, 37.793941, 12.376529>,  <29.309088, 37.524509, 12.060531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950977, 37.793941, 12.376529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621380, 37.919453, 12.565241>,  <29.423622, 37.994759, 12.678469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.621380, 37.919453, 12.565241>,  <29.950977, 37.793941, 12.376529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621380, 37.919453, 12.565241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454852, -0.130170, 0.881002,
		0.337851, 0.940531, -0.035464,
		-0.823994, 0.313779, 0.471781,
		29.374182, 38.013588, 12.706775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124462, 38.136330, 13.063492>,  <29.950977, 37.793941, 12.376529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124462, 38.136330, 13.063492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742647, 38.043602, 13.138451>,  <29.513557, 37.987965, 13.183426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.742647, 38.043602, 13.138451>,  <30.124462, 38.136330, 13.063492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742647, 38.043602, 13.138451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235062, -0.198768, 0.951439,
		-0.183314, 0.952235, 0.244224,
		-0.954537, -0.231820, 0.187398,
		29.456285, 37.974056, 13.194670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037674, 38.409687, 13.682997>,  <30.124462, 38.136330, 13.063492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037674, 38.409687, 13.682997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730791, 38.154240, 13.659139>,  <29.546661, 38.000969, 13.644824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.730791, 38.154240, 13.659139>,  <30.037674, 38.409687, 13.682997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730791, 38.154240, 13.659139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129451, -0.245250, 0.960778,
		-0.628203, 0.729393, 0.270827,
		-0.767205, -0.638622, -0.059646,
		29.500629, 37.962654, 13.641245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716314, 38.484673, 14.381569>,  <30.037674, 38.409687, 13.682997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716314, 38.484673, 14.381569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590431, 38.137848, 14.227081>,  <29.514902, 37.929752, 14.134389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590431, 38.137848, 14.227081>,  <29.716314, 38.484673, 14.381569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590431, 38.137848, 14.227081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061994, -0.387249, 0.919888,
		-0.947162, 0.313438, 0.068118,
		-0.314706, -0.867061, -0.386219,
		29.496019, 37.877731, 14.111216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000050, 38.331425, 14.605828>,  <29.716314, 38.484673, 14.381569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000050, 38.331425, 14.605828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205532, 37.998108, 14.524117>,  <29.328821, 37.798119, 14.475089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.205532, 37.998108, 14.524117>,  <29.000050, 38.331425, 14.605828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205532, 37.998108, 14.524117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005463, -0.241270, 0.970443,
		-0.857948, -0.497408, -0.128494,
		0.513708, -0.833291, -0.204280,
		29.359644, 37.748119, 14.462832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704622, 37.875443, 15.062431>,  <29.000050, 38.331425, 14.605828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704622, 37.875443, 15.062431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038876, 37.691921, 14.941619>,  <29.239428, 37.581810, 14.869131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.038876, 37.691921, 14.941619>,  <28.704622, 37.875443, 15.062431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038876, 37.691921, 14.941619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115626, -0.390613, 0.913264,
		-0.536983, -0.798075, -0.273360,
		0.835632, -0.458800, -0.302031,
		29.289566, 37.554283, 14.851009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701323, 37.161495, 15.358438>,  <28.704622, 37.875443, 15.062431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701323, 37.161495, 15.358438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088570, 37.193909, 15.263626>,  <29.320917, 37.213356, 15.206738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088570, 37.193909, 15.263626>,  <28.701323, 37.161495, 15.358438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088570, 37.193909, 15.263626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248326, -0.434855, 0.865584,
		-0.032931, -0.896847, -0.441113,
		0.968117, 0.081035, -0.237031,
		29.379005, 37.218220, 15.192517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034658, 36.467812, 15.508514>,  <28.701323, 37.161495, 15.358438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034658, 36.467812, 15.508514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357801, 36.701138, 15.474800>,  <29.551687, 36.841133, 15.454572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.357801, 36.701138, 15.474800>,  <29.034658, 36.467812, 15.508514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357801, 36.701138, 15.474800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385833, -0.415322, 0.823797,
		0.445529, -0.698033, -0.560585,
		0.807860, 0.583317, -0.084286,
		29.600159, 36.876133, 15.449514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635794, 36.122135, 15.635527>,  <29.034658, 36.467812, 15.508514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635794, 36.122135, 15.635527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718615, 36.501949, 15.729776>,  <29.768307, 36.729836, 15.786326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718615, 36.501949, 15.729776>,  <29.635794, 36.122135, 15.635527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718615, 36.501949, 15.729776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351619, -0.296977, 0.887789,
		0.912959, -0.100969, -0.395363,
		0.207053, 0.949531, 0.235625,
		29.780731, 36.786808, 15.800464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196712, 36.014900, 16.040085>,  <29.635794, 36.122135, 15.635527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196712, 36.014900, 16.040085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093607, 36.394299, 16.113737>,  <30.031744, 36.621937, 16.157928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093607, 36.394299, 16.113737>,  <30.196712, 36.014900, 16.040085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093607, 36.394299, 16.113737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246000, -0.119867, 0.961829,
		0.934367, 0.293222, -0.202434,
		-0.257764, 0.948500, 0.184133,
		30.016277, 36.678848, 16.168978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771868, 36.167610, 16.421549>,  <30.196712, 36.014900, 16.040085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771868, 36.167610, 16.421549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495718, 36.445423, 16.502544>,  <30.330029, 36.612110, 16.551142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495718, 36.445423, 16.502544>,  <30.771868, 36.167610, 16.421549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495718, 36.445423, 16.502544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306305, 0.027052, 0.951549,
		0.655408, 0.718949, -0.231416,
		-0.690375, 0.694537, 0.202488,
		30.288605, 36.653786, 16.563292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063581, 36.673023, 16.880989>,  <30.771868, 36.167610, 16.421549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063581, 36.673023, 16.880989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.667221, 36.672462, 16.934826>,  <30.429405, 36.672127, 16.967129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.667221, 36.672462, 16.934826>,  <31.063581, 36.673023, 16.880989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667221, 36.672462, 16.934826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134308, 0.055494, 0.989384,
		-0.008855, 0.998458, -0.054801,
		-0.990900, -0.001401, 0.134593,
		30.369951, 36.672043, 16.975204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026937, 37.255562, 17.395391>,  <31.063581, 36.673023, 16.880989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026937, 37.255562, 17.395391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672083, 37.071434, 17.408632>,  <30.459171, 36.960957, 17.416576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.672083, 37.071434, 17.408632>,  <31.026937, 37.255562, 17.395391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672083, 37.071434, 17.408632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207101, -0.332971, 0.919913,
		-0.412432, 0.822943, 0.390723,
		-0.887136, -0.460320, 0.033104,
		30.405943, 36.933338, 17.418564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673096, 37.601978, 17.906240>,  <31.026937, 37.255562, 17.395391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673096, 37.601978, 17.906240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520756, 37.235016, 17.860079>,  <30.429352, 37.014839, 17.832382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.520756, 37.235016, 17.860079>,  <30.673096, 37.601978, 17.906240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520756, 37.235016, 17.860079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239309, -0.218356, 0.946072,
		-0.893132, 0.332695, 0.302705,
		-0.380851, -0.917407, -0.115404,
		30.406500, 36.959793, 17.825459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181437, 37.525784, 18.400780>,  <30.673096, 37.601978, 17.906240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181437, 37.525784, 18.400780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296093, 37.156158, 18.299637>,  <30.364887, 36.934383, 18.238951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296093, 37.156158, 18.299637>,  <30.181437, 37.525784, 18.400780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296093, 37.156158, 18.299637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125805, -0.225341, 0.966124,
		-0.949742, -0.308741, 0.051660,
		0.286640, -0.924068, -0.252857,
		30.382086, 36.878937, 18.223780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.436369, 36.510410, 23.346558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.532928, 36.159260, 23.181120>,  <27.590864, 35.948570, 23.081858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.532928, 36.159260, 23.181120>,  <27.436369, 36.510410, 23.346558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532928, 36.159260, 23.181120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001125, -0.426451, 0.904510,
		-0.970426, -0.217881, -0.103932,
		0.241398, -0.877877, -0.413594,
		27.605349, 35.895897, 23.057041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943550, 35.988659, 23.638910>,  <27.436369, 36.510410, 23.346558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943550, 35.988659, 23.638910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.275749, 35.800591, 23.519432>,  <27.475069, 35.687752, 23.447746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.275749, 35.800591, 23.519432>,  <26.943550, 35.988659, 23.638910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275749, 35.800591, 23.519432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012744, -0.520053, 0.854039,
		-0.556885, -0.713079, -0.425908,
		0.830492, -0.470173, -0.298697,
		27.524899, 35.659542, 23.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775400, 35.367058, 23.805166>,  <26.943550, 35.988659, 23.638910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775400, 35.367058, 23.805166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.172937, 35.375198, 23.761608>,  <27.411461, 35.380081, 23.735474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.172937, 35.375198, 23.761608>,  <26.775400, 35.367058, 23.805166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172937, 35.375198, 23.761608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099541, -0.595454, 0.797199,
		-0.048621, -0.803132, -0.593815,
		0.993845, 0.020348, -0.108896,
		27.471090, 35.381302, 23.728939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959488, 34.764969, 24.034782>,  <26.775400, 35.367058, 23.805166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959488, 34.764969, 24.034782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319103, 34.937939, 24.062321>,  <27.534872, 35.041721, 24.078844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.319103, 34.937939, 24.062321>,  <26.959488, 34.764969, 24.034782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319103, 34.937939, 24.062321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185311, -0.518210, 0.834936,
		0.396720, -0.737883, -0.546024,
		0.899040, 0.432421, 0.068847,
		27.588816, 35.067665, 24.082975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539850, 34.159634, 24.038877>,  <26.959488, 34.764969, 24.034782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539850, 34.159634, 24.038877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.737099, 34.478310, 24.178656>,  <27.855448, 34.669518, 24.262524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.737099, 34.478310, 24.178656>,  <27.539850, 34.159634, 24.038877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737099, 34.478310, 24.178656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250186, -0.514582, 0.820130,
		0.833210, -0.316996, -0.453072,
		0.493121, 0.796693, 0.349447,
		27.885035, 34.717316, 24.283489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242826, 33.925388, 24.220253>,  <27.539850, 34.159634, 24.038877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242826, 33.925388, 24.220253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.165165, 34.270473, 24.407028>,  <28.118568, 34.477524, 24.519094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.165165, 34.270473, 24.407028>,  <28.242826, 33.925388, 24.220253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165165, 34.270473, 24.407028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350709, -0.383494, 0.854363,
		0.916137, 0.329637, -0.228104,
		-0.194153, 0.862712, 0.466940,
		28.106918, 34.529285, 24.547110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925905, 34.194229, 24.565378>,  <28.242826, 33.925388, 24.220253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925905, 34.194229, 24.565378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.601320, 34.316818, 24.764416>,  <28.406569, 34.390373, 24.883839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.601320, 34.316818, 24.764416>,  <28.925905, 34.194229, 24.565378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601320, 34.316818, 24.764416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433592, -0.255140, 0.864235,
		0.391824, 0.917047, 0.074151,
		-0.811463, 0.306476, 0.497595,
		28.357882, 34.408760, 24.913694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147646, 34.638832, 25.116026>,  <28.925905, 34.194229, 24.565378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147646, 34.638832, 25.116026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.781670, 34.524689, 25.230185>,  <28.562084, 34.456203, 25.298679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.781670, 34.524689, 25.230185>,  <29.147646, 34.638832, 25.116026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781670, 34.524689, 25.230185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332004, -0.130111, 0.934261,
		-0.229465, 0.949548, 0.213784,
		-0.914942, -0.285357, 0.285398,
		28.507187, 34.439083, 25.315804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068340, 34.851391, 25.772528>,  <29.147646, 34.638832, 25.116026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068340, 34.851391, 25.772528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.751535, 34.607323, 25.780619>,  <28.561453, 34.460880, 25.785473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.751535, 34.607323, 25.780619>,  <29.068340, 34.851391, 25.772528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751535, 34.607323, 25.780619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067429, -0.054498, 0.996234,
		-0.606773, 0.790392, 0.084307,
		-0.792010, -0.610173, 0.020228,
		28.513933, 34.424271, 25.786688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509598, 35.050224, 26.225519>,  <29.068340, 34.851391, 25.772528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509598, 35.050224, 26.225519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.489859, 34.650761, 26.219360>,  <28.478014, 34.411083, 26.215666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.489859, 34.650761, 26.219360>,  <28.509598, 35.050224, 26.225519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489859, 34.650761, 26.219360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207580, -0.025332, 0.977890,
		-0.976972, 0.045063, 0.208553,
		-0.049350, -0.998663, -0.015395,
		28.475054, 34.351162, 26.214743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323984, 34.840504, 26.885185>,  <28.509598, 35.050224, 26.225519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323984, 34.840504, 26.885185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.414400, 34.473797, 26.753456>,  <28.468651, 34.253773, 26.674419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.414400, 34.473797, 26.753456>,  <28.323984, 34.840504, 26.885185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414400, 34.473797, 26.753456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132328, -0.306038, 0.942778,
		-0.965088, -0.256685, 0.052137,
		0.226041, -0.916762, -0.329320,
		28.482212, 34.198769, 26.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828465, 34.366566, 27.138683>,  <28.323984, 34.840504, 26.885185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828465, 34.366566, 27.138683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.159327, 34.152439, 27.070271>,  <28.357843, 34.023964, 27.029222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.159327, 34.152439, 27.070271>,  <27.828465, 34.366566, 27.138683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.159327, 34.152439, 27.070271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002516, -0.307863, 0.951427,
		-0.561972, -0.786545, -0.255997,
		0.827153, -0.535319, -0.171031,
		28.407473, 33.991844, 27.018961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872814, 33.715305, 27.479317>,  <27.828465, 34.366566, 27.138683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872814, 33.715305, 27.479317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.255901, 33.814110, 27.420301>,  <28.485754, 33.873390, 27.384893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.255901, 33.814110, 27.420301>,  <27.872814, 33.715305, 27.479317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255901, 33.814110, 27.420301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222363, -0.310050, 0.924350,
		0.182578, -0.918072, -0.351865,
		0.957716, 0.247008, -0.147537,
		28.543217, 33.888214, 27.376040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808897, 33.344826, 28.047703>,  <27.872814, 33.715305, 27.479317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808897, 33.344826, 28.047703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.609989, 33.004784, 28.117044>,  <27.490644, 32.800758, 28.158649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.609989, 33.004784, 28.117044>,  <27.808897, 33.344826, 28.047703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609989, 33.004784, 28.117044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380998, 0.034459, -0.923933,
		0.779463, -0.525491, -0.341022,
		-0.497270, -0.850101, 0.173352,
		27.460808, 32.749752, 28.169050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916740, 32.814106, 27.583183>,  <27.808897, 33.344826, 28.047703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916740, 32.814106, 27.583183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.569523, 32.670662, 27.720533>,  <27.361193, 32.584595, 27.802942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.569523, 32.670662, 27.720533>,  <27.916740, 32.814106, 27.583183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569523, 32.670662, 27.720533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293157, -0.187970, -0.937404,
		0.400703, -0.914368, 0.058038,
		-0.868041, -0.358606, 0.343374,
		27.309111, 32.563080, 27.823545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772156, 32.249916, 27.246687>,  <27.916740, 32.814106, 27.583183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772156, 32.249916, 27.246687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.394325, 32.286472, 27.372816>,  <27.167627, 32.308407, 27.448494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.394325, 32.286472, 27.372816>,  <27.772156, 32.249916, 27.246687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394325, 32.286472, 27.372816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327210, -0.183947, -0.926875,
		-0.026702, -0.978679, 0.203654,
		-0.944574, 0.091387, 0.315322,
		27.110952, 32.313889, 27.467413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414631, 31.638966, 27.004299>,  <27.772156, 32.249916, 27.246687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414631, 31.638966, 27.004299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.132839, 31.916927, 27.062012>,  <26.963764, 32.083706, 27.096640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.132839, 31.916927, 27.062012>,  <27.414631, 31.638966, 27.004299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132839, 31.916927, 27.062012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395286, -0.215328, -0.892963,
		-0.589456, -0.686107, 0.426380,
		-0.704479, 0.694904, 0.144282,
		26.921495, 32.125397, 27.105297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807146, 31.373997, 26.805746>,  <27.414631, 31.638966, 27.004299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807146, 31.373997, 26.805746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.719599, 31.764215, 26.813837>,  <26.667070, 31.998346, 26.818691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.719599, 31.764215, 26.813837>,  <26.807146, 31.373997, 26.805746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719599, 31.764215, 26.813837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480873, -0.089800, -0.872180,
		-0.849034, -0.200620, 0.488768,
		-0.218868, 0.975545, 0.020229,
		26.653938, 32.056877, 26.819906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028027, 31.383781, 26.782240>,  <26.807146, 31.373997, 26.805746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028027, 31.383781, 26.782240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184103, 31.729147, 26.654322>,  <26.277748, 31.936365, 26.577570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.184103, 31.729147, 26.654322>,  <26.028027, 31.383781, 26.782240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184103, 31.729147, 26.654322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577847, -0.040774, -0.815126,
		-0.716829, 0.502848, 0.483011,
		0.390190, 0.863412, -0.319797,
		26.301161, 31.988171, 26.558382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487209, 31.689552, 26.479750>,  <26.028027, 31.383781, 26.782240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487209, 31.689552, 26.479750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.787889, 31.898149, 26.318260>,  <25.968298, 32.023308, 26.221367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.787889, 31.898149, 26.318260>,  <25.487209, 31.689552, 26.479750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787889, 31.898149, 26.318260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511077, 0.073711, -0.856368,
		-0.416830, 0.850067, 0.321931,
		0.751700, 0.521492, -0.403725,
		26.013399, 32.054596, 26.197144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199200, 32.327625, 26.209379>,  <25.487209, 31.689552, 26.479750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199200, 32.327625, 26.209379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.554771, 32.271683, 26.034912>,  <25.768114, 32.238117, 25.930233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.554771, 32.271683, 26.034912>,  <25.199200, 32.327625, 26.209379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554771, 32.271683, 26.034912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379088, 0.309835, -0.871949,
		0.257087, 0.940449, 0.222404,
		0.888931, -0.139856, -0.436167,
		25.821451, 32.229725, 25.904062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258398, 32.797470, 25.767014>,  <25.199200, 32.327625, 26.209379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258398, 32.797470, 25.767014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.535950, 32.541054, 25.635803>,  <25.702480, 32.387203, 25.557077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.535950, 32.541054, 25.635803>,  <25.258398, 32.797470, 25.767014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535950, 32.541054, 25.635803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149857, 0.317011, -0.936508,
		0.704327, 0.698979, 0.123902,
		0.693878, -0.641040, -0.328026,
		25.744114, 32.348743, 25.537395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598799, 33.148354, 25.351664>,  <25.258398, 32.797470, 25.767014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598799, 33.148354, 25.351664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.669436, 32.773472, 25.231359>,  <25.711817, 32.548542, 25.159176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.669436, 32.773472, 25.231359>,  <25.598799, 33.148354, 25.351664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669436, 32.773472, 25.231359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249908, 0.252859, -0.934670,
		0.952030, 0.240218, -0.189563,
		0.176592, -0.937208, -0.300762,
		25.722414, 32.492310, 25.141130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058504, 33.236633, 24.763233>,  <25.598799, 33.148354, 25.351664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058504, 33.236633, 24.763233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.917276, 32.865227, 24.717289>,  <25.832541, 32.642384, 24.689722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.917276, 32.865227, 24.717289>,  <26.058504, 33.236633, 24.763233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917276, 32.865227, 24.717289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115896, 0.165229, -0.979422,
		0.928392, -0.332490, -0.165949,
		-0.353068, -0.928520, -0.114863,
		25.811356, 32.586670, 24.682831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411533, 32.977234, 24.212761>,  <26.058504, 33.236633, 24.763233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411533, 32.977234, 24.212761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.115900, 32.708679, 24.234653>,  <25.938520, 32.547546, 24.247789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.115900, 32.708679, 24.234653>,  <26.411533, 32.977234, 24.212761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115900, 32.708679, 24.234653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144453, 0.078608, -0.986385,
		0.657942, -0.736928, -0.155081,
		-0.739084, -0.671386, 0.054732,
		25.894175, 32.507263, 24.251074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610432, 32.542889, 23.633430>,  <26.411533, 32.977234, 24.212761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610432, 32.542889, 23.633430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.219011, 32.510906, 23.709372>,  <25.984159, 32.491714, 23.754936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.219011, 32.510906, 23.709372>,  <26.610432, 32.542889, 23.633430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219011, 32.510906, 23.709372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202347, 0.200140, -0.958645,
		0.038656, -0.976499, -0.212026,
		-0.978551, -0.079960, 0.189855,
		25.925446, 32.486919, 23.766329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425482, 32.112469, 23.182507>,  <26.610432, 32.542889, 23.633430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425482, 32.112469, 23.182507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.091309, 32.307426, 23.284094>,  <25.890804, 32.424400, 23.345045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.091309, 32.307426, 23.284094>,  <26.425482, 32.112469, 23.182507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091309, 32.307426, 23.284094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233295, 0.103904, -0.966839,
		-0.497621, -0.866977, 0.026902,
		-0.835432, 0.487396, 0.253966,
		25.840679, 32.453644, 23.360283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926252, 31.869307, 22.708115>,  <26.425482, 32.112469, 23.182507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926252, 31.869307, 22.708115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.793264, 32.221695, 22.842787>,  <25.713472, 32.433128, 22.923590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.793264, 32.221695, 22.842787>,  <25.926252, 31.869307, 22.708115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793264, 32.221695, 22.842787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292219, 0.243194, -0.924914,
		-0.896700, -0.405891, 0.176582,
		-0.332471, 0.880971, 0.336681,
		25.693523, 32.485985, 22.943790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763184, 31.136898, 22.329678>,  <25.926252, 31.869307, 22.708115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763184, 31.136898, 22.329678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.063202, 31.001570, 22.102356>,  <26.243214, 30.920372, 21.965963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.063202, 31.001570, 22.102356>,  <25.763184, 31.136898, 22.329678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063202, 31.001570, 22.102356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338344, -0.542036, 0.769234,
		-0.568296, -0.769240, -0.292079,
		0.750042, -0.338329, -0.568304,
		26.288216, 30.900074, 21.931866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891006, 30.483097, 22.558697>,  <25.763184, 31.136898, 22.329678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891006, 30.483097, 22.558697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.214264, 30.592197, 22.349886>,  <26.408218, 30.657658, 22.224600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.214264, 30.592197, 22.349886>,  <25.891006, 30.483097, 22.558697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.214264, 30.592197, 22.349886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588763, -0.398578, 0.703202,
		-0.016269, -0.875638, -0.482694,
		0.808142, 0.272752, -0.522028,
		26.456707, 30.674023, 22.193277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335398, 29.943466, 22.557083>,  <25.891006, 30.483097, 22.558697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335398, 29.943466, 22.557083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594490, 30.240597, 22.489372>,  <26.749945, 30.418875, 22.448746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.594490, 30.240597, 22.489372>,  <26.335398, 29.943466, 22.557083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594490, 30.240597, 22.489372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663540, -0.440852, 0.604454,
		0.374378, -0.503845, -0.778448,
		0.647731, 0.742826, -0.169275,
		26.788809, 30.463444, 22.438589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910444, 29.557001, 22.321522>,  <26.335398, 29.943466, 22.557083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910444, 29.557001, 22.321522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.011593, 29.920580, 22.454111>,  <27.072283, 30.138727, 22.533665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.011593, 29.920580, 22.454111>,  <26.910444, 29.557001, 22.321522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011593, 29.920580, 22.454111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730560, -0.404003, 0.550512,
		0.634301, 0.102951, -0.766200,
		0.252872, 0.908946, 0.331471,
		27.087454, 30.193264, 22.553553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586853, 29.536850, 22.291670>,  <26.910444, 29.557001, 22.321522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586853, 29.536850, 22.291670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.566900, 29.851980, 22.537220>,  <27.554928, 30.041058, 22.684549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.566900, 29.851980, 22.537220>,  <27.586853, 29.536850, 22.291670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566900, 29.851980, 22.537220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670182, -0.429316, 0.605429,
		0.740519, 0.441608, -0.506571,
		-0.049883, 0.787826, 0.613874,
		27.551935, 30.088327, 22.721382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248055, 29.549545, 22.617628>,  <27.586853, 29.536850, 22.291670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248055, 29.549545, 22.617628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.007072, 29.770311, 22.848257>,  <27.862484, 29.902771, 22.986635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.007072, 29.770311, 22.848257>,  <28.248055, 29.549545, 22.617628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007072, 29.770311, 22.848257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575579, -0.200042, 0.792901,
		0.552954, 0.809550, -0.197155,
		-0.602454, 0.551916, 0.576574,
		27.826336, 29.935886, 23.021229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778559, 30.006386, 22.948103>,  <28.248055, 29.549545, 22.617628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778559, 30.006386, 22.948103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.435884, 30.003956, 23.154425>,  <28.230280, 30.002497, 23.278217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.435884, 30.003956, 23.154425>,  <28.778559, 30.006386, 22.948103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435884, 30.003956, 23.154425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515072, -0.064567, 0.854712,
		0.028111, 0.997895, 0.058443,
		-0.856686, -0.006076, 0.515803,
		28.178879, 30.002132, 23.309166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897120, 30.489634, 23.376667>,  <28.778559, 30.006386, 22.948103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897120, 30.489634, 23.376667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.611343, 30.257492, 23.533009>,  <28.439878, 30.118208, 23.626814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.611343, 30.257492, 23.533009>,  <28.897120, 30.489634, 23.376667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611343, 30.257492, 23.533009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592290, -0.204217, 0.779415,
		-0.372516, 0.788344, 0.489637,
		-0.714440, -0.580352, 0.390854,
		28.397011, 30.083385, 23.650265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852497, 30.713095, 24.114729>,  <28.897120, 30.489634, 23.376667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852497, 30.713095, 24.114729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.651283, 30.367458, 24.107748>,  <28.530554, 30.160076, 24.103559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.651283, 30.367458, 24.107748>,  <28.852497, 30.713095, 24.114729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651283, 30.367458, 24.107748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487762, -0.300511, 0.819623,
		-0.713472, 0.403787, 0.572638,
		-0.503037, -0.864089, -0.017454,
		28.500372, 30.108232, 24.102512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510229, 30.647573, 24.737423>,  <28.852497, 30.713095, 24.114729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510229, 30.647573, 24.737423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.563969, 30.283895, 24.579784>,  <28.596212, 30.065689, 24.485201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.563969, 30.283895, 24.579784>,  <28.510229, 30.647573, 24.737423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563969, 30.283895, 24.579784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374761, -0.321546, 0.869576,
		-0.917336, -0.264518, 0.297532,
		0.134348, -0.909197, -0.394097,
		28.604273, 30.011137, 24.461555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137255, 30.160151, 25.167217>,  <28.510229, 30.647573, 24.737423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137255, 30.160151, 25.167217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.407907, 29.930826, 24.982399>,  <28.570299, 29.793232, 24.871508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.407907, 29.930826, 24.982399>,  <28.137255, 30.160151, 25.167217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407907, 29.930826, 24.982399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288906, -0.370476, 0.882769,
		-0.677276, -0.730797, -0.085044,
		0.676632, -0.573308, -0.462046,
		28.610897, 29.758833, 24.843784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063065, 29.570248, 25.611921>,  <28.137255, 30.160151, 25.167217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063065, 29.570248, 25.611921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.411398, 29.595905, 25.416971>,  <28.620398, 29.611300, 25.300001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.411398, 29.595905, 25.416971>,  <28.063065, 29.570248, 25.611921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411398, 29.595905, 25.416971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491335, -0.144854, 0.858841,
		-0.015508, -0.987372, -0.157661,
		0.870833, 0.064145, -0.487376,
		28.672647, 29.615149, 25.270758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.134567, 31.567526, 18.334417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518215, 31.679722, 18.319363>,  <25.748404, 31.747040, 18.310329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518215, 31.679722, 18.319363>,  <25.134567, 31.567526, 18.334417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518215, 31.679722, 18.319363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113214, -0.258394, 0.959383,
		0.259372, -0.924423, -0.279586,
		0.959119, 0.280490, -0.037637,
		25.805950, 31.763868, 18.308071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605860, 30.980333, 18.644138>,  <25.134567, 31.567526, 18.334417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605860, 30.980333, 18.644138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771978, 31.343687, 18.663586>,  <25.871649, 31.561699, 18.675255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771978, 31.343687, 18.663586>,  <25.605860, 30.980333, 18.644138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771978, 31.343687, 18.663586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373643, -0.219064, 0.901333,
		0.829410, -0.356154, -0.430388,
		0.415296, 0.908386, 0.048620,
		25.896566, 31.616203, 18.678171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230686, 30.858759, 18.840118>,  <25.605860, 30.980333, 18.644138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230686, 30.858759, 18.840118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200594, 31.241173, 18.953493>,  <26.182539, 31.470621, 19.021519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200594, 31.241173, 18.953493>,  <26.230686, 30.858759, 18.840118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200594, 31.241173, 18.953493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395917, -0.232241, 0.888433,
		0.915200, 0.179054, -0.361039,
		-0.075229, 0.956035, 0.283437,
		26.178024, 31.527983, 19.038525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657314, 30.787292, 19.366096>,  <26.230686, 30.858759, 18.840118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657314, 30.787292, 19.366096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467903, 31.135525, 19.419558>,  <26.354258, 31.344463, 19.451635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467903, 31.135525, 19.419558>,  <26.657314, 30.787292, 19.366096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467903, 31.135525, 19.419558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014142, -0.144211, 0.989446,
		0.880666, 0.470419, 0.055976,
		-0.473527, 0.870580, 0.133655,
		26.325846, 31.396698, 19.459654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163383, 31.216499, 19.719204>,  <26.657314, 30.787292, 19.366096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163383, 31.216499, 19.719204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798365, 31.362862, 19.792278>,  <26.579353, 31.450680, 19.836123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798365, 31.362862, 19.792278>,  <27.163383, 31.216499, 19.719204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798365, 31.362862, 19.792278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076622, -0.285814, 0.955217,
		0.401734, 0.885676, 0.232781,
		-0.912545, 0.365907, 0.182684,
		26.524601, 31.472633, 19.847084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243130, 31.641861, 20.365667>,  <27.163383, 31.216499, 19.719204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243130, 31.641861, 20.365667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851847, 31.567162, 20.329372>,  <26.617077, 31.522341, 20.307596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851847, 31.567162, 20.329372>,  <27.243130, 31.641861, 20.365667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851847, 31.567162, 20.329372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072760, -0.100980, 0.992224,
		-0.194461, 0.977204, 0.085192,
		-0.978208, -0.186751, -0.090738,
		26.558384, 31.511137, 20.302151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046125, 31.791832, 20.963753>,  <27.243130, 31.641861, 20.365667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046125, 31.791832, 20.963753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726212, 31.597813, 20.822292>,  <26.534264, 31.481401, 20.737415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726212, 31.597813, 20.822292>,  <27.046125, 31.791832, 20.963753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726212, 31.597813, 20.822292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179040, -0.369575, 0.911789,
		-0.572964, 0.792554, 0.208738,
		-0.799786, -0.485050, -0.353651,
		26.486277, 31.452297, 20.716196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452374, 32.054657, 21.280100>,  <27.046125, 31.791832, 20.963753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452374, 32.054657, 21.280100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391088, 31.674660, 21.171265>,  <26.354317, 31.446661, 21.105963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391088, 31.674660, 21.171265>,  <26.452374, 32.054657, 21.280100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391088, 31.674660, 21.171265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085292, -0.261600, 0.961400,
		-0.984506, 0.170505, -0.040947,
		-0.153212, -0.949996, -0.272090,
		26.345125, 31.389660, 21.089638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851789, 31.811531, 21.723490>,  <26.452374, 32.054657, 21.280100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851789, 31.811531, 21.723490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061638, 31.493917, 21.600668>,  <26.187548, 31.303349, 21.526976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061638, 31.493917, 21.600668>,  <25.851789, 31.811531, 21.723490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061638, 31.493917, 21.600668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052313, -0.390060, 0.919302,
		-0.849726, -0.466223, -0.246173,
		0.524622, -0.794034, -0.307055,
		26.219025, 31.255707, 21.508553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288559, 31.989450, 22.225405>,  <25.851789, 31.811531, 21.723490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288559, 31.989450, 22.225405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312311, 32.339565, 22.417383>,  <25.326563, 32.549633, 22.532570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312311, 32.339565, 22.417383>,  <25.288559, 31.989450, 22.225405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312311, 32.339565, 22.417383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425425, 0.457136, -0.781051,
		-0.903044, -0.157802, 0.399513,
		0.059381, 0.875286, 0.479947,
		25.330126, 32.602150, 22.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730333, 32.371189, 22.102732>,  <25.288559, 31.989450, 22.225405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730333, 32.371189, 22.102732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977051, 32.665161, 22.215475>,  <25.125080, 32.841545, 22.283121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.977051, 32.665161, 22.215475>,  <24.730333, 32.371189, 22.102732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977051, 32.665161, 22.215475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277496, 0.538125, -0.795875,
		-0.736589, 0.412675, 0.535852,
		0.616792, 0.734930, 0.281861,
		25.162088, 32.885639, 22.300034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373234, 32.981995, 22.197130>,  <24.730333, 32.371189, 22.102732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373234, 32.981995, 22.197130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751144, 33.080643, 22.110804>,  <24.977890, 33.139832, 22.059008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751144, 33.080643, 22.110804>,  <24.373234, 32.981995, 22.197130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751144, 33.080643, 22.110804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326997, 0.665798, -0.670661,
		-0.021709, 0.704196, 0.709674,
		0.944776, 0.246621, -0.215816,
		25.034576, 33.154629, 22.046059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355049, 33.830894, 22.115685>,  <24.373234, 32.981995, 22.197130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355049, 33.830894, 22.115685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695145, 33.709694, 21.943506>,  <24.899202, 33.636974, 21.840199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695145, 33.709694, 21.943506>,  <24.355049, 33.830894, 22.115685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695145, 33.709694, 21.943506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112614, 0.694089, -0.711026,
		0.514212, 0.653016, 0.556018,
		0.850238, -0.303003, -0.430448,
		24.950216, 33.618793, 21.814371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763584, 34.403416, 21.962078>,  <24.355049, 33.830894, 22.115685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763584, 34.403416, 21.962078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926226, 34.131344, 21.718102>,  <25.023811, 33.968102, 21.571716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926226, 34.131344, 21.718102>,  <24.763584, 34.403416, 21.962078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.926226, 34.131344, 21.718102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081068, 0.638126, -0.765652,
		0.910001, 0.360763, 0.204324,
		0.406604, -0.680180, -0.609941,
		25.048206, 33.927288, 21.535120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226532, 34.786766, 21.443748>,  <24.763584, 34.403416, 21.962078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226532, 34.786766, 21.443748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180191, 34.436195, 21.256794>,  <25.152388, 34.225853, 21.144621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.180191, 34.436195, 21.256794>,  <25.226532, 34.786766, 21.443748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180191, 34.436195, 21.256794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005262, 0.471091, -0.882069,
		0.993253, -0.099729, -0.059188,
		-0.115851, -0.876429, -0.467387,
		25.145435, 34.173267, 21.116577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747717, 34.834911, 20.915949>,  <25.226532, 34.786766, 21.443748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747717, 34.834911, 20.915949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506325, 34.551960, 20.768744>,  <25.361490, 34.382191, 20.680420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506325, 34.551960, 20.768744>,  <25.747717, 34.834911, 20.915949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506325, 34.551960, 20.768744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135170, 0.364095, -0.921501,
		0.785838, -0.605851, -0.124108,
		-0.603480, -0.707375, -0.368012,
		25.325281, 34.339748, 20.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917892, 34.766403, 20.185196>,  <25.747717, 34.834911, 20.915949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917892, 34.766403, 20.185196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570644, 34.568279, 20.198034>,  <25.362295, 34.449406, 20.205736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570644, 34.568279, 20.198034>,  <25.917892, 34.766403, 20.185196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570644, 34.568279, 20.198034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118262, 0.143613, -0.982542,
		0.482056, -0.856762, -0.183250,
		-0.868122, -0.495312, 0.032093,
		25.310207, 34.419685, 20.207663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.978643, 34.258678, 19.778233>,  <25.917892, 34.766403, 20.185196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.978643, 34.258678, 19.778233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597216, 34.375095, 19.809206>,  <25.368359, 34.444946, 19.827789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597216, 34.375095, 19.809206>,  <25.978643, 34.258678, 19.778233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597216, 34.375095, 19.809206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014050, 0.299813, -0.953895,
		-0.300842, -0.908518, -0.289982,
		-0.953570, 0.291046, 0.077431,
		25.311144, 34.462410, 19.832436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628330, 34.027042, 19.099203>,  <25.978643, 34.258678, 19.778233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628330, 34.027042, 19.099203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400188, 34.311100, 19.264317>,  <25.263304, 34.481533, 19.363384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400188, 34.311100, 19.264317>,  <25.628330, 34.027042, 19.099203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400188, 34.311100, 19.264317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248855, 0.329525, -0.910760,
		-0.782794, -0.622179, -0.011223,
		-0.570354, 0.710145, 0.412782,
		25.229082, 34.524143, 19.388151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951010, 34.061741, 18.741169>,  <25.628330, 34.027042, 19.099203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951010, 34.061741, 18.741169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001274, 34.426422, 18.897629>,  <25.031433, 34.645233, 18.991505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001274, 34.426422, 18.897629>,  <24.951010, 34.061741, 18.741169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001274, 34.426422, 18.897629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163326, 0.407908, -0.898296,
		-0.978537, 0.048995, 0.200163,
		0.125660, 0.911707, 0.391150,
		25.038973, 34.699936, 19.014975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.438004, 34.470684, 18.518368>,  <24.951010, 34.061741, 18.741169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.438004, 34.470684, 18.518368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659805, 34.777191, 18.648203>,  <24.792887, 34.961094, 18.726105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659805, 34.777191, 18.648203>,  <24.438004, 34.470684, 18.518368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659805, 34.777191, 18.648203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250058, 0.525445, -0.813252,
		-0.793722, 0.369786, 0.482973,
		0.554505, 0.766268, 0.324589,
		24.826157, 35.007072, 18.745579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.053404, 35.059521, 18.408913>,  <24.438004, 34.470684, 18.518368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.053404, 35.059521, 18.408913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422329, 35.210106, 18.443806>,  <24.643684, 35.300457, 18.464743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422329, 35.210106, 18.443806>,  <24.053404, 35.059521, 18.408913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.422329, 35.210106, 18.443806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185869, 0.630073, -0.753963,
		-0.338806, 0.679177, 0.651098,
		0.922314, 0.376467, 0.087234,
		24.699022, 35.323048, 18.469976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.965271, 35.769512, 18.397203>,  <24.053404, 35.059521, 18.408913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.965271, 35.769512, 18.397203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344513, 35.693764, 18.295040>,  <24.572058, 35.648315, 18.233742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344513, 35.693764, 18.295040>,  <23.965271, 35.769512, 18.397203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344513, 35.693764, 18.295040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042502, 0.720593, -0.692055,
		0.315100, 0.666997, 0.675150,
		0.948106, -0.189372, -0.255408,
		24.628944, 35.636951, 18.218418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.596581, 35.258221, 15.723480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256283, 35.048878, 15.742774>,  <32.052105, 34.923271, 15.754350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.256283, 35.048878, 15.742774>,  <32.596581, 35.258221, 15.723480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256283, 35.048878, 15.742774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227433, -0.283858, 0.931504,
		-0.473816, 0.803445, 0.360520,
		-0.850748, -0.523356, 0.048233,
		32.001057, 34.891872, 15.757244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389561, 35.470924, 16.287806>,  <32.596581, 35.258221, 15.723480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389561, 35.470924, 16.287806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.198906, 35.127937, 16.210283>,  <32.084511, 34.922146, 16.163771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.198906, 35.127937, 16.210283>,  <32.389561, 35.470924, 16.287806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198906, 35.127937, 16.210283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123227, -0.283451, 0.951037,
		-0.870419, 0.429420, 0.240767,
		-0.476640, -0.857470, -0.193805,
		32.055916, 34.870697, 16.152142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848621, 35.448418, 16.712629>,  <32.389561, 35.470924, 16.287806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848621, 35.448418, 16.712629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887815, 35.058277, 16.633553>,  <31.911331, 34.824192, 16.586107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.887815, 35.058277, 16.633553>,  <31.848621, 35.448418, 16.712629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887815, 35.058277, 16.633553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011454, -0.199739, 0.979782,
		-0.995122, -0.093740, -0.030743,
		0.097986, -0.975355, -0.197691,
		31.917212, 34.765671, 16.574245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300909, 35.080357, 17.181213>,  <31.848621, 35.448418, 16.712629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300909, 35.080357, 17.181213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.565792, 34.816612, 17.038818>,  <31.724722, 34.658367, 16.953382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.565792, 34.816612, 17.038818>,  <31.300909, 35.080357, 17.181213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565792, 34.816612, 17.038818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109440, -0.384878, 0.916456,
		-0.741287, -0.645841, -0.182708,
		0.662206, -0.659361, -0.355986,
		31.764454, 34.618805, 16.932022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110041, 34.442242, 17.462044>,  <31.300909, 35.080357, 17.181213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110041, 34.442242, 17.462044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.498461, 34.399376, 17.376648>,  <31.731512, 34.373657, 17.325411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.498461, 34.399376, 17.376648>,  <31.110041, 34.442242, 17.462044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498461, 34.399376, 17.376648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140520, -0.466466, 0.873306,
		-0.193176, -0.878023, -0.437903,
		0.971050, -0.107168, -0.213490,
		31.789776, 34.367226, 17.312601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268057, 33.723614, 17.605707>,  <31.110041, 34.442242, 17.462044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268057, 33.723614, 17.605707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.603516, 33.940830, 17.622570>,  <31.804790, 34.071159, 17.632689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.603516, 33.940830, 17.622570>,  <31.268057, 33.723614, 17.605707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603516, 33.940830, 17.622570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133379, -0.279789, 0.950751,
		0.528096, -0.791720, -0.307074,
		0.838645, 0.543045, 0.042157,
		31.855108, 34.103745, 17.635218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810074, 33.241013, 17.699327>,  <31.268057, 33.723614, 17.605707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810074, 33.241013, 17.699327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919758, 33.603020, 17.829409>,  <31.985569, 33.820225, 17.907457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919758, 33.603020, 17.829409>,  <31.810074, 33.241013, 17.699327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919758, 33.603020, 17.829409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215072, -0.387311, 0.896512,
		0.937312, -0.175890, -0.300847,
		0.274209, 0.905015, 0.325202,
		32.002022, 33.874523, 17.926970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230991, 33.049786, 18.286451>,  <31.810074, 33.241013, 17.699327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230991, 33.049786, 18.286451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.186871, 33.443195, 18.343748>,  <32.160400, 33.679241, 18.378126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.186871, 33.443195, 18.343748>,  <32.230991, 33.049786, 18.286451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186871, 33.443195, 18.343748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330395, -0.099644, 0.938568,
		0.937376, 0.150849, -0.313960,
		-0.110298, 0.983522, 0.143244,
		32.153782, 33.738251, 18.386721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866035, 33.397022, 18.531427>,  <32.230991, 33.049786, 18.286451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866035, 33.397022, 18.531427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.551247, 33.612373, 18.651972>,  <32.362373, 33.741585, 18.724298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.551247, 33.612373, 18.651972>,  <32.866035, 33.397022, 18.531427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551247, 33.612373, 18.651972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204047, -0.233852, 0.950620,
		0.582266, 0.809607, 0.074182,
		-0.786976, 0.538377, 0.301362,
		32.315155, 33.773888, 18.742380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163521, 33.863392, 18.942156>,  <32.866035, 33.397022, 18.531427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163521, 33.863392, 18.942156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774433, 33.839676, 19.031866>,  <32.540981, 33.825447, 19.085691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774433, 33.839676, 19.031866>,  <33.163521, 33.863392, 18.942156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774433, 33.839676, 19.031866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230566, -0.140580, 0.962848,
		-0.025562, 0.988292, 0.150416,
		-0.972721, -0.059293, 0.224273,
		32.482616, 33.821888, 19.099148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004520, 34.301769, 19.592375>,  <33.163521, 33.863392, 18.942156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004520, 34.301769, 19.592375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691124, 34.054108, 19.571251>,  <32.503086, 33.905510, 19.558577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691124, 34.054108, 19.571251>,  <33.004520, 34.301769, 19.592375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691124, 34.054108, 19.571251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035622, -0.129595, 0.990927,
		-0.620383, 0.774500, 0.123592,
		-0.783490, -0.619157, -0.052809,
		32.456078, 33.868362, 19.555408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544735, 34.471344, 20.265816>,  <33.004520, 34.301769, 19.592375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544735, 34.471344, 20.265816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381783, 34.120338, 20.164618>,  <32.284012, 33.909733, 20.103899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381783, 34.120338, 20.164618>,  <32.544735, 34.471344, 20.265816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381783, 34.120338, 20.164618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262218, -0.152971, 0.952807,
		-0.874806, 0.454491, -0.167784,
		-0.407377, -0.877518, -0.252995,
		32.259571, 33.857082, 20.088718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948601, 34.441467, 20.816635>,  <32.544735, 34.471344, 20.265816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948601, 34.441467, 20.816635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.978386, 34.066162, 20.681507>,  <31.996256, 33.840981, 20.600431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.978386, 34.066162, 20.681507>,  <31.948601, 34.441467, 20.816635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978386, 34.066162, 20.681507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204493, -0.345926, 0.915706,
		-0.976032, 0.000897, -0.217626,
		0.074462, -0.938261, -0.337818,
		32.000725, 33.784683, 20.580162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378418, 34.038124, 21.100908>,  <31.948601, 34.441467, 20.816635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378418, 34.038124, 21.100908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680868, 33.789860, 21.017912>,  <31.862337, 33.640900, 20.968115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680868, 33.789860, 21.017912>,  <31.378418, 34.038124, 21.100908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680868, 33.789860, 21.017912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131515, -0.454700, 0.880881,
		-0.641079, -0.638766, -0.425436,
		0.756123, -0.620665, -0.207492,
		31.907705, 33.603661, 20.955664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664827, 34.065380, 21.422131>,  <31.378418, 34.038124, 21.100908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664827, 34.065380, 21.422131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724125, 34.422131, 21.593048>,  <30.759703, 34.636181, 21.695599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.724125, 34.422131, 21.593048>,  <30.664827, 34.065380, 21.422131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724125, 34.422131, 21.593048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271097, 0.452167, -0.849736,
		-0.951068, 0.010130, 0.308816,
		0.148244, 0.891875, 0.427296,
		30.768599, 34.689693, 21.721237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102057, 34.456516, 21.109266>,  <30.664827, 34.065380, 21.422131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102057, 34.456516, 21.109266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369389, 34.717258, 21.252607>,  <30.529787, 34.873703, 21.338612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.369389, 34.717258, 21.252607>,  <30.102057, 34.456516, 21.109266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369389, 34.717258, 21.252607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028335, 0.503707, -0.863410,
		-0.743324, 0.566889, 0.355113,
		0.668331, 0.651856, 0.358355,
		30.569887, 34.912815, 21.360113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780561, 35.011852, 21.001167>,  <30.102057, 34.456516, 21.109266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780561, 35.011852, 21.001167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.162151, 35.125210, 21.040394>,  <30.391106, 35.193226, 21.063931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.162151, 35.125210, 21.040394>,  <29.780561, 35.011852, 21.001167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162151, 35.125210, 21.040394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099896, 0.608649, -0.787126,
		-0.282756, 0.741102, 0.608947,
		0.953976, 0.283396, 0.098066,
		30.448343, 35.210228, 21.069813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776915, 35.756176, 20.963739>,  <29.780561, 35.011852, 21.001167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776915, 35.756176, 20.963739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.151421, 35.635841, 20.891182>,  <30.376125, 35.563641, 20.847649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.151421, 35.635841, 20.891182>,  <29.776915, 35.756176, 20.963739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151421, 35.635841, 20.891182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080355, 0.686074, -0.723081,
		0.341976, 0.662421, 0.666522,
		0.936267, -0.300835, -0.181391,
		30.432301, 35.545589, 20.836765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206434, 36.422165, 20.849934>,  <29.776915, 35.756176, 20.963739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206434, 36.422165, 20.849934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.413874, 36.141964, 20.653830>,  <30.538338, 35.973843, 20.536167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.413874, 36.141964, 20.653830>,  <30.206434, 36.422165, 20.849934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413874, 36.141964, 20.653830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142071, 0.636019, -0.758483,
		0.843132, 0.323696, 0.429360,
		0.518599, -0.700500, -0.490260,
		30.569454, 35.931812, 20.506752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666025, 36.743084, 20.462275>,  <30.206434, 36.422165, 20.849934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666025, 36.743084, 20.462275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.674465, 36.392193, 20.270432>,  <30.679529, 36.181656, 20.155325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.674465, 36.392193, 20.270432>,  <30.666025, 36.743084, 20.462275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674465, 36.392193, 20.270432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043464, 0.480065, -0.876156,
		0.998832, -0.002360, 0.048257,
		0.021098, -0.877230, -0.479607,
		30.680794, 36.129025, 20.126549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168442, 36.847206, 19.878082>,  <30.666025, 36.743084, 20.462275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168442, 36.847206, 19.878082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964640, 36.519951, 19.771458>,  <30.842360, 36.323597, 19.707483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.964640, 36.519951, 19.771458>,  <31.168442, 36.847206, 19.878082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964640, 36.519951, 19.771458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021833, 0.321979, -0.946495,
		0.860192, -0.476422, -0.181912,
		-0.509503, -0.818139, -0.266562,
		30.811789, 36.274509, 19.691488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533010, 36.618107, 19.243452>,  <31.168442, 36.847206, 19.878082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533010, 36.618107, 19.243452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.176268, 36.438396, 19.222504>,  <30.962223, 36.330570, 19.209934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.176268, 36.438396, 19.222504>,  <31.533010, 36.618107, 19.243452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176268, 36.438396, 19.222504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038153, 0.190095, -0.981024,
		0.450709, -0.872933, -0.186678,
		-0.891855, -0.449279, -0.052373,
		30.908710, 36.303612, 19.206793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548065, 36.167244, 18.729906>,  <31.533010, 36.618107, 19.243452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548065, 36.167244, 18.729906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.164223, 36.268478, 18.779070>,  <30.933918, 36.329220, 18.808567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.164223, 36.268478, 18.779070>,  <31.548065, 36.167244, 18.729906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164223, 36.268478, 18.779070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078228, 0.179613, -0.980622,
		-0.270260, -0.950624, -0.152558,
		-0.959604, 0.253088, 0.122908,
		30.876341, 36.344406, 18.815943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302177, 36.136341, 18.033941>,  <31.548065, 36.167244, 18.729906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302177, 36.136341, 18.033941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984610, 36.282856, 18.228065>,  <30.794069, 36.370766, 18.344540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984610, 36.282856, 18.228065>,  <31.302177, 36.136341, 18.033941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984610, 36.282856, 18.228065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490450, 0.085977, -0.867218,
		-0.359380, -0.926520, 0.111389,
		-0.793917, 0.366291, 0.485310,
		30.746435, 36.392742, 18.373659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828232, 35.722694, 17.794243>,  <31.302177, 36.136341, 18.033941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828232, 35.722694, 17.794243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.669758, 36.061840, 17.935194>,  <30.574675, 36.265327, 18.019764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.669758, 36.061840, 17.935194>,  <30.828232, 35.722694, 17.794243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669758, 36.061840, 17.935194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387407, 0.193584, -0.901355,
		-0.832439, -0.493615, 0.251773,
		-0.396183, 0.847862, 0.352376,
		30.550903, 36.316200, 18.040907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991032, 35.751236, 17.577501>,  <30.828232, 35.722694, 17.794243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991032, 35.751236, 17.577501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.094162, 36.131172, 17.648296>,  <30.156040, 36.359135, 17.690773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.094162, 36.131172, 17.648296>,  <29.991032, 35.751236, 17.577501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094162, 36.131172, 17.648296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502823, 0.288325, -0.814885,
		-0.825043, 0.121104, 0.551940,
		0.257824, 0.949843, 0.176987,
		30.171509, 36.416126, 17.701393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412346, 36.156006, 17.395172>,  <29.991032, 35.751236, 17.577501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412346, 36.156006, 17.395172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743116, 36.380924, 17.393518>,  <29.941578, 36.515877, 17.392527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743116, 36.380924, 17.393518>,  <29.412346, 36.156006, 17.395172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743116, 36.380924, 17.393518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373024, 0.543048, -0.752298,
		-0.420769, 0.623637, 0.658810,
		0.826926, 0.562295, -0.004134,
		29.991194, 36.549614, 17.392279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129303, 36.809715, 17.164145>,  <29.412346, 36.156006, 17.395172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129303, 36.809715, 17.164145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.523252, 36.784660, 17.099516>,  <29.759623, 36.769627, 17.060740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.523252, 36.784660, 17.099516>,  <29.129303, 36.809715, 17.164145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523252, 36.784660, 17.099516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132466, 0.328980, -0.935000,
		0.111718, 0.942257, 0.315706,
		0.984871, -0.062636, -0.161570,
		29.818714, 36.765869, 17.051044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.031023, 37.324596, 17.585548>,  <29.129303, 36.809715, 17.164145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.031023, 37.324596, 17.585548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.707510, 37.539169, 17.681974>,  <28.513403, 37.667915, 17.739830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.707510, 37.539169, 17.681974>,  <29.031023, 37.324596, 17.585548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707510, 37.539169, 17.681974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005455, -0.416724, 0.909017,
		0.588086, 0.733880, 0.339965,
		-0.808780, 0.536434, 0.241066,
		28.464876, 37.700100, 17.754293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162413, 37.710243, 18.201859>,  <29.031023, 37.324596, 17.585548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162413, 37.710243, 18.201859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767361, 37.653606, 18.174904>,  <28.530329, 37.619625, 18.158731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.767361, 37.653606, 18.174904>,  <29.162413, 37.710243, 18.201859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767361, 37.653606, 18.174904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015241, -0.341037, 0.939926,
		-0.156064, 0.929326, 0.334660,
		-0.987629, -0.141588, -0.067387,
		28.471071, 37.611130, 18.154688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891361, 37.997631, 18.819704>,  <29.162413, 37.710243, 18.201859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891361, 37.997631, 18.819704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.595232, 37.767578, 18.680479>,  <28.417555, 37.629547, 18.596945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.595232, 37.767578, 18.680479>,  <28.891361, 37.997631, 18.819704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595232, 37.767578, 18.680479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091313, -0.426925, 0.899665,
		-0.666019, 0.697826, 0.263547,
		-0.740325, -0.575129, -0.348061,
		28.373135, 37.595039, 18.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308067, 38.087772, 19.384935>,  <28.891361, 37.997631, 18.819704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308067, 38.087772, 19.384935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.205036, 37.766655, 19.169834>,  <28.143217, 37.573986, 19.040773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.205036, 37.766655, 19.169834>,  <28.308067, 38.087772, 19.384935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205036, 37.766655, 19.169834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208407, -0.497277, 0.842188,
		-0.943515, 0.329000, -0.039220,
		-0.257577, -0.802791, -0.537755,
		28.127764, 37.525818, 19.008507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571064, 37.861877, 19.518652>,  <28.308067, 38.087772, 19.384935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571064, 37.861877, 19.518652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.746813, 37.523289, 19.398357>,  <27.852262, 37.320137, 19.326181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.746813, 37.523289, 19.398357>,  <27.571064, 37.861877, 19.518652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.746813, 37.523289, 19.398357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486993, -0.505767, 0.712065,
		-0.754844, -0.166405, -0.634445,
		0.439372, -0.846468, -0.300737,
		27.878624, 37.269348, 19.308136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039200, 37.238060, 19.706564>,  <27.571064, 37.861877, 19.518652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039200, 37.238060, 19.706564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.403000, 37.083576, 19.645041>,  <27.621279, 36.990887, 19.608126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.403000, 37.083576, 19.645041>,  <27.039200, 37.238060, 19.706564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403000, 37.083576, 19.645041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156623, -0.661075, 0.733791,
		-0.385073, -0.643292, -0.661736,
		0.909498, -0.386207, -0.153808,
		27.675850, 36.967712, 19.598898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922794, 36.608089, 19.976290>,  <27.039200, 37.238060, 19.706564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922794, 36.608089, 19.976290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.313025, 36.590576, 19.890190>,  <27.547163, 36.580067, 19.838530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.313025, 36.590576, 19.890190>,  <26.922794, 36.608089, 19.976290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313025, 36.590576, 19.890190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130411, -0.673085, 0.727976,
		-0.176753, -0.738267, -0.650937,
		0.975577, -0.043783, -0.215248,
		27.605698, 36.577442, 19.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067265, 35.929539, 19.933418>,  <26.922794, 36.608089, 19.976290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067265, 35.929539, 19.933418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.385593, 36.146473, 20.041153>,  <27.576590, 36.276634, 20.105793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.385593, 36.146473, 20.041153>,  <27.067265, 35.929539, 19.933418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385593, 36.146473, 20.041153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011490, -0.458238, 0.888755,
		0.605423, -0.704196, -0.370907,
		0.795821, 0.542334, 0.269337,
		27.624340, 36.309174, 20.121954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504349, 35.500710, 20.382305>,  <27.067265, 35.929539, 19.933418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504349, 35.500710, 20.382305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.617569, 35.871307, 20.481491>,  <27.685501, 36.093666, 20.541002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.617569, 35.871307, 20.481491>,  <27.504349, 35.500710, 20.382305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617569, 35.871307, 20.481491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289605, -0.329033, 0.898814,
		0.914336, -0.182599, -0.361451,
		0.283051, 0.926496, 0.247965,
		27.702484, 36.149258, 20.555880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099602, 35.430756, 20.811724>,  <27.504349, 35.500710, 20.382305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099602, 35.430756, 20.811724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.966608, 35.793633, 20.914839>,  <27.886812, 36.011360, 20.976707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.966608, 35.793633, 20.914839>,  <28.099602, 35.430756, 20.811724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966608, 35.793633, 20.914839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127363, -0.227642, 0.965380,
		0.934469, 0.353808, -0.039855,
		-0.332487, 0.907193, 0.257786,
		27.866861, 36.065792, 20.992174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590878, 35.780792, 21.278776>,  <28.099602, 35.430756, 20.811724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590878, 35.780792, 21.278776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.239386, 35.959160, 21.346884>,  <28.028490, 36.066181, 21.387749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.239386, 35.959160, 21.346884>,  <28.590878, 35.780792, 21.278776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239386, 35.959160, 21.346884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079476, -0.215052, 0.973363,
		0.470657, 0.868856, 0.153532,
		-0.878730, 0.445918, 0.170269,
		27.975767, 36.092934, 21.397964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700043, 36.163464, 21.889708>,  <28.590878, 35.780792, 21.278776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700043, 36.163464, 21.889708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.301271, 36.150890, 21.861017>,  <28.062008, 36.143345, 21.843803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.301271, 36.150890, 21.861017>,  <28.700043, 36.163464, 21.889708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301271, 36.150890, 21.861017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059480, -0.291852, 0.954612,
		-0.050941, 0.955947, 0.289086,
		-0.996929, -0.031434, -0.071727,
		28.002193, 36.141460, 21.839499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521303, 36.396282, 22.501328>,  <28.700043, 36.163464, 21.889708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521303, 36.396282, 22.501328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178080, 36.228676, 22.382563>,  <27.972145, 36.128113, 22.311304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.178080, 36.228676, 22.382563>,  <28.521303, 36.396282, 22.501328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178080, 36.228676, 22.382563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142646, -0.360936, 0.921617,
		-0.493342, 0.833155, 0.249932,
		-0.858059, -0.419021, -0.296911,
		27.920662, 36.102970, 22.293489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088560, 36.603912, 23.042894>,  <28.521303, 36.396282, 22.501328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088560, 36.603912, 23.042894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.942682, 36.282967, 22.853914>,  <27.855156, 36.090401, 22.740526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.942682, 36.282967, 22.853914>,  <28.088560, 36.603912, 23.042894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942682, 36.282967, 22.853914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024711, -0.498875, 0.866322,
		-0.930799, 0.327617, 0.162109,
		-0.364694, -0.802366, -0.472448,
		27.833275, 36.042255, 22.712179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<24.380671, 36.522404, 18.470871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.621090, 36.289722, 18.251650>,  <24.765341, 36.150112, 18.120117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.621090, 36.289722, 18.251650>,  <24.380671, 36.522404, 18.470871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621090, 36.289722, 18.251650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040547, 0.707054, -0.705996,
		0.798184, 0.402115, 0.448559,
		0.601047, -0.581703, -0.548055,
		24.801405, 36.115211, 18.087233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.829447, 36.969261, 18.289062>,  <24.380671, 36.522404, 18.470871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.829447, 36.969261, 18.289062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.899771, 36.677601, 18.024508>,  <24.941965, 36.502605, 17.865774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.899771, 36.677601, 18.024508>,  <24.829447, 36.969261, 18.289062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899771, 36.677601, 18.024508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102531, 0.681761, -0.724354,
		0.979070, 0.059536, 0.194620,
		0.175809, -0.729149, -0.661388,
		24.952513, 36.458855, 17.826092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384222, 37.251125, 17.855106>,  <24.829447, 36.969261, 18.289062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384222, 37.251125, 17.855106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.199686, 36.958763, 17.653933>,  <25.088964, 36.783344, 17.533228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.199686, 36.958763, 17.653933>,  <25.384222, 37.251125, 17.855106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199686, 36.958763, 17.653933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111739, 0.514482, -0.850189,
		0.880159, -0.448424, -0.155681,
		-0.461340, -0.730906, -0.502933,
		25.061283, 36.739491, 17.503054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831717, 37.042831, 17.257381>,  <25.384222, 37.251125, 17.855106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831717, 37.042831, 17.257381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.459841, 36.935123, 17.156849>,  <25.236715, 36.870499, 17.096529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.459841, 36.935123, 17.156849>,  <25.831717, 37.042831, 17.257381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459841, 36.935123, 17.156849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132940, 0.391042, -0.910721,
		0.343511, -0.880102, -0.327752,
		-0.929692, -0.269271, -0.251328,
		25.180933, 36.854343, 17.081450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888567, 36.684361, 16.692162>,  <25.831717, 37.042831, 17.257381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888567, 36.684361, 16.692162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.500128, 36.773415, 16.657745>,  <25.267065, 36.826847, 16.637094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.500128, 36.773415, 16.657745>,  <25.888567, 36.684361, 16.692162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.500128, 36.773415, 16.657745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132214, 0.201629, -0.970497,
		-0.198715, -0.953824, -0.225237,
		-0.971098, 0.222632, -0.086042,
		25.208797, 36.840202, 16.631933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707684, 36.544926, 16.041992>,  <25.888567, 36.684361, 16.692162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707684, 36.544926, 16.041992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.376724, 36.750008, 16.133688>,  <25.178148, 36.873055, 16.188705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.376724, 36.750008, 16.133688>,  <25.707684, 36.544926, 16.041992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376724, 36.750008, 16.133688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091285, 0.279975, -0.955657,
		-0.554147, -0.811635, -0.184849,
		-0.827398, 0.512701, 0.229238,
		25.128504, 36.903816, 16.202459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176321, 36.355141, 15.588697>,  <25.707684, 36.544926, 16.041992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176321, 36.355141, 15.588697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.072651, 36.713154, 15.733879>,  <25.010448, 36.927963, 15.820988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.072651, 36.713154, 15.733879>,  <25.176321, 36.355141, 15.588697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072651, 36.713154, 15.733879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002372, 0.376384, -0.926461,
		-0.965827, -0.239255, -0.099673,
		-0.259176, 0.895038, 0.362954,
		24.994898, 36.981667, 15.842765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.451717, 36.517868, 15.236015>,  <25.176321, 36.355141, 15.588697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.451717, 36.517868, 15.236015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.613911, 36.852974, 15.382296>,  <24.711226, 37.054039, 15.470063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.613911, 36.852974, 15.382296>,  <24.451717, 36.517868, 15.236015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.613911, 36.852974, 15.382296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159374, 0.458729, -0.874167,
		-0.900103, 0.296176, 0.319524,
		0.405482, 0.837764, 0.365700,
		24.735556, 37.104301, 15.492005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989264, 37.026852, 15.080102>,  <24.451717, 36.517868, 15.236015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989264, 37.026852, 15.080102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.359308, 37.167690, 15.136947>,  <24.581335, 37.252193, 15.171054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.359308, 37.167690, 15.136947>,  <23.989264, 37.026852, 15.080102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.359308, 37.167690, 15.136947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064985, 0.515586, -0.854370,
		-0.374089, 0.781154, 0.499856,
		0.925113, 0.352093, 0.142112,
		24.636843, 37.273319, 15.179580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.828749, 37.607845, 14.767970>,  <23.989264, 37.026852, 15.080102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.828749, 37.607845, 14.767970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.227493, 37.586761, 14.791609>,  <24.466740, 37.574112, 14.805792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.227493, 37.586761, 14.791609>,  <23.828749, 37.607845, 14.767970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227493, 37.586761, 14.791609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075960, 0.425580, -0.901727,
		0.022378, 0.903385, 0.428247,
		0.996860, -0.052709, 0.059098,
		24.526550, 37.570950, 14.809339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975615, 38.282337, 14.457895>,  <23.828749, 37.607845, 14.767970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975615, 38.282337, 14.457895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.307558, 38.059662, 14.442752>,  <24.506723, 37.926056, 14.433665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.307558, 38.059662, 14.442752>,  <23.975615, 38.282337, 14.457895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307558, 38.059662, 14.442752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256402, 0.440724, -0.860245,
		0.495573, 0.704174, 0.508474,
		0.829859, -0.556688, -0.037859,
		24.556517, 37.892654, 14.431394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.387745, 38.789265, 14.280598>,  <23.975615, 38.282337, 14.457895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.387745, 38.789265, 14.280598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.547787, 38.432808, 14.195004>,  <24.643812, 38.218933, 14.143647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.547787, 38.432808, 14.195004>,  <24.387745, 38.789265, 14.280598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547787, 38.432808, 14.195004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064955, 0.260475, -0.963293,
		0.914165, 0.371517, 0.162101,
		0.400103, -0.891138, -0.213985,
		24.667818, 38.165466, 14.130808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986528, 38.765724, 13.882285>,  <24.387745, 38.789265, 14.280598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986528, 38.765724, 13.882285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.784615, 38.425888, 13.821105>,  <24.663467, 38.221989, 13.784397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.784615, 38.425888, 13.821105>,  <24.986528, 38.765724, 13.882285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784615, 38.425888, 13.821105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101818, 0.234540, -0.966759,
		0.857221, -0.472430, -0.204895,
		-0.504783, -0.849588, -0.152951,
		24.633181, 38.171013, 13.775220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425999, 38.317364, 13.394512>,  <24.986528, 38.765724, 13.882285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425999, 38.317364, 13.394512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.028280, 38.275269, 13.401381>,  <24.789648, 38.250011, 13.405501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.028280, 38.275269, 13.401381>,  <25.425999, 38.317364, 13.394512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028280, 38.275269, 13.401381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042531, 0.243744, -0.968907,
		0.097783, -0.964113, -0.246830,
		-0.994299, -0.105241, 0.017171,
		24.729990, 38.243694, 13.406531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582069, 39.006809, 13.124331>,  <25.425999, 38.317364, 13.394512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582069, 39.006809, 13.124331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.898348, 39.248062, 13.082307>,  <26.088114, 39.392815, 13.057093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.898348, 39.248062, 13.082307>,  <25.582069, 39.006809, 13.124331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898348, 39.248062, 13.082307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283399, -0.208479, 0.936067,
		0.542666, -0.769917, -0.335769,
		0.790695, 0.603128, -0.105059,
		26.135557, 39.429001, 13.050789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053858, 38.672050, 13.447251>,  <25.582069, 39.006809, 13.124331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053858, 38.672050, 13.447251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.233704, 39.024513, 13.388726>,  <26.341612, 39.235992, 13.353611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.233704, 39.024513, 13.388726>,  <26.053858, 38.672050, 13.447251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233704, 39.024513, 13.388726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584376, -0.166299, 0.794261,
		0.675537, -0.442614, -0.589698,
		0.449617, 0.881157, -0.146312,
		26.368589, 39.288860, 13.344832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681150, 38.535370, 13.576293>,  <26.053858, 38.672050, 13.447251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681150, 38.535370, 13.576293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.679985, 38.931572, 13.631281>,  <26.679285, 39.169292, 13.664274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.679985, 38.931572, 13.631281>,  <26.681150, 38.535370, 13.576293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679985, 38.931572, 13.631281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612770, -0.106868, 0.783002,
		0.790256, 0.086520, -0.606638,
		-0.002915, 0.990502, 0.137470,
		26.679111, 39.228722, 13.672522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352249, 38.708565, 13.695972>,  <26.681150, 38.535370, 13.576293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352249, 38.708565, 13.695972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.101822, 38.975735, 13.856928>,  <26.951565, 39.136036, 13.953501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.101822, 38.975735, 13.856928>,  <27.352249, 38.708565, 13.695972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101822, 38.975735, 13.856928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489099, -0.065536, 0.869763,
		0.607306, 0.741339, -0.285651,
		-0.626069, 0.667923, 0.402388,
		26.914001, 39.176113, 13.977644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775599, 39.276100, 14.069851>,  <27.352249, 38.708565, 13.695972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775599, 39.276100, 14.069851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.428774, 39.371101, 14.245030>,  <27.220680, 39.428101, 14.350139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.428774, 39.371101, 14.245030>,  <27.775599, 39.276100, 14.069851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428774, 39.371101, 14.245030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468067, 0.087245, 0.879375,
		0.170644, 0.967461, -0.186813,
		-0.867060, 0.237501, 0.437949,
		27.168655, 39.442352, 14.376415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913733, 39.786957, 14.516925>,  <27.775599, 39.276100, 14.069851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913733, 39.786957, 14.516925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.568901, 39.633316, 14.649157>,  <27.362001, 39.541130, 14.728496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.568901, 39.633316, 14.649157>,  <27.913733, 39.786957, 14.516925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568901, 39.633316, 14.649157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387974, -0.080569, 0.918142,
		-0.326026, 0.919768, 0.218479,
		-0.862081, -0.384103, 0.330578,
		27.310276, 39.518085, 14.748330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744984, 40.146099, 15.122164>,  <27.913733, 39.786957, 14.516925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744984, 40.146099, 15.122164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.512508, 39.821232, 15.142551>,  <27.373024, 39.626312, 15.154784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.512508, 39.821232, 15.142551>,  <27.744984, 40.146099, 15.122164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512508, 39.821232, 15.142551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305642, -0.159811, 0.938639,
		-0.754191, 0.561103, 0.341114,
		-0.581187, -0.812172, 0.050969,
		27.338152, 39.577579, 15.157842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504910, 40.104794, 15.781223>,  <27.744984, 40.146099, 15.122164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504910, 40.104794, 15.781223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.454876, 39.725971, 15.662946>,  <27.424856, 39.498676, 15.591979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.454876, 39.725971, 15.662946>,  <27.504910, 40.104794, 15.781223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454876, 39.725971, 15.662946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392122, -0.320959, 0.862105,
		-0.911369, -0.008112, 0.411510,
		-0.125085, -0.947058, -0.295693,
		27.417351, 39.441853, 15.574238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249308, 39.735802, 16.336664>,  <27.504910, 40.104794, 15.781223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249308, 39.735802, 16.336664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403992, 39.437733, 16.119347>,  <27.496803, 39.258892, 15.988956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.403992, 39.437733, 16.119347>,  <27.249308, 39.735802, 16.336664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403992, 39.437733, 16.119347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206659, -0.504121, 0.838543,
		-0.898747, -0.436551, -0.040952,
		0.386712, -0.745175, -0.543294,
		27.520004, 39.214180, 15.956359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015339, 39.119156, 16.677952>,  <27.249308, 39.735802, 16.336664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015339, 39.119156, 16.677952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.321157, 39.011028, 16.443893>,  <27.504648, 38.946152, 16.303457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.321157, 39.011028, 16.443893>,  <27.015339, 39.119156, 16.677952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321157, 39.011028, 16.443893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342350, -0.598882, 0.723973,
		-0.546137, -0.753836, -0.365329,
		0.764546, -0.270318, -0.585147,
		27.550522, 38.929932, 16.268349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964417, 38.429440, 16.711121>,  <27.015339, 39.119156, 16.677952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964417, 38.429440, 16.711121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.339777, 38.497120, 16.590601>,  <27.564993, 38.537727, 16.518290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.339777, 38.497120, 16.590601>,  <26.964417, 38.429440, 16.711121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339777, 38.497120, 16.590601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341473, -0.587657, 0.733523,
		-0.052950, -0.791222, -0.609232,
		0.938399, 0.169196, -0.301297,
		27.621296, 38.547878, 16.500212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314709, 37.768723, 16.715822>,  <26.964417, 38.429440, 16.711121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314709, 37.768723, 16.715822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.573372, 38.068520, 16.772533>,  <27.728569, 38.248398, 16.806561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.573372, 38.068520, 16.772533>,  <27.314709, 37.768723, 16.715822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573372, 38.068520, 16.772533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548191, -0.585883, 0.596848,
		0.530397, -0.308234, -0.789729,
		0.646657, 0.749489, 0.141779,
		27.767368, 38.293365, 16.815067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067898, 37.535168, 16.532888>,  <27.314709, 37.768723, 16.715822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067898, 37.535168, 16.532888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100523, 37.834984, 16.795656>,  <28.120098, 38.014874, 16.953316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.100523, 37.834984, 16.795656>,  <28.067898, 37.535168, 16.532888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100523, 37.834984, 16.795656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525596, -0.592362, 0.610620,
		0.846815, 0.295469, -0.442269,
		0.081565, 0.749537, 0.656918,
		28.124992, 38.059845, 16.992731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584753, 37.317532, 16.992411>,  <28.067898, 37.535168, 16.532888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584753, 37.317532, 16.992411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.409626, 37.598907, 17.216372>,  <28.304550, 37.767735, 17.350748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.409626, 37.598907, 17.216372>,  <28.584753, 37.317532, 16.992411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409626, 37.598907, 17.216372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376819, -0.421850, 0.824652,
		0.816287, 0.572028, -0.080377,
		-0.437817, 0.703440, 0.559901,
		28.278280, 37.809940, 17.384342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.343319, 37.442295, 16.881348>,  <28.584753, 37.317532, 16.992411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.343319, 37.442295, 16.881348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.650734, 37.207119, 16.780411>,  <29.835182, 37.066013, 16.719849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.650734, 37.207119, 16.780411>,  <29.343319, 37.442295, 16.881348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650734, 37.207119, 16.780411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067875, 0.467101, -0.881595,
		0.636197, 0.660409, 0.398890,
		0.768535, -0.587942, -0.252343,
		29.881294, 37.030735, 16.704708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654882, 37.896049, 16.483326>,  <29.343319, 37.442295, 16.881348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654882, 37.896049, 16.483326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767324, 37.524334, 16.387497>,  <29.834789, 37.301304, 16.330000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.767324, 37.524334, 16.387497>,  <29.654882, 37.896049, 16.483326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767324, 37.524334, 16.387497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137630, 0.208019, -0.968393,
		0.949757, 0.305191, -0.069423,
		0.281104, -0.929293, -0.239571,
		29.851656, 37.245544, 16.315626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213043, 37.946663, 16.068367>,  <29.654882, 37.896049, 16.483326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213043, 37.946663, 16.068367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052853, 37.588139, 15.992220>,  <29.956738, 37.373024, 15.946531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.052853, 37.588139, 15.992220>,  <30.213043, 37.946663, 16.068367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052853, 37.588139, 15.992220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103072, 0.250503, -0.962613,
		0.910491, -0.365884, -0.192705,
		-0.400478, -0.896313, -0.190369,
		29.932709, 37.319244, 15.935109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497292, 37.802769, 15.391486>,  <30.213043, 37.946663, 16.068367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497292, 37.802769, 15.391486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213703, 37.524017, 15.434798>,  <30.043550, 37.356766, 15.460786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213703, 37.524017, 15.434798>,  <30.497292, 37.802769, 15.391486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213703, 37.524017, 15.434798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272617, 0.129207, -0.953407,
		0.650417, -0.705455, -0.281585,
		-0.708969, -0.696877, 0.108281,
		30.001013, 37.314953, 15.467282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669298, 37.292488, 14.835316>,  <30.497292, 37.802769, 15.391486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669298, 37.292488, 14.835316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291246, 37.303764, 14.965508>,  <30.064415, 37.310528, 15.043623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291246, 37.303764, 14.965508>,  <30.669298, 37.292488, 14.835316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291246, 37.303764, 14.965508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325198, 0.014169, -0.945540,
		-0.031275, -0.999502, -0.004221,
		-0.945128, 0.028199, 0.325480,
		30.007708, 37.312222, 15.063151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337580, 36.849651, 14.507046>,  <30.669298, 37.292488, 14.835316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337580, 36.849651, 14.507046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026033, 37.075634, 14.615996>,  <29.839106, 37.211224, 14.681367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.026033, 37.075634, 14.615996>,  <30.337580, 36.849651, 14.507046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026033, 37.075634, 14.615996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201644, 0.185660, -0.961702,
		-0.593893, -0.803959, -0.030684,
		-0.778866, 0.564961, 0.272376,
		29.792374, 37.245121, 14.697709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912775, 36.580551, 14.094397>,  <30.337580, 36.849651, 14.507046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912775, 36.580551, 14.094397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754225, 36.930885, 14.204523>,  <29.659094, 37.141087, 14.270599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754225, 36.930885, 14.204523>,  <29.912775, 36.580551, 14.094397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754225, 36.930885, 14.204523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402306, 0.103858, -0.909595,
		-0.825249, -0.471304, 0.311187,
		-0.396377, 0.875835, 0.275317,
		29.635311, 37.193634, 14.287118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534445, 35.949734, 13.918309>,  <29.912775, 36.580551, 14.094397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534445, 35.949734, 13.918309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.760014, 35.686905, 13.718207>,  <29.895355, 35.529209, 13.598146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.760014, 35.686905, 13.718207>,  <29.534445, 35.949734, 13.918309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760014, 35.686905, 13.718207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463490, -0.249541, 0.850239,
		-0.683499, -0.711330, 0.163823,
		0.563920, -0.657068, -0.500255,
		29.929190, 35.489784, 13.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482006, 35.272903, 14.264738>,  <29.534445, 35.949734, 13.918309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482006, 35.272903, 14.264738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823534, 35.276737, 14.056545>,  <30.028450, 35.279037, 13.931629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823534, 35.276737, 14.056545>,  <29.482006, 35.272903, 14.264738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823534, 35.276737, 14.056545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502916, -0.273354, 0.819972,
		-0.134420, -0.961865, -0.238213,
		0.853819, 0.009581, -0.520482,
		30.079679, 35.279610, 13.900401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804989, 34.842758, 14.647301>,  <29.482006, 35.272903, 14.264738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804989, 34.842758, 14.647301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102839, 34.997021, 14.429382>,  <30.281548, 35.089581, 14.298631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102839, 34.997021, 14.429382>,  <29.804989, 34.842758, 14.647301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102839, 34.997021, 14.429382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656969, -0.279135, 0.700340,
		0.118021, -0.879403, -0.461216,
		0.744623, 0.385660, -0.544797,
		30.326225, 35.112717, 14.265944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316563, 34.288952, 14.522231>,  <29.804989, 34.842758, 14.647301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316563, 34.288952, 14.522231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485853, 34.648502, 14.476807>,  <30.587427, 34.864235, 14.449552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.485853, 34.648502, 14.476807>,  <30.316563, 34.288952, 14.522231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485853, 34.648502, 14.476807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722681, -0.259323, 0.640690,
		0.546453, -0.353227, -0.759355,
		0.423227, 0.898878, -0.113562,
		30.612822, 34.918167, 14.442738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109175, 34.111946, 14.335315>,  <30.316563, 34.288952, 14.522231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109175, 34.111946, 14.335315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082191, 34.482113, 14.484470>,  <31.066002, 34.704212, 14.573963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082191, 34.482113, 14.484470>,  <31.109175, 34.111946, 14.335315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082191, 34.482113, 14.484470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786646, -0.180556, 0.590413,
		0.613708, 0.333160, -0.715798,
		-0.067461, 0.925421, 0.372888,
		31.061953, 34.759739, 14.596336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792566, 34.227520, 14.443696>,  <31.109175, 34.111946, 14.335315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792566, 34.227520, 14.443696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619297, 34.525928, 14.646007>,  <31.515335, 34.704975, 14.767393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.619297, 34.525928, 14.646007>,  <31.792566, 34.227520, 14.443696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619297, 34.525928, 14.646007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651116, -0.129005, 0.747934,
		0.623224, 0.653305, -0.429866,
		-0.433175, 0.746023, 0.505776,
		31.489346, 34.749737, 14.797739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303444, 34.720985, 14.732212>,  <31.792566, 34.227520, 14.443696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303444, 34.720985, 14.732212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971569, 34.708080, 14.955132>,  <31.772446, 34.700336, 15.088885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971569, 34.708080, 14.955132>,  <32.303444, 34.720985, 14.732212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971569, 34.708080, 14.955132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557592, -0.095784, 0.824570,
		0.026781, 0.994879, 0.097458,
		-0.829683, -0.032259, 0.557302,
		31.722664, 34.698402, 15.122323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.314247, 35.141964, 12.194187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181807, 35.409073, 12.460855>,  <25.102343, 35.569340, 12.620856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181807, 35.409073, 12.460855>,  <25.314247, 35.141964, 12.194187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181807, 35.409073, 12.460855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383537, -0.550285, 0.741678,
		0.862132, 0.501263, -0.073916,
		-0.331101, 0.667773, 0.666672,
		25.082476, 35.609406, 12.660857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846767, 35.329639, 12.685725>,  <25.314247, 35.141964, 12.194187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846767, 35.329639, 12.685725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.508226, 35.408077, 12.883810>,  <25.305101, 35.455139, 13.002661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.508226, 35.408077, 12.883810>,  <25.846767, 35.329639, 12.685725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508226, 35.408077, 12.883810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350658, -0.494689, 0.795187,
		0.400906, 0.846658, 0.349920,
		-0.846353, 0.196093, 0.495211,
		25.254320, 35.466904, 13.032373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114582, 35.516479, 13.323479>,  <25.846767, 35.329639, 12.685725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114582, 35.516479, 13.323479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724543, 35.445648, 13.376883>,  <25.490519, 35.403149, 13.408925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.724543, 35.445648, 13.376883>,  <26.114582, 35.516479, 13.323479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724543, 35.445648, 13.376883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220253, -0.702977, 0.676249,
		-0.025894, 0.688815, 0.724474,
		-0.975099, -0.177078, 0.133510,
		25.432013, 35.392525, 13.416936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037970, 35.612225, 14.053957>,  <26.114582, 35.516479, 13.323479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037970, 35.612225, 14.053957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760971, 35.362141, 13.909974>,  <25.594772, 35.212090, 13.823585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.760971, 35.362141, 13.909974>,  <26.037970, 35.612225, 14.053957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760971, 35.362141, 13.909974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192349, -0.640903, 0.743132,
		-0.695308, 0.445378, 0.564079,
		-0.692495, -0.625205, -0.359957,
		25.553223, 35.174580, 13.801987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819225, 35.347477, 14.616186>,  <26.037970, 35.612225, 14.053957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819225, 35.347477, 14.616186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.641508, 35.096184, 14.360711>,  <25.534878, 34.945408, 14.207426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.641508, 35.096184, 14.360711>,  <25.819225, 35.347477, 14.616186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641508, 35.096184, 14.360711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058476, -0.691060, 0.720428,
		-0.893970, 0.357430, 0.270297,
		-0.444294, -0.628236, -0.638688,
		25.508221, 34.907715, 14.169105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259438, 35.185238, 14.978126>,  <25.819225, 35.347477, 14.616186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259438, 35.185238, 14.978126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321125, 34.895489, 14.709352>,  <25.358137, 34.721638, 14.548088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.321125, 34.895489, 14.709352>,  <25.259438, 35.185238, 14.978126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321125, 34.895489, 14.709352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145044, -0.689300, 0.709808,
		-0.977332, -0.012006, -0.211370,
		0.154220, -0.724377, -0.671934,
		25.367392, 34.678177, 14.507772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774321, 34.621071, 15.126879>,  <25.259438, 35.185238, 14.978126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774321, 34.621071, 15.126879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.043215, 34.415882, 14.913350>,  <25.204552, 34.292770, 14.785233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.043215, 34.415882, 14.913350>,  <24.774321, 34.621071, 15.126879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043215, 34.415882, 14.913350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046578, -0.690317, 0.722006,
		-0.738876, -0.510219, -0.440159,
		0.672230, -0.512971, -0.533823,
		25.244884, 34.261993, 14.753203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510914, 33.945671, 15.096857>,  <24.774321, 34.621071, 15.126879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510914, 33.945671, 15.096857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.902456, 33.903416, 15.026789>,  <25.137381, 33.878063, 14.984748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.902456, 33.903416, 15.026789>,  <24.510914, 33.945671, 15.096857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902456, 33.903416, 15.026789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040443, -0.739494, 0.671947,
		-0.200521, -0.664823, -0.719584,
		0.978854, -0.105638, -0.175171,
		25.196112, 33.871723, 14.974237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576574, 33.264408, 15.133194>,  <24.510914, 33.945671, 15.096857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576574, 33.264408, 15.133194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.965403, 33.357311, 15.146660>,  <25.198700, 33.413055, 15.154739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.965403, 33.357311, 15.146660>,  <24.576574, 33.264408, 15.133194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965403, 33.357311, 15.146660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148247, -0.718886, 0.679136,
		0.181938, -0.655177, -0.733240,
		0.972071, 0.232261, 0.033665,
		25.257023, 33.426991, 15.156759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920332, 32.606300, 15.049775>,  <24.576574, 33.264408, 15.133194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920332, 32.606300, 15.049775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187738, 32.855549, 15.212158>,  <25.348183, 33.005100, 15.309587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187738, 32.855549, 15.212158>,  <24.920332, 32.606300, 15.049775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187738, 32.855549, 15.212158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222219, -0.688296, 0.690556,
		0.709720, -0.371438, -0.598608,
		0.668518, 0.623123, 0.405957,
		25.388294, 33.042484, 15.333945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615936, 32.256142, 15.140744>,  <24.920332, 32.606300, 15.049775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615936, 32.256142, 15.140744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.643156, 32.550945, 15.409722>,  <25.659489, 32.727829, 15.571109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.643156, 32.550945, 15.409722>,  <25.615936, 32.256142, 15.140744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643156, 32.550945, 15.409722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445901, -0.625412, 0.640338,
		0.892492, 0.256269, -0.371193,
		0.068050, 0.737012, 0.672445,
		25.663570, 32.772049, 15.611456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340654, 32.143700, 15.487141>,  <25.615936, 32.256142, 15.140744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340654, 32.143700, 15.487141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114998, 32.385269, 15.712358>,  <25.979603, 32.530212, 15.847487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.114998, 32.385269, 15.712358>,  <26.340654, 32.143700, 15.487141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114998, 32.385269, 15.712358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393498, -0.402845, 0.826363,
		0.725880, 0.687743, -0.010381,
		-0.564143, 0.603926, 0.563043,
		25.945755, 32.566448, 15.881270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647511, 32.767441, 15.614376>,  <26.340654, 32.143700, 15.487141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647511, 32.767441, 15.614376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016617, 32.615639, 15.587594>,  <27.238081, 32.524559, 15.571525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016617, 32.615639, 15.587594>,  <26.647511, 32.767441, 15.614376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016617, 32.615639, 15.587594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036576, 0.086712, -0.995562,
		0.383625, 0.921118, 0.066134,
		0.922764, -0.379503, -0.066955,
		27.293446, 32.501789, 15.567508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123615, 33.265759, 15.279250>,  <26.647511, 32.767441, 15.614376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123615, 33.265759, 15.279250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261810, 32.892643, 15.238165>,  <27.344728, 32.668774, 15.213513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261810, 32.892643, 15.238165>,  <27.123615, 33.265759, 15.279250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261810, 32.892643, 15.238165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018573, 0.116228, -0.993049,
		0.938239, 0.341179, 0.057480,
		0.345489, -0.932785, -0.102713,
		27.365458, 32.612808, 15.207351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582493, 33.299480, 14.684520>,  <27.123615, 33.265759, 15.279250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582493, 33.299480, 14.684520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532021, 32.904778, 14.725272>,  <27.501738, 32.667953, 14.749723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532021, 32.904778, 14.725272>,  <27.582493, 33.299480, 14.684520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532021, 32.904778, 14.725272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309286, -0.136715, -0.941090,
		0.942561, -0.087237, 0.322442,
		-0.126181, -0.986762, 0.101881,
		27.494165, 32.608749, 14.755836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169666, 32.909592, 14.465681>,  <27.582493, 33.299480, 14.684520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169666, 32.909592, 14.465681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867571, 32.649185, 14.435243>,  <27.686314, 32.492943, 14.416980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867571, 32.649185, 14.435243>,  <28.169666, 32.909592, 14.465681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867571, 32.649185, 14.435243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103293, -0.003567, -0.994645,
		0.647258, -0.759056, 0.069939,
		-0.755240, -0.651016, -0.076097,
		27.640999, 32.453880, 14.412414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431072, 32.390182, 14.070985>,  <28.169666, 32.909592, 14.465681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431072, 32.390182, 14.070985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035551, 32.333988, 14.050860>,  <27.798239, 32.300274, 14.038786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035551, 32.333988, 14.050860>,  <28.431072, 32.390182, 14.070985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035551, 32.333988, 14.050860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049163, 0.011642, -0.998723,
		0.140892, -0.990014, -0.004605,
		-0.988804, -0.140486, -0.050312,
		27.738911, 32.291843, 14.035767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284277, 31.822950, 13.590432>,  <28.431072, 32.390182, 14.070985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284277, 31.822950, 13.590432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946768, 32.034981, 13.624052>,  <27.744263, 32.162201, 13.644224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.946768, 32.034981, 13.624052>,  <28.284277, 31.822950, 13.590432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946768, 32.034981, 13.624052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124865, -0.041578, -0.991302,
		-0.521973, -0.846929, 0.101270,
		-0.843773, 0.530078, 0.084049,
		27.693636, 32.194004, 13.649267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925447, 31.469034, 13.159392>,  <28.284277, 31.822950, 13.590432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925447, 31.469034, 13.159392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767769, 31.833563, 13.206899>,  <27.673162, 32.052280, 13.235402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.767769, 31.833563, 13.206899>,  <27.925447, 31.469034, 13.159392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767769, 31.833563, 13.206899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239651, 0.022827, -0.970591,
		-0.887230, -0.411065, 0.209401,
		-0.394196, 0.911320, 0.118765,
		27.649509, 32.106960, 13.242528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380507, 31.461922, 12.693256>,  <27.925447, 31.469034, 13.159392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380507, 31.461922, 12.693256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427893, 31.851875, 12.768690>,  <27.456324, 32.085850, 12.813951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427893, 31.851875, 12.768690>,  <27.380507, 31.461922, 12.693256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427893, 31.851875, 12.768690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296368, 0.215980, -0.930333,
		-0.947698, 0.054322, 0.314511,
		0.118465, 0.974886, 0.188584,
		27.463432, 32.144341, 12.825265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893660, 31.715454, 12.381225>,  <27.380507, 31.461922, 12.693256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893660, 31.715454, 12.381225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109106, 32.050613, 12.416594>,  <27.238375, 32.251709, 12.437815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.109106, 32.050613, 12.416594>,  <26.893660, 31.715454, 12.381225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.109106, 32.050613, 12.416594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297018, 0.287036, -0.910709,
		-0.788461, 0.464261, 0.403473,
		0.538618, 0.837897, 0.088423,
		27.270691, 32.301983, 12.443121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492699, 32.099636, 11.970296>,  <26.893660, 31.715454, 12.381225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492699, 32.099636, 11.970296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809589, 32.337765, 12.023925>,  <26.999723, 32.480640, 12.056102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.809589, 32.337765, 12.023925>,  <26.492699, 32.099636, 11.970296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809589, 32.337765, 12.023925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288473, 0.558966, -0.777393,
		-0.537737, 0.577195, 0.614560,
		0.792226, 0.595317, 0.134072,
		27.047256, 32.516361, 12.064146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312164, 32.819382, 11.911856>,  <26.492699, 32.099636, 11.970296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312164, 32.819382, 11.911856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701801, 32.808804, 11.822013>,  <26.935583, 32.802456, 11.768107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701801, 32.808804, 11.822013>,  <26.312164, 32.819382, 11.911856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701801, 32.808804, 11.822013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159300, 0.624717, -0.764429,
		0.160535, 0.780403, 0.604317,
		0.974090, -0.026450, -0.224608,
		26.994028, 32.800869, 11.754631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575703, 33.548462, 11.829729>,  <26.312164, 32.819382, 11.911856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575703, 33.548462, 11.829729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831339, 33.331821, 11.611287>,  <26.984722, 33.201836, 11.480222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831339, 33.331821, 11.611287>,  <26.575703, 33.548462, 11.829729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831339, 33.331821, 11.611287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055375, 0.740587, -0.669675,
		0.767133, 0.397744, 0.503295,
		0.639093, -0.541600, -0.546104,
		27.023067, 33.169342, 11.447455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916735, 34.007584, 11.437063>,  <26.575703, 33.548462, 11.829729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916735, 34.007584, 11.437063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032843, 33.690067, 11.223282>,  <27.102507, 33.499557, 11.095014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.032843, 33.690067, 11.223282>,  <26.916735, 34.007584, 11.437063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032843, 33.690067, 11.223282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043799, 0.546893, -0.836056,
		0.955942, 0.266090, 0.123980,
		0.290270, -0.793791, -0.534453,
		27.119925, 33.451931, 11.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443554, 34.265709, 10.954383>,  <26.916735, 34.007584, 11.437063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443554, 34.265709, 10.954383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300123, 33.923916, 10.804031>,  <27.214066, 33.718842, 10.713820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.300123, 33.923916, 10.804031>,  <27.443554, 34.265709, 10.954383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300123, 33.923916, 10.804031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013845, 0.397743, -0.917392,
		0.933398, -0.334159, -0.130791,
		-0.358576, -0.854481, -0.375879,
		27.192551, 33.667572, 10.691268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006266, 34.352818, 11.509868>,  <27.443554, 34.265709, 10.954383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006266, 34.352818, 11.509868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181967, 34.659000, 11.321769>,  <28.287388, 34.842709, 11.208909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181967, 34.659000, 11.321769>,  <28.006266, 34.352818, 11.509868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181967, 34.659000, 11.321769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573934, 0.163592, 0.802395,
		0.691128, -0.622343, -0.367465,
		0.439251, 0.765458, -0.470247,
		28.313742, 34.888638, 11.180695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.671076, 34.271408, 11.596585>,  <28.006266, 34.352818, 11.509868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.671076, 34.271408, 11.596585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640125, 34.659992, 11.506889>,  <28.621555, 34.893143, 11.453072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640125, 34.659992, 11.506889>,  <28.671076, 34.271408, 11.596585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640125, 34.659992, 11.506889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589829, 0.225935, 0.775277,
		0.803813, -0.072276, -0.590476,
		-0.077375, 0.971457, -0.224240,
		28.616913, 34.951431, 11.439617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373169, 34.485531, 11.615867>,  <28.671076, 34.271408, 11.596585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373169, 34.485531, 11.615867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175213, 34.832684, 11.633147>,  <29.056438, 35.040974, 11.643516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175213, 34.832684, 11.633147>,  <29.373169, 34.485531, 11.615867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175213, 34.832684, 11.633147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686938, 0.360297, 0.631112,
		0.532164, 0.342009, -0.774488,
		-0.494892, 0.867880, 0.043202,
		29.026745, 35.093048, 11.646108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852568, 35.081753, 11.482351>,  <29.373169, 34.485531, 11.615867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852568, 35.081753, 11.482351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540955, 35.211937, 11.696711>,  <29.353987, 35.290047, 11.825326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.540955, 35.211937, 11.696711>,  <29.852568, 35.081753, 11.482351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540955, 35.211937, 11.696711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626556, 0.435749, 0.646181,
		-0.023209, 0.839165, -0.543382,
		-0.779031, 0.325462, 0.535897,
		29.307245, 35.309574, 11.857480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091211, 35.603657, 11.887309>,  <29.852568, 35.081753, 11.482351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091211, 35.603657, 11.887309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768267, 35.507912, 12.103039>,  <29.574499, 35.450466, 12.232477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768267, 35.507912, 12.103039>,  <30.091211, 35.603657, 11.887309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768267, 35.507912, 12.103039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457477, 0.323353, 0.828346,
		-0.372667, 0.915505, -0.151561,
		-0.807363, -0.239362, 0.539325,
		29.526058, 35.436104, 12.264836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925453, 36.224129, 12.383538>,  <30.091211, 35.603657, 11.887309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925453, 36.224129, 12.383538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775341, 35.886841, 12.537493>,  <29.685274, 35.684467, 12.629866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775341, 35.886841, 12.537493>,  <29.925453, 36.224129, 12.383538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775341, 35.886841, 12.537493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472518, 0.183193, 0.862071,
		-0.797427, 0.505385, 0.329690,
		-0.375281, -0.843224, 0.384887,
		29.662756, 35.633873, 12.652959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672281, 36.317005, 13.103437>,  <29.925453, 36.224129, 12.383538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672281, 36.317005, 13.103437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727268, 35.921223, 13.085158>,  <29.760260, 35.683754, 13.074191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.727268, 35.921223, 13.085158>,  <29.672281, 36.317005, 13.103437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727268, 35.921223, 13.085158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540750, 0.036313, 0.840399,
		-0.829875, -0.140238, 0.540038,
		0.137466, -0.989452, -0.045699,
		29.768509, 35.624386, 13.071448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298220, 36.619186, 13.646023>,  <29.672281, 36.317005, 13.103437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298220, 36.619186, 13.646023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339140, 36.995132, 13.776373>,  <29.363691, 37.220699, 13.854583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.339140, 36.995132, 13.776373>,  <29.298220, 36.619186, 13.646023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339140, 36.995132, 13.776373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537155, 0.327920, -0.777131,
		-0.837257, -0.095545, 0.538398,
		0.102300, 0.939862, 0.325875,
		29.369829, 37.277092, 13.874136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593477, 37.036926, 13.609247>,  <29.298220, 36.619186, 13.646023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593477, 37.036926, 13.609247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889820, 37.305420, 13.618799>,  <29.067627, 37.466518, 13.624531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.889820, 37.305420, 13.618799>,  <28.593477, 37.036926, 13.609247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889820, 37.305420, 13.618799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410204, 0.480332, -0.775251,
		-0.531847, 0.564555, 0.631202,
		0.740858, 0.671237, 0.023881,
		29.112078, 37.506790, 13.625963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261599, 37.580441, 13.261214>,  <28.593477, 37.036926, 13.609247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261599, 37.580441, 13.261214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629585, 37.733875, 13.293525>,  <28.850376, 37.825935, 13.312911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629585, 37.733875, 13.293525>,  <28.261599, 37.580441, 13.261214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629585, 37.733875, 13.293525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158558, 0.552577, -0.818241,
		-0.358502, 0.739945, 0.569173,
		0.919965, 0.383587, 0.080776,
		28.905575, 37.848953, 13.317758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184902, 38.292007, 13.381613>,  <28.261599, 37.580441, 13.261214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184902, 38.292007, 13.381613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534758, 38.223042, 13.200383>,  <28.744671, 38.181664, 13.091645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.534758, 38.223042, 13.200383>,  <28.184902, 38.292007, 13.381613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534758, 38.223042, 13.200383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238254, 0.661060, -0.711502,
		0.422183, 0.730255, 0.537111,
		0.874641, -0.172415, -0.453075,
		28.797150, 38.171318, 13.064461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484438, 38.880135, 13.232238>,  <28.184902, 38.292007, 13.381613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484438, 38.880135, 13.232238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684814, 38.649693, 12.973885>,  <28.805040, 38.511429, 12.818872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684814, 38.649693, 12.973885>,  <28.484438, 38.880135, 13.232238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684814, 38.649693, 12.973885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145890, 0.679384, -0.719134,
		0.853095, 0.454473, 0.256285,
		0.500943, -0.576101, -0.645882,
		28.835098, 38.476864, 12.780120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976711, 39.290722, 12.806669>,  <28.484438, 38.880135, 13.232238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976711, 39.290722, 12.806669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907841, 38.958458, 12.594872>,  <28.866518, 38.759102, 12.467793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.907841, 38.958458, 12.594872>,  <28.976711, 39.290722, 12.806669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907841, 38.958458, 12.594872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216721, 0.556292, -0.802228,
		0.960931, -0.023371, -0.275800,
		-0.172175, -0.830657, -0.529493,
		28.856188, 38.709259, 12.436024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249723, 39.474926, 12.127776>,  <28.976711, 39.290722, 12.806669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249723, 39.474926, 12.127776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999575, 39.169430, 12.063764>,  <28.849485, 38.986134, 12.025356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999575, 39.169430, 12.063764>,  <29.249723, 39.474926, 12.127776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999575, 39.169430, 12.063764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309886, 0.431289, -0.847325,
		0.716155, -0.480304, -0.506389,
		-0.625374, -0.763740, -0.160031,
		28.811962, 38.940308, 12.015755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225624, 39.321884, 11.388671>,  <29.249723, 39.474926, 12.127776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225624, 39.321884, 11.388671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892427, 39.126869, 11.493309>,  <28.692511, 39.009861, 11.556092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.892427, 39.126869, 11.493309>,  <29.225624, 39.321884, 11.388671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892427, 39.126869, 11.493309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462117, 0.353049, -0.813513,
		0.304269, -0.798534, -0.519389,
		-0.832987, -0.487545, 0.261594,
		28.642530, 38.980606, 11.571788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008362, 38.972836, 10.781888>,  <29.225624, 39.321884, 11.388671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008362, 38.972836, 10.781888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696163, 38.979633, 11.031860>,  <28.508844, 38.983711, 11.181844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696163, 38.979633, 11.031860>,  <29.008362, 38.972836, 10.781888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696163, 38.979633, 11.031860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547380, 0.464315, -0.696266,
		-0.301999, -0.885507, -0.353092,
		-0.780495, 0.016996, 0.624931,
		28.462015, 38.984734, 11.219339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<30.966328, 32.770020, 26.429499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657261, 33.023293, 26.447706>,  <30.471821, 33.175255, 26.458632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657261, 33.023293, 26.447706>,  <30.966328, 32.770020, 26.429499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657261, 33.023293, 26.447706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149921, 0.251685, -0.956127,
		-0.616856, -0.731942, -0.289395,
		-0.772666, 0.633179, 0.045519,
		30.425461, 33.213245, 26.461363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403696, 32.568035, 25.893623>,  <30.966328, 32.770020, 26.429499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403696, 32.568035, 25.893623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348761, 32.952225, 25.990471>,  <30.315800, 33.182739, 26.048578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348761, 32.952225, 25.990471>,  <30.403696, 32.568035, 25.893623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348761, 32.952225, 25.990471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124442, 0.259227, -0.957766,
		-0.982676, -0.101407, -0.155125,
		-0.137337, 0.960478, 0.242117,
		30.307560, 33.240368, 26.063107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106182, 32.754520, 25.360510>,  <30.403696, 32.568035, 25.893623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106182, 32.754520, 25.360510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188944, 33.099945, 25.544445>,  <30.238602, 33.307201, 25.654806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.188944, 33.099945, 25.544445>,  <30.106182, 32.754520, 25.360510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188944, 33.099945, 25.544445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184264, 0.427202, -0.885181,
		-0.960852, 0.267882, -0.070733,
		0.206907, 0.863561, 0.459839,
		30.251017, 33.359013, 25.682396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628355, 33.306633, 25.025412>,  <30.106182, 32.754520, 25.360510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628355, 33.306633, 25.025412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943054, 33.500496, 25.178324>,  <30.131874, 33.616814, 25.270071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943054, 33.500496, 25.178324>,  <29.628355, 33.306633, 25.025412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943054, 33.500496, 25.178324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037984, 0.580119, -0.813646,
		-0.616106, 0.654654, 0.437998,
		0.786747, 0.484656, 0.382281,
		30.179079, 33.645893, 25.293009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546659, 34.032658, 24.870075>,  <29.628355, 33.306633, 25.025412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546659, 34.032658, 24.870075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937042, 33.984291, 24.942610>,  <30.171272, 33.955269, 24.986132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.937042, 33.984291, 24.942610>,  <29.546659, 34.032658, 24.870075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937042, 33.984291, 24.942610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216567, 0.444202, -0.869358,
		0.024572, 0.887729, 0.459710,
		0.975959, -0.120920, 0.181337,
		30.229830, 33.948013, 24.997011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924795, 34.625767, 24.696817>,  <29.546659, 34.032658, 24.870075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924795, 34.625767, 24.696817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218086, 34.358448, 24.646597>,  <30.394060, 34.198059, 24.616465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.218086, 34.358448, 24.646597>,  <29.924795, 34.625767, 24.696817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218086, 34.358448, 24.646597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319682, 0.501747, -0.803775,
		0.600151, 0.549214, 0.581535,
		0.733228, -0.668292, -0.125550,
		30.438055, 34.157959, 24.608932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301664, 35.029453, 24.196894>,  <29.924795, 34.625767, 24.696817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301664, 35.029453, 24.196894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518246, 34.695137, 24.233294>,  <30.648195, 34.494549, 24.255135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.518246, 34.695137, 24.233294>,  <30.301664, 35.029453, 24.196894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518246, 34.695137, 24.233294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335487, 0.115544, -0.934932,
		0.770893, 0.536752, 0.342959,
		0.541454, -0.835791, 0.091001,
		30.680681, 34.444401, 24.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095848, 35.124760, 24.066788>,  <30.301664, 35.029453, 24.196894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095848, 35.124760, 24.066788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977917, 34.753235, 23.977009>,  <30.907158, 34.530319, 23.923141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.977917, 34.753235, 23.977009>,  <31.095848, 35.124760, 24.066788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977917, 34.753235, 23.977009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285631, 0.138486, -0.948281,
		0.911862, -0.343688, 0.224470,
		-0.294827, -0.928816, -0.224448,
		30.889469, 34.474590, 23.909674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518227, 34.933842, 23.647137>,  <31.095848, 35.124760, 24.066788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518227, 34.933842, 23.647137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210913, 34.703678, 23.534967>,  <31.026524, 34.565578, 23.467665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.210913, 34.703678, 23.534967>,  <31.518227, 34.933842, 23.647137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210913, 34.703678, 23.534967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081866, 0.346164, -0.934595,
		0.634851, -0.740993, -0.218846,
		-0.768286, -0.575413, -0.280424,
		30.980427, 34.531055, 23.450840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745102, 34.770535, 23.055305>,  <31.518227, 34.933842, 23.647137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745102, 34.770535, 23.055305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369465, 34.635799, 23.028040>,  <31.144083, 34.554958, 23.011681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.369465, 34.635799, 23.028040>,  <31.745102, 34.770535, 23.055305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369465, 34.635799, 23.028040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023009, 0.136270, -0.990404,
		0.342892, -0.931650, -0.120220,
		-0.939093, -0.336835, -0.068162,
		31.087736, 34.534748, 23.007591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780106, 34.280800, 22.426699>,  <31.745102, 34.770535, 23.055305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780106, 34.280800, 22.426699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409906, 34.409878, 22.506016>,  <31.187786, 34.487324, 22.553606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.409906, 34.409878, 22.506016>,  <31.780106, 34.280800, 22.426699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409906, 34.409878, 22.506016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138918, 0.197848, -0.970339,
		-0.352357, -0.925593, -0.138279,
		-0.925498, 0.322697, 0.198295,
		31.132257, 34.506687, 22.565504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392630, 33.976517, 21.864733>,  <31.780106, 34.280800, 22.426699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392630, 33.976517, 21.864733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181089, 34.281738, 22.013363>,  <31.054165, 34.464870, 22.102541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181089, 34.281738, 22.013363>,  <31.392630, 33.976517, 21.864733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181089, 34.281738, 22.013363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181298, 0.326136, -0.927775,
		-0.829126, -0.558019, -0.034136,
		-0.528849, 0.763053, 0.371576,
		31.022434, 34.510654, 22.124836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106586, 33.429863, 21.432707>,  <31.392630, 33.976517, 21.864733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106586, 33.429863, 21.432707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504404, 33.424427, 21.391335>,  <31.743095, 33.421165, 21.366512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.504404, 33.424427, 21.391335>,  <31.106586, 33.429863, 21.432707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504404, 33.424427, 21.391335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090878, -0.373941, 0.922989,
		-0.051217, -0.927353, -0.370666,
		0.994544, -0.013587, -0.103428,
		31.802767, 33.420349, 21.360306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205584, 32.718670, 21.601620>,  <31.106586, 33.429863, 21.432707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205584, 32.718670, 21.601620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530994, 32.951202, 21.607599>,  <31.726240, 33.090721, 21.611187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530994, 32.951202, 21.607599>,  <31.205584, 32.718670, 21.601620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530994, 32.951202, 21.607599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208824, -0.316031, 0.925482,
		0.542740, -0.749783, -0.378497,
		0.813527, 0.581335, 0.014950,
		31.775053, 33.125603, 21.612083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610546, 32.182411, 21.732609>,  <31.205584, 32.718670, 21.601620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610546, 32.182411, 21.732609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832232, 32.504772, 21.815912>,  <31.965242, 32.698189, 21.865894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832232, 32.504772, 21.815912>,  <31.610546, 32.182411, 21.732609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832232, 32.504772, 21.815912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209062, -0.376951, 0.902331,
		0.805694, -0.456543, -0.377394,
		0.554212, 0.805901, 0.208261,
		31.998495, 32.746544, 21.878391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220589, 31.996372, 21.841276>,  <31.610546, 32.182411, 21.732609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220589, 31.996372, 21.841276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204826, 32.328545, 22.063566>,  <32.195370, 32.527847, 22.196939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204826, 32.328545, 22.063566>,  <32.220589, 31.996372, 21.841276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204826, 32.328545, 22.063566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280715, -0.524560, 0.803763,
		0.958982, 0.187671, -0.212446,
		-0.039402, 0.830431, 0.555726,
		32.193005, 32.577675, 22.230284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782616, 31.950277, 22.230886>,  <32.220589, 31.996372, 21.841276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782616, 31.950277, 22.230886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541222, 32.217094, 22.405638>,  <32.396385, 32.377186, 22.510489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541222, 32.217094, 22.405638>,  <32.782616, 31.950277, 22.230886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541222, 32.217094, 22.405638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008961, -0.542186, 0.840210,
		0.797324, 0.510970, 0.321224,
		-0.603486, 0.667041, 0.436877,
		32.360176, 32.417206, 22.536701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136986, 32.248241, 22.773701>,  <32.782616, 31.950277, 22.230886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136986, 32.248241, 22.773701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746922, 32.294445, 22.849297>,  <32.512882, 32.322166, 22.894653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.746922, 32.294445, 22.849297>,  <33.136986, 32.248241, 22.773701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746922, 32.294445, 22.849297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120567, -0.438936, 0.890393,
		0.185803, 0.891063, 0.414107,
		-0.975162, 0.115510, 0.188988,
		32.454372, 32.329098, 22.905993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075031, 32.572281, 23.481947>,  <33.136986, 32.248241, 22.773701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075031, 32.572281, 23.481947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709515, 32.422863, 23.418144>,  <32.490204, 32.333210, 23.379864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.709515, 32.422863, 23.418144>,  <33.075031, 32.572281, 23.481947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709515, 32.422863, 23.418144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056267, -0.272499, 0.960509,
		-0.402260, 0.886683, 0.227990,
		-0.913795, -0.373547, -0.159506,
		32.435375, 32.310799, 23.370293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654392, 32.769939, 24.066362>,  <33.075031, 32.572281, 23.481947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654392, 32.769939, 24.066362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457462, 32.458893, 23.909937>,  <32.339302, 32.272266, 23.816082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.457462, 32.458893, 23.909937>,  <32.654392, 32.769939, 24.066362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457462, 32.458893, 23.909937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204697, -0.333248, 0.920350,
		-0.845998, 0.533164, 0.004893,
		-0.492328, -0.777613, -0.391064,
		32.309765, 32.225609, 23.792618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000877, 32.722134, 24.470400>,  <32.654392, 32.769939, 24.066362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000877, 32.722134, 24.470400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072166, 32.373024, 24.288628>,  <32.114941, 32.163559, 24.179564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072166, 32.373024, 24.288628>,  <32.000877, 32.722134, 24.470400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072166, 32.373024, 24.288628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080140, -0.473166, 0.877321,
		-0.980721, -0.119943, -0.154274,
		0.178226, -0.872770, -0.454431,
		32.125633, 32.111195, 24.152298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621506, 32.166977, 24.922710>,  <32.000877, 32.722134, 24.470400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621506, 32.166977, 24.922710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868132, 31.953772, 24.690935>,  <32.016106, 31.825850, 24.551870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.868132, 31.953772, 24.690935>,  <31.621506, 32.166977, 24.922710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868132, 31.953772, 24.690935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120989, -0.663087, 0.738699,
		-0.777953, -0.525561, -0.344347,
		0.616564, -0.533011, -0.579438,
		32.053101, 31.793869, 24.517103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341743, 31.446291, 24.819654>,  <31.621506, 32.166977, 24.922710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341743, 31.446291, 24.819654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734499, 31.411558, 24.752304>,  <31.970152, 31.390718, 24.711893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.734499, 31.411558, 24.752304>,  <31.341743, 31.446291, 24.819654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734499, 31.411558, 24.752304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062287, -0.691393, 0.719789,
		-0.178916, -0.717242, -0.673464,
		0.981890, -0.086834, -0.168376,
		32.029068, 31.385508, 24.701792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517033, 30.657099, 24.752865>,  <31.341743, 31.446291, 24.819654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517033, 30.657099, 24.752865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864027, 30.843254, 24.823160>,  <32.072224, 30.954947, 24.865337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.864027, 30.843254, 24.823160>,  <31.517033, 30.657099, 24.752865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864027, 30.843254, 24.823160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232953, -0.692177, 0.683099,
		0.439548, -0.551639, -0.708867,
		0.867485, 0.465387, 0.175739,
		32.124271, 30.982870, 24.875881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901577, 30.107443, 24.971882>,  <31.517033, 30.657099, 24.752865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901577, 30.107443, 24.971882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072716, 30.445034, 25.101282>,  <32.175400, 30.647589, 25.178923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072716, 30.445034, 25.101282>,  <31.901577, 30.107443, 24.971882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072716, 30.445034, 25.101282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238665, -0.450700, 0.860179,
		0.871772, -0.290816, -0.394258,
		0.427846, 0.843976, 0.323500,
		32.201069, 30.698227, 25.198332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584953, 30.125412, 25.152754>,  <31.901577, 30.107443, 24.971882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584953, 30.125412, 25.152754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423119, 30.408018, 25.385010>,  <32.326015, 30.577581, 25.524363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.423119, 30.408018, 25.385010>,  <32.584953, 30.125412, 25.152754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423119, 30.408018, 25.385010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197805, -0.552287, 0.809847,
		0.892849, 0.442511, 0.083699,
		-0.404592, 0.706515, 0.580640,
		32.301743, 30.619972, 25.559202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492393, 29.273067, 25.323473>,  <32.584953, 30.125412, 25.152754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492393, 29.273067, 25.323473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097351, 29.276634, 25.260805>,  <31.860325, 29.278774, 25.223204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097351, 29.276634, 25.260805>,  <32.492393, 29.273067, 25.323473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097351, 29.276634, 25.260805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156281, -0.034448, -0.987112,
		-0.014197, -0.999367, 0.032628,
		-0.987610, 0.008915, -0.156671,
		31.801067, 29.279310, 25.213804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363571, 28.782948, 24.761215>,  <32.492393, 29.273067, 25.323473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363571, 28.782948, 24.761215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019478, 28.986895, 24.763681>,  <31.813023, 29.109262, 24.765162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019478, 28.986895, 24.763681>,  <32.363571, 28.782948, 24.761215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019478, 28.986895, 24.763681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027722, -0.034696, -0.999013,
		-0.509150, -0.859554, 0.043982,
		-0.860232, 0.509867, 0.006163,
		31.761408, 29.139854, 24.765530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185036, 28.742502, 24.041637>,  <32.363571, 28.782948, 24.761215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185036, 28.742502, 24.041637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866879, 28.919254, 24.207575>,  <31.675985, 29.025307, 24.307137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866879, 28.919254, 24.207575>,  <32.185036, 28.742502, 24.041637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866879, 28.919254, 24.207575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432686, 0.065313, -0.899175,
		-0.424423, -0.894693, 0.139246,
		-0.795391, 0.441881, 0.414842,
		31.628262, 29.051819, 24.332027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676311, 28.339273, 23.882837>,  <32.185036, 28.742502, 24.041637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676311, 28.339273, 23.882837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530811, 28.706308, 23.946983>,  <31.443510, 28.926529, 23.985472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.530811, 28.706308, 23.946983>,  <31.676311, 28.339273, 23.882837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530811, 28.706308, 23.946983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303629, 0.045958, -0.951681,
		-0.880621, -0.394867, 0.261889,
		-0.363752, 0.917588, 0.160365,
		31.421686, 28.981585, 23.995092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962666, 28.319630, 23.560003>,  <31.676311, 28.339273, 23.882837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962666, 28.319630, 23.560003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053473, 28.708574, 23.581810>,  <31.107958, 28.941942, 23.594894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053473, 28.708574, 23.581810>,  <30.962666, 28.319630, 23.560003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053473, 28.708574, 23.581810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403878, 0.144938, -0.903258,
		-0.886197, 0.183038, 0.425620,
		0.227020, 0.972363, 0.054519,
		31.121578, 29.000282, 23.598166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318329, 28.637497, 23.351637>,  <30.962666, 28.319630, 23.560003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318329, 28.637497, 23.351637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601185, 28.919010, 23.324381>,  <30.770899, 29.087919, 23.308027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.601185, 28.919010, 23.324381>,  <30.318329, 28.637497, 23.351637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601185, 28.919010, 23.324381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285058, 0.195567, -0.938347,
		-0.647068, 0.682965, 0.338912,
		0.707138, 0.703784, -0.068139,
		30.813326, 29.130146, 23.303940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022434, 29.276243, 23.144503>,  <30.318329, 28.637497, 23.351637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022434, 29.276243, 23.144503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397898, 29.269062, 23.006750>,  <30.623175, 29.264753, 22.924099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.397898, 29.269062, 23.006750>,  <30.022434, 29.276243, 23.144503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397898, 29.269062, 23.006750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297803, 0.461346, -0.835747,
		0.173884, 0.887039, 0.427700,
		0.938657, -0.017953, -0.344383,
		30.679495, 29.263676, 22.903435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108044, 29.899851, 22.884817>,  <30.022434, 29.276243, 23.144503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108044, 29.899851, 22.884817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412622, 29.709751, 22.708483>,  <30.595369, 29.595692, 22.602682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412622, 29.709751, 22.708483>,  <30.108044, 29.899851, 22.884817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412622, 29.709751, 22.708483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276527, 0.376932, -0.883999,
		0.586284, 0.795023, 0.155595,
		0.761449, -0.475248, -0.440835,
		30.641058, 29.567177, 22.576233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555260, 30.386374, 22.545794>,  <30.108044, 29.899851, 22.884817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555260, 30.386374, 22.545794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648682, 30.045452, 22.358591>,  <30.704735, 29.840899, 22.246269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.648682, 30.045452, 22.358591>,  <30.555260, 30.386374, 22.545794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648682, 30.045452, 22.358591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276716, 0.403154, -0.872293,
		0.932137, 0.333233, -0.141688,
		0.233555, -0.852304, -0.468006,
		30.718748, 29.789761, 22.218189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881140, 30.627403, 21.984543>,  <30.555260, 30.386374, 22.545794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881140, 30.627403, 21.984543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783413, 30.249174, 21.898565>,  <30.724777, 30.022236, 21.846979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783413, 30.249174, 21.898565>,  <30.881140, 30.627403, 21.984543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783413, 30.249174, 21.898565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292572, 0.283212, -0.913341,
		0.924505, -0.160259, -0.345842,
		-0.244318, -0.945573, -0.214943,
		30.710117, 29.965502, 21.834082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304470, 30.411781, 21.347420>,  <30.881140, 30.627403, 21.984543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304470, 30.411781, 21.347420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982286, 30.175524, 21.366920>,  <30.788977, 30.033770, 21.378620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982286, 30.175524, 21.366920>,  <31.304470, 30.411781, 21.347420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982286, 30.175524, 21.366920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259426, 0.277423, -0.925059,
		0.532856, -0.757744, -0.376681,
		-0.805458, -0.590644, 0.048752,
		30.740648, 29.998331, 21.381546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287191, 30.073526, 20.653822>,  <31.304470, 30.411781, 21.347420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287191, 30.073526, 20.653822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922100, 30.022877, 20.809200>,  <30.703045, 29.992487, 20.902428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.922100, 30.022877, 20.809200>,  <31.287191, 30.073526, 20.653822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922100, 30.022877, 20.809200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406080, 0.385809, -0.828402,
		-0.044969, -0.913848, -0.403560,
		-0.912730, -0.126626, 0.388445,
		30.648281, 29.984888, 20.925734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957300, 29.870823, 20.059599>,  <31.287191, 30.073526, 20.653822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957300, 29.870823, 20.059599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.705334, 30.025633, 20.328943>,  <30.554153, 30.118519, 20.490551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.705334, 30.025633, 20.328943>,  <30.957300, 29.870823, 20.059599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705334, 30.025633, 20.328943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473321, 0.496090, -0.727916,
		-0.615770, -0.777243, -0.129309,
		-0.629917, 0.387024, 0.673363,
		30.516359, 30.141741, 20.530952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321747, 29.803255, 19.744175>,  <30.957300, 29.870823, 20.059599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321747, 29.803255, 19.744175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210964, 30.055273, 20.034372>,  <30.144495, 30.206484, 20.208490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.210964, 30.055273, 20.034372>,  <30.321747, 29.803255, 19.744175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210964, 30.055273, 20.034372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747692, 0.332927, -0.574557,
		-0.603533, -0.701572, 0.378873,
		-0.276956, 0.630044, 0.725493,
		30.127878, 30.244286, 20.252020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556282, 29.821611, 19.686283>,  <30.321747, 29.803255, 19.744175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556282, 29.821611, 19.686283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689533, 30.156408, 19.859934>,  <29.769484, 30.357286, 19.964125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.689533, 30.156408, 19.859934>,  <29.556282, 29.821611, 19.686283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689533, 30.156408, 19.859934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481170, 0.546872, -0.685132,
		-0.810863, 0.019348, 0.584915,
		0.333130, 0.836993, 0.434128,
		29.789473, 30.407507, 19.990171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058266, 30.223719, 19.549427>,  <29.556282, 29.821611, 19.686283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058266, 30.223719, 19.549427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333662, 30.482986, 19.679569>,  <29.498899, 30.638548, 19.757654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333662, 30.482986, 19.679569>,  <29.058266, 30.223719, 19.549427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333662, 30.482986, 19.679569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428315, 0.725417, -0.538810,
		-0.585259, 0.231612, 0.777064,
		0.688490, 0.648172, 0.325354,
		29.540209, 30.677439, 19.777176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723406, 30.869787, 19.738829>,  <29.058266, 30.223719, 19.549427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723406, 30.869787, 19.738829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096436, 30.968214, 19.633186>,  <29.320253, 31.027269, 19.569801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.096436, 30.968214, 19.633186>,  <28.723406, 30.869787, 19.738829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096436, 30.968214, 19.633186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360971, 0.637334, -0.680812,
		0.000799, 0.730245, 0.683185,
		0.932577, 0.246067, -0.264106,
		29.376209, 31.042034, 19.553955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719044, 31.487370, 19.581381>,  <28.723406, 30.869787, 19.738829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719044, 31.487370, 19.581381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080284, 31.431751, 19.418861>,  <29.297028, 31.398380, 19.321350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.080284, 31.431751, 19.418861>,  <28.719044, 31.487370, 19.581381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080284, 31.431751, 19.418861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255282, 0.586969, -0.768309,
		0.345316, 0.797579, 0.494595,
		0.903099, -0.139048, -0.406297,
		29.351213, 31.390038, 19.296972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103870, 31.976929, 19.689203>,  <28.719044, 31.487370, 19.581381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103870, 31.976929, 19.689203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198587, 31.807888, 19.339270>,  <29.255417, 31.706463, 19.129309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198587, 31.807888, 19.339270>,  <29.103870, 31.976929, 19.689203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198587, 31.807888, 19.339270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601039, 0.643744, -0.473652,
		0.763336, 0.637967, -0.101567,
		0.236791, -0.422601, -0.874836,
		29.269625, 31.681108, 19.076818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014280, 32.525719, 19.279686>,  <29.103870, 31.976929, 19.689203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014280, 32.525719, 19.279686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.030340, 32.212875, 19.030947>,  <29.039976, 32.025169, 18.881702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.030340, 32.212875, 19.030947>,  <29.014280, 32.525719, 19.279686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030340, 32.212875, 19.030947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513981, 0.517535, -0.684092,
		0.856862, 0.347084, -0.381209,
		0.040148, -0.782106, -0.621850,
		29.042385, 31.978243, 18.844391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319574, 32.689854, 18.555685>,  <29.014280, 32.525719, 19.279686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319574, 32.689854, 18.555685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129242, 32.354309, 18.449930>,  <29.015043, 32.152985, 18.386477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.129242, 32.354309, 18.449930>,  <29.319574, 32.689854, 18.555685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129242, 32.354309, 18.449930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318301, 0.444461, -0.837340,
		0.819920, -0.314277, -0.478498,
		-0.475831, -0.838859, -0.264388,
		28.986492, 32.102650, 18.370613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464746, 32.572418, 17.852806>,  <29.319574, 32.689854, 18.555685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464746, 32.572418, 17.852806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134903, 32.356209, 17.919571>,  <28.936996, 32.226482, 17.959629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.134903, 32.356209, 17.919571>,  <29.464746, 32.572418, 17.852806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134903, 32.356209, 17.919571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360234, 0.274228, -0.891645,
		0.436182, -0.795383, -0.420845,
		-0.824607, -0.540522, 0.166911,
		28.887522, 32.194054, 17.969645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369608, 32.175312, 17.222719>,  <29.464746, 32.572418, 17.852806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369608, 32.175312, 17.222719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012651, 32.171024, 17.403172>,  <28.798477, 32.168453, 17.511444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.012651, 32.171024, 17.403172>,  <29.369608, 32.175312, 17.222719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012651, 32.171024, 17.403172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448421, 0.133013, -0.883870,
		-0.050532, -0.991056, -0.123507,
		-0.892393, -0.010719, 0.451132,
		28.744934, 32.167809, 17.538511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936708, 31.671980, 16.963377>,  <29.369608, 32.175312, 17.222719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936708, 31.671980, 16.963377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675312, 31.942486, 17.099388>,  <28.518475, 32.104790, 17.180994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.675312, 31.942486, 17.099388>,  <28.936708, 31.671980, 16.963377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675312, 31.942486, 17.099388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461766, -0.000228, -0.887002,
		-0.599770, -0.736659, 0.312425,
		-0.653489, 0.676264, 0.340028,
		28.479265, 32.145367, 17.201397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372957, 31.376797, 16.699163>,  <28.936708, 31.671980, 16.963377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372957, 31.376797, 16.699163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.260880, 31.745096, 16.807760>,  <28.193634, 31.966076, 16.872919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.260880, 31.745096, 16.807760>,  <28.372957, 31.376797, 16.699163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260880, 31.745096, 16.807760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605186, 0.050105, -0.794506,
		-0.745146, -0.386919, 0.543186,
		-0.280193, 0.920751, 0.271494,
		28.176821, 32.021320, 16.889208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707813, 31.340801, 16.404568>,  <28.372957, 31.376797, 16.699163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707813, 31.340801, 16.404568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778641, 31.727104, 16.480425>,  <27.821136, 31.958885, 16.525938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778641, 31.727104, 16.480425>,  <27.707813, 31.340801, 16.404568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778641, 31.727104, 16.480425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587628, 0.258310, -0.766792,
		-0.789519, 0.024335, 0.613243,
		0.177067, 0.965755, 0.189641,
		27.831760, 32.016830, 16.537317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091124, 31.615126, 16.435400>,  <27.707813, 31.340801, 16.404568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091124, 31.615126, 16.435400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.358795, 31.898932, 16.347046>,  <27.519398, 32.069214, 16.294033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.358795, 31.898932, 16.347046>,  <27.091124, 31.615126, 16.435400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358795, 31.898932, 16.347046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515880, 0.229617, -0.825314,
		-0.534853, 0.666233, 0.519679,
		0.669178, 0.709514, -0.220885,
		27.559549, 32.111786, 16.280781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744534, 32.111744, 16.163498>,  <27.091124, 31.615126, 16.435400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744534, 32.111744, 16.163498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.117361, 32.183475, 16.037586>,  <27.341059, 32.226517, 15.962040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.117361, 32.183475, 16.037586>,  <26.744534, 32.111744, 16.163498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117361, 32.183475, 16.037586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352410, 0.247411, -0.902549,
		-0.083977, 0.952170, 0.293803,
		0.932070, 0.179333, -0.314777,
		27.396982, 32.237274, 15.943153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984001, 32.789711, 16.477589>,  <26.744534, 32.111744, 16.163498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984001, 32.789711, 16.477589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.586809, 32.809090, 16.520744>,  <26.348494, 32.820717, 16.546638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.586809, 32.809090, 16.520744>,  <26.984001, 32.789711, 16.477589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586809, 32.809090, 16.520744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089780, -0.285039, 0.954302,
		0.076988, 0.957291, 0.278689,
		-0.992981, 0.048449, 0.107890,
		26.288914, 32.823624, 16.553112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810078, 33.224255, 17.047827>,  <26.984001, 32.789711, 16.477589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810078, 33.224255, 17.047827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.513945, 32.964802, 16.977186>,  <26.336266, 32.809132, 16.934801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.513945, 32.964802, 16.977186>,  <26.810078, 33.224255, 17.047827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513945, 32.964802, 16.977186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054336, -0.319587, 0.945998,
		-0.670041, 0.690757, 0.271844,
		-0.740333, -0.648628, -0.176604,
		26.291845, 32.770214, 16.924206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245552, 33.302006, 17.587934>,  <26.810078, 33.224255, 17.047827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245552, 33.302006, 17.587934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.180374, 32.933636, 17.446320>,  <26.141268, 32.712612, 17.361351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.180374, 32.933636, 17.446320>,  <26.245552, 33.302006, 17.587934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180374, 32.933636, 17.446320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151501, -0.331223, 0.931310,
		-0.974934, 0.205391, -0.085549,
		-0.162947, -0.920926, -0.354038,
		26.131491, 32.657356, 17.340109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550356, 32.979614, 17.990446>,  <26.245552, 33.302006, 17.587934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550356, 32.979614, 17.990446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.775715, 32.681881, 17.847029>,  <25.910931, 32.503242, 17.760979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.775715, 32.681881, 17.847029>,  <25.550356, 32.979614, 17.990446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775715, 32.681881, 17.847029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053483, -0.465919, 0.883209,
		-0.824453, -0.478422, -0.302307,
		0.563397, -0.744333, -0.358541,
		25.944735, 32.458580, 17.739466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148888, 32.453667, 18.205582>,  <25.550356, 32.979614, 17.990446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148888, 32.453667, 18.205582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.511173, 32.323746, 18.096634>,  <25.728544, 32.245792, 18.031265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.511173, 32.323746, 18.096634>,  <25.148888, 32.453667, 18.205582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511173, 32.323746, 18.096634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016839, -0.614469, 0.788761,
		-0.423553, -0.718979, -0.551064,
		0.905715, -0.324803, -0.272367,
		25.782888, 32.226303, 18.014923>
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
