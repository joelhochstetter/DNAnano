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
	<23.900526, 35.121086, 35.161381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288382, 35.024826, 35.143978>,  <24.521095, 34.967072, 35.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288382, 35.024826, 35.143978>,  <23.900526, 35.121086, 35.161381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288382, 35.024826, 35.143978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203009, -0.692911, -0.691854,
		0.136347, 0.679680, -0.720725,
		0.969637, -0.240646, -0.043505,
		24.579273, 34.952633, 35.130928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.208338, 34.952591, 34.490406>,  <23.900526, 35.121086, 35.161381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.208338, 34.952591, 34.490406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428082, 34.730492, 34.740177>,  <24.559929, 34.597233, 34.890038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428082, 34.730492, 34.740177>,  <24.208338, 34.952591, 34.490406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428082, 34.730492, 34.740177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001920, -0.746450, -0.665439,
		0.835583, 0.366765, -0.409004,
		0.549360, -0.555244, 0.624426,
		24.592890, 34.563919, 34.927505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935797, 34.727432, 34.070450>,  <24.208338, 34.952591, 34.490406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935797, 34.727432, 34.070450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761925, 34.485538, 34.337387>,  <24.657600, 34.340405, 34.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761925, 34.485538, 34.337387>,  <24.935797, 34.727432, 34.070450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761925, 34.485538, 34.337387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177990, -0.784086, -0.594583,
		0.882821, -0.139673, 0.448463,
		-0.434681, -0.604732, 0.667347,
		24.631521, 34.304119, 34.537590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088945, 33.988613, 33.878494>,  <24.935797, 34.727432, 34.070450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088945, 33.988613, 33.878494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880705, 33.925396, 34.214111>,  <24.755760, 33.887466, 34.415482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880705, 33.925396, 34.214111>,  <25.088945, 33.988613, 33.878494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880705, 33.925396, 34.214111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112744, -0.986838, -0.115927,
		0.846324, 0.034246, 0.531566,
		-0.520599, -0.158043, 0.839046,
		24.724525, 33.877983, 34.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859711, 34.148834, 33.249771>,  <25.088945, 33.988613, 33.878494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859711, 34.148834, 33.249771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105337, 34.450256, 33.343643>,  <25.252712, 34.631111, 33.399967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105337, 34.450256, 33.343643>,  <24.859711, 34.148834, 33.249771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105337, 34.450256, 33.343643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768307, -0.502685, -0.396248,
		-0.180627, 0.423627, -0.887645,
		0.614067, 0.753557, 0.234677,
		25.289557, 34.676323, 33.414047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254812, 34.363625, 32.716652>,  <24.859711, 34.148834, 33.249771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254812, 34.363625, 32.716652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468180, 34.431149, 33.048187>,  <25.596201, 34.471661, 33.247108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468180, 34.431149, 33.048187>,  <25.254812, 34.363625, 32.716652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468180, 34.431149, 33.048187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718312, -0.607822, -0.338497,
		0.446642, 0.775923, -0.445482,
		0.533421, 0.168808, 0.828834,
		25.628206, 34.481792, 33.296837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870533, 34.718426, 32.497875>,  <25.254812, 34.363625, 32.716652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870533, 34.718426, 32.497875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947277, 34.540188, 32.847649>,  <25.993324, 34.433247, 33.057514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947277, 34.540188, 32.847649>,  <25.870533, 34.718426, 32.497875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947277, 34.540188, 32.847649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694585, -0.567813, -0.441746,
		0.693355, 0.692123, 0.200561,
		0.191861, -0.445593, 0.874435,
		26.004835, 34.406509, 33.109978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662140, 34.672520, 32.578865>,  <25.870533, 34.718426, 32.497875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662140, 34.672520, 32.578865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465452, 34.411404, 32.809368>,  <26.347439, 34.254734, 32.947670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.465452, 34.411404, 32.809368>,  <26.662140, 34.672520, 32.578865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.465452, 34.411404, 32.809368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724293, -0.673976, -0.145452,
		0.483335, 0.345859, 0.804219,
		-0.491719, -0.652792, 0.576259,
		26.317936, 34.215565, 32.982246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031487, 34.547886, 33.204826>,  <26.662140, 34.672520, 32.578865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031487, 34.547886, 33.204826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802830, 34.224983, 33.146084>,  <26.665636, 34.031242, 33.110840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.802830, 34.224983, 33.146084>,  <27.031487, 34.547886, 33.204826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802830, 34.224983, 33.146084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807681, -0.585139, 0.072551,
		-0.144497, -0.077138, 0.986494,
		-0.571640, -0.807256, -0.146853,
		26.631338, 33.982807, 33.102028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268911, 34.037460, 33.702877>,  <27.031487, 34.547886, 33.204826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268911, 34.037460, 33.702877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086573, 33.839054, 33.407261>,  <26.977169, 33.720013, 33.229893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086573, 33.839054, 33.407261>,  <27.268911, 34.037460, 33.702877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086573, 33.839054, 33.407261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778661, -0.624456, -0.061176,
		-0.431153, -0.603347, 0.670880,
		-0.455845, -0.496012, -0.739038,
		26.949820, 33.690250, 33.185551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310303, 33.330853, 33.785915>,  <27.268911, 34.037460, 33.702877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310303, 33.330853, 33.785915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274134, 33.374397, 33.389942>,  <27.252432, 33.400524, 33.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.274134, 33.374397, 33.389942>,  <27.310303, 33.330853, 33.785915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274134, 33.374397, 33.389942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844178, -0.518998, -0.134181,
		-0.528382, -0.847815, -0.044970,
		-0.090421, 0.108862, -0.989936,
		27.247007, 33.407055, 33.092960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526846, 32.759411, 33.949726>,  <27.310303, 33.330853, 33.785915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526846, 32.759411, 33.949726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696007, 32.534954, 34.234337>,  <27.797503, 32.400280, 34.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696007, 32.534954, 34.234337>,  <27.526846, 32.759411, 33.949726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696007, 32.534954, 34.234337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613782, -0.400274, -0.680480,
		0.666654, 0.724498, 0.175144,
		0.422901, -0.561145, 0.711528,
		27.822878, 32.366611, 34.447796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811613, 32.290520, 33.374821>,  <27.526846, 32.759411, 33.949726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811613, 32.290520, 33.374821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838835, 31.934277, 33.194958>,  <27.855167, 31.720531, 33.087040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838835, 31.934277, 33.194958>,  <27.811613, 32.290520, 33.374821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838835, 31.934277, 33.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865003, -0.171907, 0.471399,
		-0.497130, -0.421038, 0.758676,
		0.068055, -0.890604, -0.449660,
		27.859251, 31.667095, 33.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421757, 32.641167, 33.056938>,  <27.811613, 32.290520, 33.374821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421757, 32.641167, 33.056938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196676, 32.508926, 32.753868>,  <28.061628, 32.429585, 32.572025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196676, 32.508926, 32.753868>,  <28.421757, 32.641167, 33.056938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196676, 32.508926, 32.753868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711760, 0.659909, 0.240661,
		0.420436, 0.674705, -0.606636,
		-0.562700, -0.330597, -0.757677,
		28.027866, 32.409748, 32.526566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136829, 33.220551, 32.768860>,  <28.421757, 32.641167, 33.056938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136829, 33.220551, 32.768860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882961, 32.931511, 32.659279>,  <27.730640, 32.758087, 32.593533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882961, 32.931511, 32.659279>,  <28.136829, 33.220551, 32.768860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882961, 32.931511, 32.659279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772769, 0.595682, 0.219070,
		0.004887, 0.350735, -0.936462,
		-0.634669, -0.722598, -0.273948,
		27.692560, 32.714733, 32.577095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614454, 33.337589, 32.228386>,  <28.136829, 33.220551, 32.768860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614454, 33.337589, 32.228386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448614, 33.089520, 32.494766>,  <27.349110, 32.940678, 32.654594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448614, 33.089520, 32.494766>,  <27.614454, 33.337589, 32.228386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448614, 33.089520, 32.494766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788993, 0.609619, 0.076511,
		-0.453429, -0.493712, -0.742059,
		-0.414599, -0.620172, 0.665954,
		27.324234, 32.903469, 32.694553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979776, 33.147480, 32.008125>,  <27.614454, 33.337589, 32.228386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979776, 33.147480, 32.008125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945896, 33.129803, 32.406296>,  <26.925568, 33.119194, 32.645199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945896, 33.129803, 32.406296>,  <26.979776, 33.147480, 32.008125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945896, 33.129803, 32.406296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715883, 0.697578, -0.029943,
		-0.693063, -0.715145, -0.090727,
		-0.084703, -0.044198, 0.995425,
		26.920485, 33.116543, 32.704922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239330, 33.041588, 32.276608>,  <26.979776, 33.147480, 32.008125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239330, 33.041588, 32.276608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438581, 33.201832, 32.584213>,  <26.558132, 33.297977, 32.768776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438581, 33.201832, 32.584213>,  <26.239330, 33.041588, 32.276608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438581, 33.201832, 32.584213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733239, 0.668014, 0.126959,
		-0.462849, -0.627111, 0.626501,
		0.498129, 0.400612, 0.769011,
		26.588020, 33.322014, 32.814915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926958, 32.948711, 32.915382>,  <26.239330, 33.041588, 32.276608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926958, 32.948711, 32.915382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140808, 33.281029, 32.977299>,  <26.269119, 33.480419, 33.014446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140808, 33.281029, 32.977299>,  <25.926958, 32.948711, 32.915382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140808, 33.281029, 32.977299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840299, 0.503134, 0.201872,
		0.089835, -0.237995, 0.967103,
		0.534627, 0.830791, 0.154788,
		26.301197, 33.530266, 33.023735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.574955, 33.232750, 33.500175>,  <25.926958, 32.948711, 32.915382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.574955, 33.232750, 33.500175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794285, 33.519890, 33.328583>,  <25.925882, 33.692173, 33.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794285, 33.519890, 33.328583>,  <25.574955, 33.232750, 33.500175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794285, 33.519890, 33.328583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751554, 0.647975, 0.123673,
		0.366749, 0.254590, 0.894807,
		0.548327, 0.717852, -0.428982,
		25.958782, 33.735245, 33.199886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230560, 33.417244, 33.837692>,  <25.574955, 33.232750, 33.500175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230560, 33.417244, 33.837692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330990, 33.752892, 33.644680>,  <26.391247, 33.954281, 33.528873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330990, 33.752892, 33.644680>,  <26.230560, 33.417244, 33.837692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330990, 33.752892, 33.644680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831737, 0.442021, 0.335903,
		0.495152, 0.317004, 0.808908,
		0.251072, 0.839122, -0.482531,
		26.406311, 34.004627, 33.499920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146492, 33.898411, 34.331795>,  <26.230560, 33.417244, 33.837692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146492, 33.898411, 34.331795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136551, 34.067818, 33.969574>,  <26.130587, 34.169460, 33.752243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136551, 34.067818, 33.969574>,  <26.146492, 33.898411, 34.331795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136551, 34.067818, 33.969574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790502, 0.546171, 0.277135,
		0.611955, 0.722725, 0.321216,
		-0.024854, 0.423516, -0.905548,
		26.129095, 34.194874, 33.697910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166338, 34.588360, 34.422928>,  <26.146492, 33.898411, 34.331795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166338, 34.588360, 34.422928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992310, 34.556908, 34.064144>,  <25.887894, 34.538036, 33.848873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992310, 34.556908, 34.064144>,  <26.166338, 34.588360, 34.422928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992310, 34.556908, 34.064144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558092, 0.805288, 0.200108,
		0.706574, 0.587646, -0.394240,
		-0.435069, -0.078631, -0.896957,
		25.861788, 34.533318, 33.795055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.301355, 35.211342, 33.980350>,  <26.166338, 34.588360, 34.422928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.301355, 35.211342, 33.980350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957880, 35.010201, 33.940765>,  <25.751795, 34.889515, 33.917015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957880, 35.010201, 33.940765>,  <26.301355, 35.211342, 33.980350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957880, 35.010201, 33.940765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508433, 0.811571, 0.287834,
		-0.064422, 0.297476, -0.952553,
		-0.858688, -0.502852, -0.098964,
		25.700274, 34.859344, 33.911076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760292, 35.679802, 33.608536>,  <26.301355, 35.211342, 33.980350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760292, 35.679802, 33.608536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526655, 35.385624, 33.745914>,  <25.386473, 35.209118, 33.828342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526655, 35.385624, 33.745914>,  <25.760292, 35.679802, 33.608536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526655, 35.385624, 33.745914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659624, 0.676656, 0.327158,
		-0.473005, -0.035458, -0.880346,
		-0.584091, -0.735445, 0.343451,
		25.351427, 35.164989, 33.848949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090290, 35.852180, 33.349419>,  <25.760292, 35.679802, 33.608536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090290, 35.852180, 33.349419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075094, 35.616386, 33.672173>,  <25.065977, 35.474911, 33.865826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.075094, 35.616386, 33.672173>,  <25.090290, 35.852180, 33.349419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.075094, 35.616386, 33.672173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842176, 0.453508, 0.291668,
		-0.537863, -0.668458, -0.513680,
		-0.037990, -0.589486, 0.806884,
		25.063698, 35.439541, 33.914238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392729, 36.532776, 33.476101>,  <25.090290, 35.852180, 33.349419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392729, 36.532776, 33.476101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703861, 36.782101, 33.443962>,  <25.890541, 36.931698, 33.424679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703861, 36.782101, 33.443962>,  <25.392729, 36.532776, 33.476101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703861, 36.782101, 33.443962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028020, 0.162111, 0.986374,
		0.627849, -0.764981, 0.143560,
		0.777831, 0.623317, -0.080347,
		25.937210, 36.969097, 33.419857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929520, 36.278828, 33.964859>,  <25.392729, 36.532776, 33.476101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929520, 36.278828, 33.964859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948402, 36.675846, 33.919899>,  <25.959732, 36.914055, 33.892925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948402, 36.675846, 33.919899>,  <25.929520, 36.278828, 33.964859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948402, 36.675846, 33.919899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054334, 0.109805, 0.992467,
		0.997406, -0.052958, -0.048745,
		0.047207, 0.992541, -0.112397,
		25.962564, 36.973610, 33.886181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450628, 36.463455, 34.431828>,  <25.929520, 36.278828, 33.964859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450628, 36.463455, 34.431828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208534, 36.775845, 34.370167>,  <26.063278, 36.963280, 34.333168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.208534, 36.775845, 34.370167>,  <26.450628, 36.463455, 34.431828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.208534, 36.775845, 34.370167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013563, 0.183507, 0.982925,
		0.795931, 0.596993, -0.100472,
		-0.605236, 0.780977, -0.154156,
		26.026964, 37.010139, 34.323921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773726, 36.983059, 34.676601>,  <26.450628, 36.463455, 34.431828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773726, 36.983059, 34.676601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389019, 37.091282, 34.693569>,  <26.158195, 37.156216, 34.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389019, 37.091282, 34.693569>,  <26.773726, 36.983059, 34.676601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389019, 37.091282, 34.693569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101688, 0.208995, 0.972615,
		0.254288, 0.939743, -0.228518,
		-0.961768, 0.270561, 0.042415,
		26.100489, 37.172451, 34.706295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846268, 37.344925, 35.267776>,  <26.773726, 36.983059, 34.676601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846268, 37.344925, 35.267776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452265, 37.299541, 35.215801>,  <26.215862, 37.272312, 35.184616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452265, 37.299541, 35.215801>,  <26.846268, 37.344925, 35.267776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452265, 37.299541, 35.215801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136827, 0.055190, 0.989056,
		-0.105045, 0.992009, -0.069887,
		-0.985010, -0.113458, -0.129936,
		26.156761, 37.265503, 35.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516884, 37.899433, 35.646244>,  <26.846268, 37.344925, 35.267776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516884, 37.899433, 35.646244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261965, 37.593212, 35.610970>,  <26.109013, 37.409481, 35.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261965, 37.593212, 35.610970>,  <26.516884, 37.899433, 35.646244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261965, 37.593212, 35.610970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262501, 0.108067, 0.958861,
		-0.724529, 0.634232, -0.269829,
		-0.637300, -0.765553, -0.088189,
		26.070774, 37.363544, 35.584515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905365, 38.178799, 35.933208>,  <26.516884, 37.899433, 35.646244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905365, 38.178799, 35.933208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923426, 37.781116, 35.972218>,  <25.934263, 37.542507, 35.995621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923426, 37.781116, 35.972218>,  <25.905365, 38.178799, 35.933208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923426, 37.781116, 35.972218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066033, 0.094436, 0.993338,
		-0.996795, -0.051291, -0.061387,
		0.045153, -0.994209, 0.097520,
		25.936972, 37.482853, 36.001472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917459, 38.063278, 36.571541>,  <25.905365, 38.178799, 35.933208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917459, 38.063278, 36.571541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119522, 37.728893, 36.485767>,  <26.240759, 37.528263, 36.434303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119522, 37.728893, 36.485767>,  <25.917459, 38.063278, 36.571541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119522, 37.728893, 36.485767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198492, -0.129262, 0.971541,
		-0.839892, -0.533343, 0.100635,
		0.505156, -0.835965, -0.214430,
		26.271069, 37.478104, 36.421440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583271, 37.427246, 36.853546>,  <25.917459, 38.063278, 36.571541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583271, 37.427246, 36.853546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982597, 37.413994, 36.834492>,  <26.222193, 37.406040, 36.823059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982597, 37.413994, 36.834492>,  <25.583271, 37.427246, 36.853546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982597, 37.413994, 36.834492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040424, -0.191893, 0.980583,
		-0.041630, -0.980856, -0.190231,
		0.998315, -0.033131, -0.047639,
		26.282091, 37.404053, 36.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854326, 36.810516, 37.168980>,  <25.583271, 37.427246, 36.853546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854326, 36.810516, 37.168980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136150, 37.093899, 37.185425>,  <26.305244, 37.263927, 37.195293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136150, 37.093899, 37.185425>,  <25.854326, 36.810516, 37.168980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136150, 37.093899, 37.185425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018372, -0.039712, 0.999042,
		0.709406, -0.704641, -0.014964,
		0.704560, 0.708452, 0.041117,
		26.347519, 37.306435, 37.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210711, 36.433994, 36.633533>,  <25.854326, 36.810516, 37.168980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210711, 36.433994, 36.633533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947309, 36.727200, 36.565346>,  <25.789268, 36.903122, 36.524433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947309, 36.727200, 36.565346>,  <26.210711, 36.433994, 36.633533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947309, 36.727200, 36.565346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114953, -0.321823, -0.939796,
		-0.743747, -0.599262, 0.296184,
		-0.658503, 0.733018, -0.170468,
		25.749758, 36.947105, 36.514206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834032, 36.174931, 36.135391>,  <26.210711, 36.433994, 36.633533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834032, 36.174931, 36.135391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825840, 36.574112, 36.111134>,  <25.820925, 36.813622, 36.096581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.825840, 36.574112, 36.111134>,  <25.834032, 36.174931, 36.135391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.825840, 36.574112, 36.111134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054274, -0.059454, -0.996754,
		-0.998316, -0.023706, -0.052945,
		-0.020481, 0.997949, -0.060640,
		25.819696, 36.873497, 36.092941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332882, 36.328564, 35.553940>,  <25.834032, 36.174931, 36.135391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332882, 36.328564, 35.553940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532171, 36.675354, 35.558395>,  <25.651745, 36.883427, 35.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532171, 36.675354, 35.558395>,  <25.332882, 36.328564, 35.553940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532171, 36.675354, 35.558395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114207, 0.078353, -0.990362,
		-0.859493, 0.492152, 0.138052,
		0.498225, 0.866976, 0.011137,
		25.681639, 36.935448, 35.561737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928570, 37.006023, 35.332748>,  <25.332882, 36.328564, 35.553940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928570, 37.006023, 35.332748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316940, 37.013920, 35.237324>,  <25.549963, 37.018658, 35.180069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.316940, 37.013920, 35.237324>,  <24.928570, 37.006023, 35.332748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.316940, 37.013920, 35.237324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236403, 0.235569, -0.942667,
		0.037588, 0.971657, 0.233387,
		0.970928, 0.019740, -0.238558,
		25.608219, 37.019840, 35.165756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.852777, 37.428944, 34.811905>,  <24.928570, 37.006023, 35.332748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.852777, 37.428944, 34.811905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240931, 37.348335, 34.758625>,  <25.473824, 37.299973, 34.726658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240931, 37.348335, 34.758625>,  <24.852777, 37.428944, 34.811905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240931, 37.348335, 34.758625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078642, 0.257837, -0.962983,
		0.228404, 0.944939, 0.234354,
		0.970385, -0.201519, -0.133203,
		25.532045, 37.287880, 34.718662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166132, 37.940441, 34.290634>,  <24.852777, 37.428944, 34.811905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166132, 37.940441, 34.290634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474115, 37.685333, 34.298702>,  <25.658905, 37.532269, 34.303543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474115, 37.685333, 34.298702>,  <25.166132, 37.940441, 34.290634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474115, 37.685333, 34.298702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149699, 0.149819, -0.977315,
		0.620283, 0.755513, 0.210828,
		0.769960, -0.637773, 0.020169,
		25.705103, 37.493999, 34.304752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722919, 38.257355, 33.907852>,  <25.166132, 37.940441, 34.290634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722919, 38.257355, 33.907852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773035, 37.860603, 33.899143>,  <25.803104, 37.622551, 33.893917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773035, 37.860603, 33.899143>,  <25.722919, 38.257355, 33.907852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773035, 37.860603, 33.899143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118687, 0.036777, -0.992250,
		0.984995, 0.121733, 0.122332,
		0.125289, -0.991881, -0.021777,
		25.810621, 37.563038, 33.892609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304314, 38.015629, 33.499222>,  <25.722919, 38.257355, 33.907852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304314, 38.015629, 33.499222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051096, 37.706085, 33.491341>,  <25.899164, 37.520359, 33.486610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051096, 37.706085, 33.491341>,  <26.304314, 38.015629, 33.499222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051096, 37.706085, 33.491341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134101, -0.084562, -0.987353,
		0.762410, -0.627682, 0.157308,
		-0.633046, -0.773863, -0.019702,
		25.861181, 37.473927, 33.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564137, 37.432327, 33.062672>,  <26.304314, 38.015629, 33.499222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564137, 37.432327, 33.062672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165062, 37.455486, 33.076923>,  <25.925617, 37.469379, 33.085476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165062, 37.455486, 33.076923>,  <26.564137, 37.432327, 33.062672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165062, 37.455486, 33.076923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017383, 0.289469, -0.957029,
		-0.065723, -0.955435, -0.287793,
		-0.997686, 0.057896, 0.035633,
		25.865755, 37.472855, 33.087612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326572, 37.452415, 33.083931>,  <26.564137, 37.432327, 33.062672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326572, 37.452415, 33.083931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613640, 37.188316, 33.172497>,  <27.785881, 37.029858, 33.225636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613640, 37.188316, 33.172497>,  <27.326572, 37.452415, 33.083931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613640, 37.188316, 33.172497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692159, 0.641335, -0.331066,
		0.076582, 0.390852, 0.917262,
		0.717670, -0.660245, 0.221417,
		27.828941, 36.990242, 33.238922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835169, 37.702759, 33.455780>,  <27.326572, 37.452415, 33.083931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835169, 37.702759, 33.455780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012810, 37.422215, 33.232758>,  <28.119394, 37.253887, 33.098946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012810, 37.422215, 33.232758>,  <27.835169, 37.702759, 33.455780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012810, 37.422215, 33.232758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630289, 0.686830, -0.361940,
		0.636795, -0.190681, 0.747083,
		0.444103, -0.701360, -0.557554,
		28.146040, 37.211807, 33.065491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611397, 37.789936, 33.427345>,  <27.835169, 37.702759, 33.455780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611397, 37.789936, 33.427345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470472, 37.634396, 33.086834>,  <28.385918, 37.541073, 32.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470472, 37.634396, 33.086834>,  <28.611397, 37.789936, 33.427345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470472, 37.634396, 33.086834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557386, 0.643500, -0.524622,
		0.751796, -0.659320, -0.009972,
		-0.352311, -0.388850, -0.851277,
		28.364779, 37.517742, 32.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152563, 37.389488, 32.936649>,  <28.611397, 37.789936, 33.427345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152563, 37.389488, 32.936649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861906, 37.599072, 32.758904>,  <28.687511, 37.724823, 32.652256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861906, 37.599072, 32.758904>,  <29.152563, 37.389488, 32.936649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861906, 37.599072, 32.758904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686383, 0.525887, -0.502316,
		-0.029510, -0.670006, -0.741769,
		-0.726642, 0.523961, -0.444361,
		28.643913, 37.756260, 32.625595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860571, 37.286510, 32.849220>,  <29.152563, 37.389488, 32.936649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860571, 37.286510, 32.849220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051970, 37.435631, 33.167229>,  <30.166809, 37.525101, 33.358036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051970, 37.435631, 33.167229>,  <29.860571, 37.286510, 32.849220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051970, 37.435631, 33.167229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739267, 0.317547, -0.593842,
		-0.473840, 0.871887, -0.123651,
		0.478498, 0.372797, 0.795024,
		30.195518, 37.547470, 33.405735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222738, 37.749622, 32.414516>,  <29.860571, 37.286510, 32.849220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222738, 37.749622, 32.414516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361979, 37.701668, 32.786419>,  <30.445522, 37.672897, 33.009560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361979, 37.701668, 32.786419>,  <30.222738, 37.749622, 32.414516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361979, 37.701668, 32.786419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905335, 0.300389, -0.300225,
		-0.243298, 0.946253, 0.213100,
		0.348102, -0.119883, 0.929760,
		30.466410, 37.665703, 33.065346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429916, 38.464813, 32.830616>,  <30.222738, 37.749622, 32.414516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429916, 38.464813, 32.830616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639435, 38.134003, 32.912266>,  <30.765146, 37.935516, 32.961258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639435, 38.134003, 32.912266>,  <30.429916, 38.464813, 32.830616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639435, 38.134003, 32.912266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851628, 0.513800, -0.103631,
		-0.019175, 0.228122, 0.973444,
		0.523796, -0.827024, 0.204127,
		30.796574, 37.885895, 32.973503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004818, 38.631962, 33.357582>,  <30.429916, 38.464813, 32.830616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004818, 38.631962, 33.357582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095530, 38.280582, 33.189346>,  <31.149956, 38.069756, 33.088406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095530, 38.280582, 33.189346>,  <31.004818, 38.631962, 33.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095530, 38.280582, 33.189346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955364, 0.284594, -0.079280,
		0.189342, -0.383841, 0.903778,
		0.226779, -0.878449, -0.420594,
		31.163563, 38.017048, 33.063168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670464, 38.713234, 33.193535>,  <31.004818, 38.631962, 33.357582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670464, 38.713234, 33.193535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786079, 38.691078, 33.575821>,  <31.855448, 38.677784, 33.805191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786079, 38.691078, 33.575821>,  <31.670464, 38.713234, 33.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786079, 38.691078, 33.575821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001989, 0.998288, 0.058454,
		-0.957316, -0.018796, 0.288432,
		0.289037, -0.055385, 0.955715,
		31.872791, 38.674461, 33.862534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396059, 39.319401, 33.550732>,  <31.670464, 38.713234, 33.193535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396059, 39.319401, 33.550732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683516, 39.214718, 33.808434>,  <31.855989, 39.151909, 33.963055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683516, 39.214718, 33.808434>,  <31.396059, 39.319401, 33.550732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683516, 39.214718, 33.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232793, 0.963562, 0.131738,
		-0.655259, 0.055307, 0.753377,
		0.718639, -0.261704, 0.644258,
		31.899107, 39.136208, 34.001713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314827, 39.831200, 34.110039>,  <31.396059, 39.319401, 33.550732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314827, 39.831200, 34.110039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676645, 39.660892, 34.119148>,  <31.893736, 39.558708, 34.124615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676645, 39.660892, 34.119148>,  <31.314827, 39.831200, 34.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676645, 39.660892, 34.119148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419504, 0.898244, 0.131050,
		-0.076250, -0.108989, 0.991114,
		0.904545, -0.425769, 0.022770,
		31.948009, 39.533161, 34.125980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614826, 40.131172, 34.698093>,  <31.314827, 39.831200, 34.110039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614826, 40.131172, 34.698093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907068, 40.009995, 34.453327>,  <32.082413, 39.937290, 34.306465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907068, 40.009995, 34.453327>,  <31.614826, 40.131172, 34.698093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907068, 40.009995, 34.453327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408822, 0.911877, 0.036675,
		0.546884, -0.276961, 0.790069,
		0.730603, -0.302941, -0.611919,
		32.126251, 39.919113, 34.269753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213661, 40.333790, 35.049225>,  <31.614826, 40.131172, 34.698093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213661, 40.333790, 35.049225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283100, 40.305115, 34.656342>,  <32.324764, 40.287910, 34.420612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283100, 40.305115, 34.656342>,  <32.213661, 40.333790, 35.049225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283100, 40.305115, 34.656342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293814, 0.955696, -0.017826,
		0.939966, -0.285490, 0.186971,
		0.173599, -0.071691, -0.982204,
		32.335178, 40.283607, 34.361679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881863, 40.617619, 34.914570>,  <32.213661, 40.333790, 35.049225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881863, 40.617619, 34.914570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657127, 40.639645, 34.584404>,  <32.522285, 40.652859, 34.386307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657127, 40.639645, 34.584404>,  <32.881863, 40.617619, 34.914570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657127, 40.639645, 34.584404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198392, 0.977633, -0.069822,
		0.803104, -0.202984, -0.560199,
		-0.561841, 0.055065, -0.825411,
		32.488575, 40.656162, 34.336781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120182, 41.176647, 34.454155>,  <32.881863, 40.617619, 34.914570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120182, 41.176647, 34.454155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755524, 41.163918, 34.290257>,  <32.536728, 41.156281, 34.191917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755524, 41.163918, 34.290257>,  <33.120182, 41.176647, 34.454155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755524, 41.163918, 34.290257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074049, 0.967959, -0.239941,
		0.404253, -0.249082, -0.880078,
		-0.911645, -0.031828, -0.409745,
		32.482029, 41.154369, 34.167332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071812, 41.320320, 33.716286>,  <33.120182, 41.176647, 34.454155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071812, 41.320320, 33.716286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731365, 41.440208, 33.888687>,  <32.527096, 41.512142, 33.992126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731365, 41.440208, 33.888687>,  <33.071812, 41.320320, 33.716286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731365, 41.440208, 33.888687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214963, 0.947991, -0.234742,
		-0.478942, -0.107145, -0.871283,
		-0.851120, 0.299721, 0.431001,
		32.476028, 41.530125, 34.017986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534393, 40.775459, 33.603855>,  <33.071812, 41.320320, 33.716286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534393, 40.775459, 33.603855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766693, 40.581444, 33.865379>,  <32.906075, 40.465034, 34.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766693, 40.581444, 33.865379>,  <32.534393, 40.775459, 33.603855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766693, 40.581444, 33.865379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356894, -0.873529, -0.331020,
		0.731681, -0.041103, -0.680406,
		0.580748, -0.485034, 0.653814,
		32.940918, 40.435932, 34.061523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894321, 40.134636, 33.280716>,  <32.534393, 40.775459, 33.603855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894321, 40.134636, 33.280716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850204, 40.084305, 33.675076>,  <32.823734, 40.054104, 33.911694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850204, 40.084305, 33.675076>,  <32.894321, 40.134636, 33.280716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850204, 40.084305, 33.675076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332352, -0.930181, -0.155900,
		0.936684, -0.344861, 0.060770,
		-0.110291, -0.125832, 0.985902,
		32.817116, 40.046555, 33.970844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202557, 39.533424, 33.592991>,  <32.894321, 40.134636, 33.280716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202557, 39.533424, 33.592991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869640, 39.637871, 33.788586>,  <32.669891, 39.700539, 33.905941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869640, 39.637871, 33.788586>,  <33.202557, 39.533424, 33.592991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869640, 39.637871, 33.788586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274669, -0.960468, 0.045377,
		0.481505, -0.096543, 0.871110,
		-0.832292, 0.261116, 0.488987,
		32.619953, 39.716206, 33.935284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192509, 39.076321, 34.164246>,  <33.202557, 39.533424, 33.592991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192509, 39.076321, 34.164246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813362, 39.199127, 34.198395>,  <32.585873, 39.272812, 34.218884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813362, 39.199127, 34.198395>,  <33.192509, 39.076321, 34.164246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813362, 39.199127, 34.198395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298501, -0.949216, 0.099426,
		0.111566, 0.068757, 0.991376,
		-0.947866, 0.307019, 0.085376,
		32.529003, 39.291233, 34.224007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919975, 38.841141, 34.806671>,  <33.192509, 39.076321, 34.164246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919975, 38.841141, 34.806671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612289, 38.915386, 34.562096>,  <32.427677, 38.959934, 34.415348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612289, 38.915386, 34.562096>,  <32.919975, 38.841141, 34.806671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612289, 38.915386, 34.562096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251407, -0.967619, 0.022545,
		-0.587459, 0.171063, 0.790967,
		-0.769212, 0.185611, -0.611443,
		32.381527, 38.971069, 34.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233055, 38.629810, 35.065578>,  <32.919975, 38.841141, 34.806671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233055, 38.629810, 35.065578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234043, 38.617359, 34.665775>,  <32.234638, 38.609890, 34.425892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234043, 38.617359, 34.665775>,  <32.233055, 38.629810, 35.065578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234043, 38.617359, 34.665775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152388, -0.987853, 0.030387,
		-0.988318, 0.152238, -0.007185,
		0.002472, -0.031127, -0.999512,
		32.234783, 38.608021, 34.365921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942553, 37.987007, 34.867889>,  <32.233055, 38.629810, 35.065578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942553, 37.987007, 34.867889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039482, 38.086239, 34.492714>,  <32.097641, 38.145779, 34.267609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039482, 38.086239, 34.492714>,  <31.942553, 37.987007, 34.867889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039482, 38.086239, 34.492714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114740, -0.952642, -0.281615,
		-0.963386, 0.175862, -0.202384,
		0.242325, 0.248083, -0.937941,
		32.112179, 38.160664, 34.211330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419882, 37.632542, 34.483341>,  <31.942553, 37.987007, 34.867889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419882, 37.632542, 34.483341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687851, 37.741573, 34.207108>,  <31.848633, 37.806992, 34.041367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687851, 37.741573, 34.207108>,  <31.419882, 37.632542, 34.483341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687851, 37.741573, 34.207108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139072, -0.867625, -0.477374,
		-0.729288, 0.415846, -0.543334,
		0.669924, 0.272580, -0.690580,
		31.888828, 37.823349, 33.999935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092791, 37.445496, 33.869255>,  <31.419882, 37.632542, 34.483341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092791, 37.445496, 33.869255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484465, 37.471474, 33.792332>,  <31.719469, 37.487061, 33.746178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484465, 37.471474, 33.792332>,  <31.092791, 37.445496, 33.869255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484465, 37.471474, 33.792332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066458, -0.792622, -0.606081,
		-0.191789, 0.606244, -0.771806,
		0.979183, 0.064947, -0.192306,
		31.778219, 37.490959, 33.734638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202734, 37.407501, 33.094910>,  <31.092791, 37.445496, 33.869255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202734, 37.407501, 33.094910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536148, 37.288258, 33.280964>,  <31.736197, 37.216709, 33.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.536148, 37.288258, 33.280964>,  <31.202734, 37.407501, 33.094910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536148, 37.288258, 33.280964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086362, -0.761264, -0.642666,
		0.545677, 0.575853, -0.608793,
		0.833534, -0.298111, 0.465136,
		31.786209, 37.198826, 33.420506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633221, 37.139507, 32.530205>,  <31.202734, 37.407501, 33.094910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633221, 37.139507, 32.530205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789127, 36.985538, 32.864849>,  <31.882671, 36.893158, 33.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789127, 36.985538, 32.864849>,  <31.633221, 37.139507, 32.530205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789127, 36.985538, 32.864849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104858, -0.883997, -0.455580,
		0.914924, 0.265296, -0.304192,
		0.389769, -0.384924, 0.836608,
		31.906057, 36.870060, 33.115833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266850, 36.799973, 32.265125>,  <31.633221, 37.139507, 32.530205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266850, 36.799973, 32.265125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172684, 36.622353, 32.610935>,  <32.116184, 36.515781, 32.818420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172684, 36.622353, 32.610935>,  <32.266850, 36.799973, 32.265125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172684, 36.622353, 32.610935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032722, -0.885397, -0.463683,
		0.971345, -0.137445, 0.193901,
		-0.235410, -0.444051, 0.864523,
		32.102062, 36.489136, 32.870293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718708, 36.261978, 32.325249>,  <32.266850, 36.799973, 32.265125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718708, 36.261978, 32.325249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431847, 36.126064, 32.568638>,  <32.259731, 36.044514, 32.714672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431847, 36.126064, 32.568638>,  <32.718708, 36.261978, 32.325249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431847, 36.126064, 32.568638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054940, -0.842810, -0.535399,
		0.694749, -0.417392, 0.585755,
		-0.717151, -0.339787, 0.608473,
		32.216702, 36.024128, 32.751179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903118, 35.630154, 32.560169>,  <32.718708, 36.261978, 32.325249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903118, 35.630154, 32.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505035, 35.639511, 32.598141>,  <32.266186, 35.645126, 32.620926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505035, 35.639511, 32.598141>,  <32.903118, 35.630154, 32.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505035, 35.639511, 32.598141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066367, -0.874609, -0.480265,
		0.071795, -0.484264, 0.871971,
		-0.995209, 0.023389, 0.094932,
		32.206474, 35.646526, 32.626621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785091, 35.028511, 32.751701>,  <32.903118, 35.630154, 32.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785091, 35.028511, 32.751701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437069, 35.151253, 32.597382>,  <32.228256, 35.224899, 32.504787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437069, 35.151253, 32.597382>,  <32.785091, 35.028511, 32.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437069, 35.151253, 32.597382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068355, -0.850172, -0.522050,
		-0.488192, -0.427841, 0.760671,
		-0.870055, 0.306856, -0.385802,
		32.176052, 35.243309, 32.481640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297680, 34.325794, 32.712074>,  <32.785091, 35.028511, 32.751701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297680, 34.325794, 32.712074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128143, 34.604805, 32.480968>,  <32.026421, 34.772209, 32.342304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128143, 34.604805, 32.480968>,  <32.297680, 34.325794, 32.712074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128143, 34.604805, 32.480968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313073, -0.711406, -0.629195,
		-0.849906, -0.085798, 0.519902,
		-0.423845, 0.697524, -0.577768,
		32.000988, 34.814064, 32.307636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576576, 34.055378, 32.634140>,  <32.297680, 34.325794, 32.712074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576576, 34.055378, 32.634140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640471, 34.305984, 32.328991>,  <31.678806, 34.456348, 32.145905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640471, 34.305984, 32.328991>,  <31.576576, 34.055378, 32.634140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640471, 34.305984, 32.328991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383054, -0.672900, -0.632831,
		-0.909810, 0.393304, 0.132503,
		0.159734, 0.626512, -0.762868,
		31.688391, 34.493938, 32.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019722, 33.906292, 32.152878>,  <31.576576, 34.055378, 32.634140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019722, 33.906292, 32.152878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238184, 34.145267, 31.918005>,  <31.369261, 34.288654, 31.777082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238184, 34.145267, 31.918005>,  <31.019722, 33.906292, 32.152878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238184, 34.145267, 31.918005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191314, -0.593467, -0.781790,
		-0.815544, 0.539315, -0.209827,
		0.546156, 0.597441, -0.587178,
		31.402031, 34.324501, 31.741852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677549, 34.025963, 31.556053>,  <31.019722, 33.906292, 32.152878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677549, 34.025963, 31.556053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051054, 34.126995, 31.454630>,  <31.275156, 34.187614, 31.393776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051054, 34.126995, 31.454630>,  <30.677549, 34.025963, 31.556053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051054, 34.126995, 31.454630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098595, -0.499514, -0.860677,
		-0.344048, 0.828666, -0.441524,
		0.933761, 0.252582, -0.253559,
		31.331182, 34.202770, 31.378563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694050, 34.284599, 30.867144>,  <30.677549, 34.025963, 31.556053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694050, 34.284599, 30.867144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066965, 34.149506, 30.918949>,  <31.290714, 34.068451, 30.950033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066965, 34.149506, 30.918949>,  <30.694050, 34.284599, 30.867144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066965, 34.149506, 30.918949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085886, -0.554507, -0.827735,
		0.351368, 0.760566, -0.545968,
		0.932290, -0.337731, 0.129514,
		31.346651, 34.048187, 30.957804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988632, 34.400238, 30.195169>,  <30.694050, 34.284599, 30.867144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988632, 34.400238, 30.195169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212648, 34.137115, 30.396624>,  <31.347057, 33.979244, 30.517496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212648, 34.137115, 30.396624>,  <30.988632, 34.400238, 30.195169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212648, 34.137115, 30.396624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020652, -0.596640, -0.802243,
		0.828208, 0.459690, -0.320557,
		0.560040, -0.657804, 0.503635,
		31.380661, 33.939774, 30.547714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678171, 34.228340, 29.818066>,  <30.988632, 34.400238, 30.195169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678171, 34.228340, 29.818066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584015, 33.920017, 30.054861>,  <31.527521, 33.735023, 30.196939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584015, 33.920017, 30.054861>,  <31.678171, 34.228340, 29.818066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584015, 33.920017, 30.054861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104645, -0.585464, -0.803917,
		0.966251, -0.251181, 0.057151,
		-0.235389, -0.770805, 0.591990,
		31.513399, 33.688774, 30.232458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148911, 33.715969, 29.598564>,  <31.678171, 34.228340, 29.818066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148911, 33.715969, 29.598564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847769, 33.537212, 29.791851>,  <31.667084, 33.429958, 29.907824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847769, 33.537212, 29.791851>,  <32.148911, 33.715969, 29.598564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847769, 33.537212, 29.791851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013975, -0.723144, -0.690556,
		0.658042, -0.526639, 0.538175,
		-0.752852, -0.446894, 0.483218,
		31.621914, 33.403145, 29.936817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324806, 32.973640, 29.602356>,  <32.148911, 33.715969, 29.598564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324806, 32.973640, 29.602356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933250, 32.998341, 29.680285>,  <31.698317, 33.013161, 29.727041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933250, 32.998341, 29.680285>,  <32.324806, 32.973640, 29.602356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933250, 32.998341, 29.680285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182848, -0.690434, -0.699905,
		0.091293, -0.720755, 0.687152,
		-0.978893, 0.061748, 0.194821,
		31.639582, 33.016865, 29.738731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137081, 32.297390, 29.608316>,  <32.324806, 32.973640, 29.602356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137081, 32.297390, 29.608316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793245, 32.497852, 29.568405>,  <31.586945, 32.618130, 29.544458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793245, 32.497852, 29.568405>,  <32.137081, 32.297390, 29.608316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793245, 32.497852, 29.568405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363777, -0.737291, -0.569269,
		-0.358858, -0.453039, 0.816074,
		-0.859586, 0.501156, -0.099777,
		31.535370, 32.648201, 29.538471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639925, 31.828259, 29.825729>,  <32.137081, 32.297390, 29.608316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639925, 31.828259, 29.825729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450115, 32.102345, 29.604712>,  <31.336229, 32.266796, 29.472101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450115, 32.102345, 29.604712>,  <31.639925, 31.828259, 29.825729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450115, 32.102345, 29.604712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194202, -0.693748, -0.693541,
		-0.858553, -0.221795, 0.462270,
		-0.474523, 0.685216, -0.552547,
		31.307758, 32.307911, 29.438948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084423, 31.451763, 29.473770>,  <31.639925, 31.828259, 29.825729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084423, 31.451763, 29.473770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157133, 31.776630, 29.252018>,  <31.200758, 31.971552, 29.118967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157133, 31.776630, 29.252018>,  <31.084423, 31.451763, 29.473770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157133, 31.776630, 29.252018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244611, -0.508705, -0.825460,
		-0.952431, 0.285654, 0.106197,
		0.181773, 0.812171, -0.554380,
		31.211664, 32.020283, 29.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601068, 31.340839, 28.910076>,  <31.084423, 31.451763, 29.473770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601068, 31.340839, 28.910076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822580, 31.651903, 28.791029>,  <30.955486, 31.838541, 28.719601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822580, 31.651903, 28.791029>,  <30.601068, 31.340839, 28.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822580, 31.651903, 28.791029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048949, -0.387216, -0.920689,
		-0.831224, 0.495289, -0.252497,
		0.553778, 0.777658, -0.297619,
		30.988714, 31.885201, 28.701744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220186, 31.553635, 28.299984>,  <30.601068, 31.340839, 28.910076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220186, 31.553635, 28.299984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593437, 31.695637, 28.277214>,  <30.817389, 31.780838, 28.263552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593437, 31.695637, 28.277214>,  <30.220186, 31.553635, 28.299984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593437, 31.695637, 28.277214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076711, -0.351264, -0.933129,
		-0.351264, 0.866362, -0.355008,
		0.933129, 0.355008, -0.056927,
		30.873375, 31.802139, 28.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257097, 32.013622, 27.785837>,  <30.220186, 31.553635, 28.299984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257097, 32.013622, 27.785837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635056, 31.893375, 27.837687>,  <30.861830, 31.821228, 27.868795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635056, 31.893375, 27.837687>,  <30.257097, 32.013622, 27.785837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635056, 31.893375, 27.837687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035617, -0.299197, -0.953526,
		0.325429, 0.905600, -0.272003,
		0.944895, -0.300617, 0.129622,
		30.918524, 31.803190, 27.876574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701031, 32.342712, 27.255100>,  <30.257097, 32.013622, 27.785837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701031, 32.342712, 27.255100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897449, 32.015736, 27.375538>,  <31.015301, 31.819550, 27.447800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897449, 32.015736, 27.375538>,  <30.701031, 32.342712, 27.255100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897449, 32.015736, 27.375538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177687, -0.244382, -0.953260,
		0.852820, 0.521594, 0.025246,
		0.491045, -0.817445, 0.301094,
		31.044764, 31.770502, 27.465866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278873, 32.312084, 26.896997>,  <30.701031, 32.342712, 27.255100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278873, 32.312084, 26.896997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244131, 31.934921, 27.025606>,  <31.223286, 31.708622, 27.102772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244131, 31.934921, 27.025606>,  <31.278873, 32.312084, 26.896997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244131, 31.934921, 27.025606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078382, -0.328210, -0.941347,
		0.993133, -0.056560, 0.102414,
		-0.086856, -0.942910, 0.321522,
		31.218075, 31.652048, 27.122063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630423, 31.918020, 26.425459>,  <31.278873, 32.312084, 26.896997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630423, 31.918020, 26.425459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434147, 31.624212, 26.612951>,  <31.316381, 31.447927, 26.725447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434147, 31.624212, 26.612951>,  <31.630423, 31.918020, 26.425459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434147, 31.624212, 26.612951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125332, -0.591849, -0.796245,
		0.862274, -0.331961, 0.382472,
		-0.490688, -0.734518, 0.468731,
		31.286940, 31.403856, 26.753571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023746, 31.293848, 26.362829>,  <31.630423, 31.918020, 26.425459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023746, 31.293848, 26.362829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641991, 31.183102, 26.407536>,  <31.412937, 31.116653, 26.434361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641991, 31.183102, 26.407536>,  <32.023746, 31.293848, 26.362829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641991, 31.183102, 26.407536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132989, -0.729343, -0.671098,
		0.267320, -0.625624, 0.732895,
		-0.954387, -0.276865, 0.111767,
		31.355675, 31.100042, 26.441065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000622, 30.554909, 26.383074>,  <32.023746, 31.293848, 26.362829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000622, 30.554909, 26.383074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624432, 30.673063, 26.315844>,  <31.398718, 30.743956, 26.275505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624432, 30.673063, 26.315844>,  <32.000622, 30.554909, 26.383074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624432, 30.673063, 26.315844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100510, -0.714177, -0.692712,
		-0.324654, -0.634586, 0.701356,
		-0.940477, 0.295385, -0.168078,
		31.342289, 30.761679, 26.265421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677794, 29.945665, 26.298346>,  <32.000622, 30.554909, 26.383074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677794, 29.945665, 26.298346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438087, 30.216688, 26.127794>,  <31.294264, 30.379301, 26.025463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438087, 30.216688, 26.127794>,  <31.677794, 29.945665, 26.298346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438087, 30.216688, 26.127794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025037, -0.548208, -0.835967,
		-0.800159, -0.490291, 0.345487,
		-0.599266, 0.677556, -0.426378,
		31.258308, 30.419954, 25.999882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172823, 29.557859, 25.897968>,  <31.677794, 29.945665, 26.298346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172823, 29.557859, 25.897968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215649, 29.923592, 25.741745>,  <31.241344, 30.143030, 25.648010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215649, 29.923592, 25.741745>,  <31.172823, 29.557859, 25.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215649, 29.923592, 25.741745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173196, -0.403963, -0.898230,
		-0.979051, 0.028524, -0.201608,
		0.107064, 0.914330, -0.390560,
		31.247768, 30.197891, 25.624577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858761, 29.447964, 25.338472>,  <31.172823, 29.557859, 25.897968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858761, 29.447964, 25.338472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047586, 29.793018, 25.265789>,  <31.160881, 30.000051, 25.222179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047586, 29.793018, 25.265789>,  <30.858761, 29.447964, 25.338472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047586, 29.793018, 25.265789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151142, -0.282266, -0.947355,
		-0.868512, 0.419747, -0.263628,
		0.472063, 0.862634, -0.181710,
		31.189205, 30.051809, 25.211275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723053, 29.473150, 24.648729>,  <30.858761, 29.447964, 25.338472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723053, 29.473150, 24.648729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027290, 29.718189, 24.734730>,  <31.209833, 29.865211, 24.786331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027290, 29.718189, 24.734730>,  <30.723053, 29.473150, 24.648729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027290, 29.718189, 24.734730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375899, -0.145518, -0.915163,
		-0.529338, 0.776886, -0.340954,
		0.760592, 0.612596, 0.215002,
		31.255468, 29.901968, 24.799231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733540, 29.991087, 24.196894>,  <30.723053, 29.473150, 24.648729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733540, 29.991087, 24.196894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113018, 29.991686, 24.323370>,  <31.340704, 29.992046, 24.399256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113018, 29.991686, 24.323370>,  <30.733540, 29.991087, 24.196894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113018, 29.991686, 24.323370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314927, 0.085024, -0.945300,
		-0.028301, 0.996378, 0.080190,
		0.948694, 0.001499, 0.316192,
		31.397627, 29.992136, 24.418228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125048, 30.422775, 23.777460>,  <30.733540, 29.991087, 24.196894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125048, 30.422775, 23.777460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409698, 30.185564, 23.928143>,  <31.580490, 30.043238, 24.018551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409698, 30.185564, 23.928143>,  <31.125048, 30.422775, 23.777460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409698, 30.185564, 23.928143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386048, -0.117917, -0.914911,
		0.586986, 0.796502, 0.145024,
		0.711628, -0.593026, 0.376704,
		31.623186, 30.007656, 24.041153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854610, 30.637613, 23.582777>,  <31.125048, 30.422775, 23.777460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854610, 30.637613, 23.582777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899977, 30.250002, 23.670521>,  <31.927197, 30.017435, 23.723167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899977, 30.250002, 23.670521>,  <31.854610, 30.637613, 23.582777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899977, 30.250002, 23.670521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467582, -0.142746, -0.872348,
		0.876643, 0.201507, 0.436911,
		0.113417, -0.969029, 0.219359,
		31.934002, 29.959293, 23.736328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538734, 30.457235, 23.388292>,  <31.854610, 30.637613, 23.582777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538734, 30.457235, 23.388292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339169, 30.111782, 23.417194>,  <32.219429, 29.904510, 23.434536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339169, 30.111782, 23.417194>,  <32.538734, 30.457235, 23.388292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339169, 30.111782, 23.417194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415987, -0.311784, -0.854252,
		0.760287, -0.396144, 0.514814,
		-0.498918, -0.863632, 0.072254,
		32.189495, 29.852692, 23.438871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100510, 30.056398, 23.176937>,  <32.538734, 30.457235, 23.388292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100510, 30.056398, 23.176937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756710, 29.854553, 23.144361>,  <32.550430, 29.733446, 23.124817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756710, 29.854553, 23.144361>,  <33.100510, 30.056398, 23.176937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756710, 29.854553, 23.144361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362829, -0.490087, -0.792571,
		0.360030, -0.710760, 0.604317,
		-0.859496, -0.504613, -0.081438,
		32.498859, 29.703169, 23.119930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289986, 29.378763, 23.046782>,  <33.100510, 30.056398, 23.176937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289986, 29.378763, 23.046782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917988, 29.420578, 22.905827>,  <32.694790, 29.445667, 22.821255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917988, 29.420578, 22.905827>,  <33.289986, 29.378763, 23.046782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917988, 29.420578, 22.905827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283647, -0.405622, -0.868916,
		-0.233768, -0.908043, 0.347576,
		-0.929999, 0.104536, -0.352385,
		32.638988, 29.451939, 22.800112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118145, 28.626740, 22.794592>,  <33.289986, 29.378763, 23.046782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118145, 28.626740, 22.794592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864811, 28.876730, 22.612036>,  <32.712811, 29.026724, 22.502502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864811, 28.876730, 22.612036>,  <33.118145, 28.626740, 22.794592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864811, 28.876730, 22.612036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065569, -0.544288, -0.836332,
		-0.771094, -0.559604, 0.303738,
		-0.633336, 0.624975, -0.456390,
		32.674809, 29.064222, 22.475119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722565, 28.201202, 22.409986>,  <33.118145, 28.626740, 22.794592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722565, 28.201202, 22.409986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660027, 28.548868, 22.222322>,  <32.622505, 28.757467, 22.109724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660027, 28.548868, 22.222322>,  <32.722565, 28.201202, 22.409986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660027, 28.548868, 22.222322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061005, -0.482592, -0.873718,
		-0.985817, -0.107978, 0.128473,
		-0.156342, 0.869164, -0.469160,
		32.613125, 28.809618, 22.081575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315578, 27.989466, 21.911833>,  <32.722565, 28.201202, 22.409986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315578, 27.989466, 21.911833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419804, 28.348370, 21.769266>,  <32.482338, 28.563711, 21.683727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419804, 28.348370, 21.769266>,  <32.315578, 27.989466, 21.911833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419804, 28.348370, 21.769266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193103, -0.313273, -0.929823,
		-0.945948, 0.311103, 0.091636,
		0.260564, 0.897260, -0.356415,
		32.497974, 28.617548, 21.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785437, 28.174610, 21.473974>,  <32.315578, 27.989466, 21.911833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785437, 28.174610, 21.473974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112320, 28.381647, 21.372570>,  <32.308449, 28.505869, 21.311728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112320, 28.381647, 21.372570>,  <31.785437, 28.174610, 21.473974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112320, 28.381647, 21.372570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136584, -0.253405, -0.957669,
		-0.559924, 0.817241, -0.136390,
		0.817209, 0.517593, -0.253510,
		32.357483, 28.536924, 21.296516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672934, 28.335007, 20.805454>,  <31.785437, 28.174610, 21.473974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672934, 28.335007, 20.805454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068550, 28.380896, 20.842625>,  <32.305920, 28.408428, 20.864927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068550, 28.380896, 20.842625>,  <31.672934, 28.335007, 20.805454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068550, 28.380896, 20.842625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127328, -0.344273, -0.930196,
		-0.074721, 0.931835, -0.355107,
		0.989042, 0.114720, 0.092924,
		32.365261, 28.415312, 20.870502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930555, 28.622608, 20.251772>,  <31.672934, 28.335007, 20.805454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930555, 28.622608, 20.251772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230755, 28.403616, 20.399836>,  <32.410873, 28.272221, 20.488674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230755, 28.403616, 20.399836>,  <31.930555, 28.622608, 20.251772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230755, 28.403616, 20.399836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151616, -0.402533, -0.902762,
		0.643244, 0.733645, -0.219094,
		0.750499, -0.547479, 0.370159,
		32.455906, 28.239372, 20.510883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600952, 28.585573, 19.774895>,  <31.930555, 28.622608, 20.251772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600952, 28.585573, 19.774895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573410, 28.275692, 20.026320>,  <32.556885, 28.089764, 20.177176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573410, 28.275692, 20.026320>,  <32.600952, 28.585573, 19.774895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573410, 28.275692, 20.026320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029974, -0.631381, -0.774894,
		0.997176, -0.034516, 0.066695,
		-0.068856, -0.774705, 0.628563,
		32.552753, 28.043280, 20.214888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222713, 28.029396, 19.793995>,  <32.600952, 28.585573, 19.774895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222713, 28.029396, 19.793995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877373, 27.831402, 19.833231>,  <32.670170, 27.712606, 19.856773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.877373, 27.831402, 19.833231>,  <33.222713, 28.029396, 19.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877373, 27.831402, 19.833231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267887, -0.614328, -0.742185,
		0.427630, -0.614486, 0.662978,
		-0.863348, -0.494984, 0.098093,
		32.618370, 27.682907, 19.862659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522629, 27.892056, 20.507240>,  <33.222713, 28.029396, 19.793995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522629, 27.892056, 20.507240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139385, 27.826719, 20.601343>,  <32.909439, 27.787518, 20.657804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139385, 27.826719, 20.601343>,  <33.522629, 27.892056, 20.507240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139385, 27.826719, 20.601343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014317, 0.847709, 0.530268,
		-0.286043, 0.504687, -0.814537,
		-0.958110, -0.163341, 0.235256,
		32.851952, 27.777718, 20.671921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107357, 28.300880, 20.580498>,  <33.522629, 27.892056, 20.507240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107357, 28.300880, 20.580498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015572, 28.634472, 20.379770>,  <33.960499, 28.834627, 20.259333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015572, 28.634472, 20.379770>,  <34.107357, 28.300880, 20.580498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015572, 28.634472, 20.379770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896032, -0.020340, -0.443522,
		-0.380096, -0.551419, -0.742606,
		-0.229462, 0.833980, -0.501821,
		33.946732, 28.884666, 20.229223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195187, 28.266636, 19.913435>,  <34.107357, 28.300880, 20.580498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195187, 28.266636, 19.913435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269882, 28.656866, 19.959713>,  <34.314701, 28.891005, 19.987480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269882, 28.656866, 19.959713>,  <34.195187, 28.266636, 19.913435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269882, 28.656866, 19.959713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820880, -0.090249, -0.563925,
		-0.539709, 0.200279, -0.817681,
		0.186738, 0.975573, 0.115697,
		34.325905, 28.949537, 19.994423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164478, 28.781103, 19.265858>,  <34.195187, 28.266636, 19.913435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164478, 28.781103, 19.265858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425598, 28.811031, 19.567387>,  <34.582272, 28.828989, 19.748304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425598, 28.811031, 19.567387>,  <34.164478, 28.781103, 19.265858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425598, 28.811031, 19.567387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749944, -0.204294, -0.629165,
		0.106926, 0.976046, -0.189475,
		0.652802, 0.074821, 0.753824,
		34.621437, 28.833477, 19.793533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924671, 28.939701, 19.072222>,  <34.164478, 28.781103, 19.265858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924671, 28.939701, 19.072222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934971, 28.758055, 19.428450>,  <34.941151, 28.649067, 19.642187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934971, 28.758055, 19.428450>,  <34.924671, 28.939701, 19.072222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934971, 28.758055, 19.428450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733991, -0.596217, -0.325241,
		0.678671, 0.662044, 0.317967,
		0.025747, -0.454117, 0.890570,
		34.942696, 28.621820, 19.695621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961857, 29.692659, 19.081997>,  <34.924671, 28.939701, 19.072222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961857, 29.692659, 19.081997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622467, 29.793154, 19.268314>,  <34.418831, 29.853451, 19.380106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622467, 29.793154, 19.268314>,  <34.961857, 29.692659, 19.081997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622467, 29.793154, 19.268314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489292, 0.707806, 0.509513,
		-0.201685, 0.660221, -0.723486,
		-0.848479, 0.251235, 0.465795,
		34.367924, 29.868525, 19.408052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789848, 30.437801, 19.026402>,  <34.961857, 29.692659, 19.081997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789848, 30.437801, 19.026402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645912, 30.275764, 19.362597>,  <34.559551, 30.178541, 19.564314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645912, 30.275764, 19.362597>,  <34.789848, 30.437801, 19.026402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645912, 30.275764, 19.362597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346246, 0.778522, 0.523466,
		-0.866390, 0.479377, -0.139878,
		-0.359836, -0.405094, 0.840486,
		34.537960, 30.154236, 19.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490402, 30.943275, 19.429226>,  <34.789848, 30.437801, 19.026402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490402, 30.943275, 19.429226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456898, 30.671980, 19.721247>,  <34.436794, 30.509203, 19.896460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456898, 30.671980, 19.721247>,  <34.490402, 30.943275, 19.429226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456898, 30.671980, 19.721247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082054, 0.725443, 0.683374,
		-0.993102, 0.117145, -0.005113,
		-0.083763, -0.678240, 0.730051,
		34.431770, 30.468508, 19.940262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999737, 31.245359, 19.846537>,  <34.490402, 30.943275, 19.429226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999737, 31.245359, 19.846537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219585, 30.972288, 20.039146>,  <34.351494, 30.808445, 20.154713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219585, 30.972288, 20.039146>,  <33.999737, 31.245359, 19.846537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219585, 30.972288, 20.039146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212150, 0.671553, 0.709936,
		-0.808026, -0.288043, 0.513932,
		0.549624, -0.682677, 0.481523,
		34.384472, 30.767485, 20.183603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812477, 31.325258, 20.631948>,  <33.999737, 31.245359, 19.846537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812477, 31.325258, 20.631948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163311, 31.133141, 20.634645>,  <34.373810, 31.017870, 20.636263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163311, 31.133141, 20.634645>,  <33.812477, 31.325258, 20.631948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163311, 31.133141, 20.634645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297584, 0.554336, 0.777275,
		-0.377060, -0.679726, 0.629125,
		0.877080, -0.480296, 0.006743,
		34.426434, 30.989052, 20.636667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921356, 30.886597, 21.350214>,  <33.812477, 31.325258, 20.631948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921356, 30.886597, 21.350214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278339, 30.983097, 21.197735>,  <34.492531, 31.040997, 21.106247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278339, 30.983097, 21.197735>,  <33.921356, 30.886597, 21.350214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278339, 30.983097, 21.197735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206925, 0.531944, 0.821108,
		0.400868, -0.811686, 0.424818,
		0.892461, 0.241250, -0.381197,
		34.546078, 31.055473, 21.083376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345119, 30.860050, 21.908314>,  <33.921356, 30.886597, 21.350214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345119, 30.860050, 21.908314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576984, 31.048332, 21.642254>,  <34.716103, 31.161301, 21.482618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576984, 31.048332, 21.642254>,  <34.345119, 30.860050, 21.908314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576984, 31.048332, 21.642254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353418, 0.590279, 0.725718,
		0.734223, -0.655749, 0.175809,
		0.579665, 0.470705, -0.665150,
		34.750885, 31.189545, 21.442709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937336, 30.764015, 22.256706>,  <34.345119, 30.860050, 21.908314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937336, 30.764015, 22.256706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960171, 31.070318, 22.000469>,  <34.973873, 31.254101, 21.846727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960171, 31.070318, 22.000469>,  <34.937336, 30.764015, 22.256706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960171, 31.070318, 22.000469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417750, 0.564443, 0.711961,
		0.906767, -0.308252, -0.287672,
		0.057089, 0.765758, -0.640591,
		34.977299, 31.300045, 21.808292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714787, 30.952251, 22.322546>,  <34.937336, 30.764015, 22.256706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714787, 30.952251, 22.322546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500259, 31.251844, 22.166916>,  <35.371544, 31.431601, 22.073538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500259, 31.251844, 22.166916>,  <35.714787, 30.952251, 22.322546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500259, 31.251844, 22.166916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304277, 0.601566, 0.738602,
		0.787258, 0.277741, -0.550532,
		-0.536322, 0.748985, -0.389077,
		35.339363, 31.476540, 22.050192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199318, 31.433830, 22.300512>,  <35.714787, 30.952251, 22.322546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199318, 31.433830, 22.300512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 31.595505, 22.292795>,  <35.614056, 31.692511, 22.288164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833530, 31.595505, 22.292795>,  <36.199318, 31.433830, 22.300512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833530, 31.595505, 22.292795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266413, 0.637278, 0.723119,
		0.304572, 0.656132, -0.690454,
		-0.914472, 0.404188, -0.019295,
		35.559189, 31.716761, 22.287006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408295, 32.146584, 22.373989>,  <36.199318, 31.433830, 22.300512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408295, 32.146584, 22.373989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017673, 32.112419, 22.453035>,  <35.783302, 32.091919, 22.500463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017673, 32.112419, 22.453035>,  <36.408295, 32.146584, 22.373989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017673, 32.112419, 22.453035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129266, 0.501401, 0.855504,
		-0.172152, 0.860989, -0.478604,
		-0.976552, -0.085410, 0.197614,
		35.724709, 32.086796, 22.512320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155849, 32.827644, 22.420628>,  <36.408295, 32.146584, 22.373989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155849, 32.827644, 22.420628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915527, 32.571270, 22.611721>,  <35.771336, 32.417446, 22.726377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915527, 32.571270, 22.611721>,  <36.155849, 32.827644, 22.420628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915527, 32.571270, 22.611721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021181, 0.610174, 0.791984,
		-0.799116, 0.465708, -0.380171,
		-0.600804, -0.640940, 0.477735,
		35.735287, 32.378986, 22.755041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759048, 33.346786, 22.814802>,  <36.155849, 32.827644, 22.420628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759048, 33.346786, 22.814802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686569, 32.994301, 22.989445>,  <35.643082, 32.782810, 23.094231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686569, 32.994301, 22.989445>,  <35.759048, 33.346786, 22.814802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686569, 32.994301, 22.989445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114358, 0.459824, 0.880616,
		-0.976775, 0.109640, -0.184095,
		-0.181202, -0.881216, 0.436606,
		35.632210, 32.729935, 23.120426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157711, 33.385109, 23.036541>,  <35.759048, 33.346786, 22.814802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157711, 33.385109, 23.036541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280827, 33.094360, 23.282118>,  <35.354694, 32.919910, 23.429464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280827, 33.094360, 23.282118>,  <35.157711, 33.385109, 23.036541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280827, 33.094360, 23.282118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413578, 0.478909, 0.774338,
		-0.856867, -0.492244, -0.153216,
		0.307787, -0.726872, 0.613943,
		35.373161, 32.876301, 23.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645607, 33.272186, 23.475494>,  <35.157711, 33.385109, 23.036541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645607, 33.272186, 23.475494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936195, 33.090157, 23.681465>,  <35.110550, 32.980938, 23.805048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936195, 33.090157, 23.681465>,  <34.645607, 33.272186, 23.475494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936195, 33.090157, 23.681465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369818, 0.372666, 0.851090,
		-0.579203, -0.808721, 0.102437,
		0.726469, -0.455071, 0.514929,
		35.154137, 32.953636, 23.835943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242367, 32.970879, 24.015209>,  <34.645607, 33.272186, 23.475494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242367, 32.970879, 24.015209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626122, 32.980392, 24.127649>,  <34.856373, 32.986103, 24.195114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626122, 32.980392, 24.127649>,  <34.242367, 32.970879, 24.015209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626122, 32.980392, 24.127649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275124, 0.299205, 0.913665,
		-0.062375, -0.953892, 0.293596,
		0.959383, 0.023786, 0.281102,
		34.913937, 32.987530, 24.211979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263840, 32.473194, 24.640818>,  <34.242367, 32.970879, 24.015209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263840, 32.473194, 24.640818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571758, 32.728291, 24.651365>,  <34.756508, 32.881348, 24.657694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571758, 32.728291, 24.651365>,  <34.263840, 32.473194, 24.640818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571758, 32.728291, 24.651365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208426, 0.212105, 0.954762,
		0.603301, -0.740469, 0.296200,
		0.769797, 0.637744, 0.026370,
		34.802696, 32.919613, 24.659277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682926, 32.286411, 25.213558>,  <34.263840, 32.473194, 24.640818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682926, 32.286411, 25.213558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793518, 32.663914, 25.141031>,  <34.859875, 32.890415, 25.097515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793518, 32.663914, 25.141031>,  <34.682926, 32.286411, 25.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793518, 32.663914, 25.141031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118162, 0.220625, 0.968175,
		0.953727, -0.246260, 0.172516,
		0.276484, 0.943759, -0.181317,
		34.876465, 32.947041, 25.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063240, 32.568291, 25.877768>,  <34.682926, 32.286411, 25.213558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063240, 32.568291, 25.877768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965702, 32.903881, 25.683174>,  <34.907181, 33.105236, 25.566418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965702, 32.903881, 25.683174>,  <35.063240, 32.568291, 25.877768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965702, 32.903881, 25.683174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050075, 0.490063, 0.870248,
		0.968520, 0.236567, -0.077489,
		-0.243846, 0.838972, -0.486482,
		34.892548, 33.155571, 25.537230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436123, 33.064835, 26.269169>,  <35.063240, 32.568291, 25.877768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436123, 33.064835, 26.269169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153831, 33.270733, 26.074446>,  <34.984455, 33.394272, 25.957611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153831, 33.270733, 26.074446>,  <35.436123, 33.064835, 26.269169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153831, 33.270733, 26.074446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156351, 0.557021, 0.815648,
		0.691015, 0.651740, -0.312625,
		-0.705729, 0.514745, -0.486810,
		34.942112, 33.425156, 25.928402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522068, 33.727417, 26.246660>,  <35.436123, 33.064835, 26.269169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522068, 33.727417, 26.246660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124615, 33.723946, 26.201733>,  <34.886143, 33.721863, 26.174776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124615, 33.723946, 26.201733>,  <35.522068, 33.727417, 26.246660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124615, 33.723946, 26.201733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106189, 0.405021, 0.908120,
		0.037612, 0.914266, -0.403364,
		-0.993634, -0.008676, -0.112319,
		34.826523, 33.721344, 26.168037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340176, 34.475826, 26.345694>,  <35.522068, 33.727417, 26.246660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340176, 34.475826, 26.345694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003693, 34.266022, 26.398243>,  <34.801804, 34.140141, 26.429773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.003693, 34.266022, 26.398243>,  <35.340176, 34.475826, 26.345694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003693, 34.266022, 26.398243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233300, 0.571262, 0.786912,
		-0.487792, 0.631307, -0.602918,
		-0.841208, -0.524510, 0.131373,
		34.751331, 34.108669, 26.437654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893345, 34.933792, 26.440294>,  <35.340176, 34.475826, 26.345694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893345, 34.933792, 26.440294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726231, 34.598740, 26.581047>,  <34.625961, 34.397709, 26.665499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726231, 34.598740, 26.581047>,  <34.893345, 34.933792, 26.440294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726231, 34.598740, 26.581047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218326, 0.468515, 0.856053,
		-0.881923, 0.280822, -0.378617,
		-0.417786, -0.837635, 0.351884,
		34.600895, 34.347450, 26.686613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283157, 35.185398, 26.774117>,  <34.893345, 34.933792, 26.440294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283157, 35.185398, 26.774117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323841, 34.811916, 26.911430>,  <34.348251, 34.587826, 26.993818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323841, 34.811916, 26.911430>,  <34.283157, 35.185398, 26.774117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323841, 34.811916, 26.911430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431461, 0.269524, 0.860929,
		-0.896380, -0.235680, -0.375445,
		0.101712, -0.933709, 0.343282,
		34.354355, 34.531803, 27.014416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766487, 34.923691, 26.981020>,  <34.283157, 35.185398, 26.774117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766487, 34.923691, 26.981020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027653, 34.715775, 27.201391>,  <34.184353, 34.591026, 27.333614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027653, 34.715775, 27.201391>,  <33.766487, 34.923691, 26.981020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027653, 34.715775, 27.201391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462966, 0.301804, 0.833412,
		-0.599471, -0.799208, -0.043593,
		0.652914, -0.519789, 0.550930,
		34.223526, 34.559837, 27.366671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366158, 34.622532, 27.448454>,  <33.766487, 34.923691, 26.981020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366158, 34.622532, 27.448454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729233, 34.569038, 27.607555>,  <33.947079, 34.536942, 27.703016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729233, 34.569038, 27.607555>,  <33.366158, 34.622532, 27.448454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729233, 34.569038, 27.607555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327778, 0.365893, 0.871024,
		-0.262024, -0.920998, 0.288282,
		0.907692, -0.133737, 0.397756,
		34.001541, 34.528919, 27.726883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351036, 34.271072, 28.055418>,  <33.366158, 34.622532, 27.448454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351036, 34.271072, 28.055418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701309, 34.463181, 28.075487>,  <33.911472, 34.578445, 28.087528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701309, 34.463181, 28.075487>,  <33.351036, 34.271072, 28.055418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701309, 34.463181, 28.075487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271675, 0.404102, 0.873438,
		0.399181, -0.778503, 0.484342,
		0.875698, 0.480244, 0.050190,
		33.964016, 34.607262, 28.090540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441715, 34.112400, 28.671919>,  <33.351036, 34.271072, 28.055418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441715, 34.112400, 28.671919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682999, 34.413837, 28.567436>,  <33.827770, 34.594700, 28.504745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682999, 34.413837, 28.567436>,  <33.441715, 34.112400, 28.671919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682999, 34.413837, 28.567436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267672, 0.499782, 0.823754,
		0.751326, -0.426977, 0.503190,
		0.603209, 0.753597, -0.261209,
		33.863960, 34.639915, 28.489073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664345, 34.350948, 29.336445>,  <33.441715, 34.112400, 28.671919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664345, 34.350948, 29.336445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728848, 34.652935, 29.082195>,  <33.767551, 34.834126, 28.929646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728848, 34.652935, 29.082195>,  <33.664345, 34.350948, 29.336445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728848, 34.652935, 29.082195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191393, 0.655752, 0.730314,
		0.968176, 0.003883, 0.250242,
		0.161261, 0.754967, -0.635626,
		33.777225, 34.879425, 28.891508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139061, 34.855881, 29.675966>,  <33.664345, 34.350948, 29.336445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139061, 34.855881, 29.675966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920860, 35.038124, 29.394585>,  <33.789940, 35.147469, 29.225756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920860, 35.038124, 29.394585>,  <34.139061, 34.855881, 29.675966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920860, 35.038124, 29.394585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158236, 0.768252, 0.620283,
		0.823033, 0.449680, -0.346993,
		-0.545507, 0.455607, -0.703452,
		33.757210, 35.174805, 29.183548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140419, 35.517803, 29.917650>,  <34.139061, 34.855881, 29.675966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140419, 35.517803, 29.917650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872993, 35.503384, 29.620539>,  <33.712540, 35.494732, 29.442272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872993, 35.503384, 29.620539>,  <34.140419, 35.517803, 29.917650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872993, 35.503384, 29.620539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468980, 0.795601, 0.383506,
		0.577130, 0.604747, -0.548819,
		-0.668565, -0.036052, -0.742779,
		33.672424, 35.492569, 29.397705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255829, 36.163837, 29.563992>,  <34.140419, 35.517803, 29.917650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255829, 36.163837, 29.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879322, 36.040737, 29.508413>,  <33.653419, 35.966877, 29.475065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879322, 36.040737, 29.508413>,  <34.255829, 36.163837, 29.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879322, 36.040737, 29.508413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336321, 0.817798, 0.467007,
		-0.030091, 0.486309, -0.873269,
		-0.941267, -0.307751, -0.138948,
		33.596943, 35.948410, 29.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920353, 36.772163, 29.258337>,  <34.255829, 36.163837, 29.563992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920353, 36.772163, 29.258337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622902, 36.554161, 29.413246>,  <33.444431, 36.423359, 29.506191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622902, 36.554161, 29.413246>,  <33.920353, 36.772163, 29.258337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622902, 36.554161, 29.413246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238257, 0.757230, 0.608142,
		-0.624697, 0.359963, -0.692951,
		-0.743631, -0.545005, 0.387275,
		33.399811, 36.390659, 29.529428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404942, 37.290829, 29.239422>,  <33.920353, 36.772163, 29.258337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404942, 37.290829, 29.239422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276077, 36.999641, 29.481504>,  <33.198757, 36.824928, 29.626755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276077, 36.999641, 29.481504>,  <33.404942, 37.290829, 29.239422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276077, 36.999641, 29.481504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465430, 0.678487, 0.568358,
		-0.824371, -0.098578, -0.557400,
		-0.322161, -0.727968, 0.605206,
		33.179428, 36.781250, 29.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690022, 37.388363, 29.466408>,  <33.404942, 37.290829, 29.239422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690022, 37.388363, 29.466408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846096, 37.152042, 29.748886>,  <32.939739, 37.010250, 29.918373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846096, 37.152042, 29.748886>,  <32.690022, 37.388363, 29.466408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846096, 37.152042, 29.748886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267960, 0.660926, 0.700981,
		-0.880881, -0.462746, 0.099574,
		0.390187, -0.590799, 0.706194,
		32.963154, 36.974804, 29.960745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195618, 37.381718, 29.953415>,  <32.690022, 37.388363, 29.466408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195618, 37.381718, 29.953415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529118, 37.270882, 30.144447>,  <32.729218, 37.204380, 30.259068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529118, 37.270882, 30.144447>,  <32.195618, 37.381718, 29.953415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529118, 37.270882, 30.144447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259341, 0.567078, 0.781770,
		-0.487449, -0.775655, 0.400939,
		0.833748, -0.277093, 0.477581,
		32.779243, 37.187752, 30.287722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053535, 37.117123, 30.744871>,  <32.195618, 37.381718, 29.953415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053535, 37.117123, 30.744871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442543, 37.206879, 30.719999>,  <32.675945, 37.260731, 30.705076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442543, 37.206879, 30.719999>,  <32.053535, 37.117123, 30.744871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442543, 37.206879, 30.719999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071755, 0.542859, 0.836753,
		0.221509, -0.809293, 0.544039,
		0.972515, 0.224386, -0.062178,
		32.734299, 37.274193, 30.701345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234379, 37.250317, 31.449791>,  <32.053535, 37.117123, 30.744871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234379, 37.250317, 31.449791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583359, 37.341194, 31.276718>,  <32.792747, 37.395721, 31.172874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583359, 37.341194, 31.276718>,  <32.234379, 37.250317, 31.449791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583359, 37.341194, 31.276718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246444, 0.560023, 0.790974,
		0.422014, -0.796718, 0.432603,
		0.872450, 0.227190, -0.432684,
		32.845093, 37.409351, 31.146914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916363, 36.966503, 31.786310>,  <32.234379, 37.250317, 31.449791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916363, 36.966503, 31.786310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987274, 37.308273, 31.590954>,  <33.029819, 37.513336, 31.473740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987274, 37.308273, 31.590954>,  <32.916363, 36.966503, 31.786310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987274, 37.308273, 31.590954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157111, 0.465316, 0.871089,
		0.971539, -0.231155, -0.051751,
		0.177277, 0.854428, -0.488390,
		33.040459, 37.564602, 31.444437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448273, 37.329937, 32.179256>,  <32.916363, 36.966503, 31.786310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448273, 37.329937, 32.179256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314968, 37.634247, 31.956490>,  <33.234985, 37.816833, 31.822830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314968, 37.634247, 31.956490>,  <33.448273, 37.329937, 32.179256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314968, 37.634247, 31.956490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175636, 0.630438, 0.756108,
		0.926331, 0.154165, -0.343720,
		-0.333260, 0.760777, -0.556917,
		33.214989, 37.862480, 31.789413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984165, 36.981171, 32.439564>,  <33.448273, 37.329937, 32.179256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984165, 36.981171, 32.439564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097084, 36.913128, 32.817215>,  <34.164837, 36.872303, 33.043804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097084, 36.913128, 32.817215>,  <33.984165, 36.981171, 32.439564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097084, 36.913128, 32.817215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862398, 0.476084, -0.172084,
		-0.420211, 0.862791, 0.281094,
		0.282297, -0.170103, 0.944126,
		34.181774, 36.862099, 33.100452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534195, 37.017952, 31.862568>,  <33.984165, 36.981171, 32.439564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534195, 37.017952, 31.862568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693634, 36.744267, 32.106853>,  <34.789295, 36.580055, 32.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693634, 36.744267, 32.106853>,  <34.534195, 37.017952, 31.862568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693634, 36.744267, 32.106853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643903, -0.265402, -0.717601,
		0.653079, 0.679271, 0.334782,
		0.398594, -0.684217, 0.610712,
		34.813213, 36.539001, 32.290066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351028, 37.138931, 31.919115>,  <34.534195, 37.017952, 31.862568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351028, 37.138931, 31.919115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241688, 36.764275, 32.006733>,  <35.176083, 36.539482, 32.059303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241688, 36.764275, 32.006733>,  <35.351028, 37.138931, 31.919115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241688, 36.764275, 32.006733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696445, -0.349786, -0.626590,
		0.663510, -0.018723, 0.747933,
		-0.273348, -0.936643, 0.219047,
		35.159683, 36.483280, 32.072449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946442, 36.844738, 32.147873>,  <35.351028, 37.138931, 31.919115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946442, 36.844738, 32.147873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720867, 36.537613, 32.026257>,  <35.585522, 36.353340, 31.953287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720867, 36.537613, 32.026257>,  <35.946442, 36.844738, 32.147873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720867, 36.537613, 32.026257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736026, -0.300368, -0.606667,
		0.374481, -0.565904, 0.734518,
		-0.563941, -0.767810, -0.304038,
		35.551685, 36.307270, 31.935045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449055, 36.378376, 31.908123>,  <35.946442, 36.844738, 32.147873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449055, 36.378376, 31.908123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111298, 36.233219, 31.750488>,  <35.908642, 36.146126, 31.655909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111298, 36.233219, 31.750488>,  <36.449055, 36.378376, 31.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111298, 36.233219, 31.750488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523023, -0.399240, -0.753030,
		0.115935, -0.841971, 0.526919,
		-0.844397, -0.362894, -0.394084,
		35.857979, 36.124352, 31.632263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627708, 35.691166, 31.848616>,  <36.449055, 36.378376, 31.908123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627708, 35.691166, 31.848616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294270, 35.713528, 31.628799>,  <36.094208, 35.726944, 31.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294270, 35.713528, 31.628799>,  <36.627708, 35.691166, 31.848616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294270, 35.713528, 31.628799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435793, -0.544749, -0.716473,
		-0.339417, -0.836734, 0.429736,
		-0.833595, 0.055907, -0.549539,
		36.044189, 35.730301, 31.463938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480320, 35.088287, 31.753859>,  <36.627708, 35.691166, 31.848616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480320, 35.088287, 31.753859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284729, 35.281731, 31.463474>,  <36.167374, 35.397797, 31.289244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284729, 35.281731, 31.463474>,  <36.480320, 35.088287, 31.753859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284729, 35.281731, 31.463474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500299, -0.526269, -0.687562,
		-0.714563, -0.699402, 0.015386,
		-0.488979, 0.483609, -0.725962,
		36.138035, 35.426815, 31.245686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226185, 34.581654, 31.353941>,  <36.480320, 35.088287, 31.753859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226185, 34.581654, 31.353941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243996, 34.915836, 31.134842>,  <36.254681, 35.116348, 31.003384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243996, 34.915836, 31.134842>,  <36.226185, 34.581654, 31.353941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243996, 34.915836, 31.134842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357450, -0.525314, -0.772188,
		-0.932870, -0.161409, -0.322025,
		0.044526, 0.835460, -0.547745,
		36.257355, 35.166473, 30.970518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847805, 34.482372, 30.675497>,  <36.226185, 34.581654, 31.353941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847805, 34.482372, 30.675497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108032, 34.782108, 30.626101>,  <36.264168, 34.961952, 30.596462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108032, 34.782108, 30.626101>,  <35.847805, 34.482372, 30.675497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108032, 34.782108, 30.626101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294058, -0.398470, -0.868764,
		-0.700210, 0.528874, -0.479581,
		0.650566, 0.749342, -0.123493,
		36.303204, 35.006912, 30.589052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814003, 34.719353, 29.975199>,  <35.847805, 34.482372, 30.675497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814003, 34.719353, 29.975199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164669, 34.891594, 30.061022>,  <36.375069, 34.994938, 30.112514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164669, 34.891594, 30.061022>,  <35.814003, 34.719353, 29.975199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164669, 34.891594, 30.061022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340690, -0.240780, -0.908821,
		-0.339679, 0.869832, -0.357786,
		0.876669, 0.430601, 0.214556,
		36.427670, 35.020775, 30.125389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937542, 35.264778, 29.545366>,  <35.814003, 34.719353, 29.975199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937542, 35.264778, 29.545366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298763, 35.167992, 29.687325>,  <36.515495, 35.109921, 29.772499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298763, 35.167992, 29.687325>,  <35.937542, 35.264778, 29.545366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298763, 35.167992, 29.687325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339477, -0.104160, -0.934829,
		0.263160, 0.964679, -0.011921,
		0.903052, -0.241962, 0.354897,
		36.569679, 35.095402, 29.793793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450356, 35.588638, 29.029369>,  <35.937542, 35.264778, 29.545366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450356, 35.588638, 29.029369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664589, 35.306095, 29.214502>,  <36.793129, 35.136570, 29.325583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664589, 35.306095, 29.214502>,  <36.450356, 35.588638, 29.029369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664589, 35.306095, 29.214502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410437, -0.261253, -0.873664,
		0.738033, 0.657883, 0.149991,
		0.535583, -0.706354, 0.462833,
		36.825264, 35.094189, 29.353352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097618, 35.604027, 28.765455>,  <36.450356, 35.588638, 29.029369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097618, 35.604027, 28.765455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115349, 35.240971, 28.932413>,  <37.125988, 35.023136, 29.032587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.115349, 35.240971, 28.932413>,  <37.097618, 35.604027, 28.765455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115349, 35.240971, 28.932413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418939, -0.362402, -0.832559,
		0.906931, 0.211771, 0.364182,
		0.044331, -0.907644, 0.417393,
		37.128647, 34.968678, 29.057631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733913, 35.354660, 28.614294>,  <37.097618, 35.604027, 28.765455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733913, 35.354660, 28.614294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511662, 35.028839, 28.680964>,  <37.378311, 34.833347, 28.720964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511662, 35.028839, 28.680964>,  <37.733913, 35.354660, 28.614294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511662, 35.028839, 28.680964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267303, -0.364830, -0.891879,
		0.787290, -0.451002, 0.420443,
		-0.555630, -0.814553, 0.166672,
		37.344975, 34.784473, 28.730965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096657, 34.873707, 28.422552>,  <37.733913, 35.354660, 28.614294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096657, 34.873707, 28.422552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740128, 34.692429, 28.417458>,  <37.526211, 34.583660, 28.414400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740128, 34.692429, 28.417458>,  <38.096657, 34.873707, 28.422552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740128, 34.692429, 28.417458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223300, -0.414376, -0.882286,
		0.394573, -0.789243, 0.470540,
		-0.891319, -0.453198, -0.012736,
		37.472733, 34.556469, 28.413637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170597, 34.066952, 28.212170>,  <38.096657, 34.873707, 28.422552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170597, 34.066952, 28.212170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782616, 34.141476, 28.149588>,  <37.549828, 34.186192, 28.112038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782616, 34.141476, 28.149588>,  <38.170597, 34.066952, 28.212170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782616, 34.141476, 28.149588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041846, -0.505744, -0.861668,
		-0.239664, -0.842325, 0.482752,
		-0.969954, 0.186309, -0.156456,
		37.491631, 34.197369, 28.102652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937599, 33.450581, 27.804974>,  <38.170597, 34.066952, 28.212170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937599, 33.450581, 27.804974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653580, 33.726303, 27.747431>,  <37.483170, 33.891735, 27.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653580, 33.726303, 27.747431>,  <37.937599, 33.450581, 27.804974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653580, 33.726303, 27.747431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087165, -0.288766, -0.953424,
		-0.698741, -0.664434, 0.265120,
		-0.710045, 0.689305, -0.143857,
		37.440567, 33.933094, 27.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400871, 33.033718, 27.577444>,  <37.937599, 33.450581, 27.804974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400871, 33.033718, 27.577444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359608, 33.419228, 27.479052>,  <37.334850, 33.650532, 27.420015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359608, 33.419228, 27.479052>,  <37.400871, 33.033718, 27.577444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359608, 33.419228, 27.479052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323814, -0.266370, -0.907850,
		-0.940480, -0.014001, 0.339561,
		-0.103159, 0.963769, -0.245982,
		37.328659, 33.708359, 27.405256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691647, 33.152790, 27.448492>,  <37.400871, 33.033718, 27.577444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691647, 33.152790, 27.448492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935871, 33.400570, 27.251108>,  <37.082405, 33.549236, 27.132677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.935871, 33.400570, 27.251108>,  <36.691647, 33.152790, 27.448492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935871, 33.400570, 27.251108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277034, -0.416664, -0.865819,
		-0.741937, 0.665339, -0.082790,
		0.610559, 0.619448, -0.493460,
		37.119038, 33.586403, 27.103069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463837, 33.114838, 26.733437>,  <36.691647, 33.152790, 27.448492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463837, 33.114838, 26.733437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781441, 33.340923, 26.643911>,  <36.972004, 33.476574, 26.590197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781441, 33.340923, 26.643911>,  <36.463837, 33.114838, 26.733437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781441, 33.340923, 26.643911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062346, -0.441941, -0.894875,
		-0.604705, 0.696582, -0.386142,
		0.794006, 0.565210, -0.223815,
		37.019642, 33.510487, 26.576767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404579, 33.274662, 26.019268>,  <36.463837, 33.114838, 26.733437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404579, 33.274662, 26.019268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791630, 33.346973, 26.089705>,  <37.023861, 33.390362, 26.131966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791630, 33.346973, 26.089705>,  <36.404579, 33.274662, 26.019268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791630, 33.346973, 26.089705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250755, -0.609948, -0.751722,
		-0.028491, 0.771545, -0.635537,
		0.967631, 0.180781, 0.176091,
		37.081921, 33.401207, 26.142532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723015, 33.632378, 25.465080>,  <36.404579, 33.274662, 26.019268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723015, 33.632378, 25.465080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000393, 33.427704, 25.667984>,  <37.166821, 33.304901, 25.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000393, 33.427704, 25.667984>,  <36.723015, 33.632378, 25.465080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000393, 33.427704, 25.667984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226700, -0.513325, -0.827710,
		0.683915, 0.688968, -0.239965,
		0.693446, -0.511683, 0.507260,
		37.208427, 33.274200, 25.820162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350330, 33.577938, 24.993973>,  <36.723015, 33.632378, 25.465080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350330, 33.577938, 24.993973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408348, 33.311951, 25.287033>,  <37.443157, 33.152359, 25.462870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408348, 33.311951, 25.287033>,  <37.350330, 33.577938, 24.993973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408348, 33.311951, 25.287033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262545, -0.688068, -0.676485,
		0.953956, 0.290474, 0.074785,
		0.145044, -0.664972, 0.732649,
		37.451862, 33.112461, 25.506828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974251, 33.188255, 24.874840>,  <37.350330, 33.577938, 24.993973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974251, 33.188255, 24.874840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769749, 32.942356, 25.115074>,  <37.647045, 32.794819, 25.259214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769749, 32.942356, 25.115074>,  <37.974251, 33.188255, 24.874840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769749, 32.942356, 25.115074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022910, -0.688825, -0.724565,
		0.859121, -0.384201, 0.338084,
		-0.511259, -0.614744, 0.600586,
		37.616371, 32.757935, 25.295250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145908, 32.461018, 24.585318>,  <37.974251, 33.188255, 24.874840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145908, 32.461018, 24.585318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844963, 32.370377, 24.832735>,  <37.664394, 32.315994, 24.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844963, 32.370377, 24.832735>,  <38.145908, 32.461018, 24.585318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844963, 32.370377, 24.832735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004171, -0.937317, -0.348453,
		0.658732, -0.264744, 0.704260,
		-0.752366, -0.226600, 0.618545,
		37.619255, 32.302395, 25.018299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372429, 31.833401, 24.897806>,  <38.145908, 32.461018, 24.585318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372429, 31.833401, 24.897806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979450, 31.882757, 24.953758>,  <37.743664, 31.912371, 24.987329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979450, 31.882757, 24.953758>,  <38.372429, 31.833401, 24.897806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979450, 31.882757, 24.953758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157145, -0.951542, -0.264336,
		0.100483, -0.281678, 0.954233,
		-0.982451, 0.123392, 0.139878,
		37.684715, 31.919775, 24.995722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226021, 31.305758, 25.422369>,  <38.372429, 31.833401, 24.897806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226021, 31.305758, 25.422369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903030, 31.384079, 25.199787>,  <37.709236, 31.431072, 25.066238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903030, 31.384079, 25.199787>,  <38.226021, 31.305758, 25.422369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903030, 31.384079, 25.199787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125071, -0.978686, -0.162886,
		-0.576490, -0.061930, 0.814754,
		-0.807476, 0.195804, -0.556456,
		37.660789, 31.442820, 25.032850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748074, 30.868258, 25.655375>,  <38.226021, 31.305758, 25.422369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748074, 30.868258, 25.655375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638069, 30.987404, 25.289721>,  <37.572067, 31.058891, 25.070328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638069, 30.987404, 25.289721>,  <37.748074, 30.868258, 25.655375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638069, 30.987404, 25.289721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142214, -0.952942, -0.267724,
		-0.950867, 0.056378, 0.304424,
		-0.275004, 0.297863, -0.914139,
		37.555565, 31.076763, 25.015480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496841, 30.246271, 25.456928>,  <37.748074, 30.868258, 25.655375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496841, 30.246271, 25.456928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481480, 30.469696, 25.125500>,  <37.472263, 30.603750, 24.926641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481480, 30.469696, 25.125500>,  <37.496841, 30.246271, 25.456928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481480, 30.469696, 25.125500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350930, -0.783908, -0.512187,
		-0.935614, 0.271101, 0.226122,
		-0.038405, 0.558563, -0.828573,
		37.469959, 30.637264, 24.876928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892429, 30.101971, 25.192726>,  <37.496841, 30.246271, 25.456928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892429, 30.101971, 25.192726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124317, 30.237169, 24.896164>,  <37.263451, 30.318289, 24.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124317, 30.237169, 24.896164>,  <36.892429, 30.101971, 25.192726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124317, 30.237169, 24.896164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275669, -0.774892, -0.568814,
		-0.766766, 0.534136, -0.356046,
		0.579721, 0.337997, -0.741405,
		37.298233, 30.338568, 24.673742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411404, 29.990479, 24.700052>,  <36.892429, 30.101971, 25.192726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411404, 29.990479, 24.700052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774254, 30.047743, 24.541748>,  <36.991962, 30.082102, 24.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774254, 30.047743, 24.541748>,  <36.411404, 29.990479, 24.700052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774254, 30.047743, 24.541748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189251, -0.701170, -0.687418,
		-0.375906, 0.698473, -0.608957,
		0.907126, 0.143159, -0.395761,
		37.046391, 30.090691, 24.423019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347034, 30.211237, 23.922981>,  <36.411404, 29.990479, 24.700052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347034, 30.211237, 23.922981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706703, 30.048622, 23.987741>,  <36.922504, 29.951054, 24.026598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706703, 30.048622, 23.987741>,  <36.347034, 30.211237, 23.922981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706703, 30.048622, 23.987741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117917, -0.581401, -0.805027,
		0.421400, 0.704770, -0.570719,
		0.899176, -0.406536, 0.161898,
		36.976456, 29.926661, 24.036310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516903, 29.972885, 23.219086>,  <36.347034, 30.211237, 23.922981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516903, 29.972885, 23.219086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808006, 29.808680, 23.438847>,  <36.982670, 29.710155, 23.570704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808006, 29.808680, 23.438847>,  <36.516903, 29.972885, 23.219086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808006, 29.808680, 23.438847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186646, -0.652291, -0.734629,
		0.659947, 0.637177, -0.398090,
		0.727759, -0.410514, 0.549404,
		37.026333, 29.685526, 23.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113323, 29.892689, 22.772333>,  <36.516903, 29.972885, 23.219086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113323, 29.892689, 22.772333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133717, 29.641380, 23.082861>,  <37.145950, 29.490595, 23.269178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133717, 29.641380, 23.082861>,  <37.113323, 29.892689, 22.772333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133717, 29.641380, 23.082861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250213, -0.744505, -0.618956,
		0.966848, 0.225799, 0.119248,
		0.050979, -0.628273, 0.776321,
		37.149010, 29.452898, 23.315758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712753, 29.621311, 22.672680>,  <37.113323, 29.892689, 22.772333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712753, 29.621311, 22.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547443, 29.353935, 22.920031>,  <37.448257, 29.193510, 23.068441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547443, 29.353935, 22.920031>,  <37.712753, 29.621311, 22.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547443, 29.353935, 22.920031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303844, -0.741393, -0.598344,
		0.858417, -0.059392, 0.509502,
		-0.413278, -0.668438, 0.618378,
		37.423458, 29.153404, 23.105545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220249, 29.054487, 22.704971>,  <37.712753, 29.621311, 22.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220249, 29.054487, 22.704971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864399, 28.924217, 22.833036>,  <37.650890, 28.846054, 22.909876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864399, 28.924217, 22.833036>,  <38.220249, 29.054487, 22.704971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864399, 28.924217, 22.833036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050841, -0.767310, -0.639258,
		0.453854, -0.552422, 0.699175,
		-0.889625, -0.325677, 0.320161,
		37.597511, 28.826515, 22.929085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386963, 28.333939, 22.956301>,  <38.220249, 29.054487, 22.704971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386963, 28.333939, 22.956301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001133, 28.357857, 22.853529>,  <37.769634, 28.372208, 22.791866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001133, 28.357857, 22.853529>,  <38.386963, 28.333939, 22.956301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001133, 28.357857, 22.853529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075211, -0.871210, -0.485116,
		-0.252845, -0.487257, 0.835853,
		-0.964579, 0.059793, -0.256928,
		37.711758, 28.375795, 22.776451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240421, 27.638096, 22.975166>,  <38.386963, 28.333939, 22.956301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240421, 27.638096, 22.975166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925171, 27.779642, 22.773720>,  <37.736019, 27.864571, 22.652851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925171, 27.779642, 22.773720>,  <38.240421, 27.638096, 22.975166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925171, 27.779642, 22.773720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094615, -0.878138, -0.468957,
		-0.608195, -0.321948, 0.725567,
		-0.788128, 0.353867, -0.503618,
		37.688732, 27.885803, 22.622635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519920, 27.418661, 23.280605>,  <38.240421, 27.638096, 22.975166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519920, 27.418661, 23.280605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649464, 27.058659, 23.397299>,  <37.727188, 26.842657, 23.467316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649464, 27.058659, 23.397299>,  <37.519920, 27.418661, 23.280605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649464, 27.058659, 23.397299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066372, 0.285982, 0.955934,
		-0.943776, -0.328947, 0.032881,
		0.323855, -0.900004, 0.291736,
		37.746620, 26.788658, 23.484819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034863, 27.283377, 23.747189>,  <37.519920, 27.418661, 23.280605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034863, 27.283377, 23.747189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346031, 27.043818, 23.823254>,  <37.532730, 26.900082, 23.868893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346031, 27.043818, 23.823254>,  <37.034863, 27.283377, 23.747189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346031, 27.043818, 23.823254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086651, 0.197494, 0.976467,
		-0.622361, -0.776090, 0.101739,
		0.777919, -0.598899, 0.190162,
		37.579407, 26.864147, 23.880302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801674, 26.840132, 24.241837>,  <37.034863, 27.283377, 23.747189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801674, 26.840132, 24.241837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200802, 26.859261, 24.260056>,  <37.440277, 26.870737, 24.270987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200802, 26.859261, 24.260056>,  <36.801674, 26.840132, 24.241837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200802, 26.859261, 24.260056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053609, 0.183763, 0.981508,
		0.038566, -0.981807, 0.185925,
		0.997817, 0.047820, 0.045547,
		37.500149, 26.873608, 24.273720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001129, 26.443039, 24.907021>,  <36.801674, 26.840132, 24.241837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001129, 26.443039, 24.907021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310860, 26.680904, 24.820494>,  <37.496696, 26.823624, 24.768578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310860, 26.680904, 24.820494>,  <37.001129, 26.443039, 24.907021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310860, 26.680904, 24.820494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116885, 0.201552, 0.972479,
		0.621897, -0.778301, 0.086560,
		0.774327, 0.594664, -0.216317,
		37.543159, 26.859304, 24.755598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505924, 26.284870, 25.461153>,  <37.001129, 26.443039, 24.907021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505924, 26.284870, 25.461153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636162, 26.630415, 25.307411>,  <37.714306, 26.837742, 25.215166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636162, 26.630415, 25.307411>,  <37.505924, 26.284870, 25.461153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636162, 26.630415, 25.307411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283738, 0.298500, 0.911258,
		0.901931, -0.405758, -0.147920,
		0.325596, 0.863862, -0.384355,
		37.733841, 26.889574, 25.192104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179089, 26.360188, 25.760456>,  <37.505924, 26.284870, 25.461153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179089, 26.360188, 25.760456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043865, 26.722788, 25.659285>,  <37.962730, 26.940348, 25.598581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043865, 26.722788, 25.659285>,  <38.179089, 26.360188, 25.760456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043865, 26.722788, 25.659285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280230, 0.353517, 0.892467,
		0.898437, 0.230826, -0.373537,
		-0.338057, 0.906502, -0.252928,
		37.942448, 26.994738, 25.583406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750259, 26.828712, 25.937971>,  <38.179089, 26.360188, 25.760456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750259, 26.828712, 25.937971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430264, 27.068653, 25.943466>,  <38.238266, 27.212618, 25.946764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.430264, 27.068653, 25.943466>,  <38.750259, 26.828712, 25.937971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430264, 27.068653, 25.943466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293090, 0.370696, 0.881296,
		0.523554, 0.709057, -0.472365,
		-0.799993, 0.599852, 0.013738,
		38.190266, 27.248610, 25.947588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093506, 27.340393, 26.111361>,  <38.750259, 26.828712, 25.937971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093506, 27.340393, 26.111361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720295, 27.472113, 26.169344>,  <38.496368, 27.551144, 26.204134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720295, 27.472113, 26.169344>,  <39.093506, 27.340393, 26.111361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720295, 27.472113, 26.169344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334175, 0.643838, 0.688331,
		0.133336, 0.690677, -0.710765,
		-0.933032, 0.329300, 0.144960,
		38.440384, 27.570902, 26.212831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321480, 28.031866, 26.160345>,  <39.093506, 27.340393, 26.111361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321480, 28.031866, 26.160345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952065, 27.967251, 26.299471>,  <38.730415, 27.928482, 26.382946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952065, 27.967251, 26.299471>,  <39.321480, 28.031866, 26.160345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952065, 27.967251, 26.299471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164480, 0.652452, 0.739766,
		-0.346432, 0.740413, -0.575997,
		-0.923542, -0.161539, 0.347814,
		38.675003, 27.918789, 26.403814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865326, 28.701336, 26.227118>,  <39.321480, 28.031866, 26.160345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865326, 28.701336, 26.227118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731346, 28.437592, 26.496355>,  <38.650959, 28.279345, 26.657898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731346, 28.437592, 26.496355>,  <38.865326, 28.701336, 26.227118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731346, 28.437592, 26.496355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082859, 0.690977, 0.718112,
		-0.938585, 0.296304, -0.176810,
		-0.334951, -0.659359, 0.673092,
		38.630859, 28.239784, 26.698282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517128, 29.118826, 26.674273>,  <38.865326, 28.701336, 26.227118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517128, 29.118826, 26.674273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555798, 28.799656, 26.912254>,  <38.578999, 28.608154, 27.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555798, 28.799656, 26.912254>,  <38.517128, 29.118826, 26.674273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555798, 28.799656, 26.912254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081689, 0.602096, 0.794233,
		-0.991958, -0.028181, 0.123389,
		0.096674, -0.797926, 0.594952,
		38.584801, 28.560278, 27.090740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106102, 29.315149, 27.288805>,  <38.517128, 29.118826, 26.674273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106102, 29.315149, 27.288805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353252, 29.022844, 27.404886>,  <38.501541, 28.847462, 27.474535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353252, 29.022844, 27.404886>,  <38.106102, 29.315149, 27.288805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353252, 29.022844, 27.404886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127773, 0.457497, 0.879984,
		-0.775826, -0.506639, 0.376047,
		0.617875, -0.730762, 0.290203,
		38.538616, 28.803616, 27.491947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831718, 29.066631, 27.929296>,  <38.106102, 29.315149, 27.288805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831718, 29.066631, 27.929296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221058, 28.975178, 27.922083>,  <38.454662, 28.920305, 27.917755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221058, 28.975178, 27.922083>,  <37.831718, 29.066631, 27.929296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221058, 28.975178, 27.922083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141709, 0.537742, 0.831115,
		-0.180323, -0.811517, 0.555808,
		0.973346, -0.228633, -0.018032,
		38.513062, 28.906588, 27.916674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959888, 28.993908, 28.588268>,  <37.831718, 29.066631, 27.929296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959888, 28.993908, 28.588268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320881, 29.060329, 28.429295>,  <38.537476, 29.100183, 28.333910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320881, 29.060329, 28.429295>,  <37.959888, 28.993908, 28.588268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320881, 29.060329, 28.429295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210991, 0.633987, 0.744004,
		0.375514, -0.755305, 0.537126,
		0.902481, 0.166055, -0.397434,
		38.591625, 29.110146, 28.310064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431610, 28.805182, 29.107634>,  <37.959888, 28.993908, 28.588268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431610, 28.805182, 29.107634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553543, 29.063580, 28.827700>,  <38.626705, 29.218618, 28.659740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553543, 29.063580, 28.827700>,  <38.431610, 28.805182, 29.107634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553543, 29.063580, 28.827700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227086, 0.664315, 0.712122,
		0.924936, -0.376003, 0.055811,
		0.304836, 0.645993, -0.699834,
		38.644993, 29.257378, 28.617750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845112, 29.322752, 29.546337>,  <38.431610, 28.805182, 29.107634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845112, 29.322752, 29.546337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828724, 29.520956, 29.199282>,  <38.818893, 29.639877, 28.991049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828724, 29.520956, 29.199282>,  <38.845112, 29.322752, 29.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828724, 29.520956, 29.199282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025280, 0.868601, 0.494866,
		0.998841, -0.001660, -0.048111,
		-0.040967, 0.495509, -0.867636,
		38.816433, 29.669609, 28.938992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318588, 29.864132, 29.637732>,  <38.845112, 29.322752, 29.546337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318588, 29.864132, 29.637732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091896, 29.948662, 29.319195>,  <38.955879, 29.999380, 29.128073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091896, 29.948662, 29.319195>,  <39.318588, 29.864132, 29.637732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091896, 29.948662, 29.319195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075663, 0.975811, 0.205105,
		0.820421, 0.055986, -0.569012,
		-0.566731, 0.211325, -0.796340,
		38.921875, 30.012060, 29.080294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664429, 30.313807, 29.250521>,  <39.318588, 29.864132, 29.637732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664429, 30.313807, 29.250521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279339, 30.377939, 29.163385>,  <39.048286, 30.416418, 29.111105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279339, 30.377939, 29.163385>,  <39.664429, 30.313807, 29.250521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279339, 30.377939, 29.163385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077897, 0.935604, 0.344350,
		0.259019, 0.314546, -0.913220,
		-0.962726, 0.160330, -0.217837,
		38.990520, 30.426039, 29.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648750, 30.901493, 28.908924>,  <39.664429, 30.313807, 29.250521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648750, 30.901493, 28.908924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284996, 30.846802, 29.066059>,  <39.066742, 30.813988, 29.160339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.284996, 30.846802, 29.066059>,  <39.648750, 30.901493, 28.908924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284996, 30.846802, 29.066059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015473, 0.954896, 0.296538,
		-0.415664, 0.263589, -0.870485,
		-0.909387, -0.136729, 0.392837,
		39.012180, 30.805782, 29.183910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108288, 31.502827, 28.665339>,  <39.648750, 30.901493, 28.908924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108288, 31.502827, 28.665339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954800, 31.348982, 29.001156>,  <38.862709, 31.256676, 29.202646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954800, 31.348982, 29.001156>,  <39.108288, 31.502827, 28.665339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954800, 31.348982, 29.001156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220514, 0.921000, 0.321142,
		-0.896736, -0.061904, -0.438215,
		-0.383716, -0.384612, 0.839545,
		38.839684, 31.233599, 29.253019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425907, 31.871878, 28.737993>,  <39.108288, 31.502827, 28.665339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425907, 31.871878, 28.737993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527664, 31.727545, 29.096899>,  <38.588718, 31.640945, 29.312243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527664, 31.727545, 29.096899>,  <38.425907, 31.871878, 28.737993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527664, 31.727545, 29.096899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199306, 0.888310, 0.413741,
		-0.946340, -0.284085, 0.154067,
		0.254397, -0.360834, 0.897263,
		38.603985, 31.619295, 29.366077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818607, 31.892794, 29.165297>,  <38.425907, 31.871878, 28.737993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818607, 31.892794, 29.165297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147633, 31.881260, 29.392473>,  <38.345047, 31.874340, 29.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147633, 31.881260, 29.392473>,  <37.818607, 31.892794, 29.165297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147633, 31.881260, 29.392473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347790, 0.764653, 0.542538,
		-0.449921, -0.643797, 0.618948,
		0.822565, -0.028835, 0.567940,
		38.394402, 31.872610, 29.562855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572693, 31.921236, 29.849945>,  <37.818607, 31.892794, 29.165297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572693, 31.921236, 29.849945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962521, 32.003090, 29.886457>,  <38.196419, 32.052204, 29.908365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962521, 32.003090, 29.886457>,  <37.572693, 31.921236, 29.849945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962521, 32.003090, 29.886457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202871, 0.632860, 0.747215,
		0.095138, -0.746734, 0.658283,
		0.974573, 0.204636, 0.091282,
		38.254894, 32.064480, 29.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630276, 32.050713, 30.591805>,  <37.572693, 31.921236, 29.849945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630276, 32.050713, 30.591805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952885, 32.204414, 30.412083>,  <38.146450, 32.296635, 30.304249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952885, 32.204414, 30.412083>,  <37.630276, 32.050713, 30.591805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952885, 32.204414, 30.412083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151988, 0.599679, 0.785675,
		0.571333, -0.701953, 0.425253,
		0.806522, 0.384248, -0.449305,
		38.194839, 32.319691, 30.277290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236046, 32.000229, 31.063179>,  <37.630276, 32.050713, 30.591805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236046, 32.000229, 31.063179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 32.309490, 30.813644>,  <38.309189, 32.495049, 30.663923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281761, 32.309490, 30.813644>,  <38.236046, 32.000229, 31.063179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281761, 32.309490, 30.813644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007792, 0.628631, 0.777665,
		0.993417, -0.084016, 0.077869,
		0.114287, 0.773153, -0.623838,
		38.316048, 32.541435, 30.626493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672035, 32.412682, 31.428125>,  <38.236046, 32.000229, 31.063179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672035, 32.412682, 31.428125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533745, 32.663986, 31.149340>,  <38.450771, 32.814770, 30.982069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533745, 32.663986, 31.149340>,  <38.672035, 32.412682, 31.428125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533745, 32.663986, 31.149340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036680, 0.751245, 0.659003,
		0.937618, 0.202270, -0.282769,
		-0.345725, 0.628265, -0.696962,
		38.430027, 32.852467, 30.940250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083340, 32.976460, 31.389301>,  <38.672035, 32.412682, 31.428125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083340, 32.976460, 31.389301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755161, 33.131592, 31.221275>,  <38.558254, 33.224670, 31.120461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755161, 33.131592, 31.221275>,  <39.083340, 32.976460, 31.389301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755161, 33.131592, 31.221275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060546, 0.789543, 0.610701,
		0.568506, 0.475615, -0.671261,
		-0.820448, 0.387830, -0.420063,
		38.509026, 33.247940, 31.095257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231789, 33.711121, 31.246914>,  <39.083340, 32.976460, 31.389301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231789, 33.711121, 31.246914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836098, 33.655827, 31.266199>,  <38.598682, 33.622650, 31.277769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836098, 33.655827, 31.266199>,  <39.231789, 33.711121, 31.246914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836098, 33.655827, 31.266199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108213, 0.912203, 0.395191,
		-0.098608, 0.385716, -0.917333,
		-0.989225, -0.138237, 0.048211,
		38.539330, 33.614357, 31.280663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872078, 34.317558, 30.993790>,  <39.231789, 33.711121, 31.246914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872078, 34.317558, 30.993790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615768, 34.139240, 31.243807>,  <38.461983, 34.032249, 31.393816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615768, 34.139240, 31.243807>,  <38.872078, 34.317558, 30.993790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615768, 34.139240, 31.243807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124790, 0.863791, 0.488152,
		-0.757523, 0.234794, -0.609123,
		-0.640770, -0.445798, 0.625042,
		38.423538, 34.005501, 31.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453716, 34.923439, 31.185532>,  <38.872078, 34.317558, 30.993790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453716, 34.923439, 31.185532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370052, 34.643963, 31.459198>,  <38.319855, 34.476276, 31.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370052, 34.643963, 31.459198>,  <38.453716, 34.923439, 31.185532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370052, 34.643963, 31.459198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220533, 0.715321, 0.663084,
		-0.952689, -0.012190, -0.303703,
		-0.209162, -0.698689, 0.684167,
		38.307304, 34.434357, 31.664448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916859, 35.128136, 31.606695>,  <38.453716, 34.923439, 31.185532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916859, 35.128136, 31.606695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079632, 34.855141, 31.849552>,  <38.177296, 34.691345, 31.995266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079632, 34.855141, 31.849552>,  <37.916859, 35.128136, 31.606695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079632, 34.855141, 31.849552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177767, 0.592786, 0.785496,
		-0.895993, -0.427575, 0.119902,
		0.406935, -0.682484, 0.607141,
		38.201714, 34.650394, 32.031693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466942, 35.049587, 32.133823>,  <37.916859, 35.128136, 31.606695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466942, 35.049587, 32.133823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813477, 34.949760, 32.306877>,  <38.021397, 34.889866, 32.410709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813477, 34.949760, 32.306877>,  <37.466942, 35.049587, 32.133823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813477, 34.949760, 32.306877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238343, 0.554638, 0.797226,
		-0.438915, -0.793784, 0.421023,
		0.866341, -0.249566, 0.432631,
		38.073380, 34.874889, 32.436668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355270, 35.012932, 32.912903>,  <37.466942, 35.049587, 32.133823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355270, 35.012932, 32.912903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752445, 35.040005, 32.873936>,  <37.990749, 35.056248, 32.850555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752445, 35.040005, 32.873936>,  <37.355270, 35.012932, 32.912903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752445, 35.040005, 32.873936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046788, 0.531208, 0.845949,
		0.109010, -0.844533, 0.524290,
		0.992939, 0.067686, -0.097421,
		38.050327, 35.060310, 32.844707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701164, 34.826344, 33.650620>,  <37.355270, 35.012932, 32.912903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701164, 34.826344, 33.650620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002419, 35.017475, 33.469746>,  <38.183170, 35.132153, 33.361221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002419, 35.017475, 33.469746>,  <37.701164, 34.826344, 33.650620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002419, 35.017475, 33.469746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271899, 0.399812, 0.875341,
		0.599050, -0.782197, 0.171191,
		0.753134, 0.477826, -0.452186,
		38.228359, 35.160824, 33.334091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265270, 34.764763, 34.156910>,  <37.701164, 34.826344, 33.650620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265270, 34.764763, 34.156910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335220, 35.058929, 33.895042>,  <38.377190, 35.235428, 33.737923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.335220, 35.058929, 33.895042>,  <38.265270, 34.764763, 34.156910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335220, 35.058929, 33.895042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429209, 0.541468, 0.722905,
		0.886114, -0.407405, -0.220957,
		0.174874, 0.735414, -0.654665,
		38.387684, 35.279552, 33.698643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011871, 34.974083, 34.344414>,  <38.265270, 34.764763, 34.156910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011871, 34.974083, 34.344414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834610, 35.266075, 34.136284>,  <38.728252, 35.441273, 34.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834610, 35.266075, 34.136284>,  <39.011871, 34.974083, 34.344414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834610, 35.266075, 34.136284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356739, 0.676099, 0.644692,
		0.822406, 0.100077, -0.560029,
		-0.443154, 0.729983, -0.520326,
		38.701664, 35.485069, 33.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390797, 35.588390, 34.584843>,  <39.011871, 34.974083, 34.344414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390797, 35.588390, 34.584843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106998, 35.764515, 34.364754>,  <38.936718, 35.870190, 34.232700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106998, 35.764515, 34.364754>,  <39.390797, 35.588390, 34.584843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106998, 35.764515, 34.364754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044869, 0.807416, 0.588273,
		0.703281, 0.392689, -0.592614,
		-0.709495, 0.440311, -0.550221,
		38.894150, 35.896606, 34.199688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614780, 36.289783, 34.415791>,  <39.390797, 35.588390, 34.584843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614780, 36.289783, 34.415791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221279, 36.220947, 34.436234>,  <38.985176, 36.179646, 34.448498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221279, 36.220947, 34.436234>,  <39.614780, 36.289783, 34.415791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221279, 36.220947, 34.436234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077349, 0.663229, 0.744409,
		-0.161998, 0.728363, -0.665765,
		-0.983755, -0.172089, 0.051103,
		38.926151, 36.169319, 34.451565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427753, 36.939949, 34.587944>,  <39.614780, 36.289783, 34.415791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427753, 36.939949, 34.587944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089294, 36.731850, 34.634201>,  <38.886219, 36.606991, 34.661957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089294, 36.731850, 34.634201>,  <39.427753, 36.939949, 34.587944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089294, 36.731850, 34.634201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281818, 0.620942, 0.731444,
		-0.452340, 0.586320, -0.672025,
		-0.846148, -0.520250, 0.115642,
		38.835449, 36.575775, 34.668892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838783, 37.418301, 34.752712>,  <39.427753, 36.939949, 34.587944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838783, 37.418301, 34.752712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697578, 37.080326, 34.913448>,  <38.612858, 36.877541, 35.009888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697578, 37.080326, 34.913448>,  <38.838783, 37.418301, 34.752712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697578, 37.080326, 34.913448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179598, 0.482695, 0.857175,
		-0.918221, 0.230422, -0.322144,
		-0.353010, -0.844933, 0.401838,
		38.591675, 36.826847, 35.034000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290943, 37.738461, 35.193787>,  <38.838783, 37.418301, 34.752712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290943, 37.738461, 35.193787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384941, 37.370640, 35.319775>,  <38.441341, 37.149948, 35.395367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384941, 37.370640, 35.319775>,  <38.290943, 37.738461, 35.193787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384941, 37.370640, 35.319775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215746, 0.266611, 0.939347,
		-0.947750, -0.288698, -0.135736,
		0.234999, -0.919550, 0.314966,
		38.455441, 37.094776, 35.414265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673134, 37.403629, 35.674946>,  <38.290943, 37.738461, 35.193787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673134, 37.403629, 35.674946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999660, 37.191544, 35.766598>,  <38.195576, 37.064293, 35.821590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999660, 37.191544, 35.766598>,  <37.673134, 37.403629, 35.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999660, 37.191544, 35.766598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157336, 0.177575, 0.971449,
		-0.555767, -0.829057, 0.061535,
		0.816314, -0.530218, 0.229131,
		38.244556, 37.032478, 35.835339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410606, 36.998714, 36.133736>,  <37.673134, 37.403629, 35.674946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410606, 36.998714, 36.133736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803226, 37.047447, 36.192688>,  <38.038799, 37.076687, 36.228062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803226, 37.047447, 36.192688>,  <37.410606, 36.998714, 36.133736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803226, 37.047447, 36.192688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183410, 0.381811, 0.905859,
		0.054088, -0.916175, 0.397111,
		0.981547, 0.121831, 0.147385,
		38.097691, 37.083996, 36.236904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518044, 36.888874, 36.842861>,  <37.410606, 36.998714, 36.133736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518044, 36.888874, 36.842861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868317, 37.065712, 36.765163>,  <38.078480, 37.171814, 36.718544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868317, 37.065712, 36.765163>,  <37.518044, 36.888874, 36.842861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868317, 37.065712, 36.765163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048264, 0.320116, 0.946148,
		0.480471, -0.837900, 0.258983,
		0.875682, 0.442097, -0.194247,
		38.131020, 37.198341, 36.706890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636993, 37.205288, 37.575562>,  <37.518044, 36.888874, 36.842861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636993, 37.205288, 37.575562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861744, 37.417679, 37.321835>,  <37.996593, 37.545113, 37.169598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861744, 37.417679, 37.321835>,  <37.636993, 37.205288, 37.575562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861744, 37.417679, 37.321835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021579, 0.775948, 0.630427,
		0.826939, -0.340535, 0.447446,
		0.561877, 0.530980, -0.634313,
		38.030308, 37.576973, 37.131542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103195, 37.554146, 38.039806>,  <37.636993, 37.205288, 37.575562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103195, 37.554146, 38.039806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104996, 37.744167, 37.687828>,  <38.106075, 37.858181, 37.476643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104996, 37.744167, 37.687828>,  <38.103195, 37.554146, 38.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104996, 37.744167, 37.687828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070887, 0.877587, 0.474148,
		0.997474, -0.064511, -0.029724,
		0.004502, 0.475057, -0.879943,
		38.106346, 37.886684, 37.423843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725285, 38.000729, 38.035717>,  <38.103195, 37.554146, 38.039806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725285, 38.000729, 38.035717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455570, 38.175468, 37.797558>,  <38.293743, 38.280312, 37.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455570, 38.175468, 37.797558>,  <38.725285, 38.000729, 38.035717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455570, 38.175468, 37.797558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118090, 0.859670, 0.497014,
		0.728967, 0.264819, -0.631251,
		-0.674286, 0.436851, -0.595399,
		38.253284, 38.306522, 37.618938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067223, 38.574299, 37.879162>,  <38.725285, 38.000729, 38.035717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067223, 38.574299, 37.879162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695274, 38.652363, 37.754417>,  <38.472107, 38.699203, 37.679573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695274, 38.652363, 37.754417>,  <39.067223, 38.574299, 37.879162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695274, 38.652363, 37.754417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093422, 0.945168, 0.312938,
		0.355832, 0.261857, -0.897115,
		-0.929869, 0.195164, -0.311858,
		38.416313, 38.710911, 37.660862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094734, 39.258488, 37.389313>,  <39.067223, 38.574299, 37.879162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094734, 39.258488, 37.389313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715912, 39.253151, 37.517624>,  <38.488617, 39.249950, 37.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715912, 39.253151, 37.517624>,  <39.094734, 39.258488, 37.389313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715912, 39.253151, 37.517624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068197, 0.967976, 0.241602,
		-0.313732, 0.250688, -0.915821,
		-0.947059, -0.013342, 0.320781,
		38.431793, 39.249149, 37.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604095, 39.715714, 36.980045>,  <39.094734, 39.258488, 37.389313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604095, 39.715714, 36.980045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405445, 39.652012, 37.321339>,  <38.286255, 39.613792, 37.526115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405445, 39.652012, 37.321339>,  <38.604095, 39.715714, 36.980045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405445, 39.652012, 37.321339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344433, 0.938470, -0.025318,
		-0.796699, -0.306454, -0.520919,
		-0.496626, -0.159250, 0.853230,
		38.256458, 39.604237, 37.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055946, 40.045151, 36.778580>,  <38.604095, 39.715714, 36.980045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055946, 40.045151, 36.778580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053066, 40.014236, 37.177372>,  <38.051338, 39.995689, 37.416649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053066, 40.014236, 37.177372>,  <38.055946, 40.045151, 36.778580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053066, 40.014236, 37.177372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290448, 0.954188, 0.071871,
		-0.956864, -0.289055, -0.029316,
		-0.007198, -0.077286, 0.996983,
		38.050907, 39.991051, 37.476467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554474, 40.536175, 36.996189>,  <38.055946, 40.045151, 36.778580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554474, 40.536175, 36.996189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767185, 40.467258, 37.327858>,  <37.894814, 40.425911, 37.526859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767185, 40.467258, 37.327858>,  <37.554474, 40.536175, 36.996189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767185, 40.467258, 37.327858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073899, 0.965913, 0.248095,
		-0.843652, -0.193207, 0.500922,
		0.531780, -0.172288, 0.829172,
		37.926720, 40.415573, 37.576611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169060, 40.863617, 37.625923>,  <37.554474, 40.536175, 36.996189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169060, 40.863617, 37.625923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566124, 40.824856, 37.654869>,  <37.804363, 40.801598, 37.672237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566124, 40.824856, 37.654869>,  <37.169060, 40.863617, 37.625923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566124, 40.824856, 37.654869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063244, 0.925923, 0.372380,
		-0.103093, -0.365069, 0.925255,
		0.992659, -0.096906, 0.072368,
		37.863922, 40.795784, 37.676579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297127, 40.950077, 38.302628>,  <37.169060, 40.863617, 37.625923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297127, 40.950077, 38.302628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606289, 41.070084, 38.078983>,  <37.791786, 41.142086, 37.944798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606289, 41.070084, 38.078983>,  <37.297127, 40.950077, 38.302628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606289, 41.070084, 38.078983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101796, 0.811117, 0.575957,
		0.626302, -0.502076, 0.596377,
		0.772906, 0.300015, -0.559113,
		37.838161, 41.160088, 37.911247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779457, 41.284191, 38.671711>,  <37.297127, 40.950077, 38.302628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779457, 41.284191, 38.671711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881176, 41.426105, 38.311829>,  <37.942207, 41.511253, 38.095901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881176, 41.426105, 38.311829>,  <37.779457, 41.284191, 38.671711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881176, 41.426105, 38.311829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101839, 0.915288, 0.389713,
		0.961750, -0.190726, 0.196621,
		0.254294, 0.354783, -0.899702,
		37.957462, 41.532539, 38.041920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515732, 41.651318, 38.557945>,  <37.779457, 41.284191, 38.671711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515732, 41.651318, 38.557945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224411, 41.803204, 38.329773>,  <38.049618, 41.894333, 38.192871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224411, 41.803204, 38.329773>,  <38.515732, 41.651318, 38.557945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224411, 41.803204, 38.329773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178260, 0.908761, 0.377329,
		0.661662, 0.173125, -0.729541,
		-0.728304, 0.379712, -0.570432,
		38.005920, 41.917118, 38.158642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863914, 42.181469, 38.626915>,  <38.515732, 41.651318, 38.557945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863914, 42.181469, 38.626915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526981, 42.289345, 38.440262>,  <38.324821, 42.354069, 38.328270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526981, 42.289345, 38.440262>,  <38.863914, 42.181469, 38.626915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526981, 42.289345, 38.440262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090392, 0.924229, 0.370985,
		0.531327, 0.270312, -0.802885,
		-0.842331, 0.269689, -0.466633,
		38.274281, 42.370251, 38.300270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987064, 42.826679, 38.401245>,  <38.863914, 42.181469, 38.626915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987064, 42.826679, 38.401245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589233, 42.808868, 38.363670>,  <38.350533, 42.798180, 38.341125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589233, 42.808868, 38.363670>,  <38.987064, 42.826679, 38.401245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589233, 42.808868, 38.363670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094233, 0.767771, 0.633757,
		0.043904, 0.639175, -0.767807,
		-0.994582, -0.044529, -0.093940,
		38.290859, 42.795509, 38.335487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712173, 43.517822, 38.164711>,  <38.987064, 42.826679, 38.401245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712173, 43.517822, 38.164711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418865, 43.337902, 38.368668>,  <38.242878, 43.229950, 38.491039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418865, 43.337902, 38.368668>,  <38.712173, 43.517822, 38.164711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418865, 43.337902, 38.368668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016784, 0.737706, 0.674913,
		-0.679725, 0.503455, -0.533392,
		-0.733275, -0.449803, 0.509887,
		38.198883, 43.202961, 38.521633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095665, 43.830307, 38.103626>,  <38.712173, 43.517822, 38.164711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095665, 43.830307, 38.103626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124096, 43.653801, 38.461449>,  <38.141155, 43.547897, 38.676144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124096, 43.653801, 38.461449>,  <38.095665, 43.830307, 38.103626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124096, 43.653801, 38.461449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096208, 0.895679, 0.434170,
		-0.992820, 0.055206, 0.106112,
		0.071073, -0.441262, 0.894559,
		38.145416, 43.521423, 38.729816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630318, 44.211639, 38.665787>,  <38.095665, 43.830307, 38.103626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630318, 44.211639, 38.665787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981556, 44.080872, 38.805534>,  <38.192299, 44.002411, 38.889385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981556, 44.080872, 38.805534>,  <37.630318, 44.211639, 38.665787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981556, 44.080872, 38.805534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194422, 0.910968, 0.363783,
		-0.437196, -0.251513, 0.863482,
		0.878100, -0.326924, 0.349372,
		38.244987, 43.982796, 38.910347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618221, 44.962524, 38.738945>,  <37.630318, 44.211639, 38.665787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618221, 44.962524, 38.738945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229904, 45.010799, 38.656010>,  <36.996914, 45.039764, 38.606247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229904, 45.010799, 38.656010>,  <37.618221, 44.962524, 38.738945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229904, 45.010799, 38.656010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137028, -0.430458, -0.892149,
		-0.196920, -0.894506, 0.401350,
		-0.970797, 0.120686, -0.207338,
		36.938663, 45.047005, 38.593807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429623, 44.630829, 39.388847>,  <37.618221, 44.962524, 38.738945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429623, 44.630829, 39.388847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440113, 44.325882, 39.647495>,  <37.446407, 44.142914, 39.802685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440113, 44.325882, 39.647495>,  <37.429623, 44.630829, 39.388847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440113, 44.325882, 39.647495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247731, -0.621705, -0.743042,
		0.968474, 0.179675, 0.172556,
		0.026227, -0.762364, 0.646616,
		37.447983, 44.097172, 39.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143131, 44.224274, 39.427845>,  <37.429623, 44.630829, 39.388847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143131, 44.224274, 39.427845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815987, 44.016270, 39.526394>,  <37.619701, 43.891468, 39.585522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815987, 44.016270, 39.526394>,  <38.143131, 44.224274, 39.427845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815987, 44.016270, 39.526394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167184, -0.624431, -0.762978,
		0.550594, -0.582820, 0.597634,
		-0.817860, -0.520006, 0.246370,
		37.570629, 43.860268, 39.600304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245975, 43.548431, 39.466286>,  <38.143131, 44.224274, 39.427845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245975, 43.548431, 39.466286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867676, 43.585480, 39.341713>,  <37.640697, 43.607708, 39.266972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867676, 43.585480, 39.341713>,  <38.245975, 43.548431, 39.466286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867676, 43.585480, 39.341713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174687, -0.663228, -0.727745,
		-0.273954, -0.742664, 0.611064,
		-0.945745, 0.092624, -0.311428,
		37.583954, 43.613266, 39.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818993, 42.804508, 39.477039>,  <38.245975, 43.548431, 39.466286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818993, 42.804508, 39.477039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716702, 43.073135, 39.198875>,  <37.655327, 43.234310, 39.031975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716702, 43.073135, 39.198875>,  <37.818993, 42.804508, 39.477039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716702, 43.073135, 39.198875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279328, -0.637324, -0.718188,
		-0.925515, -0.377912, -0.024603,
		-0.255731, 0.671566, -0.695414,
		37.639980, 43.274605, 38.990250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134834, 42.653706, 39.030708>,  <37.818993, 42.804508, 39.477039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134834, 42.653706, 39.030708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439507, 42.832405, 38.842979>,  <37.622311, 42.939625, 38.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439507, 42.832405, 38.842979>,  <37.134834, 42.653706, 39.030708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439507, 42.832405, 38.842979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107115, -0.801158, -0.588788,
		-0.639039, 0.398196, -0.658079,
		0.761679, 0.446749, -0.469319,
		37.668011, 42.966431, 38.702183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992271, 42.694466, 38.264954>,  <37.134834, 42.653706, 39.030708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992271, 42.694466, 38.264954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389648, 42.720055, 38.302860>,  <37.628075, 42.735409, 38.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389648, 42.720055, 38.302860>,  <36.992271, 42.694466, 38.264954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389648, 42.720055, 38.302860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113216, -0.666017, -0.737295,
		0.015949, 0.743189, -0.668892,
		0.993443, 0.063970, 0.094763,
		37.687679, 42.739246, 38.331287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269306, 42.670227, 37.573296>,  <36.992271, 42.694466, 38.264954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269306, 42.670227, 37.573296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564705, 42.568317, 37.823002>,  <37.741943, 42.507172, 37.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564705, 42.568317, 37.823002>,  <37.269306, 42.670227, 37.573296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564705, 42.568317, 37.823002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227970, -0.776988, -0.586788,
		0.634547, 0.575656, -0.515723,
		0.738499, -0.254775, 0.624267,
		37.786255, 42.491886, 38.010281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635426, 42.378258, 37.083961>,  <37.269306, 42.670227, 37.573296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635426, 42.378258, 37.083961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803871, 42.265358, 37.428749>,  <37.904938, 42.197617, 37.635624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803871, 42.265358, 37.428749>,  <37.635426, 42.378258, 37.083961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803871, 42.265358, 37.428749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156819, -0.913377, -0.375700,
		0.893346, 0.293387, -0.340377,
		0.421118, -0.282253, 0.861971,
		37.930206, 42.180683, 37.687340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193695, 41.966373, 36.858952>,  <37.635426, 42.378258, 37.083961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193695, 41.966373, 36.858952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118782, 41.833279, 37.228645>,  <38.073833, 41.753422, 37.450462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118782, 41.833279, 37.228645>,  <38.193695, 41.966373, 36.858952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118782, 41.833279, 37.228645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221702, -0.930926, -0.290217,
		0.956960, 0.150552, 0.248117,
		-0.187285, -0.332734, 0.924236,
		38.062595, 41.733459, 37.505917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728565, 41.675686, 37.110069>,  <38.193695, 41.966373, 36.858952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728565, 41.675686, 37.110069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427334, 41.504337, 37.309818>,  <38.246597, 41.401527, 37.429668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427334, 41.504337, 37.309818>,  <38.728565, 41.675686, 37.110069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427334, 41.504337, 37.309818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301977, -0.899382, -0.316105,
		0.584539, -0.087252, 0.806661,
		-0.753077, -0.428369, 0.499376,
		38.201412, 41.375828, 37.459633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942894, 41.036034, 37.480694>,  <38.728565, 41.675686, 37.110069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942894, 41.036034, 37.480694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549000, 41.008976, 37.416538>,  <38.312664, 40.992741, 37.378044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549000, 41.008976, 37.416538>,  <38.942894, 41.036034, 37.480694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549000, 41.008976, 37.416538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135527, -0.876164, -0.462567,
		-0.109232, -0.477242, 0.871956,
		-0.984734, -0.067646, -0.160385,
		38.253578, 40.988682, 37.368423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570835, 40.381947, 37.908455>,  <38.942894, 41.036034, 37.480694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570835, 40.381947, 37.908455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431778, 40.493893, 37.550499>,  <38.348343, 40.561062, 37.335728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431778, 40.493893, 37.550499>,  <38.570835, 40.381947, 37.908455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431778, 40.493893, 37.550499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197440, -0.911165, -0.361656,
		-0.916605, -0.302412, 0.261499,
		-0.347638, 0.279866, -0.894887,
		38.327488, 40.577854, 37.282032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521587, 40.380081, 38.606632>,  <38.570835, 40.381947, 37.908455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521587, 40.380081, 38.606632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209641, 40.352657, 38.357761>,  <38.022472, 40.336201, 38.208439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209641, 40.352657, 38.357761>,  <38.521587, 40.380081, 38.606632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209641, 40.352657, 38.357761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092753, -0.995668, -0.006542,
		-0.619034, -0.062810, 0.782849,
		-0.779868, -0.068562, -0.622177,
		37.975681, 40.332088, 38.171108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058765, 39.931900, 38.806450>,  <38.521587, 40.380081, 38.606632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058765, 39.931900, 38.806450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048462, 39.947674, 38.406895>,  <38.042278, 39.957138, 38.167160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.048462, 39.947674, 38.406895>,  <38.058765, 39.931900, 38.806450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048462, 39.947674, 38.406895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050699, -0.997987, -0.038092,
		-0.998382, 0.049661, 0.027703,
		-0.025756, 0.039435, -0.998890,
		38.040733, 39.959503, 38.107227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461376, 39.542839, 38.559750>,  <38.058765, 39.931900, 38.806450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461376, 39.542839, 38.559750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723995, 39.539650, 38.258053>,  <37.881565, 39.537735, 38.077034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723995, 39.539650, 38.258053>,  <37.461376, 39.542839, 38.559750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723995, 39.539650, 38.258053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287095, -0.927323, -0.240102,
		-0.697515, 0.374177, -0.611118,
		0.656544, -0.007974, -0.754245,
		37.920959, 39.537258, 38.031780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200665, 39.323360, 37.856579>,  <37.461376, 39.542839, 38.559750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200665, 39.323360, 37.856579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590176, 39.265503, 37.786339>,  <37.823883, 39.230789, 37.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590176, 39.265503, 37.786339>,  <37.200665, 39.323360, 37.856579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590176, 39.265503, 37.786339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219027, -0.804777, -0.551689,
		-0.061516, 0.575683, -0.815356,
		0.973777, -0.144647, -0.175597,
		37.882309, 39.222107, 37.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140591, 38.866348, 37.405479>,  <37.200665, 39.323360, 37.856579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140591, 38.866348, 37.405479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536758, 38.849545, 37.458103>,  <37.774460, 38.839462, 37.489677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536758, 38.849545, 37.458103>,  <37.140591, 38.866348, 37.405479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536758, 38.849545, 37.458103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034054, -0.848912, -0.527436,
		0.133838, 0.526862, -0.839347,
		0.990418, -0.042008, 0.131559,
		37.833885, 38.836941, 37.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344139, 38.586052, 36.811954>,  <37.140591, 38.866348, 37.405479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344139, 38.586052, 36.811954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690235, 38.537136, 37.006439>,  <37.897892, 38.507786, 37.123131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690235, 38.537136, 37.006439>,  <37.344139, 38.586052, 36.811954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690235, 38.537136, 37.006439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190349, -0.817051, -0.544238,
		0.463812, 0.563447, -0.683670,
		0.865243, -0.122288, 0.486210,
		37.949806, 38.500450, 37.152302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891262, 38.351578, 36.360058>,  <37.344139, 38.586052, 36.811954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891262, 38.351578, 36.360058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074951, 38.231895, 36.694626>,  <38.185165, 38.160088, 36.895367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074951, 38.231895, 36.694626>,  <37.891262, 38.351578, 36.360058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074951, 38.231895, 36.694626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278121, -0.845806, -0.455259,
		0.843661, 0.441691, -0.305199,
		0.459222, -0.299202, 0.836417,
		38.212719, 38.142136, 36.945549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603745, 38.342918, 36.254761>,  <37.891262, 38.351578, 36.360058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603745, 38.342918, 36.254761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448105, 38.090519, 36.523220>,  <38.354721, 37.939079, 36.684296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448105, 38.090519, 36.523220>,  <38.603745, 38.342918, 36.254761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448105, 38.090519, 36.523220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271854, -0.774771, -0.570811,
		0.880167, -0.039650, 0.473006,
		-0.389104, -0.630997, 0.671149,
		38.331375, 37.901218, 36.724564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071362, 37.823242, 36.395836>,  <38.603745, 38.342918, 36.254761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071362, 37.823242, 36.395836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705082, 37.681355, 36.471378>,  <38.485313, 37.596222, 36.516705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705082, 37.681355, 36.471378>,  <39.071362, 37.823242, 36.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705082, 37.681355, 36.471378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164050, -0.758972, -0.630118,
		0.366852, -0.546017, 0.753183,
		-0.915700, -0.354720, 0.188857,
		38.430370, 37.574940, 36.528034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382114, 37.081203, 36.471722>,  <39.071362, 37.823242, 36.395836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382114, 37.081203, 36.471722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989353, 37.079735, 36.395988>,  <38.753696, 37.078854, 36.350548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989353, 37.079735, 36.395988>,  <39.382114, 37.081203, 36.471722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989353, 37.079735, 36.395988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148243, -0.637028, -0.756452,
		-0.117830, -0.770832, 0.626047,
		-0.981906, -0.003674, -0.189332,
		38.694782, 37.078632, 36.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258518, 36.341244, 36.183113>,  <39.382114, 37.081203, 36.471722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258518, 36.341244, 36.183113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937820, 36.551426, 36.069195>,  <38.745403, 36.677536, 36.000843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937820, 36.551426, 36.069195>,  <39.258518, 36.341244, 36.183113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937820, 36.551426, 36.069195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057823, -0.406072, -0.912010,
		-0.594868, -0.747663, 0.295181,
		-0.801741, 0.525457, -0.284791,
		38.697296, 36.709064, 35.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773605, 35.817535, 35.782333>,  <39.258518, 36.341244, 36.183113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773605, 35.817535, 35.782333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714344, 36.198425, 35.675507>,  <38.678787, 36.426960, 35.611412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714344, 36.198425, 35.675507>,  <38.773605, 35.817535, 35.782333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714344, 36.198425, 35.675507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008464, -0.271259, -0.962469,
		-0.988928, -0.140336, 0.048249,
		-0.148157, 0.952221, -0.267068,
		38.669895, 36.484093, 35.595387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946739, 35.236679, 36.209354>,  <38.773605, 35.817535, 35.782333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946739, 35.236679, 36.209354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955750, 35.365852, 36.587814>,  <38.961155, 35.443356, 36.814892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955750, 35.365852, 36.587814>,  <38.946739, 35.236679, 36.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955750, 35.365852, 36.587814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543746, -0.798134, 0.259467,
		0.838948, 0.508622, -0.193572,
		0.022526, 0.322933, 0.946154,
		38.962509, 35.462730, 36.871662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654552, 35.322285, 36.363396>,  <38.946739, 35.236679, 36.209354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654552, 35.322285, 36.363396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434387, 35.200146, 36.674217>,  <39.302288, 35.126862, 36.860710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434387, 35.200146, 36.674217>,  <39.654552, 35.322285, 36.363396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434387, 35.200146, 36.674217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627959, -0.764755, 0.144284,
		0.550197, 0.567372, 0.612677,
		-0.550410, -0.305351, 0.777052,
		39.269264, 35.108540, 36.907333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974033, 35.135857, 36.994659>,  <39.654552, 35.322285, 36.363396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974033, 35.135857, 36.994659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010902, 35.184898, 37.389927>,  <40.033024, 35.214325, 37.627087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.010902, 35.184898, 37.389927>,  <39.974033, 35.135857, 36.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010902, 35.184898, 37.389927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349326, -0.933299, 0.083215,
		0.932456, 0.337521, -0.128859,
		0.092177, 0.122608, 0.988165,
		40.038555, 35.221680, 37.686375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725372, 35.040367, 37.034821>,  <39.974033, 35.135857, 36.994659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725372, 35.040367, 37.034821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985340, 35.011795, 36.732166>,  <41.141323, 34.994652, 36.550575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.985340, 35.011795, 36.732166>,  <40.725372, 35.040367, 37.034821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985340, 35.011795, 36.732166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495329, 0.715266, -0.492994,
		0.576412, 0.695192, 0.429485,
		0.649921, -0.071432, -0.756637,
		41.180317, 34.990364, 36.505177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941872, 35.780056, 36.846989>,  <40.725372, 35.040367, 37.034821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941872, 35.780056, 36.846989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936897, 35.494286, 36.567150>,  <40.933914, 35.322823, 36.399246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936897, 35.494286, 36.567150>,  <40.941872, 35.780056, 36.846989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936897, 35.494286, 36.567150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617028, 0.556041, -0.556862,
		0.786843, 0.424747, -0.447737,
		-0.012435, -0.714429, -0.699597,
		40.933167, 35.279957, 36.357269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596615, 36.439629, 36.552734>,  <40.941872, 35.780056, 36.846989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596615, 36.439629, 36.552734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714741, 36.686676, 36.261162>,  <40.785618, 36.834904, 36.086220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714741, 36.686676, 36.261162>,  <40.596615, 36.439629, 36.552734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714741, 36.686676, 36.261162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913319, -0.406438, 0.025650,
		-0.280424, -0.673321, -0.684107,
		0.295317, 0.617614, -0.728931,
		40.803337, 36.871960, 36.042484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993366, 36.082893, 35.984650>,  <40.596615, 36.439629, 36.552734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993366, 36.082893, 35.984650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110947, 36.456604, 36.065357>,  <41.181496, 36.680832, 36.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110947, 36.456604, 36.065357>,  <40.993366, 36.082893, 35.984650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110947, 36.456604, 36.065357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934827, -0.325019, 0.143046,
		0.199224, 0.146571, -0.968931,
		0.293954, 0.934280, 0.201770,
		41.199135, 36.736889, 36.125889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593311, 36.326981, 35.469761>,  <40.993366, 36.082893, 35.984650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593311, 36.326981, 35.469761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584560, 36.482735, 35.838085>,  <41.579308, 36.576187, 36.059082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584560, 36.482735, 35.838085>,  <41.593311, 36.326981, 35.469761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584560, 36.482735, 35.838085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917244, -0.358587, 0.173431,
		0.397724, 0.848407, -0.349316,
		-0.021880, 0.389385, 0.920815,
		41.577995, 36.599552, 36.114330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045429, 36.870552, 35.669430>,  <41.593311, 36.326981, 35.469761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045429, 36.870552, 35.669430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047173, 36.645878, 36.000366>,  <42.048218, 36.511074, 36.198929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047173, 36.645878, 36.000366>,  <42.045429, 36.870552, 35.669430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047173, 36.645878, 36.000366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991712, -0.103812, -0.075701,
		0.128408, 0.820814, 0.556575,
		0.004358, -0.561682, 0.827342,
		42.048481, 36.477375, 36.248569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360390, 37.419254, 35.145966>,  <42.045429, 36.870552, 35.669430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360390, 37.419254, 35.145966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514053, 37.123531, 35.367180>,  <42.606251, 36.946098, 35.499908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.514053, 37.123531, 35.367180>,  <42.360390, 37.419254, 35.145966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514053, 37.123531, 35.367180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129348, -0.549992, -0.825093,
		0.914160, 0.388504, -0.115659,
		0.384163, -0.739306, 0.553033,
		42.629303, 36.901741, 35.533089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982487, 37.045799, 34.800274>,  <42.360390, 37.419254, 35.145966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982487, 37.045799, 34.800274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846001, 36.782959, 35.069134>,  <42.764111, 36.625256, 35.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846001, 36.782959, 35.069134>,  <42.982487, 37.045799, 34.800274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846001, 36.782959, 35.069134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301335, -0.753795, -0.583943,
		0.890376, 0.003292, 0.455215,
		-0.341216, -0.657101, 0.672153,
		42.743637, 36.585827, 35.270779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575699, 36.571171, 34.948586>,  <42.982487, 37.045799, 34.800274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575699, 36.571171, 34.948586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247448, 36.364639, 35.046551>,  <43.050499, 36.240723, 35.105331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247448, 36.364639, 35.046551>,  <43.575699, 36.571171, 34.948586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247448, 36.364639, 35.046551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280315, -0.737161, -0.614830,
		0.497994, -0.435892, 0.749667,
		-0.820625, -0.516325, 0.244915,
		43.001259, 36.209743, 35.120026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811310, 36.003006, 35.314911>,  <43.575699, 36.571171, 34.948586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811310, 36.003006, 35.314911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475201, 35.949776, 35.104683>,  <43.273533, 35.917839, 34.978546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475201, 35.949776, 35.104683>,  <43.811310, 36.003006, 35.314911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475201, 35.949776, 35.104683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484730, -0.618616, -0.618346,
		-0.242844, -0.774343, 0.584312,
		-0.840277, -0.133072, -0.525574,
		43.223118, 35.909855, 34.947010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266533, 35.509842, 34.957623>,  <43.811310, 36.003006, 35.314911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266533, 35.509842, 34.957623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093536, 35.440311, 34.603733>,  <43.989738, 35.398594, 34.391399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093536, 35.440311, 34.603733>,  <44.266533, 35.509842, 34.957623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093536, 35.440311, 34.603733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300369, -0.952967, 0.040398,
		-0.850137, -0.248272, 0.464357,
		-0.432488, -0.173823, -0.884726,
		43.963791, 35.388165, 34.338314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587749, 35.623131, 34.303890>,  <44.266533, 35.509842, 34.957623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587749, 35.623131, 34.303890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911781, 35.473373, 34.123405>,  <45.106201, 35.383518, 34.015114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911781, 35.473373, 34.123405>,  <44.587749, 35.623131, 34.303890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911781, 35.473373, 34.123405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528210, 0.800042, 0.284478,
		0.254479, -0.468785, 0.845861,
		0.810083, -0.374398, -0.451211,
		45.154808, 35.361053, 33.988041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133511, 35.446095, 34.802277>,  <44.587749, 35.623131, 34.303890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133511, 35.446095, 34.802277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273529, 35.553543, 34.443317>,  <45.357540, 35.618011, 34.227943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273529, 35.553543, 34.443317>,  <45.133511, 35.446095, 34.802277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273529, 35.553543, 34.443317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440586, 0.798209, 0.410787,
		0.826653, -0.539171, 0.161056,
		0.350041, 0.268619, -0.897394,
		45.378540, 35.634129, 34.174099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859409, 35.366547, 34.950123>,  <45.133511, 35.446095, 34.802277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859409, 35.366547, 34.950123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715771, 35.662815, 34.722980>,  <45.629585, 35.840576, 34.586697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715771, 35.662815, 34.722980>,  <45.859409, 35.366547, 34.950123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715771, 35.662815, 34.722980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511567, 0.665101, 0.544003,
		0.780606, -0.095143, -0.617740,
		-0.359101, 0.740668, -0.567854,
		45.608040, 35.885014, 34.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.166504, 34.575455, 34.753979>,  <45.859409, 35.366547, 34.950123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.166504, 34.575455, 34.753979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451599, 34.367729, 34.565376>,  <46.622658, 34.243095, 34.452213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451599, 34.367729, 34.565376>,  <46.166504, 34.575455, 34.753979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451599, 34.367729, 34.565376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664401, 0.715351, 0.216437,
		0.224896, -0.467533, 0.854889,
		0.712737, -0.519313, -0.471509,
		46.665421, 34.211937, 34.423923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852779, 34.413048, 35.204681>,  <46.166504, 34.575455, 34.753979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852779, 34.413048, 35.204681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956673, 34.460289, 34.821308>,  <47.019009, 34.488636, 34.591286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956673, 34.460289, 34.821308>,  <46.852779, 34.413048, 35.204681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956673, 34.460289, 34.821308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583988, 0.771232, 0.253298,
		0.769086, -0.625503, 0.131351,
		0.259741, 0.118100, -0.958429,
		47.034592, 34.495720, 34.533779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.617397, 34.292141, 35.120834>,  <46.852779, 34.413048, 35.204681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.617397, 34.292141, 35.120834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416000, 34.564259, 34.907780>,  <47.295162, 34.727528, 34.779945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.416000, 34.564259, 34.907780>,  <47.617397, 34.292141, 35.120834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.416000, 34.564259, 34.907780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453209, 0.732804, 0.507542,
		0.735594, 0.014148, -0.677274,
		-0.503490, 0.680292, -0.532635,
		47.264954, 34.768345, 34.747990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.146568, 34.802158, 35.118500>,  <47.617397, 34.292141, 35.120834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.146568, 34.802158, 35.118500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809723, 34.995560, 35.022938>,  <47.607616, 35.111599, 34.965599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.809723, 34.995560, 35.022938>,  <48.146568, 34.802158, 35.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.809723, 34.995560, 35.022938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291275, 0.780575, 0.553047,
		0.453882, 0.396140, -0.798163,
		-0.842111, 0.483502, -0.238903,
		47.557091, 35.140610, 34.951267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.151020, 29.878874, 29.051615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755291, 29.937027, 29.047647>,  <33.517853, 29.971918, 29.045267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.755291, 29.937027, 29.047647>,  <34.151020, 29.878874, 29.051615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755291, 29.937027, 29.047647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109571, 0.787049, 0.607082,
		0.096066, 0.599515, -0.794578,
		-0.989326, 0.145382, -0.009920,
		33.458492, 29.980642, 29.044672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066860, 30.562243, 29.076971>,  <34.151020, 29.878874, 29.051615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066860, 30.562243, 29.076971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684422, 30.462934, 29.139242>,  <33.454956, 30.403349, 29.176605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684422, 30.462934, 29.139242>,  <34.066860, 30.562243, 29.076971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684422, 30.462934, 29.139242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084001, 0.741146, 0.666068,
		-0.280747, 0.623750, -0.729464,
		-0.956099, -0.248272, 0.155678,
		33.397591, 30.388453, 29.185946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788185, 31.153349, 29.119320>,  <34.066860, 30.562243, 29.076971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788185, 31.153349, 29.119320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547401, 30.899668, 29.313404>,  <33.402931, 30.747459, 29.429855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.547401, 30.899668, 29.313404>,  <33.788185, 31.153349, 29.119320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547401, 30.899668, 29.313404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156110, 0.689374, 0.707385,
		-0.783117, 0.350072, -0.513982,
		-0.601961, -0.634203, 0.485211,
		33.366814, 30.709408, 29.458967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006977, 31.481199, 29.278797>,  <33.788185, 31.153349, 29.119320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006977, 31.481199, 29.278797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109200, 31.203241, 29.547665>,  <33.170532, 31.036467, 29.708984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.109200, 31.203241, 29.547665>,  <33.006977, 31.481199, 29.278797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109200, 31.203241, 29.547665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086141, 0.676125, 0.731734,
		-0.962948, -0.244902, 0.112931,
		0.255559, -0.694894, 0.672169,
		33.185867, 30.994774, 29.749315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566788, 31.575508, 29.890093>,  <33.006977, 31.481199, 29.278797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566788, 31.575508, 29.890093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853115, 31.330797, 30.024754>,  <33.024910, 31.183969, 30.105551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853115, 31.330797, 30.024754>,  <32.566788, 31.575508, 29.890093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853115, 31.330797, 30.024754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000110, 0.482012, 0.876165,
		-0.698289, -0.627209, 0.344964,
		0.715815, -0.611778, 0.336653,
		33.067860, 31.147264, 30.125750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246624, 31.392096, 30.545876>,  <32.566788, 31.575508, 29.890093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246624, 31.392096, 30.545876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639759, 31.325138, 30.576864>,  <32.875641, 31.284964, 30.595457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639759, 31.325138, 30.576864>,  <32.246624, 31.392096, 30.545876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639759, 31.325138, 30.576864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032054, 0.568615, 0.821979,
		-0.181644, -0.805392, 0.564225,
		0.982842, -0.167393, 0.077470,
		32.934612, 31.274920, 30.600105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271576, 31.230528, 31.196644>,  <32.246624, 31.392096, 30.545876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271576, 31.230528, 31.196644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632549, 31.340363, 31.063847>,  <32.849133, 31.406263, 30.984169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632549, 31.340363, 31.063847>,  <32.271576, 31.230528, 31.196644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632549, 31.340363, 31.063847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099946, 0.616131, 0.781277,
		0.419079, -0.738230, 0.528572,
		0.902432, 0.274588, -0.331990,
		32.903278, 31.422739, 30.964249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870625, 31.092846, 31.663671>,  <32.271576, 31.230528, 31.196644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870625, 31.092846, 31.663671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992470, 31.407606, 31.449009>,  <33.065575, 31.596462, 31.320211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992470, 31.407606, 31.449009>,  <32.870625, 31.092846, 31.663671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992470, 31.407606, 31.449009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105016, 0.532249, 0.840049,
		0.946671, -0.312243, 0.079491,
		0.304609, 0.786902, -0.536655,
		33.083851, 31.643677, 31.288012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455830, 31.290192, 32.044388>,  <32.870625, 31.092846, 31.663671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455830, 31.290192, 32.044388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392998, 31.626198, 31.836658>,  <33.355301, 31.827803, 31.712021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.392998, 31.626198, 31.836658>,  <33.455830, 31.290192, 32.044388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392998, 31.626198, 31.836658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400108, 0.534892, 0.744180,
		0.902907, -0.090894, -0.420116,
		-0.157076, 0.840017, -0.519325,
		33.345875, 31.878202, 31.680861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906887, 31.774229, 32.275738>,  <33.455830, 31.290192, 32.044388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906887, 31.774229, 32.275738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684155, 32.017525, 32.049469>,  <33.550514, 32.163502, 31.913708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684155, 32.017525, 32.049469>,  <33.906887, 31.774229, 32.275738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684155, 32.017525, 32.049469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418506, 0.793703, 0.441461,
		0.717488, 0.009083, -0.696512,
		-0.556833, 0.608238, -0.565671,
		33.517105, 32.199997, 31.879768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389992, 32.257137, 31.943573>,  <33.906887, 31.774229, 32.275738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389992, 32.257137, 31.943573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027626, 32.418934, 31.993698>,  <33.810207, 32.516010, 32.023773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.027626, 32.418934, 31.993698>,  <34.389992, 32.257137, 31.943573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027626, 32.418934, 31.993698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422266, 0.840714, 0.338956,
		0.031754, 0.359980, -0.932419,
		-0.905916, 0.404492, 0.125311,
		33.755852, 32.540283, 32.031292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478153, 32.953297, 31.858597>,  <34.389992, 32.257137, 31.943573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478153, 32.953297, 31.858597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.121780, 32.941467, 32.039864>,  <33.907955, 32.934372, 32.148624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.121780, 32.941467, 32.039864>,  <34.478153, 32.953297, 31.858597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121780, 32.941467, 32.039864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204749, 0.864544, 0.458956,
		-0.405355, 0.501686, -0.764198,
		-0.890935, -0.029571, 0.453167,
		33.854500, 32.932594, 32.175812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307175, 33.610641, 31.876261>,  <34.478153, 32.953297, 31.858597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307175, 33.610641, 31.876261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076008, 33.461113, 32.166439>,  <33.937305, 33.371395, 32.340546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.076008, 33.461113, 32.166439>,  <34.307175, 33.610641, 31.876261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076008, 33.461113, 32.166439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118122, 0.841246, 0.527591,
		-0.807500, 0.390596, -0.442017,
		-0.577920, -0.373817, 0.725444,
		33.902634, 33.348969, 32.384071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083477, 34.278442, 32.247036>,  <34.307175, 33.610641, 31.876261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083477, 34.278442, 32.247036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987385, 33.971558, 32.484917>,  <33.929729, 33.787426, 32.627644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.987385, 33.971558, 32.484917>,  <34.083477, 34.278442, 32.247036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987385, 33.971558, 32.484917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096681, 0.590685, 0.801089,
		-0.965889, 0.249942, -0.067726,
		-0.240230, -0.767216, 0.594701,
		33.915318, 33.741394, 32.663326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560955, 34.537518, 32.712830>,  <34.083477, 34.278442, 32.247036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560955, 34.537518, 32.712830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721500, 34.214718, 32.886112>,  <33.817829, 34.021038, 32.990082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721500, 34.214718, 32.886112>,  <33.560955, 34.537518, 32.712830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721500, 34.214718, 32.886112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201705, 0.539237, 0.817642,
		-0.893434, -0.240791, 0.379205,
		0.401362, -0.806996, 0.433204,
		33.841908, 33.972618, 33.016075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272713, 34.536255, 33.383293>,  <33.560955, 34.537518, 32.712830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272713, 34.536255, 33.383293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607235, 34.317291, 33.371117>,  <33.807949, 34.185913, 33.363811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607235, 34.317291, 33.371117>,  <33.272713, 34.536255, 33.383293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607235, 34.317291, 33.371117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378553, 0.536382, 0.754316,
		-0.396594, -0.642365, 0.655805,
		0.836308, -0.547414, -0.030443,
		33.858128, 34.153069, 33.361984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321964, 34.236065, 34.030754>,  <33.272713, 34.536255, 33.383293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321964, 34.236065, 34.030754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693886, 34.207382, 33.886356>,  <33.917038, 34.190174, 33.799717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693886, 34.207382, 33.886356>,  <33.321964, 34.236065, 34.030754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693886, 34.207382, 33.886356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367241, 0.245537, 0.897132,
		0.024305, -0.966731, 0.254636,
		0.929808, -0.071708, -0.360991,
		33.972828, 34.185871, 33.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619980, 33.710091, 34.424324>,  <33.321964, 34.236065, 34.030754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619980, 33.710091, 34.424324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917309, 33.928513, 34.269772>,  <34.095707, 34.059566, 34.177040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.917309, 33.928513, 34.269772>,  <33.619980, 33.710091, 34.424324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917309, 33.928513, 34.269772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398678, 0.102179, 0.911381,
		0.537146, -0.831493, -0.141748,
		0.743324, 0.546057, -0.386383,
		34.140305, 34.092331, 34.153858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259205, 33.533787, 34.873844>,  <33.619980, 33.710091, 34.424324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259205, 33.533787, 34.873844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 33.883026, 34.689529>,  <34.361164, 34.092567, 34.578941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 33.883026, 34.689529>,  <34.259205, 33.533787, 34.873844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322929, 33.883026, 34.689529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354819, 0.384924, 0.852020,
		0.921262, -0.299233, -0.248467,
		0.159311, 0.873094, -0.460789,
		34.370724, 34.144955, 34.551292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016659, 33.645279, 34.888191>,  <34.259205, 33.533787, 34.873844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016659, 33.645279, 34.888191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856758, 34.007839, 34.833572>,  <34.760818, 34.225376, 34.800800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856758, 34.007839, 34.833572>,  <35.016659, 33.645279, 34.888191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856758, 34.007839, 34.833572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449419, 0.323640, 0.832634,
		0.798888, 0.271480, -0.536727,
		-0.399750, 0.906397, -0.136544,
		34.736832, 34.279758, 34.792610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588207, 34.235714, 34.800499>,  <35.016659, 33.645279, 34.888191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588207, 34.235714, 34.800499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.243401, 34.393570, 34.927742>,  <35.036518, 34.488281, 35.004089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.243401, 34.393570, 34.927742>,  <35.588207, 34.235714, 34.800499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243401, 34.393570, 34.927742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479249, 0.430149, 0.765044,
		0.165081, 0.811932, -0.559924,
		-0.862014, 0.394637, 0.318108,
		34.984795, 34.511963, 35.023174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519188, 34.859943, 35.197876>,  <35.588207, 34.235714, 34.800499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519188, 34.859943, 35.197876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905144, 34.898575, 35.295582>,  <36.136719, 34.921753, 35.354206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905144, 34.898575, 35.295582>,  <35.519188, 34.859943, 35.197876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905144, 34.898575, 35.295582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235116, -0.732157, -0.639270,
		0.117095, 0.674254, -0.729158,
		0.964888, 0.096581, 0.244260,
		36.194611, 34.927547, 35.368858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893398, 34.908001, 34.564346>,  <35.519188, 34.859943, 35.197876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893398, 34.908001, 34.564346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158932, 34.788498, 34.838593>,  <36.318253, 34.716797, 35.003139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158932, 34.788498, 34.838593>,  <35.893398, 34.908001, 34.564346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158932, 34.788498, 34.838593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192107, -0.817864, -0.542396,
		0.722785, 0.491773, -0.485533,
		0.663835, -0.298762, 0.685612,
		36.358082, 34.698868, 35.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406769, 34.824432, 34.219139>,  <35.893398, 34.908001, 34.564346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406769, 34.824432, 34.219139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499081, 34.605286, 34.540779>,  <36.554466, 34.473797, 34.733765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499081, 34.605286, 34.540779>,  <36.406769, 34.824432, 34.219139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499081, 34.605286, 34.540779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270880, -0.757562, -0.593906,
		0.934540, 0.354876, -0.026422,
		0.230780, -0.547871, 0.804101,
		36.568314, 34.440926, 34.782009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126591, 34.487911, 34.114861>,  <36.406769, 34.824432, 34.219139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126591, 34.487911, 34.114861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968143, 34.268032, 34.409050>,  <36.873074, 34.136105, 34.585564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968143, 34.268032, 34.409050>,  <37.126591, 34.487911, 34.114861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968143, 34.268032, 34.409050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379377, -0.827413, -0.414079,
		0.836160, 0.114998, 0.536295,
		-0.396119, -0.549694, 0.735477,
		36.849308, 34.103123, 34.629692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571186, 33.930378, 34.220737>,  <37.126591, 34.487911, 34.114861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571186, 33.930378, 34.220737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256699, 33.783169, 34.419300>,  <37.068005, 33.694843, 34.538437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256699, 33.783169, 34.419300>,  <37.571186, 33.930378, 34.220737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256699, 33.783169, 34.419300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132438, -0.884998, -0.446361,
		0.603586, -0.285196, 0.744545,
		-0.786221, -0.368023, 0.496402,
		37.020832, 33.672760, 34.568222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772358, 33.265251, 34.460049>,  <37.571186, 33.930378, 34.220737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772358, 33.265251, 34.460049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374401, 33.226849, 34.447590>,  <37.135628, 33.203808, 34.440117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374401, 33.226849, 34.447590>,  <37.772358, 33.265251, 34.460049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374401, 33.226849, 34.447590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094897, -0.784659, -0.612621,
		0.034379, -0.612448, 0.789763,
		-0.994893, -0.096007, -0.031144,
		37.075932, 33.198048, 34.438248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593552, 32.530773, 34.537178>,  <37.772358, 33.265251, 34.460049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593552, 32.530773, 34.537178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284447, 32.716370, 34.363949>,  <37.098984, 32.827728, 34.260010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284447, 32.716370, 34.363949>,  <37.593552, 32.530773, 34.537178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284447, 32.716370, 34.363949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066088, -0.737446, -0.672165,
		-0.631243, -0.490805, 0.600536,
		-0.772765, 0.463987, -0.433071,
		37.052616, 32.855568, 34.234028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035126, 32.059395, 34.402618>,  <37.593552, 32.530773, 34.537178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035126, 32.059395, 34.402618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915462, 32.359230, 34.166439>,  <36.843666, 32.539131, 34.024731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915462, 32.359230, 34.166439>,  <37.035126, 32.059395, 34.402618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915462, 32.359230, 34.166439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316217, -0.661695, -0.679828,
		-0.900284, -0.016666, 0.434983,
		-0.299156, 0.749588, -0.590444,
		36.825714, 32.584106, 33.989307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352482, 31.896297, 34.181789>,  <37.035126, 32.059395, 34.402618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352482, 31.896297, 34.181789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490295, 32.146828, 33.902073>,  <36.572983, 32.297146, 33.734241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490295, 32.146828, 33.902073>,  <36.352482, 31.896297, 34.181789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490295, 32.146828, 33.902073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385356, -0.584892, -0.713724,
		-0.856036, 0.515379, 0.039843,
		0.344535, 0.626327, -0.699292,
		36.593655, 32.334724, 33.692284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792252, 31.888563, 33.695744>,  <36.352482, 31.896297, 34.181789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792252, 31.888563, 33.695744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094894, 32.049576, 33.489632>,  <36.276482, 32.146183, 33.365967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.094894, 32.049576, 33.489632>,  <35.792252, 31.888563, 33.695744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094894, 32.049576, 33.489632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269711, -0.525749, -0.806749,
		-0.595649, 0.749370, -0.289219,
		0.756610, 0.402534, -0.515275,
		36.321877, 32.170338, 33.335049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446899, 32.221600, 33.034874>,  <35.792252, 31.888563, 33.695744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446899, 32.221600, 33.034874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825729, 32.108017, 32.974968>,  <36.053028, 32.039867, 32.939026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825729, 32.108017, 32.974968>,  <35.446899, 32.221600, 33.034874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825729, 32.108017, 32.974968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271797, -0.460983, -0.844761,
		0.170833, 0.840753, -0.513760,
		0.947070, -0.283952, -0.149763,
		36.109852, 32.022831, 32.930038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532097, 32.440712, 32.370953>,  <35.446899, 32.221600, 33.034874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532097, 32.440712, 32.370953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801682, 32.157600, 32.455635>,  <35.963432, 31.987734, 32.506447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.801682, 32.157600, 32.455635>,  <35.532097, 32.440712, 32.370953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801682, 32.157600, 32.455635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006499, -0.280881, -0.959721,
		0.738733, 0.648196, -0.184704,
		0.673966, -0.707778, 0.211708,
		36.003872, 31.945267, 32.519146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943699, 32.381058, 31.767254>,  <35.532097, 32.440712, 32.370953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943699, 32.381058, 31.767254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022503, 32.040451, 31.961618>,  <36.069786, 31.836088, 32.078239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.022503, 32.040451, 31.961618>,  <35.943699, 32.381058, 31.767254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022503, 32.040451, 31.961618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122030, -0.470475, -0.873935,
		0.972778, 0.231469, 0.011223,
		0.197008, -0.851514, 0.485914,
		36.081604, 31.784996, 32.107391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551811, 32.092281, 31.553347>,  <35.943699, 32.381058, 31.767254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551811, 32.092281, 31.553347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327209, 31.795431, 31.699747>,  <36.192448, 31.617321, 31.787586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.327209, 31.795431, 31.699747>,  <36.551811, 32.092281, 31.553347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327209, 31.795431, 31.699747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013151, -0.434251, -0.900696,
		0.827368, -0.510559, 0.234075,
		-0.561506, -0.742129, 0.366000,
		36.158756, 31.572792, 31.809547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936176, 31.484304, 31.326485>,  <36.551811, 32.092281, 31.553347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936176, 31.484304, 31.326485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576180, 31.341793, 31.426945>,  <36.360180, 31.256287, 31.487221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576180, 31.341793, 31.426945>,  <36.936176, 31.484304, 31.326485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576180, 31.341793, 31.426945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009942, -0.592783, -0.805300,
		0.435789, -0.722269, 0.537043,
		-0.899994, -0.356280, 0.251148,
		36.306183, 31.234909, 31.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922485, 30.762238, 31.129585>,  <36.936176, 31.484304, 31.326485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922485, 30.762238, 31.129585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536594, 30.855087, 31.179253>,  <36.305061, 30.910797, 31.209053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536594, 30.855087, 31.179253>,  <36.922485, 30.762238, 31.129585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536594, 30.855087, 31.179253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239547, -0.578499, -0.779715,
		-0.109161, -0.781957, 0.613699,
		-0.964729, 0.232124, 0.124166,
		36.247177, 30.924725, 31.216503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560543, 30.124502, 31.147018>,  <36.922485, 30.762238, 31.129585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560543, 30.124502, 31.147018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292950, 30.406071, 31.051559>,  <36.132393, 30.575012, 30.994284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292950, 30.406071, 31.051559>,  <36.560543, 30.124502, 31.147018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292950, 30.406071, 31.051559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268137, -0.528015, -0.805793,
		-0.693224, -0.475075, 0.541982,
		-0.668987, 0.703921, -0.238647,
		36.092255, 30.617247, 30.979965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898647, 29.800764, 31.040197>,  <36.560543, 30.124502, 31.147018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898647, 29.800764, 31.040197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843433, 30.140396, 30.836233>,  <35.810307, 30.344175, 30.713854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843433, 30.140396, 30.836233>,  <35.898647, 29.800764, 31.040197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843433, 30.140396, 30.836233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465105, -0.510111, -0.723509,
		-0.874428, 0.137293, 0.465324,
		-0.138034, 0.849081, -0.509911,
		35.802025, 30.395121, 30.683260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314869, 29.667557, 30.742960>,  <35.898647, 29.800764, 31.040197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314869, 29.667557, 30.742960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461868, 29.983772, 30.547003>,  <35.550068, 30.173502, 30.429428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.461868, 29.983772, 30.547003>,  <35.314869, 29.667557, 30.742960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461868, 29.983772, 30.547003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331580, -0.380764, -0.863177,
		-0.868909, 0.479650, 0.122199,
		0.367494, 0.790541, -0.489891,
		35.572117, 30.220934, 30.400036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.761440, 29.857100, 30.328474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079460, 30.045591, 30.175722>,  <35.270271, 30.158688, 30.084072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079460, 30.045591, 30.175722>,  <34.761440, 29.857100, 30.328474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079460, 30.045591, 30.175722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079740, -0.542930, -0.835984,
		-0.601275, 0.695102, -0.394083,
		0.795053, 0.471232, -0.381878,
		35.317978, 30.186960, 30.061159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600082, 30.223959, 29.784090>,  <34.761440, 29.857100, 30.328474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600082, 30.223959, 29.784090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983017, 30.116499, 29.741491>,  <35.212776, 30.052023, 29.715933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.983017, 30.116499, 29.741491>,  <34.600082, 30.223959, 29.784090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983017, 30.116499, 29.741491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228925, -0.480069, -0.846833,
		0.176378, 0.835080, -0.521087,
		0.957332, -0.268652, -0.106497,
		35.270218, 30.035904, 29.709541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750328, 30.331745, 29.024996>,  <34.600082, 30.223959, 29.784090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750328, 30.331745, 29.024996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063740, 30.111584, 29.140327>,  <35.251789, 29.979486, 29.209526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063740, 30.111584, 29.140327>,  <34.750328, 30.331745, 29.024996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063740, 30.111584, 29.140327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074397, -0.543803, -0.835908,
		0.616882, 0.633510, -0.467035,
		0.783532, -0.550403, 0.288331,
		35.298798, 29.946463, 29.226828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212601, 30.443312, 28.449558>,  <34.750328, 30.331745, 29.024996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212601, 30.443312, 28.449558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311607, 30.120401, 28.663862>,  <35.371010, 29.926655, 28.792444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.311607, 30.120401, 28.663862>,  <35.212601, 30.443312, 28.449558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311607, 30.120401, 28.663862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002631, -0.553524, -0.832829,
		0.968880, 0.204730, -0.139131,
		0.247517, -0.807278, 0.535759,
		35.385864, 29.878218, 28.824591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579430, 30.101406, 28.042570>,  <35.212601, 30.443312, 28.449558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579430, 30.101406, 28.042570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513916, 29.811491, 28.310261>,  <35.474609, 29.637543, 28.470875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513916, 29.811491, 28.310261>,  <35.579430, 30.101406, 28.042570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513916, 29.811491, 28.310261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061155, -0.669621, -0.740181,
		0.984599, -0.162154, 0.065347,
		-0.163781, -0.724786, 0.669225,
		35.464783, 29.594055, 28.511028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082970, 29.674278, 27.993792>,  <35.579430, 30.101406, 28.042570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082970, 29.674278, 27.993792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804794, 29.448469, 28.171635>,  <35.637890, 29.312984, 28.278341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804794, 29.448469, 28.171635>,  <36.082970, 29.674278, 27.993792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804794, 29.448469, 28.171635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164128, -0.727162, -0.666557,
		0.699588, -0.390578, 0.598352,
		-0.695441, -0.564522, 0.444609,
		35.596161, 29.279112, 28.305017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306152, 28.982660, 28.017487>,  <36.082970, 29.674278, 27.993792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306152, 28.982660, 28.017487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912441, 28.934656, 28.069338>,  <35.676216, 28.905853, 28.100449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912441, 28.934656, 28.069338>,  <36.306152, 28.982660, 28.017487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912441, 28.934656, 28.069338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001377, -0.738988, -0.673717,
		0.176647, -0.662943, 0.727532,
		-0.984273, -0.120012, 0.129627,
		35.617161, 28.898653, 28.108227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232777, 28.267235, 28.149103>,  <36.306152, 28.982660, 28.017487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232777, 28.267235, 28.149103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886372, 28.406250, 28.005301>,  <35.678528, 28.489658, 27.919020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.886372, 28.406250, 28.005301>,  <36.232777, 28.267235, 28.149103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886372, 28.406250, 28.005301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097635, -0.822662, -0.560085,
		-0.490401, -0.449939, 0.746366,
		-0.866010, 0.347538, -0.359505,
		35.626568, 28.510511, 27.897449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772552, 27.723675, 28.210184>,  <36.232777, 28.267235, 28.149103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772552, 27.723675, 28.210184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597401, 27.961611, 27.940540>,  <35.492310, 28.104372, 27.778753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597401, 27.961611, 27.940540>,  <35.772552, 27.723675, 28.210184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597401, 27.961611, 27.940540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223091, -0.798259, -0.559475,
		-0.870914, -0.094595, 0.482246,
		-0.437880, 0.594839, -0.674112,
		35.466038, 28.140062, 27.738308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115719, 27.406971, 28.096155>,  <35.772552, 27.723675, 28.210184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115719, 27.406971, 28.096155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205261, 27.627176, 27.774454>,  <35.258987, 27.759300, 27.581432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205261, 27.627176, 27.774454>,  <35.115719, 27.406971, 28.096155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205261, 27.627176, 27.774454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256841, -0.762704, -0.593562,
		-0.940171, 0.339438, -0.029341,
		0.223856, 0.550513, -0.804253,
		35.272419, 27.792330, 27.533178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825600, 27.091230, 27.660086>,  <35.115719, 27.406971, 28.096155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825600, 27.091230, 27.660086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023689, 27.340109, 27.417559>,  <35.142544, 27.489437, 27.272041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023689, 27.340109, 27.417559>,  <34.825600, 27.091230, 27.660086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023689, 27.340109, 27.417559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282202, -0.544854, -0.789617,
		-0.821654, 0.562142, -0.094240,
		0.495224, 0.622198, -0.606319,
		35.172256, 27.526768, 27.235662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377480, 27.141352, 27.052797>,  <34.825600, 27.091230, 27.660086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377480, 27.141352, 27.052797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731312, 27.262775, 26.911165>,  <34.943611, 27.335629, 26.826185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.731312, 27.262775, 26.911165>,  <34.377480, 27.141352, 27.052797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731312, 27.262775, 26.911165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185352, -0.467855, -0.864151,
		-0.427978, 0.830039, -0.357589,
		0.884578, 0.303558, -0.354081,
		34.996685, 27.353844, 26.804941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295094, 27.230810, 26.326782>,  <34.377480, 27.141352, 27.052797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295094, 27.230810, 26.326782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692791, 27.205048, 26.361015>,  <34.931412, 27.189590, 26.381556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692791, 27.205048, 26.361015>,  <34.295094, 27.230810, 26.326782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692791, 27.205048, 26.361015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036473, -0.547683, -0.835891,
		0.100712, 0.834203, -0.542183,
		0.994247, -0.064409, 0.085584,
		34.991066, 27.185724, 26.386690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683685, 27.563940, 25.749399>,  <34.295094, 27.230810, 26.326782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683685, 27.563940, 25.749399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910374, 27.278458, 25.914055>,  <35.046387, 27.107168, 26.012848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910374, 27.278458, 25.914055>,  <34.683685, 27.563940, 25.749399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910374, 27.278458, 25.914055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130063, -0.415858, -0.900081,
		0.813578, 0.563635, -0.142850,
		0.566723, -0.713706, 0.411641,
		35.080391, 27.064346, 26.037548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061680, 27.376709, 25.233618>,  <34.683685, 27.563940, 25.749399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061680, 27.376709, 25.233618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139233, 27.072741, 25.481789>,  <35.185764, 26.890360, 25.630692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139233, 27.072741, 25.481789>,  <35.061680, 27.376709, 25.233618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139233, 27.072741, 25.481789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118757, -0.609595, -0.783767,
		0.973810, 0.225638, -0.027943,
		0.193882, -0.759922, 0.620426,
		35.197395, 26.844765, 25.667917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733402, 27.050739, 25.081032>,  <35.061680, 27.376709, 25.233618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733402, 27.050739, 25.081032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522415, 26.768265, 25.269957>,  <35.395824, 26.598780, 25.383310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.522415, 26.768265, 25.269957>,  <35.733402, 27.050739, 25.081032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522415, 26.768265, 25.269957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384390, -0.694154, -0.608600,
		0.757642, -0.139466, 0.637595,
		-0.527468, -0.706187, 0.472311,
		35.364174, 26.556408, 25.411650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222378, 26.608589, 25.098001>,  <35.733402, 27.050739, 25.081032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222378, 26.608589, 25.098001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901215, 26.387482, 25.187258>,  <35.708519, 26.254818, 25.240812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.901215, 26.387482, 25.187258>,  <36.222378, 26.608589, 25.098001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901215, 26.387482, 25.187258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365717, -0.752381, -0.547881,
		0.470739, -0.358289, 0.806247,
		-0.802904, -0.552768, 0.223143,
		35.660343, 26.221651, 25.254200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470127, 25.893162, 25.060631>,  <36.222378, 26.608589, 25.098001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470127, 25.893162, 25.060631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079666, 25.817482, 25.018042>,  <35.845390, 25.772074, 24.992487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079666, 25.817482, 25.018042>,  <36.470127, 25.893162, 25.060631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079666, 25.817482, 25.018042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193823, -0.538521, -0.820017,
		0.097810, -0.821096, 0.562348,
		-0.976148, -0.189202, -0.106474,
		35.786823, 25.760721, 24.986099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441170, 25.174259, 24.825506>,  <36.470127, 25.893162, 25.060631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441170, 25.174259, 24.825506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112343, 25.381092, 24.730150>,  <35.915047, 25.505192, 24.672937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112343, 25.381092, 24.730150>,  <36.441170, 25.174259, 24.825506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112343, 25.381092, 24.730150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046932, -0.355715, -0.933415,
		-0.567453, -0.778518, 0.268154,
		-0.822067, 0.517085, -0.238389,
		35.865723, 25.536217, 24.658634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010788, 24.788084, 24.558029>,  <36.441170, 25.174259, 24.825506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010788, 24.788084, 24.558029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873535, 25.134346, 24.412207>,  <35.791183, 25.342102, 24.324713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.873535, 25.134346, 24.412207>,  <36.010788, 24.788084, 24.558029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873535, 25.134346, 24.412207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155785, -0.435196, -0.886755,
		-0.926277, -0.247485, 0.284187,
		-0.343136, 0.865653, -0.364558,
		35.770596, 25.394041, 24.302839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389568, 24.636539, 24.235281>,  <36.010788, 24.788084, 24.558029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389568, 24.636539, 24.235281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504124, 24.987543, 24.081421>,  <35.572857, 25.198145, 23.989105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.504124, 24.987543, 24.081421>,  <35.389568, 24.636539, 24.235281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504124, 24.987543, 24.081421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110656, -0.368487, -0.923023,
		-0.951702, 0.306906, -0.008429,
		0.286388, 0.877511, -0.384651,
		35.590038, 25.250797, 23.966026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180592, 24.680668, 23.427467>,  <35.389568, 24.636539, 24.235281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180592, 24.680668, 23.427467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441257, 24.983391, 23.447783>,  <35.597656, 25.165024, 23.459972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441257, 24.983391, 23.447783>,  <35.180592, 24.680668, 23.427467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441257, 24.983391, 23.447783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292319, -0.188794, -0.937500,
		-0.699917, 0.625781, -0.344259,
		0.651664, 0.756805, 0.050787,
		35.636757, 25.210432, 23.463018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099403, 25.284386, 22.917965>,  <35.180592, 24.680668, 23.427467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099403, 25.284386, 22.917965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486225, 25.237167, 23.008181>,  <35.718319, 25.208836, 23.062309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486225, 25.237167, 23.008181>,  <35.099403, 25.284386, 22.917965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486225, 25.237167, 23.008181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200484, -0.192788, -0.960541,
		0.156869, 0.974114, -0.162771,
		0.967056, -0.118046, 0.225537,
		35.776340, 25.201754, 23.075842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505524, 25.406992, 22.491129>,  <35.099403, 25.284386, 22.917965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505524, 25.406992, 22.491129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350296, 25.641417, 22.206612>,  <34.257160, 25.782070, 22.035902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350296, 25.641417, 22.206612>,  <34.505524, 25.406992, 22.491129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350296, 25.641417, 22.206612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524405, 0.494250, 0.693337,
		0.757893, 0.642067, 0.115530,
		-0.388069, 0.586060, -0.711292,
		34.233875, 25.817234, 21.993223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621159, 26.150227, 22.630768>,  <34.505524, 25.406992, 22.491129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621159, 26.150227, 22.630768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279049, 26.085737, 22.433788>,  <34.073784, 26.047045, 22.315599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.279049, 26.085737, 22.433788>,  <34.621159, 26.150227, 22.630768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279049, 26.085737, 22.433788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493734, 0.541956, 0.680081,
		0.157243, 0.824798, -0.543124,
		-0.855278, -0.161221, -0.492450,
		34.022465, 26.037371, 22.286053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316837, 26.763933, 22.519079>,  <34.621159, 26.150227, 22.630768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316837, 26.763933, 22.519079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010536, 26.509338, 22.482182>,  <33.826756, 26.356581, 22.460043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.010536, 26.509338, 22.482182>,  <34.316837, 26.763933, 22.519079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010536, 26.509338, 22.482182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525841, 0.537041, 0.659605,
		-0.370291, 0.553600, -0.745930,
		-0.765752, -0.636487, -0.092244,
		33.780811, 26.318392, 22.454508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712486, 27.151596, 22.258577>,  <34.316837, 26.763933, 22.519079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712486, 27.151596, 22.258577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573360, 26.840452, 22.467943>,  <33.489887, 26.653767, 22.593563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.573360, 26.840452, 22.467943>,  <33.712486, 27.151596, 22.258577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573360, 26.840452, 22.467943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394858, 0.627877, 0.670714,
		-0.850361, 0.026608, -0.525527,
		-0.347812, -0.777858, 0.523415,
		33.469017, 26.607096, 22.624968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056107, 27.322256, 22.559040>,  <33.712486, 27.151596, 22.258577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056107, 27.322256, 22.559040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148895, 27.003740, 22.782509>,  <33.204567, 26.812632, 22.916590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148895, 27.003740, 22.782509>,  <33.056107, 27.322256, 22.559040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148895, 27.003740, 22.782509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359388, 0.463543, 0.809918,
		-0.903898, -0.388656, -0.178648,
		0.231969, -0.796287, 0.558674,
		33.218487, 26.764854, 22.950111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424980, 27.072781, 22.943390>,  <33.056107, 27.322256, 22.559040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424980, 27.072781, 22.943390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762154, 26.989136, 23.141676>,  <32.964458, 26.938950, 23.260647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762154, 26.989136, 23.141676>,  <32.424980, 27.072781, 22.943390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762154, 26.989136, 23.141676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291104, 0.597588, 0.747092,
		-0.452458, -0.774055, 0.442855,
		0.842935, -0.209111, 0.495714,
		33.015034, 26.926403, 23.290390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173740, 26.896477, 23.652477>,  <32.424980, 27.072781, 22.943390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173740, 26.896477, 23.652477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563541, 26.979767, 23.685909>,  <32.797421, 27.029741, 23.705969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.563541, 26.979767, 23.685909>,  <32.173740, 26.896477, 23.652477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563541, 26.979767, 23.685909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177048, 0.484804, 0.856516,
		0.137828, -0.849475, 0.509309,
		0.974504, 0.208223, 0.083578,
		32.855892, 27.042234, 23.710983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340786, 26.754995, 24.377544>,  <32.173740, 26.896477, 23.652477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340786, 26.754995, 24.377544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667507, 26.952536, 24.258249>,  <32.863541, 27.071060, 24.186672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667507, 26.952536, 24.258249>,  <32.340786, 26.754995, 24.377544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667507, 26.952536, 24.258249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063199, 0.437247, 0.897118,
		0.573448, -0.751615, 0.325933,
		0.816801, 0.493852, -0.298239,
		32.912548, 27.100691, 24.168777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742504, 26.824575, 24.929153>,  <32.340786, 26.754995, 24.377544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742504, 26.824575, 24.929153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883804, 27.119888, 24.699318>,  <32.968586, 27.297075, 24.561417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.883804, 27.119888, 24.699318>,  <32.742504, 26.824575, 24.929153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883804, 27.119888, 24.699318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030899, 0.604644, 0.795897,
		0.935018, -0.298906, 0.190779,
		0.353251, 0.738283, -0.574589,
		32.989780, 27.341373, 24.526941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435532, 26.940752, 25.197029>,  <32.742504, 26.824575, 24.929153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435532, 26.940752, 25.197029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316078, 27.267712, 24.999981>,  <33.244408, 27.463888, 24.881752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316078, 27.267712, 24.999981>,  <33.435532, 26.940752, 25.197029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316078, 27.267712, 24.999981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267167, 0.567139, 0.779086,
		0.916209, 0.101050, -0.387749,
		-0.298634, 0.817400, -0.492621,
		33.226486, 27.512932, 24.852194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926788, 27.419239, 25.271696>,  <33.435532, 26.940752, 25.197029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926788, 27.419239, 25.271696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614941, 27.651190, 25.177088>,  <33.427834, 27.790361, 25.120323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.614941, 27.651190, 25.177088>,  <33.926788, 27.419239, 25.271696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614941, 27.651190, 25.177088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294059, 0.672406, 0.679264,
		0.552929, 0.460012, -0.694736,
		-0.779615, 0.579878, -0.236522,
		33.381058, 27.825153, 25.106131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204903, 28.059265, 25.384064>,  <33.926788, 27.419239, 25.271696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204903, 28.059265, 25.384064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810936, 28.128044, 25.391838>,  <33.574558, 28.169312, 25.396503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810936, 28.128044, 25.391838>,  <34.204903, 28.059265, 25.384064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810936, 28.128044, 25.391838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135465, 0.696259, 0.704892,
		0.107673, 0.696891, -0.709048,
		-0.984914, 0.171949, 0.019436,
		33.515461, 28.179628, 25.397669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095692, 28.733913, 25.546520>,  <34.204903, 28.059265, 25.384064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095692, 28.733913, 25.546520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738506, 28.577600, 25.635881>,  <33.524197, 28.483812, 25.689499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.738506, 28.577600, 25.635881>,  <34.095692, 28.733913, 25.546520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738506, 28.577600, 25.635881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017392, 0.525889, 0.850375,
		-0.449796, 0.755467, -0.476396,
		-0.892962, -0.390781, 0.223403,
		33.470619, 28.460365, 25.702902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669769, 29.301510, 25.834265>,  <34.095692, 28.733913, 25.546520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669769, 29.301510, 25.834265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489475, 28.968904, 25.964140>,  <33.381298, 28.769341, 26.042065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489475, 28.968904, 25.964140>,  <33.669769, 29.301510, 25.834265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489475, 28.968904, 25.964140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232611, 0.460573, 0.856601,
		-0.861820, 0.310571, -0.401015,
		-0.450732, -0.831516, 0.324689,
		33.354256, 28.719450, 26.061546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076000, 29.528883, 26.046471>,  <33.669769, 29.301510, 25.834265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076000, 29.528883, 26.046471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141380, 29.189642, 26.248066>,  <33.180607, 28.986097, 26.369024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141380, 29.189642, 26.248066>,  <33.076000, 29.528883, 26.046471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141380, 29.189642, 26.248066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175810, 0.477644, 0.860783,
		-0.970760, -0.229299, -0.071036,
		0.163447, -0.848103, 0.503991,
		33.190414, 28.935211, 26.399263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560959, 29.465210, 26.398006>,  <33.076000, 29.528883, 26.046471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560959, 29.465210, 26.398006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833908, 29.242249, 26.587181>,  <32.997677, 29.108471, 26.700686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.833908, 29.242249, 26.587181>,  <32.560959, 29.465210, 26.398006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833908, 29.242249, 26.587181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259178, 0.420457, 0.869507,
		-0.683517, -0.715902, 0.142441,
		0.682372, -0.557405, 0.472935,
		33.038620, 29.075027, 26.729061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370750, 29.352167, 27.007578>,  <32.560959, 29.465210, 26.398006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370750, 29.352167, 27.007578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737385, 29.213425, 27.087130>,  <32.957367, 29.130178, 27.134861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.737385, 29.213425, 27.087130>,  <32.370750, 29.352167, 27.007578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737385, 29.213425, 27.087130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087569, 0.311177, 0.946309,
		-0.390121, -0.884793, 0.254848,
		0.916590, -0.346858, 0.198878,
		33.012363, 29.109367, 27.146793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284451, 28.963577, 27.606388>,  <32.370750, 29.352167, 27.007578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284451, 28.963577, 27.606388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669033, 29.071669, 27.586067>,  <32.899784, 29.136522, 27.573875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669033, 29.071669, 27.586067>,  <32.284451, 28.963577, 27.606388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669033, 29.071669, 27.586067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004586, 0.200497, 0.979684,
		0.274926, -0.941688, 0.194008,
		0.961455, 0.270230, -0.050803,
		32.957470, 29.152737, 27.570827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668686, 28.638601, 28.208069>,  <32.284451, 28.963577, 27.606388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668686, 28.638601, 28.208069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871407, 28.966240, 28.100561>,  <32.993038, 29.162823, 28.036057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.871407, 28.966240, 28.100561>,  <32.668686, 28.638601, 28.208069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871407, 28.966240, 28.100561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001826, 0.312795, 0.949819,
		0.862063, -0.480876, 0.160020,
		0.506798, 0.819096, -0.268771,
		33.023445, 29.211969, 28.019930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263935, 28.655090, 28.590197>,  <32.668686, 28.638601, 28.208069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263935, 28.655090, 28.590197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208023, 29.033028, 28.471720>,  <33.174477, 29.259790, 28.400633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208023, 29.033028, 28.471720>,  <33.263935, 28.655090, 28.590197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208023, 29.033028, 28.471720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101670, 0.283853, 0.953463,
		0.984949, 0.163393, 0.056384,
		-0.139784, 0.944844, -0.296193,
		33.166088, 29.316481, 28.382862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714249, 29.087542, 29.076487>,  <33.263935, 28.655090, 28.590197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714249, 29.087542, 29.076487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439827, 29.335915, 28.924820>,  <33.275173, 29.484938, 28.833820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.439827, 29.335915, 28.924820>,  <33.714249, 29.087542, 29.076487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439827, 29.335915, 28.924820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169567, 0.370338, 0.913289,
		0.707511, 0.690863, -0.148784,
		-0.686058, 0.620933, -0.379166,
		33.234009, 29.522194, 28.811069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.334194, 30.761234, 32.852619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279331, 31.079035, 32.615993>,  <36.246414, 31.269716, 32.474018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.279331, 31.079035, 32.615993>,  <36.334194, 30.761234, 32.852619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279331, 31.079035, 32.615993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386106, 0.592858, 0.706712,
		0.912200, -0.131474, -0.388080,
		-0.137162, 0.794503, -0.591567,
		36.238182, 31.317385, 32.438522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003986, 31.175497, 32.747738>,  <36.334194, 30.761234, 32.852619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003986, 31.175497, 32.747738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694092, 31.419294, 32.680443>,  <36.508156, 31.565573, 32.640068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.694092, 31.419294, 32.680443>,  <37.003986, 31.175497, 32.747738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694092, 31.419294, 32.680443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384185, 0.665095, 0.640352,
		0.502181, 0.431470, -0.749431,
		-0.774736, 0.609493, -0.168234,
		36.461670, 31.602142, 32.629974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328720, 31.825123, 32.662834>,  <37.003986, 31.175497, 32.747738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328720, 31.825123, 32.662834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943157, 31.890230, 32.747112>,  <36.711819, 31.929295, 32.797680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.943157, 31.890230, 32.747112>,  <37.328720, 31.825123, 32.662834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943157, 31.890230, 32.747112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256698, 0.778178, 0.573188,
		-0.070661, 0.606584, -0.791873,
		-0.963905, 0.162770, 0.210696,
		36.653984, 31.939062, 32.810322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330864, 32.553379, 32.619308>,  <37.328720, 31.825123, 32.662834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330864, 32.553379, 32.619308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020866, 32.449089, 32.849583>,  <36.834869, 32.386517, 32.987747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020866, 32.449089, 32.849583>,  <37.330864, 32.553379, 32.619308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020866, 32.449089, 32.849583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303795, 0.645079, 0.701129,
		-0.554161, 0.718259, -0.420726,
		-0.774993, -0.260724, 0.575681,
		36.788368, 32.370872, 33.022285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059208, 33.148129, 32.845222>,  <37.330864, 32.553379, 32.619308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059208, 33.148129, 32.845222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895012, 32.891880, 33.104790>,  <36.796494, 32.738129, 33.260529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.895012, 32.891880, 33.104790>,  <37.059208, 33.148129, 32.845222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895012, 32.891880, 33.104790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183950, 0.638834, 0.747030,
		-0.893116, 0.426020, -0.144396,
		-0.410495, -0.640623, 0.648920,
		36.771862, 32.699692, 33.299465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576939, 33.588131, 33.216118>,  <37.059208, 33.148129, 32.845222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576939, 33.588131, 33.216118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.630432, 33.256145, 33.432735>,  <36.662529, 33.056953, 33.562706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.630432, 33.256145, 33.432735>,  <36.576939, 33.588131, 33.216118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630432, 33.256145, 33.432735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208553, 0.510648, 0.834112,
		-0.968825, -0.224489, -0.104802,
		0.133732, -0.829966, 0.541547,
		36.670551, 33.007156, 33.595200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028687, 33.501858, 33.646500>,  <36.576939, 33.588131, 33.216118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028687, 33.501858, 33.646500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.327972, 33.304253, 33.823643>,  <36.507545, 33.185692, 33.929928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.327972, 33.304253, 33.823643>,  <36.028687, 33.501858, 33.646500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327972, 33.304253, 33.823643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096383, 0.579492, 0.809259,
		-0.656416, -0.648185, 0.385972,
		0.748217, -0.494009, 0.442862,
		36.552437, 33.156052, 33.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832184, 33.365868, 34.318493>,  <36.028687, 33.501858, 33.646500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832184, 33.365868, 34.318493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227768, 33.312450, 34.344208>,  <36.465118, 33.280399, 34.359638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.227768, 33.312450, 34.344208>,  <35.832184, 33.365868, 34.318493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227768, 33.312450, 34.344208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016539, 0.530507, 0.847519,
		-0.147286, -0.837096, 0.526856,
		0.988956, -0.133541, 0.064291,
		36.524456, 33.272388, 34.363495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992264, 32.992455, 34.936047>,  <35.832184, 33.365868, 34.318493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992264, 32.992455, 34.936047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283062, 33.236340, 34.809723>,  <36.457539, 33.382671, 34.733929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283062, 33.236340, 34.809723>,  <35.992264, 32.992455, 34.936047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283062, 33.236340, 34.809723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079132, 0.531255, 0.843509,
		0.682071, -0.588234, 0.434466,
		0.726992, 0.609713, -0.315805,
		36.501160, 33.419254, 34.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195107, 33.278961, 35.582733>,  <35.992264, 32.992455, 34.936047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195107, 33.278961, 35.582733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367336, 33.501881, 35.298752>,  <36.470673, 33.635632, 35.128365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.367336, 33.501881, 35.298752>,  <36.195107, 33.278961, 35.582733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367336, 33.501881, 35.298752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106858, 0.749590, 0.653220,
		0.896210, -0.357120, 0.263198,
		0.430569, 0.557298, -0.709951,
		36.496506, 33.669071, 35.085766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777607, 33.635193, 35.787151>,  <36.195107, 33.278961, 35.582733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777607, 33.635193, 35.787151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742729, 33.884197, 35.476055>,  <36.721802, 34.033600, 35.289398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742729, 33.884197, 35.476055>,  <36.777607, 33.635193, 35.787151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742729, 33.884197, 35.476055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175378, 0.778114, 0.603143,
		0.980632, -0.083805, -0.177025,
		-0.087199, 0.622507, -0.777741,
		36.716568, 34.070950, 35.242733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177998, 34.279697, 35.990997>,  <36.777607, 33.635193, 35.787151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177998, 34.279697, 35.990997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930023, 34.401653, 35.701801>,  <36.781239, 34.474827, 35.528282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.930023, 34.401653, 35.701801>,  <37.177998, 34.279697, 35.990997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930023, 34.401653, 35.701801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005357, 0.919752, 0.392463,
		0.784632, 0.247176, -0.568557,
		-0.619939, 0.304893, -0.722991,
		36.744041, 34.493122, 35.484905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433632, 34.911026, 35.689835>,  <37.177998, 34.279697, 35.990997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433632, 34.911026, 35.689835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046108, 34.926765, 35.591972>,  <36.813595, 34.936207, 35.533257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046108, 34.926765, 35.591972>,  <37.433632, 34.911026, 35.689835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046108, 34.926765, 35.591972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052201, 0.932754, 0.356715,
		0.242235, 0.358361, -0.901609,
		-0.968812, 0.039344, -0.244652,
		36.755463, 34.938568, 35.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398640, 35.476414, 35.399998>,  <37.433632, 34.911026, 35.689835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398640, 35.476414, 35.399998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031349, 35.390709, 35.533241>,  <36.810974, 35.339287, 35.613186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.031349, 35.390709, 35.533241>,  <37.398640, 35.476414, 35.399998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031349, 35.390709, 35.533241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097370, 0.937345, 0.334520,
		-0.383909, 0.274730, -0.881554,
		-0.918223, -0.214262, 0.333105,
		36.755882, 35.326431, 35.633171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101254, 35.763565, 35.510857>,  <37.398640, 35.476414, 35.399998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101254, 35.763565, 35.510857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274731, 36.088341, 35.354568>,  <38.378819, 36.283207, 35.260796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274731, 36.088341, 35.354568>,  <38.101254, 35.763565, 35.510857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274731, 36.088341, 35.354568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028582, -0.445801, -0.894675,
		-0.900605, 0.376851, -0.216550,
		0.433698, 0.811939, -0.390720,
		38.404839, 36.331921, 35.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785095, 35.876949, 34.931774>,  <38.101254, 35.763565, 35.510857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785095, 35.876949, 34.931774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116833, 36.089985, 34.864197>,  <38.315876, 36.217804, 34.823650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.116833, 36.089985, 34.864197>,  <37.785095, 35.876949, 34.931774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116833, 36.089985, 34.864197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003111, -0.297954, -0.954575,
		-0.558728, 0.792198, -0.245450,
		0.829345, 0.532584, -0.168939,
		38.365635, 36.249760, 34.813515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605064, 36.304287, 34.361408>,  <37.785095, 35.876949, 34.931774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605064, 36.304287, 34.361408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999664, 36.242016, 34.381752>,  <38.236423, 36.204655, 34.393959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.999664, 36.242016, 34.381752>,  <37.605064, 36.304287, 34.361408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999664, 36.242016, 34.381752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010172, -0.368176, -0.929700,
		0.163457, 0.916630, -0.364789,
		0.986498, -0.155677, 0.050857,
		38.295612, 36.195312, 34.397011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891937, 36.491306, 33.661343>,  <37.605064, 36.304287, 34.361408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891937, 36.491306, 33.661343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202557, 36.301136, 33.826725>,  <38.388927, 36.187035, 33.925953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202557, 36.301136, 33.826725>,  <37.891937, 36.491306, 33.661343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202557, 36.301136, 33.826725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018074, -0.639135, -0.768882,
		0.629802, 0.604545, -0.487725,
		0.776546, -0.475428, 0.413455,
		38.435520, 36.158508, 33.950760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393433, 36.490105, 33.151054>,  <37.891937, 36.491306, 33.661343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393433, 36.490105, 33.151054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465309, 36.183464, 33.397640>,  <38.508434, 35.999481, 33.545593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465309, 36.183464, 33.397640>,  <38.393433, 36.490105, 33.151054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465309, 36.183464, 33.397640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065112, -0.634562, -0.770124,
		0.981565, 0.098248, -0.163943,
		0.179695, -0.766602, 0.616467,
		38.519218, 35.953484, 33.582581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895008, 36.158051, 32.907600>,  <38.393433, 36.490105, 33.151054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895008, 36.158051, 32.907600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749378, 35.868843, 33.142445>,  <38.661999, 35.695320, 33.283352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749378, 35.868843, 33.142445>,  <38.895008, 36.158051, 32.907600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749378, 35.868843, 33.142445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087237, -0.654072, -0.751386,
		0.927274, -0.222345, 0.301207,
		-0.364077, -0.723017, 0.587107,
		38.640156, 35.651939, 33.318577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329975, 35.620289, 32.850563>,  <38.895008, 36.158051, 32.907600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329975, 35.620289, 32.850563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989559, 35.470135, 32.997433>,  <38.785309, 35.380043, 33.085556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989559, 35.470135, 32.997433>,  <39.329975, 35.620289, 32.850563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989559, 35.470135, 32.997433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035361, -0.656693, -0.753328,
		0.523908, -0.654096, 0.545599,
		-0.851040, -0.375382, 0.367177,
		38.734245, 35.357521, 33.107586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369175, 34.921364, 32.812847>,  <39.329975, 35.620289, 32.850563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369175, 34.921364, 32.812847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973991, 34.977371, 32.839180>,  <38.736881, 35.010975, 32.854980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.973991, 34.977371, 32.839180>,  <39.369175, 34.921364, 32.812847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973991, 34.977371, 32.839180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147462, -0.723340, -0.674562,
		-0.046829, -0.676147, 0.735277,
		-0.987958, 0.140015, 0.065833,
		38.677605, 35.019375, 32.858929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064449, 34.238808, 33.037582>,  <39.369175, 34.921364, 32.812847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064449, 34.238808, 33.037582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772141, 34.427834, 32.840542>,  <38.596756, 34.541248, 32.722317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772141, 34.427834, 32.840542>,  <39.064449, 34.238808, 33.037582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772141, 34.427834, 32.840542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068140, -0.768528, -0.636178,
		-0.679215, -0.431333, 0.593817,
		-0.730769, 0.472564, -0.492604,
		38.552910, 34.569603, 32.692760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529549, 33.757584, 32.878941>,  <39.064449, 34.238808, 33.037582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529549, 33.757584, 32.878941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410297, 34.019886, 32.601494>,  <38.338745, 34.177269, 32.435028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410297, 34.019886, 32.601494>,  <38.529549, 33.757584, 32.878941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410297, 34.019886, 32.601494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152964, -0.750089, -0.643404,
		-0.942188, -0.085722, 0.323933,
		-0.298133, 0.655757, -0.693613,
		38.320858, 34.216614, 32.393410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919563, 33.474434, 32.493782>,  <38.529549, 33.757584, 32.878941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919563, 33.474434, 32.493782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019733, 33.767643, 32.240814>,  <38.079838, 33.943569, 32.089031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019733, 33.767643, 32.240814>,  <37.919563, 33.474434, 32.493782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019733, 33.767643, 32.240814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069688, -0.665193, -0.743412,
		-0.965624, 0.142099, -0.217666,
		0.250428, 0.733026, -0.632423,
		38.094860, 33.987549, 32.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405865, 33.591919, 32.037235>,  <37.919563, 33.474434, 32.493782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405865, 33.591919, 32.037235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726402, 33.731701, 31.843023>,  <37.918724, 33.815571, 31.726498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726402, 33.731701, 31.843023>,  <37.405865, 33.591919, 32.037235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726402, 33.731701, 31.843023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213667, -0.590896, -0.777938,
		-0.558747, 0.727135, -0.398844,
		0.801342, 0.349451, -0.485526,
		37.966805, 33.836536, 31.697365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244709, 33.478523, 31.347433>,  <37.405865, 33.591919, 32.037235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244709, 33.478523, 31.347433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.637383, 33.535141, 31.296423>,  <37.872986, 33.569111, 31.265818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.637383, 33.535141, 31.296423>,  <37.244709, 33.478523, 31.347433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637383, 33.535141, 31.296423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000033, -0.669482, -0.742828,
		-0.190517, 0.729218, -0.657224,
		0.981684, 0.141543, -0.127524,
		37.931889, 33.577602, 31.258165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365425, 33.602165, 30.582306>,  <37.244709, 33.478523, 31.347433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365425, 33.602165, 30.582306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712185, 33.488472, 30.746109>,  <37.920242, 33.420258, 30.844391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.712185, 33.488472, 30.746109>,  <37.365425, 33.602165, 30.582306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712185, 33.488472, 30.746109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095189, -0.712000, -0.695698,
		0.489307, 0.642082, -0.590178,
		0.866901, -0.284231, 0.409506,
		37.972256, 33.403202, 30.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538513, 34.210503, 30.132586>,  <37.365425, 33.602165, 30.582306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538513, 34.210503, 30.132586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325600, 34.452003, 29.895212>,  <37.197853, 34.596905, 29.752789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325600, 34.452003, 29.895212>,  <37.538513, 34.210503, 30.132586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325600, 34.452003, 29.895212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293219, 0.526116, 0.798263,
		0.794166, 0.598907, -0.103011,
		-0.532281, 0.603749, -0.593434,
		37.165916, 34.633129, 29.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783020, 34.908203, 30.229963>,  <37.538513, 34.210503, 30.132586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783020, 34.908203, 30.229963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404369, 34.913490, 30.101139>,  <37.177177, 34.916660, 30.023844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.404369, 34.913490, 30.101139>,  <37.783020, 34.908203, 30.229963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404369, 34.913490, 30.101139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264090, 0.541077, 0.798431,
		0.184811, 0.840869, -0.508708,
		-0.946626, 0.013215, -0.322062,
		37.120380, 34.917454, 30.004520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576820, 35.599796, 30.392464>,  <37.783020, 34.908203, 30.229963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576820, 35.599796, 30.392464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243393, 35.385296, 30.339399>,  <37.043335, 35.256596, 30.307560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.243393, 35.385296, 30.339399>,  <37.576820, 35.599796, 30.392464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243393, 35.385296, 30.339399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439084, 0.497439, 0.748170,
		-0.335216, 0.681901, -0.650109,
		-0.833568, -0.536251, -0.132662,
		36.993324, 35.224422, 30.299601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002045, 36.054321, 30.409840>,  <37.576820, 35.599796, 30.392464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002045, 36.054321, 30.409840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820389, 35.702625, 30.467377>,  <36.711395, 35.491608, 30.501898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820389, 35.702625, 30.467377>,  <37.002045, 36.054321, 30.409840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820389, 35.702625, 30.467377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653729, 0.438546, 0.616697,
		-0.605308, 0.186031, -0.773947,
		-0.454137, -0.879244, 0.143841,
		36.684147, 35.438850, 30.510529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374393, 36.269218, 30.310944>,  <37.002045, 36.054321, 30.409840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374393, 36.269218, 30.310944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368423, 35.932644, 30.527002>,  <36.364841, 35.730698, 30.656637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.368423, 35.932644, 30.527002>,  <36.374393, 36.269218, 30.310944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368423, 35.932644, 30.527002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693849, 0.397691, 0.600346,
		-0.719966, -0.365819, -0.589767,
		-0.014927, -0.841438, 0.540147,
		36.363945, 35.680214, 30.689047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697372, 36.129730, 30.252369>,  <36.374393, 36.269218, 30.310944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697372, 36.129730, 30.252369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812904, 35.911816, 30.567274>,  <35.882221, 35.781067, 30.756218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812904, 35.911816, 30.567274>,  <35.697372, 36.129730, 30.252369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812904, 35.911816, 30.567274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804727, 0.307325, 0.507903,
		-0.518646, -0.780227, -0.349645,
		0.288825, -0.544791, 0.787263,
		35.899551, 35.748379, 30.803453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095604, 36.022179, 30.615335>,  <35.697372, 36.129730, 30.252369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095604, 36.022179, 30.615335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.374352, 35.919960, 30.883387>,  <35.541599, 35.858631, 31.044218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.374352, 35.919960, 30.883387>,  <35.095604, 36.022179, 30.615335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374352, 35.919960, 30.883387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640968, 0.197287, 0.741780,
		-0.321765, -0.946454, -0.026312,
		0.696870, -0.255544, 0.670127,
		35.583412, 35.843296, 31.084425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690964, 35.709805, 31.047709>,  <35.095604, 36.022179, 30.615335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690964, 35.709805, 31.047709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030903, 35.803783, 31.236412>,  <35.234867, 35.860168, 31.349634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030903, 35.803783, 31.236412>,  <34.690964, 35.709805, 31.047709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030903, 35.803783, 31.236412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512517, 0.159864, 0.843665,
		0.122791, -0.958774, 0.256270,
		0.849852, 0.234937, 0.471758,
		35.285858, 35.874268, 31.377939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707577, 35.342880, 31.661314>,  <34.690964, 35.709805, 31.047709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707577, 35.342880, 31.661314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.962425, 35.642876, 31.732418>,  <35.115334, 35.822872, 31.775080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.962425, 35.642876, 31.732418>,  <34.707577, 35.342880, 31.661314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962425, 35.642876, 31.732418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469062, 0.194274, 0.861532,
		0.611604, -0.632279, 0.475566,
		0.637119, 0.749987, 0.177760,
		35.153561, 35.867870, 31.785746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027637, 35.277721, 32.390480>,  <34.707577, 35.342880, 31.661314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027637, 35.277721, 32.390480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.037392, 35.657539, 32.265404>,  <35.043243, 35.885429, 32.190357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.037392, 35.657539, 32.265404>,  <35.027637, 35.277721, 32.390480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037392, 35.657539, 32.265404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469991, 0.286957, 0.834724,
		0.882334, 0.126605, 0.453274,
		0.024390, 0.949540, -0.312695,
		35.044708, 35.942402, 32.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362350, 35.574493, 33.027218>,  <35.027637, 35.277721, 32.390480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362350, 35.574493, 33.027218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193348, 35.862576, 32.807110>,  <35.091946, 36.035423, 32.675045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.193348, 35.862576, 32.807110>,  <35.362350, 35.574493, 33.027218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193348, 35.862576, 32.807110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496810, 0.323757, 0.805209,
		0.758066, 0.613587, 0.221013,
		-0.422511, 0.720203, -0.550266,
		35.066593, 36.078636, 32.642029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097618, 36.118233, 33.427631>,  <35.362350, 35.574493, 33.027218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097618, 36.118233, 33.427631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882328, 36.166874, 33.094040>,  <34.753155, 36.196060, 32.893883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882328, 36.166874, 33.094040>,  <35.097618, 36.118233, 33.427631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882328, 36.166874, 33.094040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675798, 0.529006, 0.513274,
		0.503598, 0.839860, -0.202543,
		-0.538225, 0.121606, -0.833982,
		34.720860, 36.203354, 32.843845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.346836, 33.411777, 26.537434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969948, 33.427544, 26.404371>,  <37.743813, 33.437004, 26.324533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969948, 33.427544, 26.404371>,  <38.346836, 33.411777, 26.537434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969948, 33.427544, 26.404371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189699, 0.755702, 0.626841,
		0.276093, 0.653729, -0.704564,
		-0.942224, 0.039411, -0.332656,
		37.687279, 33.439365, 26.304575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211479, 34.108803, 26.425718>,  <38.346836, 33.411777, 26.537434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211479, 34.108803, 26.425718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857155, 33.933769, 26.487490>,  <37.644558, 33.828747, 26.524553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857155, 33.933769, 26.487490>,  <38.211479, 34.108803, 26.425718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857155, 33.933769, 26.487490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144827, 0.576881, 0.803887,
		-0.440858, 0.689729, -0.574384,
		-0.885815, -0.437587, 0.154431,
		37.591412, 33.802494, 26.533819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704166, 34.654881, 26.546276>,  <38.211479, 34.108803, 26.425718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704166, 34.654881, 26.546276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532333, 34.332066, 26.708338>,  <37.429234, 34.138378, 26.805574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532333, 34.332066, 26.708338>,  <37.704166, 34.654881, 26.546276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532333, 34.332066, 26.708338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197554, 0.521782, 0.829889,
		-0.881154, 0.276465, -0.383581,
		-0.429581, -0.807039, 0.405153,
		37.403458, 34.089954, 26.829884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053474, 34.929806, 26.967342>,  <37.704166, 34.654881, 26.546276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053474, 34.929806, 26.967342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157124, 34.566521, 27.098799>,  <37.219315, 34.348549, 27.177673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157124, 34.566521, 27.098799>,  <37.053474, 34.929806, 26.967342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157124, 34.566521, 27.098799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295021, 0.249572, 0.922321,
		-0.919682, -0.335954, -0.203271,
		0.259127, -0.908212, 0.328641,
		37.234863, 34.294056, 27.197392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576099, 34.849571, 27.480148>,  <37.053474, 34.929806, 26.967342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576099, 34.849571, 27.480148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858078, 34.578831, 27.564934>,  <37.027264, 34.416386, 27.615805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858078, 34.578831, 27.564934>,  <36.576099, 34.849571, 27.480148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858078, 34.578831, 27.564934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158159, 0.141312, 0.977250,
		-0.691406, -0.722429, -0.007433,
		0.704943, -0.676852, 0.211962,
		37.069561, 34.375774, 27.628523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235039, 34.401657, 27.883810>,  <36.576099, 34.849571, 27.480148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235039, 34.401657, 27.883810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629581, 34.366695, 27.939598>,  <36.866306, 34.345718, 27.973072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629581, 34.366695, 27.939598>,  <36.235039, 34.401657, 27.883810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629581, 34.366695, 27.939598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128167, 0.123812, 0.983994,
		-0.103274, -0.988449, 0.110921,
		0.986361, -0.087405, 0.139473,
		36.925491, 34.340473, 27.981440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275723, 34.038555, 28.569798>,  <36.235039, 34.401657, 27.883810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275723, 34.038555, 28.569798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633865, 34.202789, 28.500799>,  <36.848751, 34.301331, 28.459400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633865, 34.202789, 28.500799>,  <36.275723, 34.038555, 28.569798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633865, 34.202789, 28.500799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088151, 0.216277, 0.972345,
		0.436540, -0.885800, 0.157451,
		0.895356, 0.410588, -0.172497,
		36.902473, 34.325966, 28.449051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686932, 33.713436, 29.083370>,  <36.275723, 34.038555, 28.569798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686932, 33.713436, 29.083370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859909, 34.050289, 28.954493>,  <36.963696, 34.252399, 28.877167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859909, 34.050289, 28.954493>,  <36.686932, 33.713436, 29.083370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859909, 34.050289, 28.954493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019427, 0.365952, 0.930431,
		0.901451, -0.396101, 0.174614,
		0.432445, 0.842130, -0.322193,
		36.989643, 34.302929, 28.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368217, 33.780037, 29.509720>,  <36.686932, 33.713436, 29.083370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368217, 33.780037, 29.509720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250816, 34.138096, 29.375515>,  <37.180378, 34.352932, 29.294992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250816, 34.138096, 29.375515>,  <37.368217, 33.780037, 29.509720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250816, 34.138096, 29.375515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054800, 0.334640, 0.940751,
		0.954387, 0.294497, -0.049163,
		-0.293500, 0.895147, -0.335514,
		37.162766, 34.406639, 29.274860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942593, 33.605099, 30.000351>,  <37.368217, 33.780037, 29.509720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942593, 33.605099, 30.000351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124920, 33.389050, 30.283335>,  <38.234314, 33.259418, 30.453125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124920, 33.389050, 30.283335>,  <37.942593, 33.605099, 30.000351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124920, 33.389050, 30.283335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190407, -0.717263, -0.670283,
		0.869471, 0.440230, -0.224095,
		0.455814, -0.540122, 0.707461,
		38.261665, 33.227013, 30.495573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685406, 33.388824, 29.761009>,  <37.942593, 33.605099, 30.000351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685406, 33.388824, 29.761009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564079, 33.123981, 30.035120>,  <38.491283, 32.965076, 30.199587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564079, 33.123981, 30.035120>,  <38.685406, 33.388824, 29.761009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564079, 33.123981, 30.035120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259374, -0.749373, -0.609234,
		0.916910, -0.007048, 0.399033,
		-0.303318, -0.662111, 0.685279,
		38.473083, 32.925346, 30.240704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201294, 32.852314, 29.721395>,  <38.685406, 33.388824, 29.761009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201294, 32.852314, 29.721395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890453, 32.697044, 29.919563>,  <38.703949, 32.603882, 30.038464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890453, 32.697044, 29.919563>,  <39.201294, 32.852314, 29.721395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890453, 32.697044, 29.919563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182035, -0.892135, -0.413472,
		0.602478, -0.231125, 0.763938,
		-0.777100, -0.388171, 0.495418,
		38.657322, 32.580593, 30.068190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494320, 32.381889, 30.136173>,  <39.201294, 32.852314, 29.721395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494320, 32.381889, 30.136173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111347, 32.281998, 30.078251>,  <38.881565, 32.222065, 30.043497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111347, 32.281998, 30.078251>,  <39.494320, 32.381889, 30.136173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111347, 32.281998, 30.078251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285468, -0.893591, -0.346415,
		-0.042888, -0.373004, 0.926838,
		-0.957428, -0.249725, -0.144805,
		38.824120, 32.207081, 30.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356514, 31.679653, 30.476824>,  <39.494320, 32.381889, 30.136173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356514, 31.679653, 30.476824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104355, 31.738136, 30.171873>,  <38.953060, 31.773226, 29.988903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104355, 31.738136, 30.171873>,  <39.356514, 31.679653, 30.476824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104355, 31.738136, 30.171873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232472, -0.901471, -0.365111,
		-0.740645, -0.407397, 0.534296,
		-0.630398, 0.146209, -0.762379,
		38.915234, 31.782000, 29.943159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895397, 31.071611, 30.464205>,  <39.356514, 31.679653, 30.476824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895397, 31.071611, 30.464205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796993, 31.239656, 30.114809>,  <38.737949, 31.340483, 29.905172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796993, 31.239656, 30.114809>,  <38.895397, 31.071611, 30.464205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796993, 31.239656, 30.114809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222297, -0.901620, -0.371032,
		-0.943430, 0.102896, 0.315200,
		-0.246013, 0.420111, -0.873490,
		38.723190, 31.365690, 29.852762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231140, 30.800739, 30.310017>,  <38.895397, 31.071611, 30.464205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231140, 30.800739, 30.310017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434059, 30.921949, 29.987322>,  <38.555809, 30.994675, 29.793705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434059, 30.921949, 29.987322>,  <38.231140, 30.800739, 30.310017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434059, 30.921949, 29.987322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193096, -0.872368, -0.449098,
		-0.839859, 0.383604, -0.384037,
		0.507297, 0.303023, -0.806738,
		38.586246, 31.012856, 29.745300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860939, 30.526119, 29.699924>,  <38.231140, 30.800739, 30.310017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860939, 30.526119, 29.699924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222694, 30.629391, 29.564030>,  <38.439747, 30.691353, 29.482492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222694, 30.629391, 29.564030>,  <37.860939, 30.526119, 29.699924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222694, 30.629391, 29.564030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037909, -0.744423, -0.666631,
		-0.425018, 0.615774, -0.663462,
		0.904391, 0.258179, -0.339737,
		38.494011, 30.706844, 29.462109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719002, 30.499464, 28.987291>,  <37.860939, 30.526119, 29.699924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719002, 30.499464, 28.987291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115082, 30.467896, 29.033388>,  <38.352730, 30.448954, 29.061047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115082, 30.467896, 29.033388>,  <37.719002, 30.499464, 28.987291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115082, 30.467896, 29.033388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014888, -0.760735, -0.648892,
		0.138881, 0.644246, -0.752103,
		0.990197, -0.078921, 0.115243,
		38.412140, 30.444220, 29.067961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968254, 30.378088, 28.315777>,  <37.719002, 30.499464, 28.987291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968254, 30.378088, 28.315777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269733, 30.263798, 28.552519>,  <38.450623, 30.195223, 28.694565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269733, 30.263798, 28.552519>,  <37.968254, 30.378088, 28.315777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269733, 30.263798, 28.552519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192922, -0.764691, -0.614841,
		0.628264, 0.577588, -0.521226,
		0.753701, -0.285726, 0.591857,
		38.495842, 30.178080, 28.730076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533226, 30.160551, 27.790226>,  <37.968254, 30.378088, 28.315777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533226, 30.160551, 27.790226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604343, 29.992321, 28.146093>,  <38.647015, 29.891382, 28.359613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604343, 29.992321, 28.146093>,  <38.533226, 30.160551, 27.790226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604343, 29.992321, 28.146093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319640, -0.830368, -0.456421,
		0.930710, 0.365520, -0.013199,
		0.177790, -0.420576, 0.889666,
		38.657681, 29.866148, 28.412992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209126, 29.829163, 27.631014>,  <38.533226, 30.160551, 27.790226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209126, 29.829163, 27.631014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027107, 29.668617, 27.948969>,  <38.917896, 29.572290, 28.139742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027107, 29.668617, 27.948969>,  <39.209126, 29.829163, 27.631014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027107, 29.668617, 27.948969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038689, -0.900728, -0.432657,
		0.889628, -0.166124, 0.425399,
		-0.455044, -0.401363, 0.794886,
		38.890594, 29.548208, 28.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761208, 29.349819, 27.786634>,  <39.209126, 29.829163, 27.631014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761208, 29.349819, 27.786634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398640, 29.278362, 27.939728>,  <39.181099, 29.235487, 28.031584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398640, 29.278362, 27.939728>,  <39.761208, 29.349819, 27.786634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398640, 29.278362, 27.939728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018334, -0.888656, -0.458207,
		0.421975, -0.422346, 0.802222,
		-0.906422, -0.178644, 0.382734,
		39.126713, 29.224770, 28.054548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760380, 28.683746, 27.949253>,  <39.761208, 29.349819, 27.786634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760380, 28.683746, 27.949253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364693, 28.740871, 27.936283>,  <39.127281, 28.775146, 27.928501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364693, 28.740871, 27.936283>,  <39.760380, 28.683746, 27.949253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364693, 28.740871, 27.936283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107304, -0.857508, -0.503155,
		-0.099662, -0.494251, 0.863588,
		-0.989218, 0.142812, -0.032426,
		39.067928, 28.783714, 27.926556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.153399, 30.749022, 26.674908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.526958, 30.855404, 26.579323>,  <30.751095, 30.919233, 26.521973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.526958, 30.855404, 26.579323>,  <30.153399, 30.749022, 26.674908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526958, 30.855404, 26.579323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123608, 0.386973, 0.913769,
		0.335491, -0.882905, 0.328519,
		0.933899, 0.265954, -0.238960,
		30.807127, 30.935190, 26.507635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430065, 30.548426, 27.326059>,  <30.153399, 30.749022, 26.674908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430065, 30.548426, 27.326059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.705437, 30.784800, 27.157839>,  <30.870659, 30.926624, 27.056908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.705437, 30.784800, 27.157839>,  <30.430065, 30.548426, 27.326059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705437, 30.784800, 27.157839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278303, 0.320225, 0.905540,
		0.669785, -0.740440, 0.055993,
		0.688429, 0.590935, -0.420549,
		30.911966, 30.962080, 27.031673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188189, 30.432430, 27.600925>,  <30.430065, 30.548426, 27.326059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188189, 30.432430, 27.600925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194550, 30.800705, 27.444935>,  <31.198366, 31.021669, 27.351341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.194550, 30.800705, 27.444935>,  <31.188189, 30.432430, 27.600925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194550, 30.800705, 27.444935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119699, 0.385468, 0.914924,
		0.992683, -0.061229, -0.104075,
		0.015902, 0.920687, -0.389977,
		31.199320, 31.076912, 27.327942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686428, 30.776815, 27.989973>,  <31.188189, 30.432430, 27.600925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686428, 30.776815, 27.989973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.489166, 31.079082, 27.817572>,  <31.370810, 31.260443, 27.714130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.489166, 31.079082, 27.817572>,  <31.686428, 30.776815, 27.989973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489166, 31.079082, 27.817572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129193, 0.553562, 0.822726,
		0.860295, 0.350048, -0.370619,
		-0.493155, 0.755669, -0.431003,
		31.341221, 31.305782, 27.688271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116859, 31.364393, 28.024012>,  <31.686428, 30.776815, 27.989973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116859, 31.364393, 28.024012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.744640, 31.507084, 27.990969>,  <31.521309, 31.592699, 27.971142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.744640, 31.507084, 27.990969>,  <32.116859, 31.364393, 28.024012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744640, 31.507084, 27.990969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151614, 0.580723, 0.799859,
		0.333305, 0.731783, -0.594476,
		-0.930549, 0.356727, -0.082609,
		31.465475, 31.614101, 27.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159969, 32.092484, 28.161835>,  <32.116859, 31.364393, 28.024012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159969, 32.092484, 28.161835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769348, 32.011982, 28.192413>,  <31.534975, 31.963682, 28.210760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.769348, 32.011982, 28.192413>,  <32.159969, 32.092484, 28.161835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769348, 32.011982, 28.192413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074785, 0.650118, 0.756144,
		-0.201877, 0.732697, -0.649924,
		-0.976552, -0.201252, 0.076449,
		31.476383, 31.951607, 28.215347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869308, 32.708073, 28.206131>,  <32.159969, 32.092484, 28.161835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869308, 32.708073, 28.206131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.581326, 32.467850, 28.345264>,  <31.408535, 32.323715, 28.428743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.581326, 32.467850, 28.345264>,  <31.869308, 32.708073, 28.206131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581326, 32.467850, 28.345264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225284, 0.676279, 0.701352,
		-0.656436, 0.426582, -0.622189,
		-0.719957, -0.600562, 0.347832,
		31.365337, 32.287682, 28.449614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281134, 33.084507, 28.337866>,  <31.869308, 32.708073, 28.206131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281134, 33.084507, 28.337866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240860, 32.757904, 28.565262>,  <31.216696, 32.561943, 28.701698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240860, 32.757904, 28.565262>,  <31.281134, 33.084507, 28.337866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240860, 32.757904, 28.565262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241829, 0.574340, 0.782082,
		-0.965081, -0.058735, -0.255281,
		-0.100682, -0.816507, 0.568488,
		31.210655, 32.512951, 28.735807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629158, 33.241970, 28.706831>,  <31.281134, 33.084507, 28.337866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629158, 33.241970, 28.706831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862432, 32.987087, 28.908369>,  <31.002398, 32.834156, 29.029291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.862432, 32.987087, 28.908369>,  <30.629158, 33.241970, 28.706831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862432, 32.987087, 28.908369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150817, 0.524524, 0.837931,
		-0.798216, -0.564657, 0.209793,
		0.583185, -0.637210, 0.503844,
		31.037388, 32.795925, 29.059523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337488, 33.139599, 29.387970>,  <30.629158, 33.241970, 28.706831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337488, 33.139599, 29.387970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717363, 33.022732, 29.433107>,  <30.945288, 32.952614, 29.460190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.717363, 33.022732, 29.433107>,  <30.337488, 33.139599, 29.387970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717363, 33.022732, 29.433107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035983, 0.459690, 0.887350,
		-0.311125, -0.838645, 0.447074,
		0.949688, -0.292164, 0.112844,
		31.002270, 32.935081, 29.466961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302509, 33.108318, 30.055716>,  <30.337488, 33.139599, 29.387970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302509, 33.108318, 30.055716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.682552, 33.030655, 29.958065>,  <30.910578, 32.984058, 29.899475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.682552, 33.030655, 29.958065>,  <30.302509, 33.108318, 30.055716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682552, 33.030655, 29.958065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308064, 0.461445, 0.831965,
		-0.048880, -0.865663, 0.498235,
		0.950109, -0.194154, -0.244124,
		30.967585, 32.972408, 29.884829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678295, 32.723457, 30.572090>,  <30.302509, 33.108318, 30.055716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678295, 32.723457, 30.572090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969488, 32.937889, 30.401134>,  <31.144203, 33.066547, 30.298561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969488, 32.937889, 30.401134>,  <30.678295, 32.723457, 30.572090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969488, 32.937889, 30.401134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308346, 0.300770, 0.902474,
		0.612343, -0.788769, 0.053658,
		0.727983, 0.536078, -0.427388,
		31.187883, 33.098713, 30.272919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330841, 32.649475, 30.973829>,  <30.678295, 32.723457, 30.572090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330841, 32.649475, 30.973829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.361280, 32.982327, 30.754097>,  <31.379545, 33.182037, 30.622257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.361280, 32.982327, 30.754097>,  <31.330841, 32.649475, 30.973829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361280, 32.982327, 30.754097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245821, 0.518267, 0.819128,
		0.966323, -0.197372, -0.165116,
		0.076099, 0.832132, -0.549332,
		31.384109, 33.231968, 30.589298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023170, 33.005024, 31.285755>,  <31.330841, 32.649475, 30.973829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023170, 33.005024, 31.285755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.829576, 33.277718, 31.066301>,  <31.713419, 33.441334, 30.934629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.829576, 33.277718, 31.066301>,  <32.023170, 33.005024, 31.285755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829576, 33.277718, 31.066301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223649, 0.702500, 0.675630,
		0.846014, 0.204294, -0.492469,
		-0.483986, 0.681732, -0.548634,
		31.684381, 33.482239, 30.901711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687405, 32.975594, 31.233429>,  <32.023170, 33.005024, 31.285755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687405, 32.975594, 31.233429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.952053, 32.747154, 31.427794>,  <33.110840, 32.610092, 31.544413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.952053, 32.747154, 31.427794>,  <32.687405, 32.975594, 31.233429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952053, 32.747154, 31.427794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092620, -0.705298, -0.702834,
		0.744100, 0.420002, -0.519532,
		0.661617, -0.571099, 0.485912,
		33.150539, 32.575825, 31.573566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216995, 32.750298, 30.725077>,  <32.687405, 32.975594, 31.233429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216995, 32.750298, 30.725077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.239716, 32.487415, 31.025703>,  <33.253345, 32.329685, 31.206079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.239716, 32.487415, 31.025703>,  <33.216995, 32.750298, 30.725077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239716, 32.487415, 31.025703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030736, -0.753576, -0.656642,
		0.997913, 0.014196, -0.063002,
		0.056798, -0.657207, 0.751567,
		33.256756, 32.290253, 31.251173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763882, 32.309696, 30.541189>,  <33.216995, 32.750298, 30.725077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763882, 32.309696, 30.541189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584969, 32.094997, 30.827362>,  <33.477619, 31.966179, 30.999065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.584969, 32.094997, 30.827362>,  <33.763882, 32.309696, 30.541189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584969, 32.094997, 30.827362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078910, -0.820473, -0.566213,
		0.890904, -0.196804, 0.409339,
		-0.447285, -0.536743, 0.715433,
		33.450783, 31.933975, 31.041992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158218, 31.703365, 30.623631>,  <33.763882, 32.309696, 30.541189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158218, 31.703365, 30.623631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784760, 31.618557, 30.739117>,  <33.560684, 31.567671, 30.808409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.784760, 31.618557, 30.739117>,  <34.158218, 31.703365, 30.623631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784760, 31.618557, 30.739117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000553, -0.805155, -0.593065,
		0.358203, -0.553871, 0.751610,
		-0.933644, -0.212022, 0.288715,
		33.504665, 31.554951, 30.825731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178921, 30.996078, 30.750450>,  <34.158218, 31.703365, 30.623631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178921, 30.996078, 30.750450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793102, 31.086380, 30.695761>,  <33.561611, 31.140560, 30.662947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793102, 31.086380, 30.695761>,  <34.178921, 30.996078, 30.750450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793102, 31.086380, 30.695761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126589, -0.850271, -0.510896,
		-0.231587, -0.475473, 0.848701,
		-0.964543, 0.225753, -0.136722,
		33.503738, 31.154106, 30.654743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830532, 30.316774, 30.822622>,  <34.178921, 30.996078, 30.750450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830532, 30.316774, 30.822622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612881, 30.560669, 30.592094>,  <33.482288, 30.707006, 30.453777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612881, 30.560669, 30.592094>,  <33.830532, 30.316774, 30.822622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612881, 30.560669, 30.592094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202851, -0.762141, -0.614811,
		-0.814109, -0.217631, 0.538390,
		-0.544131, 0.609736, -0.576319,
		33.449642, 30.743589, 30.419199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353893, 30.008812, 30.582462>,  <33.830532, 30.316774, 30.822622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353893, 30.008812, 30.582462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.302753, 30.320822, 30.337444>,  <33.272068, 30.508028, 30.190434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.302753, 30.320822, 30.337444>,  <33.353893, 30.008812, 30.582462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302753, 30.320822, 30.337444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356552, -0.612472, -0.705513,
		-0.925487, 0.128204, 0.356425,
		-0.127850, 0.780027, -0.612546,
		33.264397, 30.554831, 30.153681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740585, 29.917059, 30.257374>,  <33.353893, 30.008812, 30.582462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740585, 29.917059, 30.257374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913731, 30.166933, 29.997404>,  <33.017616, 30.316856, 29.841423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.913731, 30.166933, 29.997404>,  <32.740585, 29.917059, 30.257374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913731, 30.166933, 29.997404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354091, -0.545197, -0.759855,
		-0.829005, 0.559045, -0.014800,
		0.432862, 0.624684, -0.649924,
		33.043591, 30.354338, 29.802427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250008, 30.014671, 29.654982>,  <32.740585, 29.917059, 30.257374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250008, 30.014671, 29.654982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612331, 30.121681, 29.523565>,  <32.829727, 30.185886, 29.444715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.612331, 30.121681, 29.523565>,  <32.250008, 30.014671, 29.654982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612331, 30.121681, 29.523565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196335, -0.422108, -0.885030,
		-0.375446, 0.866173, -0.329825,
		0.905811, 0.267524, -0.328539,
		32.884075, 30.201939, 29.425003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161346, 30.121952, 29.012909>,  <32.250008, 30.014671, 29.654982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161346, 30.121952, 29.012909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.559753, 30.086723, 29.007439>,  <32.798798, 30.065586, 29.004156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.559753, 30.086723, 29.007439>,  <32.161346, 30.121952, 29.012909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559753, 30.086723, 29.007439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053451, -0.467490, -0.882381,
		0.071322, 0.879600, -0.470338,
		0.996020, -0.088073, -0.013674,
		32.858559, 30.060301, 29.003336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401340, 30.369776, 28.282278>,  <32.161346, 30.121952, 29.012909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401340, 30.369776, 28.282278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666996, 30.118019, 28.443661>,  <32.826389, 29.966965, 28.540491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.666996, 30.118019, 28.443661>,  <32.401340, 30.369776, 28.282278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666996, 30.118019, 28.443661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102368, -0.458024, -0.883026,
		0.740565, 0.627756, -0.239764,
		0.664142, -0.629394, 0.403458,
		32.866238, 29.929201, 28.564699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986774, 30.455492, 27.859180>,  <32.401340, 30.369776, 28.282278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986774, 30.455492, 27.859180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.027222, 30.103260, 28.044374>,  <33.051491, 29.891920, 28.155491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.027222, 30.103260, 28.044374>,  <32.986774, 30.455492, 27.859180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027222, 30.103260, 28.044374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391264, -0.392673, -0.832298,
		0.914707, 0.265306, 0.304835,
		0.101113, -0.880580, 0.462985,
		33.057556, 29.839087, 28.183270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684299, 30.273916, 27.612175>,  <32.986774, 30.455492, 27.859180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684299, 30.273916, 27.612175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.486881, 29.955618, 27.752577>,  <33.368431, 29.764639, 27.836819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.486881, 29.955618, 27.752577>,  <33.684299, 30.273916, 27.612175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486881, 29.955618, 27.752577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205843, -0.498991, -0.841806,
		0.845011, -0.343215, 0.410072,
		-0.493542, -0.795746, 0.351004,
		33.338818, 29.716894, 27.857878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182144, 29.697456, 27.618879>,  <33.684299, 30.273916, 27.612175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182144, 29.697456, 27.618879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.809334, 29.556244, 27.586155>,  <33.585648, 29.471516, 27.566521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.809334, 29.556244, 27.586155>,  <34.182144, 29.697456, 27.618879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809334, 29.556244, 27.586155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245059, -0.447684, -0.859956,
		0.266965, -0.821552, 0.503767,
		-0.932028, -0.353031, -0.081812,
		33.529724, 29.450335, 27.561611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488060, 29.029003, 27.724689>,  <34.182144, 29.697456, 27.618879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488060, 29.029003, 27.724689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843449, 28.852022, 27.773443>,  <35.056683, 28.745834, 27.802696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.843449, 28.852022, 27.773443>,  <34.488060, 29.029003, 27.724689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843449, 28.852022, 27.773443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063076, 0.380789, 0.922508,
		-0.454577, -0.811934, 0.366228,
		0.888471, -0.442451, 0.121884,
		35.109989, 28.719286, 27.810009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393906, 28.674210, 28.256983>,  <34.488060, 29.029003, 27.724689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393906, 28.674210, 28.256983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787270, 28.731663, 28.212671>,  <35.023289, 28.766134, 28.186085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.787270, 28.731663, 28.212671>,  <34.393906, 28.674210, 28.256983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787270, 28.731663, 28.212671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028491, 0.480838, 0.876347,
		0.179137, -0.864966, 0.468769,
		0.983411, 0.143631, -0.110779,
		35.082294, 28.774752, 28.179438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695793, 28.538954, 28.904388>,  <34.393906, 28.674210, 28.256983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695793, 28.538954, 28.904388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968212, 28.759024, 28.711109>,  <35.131664, 28.891066, 28.595142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968212, 28.759024, 28.711109>,  <34.695793, 28.538954, 28.904388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968212, 28.759024, 28.711109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063482, 0.613043, 0.787495,
		0.729479, -0.566999, 0.382587,
		0.681051, 0.550174, -0.483196,
		35.172527, 28.924076, 28.566151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162148, 28.662668, 29.364803>,  <34.695793, 28.538954, 28.904388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162148, 28.662668, 29.364803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259659, 28.941559, 29.095152>,  <35.318165, 29.108892, 28.933361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.259659, 28.941559, 29.095152>,  <35.162148, 28.662668, 29.364803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259659, 28.941559, 29.095152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411680, 0.554974, 0.722858,
		0.878119, -0.453742, -0.151743,
		0.243777, 0.697225, -0.674129,
		35.332790, 29.150726, 28.892914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836193, 28.812222, 29.541513>,  <35.162148, 28.662668, 29.364803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836193, 28.812222, 29.541513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678993, 29.110966, 29.326942>,  <35.584675, 29.290213, 29.198200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678993, 29.110966, 29.326942>,  <35.836193, 28.812222, 29.541513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678993, 29.110966, 29.326942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338982, 0.659950, 0.670490,
		0.854778, 0.081660, -0.512529,
		-0.392996, 0.746858, -0.536430,
		35.561096, 29.335024, 29.166014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333282, 29.312342, 29.627308>,  <35.836193, 28.812222, 29.541513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333282, 29.312342, 29.627308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019321, 29.524103, 29.498520>,  <35.830944, 29.651159, 29.421247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.019321, 29.524103, 29.498520>,  <36.333282, 29.312342, 29.627308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019321, 29.524103, 29.498520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250623, 0.746467, 0.616421,
		0.566674, 0.403136, -0.718583,
		-0.784900, 0.529403, -0.321969,
		35.783852, 29.682924, 29.401930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493580, 30.029564, 29.429756>,  <36.333282, 29.312342, 29.627308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493580, 30.029564, 29.429756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103436, 30.053549, 29.514671>,  <35.869347, 30.067940, 29.565620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103436, 30.053549, 29.514671>,  <36.493580, 30.029564, 29.429756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103436, 30.053549, 29.514671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185649, 0.742911, 0.643132,
		-0.119149, 0.666700, -0.735741,
		-0.975365, 0.059961, 0.212290,
		35.810825, 30.071537, 29.578358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355980, 30.720062, 29.476364>,  <36.493580, 30.029564, 29.429756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355980, 30.720062, 29.476364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045792, 30.550943, 29.663933>,  <35.859680, 30.449472, 29.776474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045792, 30.550943, 29.663933>,  <36.355980, 30.720062, 29.476364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045792, 30.550943, 29.663933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125430, 0.624729, 0.770702,
		-0.618799, 0.656474, -0.431427,
		-0.775471, -0.422796, 0.468924,
		35.813152, 30.424105, 29.804609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917736, 31.250223, 29.666683>,  <36.355980, 30.720062, 29.476364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917736, 31.250223, 29.666683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813599, 30.939831, 29.896492>,  <35.751118, 30.753595, 30.034378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813599, 30.939831, 29.896492>,  <35.917736, 31.250223, 29.666683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813599, 30.939831, 29.896492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003484, 0.595794, 0.803130,
		-0.965510, 0.207088, -0.157814,
		-0.260343, -0.775979, 0.574524,
		35.735497, 30.707037, 30.068850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498074, 31.520046, 30.117920>,  <35.917736, 31.250223, 29.666683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498074, 31.520046, 30.117920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606735, 31.186153, 30.309513>,  <35.671932, 30.985817, 30.424469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.606735, 31.186153, 30.309513>,  <35.498074, 31.520046, 30.117920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606735, 31.186153, 30.309513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005800, 0.499109, 0.866520,
		-0.962377, -0.232618, 0.140428,
		0.271657, -0.834733, 0.478982,
		35.688232, 30.935734, 30.453207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171581, 31.449051, 30.717829>,  <35.498074, 31.520046, 30.117920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171581, 31.449051, 30.717829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467331, 31.190586, 30.793514>,  <35.644779, 31.035507, 30.838926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467331, 31.190586, 30.793514>,  <35.171581, 31.449051, 30.717829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467331, 31.190586, 30.793514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041151, 0.323869, 0.945207,
		-0.672039, -0.691072, 0.266050,
		0.739371, -0.646164, 0.189214,
		35.689144, 30.996737, 30.850279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964241, 31.107750, 31.261698>,  <35.171581, 31.449051, 30.717829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964241, 31.107750, 31.261698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360321, 31.053509, 31.275110>,  <35.597969, 31.020964, 31.283157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.360321, 31.053509, 31.275110>,  <34.964241, 31.107750, 31.261698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360321, 31.053509, 31.275110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024102, 0.402311, 0.915186,
		-0.137593, -0.905404, 0.401635,
		0.990196, -0.135604, 0.033533,
		35.657379, 31.012827, 31.285170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111652, 30.813692, 31.876814>,  <34.964241, 31.107750, 31.261698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111652, 30.813692, 31.876814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467613, 30.962729, 31.771559>,  <35.681190, 31.052151, 31.708405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467613, 30.962729, 31.771559>,  <35.111652, 30.813692, 31.876814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467613, 30.962729, 31.771559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101455, 0.400752, 0.910552,
		0.444723, -0.837000, 0.318829,
		0.889903, 0.372597, -0.263142,
		35.734585, 31.074507, 31.692617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550434, 30.719738, 32.518864>,  <35.111652, 30.813692, 31.876814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550434, 30.719738, 32.518864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.738838, 30.973452, 32.273643>,  <35.851879, 31.125681, 32.126511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.738838, 30.973452, 32.273643>,  <35.550434, 30.719738, 32.518864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738838, 30.973452, 32.273643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311530, 0.530583, 0.788309,
		0.825289, -0.562284, 0.052309,
		0.471008, 0.634287, -0.613052,
		35.880142, 31.163738, 32.089729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.415134, 27.952951, 27.861639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112339, 28.190226, 27.752018>,  <38.930664, 28.332590, 27.686245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112339, 28.190226, 27.752018>,  <39.415134, 27.952951, 27.861639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112339, 28.190226, 27.752018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292599, -0.682724, -0.669533,
		-0.584258, -0.426639, 0.690377,
		-0.756986, 0.593184, -0.274053,
		38.885242, 28.368181, 27.669802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723835, 27.605984, 27.900616>,  <39.415134, 27.952951, 27.861639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723835, 27.605984, 27.900616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690342, 27.896288, 27.627483>,  <38.670246, 28.070471, 27.463604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690342, 27.896288, 27.627483>,  <38.723835, 27.605984, 27.900616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690342, 27.896288, 27.627483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320348, -0.668469, -0.671212,
		-0.943592, 0.162542, 0.288468,
		-0.083732, 0.725761, -0.682833,
		38.665222, 28.114016, 27.422634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114082, 27.406752, 27.529135>,  <38.723835, 27.605984, 27.900616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114082, 27.406752, 27.529135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.274242, 27.668200, 27.272242>,  <38.370338, 27.825068, 27.118107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.274242, 27.668200, 27.272242>,  <38.114082, 27.406752, 27.529135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274242, 27.668200, 27.272242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275197, -0.582739, -0.764645,
		-0.874041, 0.482903, -0.053454,
		0.400399, 0.653620, -0.642231,
		38.394363, 27.864286, 27.079573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590569, 27.580107, 27.028553>,  <38.114082, 27.406752, 27.529135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590569, 27.580107, 27.028553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931122, 27.666088, 26.837162>,  <38.135456, 27.717676, 26.722328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.931122, 27.666088, 26.837162>,  <37.590569, 27.580107, 27.028553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931122, 27.666088, 26.837162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384468, -0.364808, -0.847998,
		-0.356830, 0.905931, -0.227950,
		0.851385, 0.214952, -0.478475,
		38.186539, 27.730574, 26.693619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292744, 27.973301, 26.574175>,  <37.590569, 27.580107, 27.028553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292744, 27.973301, 26.574175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646122, 27.830517, 26.452782>,  <37.858150, 27.744846, 26.379946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646122, 27.830517, 26.452782>,  <37.292744, 27.973301, 26.574175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646122, 27.830517, 26.452782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411531, -0.281557, -0.866815,
		0.223970, 0.890678, -0.395640,
		0.883448, -0.356959, -0.303481,
		37.911156, 27.723429, 26.361738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174797, 28.066782, 25.933109>,  <37.292744, 27.973301, 26.574175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174797, 28.066782, 25.933109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480423, 27.808746, 25.929911>,  <37.663799, 27.653925, 25.927992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480423, 27.808746, 25.929911>,  <37.174797, 28.066782, 25.933109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480423, 27.808746, 25.929911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178110, -0.199017, -0.963675,
		0.620066, 0.737734, -0.266959,
		0.764065, -0.645090, -0.007995,
		37.709644, 27.615219, 25.927513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570606, 28.208223, 25.274155>,  <37.174797, 28.066782, 25.933109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570606, 28.208223, 25.274155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683372, 27.835669, 25.366276>,  <37.751034, 27.612135, 25.421549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683372, 27.835669, 25.366276>,  <37.570606, 28.208223, 25.274155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683372, 27.835669, 25.366276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006143, -0.241788, -0.970310,
		0.959419, 0.272132, -0.073885,
		0.281917, -0.931387, 0.230305,
		37.767948, 27.556252, 25.435368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148987, 27.988237, 24.724424>,  <37.570606, 28.208223, 25.274155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148987, 27.988237, 24.724424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023598, 27.643486, 24.883873>,  <37.948364, 27.436636, 24.979542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023598, 27.643486, 24.883873>,  <38.148987, 27.988237, 24.724424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023598, 27.643486, 24.883873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024938, -0.412164, -0.910768,
		0.949269, -0.295443, 0.107710,
		-0.313474, -0.861878, 0.398622,
		37.929554, 27.384922, 25.003460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604691, 27.548386, 24.446381>,  <38.148987, 27.988237, 24.724424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604691, 27.548386, 24.446381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296185, 27.313543, 24.544731>,  <38.111080, 27.172638, 24.603741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296185, 27.313543, 24.544731>,  <38.604691, 27.548386, 24.446381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296185, 27.313543, 24.544731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046754, -0.437498, -0.898003,
		0.634795, -0.681102, 0.364877,
		-0.771265, -0.587107, 0.245877,
		38.064804, 27.137411, 24.618494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832684, 26.838758, 24.355238>,  <38.604691, 27.548386, 24.446381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832684, 26.838758, 24.355238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432987, 26.850302, 24.344767>,  <38.193169, 26.857227, 24.338484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432987, 26.850302, 24.344767>,  <38.832684, 26.838758, 24.355238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432987, 26.850302, 24.344767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011307, -0.428208, -0.903610,
		-0.037287, -0.903219, 0.427556,
		-0.999241, 0.028858, -0.026179,
		38.133217, 26.858959, 24.336912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657513, 26.183649, 24.189985>,  <38.832684, 26.838758, 24.355238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657513, 26.183649, 24.189985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328320, 26.378729, 24.073471>,  <38.130802, 26.495777, 24.003563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.328320, 26.378729, 24.073471>,  <38.657513, 26.183649, 24.189985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328320, 26.378729, 24.073471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030238, -0.549653, -0.834846,
		-0.567261, -0.678256, 0.467102,
		-0.822983, 0.487700, -0.291288,
		38.081425, 26.525038, 23.986086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192764, 25.667547, 23.922688>,  <38.657513, 26.183649, 24.189985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192764, 25.667547, 23.922688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055126, 26.013838, 23.777294>,  <37.972546, 26.221613, 23.690058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.055126, 26.013838, 23.777294>,  <38.192764, 25.667547, 23.922688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055126, 26.013838, 23.777294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141563, -0.430530, -0.891406,
		-0.928203, -0.255270, 0.270697,
		-0.344093, 0.865726, -0.363482,
		37.951897, 26.273556, 23.668249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586403, 25.530634, 23.795408>,  <38.192764, 25.667547, 23.922688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586403, 25.530634, 23.795408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717564, 25.829424, 23.564062>,  <37.796261, 26.008698, 23.425255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.717564, 25.829424, 23.564062>,  <37.586403, 25.530634, 23.795408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717564, 25.829424, 23.564062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040948, -0.622876, -0.781249,
		-0.943823, 0.232491, -0.234830,
		0.327903, 0.746976, -0.578364,
		37.815933, 26.053516, 23.390553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856441, 25.377996, 23.527111>,  <37.586403, 25.530634, 23.795408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856441, 25.377996, 23.527111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503494, 25.399372, 23.340105>,  <36.291725, 25.412197, 23.227901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.503494, 25.399372, 23.340105>,  <36.856441, 25.377996, 23.527111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503494, 25.399372, 23.340105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436846, 0.276260, 0.856064,
		0.174904, 0.959596, -0.220419,
		-0.882368, 0.053440, -0.467515,
		36.238785, 25.415403, 23.199850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581970, 26.064800, 23.519371>,  <36.856441, 25.377996, 23.527111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581970, 26.064800, 23.519371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279827, 25.802753, 23.512911>,  <36.098541, 25.645525, 23.509035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.279827, 25.802753, 23.512911>,  <36.581970, 26.064800, 23.519371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279827, 25.802753, 23.512911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388781, 0.428156, 0.815801,
		-0.527530, 0.622499, -0.578107,
		-0.755355, -0.655116, -0.016150,
		36.053219, 25.606218, 23.508066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945278, 26.495361, 23.491266>,  <36.581970, 26.064800, 23.519371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945278, 26.495361, 23.491266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854481, 26.135166, 23.639643>,  <35.800003, 25.919048, 23.728668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.854481, 26.135166, 23.639643>,  <35.945278, 26.495361, 23.491266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854481, 26.135166, 23.639643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431350, 0.434446, 0.790692,
		-0.873161, 0.019478, -0.487043,
		-0.226995, -0.900487, 0.370939,
		35.786381, 25.865021, 23.750925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319084, 26.480541, 23.765055>,  <35.945278, 26.495361, 23.491266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319084, 26.480541, 23.765055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429012, 26.140120, 23.944023>,  <35.494968, 25.935867, 24.051403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429012, 26.140120, 23.944023>,  <35.319084, 26.480541, 23.765055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429012, 26.140120, 23.944023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267200, 0.379407, 0.885807,
		-0.923622, -0.362988, -0.123132,
		0.274820, -0.851052, 0.447420,
		35.511459, 25.884804, 24.078249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824665, 26.212494, 24.165062>,  <35.319084, 26.480541, 23.765055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824665, 26.212494, 24.165062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158760, 26.047756, 24.310810>,  <35.359219, 25.948914, 24.398258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.158760, 26.047756, 24.310810>,  <34.824665, 26.212494, 24.165062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158760, 26.047756, 24.310810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274335, 0.262185, 0.925202,
		-0.476572, -0.872722, 0.106003,
		0.835237, -0.411845, 0.364368,
		35.409332, 25.924202, 24.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510059, 25.794596, 24.764275>,  <34.824665, 26.212494, 24.165062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510059, 25.794596, 24.764275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906441, 25.810181, 24.815653>,  <35.144268, 25.819532, 24.846479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906441, 25.810181, 24.815653>,  <34.510059, 25.794596, 24.764275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906441, 25.810181, 24.815653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134101, 0.246648, 0.959782,
		0.005715, -0.968321, 0.249641,
		0.990951, 0.038962, 0.128444,
		35.203728, 25.821869, 24.854185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556679, 25.550835, 25.487556>,  <34.510059, 25.794596, 24.764275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556679, 25.550835, 25.487556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867496, 25.777281, 25.377495>,  <35.053989, 25.913149, 25.311459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867496, 25.777281, 25.377495>,  <34.556679, 25.550835, 25.487556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867496, 25.777281, 25.377495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028084, 0.405523, 0.913653,
		0.628815, -0.717680, 0.299212,
		0.777048, 0.566116, -0.275154,
		35.100613, 25.947115, 25.294949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060459, 25.506685, 26.103067>,  <34.556679, 25.550835, 25.487556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060459, 25.506685, 26.103067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149021, 25.829632, 25.884291>,  <35.202156, 26.023399, 25.753025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149021, 25.829632, 25.884291>,  <35.060459, 25.506685, 26.103067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149021, 25.829632, 25.884291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009328, 0.562587, 0.826686,
		0.975138, -0.177928, 0.132089,
		0.221402, 0.807365, -0.546941,
		35.215443, 26.071840, 25.720209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346752, 25.902773, 26.575907>,  <35.060459, 25.506685, 26.103067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346752, 25.902773, 26.575907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336296, 26.173313, 26.281460>,  <35.330025, 26.335638, 26.104792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336296, 26.173313, 26.281460>,  <35.346752, 25.902773, 26.575907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336296, 26.173313, 26.281460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097431, 0.734584, 0.671486,
		0.994899, -0.054170, -0.085097,
		-0.026136, 0.676352, -0.736115,
		35.328457, 26.376219, 26.060625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923374, 26.288958, 26.626360>,  <35.346752, 25.902773, 26.575907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923374, 26.288958, 26.626360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669266, 26.517782, 26.418829>,  <35.516800, 26.655077, 26.294310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669266, 26.517782, 26.418829>,  <35.923374, 26.288958, 26.626360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669266, 26.517782, 26.418829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029357, 0.689204, 0.723972,
		0.771734, 0.444684, -0.454623,
		-0.635267, 0.572061, -0.518828,
		35.478687, 26.689400, 26.263180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303043, 27.019104, 26.425966>,  <35.923374, 26.288958, 26.626360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303043, 27.019104, 26.425966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907322, 27.072618, 26.449236>,  <35.669891, 27.104727, 26.463198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907322, 27.072618, 26.449236>,  <36.303043, 27.019104, 26.425966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907322, 27.072618, 26.449236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144362, 0.840315, 0.522523,
		0.021022, 0.525331, -0.850638,
		-0.989302, 0.133785, 0.058173,
		35.610531, 27.112755, 26.466688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238766, 27.650095, 26.487642>,  <36.303043, 27.019104, 26.425966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238766, 27.650095, 26.487642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864529, 27.557051, 26.593889>,  <35.639984, 27.501225, 26.657639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864529, 27.557051, 26.593889>,  <36.238766, 27.650095, 26.487642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864529, 27.557051, 26.593889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023714, 0.792006, 0.610052,
		-0.352276, 0.564463, -0.746514,
		-0.935596, -0.232610, 0.265619,
		35.583851, 27.487268, 26.673574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811390, 28.253595, 26.367941>,  <36.238766, 27.650095, 26.487642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811390, 28.253595, 26.367941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610435, 28.039614, 26.639656>,  <35.489861, 27.911224, 26.802685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610435, 28.039614, 26.639656>,  <35.811390, 28.253595, 26.367941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610435, 28.039614, 26.639656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056682, 0.804314, 0.591495,
		-0.862781, 0.258658, -0.434401,
		-0.502390, -0.534953, 0.679286,
		35.459717, 27.879128, 26.843441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286167, 28.660952, 26.543619>,  <35.811390, 28.253595, 26.367941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286167, 28.660952, 26.543619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307255, 28.404446, 26.849821>,  <35.319908, 28.250542, 27.033543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.307255, 28.404446, 26.849821>,  <35.286167, 28.660952, 26.543619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307255, 28.404446, 26.849821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040824, 0.767316, 0.639968,
		-0.997775, -0.002489, 0.066632,
		0.052721, -0.641264, 0.765507,
		35.323071, 28.212067, 27.079473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785252, 28.909872, 26.973320>,  <35.286167, 28.660952, 26.543619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785252, 28.909872, 26.973320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014202, 28.677824, 27.205132>,  <35.151573, 28.538595, 27.344219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014202, 28.677824, 27.205132>,  <34.785252, 28.909872, 26.973320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014202, 28.677824, 27.205132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228997, 0.565543, 0.792289,
		-0.787369, -0.586195, 0.190856,
		0.572373, -0.580118, 0.579528,
		35.185913, 28.503788, 27.378990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178593, 28.642317, 27.198429>,  <34.785252, 28.909872, 26.973320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178593, 28.642317, 27.198429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806782, 28.775934, 27.260893>,  <33.583694, 28.856104, 27.298372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.806782, 28.775934, 27.260893>,  <34.178593, 28.642317, 27.198429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806782, 28.775934, 27.260893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344955, -0.638100, -0.688357,
		-0.130294, -0.693718, 0.708364,
		-0.929532, 0.334043, 0.156161,
		33.527924, 28.876146, 27.307741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770027, 28.161070, 27.334307>,  <34.178593, 28.642317, 27.198429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770027, 28.161070, 27.334307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564201, 28.447897, 27.146248>,  <33.440704, 28.619993, 27.033413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564201, 28.447897, 27.146248>,  <33.770027, 28.161070, 27.334307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564201, 28.447897, 27.146248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125917, -0.605555, -0.785778,
		-0.848154, -0.345137, 0.401890,
		-0.514568, 0.717066, -0.470145,
		33.409832, 28.663017, 27.005205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262943, 27.759085, 26.946579>,  <33.770027, 28.161070, 27.334307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262943, 27.759085, 26.946579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233967, 28.128170, 26.795130>,  <33.216579, 28.349621, 26.704260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.233967, 28.128170, 26.795130>,  <33.262943, 27.759085, 26.946579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233967, 28.128170, 26.795130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149796, -0.385379, -0.910518,
		-0.986059, -0.009244, 0.166137,
		-0.072442, 0.922712, -0.378622,
		33.212234, 28.404984, 26.681543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695755, 27.685740, 26.522839>,  <33.262943, 27.759085, 26.946579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695755, 27.685740, 26.522839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889790, 28.003542, 26.376717>,  <33.006210, 28.194223, 26.289043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889790, 28.003542, 26.376717>,  <32.695755, 27.685740, 26.522839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889790, 28.003542, 26.376717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065223, -0.383711, -0.921147,
		-0.872030, 0.470663, -0.134313,
		0.485087, 0.794508, -0.365305,
		33.035316, 28.241894, 26.267124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343346, 27.901203, 25.952410>,  <32.695755, 27.685740, 26.522839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343346, 27.901203, 25.952410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.670753, 28.115124, 25.868494>,  <32.867199, 28.243477, 25.818144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.670753, 28.115124, 25.868494>,  <32.343346, 27.901203, 25.952410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670753, 28.115124, 25.868494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007761, -0.354856, -0.934889,
		-0.574425, 0.766854, -0.286306,
		0.818520, 0.534802, -0.209790,
		32.916309, 28.275564, 25.805557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176414, 28.299503, 25.389620>,  <32.343346, 27.901203, 25.952410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176414, 28.299503, 25.389620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573933, 28.255442, 25.395777>,  <32.812443, 28.229004, 25.399471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573933, 28.255442, 25.395777>,  <32.176414, 28.299503, 25.389620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573933, 28.255442, 25.395777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018641, -0.301374, -0.953324,
		0.109651, 0.947122, -0.301557,
		0.993795, -0.110154, 0.015390,
		32.872070, 28.222395, 25.400394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390213, 28.583977, 24.761686>,  <32.176414, 28.299503, 25.389620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390213, 28.583977, 24.761686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676643, 28.333542, 24.885138>,  <32.848503, 28.183281, 24.959208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.676643, 28.333542, 24.885138>,  <32.390213, 28.583977, 24.761686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676643, 28.333542, 24.885138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085326, -0.360317, -0.928919,
		0.692788, 0.691510, -0.204593,
		0.716076, -0.626087, 0.308627,
		32.891464, 28.145716, 24.977726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586563, 29.336075, 24.697731>,  <32.390213, 28.583977, 24.761686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586563, 29.336075, 24.697731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300568, 29.539158, 24.505468>,  <32.128971, 29.661009, 24.390112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.300568, 29.539158, 24.505468>,  <32.586563, 29.336075, 24.697731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300568, 29.539158, 24.505468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371559, 0.306430, 0.876381,
		0.592234, 0.805190, -0.030448,
		-0.714984, 0.507710, -0.480654,
		32.086071, 29.691471, 24.361273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558331, 30.021301, 24.970890>,  <32.586563, 29.336075, 24.697731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558331, 30.021301, 24.970890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203522, 29.992554, 24.788448>,  <31.990637, 29.975306, 24.678984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203522, 29.992554, 24.788448>,  <32.558331, 30.021301, 24.970890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203522, 29.992554, 24.788448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446199, 0.387469, 0.806706,
		0.118749, 0.919077, -0.375761,
		-0.887020, -0.071869, -0.456103,
		31.937416, 29.970993, 24.651617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175793, 30.714939, 25.058464>,  <32.558331, 30.021301, 24.970890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175793, 30.714939, 25.058464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.890158, 30.440321, 25.003725>,  <31.718777, 30.275549, 24.970882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.890158, 30.440321, 25.003725>,  <32.175793, 30.714939, 25.058464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890158, 30.440321, 25.003725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607279, 0.510260, 0.608971,
		-0.348260, 0.517965, -0.781298,
		-0.714091, -0.686547, -0.136846,
		31.675930, 30.234356, 24.962671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617746, 31.218794, 24.976704>,  <32.175793, 30.714939, 25.058464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617746, 31.218794, 24.976704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438967, 30.865294, 25.032162>,  <31.331699, 30.653194, 25.065437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.438967, 30.865294, 25.032162>,  <31.617746, 31.218794, 24.976704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438967, 30.865294, 25.032162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620951, 0.418066, 0.663054,
		-0.643937, 0.210260, -0.735619,
		-0.446951, -0.883749, 0.138647,
		31.304882, 30.600168, 25.073755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939842, 31.342344, 25.096464>,  <31.617746, 31.218794, 24.976704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939842, 31.342344, 25.096464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025724, 30.984638, 25.253534>,  <31.077253, 30.770016, 25.347776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025724, 30.984638, 25.253534>,  <30.939842, 31.342344, 25.096464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025724, 30.984638, 25.253534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354486, 0.303286, 0.884510,
		-0.910078, -0.329106, -0.251887,
		0.214704, -0.894263, 0.392677,
		31.090136, 30.716360, 25.371338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481213, 31.298058, 25.471537>,  <30.939842, 31.342344, 25.096464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481213, 31.298058, 25.471537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730436, 31.022831, 25.620325>,  <30.879971, 30.857695, 25.709599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.730436, 31.022831, 25.620325>,  <30.481213, 31.298058, 25.471537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730436, 31.022831, 25.620325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178797, 0.337682, 0.924123,
		-0.761464, -0.642291, 0.087372,
		0.623060, -0.688065, 0.371973,
		30.917355, 30.816412, 25.731916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099327, 31.000000, 25.969227>,  <30.481213, 31.298058, 25.471537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099327, 31.000000, 25.969227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482256, 30.933353, 26.063692>,  <30.712013, 30.893366, 26.120371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.482256, 30.933353, 26.063692>,  <30.099327, 31.000000, 25.969227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482256, 30.933353, 26.063692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149336, 0.414442, 0.897740,
		-0.247453, -0.894694, 0.371873,
		0.957322, -0.166615, 0.236165,
		30.769453, 30.883369, 26.134542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.727890, 28.532400, 21.976770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982456, 28.298899, 22.178446>,  <37.135197, 28.158798, 22.299452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982456, 28.298899, 22.178446>,  <36.727890, 28.532400, 21.976770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982456, 28.298899, 22.178446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037219, 0.676129, 0.735843,
		-0.770447, -0.449537, 0.452026,
		0.636417, -0.583752, 0.504190,
		37.173382, 28.123774, 22.329702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391254, 28.336718, 22.637741>,  <36.727890, 28.532400, 21.976770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391254, 28.336718, 22.637741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.787849, 28.349733, 22.688156>,  <37.025806, 28.357544, 22.718405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.787849, 28.349733, 22.688156>,  <36.391254, 28.336718, 22.637741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787849, 28.349733, 22.688156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115945, 0.660885, 0.741477,
		-0.059168, -0.749782, 0.659035,
		0.991492, 0.032540, 0.126037,
		37.085297, 28.359495, 22.725967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407608, 28.364456, 23.363012>,  <36.391254, 28.336718, 22.637741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407608, 28.364456, 23.363012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.772594, 28.485401, 23.252747>,  <36.991585, 28.557968, 23.186588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.772594, 28.485401, 23.252747>,  <36.407608, 28.364456, 23.363012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772594, 28.485401, 23.252747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061766, 0.564218, 0.823312,
		0.404472, -0.768268, 0.496152,
		0.912462, 0.302362, -0.275663,
		37.046333, 28.576109, 23.170048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774265, 28.336145, 23.905136>,  <36.407608, 28.364456, 23.363012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774265, 28.336145, 23.905136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982491, 28.576893, 23.662889>,  <37.107426, 28.721342, 23.517542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.982491, 28.576893, 23.662889>,  <36.774265, 28.336145, 23.905136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982491, 28.576893, 23.662889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012338, 0.714527, 0.699499,
		0.853737, -0.356657, 0.379378,
		0.520558, 0.601869, -0.605618,
		37.138657, 28.757454, 23.481205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333714, 28.619164, 24.325260>,  <36.774265, 28.336145, 23.905136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333714, 28.619164, 24.325260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281834, 28.870039, 24.018064>,  <37.250706, 29.020565, 23.833746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.281834, 28.870039, 24.018064>,  <37.333714, 28.619164, 24.325260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281834, 28.870039, 24.018064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116921, 0.778803, 0.616275,
		0.984635, -0.009861, -0.174346,
		-0.129705, 0.627191, -0.767990,
		37.242924, 29.058197, 23.787668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853104, 29.053619, 24.406803>,  <37.333714, 28.619164, 24.325260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853104, 29.053619, 24.406803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597347, 29.232922, 24.156925>,  <37.443893, 29.340502, 24.006998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.597347, 29.232922, 24.156925>,  <37.853104, 29.053619, 24.406803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597347, 29.232922, 24.156925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124098, 0.861987, 0.491506,
		0.758799, 0.236742, -0.606777,
		-0.639394, 0.448254, -0.624695,
		37.405529, 29.367397, 23.969517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243912, 29.531954, 24.141119>,  <37.853104, 29.053619, 24.406803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243912, 29.531954, 24.141119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.860878, 29.645332, 24.120371>,  <37.631058, 29.713360, 24.107922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.860878, 29.645332, 24.120371>,  <38.243912, 29.531954, 24.141119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860878, 29.645332, 24.120371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219536, 0.834237, 0.505819,
		0.186642, 0.472978, -0.861079,
		-0.957585, 0.283445, -0.051868,
		37.573601, 29.730366, 24.104811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219963, 30.179689, 23.878866>,  <38.243912, 29.531954, 24.141119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219963, 30.179689, 23.878866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864403, 30.146074, 24.058998>,  <37.651066, 30.125906, 24.167078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864403, 30.146074, 24.058998>,  <38.219963, 30.179689, 23.878866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864403, 30.146074, 24.058998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128778, 0.897551, 0.421684,
		-0.439631, 0.432827, -0.787010,
		-0.888898, -0.084036, 0.450330,
		37.597733, 30.120863, 24.194098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961033, 30.784767, 23.650913>,  <38.219963, 30.179689, 23.878866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961033, 30.784767, 23.650913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771076, 30.646395, 23.974594>,  <37.657101, 30.563372, 24.168802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771076, 30.646395, 23.974594>,  <37.961033, 30.784767, 23.650913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771076, 30.646395, 23.974594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078641, 0.932505, 0.352492,
		-0.876522, 0.103760, -0.470045,
		-0.474894, -0.345932, 0.809201,
		37.628609, 30.542616, 24.217354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648628, 31.318876, 23.825953>,  <37.961033, 30.784767, 23.650913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648628, 31.318876, 23.825953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550373, 31.105204, 24.149511>,  <37.491421, 30.977001, 24.343647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.550373, 31.105204, 24.149511>,  <37.648628, 31.318876, 23.825953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550373, 31.105204, 24.149511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248443, 0.841283, 0.480123,
		-0.936984, -0.083030, -0.339362,
		-0.245635, -0.534180, 0.808897,
		37.476681, 30.944950, 24.392181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930492, 31.455772, 23.926292>,  <37.648628, 31.318876, 23.825953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930492, 31.455772, 23.926292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134308, 31.338783, 24.249979>,  <37.256596, 31.268589, 24.444191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134308, 31.338783, 24.249979>,  <36.930492, 31.455772, 23.926292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134308, 31.338783, 24.249979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115088, 0.908842, 0.400950,
		-0.852716, -0.297431, 0.429431,
		0.509539, -0.292474, 0.809215,
		37.287170, 31.251041, 24.492743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584938, 31.826097, 24.310101>,  <36.930492, 31.455772, 23.926292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584938, 31.826097, 24.310101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.888725, 31.709307, 24.542637>,  <37.070999, 31.639233, 24.682158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.888725, 31.709307, 24.542637>,  <36.584938, 31.826097, 24.310101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888725, 31.709307, 24.542637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016538, 0.884666, 0.465931,
		-0.650333, -0.363475, 0.667048,
		0.759470, -0.291979, 0.581339,
		37.116566, 31.621714, 24.717039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872856, 31.891394, 24.201950>,  <36.584938, 31.826097, 24.310101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872856, 31.891394, 24.201950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.728264, 32.196072, 23.986858>,  <35.641510, 32.378880, 23.857803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.728264, 32.196072, 23.986858>,  <35.872856, 31.891394, 24.201950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728264, 32.196072, 23.986858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123438, -0.532557, -0.837344,
		-0.924174, -0.369057, 0.098485,
		-0.361477, 0.761695, -0.537731,
		35.619820, 32.424580, 23.825539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437466, 31.554096, 23.733740>,  <35.872856, 31.891394, 24.201950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437466, 31.554096, 23.733740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435917, 31.911478, 23.554085>,  <35.434990, 32.125908, 23.446293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.435917, 31.911478, 23.554085>,  <35.437466, 31.554096, 23.733740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435917, 31.911478, 23.554085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016306, -0.449136, -0.893315,
		-0.999860, 0.003869, 0.016306,
		-0.003867, 0.893455, -0.449136,
		35.434757, 32.179516, 23.419344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807938, 31.661524, 23.396780>,  <35.437466, 31.554096, 23.733740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807938, 31.661524, 23.396780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.099525, 31.864965, 23.213509>,  <35.274479, 31.987030, 23.103546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.099525, 31.864965, 23.213509>,  <34.807938, 31.661524, 23.396780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099525, 31.864965, 23.213509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299755, -0.364569, -0.881610,
		-0.615426, 0.780008, -0.113304,
		0.728970, 0.508603, -0.458176,
		35.318218, 32.017548, 23.076056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449692, 31.883913, 22.910181>,  <34.807938, 31.661524, 23.396780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449692, 31.883913, 22.910181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.827484, 31.950201, 22.796694>,  <35.054161, 31.989973, 22.728601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.827484, 31.950201, 22.796694>,  <34.449692, 31.883913, 22.910181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827484, 31.950201, 22.796694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268140, -0.110287, -0.957046,
		-0.189890, 0.979987, -0.059728,
		0.944480, 0.165718, -0.283716,
		35.110828, 31.999916, 22.711578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472416, 32.471008, 22.335806>,  <34.449692, 31.883913, 22.910181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472416, 32.471008, 22.335806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777782, 32.215881, 22.295052>,  <34.961002, 32.062805, 22.270599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.777782, 32.215881, 22.295052>,  <34.472416, 32.471008, 22.335806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777782, 32.215881, 22.295052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242977, -0.137433, -0.960247,
		0.598465, 0.757823, -0.259894,
		0.763415, -0.637822, -0.101884,
		35.006805, 32.024536, 22.264486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692863, 32.477512, 21.642540>,  <34.472416, 32.471008, 22.335806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692863, 32.477512, 21.642540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880829, 32.141514, 21.751047>,  <34.993610, 31.939915, 21.816153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880829, 32.141514, 21.751047>,  <34.692863, 32.477512, 21.642540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880829, 32.141514, 21.751047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008197, -0.303147, -0.952909,
		0.882673, 0.450010, -0.135568,
		0.469916, -0.839995, 0.271269,
		35.021805, 31.889515, 21.832428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155392, 32.351143, 21.065559>,  <34.692863, 32.477512, 21.642540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155392, 32.351143, 21.065559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104759, 32.018070, 21.281197>,  <35.074379, 31.818228, 21.410580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104759, 32.018070, 21.281197>,  <35.155392, 32.351143, 21.065559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104759, 32.018070, 21.281197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144329, -0.522220, -0.840509,
		0.981400, -0.184199, -0.054077,
		-0.126582, -0.832681, 0.539092,
		35.066784, 31.768267, 21.442924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503155, 31.886246, 20.696573>,  <35.155392, 32.351143, 21.065559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503155, 31.886246, 20.696573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.246567, 31.670074, 20.914364>,  <35.092613, 31.540371, 21.045038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.246567, 31.670074, 20.914364>,  <35.503155, 31.886246, 20.696573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246567, 31.670074, 20.914364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115530, -0.633592, -0.764993,
		0.758399, -0.553623, 0.343995,
		-0.641470, -0.540428, 0.544476,
		35.054127, 31.507946, 21.077707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701839, 31.189161, 20.549593>,  <35.503155, 31.886246, 20.696573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701839, 31.189161, 20.549593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.331036, 31.156286, 20.695959>,  <35.108551, 31.136560, 20.783779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.331036, 31.156286, 20.695959>,  <35.701839, 31.189161, 20.549593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331036, 31.156286, 20.695959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233718, -0.636447, -0.735058,
		0.293299, -0.766929, 0.570785,
		-0.927012, -0.082189, 0.365915,
		35.052933, 31.131630, 20.805733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567318, 30.487276, 20.562511>,  <35.701839, 31.189161, 20.549593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567318, 30.487276, 20.562511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194122, 30.626989, 20.597231>,  <34.970203, 30.710817, 20.618061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.194122, 30.626989, 20.597231>,  <35.567318, 30.487276, 20.562511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194122, 30.626989, 20.597231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329920, -0.733643, -0.594071,
		-0.143820, -0.582897, 0.799716,
		-0.932989, 0.349282, 0.086797,
		34.914227, 30.731773, 20.623270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157158, 29.915945, 20.776567>,  <35.567318, 30.487276, 20.562511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157158, 29.915945, 20.776567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.906769, 30.181084, 20.612228>,  <34.756535, 30.340166, 20.513624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.906769, 30.181084, 20.612228>,  <35.157158, 29.915945, 20.776567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906769, 30.181084, 20.612228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484765, -0.743414, -0.460803,
		-0.610872, -0.089284, 0.786679,
		-0.625970, 0.662846, -0.410849,
		34.718979, 30.379938, 20.488974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558941, 29.636782, 20.956722>,  <35.157158, 29.915945, 20.776567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558941, 29.636782, 20.956722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.511459, 29.869184, 20.634644>,  <34.482971, 30.008627, 20.441397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.511459, 29.869184, 20.634644>,  <34.558941, 29.636782, 20.956722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511459, 29.869184, 20.634644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423068, -0.763231, -0.488356,
		-0.898289, 0.282681, 0.336406,
		-0.118707, 0.581007, -0.805195,
		34.475849, 30.043488, 20.393085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888130, 29.706587, 20.708914>,  <34.558941, 29.636782, 20.956722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888130, 29.706587, 20.708914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087982, 29.788160, 20.372158>,  <34.207893, 29.837105, 20.170105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.087982, 29.788160, 20.372158>,  <33.888130, 29.706587, 20.708914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087982, 29.788160, 20.372158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475321, -0.747964, -0.463270,
		-0.724181, 0.631632, -0.276772,
		0.499632, 0.203936, -0.841890,
		34.237873, 29.849340, 20.119591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472054, 29.213928, 20.979044>,  <33.888130, 29.706587, 20.708914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472054, 29.213928, 20.979044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116119, 29.046263, 21.051140>,  <32.902557, 28.945663, 21.094397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.116119, 29.046263, 21.051140>,  <33.472054, 29.213928, 20.979044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116119, 29.046263, 21.051140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012171, 0.373077, 0.927721,
		-0.456110, 0.827717, -0.326877,
		-0.889840, -0.419165, 0.180238,
		32.849167, 28.920513, 21.105211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003925, 29.727142, 21.284859>,  <33.472054, 29.213928, 20.979044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003925, 29.727142, 21.284859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836521, 29.381338, 21.396193>,  <32.736080, 29.173855, 21.462994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.836521, 29.381338, 21.396193>,  <33.003925, 29.727142, 21.284859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836521, 29.381338, 21.396193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065335, 0.334329, 0.940189,
		-0.905860, 0.375292, -0.196402,
		-0.418508, -0.864511, 0.278336,
		32.710968, 29.121984, 21.479692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364147, 29.962574, 21.619112>,  <33.003925, 29.727142, 21.284859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364147, 29.962574, 21.619112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408161, 29.586166, 21.747093>,  <32.434570, 29.360321, 21.823883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408161, 29.586166, 21.747093>,  <32.364147, 29.962574, 21.619112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408161, 29.586166, 21.747093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267531, 0.281988, 0.921363,
		-0.957246, -0.186980, -0.220724,
		0.110035, -0.941022, 0.319955,
		32.441174, 29.303860, 21.843081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756416, 29.764835, 21.839252>,  <32.364147, 29.962574, 21.619112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756416, 29.764835, 21.839252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035500, 29.555489, 22.034922>,  <32.202950, 29.429880, 22.152323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035500, 29.555489, 22.034922>,  <31.756416, 29.764835, 21.839252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035500, 29.555489, 22.034922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377797, 0.311356, 0.871967,
		-0.608666, -0.793187, 0.019509,
		0.697707, -0.523366, 0.489175,
		32.244812, 29.398479, 22.181675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432880, 29.384926, 22.350977>,  <31.756416, 29.764835, 21.839252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432880, 29.384926, 22.350977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812794, 29.402502, 22.474903>,  <32.040741, 29.413048, 22.549259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812794, 29.402502, 22.474903>,  <31.432880, 29.384926, 22.350977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812794, 29.402502, 22.474903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308803, 0.291607, 0.905321,
		-0.050563, -0.955529, 0.290532,
		0.949781, 0.043941, 0.309815,
		32.097729, 29.415684, 22.567848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411278, 28.961584, 22.918621>,  <31.432880, 29.384926, 22.350977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411278, 28.961584, 22.918621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.743851, 29.174232, 22.983242>,  <31.943394, 29.301823, 23.022015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.743851, 29.174232, 22.983242>,  <31.411278, 28.961584, 22.918621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743851, 29.174232, 22.983242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237876, 0.077810, 0.968174,
		0.502134, -0.843399, 0.191154,
		0.831431, 0.531624, 0.161553,
		31.993280, 29.333719, 23.031708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590458, 28.722923, 23.458836>,  <31.411278, 28.961584, 22.918621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590458, 28.722923, 23.458836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788656, 29.070351, 23.462229>,  <31.907576, 29.278807, 23.464264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788656, 29.070351, 23.462229>,  <31.590458, 28.722923, 23.458836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788656, 29.070351, 23.462229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231969, 0.122911, 0.964927,
		0.837062, -0.480086, 0.262382,
		0.495498, 0.868568, 0.008481,
		31.937305, 29.330921, 23.464773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055450, 28.739719, 24.054585>,  <31.590458, 28.722923, 23.458836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055450, 28.739719, 24.054585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.982031, 29.116495, 23.942114>,  <31.937979, 29.342560, 23.874632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.982031, 29.116495, 23.942114>,  <32.055450, 28.739719, 24.054585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982031, 29.116495, 23.942114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049395, 0.276837, 0.959647,
		0.981768, 0.190033, -0.004287,
		-0.183551, 0.941939, -0.281177,
		31.926966, 29.399076, 23.857761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758270, 28.495785, 24.155910>,  <32.055450, 28.739719, 24.054585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758270, 28.495785, 24.155910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893185, 28.187580, 24.372261>,  <32.974133, 28.002657, 24.502071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.893185, 28.187580, 24.372261>,  <32.758270, 28.495785, 24.155910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893185, 28.187580, 24.372261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146583, -0.524554, -0.838664,
		0.929920, 0.362153, -0.063980,
		0.337286, -0.770512, 0.540879,
		32.994370, 27.956427, 24.534525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432095, 28.340984, 23.771042>,  <32.758270, 28.495785, 24.155910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432095, 28.340984, 23.771042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.310650, 28.020947, 23.977987>,  <33.237782, 27.828924, 24.102154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.310650, 28.020947, 23.977987>,  <33.432095, 28.340984, 23.771042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310650, 28.020947, 23.977987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154901, -0.577222, -0.801761,
		0.940120, -0.163286, 0.299188,
		-0.303614, -0.800096, 0.517364,
		33.219566, 27.780918, 24.133196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906803, 27.839022, 23.745930>,  <33.432095, 28.340984, 23.771042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906803, 27.839022, 23.745930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.584023, 27.623116, 23.841835>,  <33.390354, 27.493572, 23.899378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.584023, 27.623116, 23.841835>,  <33.906803, 27.839022, 23.745930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584023, 27.623116, 23.841835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183243, -0.614724, -0.767161,
		0.561476, -0.575124, 0.594959,
		-0.806949, -0.539765, 0.239765,
		33.341938, 27.461185, 23.913765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152290, 27.149057, 23.816824>,  <33.906803, 27.839022, 23.745930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152290, 27.149057, 23.816824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.754799, 27.114141, 23.788851>,  <33.516304, 27.093191, 23.772068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.754799, 27.114141, 23.788851>,  <34.152290, 27.149057, 23.816824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754799, 27.114141, 23.788851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111709, -0.805796, -0.581561,
		-0.005586, -0.585724, 0.810491,
		-0.993725, -0.087291, -0.069932,
		33.456680, 27.087954, 23.767872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983707, 26.450329, 23.969681>,  <34.152290, 27.149057, 23.816824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983707, 26.450329, 23.969681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676590, 26.582415, 23.750063>,  <33.492317, 26.661665, 23.618292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.676590, 26.582415, 23.750063>,  <33.983707, 26.450329, 23.969681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676590, 26.582415, 23.750063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008189, -0.851822, -0.523766,
		-0.640642, -0.406642, 0.651322,
		-0.767796, 0.330213, -0.549043,
		33.446251, 26.681479, 23.585350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585503, 25.833410, 23.765556>,  <33.983707, 26.450329, 23.969681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585503, 25.833410, 23.765556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.473103, 26.109953, 23.499304>,  <33.405663, 26.275879, 23.339552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.473103, 26.109953, 23.499304>,  <33.585503, 25.833410, 23.765556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473103, 26.109953, 23.499304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194282, -0.638240, -0.744920,
		-0.939837, -0.338642, 0.045027,
		-0.280999, 0.691355, -0.665633,
		33.388802, 26.317360, 23.299614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968613, 25.613462, 23.270218>,  <33.585503, 25.833410, 23.765556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968613, 25.613462, 23.270218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.209976, 25.885469, 23.103613>,  <33.354794, 26.048674, 23.003651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.209976, 25.885469, 23.103613>,  <32.968613, 25.613462, 23.270218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209976, 25.885469, 23.103613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220747, -0.644342, -0.732185,
		-0.766272, 0.349860, -0.538911,
		0.603405, 0.680016, -0.416510,
		33.390999, 26.089474, 22.978661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827259, 25.479670, 22.513681>,  <32.968613, 25.613462, 23.270218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827259, 25.479670, 22.513681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111794, 25.759567, 22.487263>,  <33.282513, 25.927505, 22.471411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.111794, 25.759567, 22.487263>,  <32.827259, 25.479670, 22.513681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111794, 25.759567, 22.487263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247833, -0.337649, -0.908059,
		-0.657709, 0.629566, -0.413601,
		0.711335, 0.699742, -0.066048,
		33.325195, 25.969490, 22.467449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848389, 25.838465, 21.797676>,  <32.827259, 25.479670, 22.513681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848389, 25.838465, 21.797676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.211025, 25.888470, 21.958904>,  <33.428608, 25.918472, 22.055641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.211025, 25.888470, 21.958904>,  <32.848389, 25.838465, 21.797676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211025, 25.888470, 21.958904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412900, -0.460167, -0.785977,
		0.087222, 0.878987, -0.468801,
		0.906590, 0.125013, 0.403070,
		33.483002, 25.925974, 22.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.316055, 35.287762, 35.245750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967133, 35.152199, 35.104771>,  <32.757778, 35.070862, 35.020184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967133, 35.152199, 35.104771>,  <33.316055, 35.287762, 35.245750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967133, 35.152199, 35.104771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418554, 0.144943, 0.896551,
		-0.252766, 0.929586, -0.268287,
		-0.872308, -0.338911, -0.352446,
		32.705441, 35.050526, 34.999039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957733, 35.223869, 35.223644>,  <33.316055, 35.287762, 35.245750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957733, 35.223869, 35.223644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319839, 35.095089, 35.112759>,  <34.537102, 35.017822, 35.046227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319839, 35.095089, 35.112759>,  <33.957733, 35.223869, 35.223644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319839, 35.095089, 35.112759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397832, -0.413382, -0.819051,
		0.149098, 0.851741, -0.502301,
		0.905262, -0.321950, -0.277215,
		34.591419, 34.998505, 35.029594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265770, 35.432381, 34.464890>,  <33.957733, 35.223869, 35.223644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265770, 35.432381, 34.464890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429886, 35.082138, 34.566849>,  <34.528355, 34.871994, 34.628025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.429886, 35.082138, 34.566849>,  <34.265770, 35.432381, 34.464890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429886, 35.082138, 34.566849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228467, -0.369284, -0.900795,
		0.882872, 0.311354, -0.351562,
		0.410292, -0.875607, 0.254896,
		34.552975, 34.819454, 34.643318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671036, 35.222157, 33.855320>,  <34.265770, 35.432381, 34.464890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671036, 35.222157, 33.855320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603668, 34.886494, 34.062187>,  <34.563248, 34.685097, 34.186306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603668, 34.886494, 34.062187>,  <34.671036, 35.222157, 33.855320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603668, 34.886494, 34.062187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164124, -0.493462, -0.854142,
		0.971956, -0.228732, -0.054617,
		-0.168419, -0.839152, 0.517164,
		34.553143, 34.634747, 34.217335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051563, 34.730808, 33.515179>,  <34.671036, 35.222157, 33.855320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051563, 34.730808, 33.515179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766438, 34.548920, 33.728767>,  <34.595364, 34.439785, 33.856922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766438, 34.548920, 33.728767>,  <35.051563, 34.730808, 33.515179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766438, 34.548920, 33.728767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269834, -0.524935, -0.807238,
		0.647371, -0.719492, 0.251479,
		-0.712811, -0.454725, 0.533971,
		34.552593, 34.412502, 33.888958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191837, 34.039841, 33.427425>,  <35.051563, 34.730808, 33.515179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191837, 34.039841, 33.427425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813538, 34.111477, 33.535854>,  <34.586555, 34.154457, 33.600910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.813538, 34.111477, 33.535854>,  <35.191837, 34.039841, 33.427425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813538, 34.111477, 33.535854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323895, -0.584929, -0.743606,
		0.025390, -0.791067, 0.611203,
		-0.945752, 0.179086, 0.271074,
		34.529812, 34.165203, 33.617176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902420, 33.357285, 33.369232>,  <35.191837, 34.039841, 33.427425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902420, 33.357285, 33.369232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599258, 33.616924, 33.395290>,  <34.417362, 33.772709, 33.410927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599258, 33.616924, 33.395290>,  <34.902420, 33.357285, 33.369232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599258, 33.616924, 33.395290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587651, -0.635951, -0.500233,
		-0.283272, -0.417413, 0.863437,
		-0.757907, 0.649101, 0.065147,
		34.371887, 33.811653, 33.414833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332458, 32.948051, 33.607277>,  <34.902420, 33.357285, 33.369232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332458, 32.948051, 33.607277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134789, 33.254269, 33.442482>,  <34.016186, 33.438000, 33.343605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134789, 33.254269, 33.442482>,  <34.332458, 32.948051, 33.607277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134789, 33.254269, 33.442482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354023, -0.610028, -0.708895,
		-0.794012, -0.204469, 0.572483,
		-0.494178, 0.765544, -0.411983,
		33.986534, 33.483932, 33.318886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701466, 32.657005, 33.413231>,  <34.332458, 32.948051, 33.607277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701466, 32.657005, 33.413231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735489, 32.996758, 33.204876>,  <33.755901, 33.200607, 33.079865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735489, 32.996758, 33.204876>,  <33.701466, 32.657005, 33.413231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735489, 32.996758, 33.204876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488180, -0.420208, -0.764922,
		-0.868588, 0.319348, 0.378908,
		0.085056, 0.849378, -0.520886,
		33.761005, 33.251572, 33.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047031, 32.871735, 33.222450>,  <33.701466, 32.657005, 33.413231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047031, 32.871735, 33.222450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335377, 32.988487, 32.971004>,  <33.508385, 33.058540, 32.820137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.335377, 32.988487, 32.971004>,  <33.047031, 32.871735, 33.222450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335377, 32.988487, 32.971004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427160, -0.527143, -0.734612,
		-0.545790, 0.798076, -0.255320,
		0.720866, 0.291881, -0.628615,
		33.551636, 33.076050, 32.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697929, 33.057323, 32.643333>,  <33.047031, 32.871735, 33.222450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697929, 33.057323, 32.643333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059750, 33.022167, 32.476452>,  <33.276844, 33.001076, 32.376324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059750, 33.022167, 32.476452>,  <32.697929, 33.057323, 32.643333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059750, 33.022167, 32.476452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397363, -0.528473, -0.750212,
		-0.154547, 0.844389, -0.512955,
		0.904554, -0.087886, -0.417203,
		33.331116, 32.995800, 32.351292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652447, 33.248482, 31.936258>,  <32.697929, 33.057323, 32.643333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652447, 33.248482, 31.936258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979874, 33.021412, 31.971323>,  <33.176331, 32.885170, 31.992361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.979874, 33.021412, 31.971323>,  <32.652447, 33.248482, 31.936258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979874, 33.021412, 31.971323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241592, -0.478708, -0.844081,
		0.521129, 0.669762, -0.529003,
		0.818571, -0.567677, 0.087660,
		33.225445, 32.851109, 31.997622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490154, 33.671814, 31.354773>,  <32.652447, 33.248482, 31.936258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490154, 33.671814, 31.354773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161667, 33.826336, 31.186789>,  <31.964575, 33.919048, 31.085999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161667, 33.826336, 31.186789>,  <32.490154, 33.671814, 31.354773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161667, 33.826336, 31.186789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043284, 0.776034, 0.629203,
		0.568968, 0.498537, -0.654016,
		-0.821220, 0.386305, -0.419960,
		31.915300, 33.942226, 31.060801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657742, 34.388313, 31.162746>,  <32.490154, 33.671814, 31.354773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657742, 34.388313, 31.162746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267494, 34.324177, 31.222700>,  <32.033348, 34.285694, 31.258673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.267494, 34.324177, 31.222700>,  <32.657742, 34.388313, 31.162746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267494, 34.324177, 31.222700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063220, 0.859233, 0.507664,
		-0.210186, 0.485809, -0.848417,
		-0.975615, -0.160341, 0.149886,
		31.974810, 34.276073, 31.267666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260681, 34.973175, 30.964571>,  <32.657742, 34.388313, 31.162746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260681, 34.973175, 30.964571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013557, 34.774742, 31.208609>,  <31.865284, 34.655682, 31.355030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013557, 34.774742, 31.208609>,  <32.260681, 34.973175, 30.964571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013557, 34.774742, 31.208609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052573, 0.748079, 0.661524,
		-0.784570, 0.440769, -0.436088,
		-0.617808, -0.496085, 0.610093,
		31.828215, 34.625916, 31.391636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647045, 35.303238, 31.050205>,  <32.260681, 34.973175, 30.964571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647045, 35.303238, 31.050205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703964, 35.079010, 31.376522>,  <31.738115, 34.944473, 31.572313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703964, 35.079010, 31.376522>,  <31.647045, 35.303238, 31.050205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703964, 35.079010, 31.376522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015442, 0.825337, 0.564430,
		-0.989704, -0.067719, 0.126098,
		0.142296, -0.560565, 0.815793,
		31.746653, 34.910839, 31.621260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371281, 35.629238, 31.534426>,  <31.647045, 35.303238, 31.050205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371281, 35.629238, 31.534426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577240, 35.377419, 31.767166>,  <31.700817, 35.226326, 31.906811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.577240, 35.377419, 31.767166>,  <31.371281, 35.629238, 31.534426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577240, 35.377419, 31.767166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052855, 0.654136, 0.754528,
		-0.855619, -0.419261, 0.303540,
		0.514901, -0.629545, 0.581851,
		31.731710, 35.188557, 31.941721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023176, 35.684246, 32.142662>,  <31.371281, 35.629238, 31.534426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023176, 35.684246, 32.142662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381464, 35.538399, 32.244434>,  <31.596437, 35.450890, 32.305500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.381464, 35.538399, 32.244434>,  <31.023176, 35.684246, 32.142662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381464, 35.538399, 32.244434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026657, 0.615264, 0.787871,
		-0.443819, -0.698929, 0.560824,
		0.895720, -0.364622, 0.254434,
		31.650181, 35.429012, 32.320766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938999, 35.634884, 32.947582>,  <31.023176, 35.684246, 32.142662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938999, 35.634884, 32.947582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313671, 35.667999, 32.811478>,  <31.538473, 35.687866, 32.729813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.313671, 35.667999, 32.811478>,  <30.938999, 35.634884, 32.947582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313671, 35.667999, 32.811478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170405, 0.741110, 0.649398,
		0.305933, -0.666260, 0.680075,
		0.936679, 0.082784, -0.340264,
		31.594675, 35.692833, 32.709400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251787, 35.676968, 33.558163>,  <30.938999, 35.634884, 32.947582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251787, 35.676968, 33.558163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534809, 35.790749, 33.299412>,  <31.704622, 35.859016, 33.144161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.534809, 35.790749, 33.299412>,  <31.251787, 35.676968, 33.558163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534809, 35.790749, 33.299412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189725, 0.805326, 0.561653,
		0.680713, -0.520129, 0.515844,
		0.707555, 0.284456, -0.646878,
		31.747076, 35.876087, 33.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780451, 35.945789, 34.010616>,  <31.251787, 35.676968, 33.558163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780451, 35.945789, 34.010616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859705, 36.117428, 33.658112>,  <31.907257, 36.220409, 33.446609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859705, 36.117428, 33.658112>,  <31.780451, 35.945789, 34.010616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859705, 36.117428, 33.658112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312458, 0.824530, 0.471720,
		0.929038, -0.368823, 0.029297,
		0.198137, 0.429092, -0.881261,
		31.919146, 36.246155, 33.393734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454231, 36.300316, 34.150711>,  <31.780451, 35.945789, 34.010616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454231, 36.300316, 34.150711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284359, 36.474369, 33.833145>,  <32.182434, 36.578800, 33.642605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284359, 36.474369, 33.833145>,  <32.454231, 36.300316, 34.150711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284359, 36.474369, 33.833145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174548, 0.899825, 0.399809,
		0.888357, 0.031216, -0.458092,
		-0.424683, 0.435132, -0.793917,
		32.156956, 36.604908, 33.594971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876461, 36.790962, 34.000595>,  <32.454231, 36.300316, 34.150711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876461, 36.790962, 34.000595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534409, 36.903996, 33.826744>,  <32.329178, 36.971813, 33.722435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534409, 36.903996, 33.826744>,  <32.876461, 36.790962, 34.000595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534409, 36.903996, 33.826744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122119, 0.924589, 0.360863,
		0.503824, 0.255509, -0.825153,
		-0.855131, 0.282579, -0.434628,
		32.277870, 36.988770, 33.696354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083233, 37.433311, 33.563942>,  <32.876461, 36.790962, 34.000595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083233, 37.433311, 33.563942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689030, 37.448689, 33.630028>,  <32.452507, 37.457916, 33.669678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.689030, 37.448689, 33.630028>,  <33.083233, 37.433311, 33.563942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689030, 37.448689, 33.630028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083657, 0.957447, 0.276217,
		-0.147563, 0.286035, -0.946789,
		-0.985508, 0.038446, 0.165212,
		32.393375, 37.460224, 33.679592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846508, 38.059170, 33.183025>,  <33.083233, 37.433311, 33.563942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846508, 38.059170, 33.183025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563309, 37.976692, 33.453201>,  <32.393391, 37.927204, 33.615307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.563309, 37.976692, 33.453201>,  <32.846508, 38.059170, 33.183025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563309, 37.976692, 33.453201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024626, 0.963052, 0.268187,
		-0.705785, 0.173243, -0.686917,
		-0.707998, -0.206198, 0.675441,
		32.350910, 37.914833, 33.655834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403687, 38.462276, 32.985107>,  <32.846508, 38.059170, 33.183025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403687, 38.462276, 32.985107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298122, 38.394978, 33.365013>,  <32.234783, 38.354599, 33.592957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.298122, 38.394978, 33.365013>,  <32.403687, 38.462276, 32.985107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298122, 38.394978, 33.365013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090817, 0.984629, 0.149191,
		-0.960262, -0.046881, -0.275134,
		-0.263911, -0.168249, 0.949759,
		32.218948, 38.344501, 33.649940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250801, 38.492599, 32.239967>,  <32.403687, 38.462276, 32.985107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250801, 38.492599, 32.239967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607445, 38.644642, 32.141537>,  <32.821430, 38.735867, 32.082478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.607445, 38.644642, 32.141537>,  <32.250801, 38.492599, 32.239967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607445, 38.644642, 32.141537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065180, -0.430046, -0.900451,
		-0.448089, 0.818890, -0.358658,
		0.891610, 0.380105, -0.246074,
		32.874928, 38.758675, 32.067715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311184, 38.746002, 31.539072>,  <32.250801, 38.492599, 32.239967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311184, 38.746002, 31.539072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673244, 38.619026, 31.652159>,  <32.890480, 38.542839, 31.720011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673244, 38.619026, 31.652159>,  <32.311184, 38.746002, 31.539072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673244, 38.619026, 31.652159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040866, -0.597018, -0.801186,
		0.423117, 0.736750, -0.527420,
		0.905153, -0.317442, 0.282717,
		32.944790, 38.523792, 31.736975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712673, 38.705673, 30.959465>,  <32.311184, 38.746002, 31.539072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712673, 38.705673, 30.959465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895290, 38.455593, 31.212664>,  <33.004860, 38.305546, 31.364584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895290, 38.455593, 31.212664>,  <32.712673, 38.705673, 30.959465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895290, 38.455593, 31.212664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109891, -0.666399, -0.737452,
		0.882888, 0.406241, -0.235537,
		0.456544, -0.625204, 0.632998,
		33.032253, 38.268032, 31.402563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375935, 38.566406, 30.684021>,  <32.712673, 38.705673, 30.959465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375935, 38.566406, 30.684021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272552, 38.259953, 30.919392>,  <33.210522, 38.076080, 31.060614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272552, 38.259953, 30.919392>,  <33.375935, 38.566406, 30.684021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272552, 38.259953, 30.919392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180321, -0.636678, -0.749750,
		0.949044, -0.087671, 0.302702,
		-0.258455, -0.766130, 0.588427,
		33.195015, 38.030113, 31.095921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891132, 37.971905, 30.564903>,  <33.375935, 38.566406, 30.684021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891132, 37.971905, 30.564903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585815, 37.793797, 30.752142>,  <33.402626, 37.686932, 30.864485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.585815, 37.793797, 30.752142>,  <33.891132, 37.971905, 30.564903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585815, 37.793797, 30.752142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055102, -0.766781, -0.639539,
		0.643698, -0.462362, 0.609814,
		-0.763293, -0.445272, 0.468099,
		33.356827, 37.660213, 30.892572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024559, 37.296852, 30.711527>,  <33.891132, 37.971905, 30.564903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024559, 37.296852, 30.711527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625027, 37.312252, 30.699810>,  <33.385307, 37.321491, 30.692780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.625027, 37.312252, 30.699810>,  <34.024559, 37.296852, 30.711527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625027, 37.312252, 30.699810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013063, -0.797618, -0.603022,
		-0.046581, -0.601933, 0.797187,
		-0.998829, 0.038503, -0.029291,
		33.325378, 37.323803, 30.691023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840462, 36.693565, 30.904310>,  <34.024559, 37.296852, 30.711527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840462, 36.693565, 30.904310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529121, 36.823177, 30.689209>,  <33.342319, 36.900944, 30.560148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.529121, 36.823177, 30.689209>,  <33.840462, 36.693565, 30.904310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529121, 36.823177, 30.689209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027117, -0.838376, -0.544418,
		-0.627246, -0.438329, 0.643762,
		-0.778349, 0.324028, -0.537754,
		33.295616, 36.920387, 30.527884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508537, 36.133350, 30.786942>,  <33.840462, 36.693565, 30.904310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508537, 36.133350, 30.786942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344181, 36.389858, 30.527729>,  <33.245567, 36.543762, 30.372202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344181, 36.389858, 30.527729>,  <33.508537, 36.133350, 30.786942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344181, 36.389858, 30.527729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010961, -0.714231, -0.699825,
		-0.911619, -0.280447, 0.300498,
		-0.410889, 0.641267, -0.648033,
		33.220913, 36.582237, 30.333319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874439, 35.815655, 30.503839>,  <33.508537, 36.133350, 30.786942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874439, 35.815655, 30.503839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916553, 36.109520, 30.235756>,  <32.941822, 36.285839, 30.074905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916553, 36.109520, 30.235756>,  <32.874439, 35.815655, 30.503839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916553, 36.109520, 30.235756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095479, -0.663375, -0.742171,
		-0.989848, 0.142132, 0.000301,
		0.105286, 0.734665, -0.670211,
		32.948139, 36.329918, 30.034693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382664, 35.663864, 29.934290>,  <32.874439, 35.815655, 30.503839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382664, 35.663864, 29.934290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705437, 35.880882, 29.840912>,  <32.899101, 36.011093, 29.784885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.705437, 35.880882, 29.840912>,  <32.382664, 35.663864, 29.934290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705437, 35.880882, 29.840912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284961, -0.703815, -0.650724,
		-0.517353, 0.458569, -0.722538,
		0.806934, 0.542549, -0.233447,
		32.947517, 36.043648, 29.770878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336975, 35.564945, 29.280237>,  <32.382664, 35.663864, 29.934290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336975, 35.564945, 29.280237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710217, 35.695557, 29.340504>,  <32.934162, 35.773922, 29.376663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710217, 35.695557, 29.340504>,  <32.336975, 35.564945, 29.280237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710217, 35.695557, 29.340504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329052, -0.606242, -0.724013,
		-0.145069, 0.725156, -0.673130,
		0.933102, 0.326527, 0.150667,
		32.990147, 35.793514, 29.385704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676308, 35.821739, 28.603994>,  <32.336975, 35.564945, 29.280237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676308, 35.821739, 28.603994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975010, 35.678394, 28.828112>,  <33.154232, 35.592388, 28.962582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975010, 35.678394, 28.828112>,  <32.676308, 35.821739, 28.603994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975010, 35.678394, 28.828112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317336, -0.548374, -0.773682,
		0.584507, 0.755556, -0.295783,
		0.746760, -0.358360, 0.560293,
		33.199039, 35.570885, 28.996199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270733, 35.855461, 28.145164>,  <32.676308, 35.821739, 28.603994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270733, 35.855461, 28.145164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402714, 35.656185, 28.465899>,  <33.481903, 35.536621, 28.658339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402714, 35.656185, 28.465899>,  <33.270733, 35.855461, 28.145164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402714, 35.656185, 28.465899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498090, -0.629662, -0.596181,
		0.801895, 0.596098, 0.040383,
		0.329955, -0.498189, 0.801834,
		33.501701, 35.506729, 28.706450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020149, 35.785019, 28.042511>,  <33.270733, 35.855461, 28.145164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020149, 35.785019, 28.042511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933907, 35.511745, 28.321587>,  <33.882160, 35.347782, 28.489031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933907, 35.511745, 28.321587>,  <34.020149, 35.785019, 28.042511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933907, 35.511745, 28.321587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559725, -0.671930, -0.484993,
		0.800138, 0.285945, 0.527271,
		-0.215608, -0.683188, 0.697687,
		33.869225, 35.306789, 28.530893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677734, 35.602791, 28.301006>,  <34.020149, 35.785019, 28.042511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677734, 35.602791, 28.301006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435154, 35.289841, 28.357718>,  <34.289604, 35.102070, 28.391745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435154, 35.289841, 28.357718>,  <34.677734, 35.602791, 28.301006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435154, 35.289841, 28.357718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489979, -0.508160, -0.708304,
		0.626205, -0.360087, 0.691523,
		-0.606455, -0.782375, 0.141777,
		34.253216, 35.055126, 28.400251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153229, 35.025703, 28.221106>,  <34.677734, 35.602791, 28.301006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153229, 35.025703, 28.221106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776814, 34.894806, 28.186811>,  <34.550964, 34.816269, 28.166235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.776814, 34.894806, 28.186811>,  <35.153229, 35.025703, 28.221106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776814, 34.894806, 28.186811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294458, -0.667614, -0.683803,
		0.166533, -0.668733, 0.724613,
		-0.941043, -0.327243, -0.085734,
		34.494499, 34.796635, 28.161091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201599, 34.294334, 28.178940>,  <35.153229, 35.025703, 28.221106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201599, 34.294334, 28.178940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837017, 34.377987, 28.037224>,  <34.618267, 34.428177, 27.952194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837017, 34.377987, 28.037224>,  <35.201599, 34.294334, 28.178940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837017, 34.377987, 28.037224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138136, -0.655607, -0.742359,
		-0.387521, -0.725565, 0.568667,
		-0.911453, 0.209127, -0.354288,
		34.563580, 34.440723, 27.930937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856964, 33.688843, 27.999060>,  <35.201599, 34.294334, 28.178940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856964, 33.688843, 27.999060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681301, 33.974415, 27.780907>,  <34.575905, 34.145760, 27.650015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.681301, 33.974415, 27.780907>,  <34.856964, 33.688843, 27.999060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681301, 33.974415, 27.780907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108087, -0.560656, -0.820964,
		-0.891885, -0.419480, 0.169048,
		-0.439156, 0.713934, -0.545381,
		34.549553, 34.188595, 27.617292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632629, 33.361557, 27.546707>,  <34.856964, 33.688843, 27.999060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632629, 33.361557, 27.546707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562614, 33.723328, 27.391079>,  <34.520607, 33.940392, 27.297703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.562614, 33.723328, 27.391079>,  <34.632629, 33.361557, 27.546707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562614, 33.723328, 27.391079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082703, -0.407279, -0.909551,
		-0.981082, -0.127029, 0.146088,
		-0.175038, 0.904426, -0.389069,
		34.510101, 33.994656, 27.274359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962486, 33.343700, 27.199291>,  <34.632629, 33.361557, 27.546707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962486, 33.343700, 27.199291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186810, 33.628853, 27.030863>,  <34.321404, 33.799942, 26.929806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186810, 33.628853, 27.030863>,  <33.962486, 33.343700, 27.199291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186810, 33.628853, 27.030863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051500, -0.477552, -0.877093,
		-0.826344, 0.513564, -0.231101,
		0.560806, 0.712879, -0.421070,
		34.355053, 33.842716, 26.904541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569290, 33.380409, 26.558144>,  <33.962486, 33.343700, 27.199291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569290, 33.380409, 26.558144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911324, 33.583084, 26.514153>,  <34.116543, 33.704689, 26.487757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911324, 33.583084, 26.514153>,  <33.569290, 33.380409, 26.558144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911324, 33.583084, 26.514153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127128, -0.410528, -0.902942,
		-0.502660, 0.758112, -0.415451,
		0.855085, 0.506689, -0.109979,
		34.167850, 33.735092, 26.481159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589867, 33.625179, 25.899099>,  <33.569290, 33.380409, 26.558144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589867, 33.625179, 25.899099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975548, 33.669949, 25.995256>,  <34.206955, 33.696812, 26.052950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.975548, 33.669949, 25.995256>,  <33.589867, 33.625179, 25.899099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975548, 33.669949, 25.995256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264639, -0.348746, -0.899079,
		-0.016791, 0.930510, -0.365881,
		0.964201, 0.111923, 0.240393,
		34.264809, 33.703526, 26.067375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933228, 34.047005, 25.392897>,  <33.589867, 33.625179, 25.899099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933228, 34.047005, 25.392897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243633, 33.856373, 25.558151>,  <34.429874, 33.741993, 25.657305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243633, 33.856373, 25.558151>,  <33.933228, 34.047005, 25.392897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243633, 33.856373, 25.558151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391582, -0.149449, -0.907925,
		0.494438, 0.866337, 0.070645,
		0.776011, -0.476576, 0.413136,
		34.476437, 33.713402, 25.682093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490211, 34.232601, 24.994314>,  <33.933228, 34.047005, 25.392897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490211, 34.232601, 24.994314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609440, 33.885094, 25.152502>,  <34.680977, 33.676590, 25.247416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609440, 33.885094, 25.152502>,  <34.490211, 34.232601, 24.994314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609440, 33.885094, 25.152502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483919, -0.219584, -0.847116,
		0.822785, 0.443878, 0.354961,
		0.298072, -0.868767, 0.395471,
		34.698860, 33.624462, 25.271143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169029, 34.216263, 24.818916>,  <34.490211, 34.232601, 24.994314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169029, 34.216263, 24.818916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080284, 33.831768, 24.884392>,  <35.027035, 33.601070, 24.923677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080284, 33.831768, 24.884392>,  <35.169029, 34.216263, 24.818916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080284, 33.831768, 24.884392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482696, -0.254132, -0.838106,
		0.847219, -0.106934, 0.520370,
		-0.221865, -0.961240, 0.163689,
		35.013725, 33.543396, 24.933498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803493, 33.853405, 24.782871>,  <35.169029, 34.216263, 24.818916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803493, 33.853405, 24.782871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533718, 33.559307, 24.755894>,  <35.371853, 33.382851, 24.739706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.533718, 33.559307, 24.755894>,  <35.803493, 33.853405, 24.782871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533718, 33.559307, 24.755894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511186, -0.399087, -0.761196,
		0.532746, -0.547859, 0.645006,
		-0.674441, -0.735242, -0.067446,
		35.331387, 33.338734, 24.735661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166203, 33.217670, 24.608793>,  <35.803493, 33.853405, 24.782871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166203, 33.217670, 24.608793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795021, 33.143223, 24.479635>,  <35.572311, 33.098553, 24.402140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795021, 33.143223, 24.479635>,  <36.166203, 33.217670, 24.608793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795021, 33.143223, 24.479635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366636, -0.611463, -0.701207,
		-0.066931, -0.769073, 0.635647,
		-0.927954, -0.186119, -0.322896,
		35.516636, 33.087387, 24.382767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193359, 32.533653, 24.485031>,  <36.166203, 33.217670, 24.608793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193359, 32.533653, 24.485031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875271, 32.662716, 24.279694>,  <35.684418, 32.740154, 24.156492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875271, 32.662716, 24.279694>,  <36.193359, 32.533653, 24.485031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875271, 32.662716, 24.279694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261633, -0.581166, -0.770581,
		-0.546971, -0.747087, 0.377735,
		-0.795217, 0.322657, -0.513344,
		35.636703, 32.759514, 24.125690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380039, 31.922033, 24.994192>,  <36.193359, 32.533653, 24.485031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380039, 31.922033, 24.994192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779224, 31.944101, 25.006960>,  <37.018738, 31.957342, 25.014620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.779224, 31.944101, 25.006960>,  <36.380039, 31.922033, 24.994192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779224, 31.944101, 25.006960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063528, 0.820509, 0.568093,
		0.005153, -0.568965, 0.822345,
		0.997967, 0.055169, 0.031917,
		37.078613, 31.960651, 25.016535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578850, 32.012863, 25.729574>,  <36.380039, 31.922033, 24.994192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578850, 32.012863, 25.729574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908012, 32.100578, 25.519913>,  <37.105511, 32.153206, 25.394115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908012, 32.100578, 25.519913>,  <36.578850, 32.012863, 25.729574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908012, 32.100578, 25.519913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188177, 0.765267, 0.615594,
		0.536106, -0.605211, 0.588481,
		0.822909, 0.219286, -0.524151,
		37.154884, 32.166363, 25.362667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181564, 31.941603, 26.184940>,  <36.578850, 32.012863, 25.729574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181564, 31.941603, 26.184940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291019, 32.203239, 25.902866>,  <37.356693, 32.360222, 25.733622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.291019, 32.203239, 25.902866>,  <37.181564, 31.941603, 26.184940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291019, 32.203239, 25.902866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151623, 0.694668, 0.703169,
		0.949807, -0.299335, 0.090911,
		0.273636, 0.654091, -0.705187,
		37.373112, 32.399467, 25.691311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690975, 32.231445, 26.484474>,  <37.181564, 31.941603, 26.184940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690975, 32.231445, 26.484474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576607, 32.474064, 26.187733>,  <37.507988, 32.619637, 26.009687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576607, 32.474064, 26.187733>,  <37.690975, 32.231445, 26.484474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576607, 32.474064, 26.187733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163303, 0.793690, 0.585993,
		0.944236, 0.046400, -0.325983,
		-0.285919, 0.606550, -0.741854,
		37.490829, 32.656029, 25.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182755, 32.637550, 26.395735>,  <37.690975, 32.231445, 26.484474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182755, 32.637550, 26.395735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871014, 32.839996, 26.247971>,  <37.683968, 32.961464, 26.159313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871014, 32.839996, 26.247971>,  <38.182755, 32.637550, 26.395735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871014, 32.839996, 26.247971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173739, 0.740988, 0.648653,
		0.602019, 0.441348, -0.665421,
		-0.779351, 0.506111, -0.369410,
		37.637207, 32.991829, 26.137148>
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
