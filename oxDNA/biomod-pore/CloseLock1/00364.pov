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
	<24.145031, 34.534523, 34.599983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261385, 34.908493, 34.681282>,  <24.331198, 35.132874, 34.730061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.261385, 34.908493, 34.681282>,  <24.145031, 34.534523, 34.599983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.261385, 34.908493, 34.681282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286598, 0.117529, -0.950814,
		-0.912825, 0.334825, -0.233760,
		0.290883, 0.934922, 0.203244,
		24.348650, 35.188969, 34.742256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.704353, 35.102592, 34.146931>,  <24.145031, 34.534523, 34.599983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.704353, 35.102592, 34.146931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084099, 35.161682, 34.257843>,  <24.311947, 35.197136, 34.324390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084099, 35.161682, 34.257843>,  <23.704353, 35.102592, 34.146931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084099, 35.161682, 34.257843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284320, -0.028420, -0.958308,
		-0.133686, 0.988620, -0.068982,
		0.949363, 0.147726, 0.277285,
		24.368908, 35.206001, 34.341030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097940, 35.649662, 33.881134>,  <23.704353, 35.102592, 34.146931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.097940, 35.649662, 33.881134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384541, 35.384838, 33.969048>,  <24.556501, 35.225945, 34.021797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.384541, 35.384838, 33.969048>,  <24.097940, 35.649662, 33.881134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.384541, 35.384838, 33.969048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376970, 0.102368, -0.920551,
		0.586960, 0.742428, 0.322923,
		0.716500, -0.662058, 0.219787,
		24.599491, 35.186222, 34.034985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745586, 35.909672, 33.788857>,  <24.097940, 35.649662, 33.881134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745586, 35.909672, 33.788857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757235, 35.511646, 33.750908>,  <24.764223, 35.272831, 33.728138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757235, 35.511646, 33.750908>,  <24.745586, 35.909672, 33.788857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757235, 35.511646, 33.750908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280297, 0.099231, -0.954771,
		0.959472, 0.001211, 0.281803,
		0.029120, -0.995064, -0.094870,
		24.765970, 35.213127, 33.722446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.415257, 35.702675, 33.412930>,  <24.745586, 35.909672, 33.788857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.415257, 35.702675, 33.412930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179829, 35.387081, 33.342396>,  <25.038572, 35.197727, 33.300076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179829, 35.387081, 33.342396>,  <25.415257, 35.702675, 33.412930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179829, 35.387081, 33.342396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334087, -0.038742, -0.941746,
		0.736189, -0.613193, 0.286391,
		-0.588567, -0.788983, -0.176339,
		25.003258, 35.150387, 33.289494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748730, 35.241951, 33.016998>,  <25.415257, 35.702675, 33.412930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748730, 35.241951, 33.016998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363365, 35.149704, 32.962368>,  <25.132147, 35.094357, 32.929588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363365, 35.149704, 32.962368>,  <25.748730, 35.241951, 33.016998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363365, 35.149704, 32.962368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195578, -0.256449, -0.946564,
		0.183267, -0.938643, 0.292170,
		-0.963412, -0.230616, -0.136580,
		25.074341, 35.080521, 32.921394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631338, 34.519730, 32.781895>,  <25.748730, 35.241951, 33.016998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631338, 34.519730, 32.781895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326656, 34.738758, 32.643349>,  <25.143847, 34.870174, 32.560223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.326656, 34.738758, 32.643349>,  <25.631338, 34.519730, 32.781895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.326656, 34.738758, 32.643349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295977, -0.181481, -0.937797,
		-0.576371, -0.816841, -0.023833,
		-0.761705, 0.547573, -0.346366,
		25.098145, 34.903030, 32.539440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381266, 34.121265, 32.235828>,  <25.631338, 34.519730, 32.781895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381266, 34.121265, 32.235828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246368, 34.495609, 32.194958>,  <25.165430, 34.720215, 32.170433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.246368, 34.495609, 32.194958>,  <25.381266, 34.121265, 32.235828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246368, 34.495609, 32.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303113, 0.005185, -0.952940,
		-0.891285, -0.352344, -0.285419,
		-0.337243, 0.935856, -0.102179,
		25.145195, 34.776367, 32.164303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997749, 34.102768, 31.602072>,  <25.381266, 34.121265, 32.235828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997749, 34.102768, 31.602072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103155, 34.485771, 31.648956>,  <25.166399, 34.715572, 31.677088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103155, 34.485771, 31.648956>,  <24.997749, 34.102768, 31.602072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103155, 34.485771, 31.648956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180123, 0.070531, -0.981112,
		-0.947689, 0.279651, -0.153884,
		0.263515, 0.957508, 0.117213,
		25.182209, 34.773022, 31.684120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532890, 34.417580, 31.168312>,  <24.997749, 34.102768, 31.602072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532890, 34.417580, 31.168312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839914, 34.660271, 31.251005>,  <25.024128, 34.805885, 31.300621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839914, 34.660271, 31.251005>,  <24.532890, 34.417580, 31.168312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839914, 34.660271, 31.251005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214069, 0.061365, -0.974889,
		-0.604175, 0.792540, -0.082780,
		0.767559, 0.606725, 0.206733,
		25.070183, 34.842289, 31.313025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.462120, 35.004044, 30.616838>,  <24.532890, 34.417580, 31.168312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.462120, 35.004044, 30.616838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836111, 35.049580, 30.751219>,  <25.060505, 35.076900, 30.831846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.836111, 35.049580, 30.751219>,  <24.462120, 35.004044, 30.616838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.836111, 35.049580, 30.751219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314693, 0.170822, -0.933696,
		-0.163676, 0.978704, 0.123891,
		0.934975, 0.113836, 0.335951,
		25.116604, 35.083729, 30.852003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880482, 35.407963, 30.105312>,  <24.462120, 35.004044, 30.616838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880482, 35.407963, 30.105312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151773, 35.194958, 30.307871>,  <25.314548, 35.067154, 30.429405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151773, 35.194958, 30.307871>,  <24.880482, 35.407963, 30.105312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151773, 35.194958, 30.307871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474853, -0.208324, -0.855053,
		0.560819, 0.820387, 0.111572,
		0.678231, -0.532510, 0.506395,
		25.355244, 35.035206, 30.459789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410419, 35.576809, 29.800653>,  <24.880482, 35.407963, 30.105312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410419, 35.576809, 29.800653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525778, 35.229717, 29.962582>,  <25.594994, 35.021461, 30.059738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525778, 35.229717, 29.962582>,  <25.410419, 35.576809, 29.800653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525778, 35.229717, 29.962582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425358, -0.262674, -0.866068,
		0.857845, 0.421963, 0.293340,
		0.288396, -0.867727, 0.404819,
		25.612297, 34.969398, 30.084028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181726, 35.460331, 29.662592>,  <25.410419, 35.576809, 29.800653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181726, 35.460331, 29.662592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033516, 35.104004, 29.767775>,  <25.944590, 34.890205, 29.830883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033516, 35.104004, 29.767775>,  <26.181726, 35.460331, 29.662592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033516, 35.104004, 29.767775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367944, -0.400721, -0.839071,
		0.852835, -0.214145, 0.476250,
		-0.370527, -0.890822, 0.262955,
		25.922358, 34.836758, 29.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699928, 34.968559, 29.588003>,  <26.181726, 35.460331, 29.662592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699928, 34.968559, 29.588003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357798, 34.761597, 29.577379>,  <26.152519, 34.637417, 29.571005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357798, 34.761597, 29.577379>,  <26.699928, 34.968559, 29.588003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357798, 34.761597, 29.577379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273305, -0.407062, -0.871553,
		0.440138, -0.752721, 0.489581,
		-0.855326, -0.517409, -0.026559,
		26.101200, 34.606373, 29.569412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931324, 34.392944, 29.261566>,  <26.699928, 34.968559, 29.588003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931324, 34.392944, 29.261566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541016, 34.305489, 29.264769>,  <26.306829, 34.253014, 29.266691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.541016, 34.305489, 29.264769>,  <26.931324, 34.392944, 29.261566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.541016, 34.305489, 29.264769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130293, -0.610108, -0.781532,
		0.175759, -0.761554, 0.623814,
		-0.975773, -0.218640, 0.008007,
		26.248283, 34.239895, 29.267170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779284, 33.600090, 29.329388>,  <26.931324, 34.392944, 29.261566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779284, 33.600090, 29.329388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451223, 33.750580, 29.156965>,  <26.254387, 33.840874, 29.053511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451223, 33.750580, 29.156965>,  <26.779284, 33.600090, 29.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451223, 33.750580, 29.156965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219591, -0.488719, -0.844354,
		-0.528332, -0.787153, 0.318207,
		-0.820149, 0.376224, -0.431058,
		26.205179, 33.863445, 29.027647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335333, 33.067055, 29.055792>,  <26.779284, 33.600090, 29.329388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335333, 33.067055, 29.055792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202326, 33.374233, 28.836819>,  <26.122520, 33.558540, 28.705435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202326, 33.374233, 28.836819>,  <26.335333, 33.067055, 29.055792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202326, 33.374233, 28.836819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160427, -0.525946, -0.835251,
		-0.929352, -0.365560, 0.051686,
		-0.332518, 0.767951, -0.547434,
		26.102570, 33.604618, 28.672588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791405, 32.730682, 28.631130>,  <26.335333, 33.067055, 29.055792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791405, 32.730682, 28.631130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951883, 33.058651, 28.467781>,  <26.048170, 33.255432, 28.369772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951883, 33.058651, 28.467781>,  <25.791405, 32.730682, 28.631130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951883, 33.058651, 28.467781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177259, -0.506895, -0.843585,
		-0.898677, 0.266055, -0.348703,
		0.401196, 0.819922, -0.408375,
		26.072243, 33.304626, 28.345268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.511370, 32.728539, 27.965092>,  <25.791405, 32.730682, 28.631130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.511370, 32.728539, 27.965092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844557, 32.948132, 27.937422>,  <26.044470, 33.079887, 27.920820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844557, 32.948132, 27.937422>,  <25.511370, 32.728539, 27.965092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844557, 32.948132, 27.937422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330231, -0.593545, -0.733929,
		-0.443971, 0.588496, -0.675694,
		0.832969, 0.548979, -0.069177,
		26.094448, 33.112823, 27.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703396, 32.652622, 27.357042>,  <25.511370, 32.728539, 27.965092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703396, 32.652622, 27.357042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044760, 32.812256, 27.491159>,  <26.249578, 32.908035, 27.571630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.044760, 32.812256, 27.491159>,  <25.703396, 32.652622, 27.357042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.044760, 32.812256, 27.491159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507843, -0.491725, -0.707321,
		-0.117408, 0.773912, -0.622315,
		0.853412, 0.399083, 0.335293,
		26.300783, 32.931980, 27.591747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065880, 32.993378, 26.779663>,  <25.703396, 32.652622, 27.357042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065880, 32.993378, 26.779663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364658, 32.922871, 27.036098>,  <26.543926, 32.880566, 27.189960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364658, 32.922871, 27.036098>,  <26.065880, 32.993378, 26.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364658, 32.922871, 27.036098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495723, -0.494926, -0.713658,
		0.443088, 0.850869, -0.282303,
		0.746948, -0.176269, 0.641091,
		26.588743, 32.869991, 27.228426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786642, 33.213871, 26.467058>,  <26.065880, 32.993378, 26.779663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786642, 33.213871, 26.467058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871349, 32.961052, 26.765230>,  <26.922174, 32.809361, 26.944134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.871349, 32.961052, 26.765230>,  <26.786642, 33.213871, 26.467058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871349, 32.961052, 26.765230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656898, -0.472690, -0.587409,
		0.723629, 0.614067, 0.315091,
		0.211768, -0.632049, 0.745432,
		26.934879, 32.771439, 26.988859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377352, 33.211040, 26.586168>,  <26.786642, 33.213871, 26.467058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377352, 33.211040, 26.586168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314047, 32.856979, 26.761190>,  <27.276064, 32.644543, 26.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314047, 32.856979, 26.761190>,  <27.377352, 33.211040, 26.586168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314047, 32.856979, 26.761190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876845, -0.329733, -0.349884,
		0.453978, 0.328294, 0.828328,
		-0.158262, -0.885155, 0.437555,
		27.266569, 32.591434, 26.892456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062450, 33.052536, 26.829956>,  <27.377352, 33.211040, 26.586168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062450, 33.052536, 26.829956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843977, 32.717640, 26.840605>,  <27.712893, 32.516701, 26.846994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843977, 32.717640, 26.840605>,  <28.062450, 33.052536, 26.829956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843977, 32.717640, 26.840605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789591, -0.525189, -0.317370,
		0.279697, -0.152322, 0.947928,
		-0.546183, -0.837243, 0.026621,
		27.680122, 32.466469, 26.848591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209154, 33.255589, 26.153059>,  <28.062450, 33.052536, 26.829956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209154, 33.255589, 26.153059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542994, 33.035343, 26.159592>,  <28.743298, 32.903194, 26.163511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542994, 33.035343, 26.159592>,  <28.209154, 33.255589, 26.153059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542994, 33.035343, 26.159592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035604, 0.024335, -0.999070,
		0.549704, 0.834405, 0.039914,
		0.834600, -0.550614, 0.016331,
		28.793373, 32.870159, 26.164492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679546, 33.499336, 25.742191>,  <28.209154, 33.255589, 26.153059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679546, 33.499336, 25.742191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732689, 33.103123, 25.756023>,  <28.764574, 32.865395, 25.764322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732689, 33.103123, 25.756023>,  <28.679546, 33.499336, 25.742191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732689, 33.103123, 25.756023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120554, -0.050781, -0.991407,
		0.983776, 0.127546, -0.126159,
		0.132857, -0.990532, 0.034581,
		28.772547, 32.805962, 25.766397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250652, 33.230339, 25.242704>,  <28.679546, 33.499336, 25.742191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250652, 33.230339, 25.242704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982828, 32.941093, 25.310577>,  <28.822134, 32.767544, 25.351301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982828, 32.941093, 25.310577>,  <29.250652, 33.230339, 25.242704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982828, 32.941093, 25.310577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027984, -0.203727, -0.978627,
		0.742230, -0.659998, 0.116172,
		-0.669560, -0.723116, 0.169682,
		28.781960, 32.724159, 25.361483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828316, 32.689087, 24.989857>,  <29.250652, 33.230339, 25.242704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828316, 32.689087, 24.989857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011358, 33.038113, 25.058247>,  <30.121183, 33.247528, 25.099281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.011358, 33.038113, 25.058247>,  <29.828316, 32.689087, 24.989857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011358, 33.038113, 25.058247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440781, 0.055616, 0.895890,
		0.772211, -0.485327, 0.410059,
		0.457605, 0.872562, 0.170975,
		30.148640, 33.299881, 25.109539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232874, 32.580845, 25.677071>,  <29.828316, 32.689087, 24.989857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232874, 32.580845, 25.677071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039673, 32.902660, 25.538837>,  <29.923752, 33.095749, 25.455896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039673, 32.902660, 25.538837>,  <30.232874, 32.580845, 25.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039673, 32.902660, 25.538837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669885, -0.085357, 0.737542,
		0.563882, 0.587737, 0.580175,
		-0.483003, 0.804537, -0.345585,
		29.894772, 33.144020, 25.435162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265646, 33.233242, 26.000626>,  <30.232874, 32.580845, 25.677071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265646, 33.233242, 26.000626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615770, 33.281353, 26.187971>,  <30.825844, 33.310219, 26.300379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615770, 33.281353, 26.187971>,  <30.265646, 33.233242, 26.000626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615770, 33.281353, 26.187971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483441, 0.195880, 0.853180,
		0.010876, -0.973223, 0.229604,
		0.875309, 0.120279, 0.468366,
		30.878363, 33.317436, 26.328482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323576, 32.805660, 26.613941>,  <30.265646, 33.233242, 26.000626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323576, 32.805660, 26.613941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534611, 33.139366, 26.678005>,  <30.661232, 33.339588, 26.716444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534611, 33.139366, 26.678005>,  <30.323576, 32.805660, 26.613941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534611, 33.139366, 26.678005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640131, 0.266482, 0.720569,
		0.558466, -0.482686, 0.674633,
		0.527586, 0.834267, 0.160161,
		30.692886, 33.389645, 26.726053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699017, 32.965153, 27.272453>,  <30.323576, 32.805660, 26.613941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699017, 32.965153, 27.272453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564556, 33.310524, 27.121994>,  <30.483879, 33.517746, 27.031717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.564556, 33.310524, 27.121994>,  <30.699017, 32.965153, 27.272453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564556, 33.310524, 27.121994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670062, 0.061405, 0.739761,
		0.661830, 0.500715, 0.557911,
		-0.336151, 0.863431, -0.376150,
		30.463711, 33.569553, 27.009150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735903, 33.431881, 27.844847>,  <30.699017, 32.965153, 27.272453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735903, 33.431881, 27.844847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440771, 33.507542, 27.585669>,  <30.263693, 33.552937, 27.430162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440771, 33.507542, 27.585669>,  <30.735903, 33.431881, 27.844847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440771, 33.507542, 27.585669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626193, 0.166538, 0.761674,
		0.251977, 0.967723, -0.004433,
		-0.737828, 0.189148, -0.647946,
		30.219423, 33.564285, 27.391285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470758, 34.086132, 27.980764>,  <30.735903, 33.431881, 27.844847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470758, 34.086132, 27.980764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182940, 33.852173, 27.831018>,  <30.010248, 33.711800, 27.741171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182940, 33.852173, 27.831018>,  <30.470758, 34.086132, 27.980764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182940, 33.852173, 27.831018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569897, 0.189300, 0.799614,
		-0.396822, 0.788710, -0.469540,
		-0.719548, -0.584894, -0.374365,
		29.967075, 33.676704, 27.718708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959803, 34.621925, 27.918432>,  <30.470758, 34.086132, 27.980764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959803, 34.621925, 27.918432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833532, 34.250214, 27.995157>,  <29.757771, 34.027187, 28.041193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833532, 34.250214, 27.995157>,  <29.959803, 34.621925, 27.918432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833532, 34.250214, 27.995157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437435, 0.321910, 0.839657,
		-0.842021, 0.181152, -0.508118,
		-0.315674, -0.929278, 0.191813,
		29.738831, 33.971432, 28.052702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235723, 34.726677, 28.238918>,  <29.959803, 34.621925, 27.918432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235723, 34.726677, 28.238918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343019, 34.346233, 28.300158>,  <29.407396, 34.117966, 28.336901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343019, 34.346233, 28.300158>,  <29.235723, 34.726677, 28.238918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343019, 34.346233, 28.300158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613839, -0.046266, 0.788074,
		-0.742462, -0.305368, -0.596239,
		0.268238, -0.951110, 0.153096,
		29.423491, 34.060902, 28.346087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587368, 34.286949, 28.271160>,  <29.235723, 34.726677, 28.238918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587368, 34.286949, 28.271160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886497, 34.106228, 28.465740>,  <29.065975, 33.997795, 28.582489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886497, 34.106228, 28.465740>,  <28.587368, 34.286949, 28.271160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886497, 34.106228, 28.465740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530180, 0.034592, 0.847179,
		-0.399586, -0.891446, -0.213669,
		0.747823, -0.451804, 0.486449,
		29.110846, 33.970688, 28.611675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229322, 33.760155, 28.699364>,  <28.587368, 34.286949, 28.271160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229322, 33.760155, 28.699364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581770, 33.870171, 28.853235>,  <28.793240, 33.936180, 28.945559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581770, 33.870171, 28.853235>,  <28.229322, 33.760155, 28.699364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581770, 33.870171, 28.853235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397967, -0.008126, 0.917364,
		0.255438, -0.961398, 0.102297,
		0.881121, 0.275040, 0.384681,
		28.846106, 33.952682, 28.968639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251740, 33.367706, 29.332569>,  <28.229322, 33.760155, 28.699364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251740, 33.367706, 29.332569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508766, 33.671730, 29.371372>,  <28.662983, 33.854145, 29.394653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508766, 33.671730, 29.371372>,  <28.251740, 33.367706, 29.332569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508766, 33.671730, 29.371372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224467, 0.065679, 0.972266,
		0.732612, -0.646521, 0.212813,
		0.642568, 0.760064, 0.097005,
		28.701536, 33.899750, 29.400475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342625, 33.363560, 30.013317>,  <28.251740, 33.367706, 29.332569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342625, 33.363560, 30.013317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557022, 33.694366, 29.945490>,  <28.685661, 33.892849, 29.904793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.557022, 33.694366, 29.945490>,  <28.342625, 33.363560, 30.013317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557022, 33.694366, 29.945490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138386, 0.112070, 0.984017,
		0.832803, -0.550893, -0.054379,
		0.535993, 0.827017, -0.169569,
		28.717821, 33.942471, 29.894619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937441, 33.368763, 30.417669>,  <28.342625, 33.363560, 30.013317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937441, 33.368763, 30.417669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867901, 33.751755, 30.325571>,  <28.826178, 33.981548, 30.270311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867901, 33.751755, 30.325571>,  <28.937441, 33.368763, 30.417669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867901, 33.751755, 30.325571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169816, 0.201157, 0.964727,
		0.970020, 0.206818, 0.127624,
		-0.173850, 0.957477, -0.230247,
		28.815746, 34.038998, 30.256496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173233, 33.714256, 30.969559>,  <28.937441, 33.368763, 30.417669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173233, 33.714256, 30.969559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927128, 33.957336, 30.768702>,  <28.779465, 34.103184, 30.648188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927128, 33.957336, 30.768702>,  <29.173233, 33.714256, 30.969559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927128, 33.957336, 30.768702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385931, 0.323228, 0.864050,
		0.687392, 0.725411, 0.035661,
		-0.615264, 0.607703, -0.502142,
		28.742548, 34.139648, 30.618059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338531, 34.273090, 31.250786>,  <29.173233, 33.714256, 30.969559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338531, 34.273090, 31.250786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971220, 34.288532, 31.093166>,  <28.750834, 34.297798, 30.998594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971220, 34.288532, 31.093166>,  <29.338531, 34.273090, 31.250786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971220, 34.288532, 31.093166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380186, 0.191914, 0.904781,
		0.110556, 0.980652, -0.161552,
		-0.918279, 0.038609, -0.394047,
		28.695736, 34.300114, 30.974953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109957, 34.635635, 31.722755>,  <29.338531, 34.273090, 31.250786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109957, 34.635635, 31.722755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799400, 34.496414, 31.512585>,  <28.613066, 34.412880, 31.386482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799400, 34.496414, 31.512585>,  <29.109957, 34.635635, 31.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799400, 34.496414, 31.512585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601202, 0.158819, 0.783156,
		-0.189132, 0.923924, -0.332556,
		-0.776393, -0.348053, -0.525427,
		28.566483, 34.391998, 31.354958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521173, 35.185257, 31.741220>,  <29.109957, 34.635635, 31.722755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521173, 35.185257, 31.741220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325911, 34.849304, 31.646307>,  <28.208754, 34.647732, 31.589359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325911, 34.849304, 31.646307>,  <28.521173, 35.185257, 31.741220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325911, 34.849304, 31.646307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613997, 0.137272, 0.777279,
		-0.620251, 0.525124, -0.582695,
		-0.488156, -0.839882, -0.237282,
		28.179464, 34.597340, 31.575123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745586, 35.368435, 31.847168>,  <28.521173, 35.185257, 31.741220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745586, 35.368435, 31.847168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779289, 34.970032, 31.835394>,  <27.799511, 34.730991, 31.828329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779289, 34.970032, 31.835394>,  <27.745586, 35.368435, 31.847168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779289, 34.970032, 31.835394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593114, -0.073865, 0.801723,
		-0.800698, -0.050092, -0.596970,
		0.084255, -0.996009, -0.029433,
		27.804565, 34.671230, 31.826565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079742, 35.153358, 32.033051>,  <27.745586, 35.368435, 31.847168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079742, 35.153358, 32.033051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290607, 34.819214, 32.095375>,  <27.417126, 34.618729, 32.132771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290607, 34.819214, 32.095375>,  <27.079742, 35.153358, 32.033051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290607, 34.819214, 32.095375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603345, -0.238828, 0.760878,
		-0.598394, -0.495113, -0.629910,
		0.527161, -0.835359, 0.155810,
		27.448755, 34.568607, 32.142117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632168, 34.670670, 32.351574>,  <27.079742, 35.153358, 32.033051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632168, 34.670670, 32.351574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982574, 34.502556, 32.446194>,  <27.192818, 34.401688, 32.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982574, 34.502556, 32.446194>,  <26.632168, 34.670670, 32.351574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982574, 34.502556, 32.446194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411042, -0.394092, 0.822031,
		-0.252264, -0.817345, -0.517986,
		0.876018, -0.420283, 0.236548,
		27.245380, 34.376469, 32.517159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486801, 33.904232, 32.585373>,  <26.632168, 34.670670, 32.351574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486801, 33.904232, 32.585373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836475, 34.032585, 32.731155>,  <27.046280, 34.109596, 32.818626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836475, 34.032585, 32.731155>,  <26.486801, 33.904232, 32.585373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836475, 34.032585, 32.731155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301773, -0.229019, 0.925464,
		0.380433, -0.919013, -0.103372,
		0.874187, 0.320882, 0.364460,
		27.098732, 34.128849, 32.840492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879021, 33.459335, 33.040733>,  <26.486801, 33.904232, 32.585373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879021, 33.459335, 33.040733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017618, 33.809204, 33.176319>,  <27.100777, 34.019123, 33.257671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017618, 33.809204, 33.176319>,  <26.879021, 33.459335, 33.040733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017618, 33.809204, 33.176319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033391, -0.349616, 0.936298,
		0.937458, -0.335739, -0.091933,
		0.346493, 0.874670, 0.338962,
		27.121567, 34.071606, 33.278008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295668, 33.267124, 33.608646>,  <26.879021, 33.459335, 33.040733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295668, 33.267124, 33.608646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201794, 33.655754, 33.621094>,  <27.145470, 33.888931, 33.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201794, 33.655754, 33.621094>,  <27.295668, 33.267124, 33.608646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201794, 33.655754, 33.621094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427615, -0.131930, 0.894281,
		0.872965, 0.196568, 0.446422,
		-0.234684, 0.971573, 0.031115,
		27.131388, 33.947227, 33.630428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544867, 33.533871, 34.214470>,  <27.295668, 33.267124, 33.608646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544867, 33.533871, 34.214470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238855, 33.769966, 34.111435>,  <27.055248, 33.911625, 34.049614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238855, 33.769966, 34.111435>,  <27.544867, 33.533871, 34.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238855, 33.769966, 34.111435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455953, -0.213955, 0.863904,
		0.454800, 0.778356, 0.432803,
		-0.765026, 0.590241, -0.257587,
		27.009348, 33.947037, 34.034161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392796, 33.881176, 34.814377>,  <27.544867, 33.533871, 34.214470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392796, 33.881176, 34.814377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063379, 33.931847, 34.593204>,  <26.865730, 33.962250, 34.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063379, 33.931847, 34.593204>,  <27.392796, 33.881176, 34.814377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063379, 33.931847, 34.593204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561342, -0.322397, 0.762204,
		-0.081706, 0.938090, 0.336618,
		-0.823541, 0.126681, -0.552931,
		26.816317, 33.969852, 34.427326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942032, 34.167320, 35.288029>,  <27.392796, 33.881176, 34.814377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942032, 34.167320, 35.288029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727472, 34.000259, 34.994678>,  <26.598736, 33.900024, 34.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727472, 34.000259, 34.994678>,  <26.942032, 34.167320, 35.288029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727472, 34.000259, 34.994678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609735, -0.409036, 0.678905,
		-0.583523, 0.811331, -0.035249,
		-0.536399, -0.417649, -0.733379,
		26.566553, 33.874966, 34.774666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207302, 34.859482, 35.528946>,  <26.942032, 34.167320, 35.288029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207302, 34.859482, 35.528946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271433, 34.513828, 35.719765>,  <27.309912, 34.306438, 35.834255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271433, 34.513828, 35.719765>,  <27.207302, 34.859482, 35.528946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271433, 34.513828, 35.719765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838117, 0.374472, 0.396648,
		-0.521396, 0.336226, 0.784282,
		0.160329, -0.864131, 0.477045,
		27.319532, 34.254589, 35.862877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417070, 34.894314, 36.323746>,  <27.207302, 34.859482, 35.528946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417070, 34.894314, 36.323746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597584, 34.570557, 36.173428>,  <27.705893, 34.376301, 36.083237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597584, 34.570557, 36.173428>,  <27.417070, 34.894314, 36.323746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597584, 34.570557, 36.173428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878075, 0.327655, 0.348749,
		-0.159142, -0.487366, 0.858574,
		0.451285, -0.809393, -0.375800,
		27.732969, 34.327740, 36.060688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787970, 34.586597, 36.939274>,  <27.417070, 34.894314, 36.323746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787970, 34.586597, 36.939274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979258, 34.518597, 36.594624>,  <28.094030, 34.477798, 36.387833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.979258, 34.518597, 36.594624>,  <27.787970, 34.586597, 36.939274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979258, 34.518597, 36.594624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836350, 0.387535, 0.387730,
		0.267998, -0.906044, 0.327507,
		0.478221, -0.170000, -0.861629,
		28.122725, 34.467598, 36.336136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499908, 34.215900, 36.998161>,  <27.787970, 34.586597, 36.939274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499908, 34.215900, 36.998161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499325, 34.470806, 36.689903>,  <28.498974, 34.623749, 36.504948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499325, 34.470806, 36.689903>,  <28.499908, 34.215900, 36.998161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499325, 34.470806, 36.689903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754960, 0.506068, 0.417050,
		0.655770, -0.581196, -0.481848,
		-0.001460, 0.637265, -0.770643,
		28.498886, 34.661987, 36.458710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258430, 34.443245, 36.688435>,  <28.499908, 34.215900, 36.998161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258430, 34.443245, 36.688435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023224, 34.738243, 36.555573>,  <28.882099, 34.915241, 36.475853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023224, 34.738243, 36.555573>,  <29.258430, 34.443245, 36.688435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023224, 34.738243, 36.555573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713077, 0.666499, 0.217486,
		0.381779, -0.108969, -0.917807,
		-0.588018, 0.737499, -0.332159,
		28.846819, 34.959492, 36.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513657, 34.706188, 36.055733>,  <29.258430, 34.443245, 36.688435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513657, 34.706188, 36.055733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307112, 34.972176, 36.271580>,  <29.183186, 35.131767, 36.401089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.307112, 34.972176, 36.271580>,  <29.513657, 34.706188, 36.055733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307112, 34.972176, 36.271580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854901, 0.437170, 0.279333,
		-0.050159, 0.605559, -0.794218,
		-0.516361, 0.664966, 0.539621,
		29.152203, 35.171665, 36.433468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944754, 35.213356, 36.071030>,  <29.513657, 34.706188, 36.055733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944754, 35.213356, 36.071030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674332, 35.323696, 36.344337>,  <29.512079, 35.389900, 36.508320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674332, 35.323696, 36.344337>,  <29.944754, 35.213356, 36.071030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674332, 35.323696, 36.344337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664884, 0.628073, 0.404294,
		-0.317616, 0.727618, -0.608023,
		-0.676055, 0.275855, 0.683267,
		29.471516, 35.406452, 36.549316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741854, 35.873318, 35.966209>,  <29.944754, 35.213356, 36.071030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741854, 35.873318, 35.966209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741453, 35.735580, 36.341747>,  <29.741213, 35.652939, 36.567070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741453, 35.735580, 36.341747>,  <29.741854, 35.873318, 35.966209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741453, 35.735580, 36.341747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722369, 0.648967, 0.238799,
		-0.691507, 0.678430, 0.248094,
		-0.001003, -0.344347, 0.938842,
		29.741152, 35.632275, 36.623402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664486, 36.419678, 36.431614>,  <29.741854, 35.873318, 35.966209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664486, 36.419678, 36.431614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819180, 36.134075, 36.665066>,  <29.911995, 35.962711, 36.805138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819180, 36.134075, 36.665066>,  <29.664486, 36.419678, 36.431614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819180, 36.134075, 36.665066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693048, 0.642541, 0.326842,
		-0.608376, 0.278084, 0.743336,
		0.386734, -0.714010, 0.583632,
		29.935200, 35.919872, 36.840157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694807, 36.706673, 37.020184>,  <29.664486, 36.419678, 36.431614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694807, 36.706673, 37.020184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980623, 36.427700, 37.042156>,  <30.152113, 36.260315, 37.055340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980623, 36.427700, 37.042156>,  <29.694807, 36.706673, 37.020184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980623, 36.427700, 37.042156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623215, 0.670237, 0.402972,
		-0.317861, -0.253708, 0.913563,
		0.714540, -0.697435, 0.054928,
		30.194984, 36.218472, 37.058636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912161, 36.684502, 37.743797>,  <29.694807, 36.706673, 37.020184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912161, 36.684502, 37.743797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196125, 36.546371, 37.498268>,  <30.366503, 36.463493, 37.350952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196125, 36.546371, 37.498268>,  <29.912161, 36.684502, 37.743797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196125, 36.546371, 37.498268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648400, 0.660721, 0.378188,
		0.274966, -0.666481, 0.692963,
		0.709910, -0.345328, -0.613822,
		30.409098, 36.442772, 37.314121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458359, 36.703545, 38.211903>,  <29.912161, 36.684502, 37.743797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458359, 36.703545, 38.211903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603504, 36.669998, 37.840679>,  <30.690592, 36.649868, 37.617943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603504, 36.669998, 37.840679>,  <30.458359, 36.703545, 38.211903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603504, 36.669998, 37.840679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769090, 0.589295, 0.247451,
		0.526148, -0.803553, 0.278335,
		0.362862, -0.083869, -0.928061,
		30.712362, 36.644836, 37.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119247, 36.603874, 38.356850>,  <30.458359, 36.703545, 38.211903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119247, 36.603874, 38.356850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113014, 36.730000, 37.977306>,  <31.109274, 36.805676, 37.749580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113014, 36.730000, 37.977306>,  <31.119247, 36.603874, 38.356850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113014, 36.730000, 37.977306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866782, 0.477329, 0.144384,
		0.498444, -0.820205, -0.280745,
		-0.015583, 0.315312, -0.948860,
		31.108339, 36.824593, 37.692650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813892, 36.539326, 38.076977>,  <31.119247, 36.603874, 38.356850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813892, 36.539326, 38.076977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640318, 36.807224, 37.835930>,  <31.536173, 36.967964, 37.691303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640318, 36.807224, 37.835930>,  <31.813892, 36.539326, 38.076977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640318, 36.807224, 37.835930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700686, 0.671333, 0.241560,
		0.566339, -0.317424, -0.760593,
		-0.433935, 0.669742, -0.602616,
		31.510138, 37.008148, 37.655144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368038, 36.983200, 37.820858>,  <31.813892, 36.539326, 38.076977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368038, 36.983200, 37.820858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031597, 37.183849, 37.739941>,  <31.829733, 37.304237, 37.691391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031597, 37.183849, 37.739941>,  <32.368038, 36.983200, 37.820858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031597, 37.183849, 37.739941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432177, 0.848178, 0.306296,
		0.325224, 0.170200, -0.930194,
		-0.841102, 0.501624, -0.202291,
		31.779266, 37.334335, 37.679253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601032, 37.634380, 37.389175>,  <32.368038, 36.983200, 37.820858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601032, 37.634380, 37.389175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244030, 37.707687, 37.554024>,  <32.029827, 37.751671, 37.652935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244030, 37.707687, 37.554024>,  <32.601032, 37.634380, 37.389175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244030, 37.707687, 37.554024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385146, 0.785184, 0.484921,
		-0.234726, 0.591523, -0.771365,
		-0.892506, 0.183264, 0.412126,
		31.976278, 37.762669, 37.677662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516994, 38.300537, 37.260712>,  <32.601032, 37.634380, 37.389175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516994, 38.300537, 37.260712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273277, 38.206604, 37.563663>,  <32.127048, 38.150242, 37.745434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273277, 38.206604, 37.563663>,  <32.516994, 38.300537, 37.260712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273277, 38.206604, 37.563663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337603, 0.787421, 0.515745,
		-0.717488, 0.569931, -0.400487,
		-0.609291, -0.234835, 0.757375,
		32.090488, 38.136154, 37.790874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291821, 38.949390, 37.452984>,  <32.516994, 38.300537, 37.260712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291821, 38.949390, 37.452984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241257, 38.683769, 37.747753>,  <32.210918, 38.524395, 37.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241257, 38.683769, 37.747753>,  <32.291821, 38.949390, 37.452984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241257, 38.683769, 37.747753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287105, 0.686595, 0.667950,
		-0.949521, 0.296010, 0.103861,
		-0.126410, -0.664052, 0.736923,
		32.203335, 38.484554, 37.968830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141083, 39.369148, 38.019085>,  <32.291821, 38.949390, 37.452984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141083, 39.369148, 38.019085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288372, 39.023933, 38.157410>,  <32.376747, 38.816807, 38.240406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288372, 39.023933, 38.157410>,  <32.141083, 39.369148, 38.019085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288372, 39.023933, 38.157410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291908, 0.460453, 0.838315,
		-0.882723, -0.207744, 0.421476,
		0.368225, -0.863033, 0.345811,
		32.398838, 38.765022, 38.261154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874405, 39.324921, 38.697136>,  <32.141083, 39.369148, 38.019085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874405, 39.324921, 38.697136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192848, 39.083126, 38.708492>,  <32.383915, 38.938049, 38.715305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192848, 39.083126, 38.708492>,  <31.874405, 39.324921, 38.697136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192848, 39.083126, 38.708492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304980, 0.441293, 0.843947,
		-0.522685, -0.663214, 0.535674,
		0.796107, -0.604489, 0.028390,
		32.431679, 38.901779, 38.717010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964342, 39.322163, 39.330730>,  <31.874405, 39.324921, 38.697136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964342, 39.322163, 39.330730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 39.156185, 39.209141>,  <32.513184, 39.056599, 39.136189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307369, 39.156185, 39.209141>,  <31.964342, 39.322163, 39.330730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307369, 39.156185, 39.209141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374105, 0.097570, 0.922239,
		-0.353022, -0.904599, 0.238907,
		0.857567, -0.414947, -0.303971,
		32.564640, 39.031700, 39.117950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170425, 38.831326, 39.866272>,  <31.964342, 39.322163, 39.330730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170425, 38.831326, 39.866272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485813, 38.974213, 39.665985>,  <32.675045, 39.059944, 39.545815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485813, 38.974213, 39.665985>,  <32.170425, 38.831326, 39.866272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485813, 38.974213, 39.665985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481263, 0.148646, 0.863881,
		0.383019, -0.922119, -0.054711,
		0.788468, 0.357214, -0.500716,
		32.722355, 39.081375, 39.515770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712772, 38.379910, 40.012680>,  <32.170425, 38.831326, 39.866272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712772, 38.379910, 40.012680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866219, 38.731026, 39.897911>,  <32.958286, 38.941696, 39.829048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866219, 38.731026, 39.897911>,  <32.712772, 38.379910, 40.012680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866219, 38.731026, 39.897911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452102, 0.092408, 0.887167,
		0.805260, -0.470047, -0.361402,
		0.383613, 0.877791, -0.286921,
		32.981304, 38.994362, 39.811836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407085, 38.364536, 40.258102>,  <32.712772, 38.379910, 40.012680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407085, 38.364536, 40.258102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279217, 38.740704, 40.211742>,  <33.202496, 38.966404, 40.183926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279217, 38.740704, 40.211742>,  <33.407085, 38.364536, 40.258102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279217, 38.740704, 40.211742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379363, 0.239110, 0.893818,
		0.868272, 0.241756, -0.433194,
		-0.319667, 0.940415, -0.115899,
		33.183315, 39.022827, 40.176971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736362, 38.692726, 40.812431>,  <33.407085, 38.364536, 40.258102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736362, 38.692726, 40.812431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503635, 38.988773, 40.677547>,  <33.363998, 39.166401, 40.596619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503635, 38.988773, 40.677547>,  <33.736362, 38.692726, 40.812431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503635, 38.988773, 40.677547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111463, 0.483257, 0.868354,
		0.805646, 0.467637, -0.363663,
		-0.581817, 0.740121, -0.337210,
		33.329090, 39.210808, 40.576385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082352, 39.421135, 41.034573>,  <33.736362, 38.692726, 40.812431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082352, 39.421135, 41.034573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703205, 39.519348, 40.953316>,  <33.475716, 39.578274, 40.904560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703205, 39.519348, 40.953316>,  <34.082352, 39.421135, 41.034573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703205, 39.519348, 40.953316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081479, 0.429548, 0.899361,
		0.308079, 0.869024, -0.387148,
		-0.947865, 0.245530, -0.203142,
		33.418846, 39.593006, 40.892372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966389, 40.128902, 41.180729>,  <34.082352, 39.421135, 41.034573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966389, 40.128902, 41.180729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600826, 39.966541, 41.182232>,  <33.381489, 39.869125, 41.183132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600826, 39.966541, 41.182232>,  <33.966389, 40.128902, 41.180729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600826, 39.966541, 41.182232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250759, 0.571821, 0.781115,
		-0.319203, 0.712927, -0.624376,
		-0.913909, -0.405902, 0.003754,
		33.326653, 39.844772, 41.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467346, 40.668312, 41.226616>,  <33.966389, 40.128902, 41.180729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467346, 40.668312, 41.226616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325615, 40.336315, 41.398922>,  <33.240574, 40.137115, 41.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325615, 40.336315, 41.398922>,  <33.467346, 40.668312, 41.226616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325615, 40.336315, 41.398922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122036, 0.497751, 0.858691,
		-0.927122, 0.251694, -0.277659,
		-0.354333, -0.829996, 0.430761,
		33.219315, 40.087315, 41.528149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986546, 40.973221, 41.622974>,  <33.467346, 40.668312, 41.226616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986546, 40.973221, 41.622974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993473, 40.596260, 41.756588>,  <32.997631, 40.370083, 41.836758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993473, 40.596260, 41.756588>,  <32.986546, 40.973221, 41.622974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993473, 40.596260, 41.756588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324776, 0.310667, 0.893312,
		-0.945632, -0.123961, -0.300688,
		0.017322, -0.942401, 0.334037,
		32.998669, 40.313541, 41.856800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451733, 41.015339, 42.109028>,  <32.986546, 40.973221, 41.622974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451733, 41.015339, 42.109028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654251, 40.679050, 42.185825>,  <32.775761, 40.477280, 42.231903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654251, 40.679050, 42.185825>,  <32.451733, 41.015339, 42.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654251, 40.679050, 42.185825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, 0.171418, 0.981307,
		-0.857913, -0.513624, 0.013241,
		0.506293, -0.840717, 0.191994,
		32.806137, 40.426834, 42.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131424, 40.688717, 42.684799>,  <32.451733, 41.015339, 42.109028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131424, 40.688717, 42.684799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501221, 40.536545, 42.675076>,  <32.723099, 40.445240, 42.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501221, 40.536545, 42.675076>,  <32.131424, 40.688717, 42.684799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501221, 40.536545, 42.675076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099132, 0.178338, 0.978963,
		-0.368096, -0.907449, 0.202585,
		0.924488, -0.380435, -0.024312,
		32.778568, 40.422413, 42.667782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172340, 40.411121, 43.334759>,  <32.131424, 40.688717, 42.684799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172340, 40.411121, 43.334759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542633, 40.467602, 43.194424>,  <32.764809, 40.501492, 43.110222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542633, 40.467602, 43.194424>,  <32.172340, 40.411121, 43.334759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542633, 40.467602, 43.194424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223738, 0.543441, 0.809082,
		0.304904, -0.827486, 0.471487,
		0.925729, 0.141203, -0.350837,
		32.820351, 40.509964, 43.089172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615479, 40.318790, 43.957100>,  <32.172340, 40.411121, 43.334759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615479, 40.318790, 43.957100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805664, 40.515999, 43.665657>,  <32.919777, 40.634323, 43.490791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805664, 40.515999, 43.665657>,  <32.615479, 40.318790, 43.957100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805664, 40.515999, 43.665657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346371, 0.656403, 0.670195,
		0.808679, -0.571021, 0.141328,
		0.475464, 0.493021, -0.728605,
		32.948303, 40.663906, 43.447075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239262, 40.474701, 44.310627>,  <32.615479, 40.318790, 43.957100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239262, 40.474701, 44.310627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241547, 40.735950, 44.007736>,  <33.242916, 40.892700, 43.826000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241547, 40.735950, 44.007736>,  <33.239262, 40.474701, 44.310627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241547, 40.735950, 44.007736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183287, 0.743730, 0.642862,
		0.983043, -0.142462, -0.115462,
		0.005711, 0.653124, -0.757230,
		33.243259, 40.931889, 43.780567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890373, 40.758869, 44.273346>,  <33.239262, 40.474701, 44.310627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890373, 40.758869, 44.273346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641121, 41.018208, 44.098370>,  <33.491570, 41.173813, 43.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641121, 41.018208, 44.098370>,  <33.890373, 40.758869, 44.273346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641121, 41.018208, 44.098370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178046, 0.662205, 0.727862,
		0.761584, 0.375667, -0.528075,
		-0.623128, 0.648350, -0.437439,
		33.454182, 41.212711, 43.967136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293320, 41.310780, 44.190968>,  <33.890373, 40.758869, 44.273346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293320, 41.310780, 44.190968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915230, 41.438965, 44.166161>,  <33.688374, 41.515877, 44.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915230, 41.438965, 44.166161>,  <34.293320, 41.310780, 44.190968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915230, 41.438965, 44.166161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149599, 0.594204, 0.790279,
		0.290108, 0.737716, -0.609600,
		-0.945229, 0.320462, -0.062022,
		33.631660, 41.535103, 44.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379791, 41.924938, 44.263855>,  <34.293320, 41.310780, 44.190968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379791, 41.924938, 44.263855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990570, 41.908455, 44.354610>,  <33.757038, 41.898563, 44.409065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990570, 41.908455, 44.354610>,  <34.379791, 41.924938, 44.263855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990570, 41.908455, 44.354610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182395, 0.464488, 0.866593,
		-0.141099, 0.884620, -0.444453,
		-0.973048, -0.041209, 0.226889,
		33.698654, 41.896091, 44.422676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156044, 42.590866, 44.449261>,  <34.379791, 41.924938, 44.263855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156044, 42.590866, 44.449261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896626, 42.343605, 44.626923>,  <33.740974, 42.195248, 44.733521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896626, 42.343605, 44.626923>,  <34.156044, 42.590866, 44.449261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896626, 42.343605, 44.626923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128676, 0.486085, 0.864387,
		-0.750218, 0.617750, -0.235709,
		-0.648549, -0.618148, 0.444159,
		33.702061, 42.158161, 44.760170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858547, 43.028564, 44.866161>,  <34.156044, 42.590866, 44.449261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858547, 43.028564, 44.866161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 42.687359, 45.033314>,  <33.658466, 42.482635, 45.133606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 42.687359, 45.033314>,  <33.858547, 43.028564, 44.866161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733498, 42.687359, 45.033314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018280, 0.445256, 0.895217,
		-0.949701, 0.272228, -0.154791,
		-0.312624, -0.853018, 0.417883,
		33.639709, 42.431454, 45.158680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320477, 43.198719, 45.296146>,  <33.858547, 43.028564, 44.866161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320477, 43.198719, 45.296146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408524, 42.836334, 45.440800>,  <33.461353, 42.618904, 45.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408524, 42.836334, 45.440800>,  <33.320477, 43.198719, 45.296146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408524, 42.836334, 45.440800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017157, 0.367074, 0.930034,
		-0.975322, -0.210923, 0.065257,
		0.220120, -0.905963, 0.361634,
		33.474560, 42.564545, 45.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914459, 43.028526, 45.908665>,  <33.320477, 43.198719, 45.296146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914459, 43.028526, 45.908665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234406, 42.791092, 45.944153>,  <33.426373, 42.648632, 45.965446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234406, 42.791092, 45.944153>,  <32.914459, 43.028526, 45.908665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234406, 42.791092, 45.944153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001817, 0.145424, 0.989368,
		-0.600177, -0.791522, 0.115242,
		0.799865, -0.593586, 0.088718,
		33.474365, 42.613018, 45.970768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763573, 42.618126, 46.580452>,  <32.914459, 43.028526, 45.908665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763573, 42.618126, 46.580452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154812, 42.554195, 46.527122>,  <33.389557, 42.515839, 46.495125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154812, 42.554195, 46.527122>,  <32.763573, 42.618126, 46.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154812, 42.554195, 46.527122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166727, 0.218224, 0.961551,
		-0.124584, -0.962722, 0.240092,
		0.978101, -0.159824, -0.133324,
		33.448242, 42.506248, 46.487125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007126, 42.148026, 47.171425>,  <32.763573, 42.618126, 46.580452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007126, 42.148026, 47.171425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328053, 42.334011, 47.021706>,  <33.520611, 42.445602, 46.931873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328053, 42.334011, 47.021706>,  <33.007126, 42.148026, 47.171425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328053, 42.334011, 47.021706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326077, 0.183817, 0.927300,
		0.499960, -0.866039, -0.004133,
		0.802318, 0.464960, -0.374296,
		33.568748, 42.473499, 46.909416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622723, 42.027641, 47.490894>,  <33.007126, 42.148026, 47.171425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622723, 42.027641, 47.490894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670975, 42.386414, 47.320736>,  <33.699928, 42.601677, 47.218639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670975, 42.386414, 47.320736>,  <33.622723, 42.027641, 47.490894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670975, 42.386414, 47.320736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151350, 0.406896, 0.900849,
		0.981092, -0.173055, -0.086666,
		0.120633, 0.896932, -0.425395,
		33.707165, 42.655495, 47.193119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014717, 42.272823, 47.994915>,  <33.622723, 42.027641, 47.490894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014717, 42.272823, 47.994915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864079, 42.567242, 47.769913>,  <33.773693, 42.743893, 47.634911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864079, 42.567242, 47.769913>,  <34.014717, 42.272823, 47.994915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864079, 42.567242, 47.769913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048465, 0.590727, 0.805415,
		0.925108, 0.330580, -0.186795,
		-0.376599, 0.736042, -0.562508,
		33.751099, 42.788055, 47.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419701, 42.807678, 48.169617>,  <34.014717, 42.272823, 47.994915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419701, 42.807678, 48.169617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112209, 43.018456, 48.024624>,  <33.927715, 43.144920, 47.937630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112209, 43.018456, 48.024624>,  <34.419701, 42.807678, 48.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112209, 43.018456, 48.024624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003992, 0.562782, 0.826596,
		0.639565, 0.636873, -0.430522,
		-0.768727, 0.526943, -0.362478,
		33.881592, 43.176537, 47.915882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504936, 43.431202, 48.468380>,  <34.419701, 42.807678, 48.169617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504936, 43.431202, 48.468380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127529, 43.472622, 48.342495>,  <33.901085, 43.497475, 48.266964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127529, 43.472622, 48.342495>,  <34.504936, 43.431202, 48.468380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127529, 43.472622, 48.342495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178765, 0.640637, 0.746745,
		0.278945, 0.760829, -0.585943,
		-0.943521, 0.103554, -0.314712,
		33.844471, 43.503689, 48.248081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330811, 44.102661, 48.537304>,  <34.504936, 43.431202, 48.468380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330811, 44.102661, 48.537304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973206, 43.924255, 48.520233>,  <33.758644, 43.817211, 48.509991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973206, 43.924255, 48.520233>,  <34.330811, 44.102661, 48.537304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973206, 43.924255, 48.520233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283658, 0.489681, 0.824470,
		-0.346825, 0.749189, -0.564294,
		-0.894008, -0.446013, -0.042680,
		33.705002, 43.790451, 48.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862892, 44.687523, 48.684082>,  <34.330811, 44.102661, 48.537304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862892, 44.687523, 48.684082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679947, 44.335197, 48.733051>,  <33.570179, 44.123802, 48.762432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679947, 44.335197, 48.733051>,  <33.862892, 44.687523, 48.684082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679947, 44.335197, 48.733051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365175, 0.311551, 0.877259,
		-0.810843, 0.356519, -0.464143,
		-0.457364, -0.880813, 0.122427,
		33.542736, 44.070953, 48.769779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059113, 44.585510, 48.672802>,  <33.862892, 44.687523, 48.684082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059113, 44.585510, 48.672802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279118, 44.336796, 48.895824>,  <33.411121, 44.187569, 49.029636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279118, 44.336796, 48.895824>,  <33.059113, 44.585510, 48.672802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279118, 44.336796, 48.895824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436277, 0.355359, 0.826669,
		-0.712143, -0.697929, -0.075818,
		0.550013, -0.621784, 0.557557,
		33.444122, 44.150261, 49.063091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628166, 44.056419, 49.090065>,  <33.059113, 44.585510, 48.672802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628166, 44.056419, 49.090065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969254, 44.193245, 49.247982>,  <33.173904, 44.275341, 49.342731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969254, 44.193245, 49.247982>,  <32.628166, 44.056419, 49.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969254, 44.193245, 49.247982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484896, 0.237241, 0.841779,
		0.194276, -0.909237, 0.368163,
		0.852720, 0.342058, 0.394795,
		33.225071, 44.295864, 49.366421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855568, 43.835354, 49.904846>,  <32.628166, 44.056419, 49.090065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855568, 43.835354, 49.904846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001778, 44.191982, 49.797894>,  <33.089504, 44.405960, 49.733723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001778, 44.191982, 49.797894>,  <32.855568, 43.835354, 49.904846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001778, 44.191982, 49.797894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423268, 0.415053, 0.805342,
		0.828996, -0.181201, 0.529086,
		0.365527, 0.891570, -0.267380,
		33.111435, 44.459454, 49.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312267, 44.205891, 50.537212>,  <32.855568, 43.835354, 49.904846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312267, 44.205891, 50.537212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148872, 44.470051, 50.285175>,  <33.050835, 44.628548, 50.133953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148872, 44.470051, 50.285175>,  <33.312267, 44.205891, 50.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148872, 44.470051, 50.285175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430035, 0.469657, 0.771033,
		0.805115, 0.585917, 0.092146,
		-0.408484, 0.660397, -0.630093,
		33.026329, 44.668171, 50.096146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582420, 44.820282, 50.617901>,  <33.312267, 44.205891, 50.537212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582420, 44.820282, 50.617901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199001, 44.830544, 50.504395>,  <32.968948, 44.836700, 50.436291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199001, 44.830544, 50.504395>,  <33.582420, 44.820282, 50.617901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199001, 44.830544, 50.504395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246142, 0.427076, 0.870069,
		0.143511, 0.903852, -0.403059,
		-0.958550, 0.025655, -0.283766,
		32.911438, 44.838242, 50.419266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101143, 44.632721, 51.146080>,  <33.582420, 44.820282, 50.617901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101143, 44.632721, 51.146080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159126, 44.464291, 51.504227>,  <33.193916, 44.363232, 51.719116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159126, 44.464291, 51.504227>,  <33.101143, 44.632721, 51.146080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159126, 44.464291, 51.504227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776337, -0.512624, -0.366765,
		0.613424, 0.748270, 0.252593,
		0.144954, -0.421080, 0.895366,
		33.202614, 44.337967, 51.772835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858952, 44.597889, 51.565716>,  <33.101143, 44.632721, 51.146080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858952, 44.597889, 51.565716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596870, 44.297775, 51.601002>,  <33.439621, 44.117706, 51.622173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596870, 44.297775, 51.601002>,  <33.858952, 44.597889, 51.565716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596870, 44.297775, 51.601002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687851, -0.640771, -0.340989,
		0.312362, -0.162741, 0.935920,
		-0.655203, -0.750285, 0.088211,
		33.400311, 44.072689, 51.627464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044594, 44.067284, 52.128334>,  <33.858952, 44.597889, 51.565716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044594, 44.067284, 52.128334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 43.935116, 51.806980>,  <33.727558, 43.855816, 51.614166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846447, 43.935116, 51.806980>,  <34.044594, 44.067284, 52.128334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846447, 43.935116, 51.806980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824108, -0.471210, -0.314337,
		-0.274701, -0.817790, 0.505726,
		-0.495365, -0.330424, -0.803389,
		33.697838, 43.835987, 51.565964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232555, 43.464958, 52.094604>,  <34.044594, 44.067284, 52.128334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232555, 43.464958, 52.094604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102970, 43.538876, 51.723465>,  <34.025219, 43.583225, 51.500782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102970, 43.538876, 51.723465>,  <34.232555, 43.464958, 52.094604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102970, 43.538876, 51.723465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796647, -0.475710, -0.372899,
		-0.510294, -0.859973, 0.006900,
		-0.323965, 0.184792, -0.927846,
		34.005779, 43.594315, 51.445110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424465, 43.416485, 52.129395>,  <34.232555, 43.464958, 52.094604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424465, 43.416485, 52.129395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133266, 43.200020, 51.961033>,  <32.958546, 43.070141, 51.860016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133266, 43.200020, 51.961033>,  <33.424465, 43.416485, 52.129395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133266, 43.200020, 51.961033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649191, -0.741505, -0.169476,
		-0.220388, -0.396626, 0.891132,
		-0.727998, -0.541164, -0.420905,
		32.914867, 43.037670, 51.834763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594143, 42.626923, 52.229767>,  <33.424465, 43.416485, 52.129395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594143, 42.626923, 52.229767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398590, 42.692318, 51.887009>,  <33.281258, 42.731556, 51.681355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398590, 42.692318, 51.887009>,  <33.594143, 42.626923, 52.229767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398590, 42.692318, 51.887009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414954, -0.820455, -0.393277,
		-0.767336, -0.547839, 0.333270,
		-0.488886, 0.163484, -0.856892,
		33.251926, 42.741364, 51.629940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374783, 41.981995, 52.032925>,  <33.594143, 42.626923, 52.229767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374783, 41.981995, 52.032925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390591, 42.214577, 51.707878>,  <33.400074, 42.354126, 51.512848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390591, 42.214577, 51.707878>,  <33.374783, 41.981995, 52.032925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390591, 42.214577, 51.707878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557925, -0.687514, -0.464805,
		-0.828949, -0.435011, -0.351579,
		0.039520, 0.581455, -0.812618,
		33.402447, 42.389011, 51.464092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351810, 41.530205, 51.365551>,  <33.374783, 41.981995, 52.032925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351810, 41.530205, 51.365551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436386, 41.869179, 51.170761>,  <33.487129, 42.072563, 51.053886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436386, 41.869179, 51.170761>,  <33.351810, 41.530205, 51.365551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436386, 41.869179, 51.170761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487445, -0.523280, -0.698981,
		-0.847167, -0.089581, -0.523721,
		0.211437, 0.847439, -0.486972,
		33.499817, 42.123409, 51.024670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193398, 41.365005, 50.776569>,  <33.351810, 41.530205, 51.365551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193398, 41.365005, 50.776569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430420, 41.682667, 50.722610>,  <33.572632, 41.873264, 50.690235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430420, 41.682667, 50.722610>,  <33.193398, 41.365005, 50.776569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430420, 41.682667, 50.722610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435765, -0.456868, -0.775487,
		-0.677486, 0.400736, -0.616784,
		0.592555, 0.794155, -0.134895,
		33.608185, 41.920914, 50.682140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141544, 41.539394, 50.037815>,  <33.193398, 41.365005, 50.776569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141544, 41.539394, 50.037815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486118, 41.700844, 50.161110>,  <33.692863, 41.797714, 50.235088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486118, 41.700844, 50.161110>,  <33.141544, 41.539394, 50.037815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486118, 41.700844, 50.161110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463070, -0.375017, -0.803074,
		-0.208544, 0.834536, -0.509960,
		0.861438, 0.403623, 0.308241,
		33.744549, 41.821930, 50.253582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395237, 42.011833, 49.453796>,  <33.141544, 41.539394, 50.037815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395237, 42.011833, 49.453796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712006, 41.919086, 49.679749>,  <33.902069, 41.863438, 49.815319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712006, 41.919086, 49.679749>,  <33.395237, 42.011833, 49.453796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712006, 41.919086, 49.679749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502102, -0.279173, -0.818509,
		0.347486, 0.931826, -0.104662,
		0.791926, -0.231869, 0.564880,
		33.949585, 41.849525, 49.849213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005772, 42.206940, 49.048241>,  <33.395237, 42.011833, 49.453796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005772, 42.206940, 49.048241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135818, 41.955154, 49.330536>,  <34.213848, 41.804081, 49.499912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135818, 41.955154, 49.330536>,  <34.005772, 42.206940, 49.048241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135818, 41.955154, 49.330536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502572, -0.517161, -0.692795,
		0.801072, 0.579928, 0.148212,
		0.325121, -0.629466, 0.705739,
		34.233356, 41.766315, 49.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700611, 42.295662, 49.071960>,  <34.005772, 42.206940, 49.048241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700611, 42.295662, 49.071960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621010, 41.935818, 49.227444>,  <34.573250, 41.719910, 49.320736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621010, 41.935818, 49.227444>,  <34.700611, 42.295662, 49.071960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621010, 41.935818, 49.227444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601035, -0.425326, -0.676649,
		0.774051, 0.098974, 0.625339,
		-0.199003, -0.899612, 0.388711,
		34.561310, 41.665936, 49.344059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321945, 41.931217, 49.196156>,  <34.700611, 42.295662, 49.071960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321945, 41.931217, 49.196156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069389, 41.621067, 49.200966>,  <34.917858, 41.434978, 49.203854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069389, 41.621067, 49.200966>,  <35.321945, 41.931217, 49.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069389, 41.621067, 49.200966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614159, -0.509456, -0.602713,
		0.473455, -0.373159, 0.797867,
		-0.631386, -0.775375, 0.012025,
		34.879974, 41.388454, 49.204575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756683, 41.261726, 49.219822>,  <35.321945, 41.931217, 49.196156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756683, 41.261726, 49.219822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396393, 41.156219, 49.081772>,  <35.180218, 41.092915, 48.998940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396393, 41.156219, 49.081772>,  <35.756683, 41.261726, 49.219822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396393, 41.156219, 49.081772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432678, -0.474485, -0.766586,
		0.038444, -0.839815, 0.541510,
		-0.900728, -0.263770, -0.345129,
		35.126175, 41.077087, 48.978233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824017, 40.483463, 49.017284>,  <35.756683, 41.261726, 49.219822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824017, 40.483463, 49.017284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496628, 40.602280, 48.820564>,  <35.300194, 40.673569, 48.702534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496628, 40.602280, 48.820564>,  <35.824017, 40.483463, 49.017284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496628, 40.602280, 48.820564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262115, -0.568669, -0.779687,
		-0.511271, -0.767061, 0.387581,
		-0.818473, 0.297040, -0.491802,
		35.251087, 40.691391, 48.673023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511879, 39.926544, 48.717316>,  <35.824017, 40.483463, 49.017284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511879, 39.926544, 48.717316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339737, 40.200294, 48.481884>,  <35.236450, 40.364544, 48.340626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339737, 40.200294, 48.481884>,  <35.511879, 39.926544, 48.717316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339737, 40.200294, 48.481884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113384, -0.605897, -0.787422,
		-0.895510, -0.405607, 0.183154,
		-0.430356, 0.684377, -0.588576,
		35.210629, 40.405609, 48.305313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032829, 39.614731, 48.366467>,  <35.511879, 39.926544, 48.717316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032829, 39.614731, 48.366467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092739, 39.935410, 48.135002>,  <35.128685, 40.127819, 47.996124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092739, 39.935410, 48.135002>,  <35.032829, 39.614731, 48.366467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092739, 39.935410, 48.135002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045504, -0.579051, -0.814021,
		-0.987673, 0.148248, -0.050245,
		0.149771, 0.801700, -0.578659,
		35.137669, 40.175919, 47.961403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691376, 39.422550, 47.823597>,  <35.032829, 39.614731, 48.366467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691376, 39.422550, 47.823597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929016, 39.724880, 47.713490>,  <35.071602, 39.906277, 47.647427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929016, 39.724880, 47.713490>,  <34.691376, 39.422550, 47.823597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929016, 39.724880, 47.713490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091287, -0.403346, -0.910483,
		-0.799194, 0.515791, -0.308625,
		0.594102, 0.755825, -0.275267,
		35.107246, 39.951630, 47.630909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401882, 39.787945, 47.324211>,  <34.691376, 39.422550, 47.823597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401882, 39.787945, 47.324211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796318, 39.851719, 47.305431>,  <35.032982, 39.889984, 47.294163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796318, 39.851719, 47.305431>,  <34.401882, 39.787945, 47.324211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796318, 39.851719, 47.305431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041870, -0.511656, -0.858169,
		-0.160840, 0.844268, -0.511215,
		0.986092, 0.159432, -0.046945,
		35.092144, 39.899548, 47.291348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526390, 40.205254, 46.682507>,  <34.401882, 39.787945, 47.324211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526390, 40.205254, 46.682507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845409, 40.000023, 46.809422>,  <35.036819, 39.876884, 46.885571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845409, 40.000023, 46.809422>,  <34.526390, 40.205254, 46.682507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845409, 40.000023, 46.809422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051983, -0.465557, -0.883490,
		0.601011, 0.721120, -0.344633,
		0.797548, -0.513072, 0.317291,
		35.084675, 39.846100, 46.904610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990601, 40.242634, 46.085026>,  <34.526390, 40.205254, 46.682507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990601, 40.242634, 46.085026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113079, 39.921875, 46.290241>,  <35.186565, 39.729420, 46.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113079, 39.921875, 46.290241>,  <34.990601, 40.242634, 46.085026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113079, 39.921875, 46.290241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128680, -0.568844, -0.812316,
		0.943231, 0.182710, -0.277366,
		0.306196, -0.801894, 0.513041,
		35.204937, 39.681309, 46.444153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464699, 39.907619, 45.657711>,  <34.990601, 40.242634, 46.085026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464699, 39.907619, 45.657711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334137, 39.629864, 45.914238>,  <35.255802, 39.463211, 46.068153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334137, 39.629864, 45.914238>,  <35.464699, 39.907619, 45.657711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334137, 39.629864, 45.914238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230927, -0.599333, -0.766468,
		0.916589, -0.398272, 0.035269,
		-0.326400, -0.694391, 0.641314,
		35.236217, 39.421547, 46.106632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760918, 39.285576, 45.475929>,  <35.464699, 39.907619, 45.657711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760918, 39.285576, 45.475929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437607, 39.182850, 45.687866>,  <35.243622, 39.121216, 45.815029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437607, 39.182850, 45.687866>,  <35.760918, 39.285576, 45.475929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437607, 39.182850, 45.687866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332738, -0.543187, -0.770865,
		0.485773, -0.799372, 0.353594,
		-0.808276, -0.256811, 0.529847,
		35.195126, 39.105808, 45.846821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775684, 38.579815, 45.640152>,  <35.760918, 39.285576, 45.475929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775684, 38.579815, 45.640152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390259, 38.686733, 45.643948>,  <35.159004, 38.750885, 45.646225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390259, 38.686733, 45.643948>,  <35.775684, 38.579815, 45.640152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390259, 38.686733, 45.643948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208296, -0.727664, -0.653543,
		-0.167783, -0.631710, 0.756830,
		-0.963568, 0.267298, 0.009493,
		35.101189, 38.766922, 45.646797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485992, 38.003510, 45.506107>,  <35.775684, 38.579815, 45.640152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485992, 38.003510, 45.506107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163883, 38.236153, 45.460041>,  <34.970619, 38.375740, 45.432404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163883, 38.236153, 45.460041>,  <35.485992, 38.003510, 45.506107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163883, 38.236153, 45.460041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429605, -0.706237, -0.562732,
		-0.408623, -0.403680, 0.818578,
		-0.805274, 0.581611, -0.115162,
		34.922302, 38.410637, 45.425491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933735, 37.529762, 45.690338>,  <35.485992, 38.003510, 45.506107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933735, 37.529762, 45.690338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782726, 37.832439, 45.476837>,  <34.692120, 38.014046, 45.348736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782726, 37.832439, 45.476837>,  <34.933735, 37.529762, 45.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782726, 37.832439, 45.476837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492346, -0.652207, -0.576387,
		-0.784266, 0.045193, 0.618777,
		-0.377522, 0.756693, -0.533754,
		34.669468, 38.059448, 45.316711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227459, 37.403549, 45.612282>,  <34.933735, 37.529762, 45.690338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227459, 37.403549, 45.612282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273228, 37.677002, 45.323963>,  <34.300690, 37.841076, 45.150970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273228, 37.677002, 45.323963>,  <34.227459, 37.403549, 45.612282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273228, 37.677002, 45.323963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572339, -0.547688, -0.610300,
		-0.811995, 0.482372, 0.328605,
		0.114419, 0.683634, -0.720800,
		34.307552, 37.882092, 45.107723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513523, 37.561180, 45.231876>,  <34.227459, 37.403549, 45.612282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513523, 37.561180, 45.231876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790962, 37.691021, 44.974644>,  <33.957428, 37.768925, 44.820305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790962, 37.691021, 44.974644>,  <33.513523, 37.561180, 45.231876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790962, 37.691021, 44.974644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519215, -0.393540, -0.758645,
		-0.499334, 0.860094, -0.104422,
		0.693600, 0.324600, -0.643081,
		33.999043, 37.788403, 44.781719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188084, 37.805470, 44.618431>,  <33.513523, 37.561180, 45.231876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188084, 37.805470, 44.618431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561264, 37.763271, 44.480751>,  <33.785172, 37.737953, 44.398144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561264, 37.763271, 44.480751>,  <33.188084, 37.805470, 44.618431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561264, 37.763271, 44.480751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359926, -0.293116, -0.885741,
		-0.007448, 0.950239, -0.311433,
		0.932951, -0.105496, -0.344198,
		33.841148, 37.731621, 44.377491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094322, 38.132645, 43.966522>,  <33.188084, 37.805470, 44.618431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094322, 38.132645, 43.966522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413216, 37.893417, 43.933685>,  <33.604549, 37.749882, 43.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413216, 37.893417, 43.933685>,  <33.094322, 38.132645, 43.966522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413216, 37.893417, 43.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297845, -0.271409, -0.915219,
		0.525082, 0.754091, -0.394507,
		0.797231, -0.598067, -0.082090,
		33.652386, 37.713997, 43.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273800, 38.201206, 43.372963>,  <33.094322, 38.132645, 43.966522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273800, 38.201206, 43.372963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478958, 37.866013, 43.447491>,  <33.602055, 37.664898, 43.492207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478958, 37.866013, 43.447491>,  <33.273800, 38.201206, 43.372963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478958, 37.866013, 43.447491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298279, -0.377486, -0.876661,
		0.804962, 0.394063, -0.443566,
		0.512900, -0.837985, 0.186321,
		33.632828, 37.614616, 43.503387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705357, 38.075050, 42.834297>,  <33.273800, 38.201206, 43.372963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705357, 38.075050, 42.834297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653893, 37.717155, 43.005360>,  <33.623013, 37.502419, 43.107998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653893, 37.717155, 43.005360>,  <33.705357, 38.075050, 42.834297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653893, 37.717155, 43.005360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109694, -0.415750, -0.902839,
		0.985603, -0.163073, -0.044655,
		-0.128664, -0.894740, 0.427653,
		33.615292, 37.448734, 43.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005013, 37.637684, 42.323608>,  <33.705357, 38.075050, 42.834297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005013, 37.637684, 42.323608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788975, 37.399471, 42.561474>,  <33.659351, 37.256542, 42.704193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788975, 37.399471, 42.561474>,  <34.005013, 37.637684, 42.323608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788975, 37.399471, 42.561474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366539, -0.469605, -0.803194,
		0.757591, -0.651772, 0.035346,
		-0.540098, -0.595536, 0.594668,
		33.626945, 37.220810, 42.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878380, 37.075962, 41.856892>,  <34.005013, 37.637684, 42.323608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878380, 37.075962, 41.856892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619339, 36.998131, 42.151577>,  <33.463917, 36.951431, 42.328388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619339, 36.998131, 42.151577>,  <33.878380, 37.075962, 41.856892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619339, 36.998131, 42.151577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683068, -0.280231, -0.674455,
		0.337688, -0.940004, 0.048565,
		-0.647600, -0.194583, 0.736717,
		33.425060, 36.939754, 42.372593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655766, 36.355507, 41.811378>,  <33.878380, 37.075962, 41.856892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655766, 36.355507, 41.811378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362350, 36.553703, 41.997456>,  <33.186302, 36.672623, 42.109104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362350, 36.553703, 41.997456>,  <33.655766, 36.355507, 41.811378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362350, 36.553703, 41.997456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642199, -0.281254, -0.713075,
		-0.222482, -0.821819, 0.524514,
		-0.733541, 0.495489, 0.465198,
		33.142288, 36.702351, 42.137016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225521, 35.818928, 41.973335>,  <33.655766, 36.355507, 41.811378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225521, 35.818928, 41.973335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036427, 36.171394, 41.976437>,  <32.922970, 36.382874, 41.978298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036427, 36.171394, 41.976437>,  <33.225521, 35.818928, 41.973335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036427, 36.171394, 41.976437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629228, -0.331384, -0.703035,
		-0.616922, -0.337232, 0.711114,
		-0.472737, 0.881170, 0.007758,
		32.894604, 36.435745, 41.978764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539688, 35.654930, 41.952694>,  <33.225521, 35.818928, 41.973335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539688, 35.654930, 41.952694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507271, 36.038151, 41.842731>,  <32.487820, 36.268082, 41.776752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507271, 36.038151, 41.842731>,  <32.539688, 35.654930, 41.952694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507271, 36.038151, 41.842731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654842, -0.259115, -0.709958,
		-0.751408, 0.122484, 0.648371,
		-0.081044, 0.958048, -0.274909,
		32.482956, 36.325565, 41.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891935, 35.803452, 41.775917>,  <32.539688, 35.654930, 41.952694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891935, 35.803452, 41.775917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074234, 36.111092, 41.596684>,  <32.183613, 36.295677, 41.489143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074234, 36.111092, 41.596684>,  <31.891935, 35.803452, 41.775917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074234, 36.111092, 41.596684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543785, -0.157963, -0.824224,
		-0.704692, 0.619298, 0.346235,
		0.455748, 0.769102, -0.448080,
		32.210957, 36.341824, 41.462261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387579, 36.112358, 41.391308>,  <31.891935, 35.803452, 41.775917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387579, 36.112358, 41.391308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722443, 36.224384, 41.203381>,  <31.923361, 36.291599, 41.090626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722443, 36.224384, 41.203381>,  <31.387579, 36.112358, 41.391308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722443, 36.224384, 41.203381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410764, -0.245249, -0.878138,
		-0.361159, 0.928125, -0.090271,
		0.837160, 0.280068, -0.469814,
		31.973591, 36.308403, 41.062435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144800, 36.387653, 40.814407>,  <31.387579, 36.112358, 41.391308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144800, 36.387653, 40.814407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534201, 36.336758, 40.738400>,  <31.767841, 36.306221, 40.692795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534201, 36.336758, 40.738400>,  <31.144800, 36.387653, 40.814407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534201, 36.336758, 40.738400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219732, -0.290250, -0.931382,
		0.063356, 0.948454, -0.310517,
		0.973501, -0.127239, -0.190016,
		31.826250, 36.298588, 40.681396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302965, 36.809528, 40.160702>,  <31.144800, 36.387653, 40.814407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302965, 36.809528, 40.160702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583797, 36.528561, 40.207497>,  <31.752296, 36.359982, 40.235573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583797, 36.528561, 40.207497>,  <31.302965, 36.809528, 40.160702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583797, 36.528561, 40.207497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082929, -0.243823, -0.966268,
		0.707251, 0.668697, -0.229435,
		0.702082, -0.702421, 0.116989,
		31.794422, 36.317833, 40.242592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776228, 36.882118, 39.516846>,  <31.302965, 36.809528, 40.160702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776228, 36.882118, 39.516846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886059, 36.520493, 39.647858>,  <31.951958, 36.303516, 39.726463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886059, 36.520493, 39.647858>,  <31.776228, 36.882118, 39.516846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886059, 36.520493, 39.647858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174067, -0.381727, -0.907736,
		0.945678, 0.192233, -0.262182,
		0.274579, -0.904064, 0.327529,
		31.968431, 36.249275, 39.746117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317619, 36.537899, 39.032536>,  <31.776228, 36.882118, 39.516846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317619, 36.537899, 39.032536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153145, 36.240974, 39.244156>,  <32.054459, 36.062820, 39.371128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153145, 36.240974, 39.244156>,  <32.317619, 36.537899, 39.032536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153145, 36.240974, 39.244156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004442, -0.582015, -0.813166,
		0.911539, -0.332016, 0.242616,
		-0.411190, -0.742310, 0.529055,
		32.029789, 36.018280, 39.402874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909561, 36.003914, 39.102665>,  <32.317619, 36.537899, 39.032536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909561, 36.003914, 39.102665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555202, 35.822514, 39.141689>,  <32.342587, 35.713673, 39.165104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555202, 35.822514, 39.141689>,  <32.909561, 36.003914, 39.102665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555202, 35.822514, 39.141689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206813, -0.574388, -0.792027,
		0.415225, -0.681478, 0.602640,
		-0.885898, -0.453503, 0.097562,
		32.289433, 35.686462, 39.170959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565090, 36.184769, 38.719383>,  <32.909561, 36.003914, 39.102665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565090, 36.184769, 38.719383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282818, 36.009418, 38.496731>,  <33.113453, 35.904209, 38.363140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282818, 36.009418, 38.496731>,  <33.565090, 36.184769, 38.719383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282818, 36.009418, 38.496731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688597, -0.239314, -0.684516,
		0.166866, -0.866346, 0.470744,
		-0.705684, -0.438375, -0.556630,
		33.071114, 35.877907, 38.329742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991730, 36.307270, 39.230785>,  <33.565090, 36.184769, 38.719383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991730, 36.307270, 39.230785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340370, 36.189392, 39.074089>,  <34.549557, 36.118664, 38.980072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340370, 36.189392, 39.074089>,  <33.991730, 36.307270, 39.230785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340370, 36.189392, 39.074089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357431, -0.164835, 0.919278,
		-0.335483, -0.941266, -0.038336,
		0.871605, -0.294699, -0.391737,
		34.601852, 36.100983, 38.956570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125801, 35.702423, 39.514618>,  <33.991730, 36.307270, 39.230785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125801, 35.702423, 39.514618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479603, 35.842335, 39.391132>,  <34.691883, 35.926281, 39.317039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479603, 35.842335, 39.391132>,  <34.125801, 35.702423, 39.514618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479603, 35.842335, 39.391132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381030, -0.159781, 0.910652,
		0.269201, -0.923106, -0.274603,
		0.884504, 0.349780, -0.308718,
		34.744953, 35.947269, 39.298515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571262, 35.347507, 39.819351>,  <34.125801, 35.702423, 39.514618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571262, 35.347507, 39.819351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840527, 35.628986, 39.728436>,  <35.002087, 35.797874, 39.673885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840527, 35.628986, 39.728436>,  <34.571262, 35.347507, 39.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840527, 35.628986, 39.728436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436762, -0.130319, 0.890087,
		0.596736, -0.698442, -0.395076,
		0.673160, 0.703702, -0.227287,
		35.042473, 35.840096, 39.660248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283779, 35.053352, 39.857349>,  <34.571262, 35.347507, 39.819351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283779, 35.053352, 39.857349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318462, 35.450302, 39.892391>,  <35.339272, 35.688473, 39.913418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318462, 35.450302, 39.892391>,  <35.283779, 35.053352, 39.857349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318462, 35.450302, 39.892391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414283, -0.115892, 0.902740,
		0.906009, -0.041979, -0.421172,
		0.086707, 0.992374, 0.087608,
		35.344475, 35.748013, 39.918674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002686, 35.206253, 40.265579>,  <35.283779, 35.053352, 39.857349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002686, 35.206253, 40.265579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770565, 35.531033, 40.290882>,  <35.631294, 35.725899, 40.306065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770565, 35.531033, 40.290882>,  <36.002686, 35.206253, 40.265579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770565, 35.531033, 40.290882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431549, 0.240695, 0.869386,
		0.690667, 0.531801, -0.490068,
		-0.580297, 0.811944, 0.063258,
		35.596478, 35.774616, 40.309860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427269, 35.696938, 40.435486>,  <36.002686, 35.206253, 40.265579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427269, 35.696938, 40.435486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071514, 35.849113, 40.536880>,  <35.858063, 35.940418, 40.597717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071514, 35.849113, 40.536880>,  <36.427269, 35.696938, 40.435486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071514, 35.849113, 40.536880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386335, 0.329030, 0.861675,
		0.244407, 0.864295, -0.439611,
		-0.889387, 0.380437, 0.253490,
		35.804699, 35.963245, 40.612926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573853, 36.367752, 40.670895>,  <36.427269, 35.696938, 40.435486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573853, 36.367752, 40.670895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217216, 36.271881, 40.824581>,  <36.003235, 36.214359, 40.916794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217216, 36.271881, 40.824581>,  <36.573853, 36.367752, 40.670895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217216, 36.271881, 40.824581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305078, 0.309108, 0.900766,
		-0.334659, 0.920329, -0.202477,
		-0.891589, -0.239678, 0.384218,
		35.949741, 36.199978, 40.939846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380249, 36.935925, 41.003067>,  <36.573853, 36.367752, 40.670895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380249, 36.935925, 41.003067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137939, 36.673073, 41.182499>,  <35.992554, 36.515362, 41.290157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137939, 36.673073, 41.182499>,  <36.380249, 36.935925, 41.003067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137939, 36.673073, 41.182499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332866, 0.302769, 0.893046,
		-0.722662, 0.690298, 0.035327,
		-0.605772, -0.657129, 0.448577,
		35.956207, 36.475933, 41.317070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187717, 37.263031, 41.592625>,  <36.380249, 36.935925, 41.003067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187717, 37.263031, 41.592625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121735, 36.872334, 41.647423>,  <36.082146, 36.637917, 41.680302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121735, 36.872334, 41.647423>,  <36.187717, 37.263031, 41.592625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121735, 36.872334, 41.647423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324138, 0.077494, 0.942831,
		-0.931517, 0.199933, 0.303815,
		-0.164959, -0.976740, 0.136992,
		36.072247, 36.579311, 41.688522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915386, 37.257351, 42.273342>,  <36.187717, 37.263031, 41.592625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915386, 37.257351, 42.273342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071453, 36.900455, 42.182411>,  <36.165092, 36.686317, 42.127853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071453, 36.900455, 42.182411>,  <35.915386, 37.257351, 42.273342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071453, 36.900455, 42.182411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289995, -0.115245, 0.950064,
		-0.873883, -0.436608, 0.213780,
		0.390169, -0.892240, -0.227325,
		36.188503, 36.632782, 42.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627888, 36.799736, 42.809597>,  <35.915386, 37.257351, 42.273342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627888, 36.799736, 42.809597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955360, 36.634567, 42.649971>,  <36.151844, 36.535465, 42.554195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955360, 36.634567, 42.649971>,  <35.627888, 36.799736, 42.809597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955360, 36.634567, 42.649971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468350, 0.078026, 0.880091,
		-0.332273, -0.907417, 0.257271,
		0.818684, -0.412923, -0.399064,
		36.200966, 36.510689, 42.530251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906796, 36.488022, 43.349247>,  <35.627888, 36.799736, 42.809597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906796, 36.488022, 43.349247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204071, 36.456242, 43.083508>,  <36.382435, 36.437172, 42.924065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204071, 36.456242, 43.083508>,  <35.906796, 36.488022, 43.349247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204071, 36.456242, 43.083508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656399, -0.105841, 0.746953,
		-0.129661, -0.991204, -0.026508,
		0.743188, -0.079451, -0.664349,
		36.427029, 36.432407, 42.884201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284687, 35.812805, 43.434696>,  <35.906796, 36.488022, 43.349247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284687, 35.812805, 43.434696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524426, 36.092758, 43.279293>,  <36.668270, 36.260731, 43.186050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524426, 36.092758, 43.279293>,  <36.284687, 35.812805, 43.434696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524426, 36.092758, 43.279293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334116, 0.222322, 0.915937,
		0.727426, -0.678772, -0.100595,
		0.599348, 0.699887, -0.388511,
		36.704231, 36.302723, 43.162739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048996, 35.572563, 43.585323>,  <36.284687, 35.812805, 43.434696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048996, 35.572563, 43.585323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013760, 35.969086, 43.546230>,  <36.992619, 36.207001, 43.522774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013760, 35.969086, 43.546230>,  <37.048996, 35.572563, 43.585323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013760, 35.969086, 43.546230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694039, 0.131462, 0.707833,
		0.714528, -0.005473, -0.699586,
		-0.088095, 0.991306, -0.097731,
		36.987331, 36.266476, 43.516911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715595, 35.745056, 43.828640>,  <37.048996, 35.572563, 43.585323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715595, 35.745056, 43.828640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457344, 36.049366, 43.802139>,  <37.302395, 36.231953, 43.786240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457344, 36.049366, 43.802139>,  <37.715595, 35.745056, 43.828640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457344, 36.049366, 43.802139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424036, 0.429305, 0.797428,
		0.635105, 0.486746, -0.599766,
		-0.645628, 0.760773, -0.066256,
		37.263657, 36.277599, 43.782261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196903, 36.291252, 43.924934>,  <37.715595, 35.745056, 43.828640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196903, 36.291252, 43.924934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826576, 36.429127, 43.986969>,  <37.604378, 36.511852, 44.024189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826576, 36.429127, 43.986969>,  <38.196903, 36.291252, 43.924934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826576, 36.429127, 43.986969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308074, 0.450465, 0.837957,
		0.218971, 0.823574, -0.523237,
		-0.925820, 0.344685, 0.155083,
		37.548832, 36.532532, 44.033493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197060, 37.031712, 43.991810>,  <38.196903, 36.291252, 43.924934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197060, 37.031712, 43.991810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879330, 36.891598, 44.190346>,  <37.688694, 36.807529, 44.309467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879330, 36.891598, 44.190346>,  <38.197060, 37.031712, 43.991810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879330, 36.891598, 44.190346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279160, 0.515193, 0.810337,
		-0.539557, 0.782227, -0.311445,
		-0.794322, -0.350280, 0.496343,
		37.641033, 36.786514, 44.339249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983891, 37.605789, 44.308834>,  <38.197060, 37.031712, 43.991810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983891, 37.605789, 44.308834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772118, 37.331337, 44.508400>,  <37.645054, 37.166664, 44.628139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772118, 37.331337, 44.508400>,  <37.983891, 37.605789, 44.308834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772118, 37.331337, 44.508400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021182, 0.577229, 0.816307,
		-0.848086, 0.442749, -0.291072,
		-0.529434, -0.686134, 0.498918,
		37.613289, 37.125496, 44.658077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366074, 37.881016, 44.597580>,  <37.983891, 37.605789, 44.308834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366074, 37.881016, 44.597580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423073, 37.569878, 44.842415>,  <37.457272, 37.383194, 44.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423073, 37.569878, 44.842415>,  <37.366074, 37.881016, 44.597580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423073, 37.569878, 44.842415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163678, 0.591369, 0.789616,
		-0.976168, -0.212705, -0.043046,
		0.142499, -0.777843, 0.612090,
		37.465824, 37.336525, 45.026043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731113, 37.838970, 44.948368>,  <37.366074, 37.881016, 44.597580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731113, 37.838970, 44.948368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995728, 37.637188, 45.170319>,  <37.154495, 37.516117, 45.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995728, 37.637188, 45.170319>,  <36.731113, 37.838970, 44.948368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995728, 37.637188, 45.170319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201078, 0.593507, 0.779306,
		-0.722449, -0.627115, 0.291193,
		0.661540, -0.504456, 0.554877,
		37.194191, 37.485851, 45.336781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424786, 37.821304, 45.660927>,  <36.731113, 37.838970, 44.948368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424786, 37.821304, 45.660927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819931, 37.774040, 45.701244>,  <37.057018, 37.745682, 45.725433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.819931, 37.774040, 45.701244>,  <36.424786, 37.821304, 45.660927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819931, 37.774040, 45.701244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014062, 0.578263, 0.815729,
		-0.154672, -0.807248, 0.569585,
		0.987866, -0.118160, 0.100793,
		37.116291, 37.738594, 45.731483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493668, 37.659725, 46.311085>,  <36.424786, 37.821304, 45.660927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493668, 37.659725, 46.311085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859547, 37.772957, 46.195713>,  <37.079075, 37.840897, 46.126492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859547, 37.772957, 46.195713>,  <36.493668, 37.659725, 46.311085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859547, 37.772957, 46.195713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108492, 0.515489, 0.850001,
		0.389297, -0.808788, 0.440806,
		0.914701, 0.283079, -0.288425,
		37.133957, 37.857880, 46.109184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937584, 37.665627, 46.870899>,  <36.493668, 37.659725, 46.311085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937584, 37.665627, 46.870899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128120, 37.896633, 46.605698>,  <37.242443, 38.035236, 46.446575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128120, 37.896633, 46.605698>,  <36.937584, 37.665627, 46.870899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128120, 37.896633, 46.605698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036691, 0.740333, 0.671238,
		0.878496, -0.344064, 0.331460,
		0.476339, 0.577518, -0.663003,
		37.271023, 38.069889, 46.406796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456970, 37.840164, 47.189159>,  <36.937584, 37.665627, 46.870899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456970, 37.840164, 47.189159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420197, 38.118477, 46.904221>,  <37.398132, 38.285465, 46.733257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420197, 38.118477, 46.904221>,  <37.456970, 37.840164, 47.189159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420197, 38.118477, 46.904221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019187, 0.716484, 0.697339,
		0.995580, 0.050439, -0.079217,
		-0.091930, 0.695778, -0.712350,
		37.392616, 38.327209, 46.690517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791042, 38.483036, 47.369644>,  <37.456970, 37.840164, 47.189159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791042, 38.483036, 47.369644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573875, 38.681381, 47.098537>,  <37.443577, 38.800388, 46.935875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573875, 38.681381, 47.098537>,  <37.791042, 38.483036, 47.369644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573875, 38.681381, 47.098537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067348, 0.830178, 0.553415,
		0.837083, 0.254811, -0.484111,
		-0.542915, 0.495859, -0.677767,
		37.410999, 38.830139, 46.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224609, 39.051678, 47.143845>,  <37.791042, 38.483036, 47.369644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224609, 39.051678, 47.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848206, 39.159756, 47.062363>,  <37.622364, 39.224602, 47.013474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848206, 39.159756, 47.062363>,  <38.224609, 39.051678, 47.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848206, 39.159756, 47.062363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165998, 0.893189, 0.417921,
		0.294871, 0.359453, -0.885350,
		-0.941008, 0.270199, -0.203707,
		37.565903, 39.240814, 47.001251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171898, 39.628117, 46.737034>,  <38.224609, 39.051678, 47.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171898, 39.628117, 46.737034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805023, 39.638676, 46.896069>,  <37.584900, 39.645012, 46.991489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805023, 39.638676, 46.896069>,  <38.171898, 39.628117, 46.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805023, 39.638676, 46.896069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141075, 0.954687, 0.262052,
		-0.372648, 0.296440, -0.879350,
		-0.917186, 0.026401, 0.397582,
		37.529869, 39.646595, 47.015343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909279, 40.255463, 46.530495>,  <38.171898, 39.628117, 46.737034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909279, 40.255463, 46.530495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716007, 40.165932, 46.869064>,  <37.600044, 40.112213, 47.072208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716007, 40.165932, 46.869064>,  <37.909279, 40.255463, 46.530495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716007, 40.165932, 46.869064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020047, 0.963687, 0.266281,
		-0.875294, 0.145629, -0.461143,
		-0.483176, -0.223830, 0.846429,
		37.571053, 40.098782, 47.122993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433052, 40.813263, 46.578297>,  <37.909279, 40.255463, 46.530495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433052, 40.813263, 46.578297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447407, 40.656124, 46.945858>,  <37.456020, 40.561840, 47.166397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447407, 40.656124, 46.945858>,  <37.433052, 40.813263, 46.578297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447407, 40.656124, 46.945858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162942, 0.904893, 0.393216,
		-0.985983, -0.163839, -0.031540,
		0.035884, -0.392843, 0.918905,
		37.458172, 40.538273, 47.221531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961735, 41.188786, 46.946156>,  <37.433052, 40.813263, 46.578297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961735, 41.188786, 46.946156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178337, 41.014961, 47.234024>,  <37.308300, 40.910667, 47.406746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178337, 41.014961, 47.234024>,  <36.961735, 41.188786, 46.946156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178337, 41.014961, 47.234024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174187, 0.779471, 0.601734,
		-0.822454, -0.451200, 0.346394,
		0.541506, -0.434561, 0.719672,
		37.340790, 40.884594, 47.449924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537136, 41.068241, 47.546413>,  <36.961735, 41.188786, 46.946156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537136, 41.068241, 47.546413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912716, 41.073368, 47.683945>,  <37.138062, 41.076447, 47.766464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912716, 41.073368, 47.683945>,  <36.537136, 41.068241, 47.546413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912716, 41.073368, 47.683945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249175, 0.714438, 0.653827,
		-0.237259, -0.699581, 0.674014,
		0.938946, 0.012821, 0.343825,
		37.194401, 41.077213, 47.787094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551960, 41.028786, 48.319077>,  <36.537136, 41.068241, 47.546413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551960, 41.028786, 48.319077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899887, 41.196522, 48.215103>,  <37.108643, 41.297165, 48.152721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899887, 41.196522, 48.215103>,  <36.551960, 41.028786, 48.319077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899887, 41.196522, 48.215103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194848, 0.776004, 0.599878,
		0.453260, -0.471140, 0.756692,
		0.869822, 0.419340, -0.259931,
		37.160835, 41.322323, 48.137123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825409, 41.231750, 48.926064>,  <36.551960, 41.028786, 48.319077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825409, 41.231750, 48.926064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084301, 41.408844, 48.677845>,  <37.239635, 41.515102, 48.528912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084301, 41.408844, 48.677845>,  <36.825409, 41.231750, 48.926064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084301, 41.408844, 48.677845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005184, 0.816590, 0.577195,
		0.762281, -0.370358, 0.530813,
		0.647226, 0.442737, -0.620551,
		37.278469, 41.541664, 48.491680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336452, 41.408092, 49.315617>,  <36.825409, 41.231750, 48.926064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336452, 41.408092, 49.315617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300625, 41.649429, 48.998642>,  <37.279129, 41.794231, 48.808456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300625, 41.649429, 48.998642>,  <37.336452, 41.408092, 49.315617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300625, 41.649429, 48.998642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238588, 0.759474, 0.605207,
		0.966982, 0.243274, 0.075924,
		-0.089568, 0.603338, -0.792440,
		37.273754, 41.830429, 48.760910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786243, 42.020927, 49.304703>,  <37.336452, 41.408092, 49.315617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786243, 42.020927, 49.304703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509850, 42.160591, 49.051521>,  <37.344013, 42.244389, 48.899612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509850, 42.160591, 49.051521>,  <37.786243, 42.020927, 49.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509850, 42.160591, 49.051521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124878, 0.804786, 0.580280,
		0.711999, 0.480007, -0.512494,
		-0.690987, 0.349160, -0.632949,
		37.302555, 42.265339, 48.861637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835880, 42.692844, 49.365944>,  <37.786243, 42.020927, 49.304703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835880, 42.692844, 49.365944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473469, 42.651966, 49.201664>,  <37.256023, 42.627441, 49.103096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473469, 42.651966, 49.201664>,  <37.835880, 42.692844, 49.365944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473469, 42.651966, 49.201664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348114, 0.731834, 0.585863,
		0.240689, 0.673777, -0.698637,
		-0.906027, -0.102194, -0.410696,
		37.201660, 42.621307, 49.078457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663258, 43.326874, 49.267189>,  <37.835880, 42.692844, 49.365944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663258, 43.326874, 49.267189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311657, 43.138725, 49.235954>,  <37.100697, 43.025837, 49.217213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311657, 43.138725, 49.235954>,  <37.663258, 43.326874, 49.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311657, 43.138725, 49.235954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422807, 0.693225, 0.583672,
		-0.220415, 0.546066, -0.808226,
		-0.879006, -0.470374, -0.078084,
		37.047955, 42.997612, 49.212528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057327, 43.771152, 49.178291>,  <37.663258, 43.326874, 49.267189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057327, 43.771152, 49.178291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930515, 43.446606, 49.374729>,  <36.854427, 43.251877, 49.492592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930515, 43.446606, 49.374729>,  <37.057327, 43.771152, 49.178291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930515, 43.446606, 49.374729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383789, 0.583271, 0.715892,
		-0.867293, 0.038482, -0.496308,
		-0.317030, -0.811366, 0.491098,
		36.835407, 43.203197, 49.522057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526043, 44.286022, 49.145363>,  <37.057327, 43.771152, 49.178291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526043, 44.286022, 49.145363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694607, 44.597591, 48.959591>,  <36.795746, 44.784534, 48.848129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694607, 44.597591, 48.959591>,  <36.526043, 44.286022, 49.145363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694607, 44.597591, 48.959591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657409, -0.615153, -0.435202,
		-0.624684, -0.121923, -0.771301,
		0.421407, 0.778924, -0.464429,
		36.821030, 44.831268, 48.820263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519215, 44.091103, 48.421394>,  <36.526043, 44.286022, 49.145363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519215, 44.091103, 48.421394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779369, 44.393612, 48.449799>,  <36.935463, 44.575119, 48.466843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779369, 44.393612, 48.449799>,  <36.519215, 44.091103, 48.421394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779369, 44.393612, 48.449799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593893, -0.447991, -0.668278,
		-0.473592, 0.476810, -0.740515,
		0.650386, 0.756278, 0.071009,
		36.974483, 44.620495, 48.471100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554409, 44.342804, 47.732986>,  <36.519215, 44.091103, 48.421394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554409, 44.342804, 47.732986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896347, 44.450039, 47.910690>,  <37.101509, 44.514381, 48.017311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896347, 44.450039, 47.910690>,  <36.554409, 44.342804, 47.732986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896347, 44.450039, 47.910690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518436, -0.405941, -0.752619,
		-0.021427, 0.873693, -0.486005,
		0.854848, 0.268089, 0.444256,
		37.152802, 44.530464, 48.043968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907074, 44.744999, 47.246540>,  <36.554409, 44.342804, 47.732986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907074, 44.744999, 47.246540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201344, 44.633968, 47.493683>,  <37.377903, 44.567348, 47.641968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201344, 44.633968, 47.493683>,  <36.907074, 44.744999, 47.246540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201344, 44.633968, 47.493683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477073, -0.435183, -0.763555,
		0.480824, 0.856485, -0.187726,
		0.735669, -0.277577, 0.617853,
		37.422043, 44.550694, 47.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499367, 44.754002, 46.816097>,  <36.907074, 44.744999, 47.246540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499367, 44.754002, 46.816097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600613, 44.532242, 47.133228>,  <37.661362, 44.399185, 47.323505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600613, 44.532242, 47.133228>,  <37.499367, 44.754002, 46.816097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600613, 44.532242, 47.133228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516127, -0.615761, -0.595358,
		0.818258, 0.559893, 0.130281,
		0.253115, -0.554398, 0.792827,
		37.676548, 44.365921, 47.371075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195011, 44.708096, 46.699570>,  <37.499367, 44.754002, 46.816097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195011, 44.708096, 46.699570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074547, 44.409515, 46.936928>,  <38.002266, 44.230366, 47.079342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074547, 44.409515, 46.936928>,  <38.195011, 44.708096, 46.699570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074547, 44.409515, 46.936928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453571, -0.659515, -0.599428,
		0.838793, 0.088619, 0.537190,
		-0.301163, -0.746450, 0.593391,
		37.984200, 44.185581, 47.114944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726284, 44.218670, 46.661568>,  <38.195011, 44.708096, 46.699570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726284, 44.218670, 46.661568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417812, 43.990860, 46.775356>,  <38.232727, 43.854176, 46.843628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417812, 43.990860, 46.775356>,  <38.726284, 44.218670, 46.661568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417812, 43.990860, 46.775356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272461, -0.699122, -0.661055,
		0.575364, -0.432287, 0.694323,
		-0.771182, -0.569523, 0.284468,
		38.186459, 43.820004, 46.860695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032101, 43.551640, 46.651829>,  <38.726284, 44.218670, 46.661568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032101, 43.551640, 46.651829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639935, 43.472874, 46.651524>,  <38.404633, 43.425613, 46.651340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639935, 43.472874, 46.651524>,  <39.032101, 43.551640, 46.651829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639935, 43.472874, 46.651524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171348, -0.851197, -0.496089,
		0.097039, -0.486506, 0.868271,
		-0.980420, -0.196916, -0.000762,
		38.345810, 43.413799, 46.651295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015259, 42.870480, 46.918125>,  <39.032101, 43.551640, 46.651829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015259, 42.870480, 46.918125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698746, 42.959476, 46.690311>,  <38.508839, 43.012875, 46.553623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698746, 42.959476, 46.690311>,  <39.015259, 42.870480, 46.918125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698746, 42.959476, 46.690311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081257, -0.884919, -0.458602,
		-0.606026, -0.409163, 0.682143,
		-0.791284, 0.222496, -0.569531,
		38.461361, 43.026226, 46.519451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636940, 42.155678, 46.754921>,  <39.015259, 42.870480, 46.918125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636940, 42.155678, 46.754921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509731, 42.421398, 46.484344>,  <38.433407, 42.580830, 46.321999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509731, 42.421398, 46.484344>,  <38.636940, 42.155678, 46.754921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509731, 42.421398, 46.484344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001210, -0.713766, -0.700384,
		-0.948084, -0.221917, 0.227795,
		-0.318019, 0.664298, -0.676441,
		38.414326, 42.620686, 46.281414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028076, 41.895550, 46.390072>,  <38.636940, 42.155678, 46.754921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028076, 41.895550, 46.390072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125183, 42.174023, 46.119843>,  <38.183445, 42.341106, 45.957706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125183, 42.174023, 46.119843>,  <38.028076, 41.895550, 46.390072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125183, 42.174023, 46.119843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169342, -0.655300, -0.736142,
		-0.955190, 0.293113, -0.041191,
		0.242765, 0.696180, -0.675572,
		38.198013, 42.382877, 45.917171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465271, 41.856903, 45.947414>,  <38.028076, 41.895550, 46.390072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465271, 41.856903, 45.947414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768837, 42.032223, 45.754768>,  <37.950977, 42.137413, 45.639183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768837, 42.032223, 45.754768>,  <37.465271, 41.856903, 45.947414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768837, 42.032223, 45.754768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114945, -0.637808, -0.761569,
		-0.640970, 0.633322, -0.433659,
		0.758911, 0.438296, -0.481613,
		37.996510, 42.163712, 45.610283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250633, 41.903996, 45.265087>,  <37.465271, 41.856903, 45.947414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250633, 41.903996, 45.265087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648632, 41.914806, 45.226624>,  <37.887432, 41.921291, 45.203545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648632, 41.914806, 45.226624>,  <37.250633, 41.903996, 45.265087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648632, 41.914806, 45.226624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059901, -0.608903, -0.790980,
		-0.079924, 0.792784, -0.604239,
		0.994999, 0.027023, -0.096155,
		37.947132, 41.922913, 45.197777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476620, 42.103962, 44.510624>,  <37.250633, 41.903996, 45.265087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476620, 42.103962, 44.510624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791603, 41.921520, 44.676453>,  <37.980595, 41.812054, 44.775951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791603, 41.921520, 44.676453>,  <37.476620, 42.103962, 44.510624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791603, 41.921520, 44.676453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077651, -0.593837, -0.800830,
		0.611451, 0.662816, -0.432207,
		0.787463, -0.456107, 0.414571,
		38.027843, 41.784687, 44.800823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916679, 42.063557, 43.963268>,  <37.476620, 42.103962, 44.510624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916679, 42.063557, 43.963268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005928, 41.783215, 44.234272>,  <38.059479, 41.615009, 44.396873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005928, 41.783215, 44.234272>,  <37.916679, 42.063557, 43.963268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005928, 41.783215, 44.234272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035683, -0.700435, -0.712823,
		0.974137, 0.134872, -0.181292,
		0.223124, -0.700857, 0.677507,
		38.072865, 41.572956, 44.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397213, 41.641407, 43.627380>,  <37.916679, 42.063557, 43.963268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397213, 41.641407, 43.627380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285290, 41.401894, 43.927559>,  <38.218136, 41.258186, 44.107666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285290, 41.401894, 43.927559>,  <38.397213, 41.641407, 43.627380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285290, 41.401894, 43.927559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093724, -0.794971, -0.599364,
		0.955471, -0.097372, 0.278558,
		-0.279807, -0.598782, 0.750445,
		38.201347, 41.222260, 44.152691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896267, 41.079494, 43.634178>,  <38.397213, 41.641407, 43.627380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896267, 41.079494, 43.634178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574944, 40.929352, 43.819134>,  <38.382149, 40.839264, 43.930107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574944, 40.929352, 43.819134>,  <38.896267, 41.079494, 43.634178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574944, 40.929352, 43.819134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083977, -0.840015, -0.536025,
		0.589613, -0.391764, 0.706313,
		-0.803308, -0.375361, 0.462385,
		38.333950, 40.816742, 43.957848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069511, 40.383217, 43.844791>,  <38.896267, 41.079494, 43.634178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069511, 40.383217, 43.844791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670822, 40.394043, 43.875267>,  <38.431606, 40.400539, 43.893551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.670822, 40.394043, 43.875267>,  <39.069511, 40.383217, 43.844791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670822, 40.394043, 43.875267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065236, -0.825842, -0.560115,
		0.047763, -0.563252, 0.824904,
		-0.996726, 0.027061, 0.076188,
		38.371803, 40.402161, 43.898125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899841, 39.663078, 43.963081>,  <39.069511, 40.383217, 43.844791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899841, 39.663078, 43.963081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581085, 39.846794, 43.806095>,  <38.389832, 39.957024, 43.711903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581085, 39.846794, 43.806095>,  <38.899841, 39.663078, 43.963081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581085, 39.846794, 43.806095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230662, -0.831730, -0.504994,
		-0.558361, -0.311896, 0.768735,
		-0.796886, 0.459288, -0.392463,
		38.342018, 39.984581, 43.688354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413437, 39.100155, 43.930771>,  <38.899841, 39.663078, 43.963081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413437, 39.100155, 43.930771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247482, 39.372398, 43.689228>,  <38.147911, 39.535744, 43.544304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247482, 39.372398, 43.689228>,  <38.413437, 39.100155, 43.930771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247482, 39.372398, 43.689228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402977, -0.732476, -0.548715,
		-0.815770, 0.015686, 0.578163,
		-0.414883, 0.680612, -0.603853,
		38.123016, 39.576584, 43.508072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632942, 38.914425, 43.822712>,  <38.413437, 39.100155, 43.930771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632942, 38.914425, 43.822712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762344, 39.159092, 43.533932>,  <37.839985, 39.305893, 43.360664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762344, 39.159092, 43.533932>,  <37.632942, 38.914425, 43.822712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762344, 39.159092, 43.533932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264991, -0.673882, -0.689684,
		-0.908363, 0.414427, -0.055919,
		0.323507, 0.611665, -0.721949,
		37.859398, 39.342590, 43.317348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140026, 38.889282, 43.373642>,  <37.632942, 38.914425, 43.822712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140026, 38.889282, 43.373642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456390, 39.022705, 43.168427>,  <37.646210, 39.102757, 43.045300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456390, 39.022705, 43.168427>,  <37.140026, 38.889282, 43.373642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456390, 39.022705, 43.168427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233072, -0.610989, -0.756552,
		-0.565809, 0.717938, -0.405494,
		0.790909, 0.333555, -0.513034,
		37.693665, 39.122772, 43.014515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854992, 38.886318, 42.739128>,  <37.140026, 38.889282, 43.373642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854992, 38.886318, 42.739128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253513, 38.887138, 42.704762>,  <37.492626, 38.887630, 42.684143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253513, 38.887138, 42.704762>,  <36.854992, 38.886318, 42.739128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253513, 38.887138, 42.704762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065943, -0.622802, -0.779595,
		-0.055105, 0.782377, -0.620363,
		0.996301, 0.002051, -0.085912,
		37.552402, 38.887753, 42.678989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964500, 38.996998, 42.039654>,  <36.854992, 38.886318, 42.739128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964500, 38.996998, 42.039654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303493, 38.824883, 42.163994>,  <37.506889, 38.721615, 42.238598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.303493, 38.824883, 42.163994>,  <36.964500, 38.996998, 42.039654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303493, 38.824883, 42.163994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119632, -0.415713, -0.901594,
		0.517166, 0.801273, -0.300833,
		0.847483, -0.430284, 0.310850,
		37.557739, 38.695797, 42.257248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390621, 39.073505, 41.535789>,  <36.964500, 38.996998, 42.039654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390621, 39.073505, 41.535789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580818, 38.768501, 41.711281>,  <37.694939, 38.585499, 41.816574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580818, 38.768501, 41.711281>,  <37.390621, 39.073505, 41.535789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580818, 38.768501, 41.711281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246938, -0.362971, -0.898484,
		0.844349, 0.535563, 0.015702,
		0.475496, -0.762512, 0.438725,
		37.723465, 38.539749, 41.842899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015163, 38.899761, 41.070770>,  <37.390621, 39.073505, 41.535789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015163, 38.899761, 41.070770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015579, 38.574062, 41.302975>,  <38.015831, 38.378643, 41.442299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015579, 38.574062, 41.302975>,  <38.015163, 38.899761, 41.070770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015579, 38.574062, 41.302975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265131, -0.559515, -0.785270,
		0.964212, 0.154730, 0.215299,
		0.001042, -0.814249, 0.580515,
		38.015892, 38.329788, 41.477131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663738, 38.509876, 40.890739>,  <38.015163, 38.899761, 41.070770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663738, 38.509876, 40.890739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411655, 38.247742, 41.057289>,  <38.260406, 38.090462, 41.157219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411655, 38.247742, 41.057289>,  <38.663738, 38.509876, 40.890739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411655, 38.247742, 41.057289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176199, -0.642989, -0.745331,
		0.756168, -0.396351, 0.520688,
		-0.630209, -0.655341, 0.416371,
		38.222591, 38.051140, 41.182201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039986, 37.823898, 41.133415>,  <38.663738, 38.509876, 40.890739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039986, 37.823898, 41.133415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652485, 37.745007, 41.073257>,  <38.419983, 37.697670, 41.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652485, 37.745007, 41.073257>,  <39.039986, 37.823898, 41.133415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652485, 37.745007, 41.073257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236800, -0.555075, -0.797381,
		0.073788, -0.808079, 0.584435,
		-0.968752, -0.197231, -0.150396,
		38.361858, 37.685837, 41.028137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090893, 37.159992, 40.857773>,  <39.039986, 37.823898, 41.133415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090893, 37.159992, 40.857773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728531, 37.280674, 40.738907>,  <38.511112, 37.353085, 40.667587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728531, 37.280674, 40.738907>,  <39.090893, 37.159992, 40.857773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728531, 37.280674, 40.738907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124305, -0.481368, -0.867659,
		-0.404823, -0.822957, 0.398571,
		-0.905906, 0.301704, -0.297167,
		38.456760, 37.371185, 40.649757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769661, 36.536907, 40.464298>,  <39.090893, 37.159992, 40.857773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769661, 36.536907, 40.464298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575943, 36.877228, 40.382713>,  <38.459713, 37.081421, 40.333763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575943, 36.877228, 40.382713>,  <38.769661, 36.536907, 40.464298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575943, 36.877228, 40.382713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129761, -0.300394, -0.944947,
		-0.865229, -0.431167, 0.255880,
		-0.484295, 0.850799, -0.203961,
		38.430656, 37.132469, 40.321526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209599, 36.350677, 40.140785>,  <38.769661, 36.536907, 40.464298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209599, 36.350677, 40.140785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251839, 36.737846, 40.049599>,  <38.277184, 36.970150, 39.994888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251839, 36.737846, 40.049599>,  <38.209599, 36.350677, 40.140785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251839, 36.737846, 40.049599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006050, -0.229866, -0.973203,
		-0.994390, 0.101392, -0.030130,
		0.105601, 0.967926, -0.227964,
		38.283520, 37.028225, 39.981209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761040, 36.427399, 39.588619>,  <38.209599, 36.350677, 40.140785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761040, 36.427399, 39.588619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003952, 36.744308, 39.564926>,  <38.149700, 36.934456, 39.550709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003952, 36.744308, 39.564926>,  <37.761040, 36.427399, 39.588619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003952, 36.744308, 39.564926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002225, -0.072858, -0.997340,
		-0.794482, 0.605799, -0.042482,
		0.607283, 0.792274, -0.059232,
		38.186138, 36.981991, 39.547157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524750, 36.863979, 39.030609>,  <37.761040, 36.427399, 39.588619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524750, 36.863979, 39.030609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899326, 36.992424, 39.087132>,  <38.124073, 37.069492, 39.121044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899326, 36.992424, 39.087132>,  <37.524750, 36.863979, 39.030609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899326, 36.992424, 39.087132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100104, 0.141472, -0.984868,
		-0.336247, 0.936414, 0.100335,
		0.936439, 0.321115, 0.141308,
		38.180260, 37.088760, 39.129524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656319, 37.573635, 38.693165>,  <37.524750, 36.863979, 39.030609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656319, 37.573635, 38.693165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008957, 37.387074, 38.722179>,  <38.220539, 37.275135, 38.739586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008957, 37.387074, 38.722179>,  <37.656319, 37.573635, 38.693165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008957, 37.387074, 38.722179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216859, 0.263735, -0.939902,
		0.419246, 0.844340, 0.333650,
		0.881593, -0.466405, 0.072533,
		38.273434, 37.247150, 38.743938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964039, 37.885067, 38.234966>,  <37.656319, 37.573635, 38.693165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964039, 37.885067, 38.234966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218773, 37.588985, 38.321255>,  <38.371613, 37.411335, 38.373028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218773, 37.588985, 38.321255>,  <37.964039, 37.885067, 38.234966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218773, 37.588985, 38.321255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228310, -0.086191, -0.969766,
		0.736417, 0.666835, 0.114106,
		0.636839, -0.740204, 0.215718,
		38.409824, 37.366924, 38.385971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439587, 38.135155, 37.915524>,  <37.964039, 37.885067, 38.234966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439587, 38.135155, 37.915524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510433, 37.744804, 37.966599>,  <38.552940, 37.510593, 37.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510433, 37.744804, 37.966599>,  <38.439587, 38.135155, 37.915524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510433, 37.744804, 37.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253427, -0.080141, -0.964029,
		0.951002, 0.203102, 0.233118,
		0.177114, -0.975873, 0.127686,
		38.563568, 37.452042, 38.004906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074230, 38.026691, 37.666714>,  <38.439587, 38.135155, 37.915524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074230, 38.026691, 37.666714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907181, 37.663422, 37.655285>,  <38.806953, 37.445461, 37.648426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907181, 37.663422, 37.655285>,  <39.074230, 38.026691, 37.666714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907181, 37.663422, 37.655285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399575, -0.155315, -0.903447,
		0.816048, -0.388715, 0.427746,
		-0.417619, -0.908173, -0.028576,
		38.781895, 37.390968, 37.646713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541061, 37.766537, 37.378387>,  <39.074230, 38.026691, 37.666714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541061, 37.766537, 37.378387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215729, 37.549564, 37.294235>,  <39.020527, 37.419380, 37.243744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215729, 37.549564, 37.294235>,  <39.541061, 37.766537, 37.378387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215729, 37.549564, 37.294235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340266, -0.150177, -0.928260,
		0.471919, -0.826570, 0.306714,
		-0.813333, -0.542428, -0.210382,
		38.971729, 37.386837, 37.231121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745678, 37.164055, 37.001213>,  <39.541061, 37.766537, 37.378387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745678, 37.164055, 37.001213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355747, 37.175159, 36.912716>,  <39.121788, 37.181824, 36.859619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355747, 37.175159, 36.912716>,  <39.745678, 37.164055, 37.001213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355747, 37.175159, 36.912716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220625, -0.023719, -0.975070,
		-0.032332, -0.999333, 0.016994,
		-0.974823, 0.027777, -0.221245,
		39.063301, 37.183487, 36.846344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690037, 36.669632, 36.513412>,  <39.745678, 37.164055, 37.001213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690037, 36.669632, 36.513412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370544, 36.905689, 36.466480>,  <39.178848, 37.047321, 36.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370544, 36.905689, 36.466480>,  <39.690037, 36.669632, 36.513412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370544, 36.905689, 36.466480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195677, 0.070362, -0.978141,
		-0.568984, -0.804229, -0.171677,
		-0.798728, 0.590140, -0.117335,
		39.130924, 37.082729, 36.431278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185600, 36.313839, 36.212559>,  <39.690037, 36.669632, 36.513412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185600, 36.313839, 36.212559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195194, 36.706097, 36.134819>,  <39.200951, 36.941452, 36.088177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195194, 36.706097, 36.134819>,  <39.185600, 36.313839, 36.212559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195194, 36.706097, 36.134819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141635, -0.195773, -0.970367,
		-0.989628, -0.004251, -0.143588,
		0.023985, 0.980640, -0.194345,
		39.202389, 37.000290, 36.076515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668415, 36.570007, 35.688091>,  <39.185600, 36.313839, 36.212559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668415, 36.570007, 35.688091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979919, 36.820782, 35.679329>,  <39.166824, 36.971245, 35.674072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979919, 36.820782, 35.679329>,  <38.668415, 36.570007, 35.688091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979919, 36.820782, 35.679329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006183, -0.027254, -0.999609,
		-0.627286, 0.778596, -0.017349,
		0.778764, 0.626934, -0.021910,
		39.213551, 37.008862, 35.672756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571194, 37.117035, 35.177219>,  <38.668415, 36.570007, 35.688091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571194, 37.117035, 35.177219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963882, 37.052750, 35.218006>,  <39.199493, 37.014179, 35.242477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963882, 37.052750, 35.218006>,  <38.571194, 37.117035, 35.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963882, 37.052750, 35.218006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066386, -0.212955, -0.974804,
		0.178379, 0.963754, -0.198393,
		0.981720, -0.160714, 0.101966,
		39.258400, 37.004536, 35.248596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992798, 37.513348, 34.629097>,  <38.571194, 37.117035, 35.177219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992798, 37.513348, 34.629097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249306, 37.240051, 34.768784>,  <39.403210, 37.076073, 34.852596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249306, 37.240051, 34.768784>,  <38.992798, 37.513348, 34.629097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249306, 37.240051, 34.768784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216356, -0.275641, -0.936596,
		0.736180, 0.676167, -0.028937,
		0.641272, -0.683242, 0.349214,
		39.441689, 37.035080, 34.873547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759834, 37.451027, 34.452915>,  <38.992798, 37.513348, 34.629097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759834, 37.451027, 34.452915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735836, 37.060463, 34.535885>,  <39.721436, 36.826126, 34.585667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735836, 37.060463, 34.535885>,  <39.759834, 37.451027, 34.452915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735836, 37.060463, 34.535885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299224, -0.215830, -0.929453,
		0.952295, 0.006304, 0.305114,
		-0.059994, -0.976411, 0.207420,
		39.717838, 36.767540, 34.598110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380589, 37.108311, 34.475025>,  <39.759834, 37.451027, 34.452915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380589, 37.108311, 34.475025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076359, 36.878937, 34.353241>,  <39.893822, 36.741310, 34.280170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076359, 36.878937, 34.353241>,  <40.380589, 37.108311, 34.475025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076359, 36.878937, 34.353241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415264, -0.069175, -0.907067,
		0.499085, -0.816323, 0.290741,
		-0.760572, -0.573438, -0.304465,
		39.848186, 36.706905, 34.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468060, 36.416599, 34.302032>,  <40.380589, 37.108311, 34.475025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468060, 36.416599, 34.302032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191811, 36.540092, 34.040428>,  <40.026062, 36.614189, 33.883465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.191811, 36.540092, 34.040428>,  <40.468060, 36.416599, 34.302032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191811, 36.540092, 34.040428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591038, -0.280217, -0.756408,
		-0.416795, -0.908933, 0.011049,
		-0.690621, 0.308736, -0.654007,
		39.984623, 36.632713, 33.844227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152363, 36.188213, 34.419250>,  <40.468060, 36.416599, 34.302032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152363, 36.188213, 34.419250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513771, 36.093105, 34.561863>,  <41.730618, 36.036041, 34.647430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513771, 36.093105, 34.561863>,  <41.152363, 36.188213, 34.419250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513771, 36.093105, 34.561863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119601, 0.658998, 0.742575,
		-0.411511, -0.713575, 0.566982,
		0.903523, -0.237766, 0.356529,
		41.784828, 36.021774, 34.668823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074028, 36.066338, 35.137917>,  <41.152363, 36.188213, 34.419250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074028, 36.066338, 35.137917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454437, 36.162563, 35.060268>,  <41.682682, 36.220299, 35.013680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454437, 36.162563, 35.060268>,  <41.074028, 36.066338, 35.137917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454437, 36.162563, 35.060268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078584, 0.795500, 0.600837,
		0.298957, -0.556157, 0.775445,
		0.951026, 0.240562, -0.194116,
		41.739746, 36.234734, 35.002033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498077, 36.039070, 35.776154>,  <41.074028, 36.066338, 35.137917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498077, 36.039070, 35.776154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672390, 36.284554, 35.512802>,  <41.776978, 36.431843, 35.354790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672390, 36.284554, 35.512802>,  <41.498077, 36.039070, 35.776154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672390, 36.284554, 35.512802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033669, 0.719861, 0.693302,
		0.899423, -0.324294, 0.293038,
		0.435780, 0.613705, -0.658378,
		41.803123, 36.468666, 35.315289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937042, 36.462029, 36.233768>,  <41.498077, 36.039070, 35.776154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937042, 36.462029, 36.233768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930882, 36.657127, 35.884628>,  <41.927185, 36.774189, 35.675144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930882, 36.657127, 35.884628>,  <41.937042, 36.462029, 36.233768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930882, 36.657127, 35.884628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075070, 0.869923, 0.487440,
		0.997059, 0.073030, 0.023221,
		-0.015397, 0.487750, -0.872848,
		41.926262, 36.803452, 35.622772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244869, 37.127087, 36.397369>,  <41.937042, 36.462029, 36.233768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244869, 37.127087, 36.397369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058315, 37.189861, 36.049149>,  <41.946384, 37.227524, 35.840218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058315, 37.189861, 36.049149>,  <42.244869, 37.127087, 36.397369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058315, 37.189861, 36.049149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140961, 0.958377, 0.248283,
		0.873280, 0.238508, -0.424847,
		-0.466381, 0.156934, -0.870552,
		41.918400, 37.236942, 35.787983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515724, 37.740963, 36.174011>,  <42.244869, 37.127087, 36.397369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515724, 37.740963, 36.174011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171349, 37.704762, 35.973774>,  <41.964722, 37.683041, 35.853630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171349, 37.704762, 35.973774>,  <42.515724, 37.740963, 36.174011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171349, 37.704762, 35.973774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204011, 0.962874, 0.176785,
		0.466011, 0.254328, -0.847438,
		-0.860938, -0.090503, -0.500595,
		41.913067, 37.677612, 35.823597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466461, 38.335907, 35.802761>,  <42.515724, 37.740963, 36.174011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466461, 38.335907, 35.802761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108776, 38.171410, 35.732037>,  <41.894165, 38.072712, 35.689602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108776, 38.171410, 35.732037>,  <42.466461, 38.335907, 35.802761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108776, 38.171410, 35.732037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425890, 0.903214, 0.053121,
		0.137851, 0.122803, -0.982810,
		-0.894211, -0.411247, -0.176810,
		41.840511, 38.048035, 35.678993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117802, 38.726589, 35.291321>,  <42.466461, 38.335907, 35.802761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117802, 38.726589, 35.291321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833775, 38.580963, 35.532402>,  <41.663357, 38.493587, 35.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833775, 38.580963, 35.532402>,  <42.117802, 38.726589, 35.291321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833775, 38.580963, 35.532402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240639, 0.929891, 0.278201,
		-0.661736, 0.052507, -0.747896,
		-0.710069, -0.364068, 0.602707,
		41.620754, 38.471741, 35.713215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.625710, 39.271626, 35.336983>,  <42.117802, 38.726589, 35.291321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.625710, 39.271626, 35.336983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526169, 39.056580, 35.659237>,  <41.466446, 38.927551, 35.852589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526169, 39.056580, 35.659237>,  <41.625710, 39.271626, 35.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526169, 39.056580, 35.659237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320817, 0.830595, 0.455179,
		-0.913866, -0.145188, -0.379171,
		-0.248850, -0.537617, 0.805631,
		41.451515, 38.895294, 35.900925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952614, 39.536079, 35.538643>,  <41.625710, 39.271626, 35.336983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952614, 39.536079, 35.538643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096081, 39.356075, 35.865776>,  <41.182163, 39.248074, 36.062054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096081, 39.356075, 35.865776>,  <40.952614, 39.536079, 35.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096081, 39.356075, 35.865776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163383, 0.832335, 0.529645,
		-0.919055, -0.323588, 0.225009,
		0.358670, -0.450010, 0.817831,
		41.203682, 39.221073, 36.111126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456161, 39.758293, 36.009239>,  <40.952614, 39.536079, 35.538643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456161, 39.758293, 36.009239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784737, 39.652138, 36.211155>,  <40.981880, 39.588444, 36.332306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784737, 39.652138, 36.211155>,  <40.456161, 39.758293, 36.009239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784737, 39.652138, 36.211155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176341, 0.723559, 0.667357,
		-0.542354, -0.637206, 0.547559,
		0.821436, -0.265387, 0.504791,
		41.031166, 39.572521, 36.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284122, 39.763371, 36.694859>,  <40.456161, 39.758293, 36.009239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284122, 39.763371, 36.694859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679276, 39.815216, 36.660702>,  <40.916367, 39.846321, 36.640209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679276, 39.815216, 36.660702>,  <40.284122, 39.763371, 36.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679276, 39.815216, 36.660702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056736, 0.813642, 0.578592,
		0.144470, -0.566735, 0.811135,
		0.987881, 0.129610, -0.085392,
		40.975639, 39.854099, 36.635082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449535, 40.034988, 37.390877>,  <40.284122, 39.763371, 36.694859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449535, 40.034988, 37.390877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761566, 40.125393, 37.157501>,  <40.948784, 40.179638, 37.017475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761566, 40.125393, 37.157501>,  <40.449535, 40.034988, 37.390877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761566, 40.125393, 37.157501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124325, 0.857895, 0.498557,
		0.613213, -0.461448, 0.641121,
		0.780073, 0.226014, -0.583442,
		40.995586, 40.193195, 36.982468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824295, 40.372047, 37.837479>,  <40.449535, 40.034988, 37.390877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824295, 40.372047, 37.837479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989391, 40.490940, 37.493084>,  <41.088448, 40.562275, 37.286446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989391, 40.490940, 37.493084>,  <40.824295, 40.372047, 37.837479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989391, 40.490940, 37.493084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208929, 0.889161, 0.407112,
		0.886557, -0.347921, 0.304906,
		0.412753, 0.297224, -0.860983,
		41.113213, 40.580109, 37.234787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393116, 40.664890, 38.131573>,  <40.824295, 40.372047, 37.837479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393116, 40.664890, 38.131573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331036, 40.791294, 37.757183>,  <41.293785, 40.867138, 37.532551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.331036, 40.791294, 37.757183>,  <41.393116, 40.664890, 38.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331036, 40.791294, 37.757183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254253, 0.928316, 0.271265,
		0.954603, -0.195873, -0.224425,
		-0.155203, 0.316012, -0.935975,
		41.284473, 40.886097, 37.476391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915611, 41.193233, 38.139008>,  <41.393116, 40.664890, 38.131573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915611, 41.193233, 38.139008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696781, 41.267082, 37.812420>,  <41.565483, 41.311390, 37.616467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696781, 41.267082, 37.812420>,  <41.915611, 41.193233, 38.139008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696781, 41.267082, 37.812420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302039, 0.953205, 0.013156,
		0.780689, -0.239408, -0.577242,
		-0.547080, 0.184621, -0.816467,
		41.532658, 41.322468, 37.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356815, 41.458496, 37.566452>,  <41.915611, 41.193233, 38.139008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356815, 41.458496, 37.566452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980080, 41.581356, 37.511913>,  <41.754036, 41.655071, 37.479191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980080, 41.581356, 37.511913>,  <42.356815, 41.458496, 37.566452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980080, 41.581356, 37.511913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300215, 0.951347, 0.069351,
		0.151013, 0.024384, -0.988231,
		-0.941842, 0.307154, -0.136346,
		41.697529, 41.673504, 37.471008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319176, 41.980198, 37.063484>,  <42.356815, 41.458496, 37.566452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319176, 41.980198, 37.063484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004105, 42.025620, 37.305698>,  <41.815063, 42.052872, 37.451027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004105, 42.025620, 37.305698>,  <42.319176, 41.980198, 37.063484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004105, 42.025620, 37.305698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256798, 0.953931, 0.155147,
		-0.560021, 0.277706, -0.780548,
		-0.787674, 0.113557, 0.605536,
		41.767803, 42.059689, 37.487358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049793, 42.730579, 36.936775>,  <42.319176, 41.980198, 37.063484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049793, 42.730579, 36.936775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864594, 42.631073, 37.277069>,  <41.753475, 42.571369, 37.481247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864594, 42.631073, 37.277069>,  <42.049793, 42.730579, 36.936775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864594, 42.631073, 37.277069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361944, 0.823074, 0.437659,
		-0.809093, 0.510553, -0.291039,
		-0.462995, -0.248767, 0.850735,
		41.725697, 42.556442, 37.532291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852177, 43.315773, 37.157276>,  <42.049793, 42.730579, 36.936775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852177, 43.315773, 37.157276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829868, 43.091618, 37.487816>,  <41.816483, 42.957123, 37.686138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829868, 43.091618, 37.487816>,  <41.852177, 43.315773, 37.157276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829868, 43.091618, 37.487816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434690, 0.731456, 0.525373,
		-0.898852, 0.388505, 0.202804,
		-0.055768, -0.560389, 0.826350,
		41.813137, 42.923500, 37.735722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659821, 43.772453, 37.695812>,  <41.852177, 43.315773, 37.157276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659821, 43.772453, 37.695812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881363, 43.461464, 37.814991>,  <42.014290, 43.274872, 37.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881363, 43.461464, 37.814991>,  <41.659821, 43.772453, 37.695812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881363, 43.461464, 37.814991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608624, 0.622246, 0.492328,
		-0.568169, -0.091342, 0.817827,
		0.553860, -0.777475, 0.297948,
		42.047520, 43.228222, 37.904377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793640, 43.789959, 38.448544>,  <41.659821, 43.772453, 37.695812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793640, 43.789959, 38.448544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082283, 43.579933, 38.268059>,  <42.255470, 43.453918, 38.159767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082283, 43.579933, 38.268059>,  <41.793640, 43.789959, 38.448544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082283, 43.579933, 38.268059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688712, 0.478158, 0.545015,
		-0.070419, -0.704040, 0.706660,
		0.721608, -0.525064, -0.451209,
		42.298767, 43.422413, 38.132694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393986, 43.598351, 38.994469>,  <41.793640, 43.789959, 38.448544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393986, 43.598351, 38.994469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548489, 43.620358, 38.626167>,  <42.641190, 43.633560, 38.405186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548489, 43.620358, 38.626167>,  <42.393986, 43.598351, 38.994469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548489, 43.620358, 38.626167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768506, 0.532843, 0.354227,
		0.510103, -0.844424, 0.163533,
		0.386255, 0.055016, -0.920750,
		42.664364, 43.636864, 38.349941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731129, 43.140812, 39.484970>,  <42.393986, 43.598351, 38.994469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731129, 43.140812, 39.484970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850937, 43.017796, 39.846237>,  <42.922821, 42.943985, 40.062996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.850937, 43.017796, 39.846237>,  <42.731129, 43.140812, 39.484970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.850937, 43.017796, 39.846237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945667, 0.221200, -0.238294,
		-0.126495, 0.925466, 0.357087,
		0.299521, -0.307542, 0.903164,
		42.940792, 42.925533, 40.117188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073978, 43.693043, 40.044285>,  <42.731129, 43.140812, 39.484970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073978, 43.693043, 40.044285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261047, 43.349804, 40.129082>,  <43.373291, 43.143860, 40.179962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261047, 43.349804, 40.129082>,  <43.073978, 43.693043, 40.044285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261047, 43.349804, 40.129082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883401, 0.461824, -0.079504,
		-0.029683, 0.224461, 0.974031,
		0.467676, -0.858100, 0.211997,
		43.401352, 43.092373, 40.192680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633747, 43.826416, 40.542690>,  <43.073978, 43.693043, 40.044285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633747, 43.826416, 40.542690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712101, 43.529179, 40.286739>,  <43.759113, 43.350838, 40.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712101, 43.529179, 40.286739>,  <43.633747, 43.826416, 40.542690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712101, 43.529179, 40.286739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879068, 0.422247, -0.221242,
		0.434590, -0.519159, 0.735938,
		0.195888, -0.743089, -0.639880,
		43.770866, 43.306252, 40.094776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359276, 43.392807, 40.659630>,  <43.633747, 43.826416, 40.542690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359276, 43.392807, 40.659630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249695, 43.411201, 40.275372>,  <44.183945, 43.422237, 40.044819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249695, 43.411201, 40.275372>,  <44.359276, 43.392807, 40.659630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249695, 43.411201, 40.275372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911148, 0.332119, -0.243938,
		0.307830, -0.942116, -0.132887,
		-0.273952, 0.045989, -0.960643,
		44.167511, 43.424999, 39.987179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692654, 43.004837, 40.110989>,  <44.359276, 43.392807, 40.659630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692654, 43.004837, 40.110989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564835, 43.336372, 39.927284>,  <44.488144, 43.535294, 39.817062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564835, 43.336372, 39.927284>,  <44.692654, 43.004837, 40.110989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564835, 43.336372, 39.927284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922430, 0.161184, -0.350916,
		-0.216827, -0.535770, -0.816049,
		-0.319544, 0.828837, -0.459262,
		44.468971, 43.585022, 39.789505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178032, 43.405785, 40.602615>,  <44.692654, 43.004837, 40.110989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178032, 43.405785, 40.602615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525608, 43.208035, 40.611782>,  <45.734154, 43.089382, 40.617283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525608, 43.208035, 40.611782>,  <45.178032, 43.405785, 40.602615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525608, 43.208035, 40.611782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439747, -0.792507, -0.422559,
		0.227064, 0.357104, -0.906046,
		0.868945, -0.494378, 0.022914,
		45.786293, 43.059719, 40.618656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.409168, 43.143635, 39.833572>,  <45.178032, 43.405785, 40.602615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.409168, 43.143635, 39.833572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598431, 42.920345, 40.106190>,  <45.711990, 42.786369, 40.269760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.598431, 42.920345, 40.106190>,  <45.409168, 43.143635, 39.833572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.598431, 42.920345, 40.106190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141497, -0.811736, -0.566625,
		0.869540, 0.171667, -0.463067,
		0.473159, -0.558226, 0.681546,
		45.740379, 42.752876, 40.310654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020481, 42.781330, 39.622692>,  <45.409168, 43.143635, 39.833572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020481, 42.781330, 39.622692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806679, 42.563869, 39.881535>,  <45.678398, 42.433395, 40.036839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806679, 42.563869, 39.881535>,  <46.020481, 42.781330, 39.622692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806679, 42.563869, 39.881535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171072, -0.680217, -0.712769,
		0.827668, -0.491683, 0.270579,
		-0.534509, -0.543647, 0.647107,
		45.646324, 42.400776, 40.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358856, 42.116169, 39.788025>,  <46.020481, 42.781330, 39.622692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358856, 42.116169, 39.788025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962639, 42.061321, 39.789680>,  <45.724907, 42.028412, 39.790676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.962639, 42.061321, 39.789680>,  <46.358856, 42.116169, 39.788025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.962639, 42.061321, 39.789680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103155, -0.764402, -0.636434,
		0.090437, -0.629990, 0.771320,
		-0.990545, -0.137123, 0.004143,
		45.665474, 42.020184, 39.790924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331226, 41.362488, 39.906548>,  <46.358856, 42.116169, 39.788025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331226, 41.362488, 39.906548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989243, 41.479832, 39.735447>,  <45.784050, 41.550240, 39.632786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.989243, 41.479832, 39.735447>,  <46.331226, 41.362488, 39.906548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.989243, 41.479832, 39.735447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021944, -0.844406, -0.535253,
		-0.518222, -0.448236, 0.728375,
		-0.854965, 0.293364, -0.427754,
		45.732754, 41.567841, 39.607121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976452, 40.767521, 39.900635>,  <46.331226, 41.362488, 39.906548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976452, 40.767521, 39.900635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791866, 41.004910, 39.636864>,  <45.681114, 41.147343, 39.478600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.791866, 41.004910, 39.636864>,  <45.976452, 40.767521, 39.900635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791866, 41.004910, 39.636864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154166, -0.785636, -0.599174,
		-0.873663, -0.174835, 0.454034,
		-0.461461, 0.593472, -0.659427,
		45.653427, 41.182953, 39.439037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378681, 40.432724, 39.631241>,  <45.976452, 40.767521, 39.900635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378681, 40.432724, 39.631241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443005, 40.710457, 39.350655>,  <45.481598, 40.877094, 39.182304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.443005, 40.710457, 39.350655>,  <45.378681, 40.432724, 39.631241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443005, 40.710457, 39.350655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264025, -0.654547, -0.708420,
		-0.951016, 0.299121, 0.078066,
		0.160805, 0.694330, -0.701461,
		45.491245, 40.918755, 39.140217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784267, 40.387970, 39.199905>,  <45.378681, 40.432724, 39.631241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784267, 40.387970, 39.199905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062561, 40.581524, 38.987560>,  <45.229538, 40.697655, 38.860153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062561, 40.581524, 38.987560>,  <44.784267, 40.387970, 39.199905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062561, 40.581524, 38.987560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205690, -0.573896, -0.792676,
		-0.688222, 0.660682, -0.299748,
		0.695731, 0.483882, -0.530864,
		45.271282, 40.726688, 38.828300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426079, 40.523754, 38.575771>,  <44.784267, 40.387970, 39.199905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426079, 40.523754, 38.575771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811611, 40.551090, 38.472733>,  <45.042931, 40.567490, 38.410908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811611, 40.551090, 38.472733>,  <44.426079, 40.523754, 38.575771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811611, 40.551090, 38.472733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148940, -0.663423, -0.733271,
		-0.221006, 0.745117, -0.629251,
		0.963832, 0.068336, -0.257599,
		45.100761, 40.571590, 38.395454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545536, 40.716198, 37.810184>,  <44.426079, 40.523754, 38.575771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545536, 40.716198, 37.810184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860317, 40.506802, 37.940819>,  <45.049187, 40.381165, 38.019199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860317, 40.506802, 37.940819>,  <44.545536, 40.716198, 37.810184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860317, 40.506802, 37.940819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006617, -0.536435, -0.843916,
		0.616976, 0.661962, -0.425614,
		0.786954, -0.523492, 0.326588,
		45.096405, 40.349754, 38.038795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103687, 40.695404, 37.293846>,  <44.545536, 40.716198, 37.810184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103687, 40.695404, 37.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149548, 40.376968, 37.531536>,  <45.177063, 40.185909, 37.674149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149548, 40.376968, 37.531536>,  <45.103687, 40.695404, 37.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149548, 40.376968, 37.531536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096187, -0.604254, -0.790964,
		0.988738, 0.033527, -0.145851,
		0.114650, -0.796086, 0.594225,
		45.183941, 40.138142, 37.709805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316391, 40.162930, 36.800106>,  <45.103687, 40.695404, 37.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316391, 40.162930, 36.800106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309284, 39.933342, 37.127583>,  <45.305019, 39.795589, 37.324066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309284, 39.933342, 37.127583>,  <45.316391, 40.162930, 36.800106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309284, 39.933342, 37.127583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075378, -0.815717, -0.573519,
		0.996997, -0.071903, -0.028769,
		-0.017771, -0.573965, 0.818687,
		45.303951, 39.761154, 37.373188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881283, 39.635845, 36.736935>,  <45.316391, 40.162930, 36.800106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881283, 39.635845, 36.736935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595730, 39.507370, 36.985840>,  <45.424400, 39.430283, 37.135181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595730, 39.507370, 36.985840>,  <45.881283, 39.635845, 36.736935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595730, 39.507370, 36.985840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021985, -0.877890, -0.478357,
		0.699923, -0.355171, 0.619647,
		-0.713880, -0.321190, 0.622264,
		45.381565, 39.411015, 37.172520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.999657, 38.877083, 36.771572>,  <45.881283, 39.635845, 36.736935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.999657, 38.877083, 36.771572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636780, 38.895454, 36.938850>,  <45.419052, 38.906479, 37.039215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636780, 38.895454, 36.938850>,  <45.999657, 38.877083, 36.771572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636780, 38.895454, 36.938850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257205, -0.847170, -0.464919,
		0.332927, -0.529334, 0.780362,
		-0.907197, 0.045929, 0.418193,
		45.364620, 38.909233, 37.064308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852390, 38.233170, 36.979259>,  <45.999657, 38.877083, 36.771572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852390, 38.233170, 36.979259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497795, 38.416367, 36.952785>,  <45.285038, 38.526283, 36.936901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497795, 38.416367, 36.952785>,  <45.852390, 38.233170, 36.979259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497795, 38.416367, 36.952785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368849, -0.785718, -0.496585,
		-0.279435, -0.415805, 0.865461,
		-0.886491, 0.457988, -0.066188,
		45.231850, 38.553764, 36.932930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297501, 37.781845, 37.410820>,  <45.852390, 38.233170, 36.979259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297501, 37.781845, 37.410820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100571, 37.995148, 37.135651>,  <44.982410, 38.123131, 36.970547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100571, 37.995148, 37.135651>,  <45.297501, 37.781845, 37.410820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100571, 37.995148, 37.135651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460461, -0.830267, -0.314060,
		-0.738639, 0.162142, 0.654310,
		-0.492329, 0.533261, -0.687928,
		44.952873, 38.155125, 36.929272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697189, 37.345703, 37.325066>,  <45.297501, 37.781845, 37.410820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697189, 37.345703, 37.325066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685276, 37.605007, 37.020729>,  <44.678127, 37.760590, 36.838127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685276, 37.605007, 37.020729>,  <44.697189, 37.345703, 37.325066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685276, 37.605007, 37.020729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450377, -0.688234, -0.568765,
		-0.892342, 0.325726, 0.312457,
		-0.029782, 0.648256, -0.760840,
		44.676342, 37.799484, 36.792477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038059, 37.488880, 37.184395>,  <44.697189, 37.345703, 37.325066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038059, 37.488880, 37.184395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252396, 37.535603, 36.849915>,  <44.380997, 37.563637, 36.649227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252396, 37.535603, 36.849915>,  <44.038059, 37.488880, 37.184395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252396, 37.535603, 36.849915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496816, -0.757160, -0.424125,
		-0.682676, 0.642702, -0.347690,
		0.535843, 0.116802, -0.836199,
		44.413147, 37.570644, 36.599056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529079, 37.420200, 36.674328>,  <44.038059, 37.488880, 37.184395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529079, 37.420200, 36.674328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885475, 37.346867, 36.508179>,  <44.099312, 37.302864, 36.408489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885475, 37.346867, 36.508179>,  <43.529079, 37.420200, 36.674328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885475, 37.346867, 36.508179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362129, -0.838798, -0.406547,
		-0.273874, 0.512644, -0.813750,
		0.890986, -0.183339, -0.415369,
		44.152771, 37.291866, 36.383568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362995, 37.066284, 36.021233>,  <43.529079, 37.420200, 36.674328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362995, 37.066284, 36.021233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757908, 37.008530, 36.047829>,  <43.994858, 36.973877, 36.063786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757908, 37.008530, 36.047829>,  <43.362995, 37.066284, 36.021233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757908, 37.008530, 36.047829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102596, -0.898301, -0.427234,
		0.121418, 0.414980, -0.901693,
		0.987285, -0.144384, 0.066494,
		44.054092, 36.965214, 36.067776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685928, 36.976551, 35.376060>,  <43.362995, 37.066284, 36.021233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685928, 36.976551, 35.376060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946320, 36.771633, 35.600124>,  <44.102554, 36.648682, 35.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946320, 36.771633, 35.600124>,  <43.685928, 36.976551, 35.376060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946320, 36.771633, 35.600124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071224, -0.775896, -0.626827,
		0.755749, 0.368153, -0.541578,
		0.650976, -0.512298, 0.560162,
		44.141613, 36.617943, 35.768173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110600, 36.656834, 34.890884>,  <43.685928, 36.976551, 35.376060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110600, 36.656834, 34.890884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221870, 36.450005, 35.214676>,  <44.288631, 36.325909, 35.408951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221870, 36.450005, 35.214676>,  <44.110600, 36.656834, 34.890884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221870, 36.450005, 35.214676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083457, -0.826543, -0.556652,
		0.956898, 0.222404, -0.186771,
		0.278176, -0.517072, 0.809478,
		44.305325, 36.294884, 35.457520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707047, 36.260628, 34.711956>,  <44.110600, 36.656834, 34.890884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707047, 36.260628, 34.711956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531910, 36.072369, 35.018364>,  <44.426826, 35.959412, 35.202209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531910, 36.072369, 35.018364>,  <44.707047, 36.260628, 34.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531910, 36.072369, 35.018364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064853, -0.866344, -0.495219,
		0.896710, -0.167149, 0.409844,
		-0.437842, -0.470648, 0.766019,
		44.400558, 35.931175, 35.248169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108955, 35.668182, 34.796806>,  <44.707047, 36.260628, 34.711956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108955, 35.668182, 34.796806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772625, 35.581142, 34.995064>,  <44.570827, 35.528919, 35.114017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772625, 35.581142, 34.995064>,  <45.108955, 35.668182, 34.796806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772625, 35.581142, 34.995064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087758, -0.848733, -0.521490,
		0.534150, -0.481977, 0.694537,
		-0.840822, -0.217602, 0.495648,
		44.520378, 35.515862, 35.143757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742119, 35.631298, 34.950401>,  <45.108955, 35.668182, 34.796806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742119, 35.631298, 34.950401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872448, 35.472420, 34.607224>,  <45.950645, 35.377090, 34.401318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872448, 35.472420, 34.607224>,  <45.742119, 35.631298, 34.950401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872448, 35.472420, 34.607224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924222, 0.324945, 0.200558,
		0.199124, -0.858280, 0.472975,
		0.325826, -0.397198, -0.857946,
		45.970196, 35.353260, 34.349838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264706, 35.184631, 35.113518>,  <45.742119, 35.631298, 34.950401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264706, 35.184631, 35.113518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293678, 35.391739, 34.772537>,  <46.311062, 35.516003, 34.567947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.293678, 35.391739, 34.772537>,  <46.264706, 35.184631, 35.113518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.293678, 35.391739, 34.772537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645911, 0.626903, 0.435651,
		0.759969, -0.582162, -0.289024,
		0.072429, 0.517765, -0.852452,
		46.315407, 35.547070, 34.516800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.879311, 35.165989, 35.060764>,  <46.264706, 35.184631, 35.113518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.879311, 35.165989, 35.060764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768658, 35.484657, 34.845810>,  <46.702267, 35.675858, 34.716839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.768658, 35.484657, 34.845810>,  <46.879311, 35.165989, 35.060764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.768658, 35.484657, 34.845810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814311, 0.491269, 0.309115,
		0.510265, -0.352088, -0.784642,
		-0.276635, 0.796673, -0.537387,
		46.685669, 35.723660, 34.684593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539764, 34.837669, 35.401154>,  <46.879311, 35.165989, 35.060764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539764, 34.837669, 35.401154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853203, 34.942871, 35.176014>,  <48.041267, 35.005993, 35.040932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853203, 34.942871, 35.176014>,  <47.539764, 34.837669, 35.401154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853203, 34.942871, 35.176014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349553, -0.562323, -0.749404,
		-0.513599, 0.783978, -0.348703,
		0.783600, 0.263003, -0.562851,
		48.088284, 35.021770, 35.007160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.517262, 43.698009, 41.073967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391323, 43.421906, 41.334557>,  <34.315762, 43.256245, 41.490910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391323, 43.421906, 41.334557>,  <34.517262, 43.698009, 41.073967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391323, 43.421906, 41.334557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076200, -0.702546, -0.707547,
		0.946080, -0.173125, 0.273790,
		-0.314844, -0.690259, 0.651473,
		34.296871, 43.214828, 41.529999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940002, 43.086967, 40.957127>,  <34.517262, 43.698009, 41.073967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940002, 43.086967, 40.957127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605888, 42.938850, 41.119694>,  <34.405418, 42.849979, 41.217236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605888, 42.938850, 41.119694>,  <34.940002, 43.086967, 40.957127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605888, 42.938850, 41.119694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000052, -0.739141, -0.673550,
		0.549813, -0.562629, 0.617377,
		-0.835288, -0.370295, 0.406418,
		34.355301, 42.827763, 41.241619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063824, 42.367233, 41.050518>,  <34.940002, 43.086967, 40.957127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063824, 42.367233, 41.050518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665688, 42.405735, 41.052612>,  <34.426804, 42.428837, 41.053867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.665688, 42.405735, 41.052612>,  <35.063824, 42.367233, 41.050518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665688, 42.405735, 41.052612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077010, -0.761365, -0.643733,
		-0.057973, -0.641139, 0.765232,
		-0.995344, 0.096250, 0.005235,
		34.367085, 42.434608, 41.054184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757862, 41.694561, 41.100555>,  <35.063824, 42.367233, 41.050518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757862, 41.694561, 41.100555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449924, 41.890823, 40.937290>,  <34.265160, 42.008579, 40.839333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449924, 41.890823, 40.937290>,  <34.757862, 41.694561, 41.100555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449924, 41.890823, 40.937290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029948, -0.611050, -0.791025,
		-0.637535, -0.621186, 0.455716,
		-0.769839, 0.490658, -0.408169,
		34.218971, 42.038017, 40.814842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218834, 41.162914, 40.855793>,  <34.757862, 41.694561, 41.100555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218834, 41.162914, 40.855793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136284, 41.498489, 40.654358>,  <34.086754, 41.699833, 40.533497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.136284, 41.498489, 40.654358>,  <34.218834, 41.162914, 40.855793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136284, 41.498489, 40.654358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054987, -0.503906, -0.862006,
		-0.976926, -0.205590, 0.057865,
		-0.206379, 0.838935, -0.503584,
		34.074371, 41.750168, 40.503284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744392, 40.913078, 40.398746>,  <34.218834, 41.162914, 40.855793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744392, 40.913078, 40.398746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900143, 41.257511, 40.267948>,  <33.993591, 41.464169, 40.189468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.900143, 41.257511, 40.267948>,  <33.744392, 40.913078, 40.398746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900143, 41.257511, 40.267948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090355, -0.389011, -0.916791,
		-0.916636, 0.327432, -0.229275,
		0.389377, 0.861080, -0.326997,
		34.016956, 41.515835, 40.169849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357174, 41.130505, 39.790577>,  <33.744392, 40.913078, 40.398746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357174, 41.130505, 39.790577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682598, 41.350964, 39.716442>,  <33.877853, 41.483238, 39.671963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682598, 41.350964, 39.716442>,  <33.357174, 41.130505, 39.790577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682598, 41.350964, 39.716442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006980, -0.309454, -0.950889,
		-0.581434, 0.774903, -0.247913,
		0.813564, 0.551148, -0.185336,
		33.926666, 41.516308, 39.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229038, 41.515911, 39.207108>,  <33.357174, 41.130505, 39.790577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229038, 41.515911, 39.207108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627823, 41.503307, 39.235626>,  <33.867092, 41.495743, 39.252739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627823, 41.503307, 39.235626>,  <33.229038, 41.515911, 39.207108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627823, 41.503307, 39.235626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058355, -0.304729, -0.950650,
		0.051686, 0.951918, -0.301963,
		0.996957, -0.031514, 0.071300,
		33.926910, 41.493855, 39.257015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517429, 41.849365, 38.543053>,  <33.229038, 41.515911, 39.207108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517429, 41.849365, 38.543053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773029, 41.593475, 38.713902>,  <33.926388, 41.439941, 38.816410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773029, 41.593475, 38.713902>,  <33.517429, 41.849365, 38.543053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773029, 41.593475, 38.713902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296978, -0.307045, -0.904172,
		0.709570, 0.704608, -0.006215,
		0.638995, -0.639728, 0.427122,
		33.964729, 41.401558, 38.842037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113880, 41.907764, 38.143356>,  <33.517429, 41.849365, 38.543053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113880, 41.907764, 38.143356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173981, 41.558811, 38.329418>,  <34.210041, 41.349438, 38.441055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173981, 41.558811, 38.329418>,  <34.113880, 41.907764, 38.143356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173981, 41.558811, 38.329418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302768, -0.407288, -0.861654,
		0.941146, 0.270302, 0.202933,
		0.150255, -0.872384, 0.465156,
		34.219059, 41.297096, 38.468964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824203, 41.686752, 38.078880>,  <34.113880, 41.907764, 38.143356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824203, 41.686752, 38.078880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612106, 41.355125, 38.149864>,  <34.484848, 41.156151, 38.192455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612106, 41.355125, 38.149864>,  <34.824203, 41.686752, 38.078880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612106, 41.355125, 38.149864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498705, -0.474255, -0.725517,
		0.685663, -0.296200, 0.664930,
		-0.530245, -0.829064, 0.177462,
		34.453033, 41.106407, 38.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291309, 41.102154, 37.739864>,  <34.824203, 41.686752, 38.078880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291309, 41.102154, 37.739864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951977, 40.918106, 37.844643>,  <34.748375, 40.807678, 37.907509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951977, 40.918106, 37.844643>,  <35.291309, 41.102154, 37.739864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951977, 40.918106, 37.844643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169718, -0.704958, -0.688643,
		0.501521, -0.539743, 0.676132,
		-0.848335, -0.460121, 0.261947,
		34.697475, 40.780071, 37.923225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428848, 40.354057, 37.834396>,  <35.291309, 41.102154, 37.739864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428848, 40.354057, 37.834396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038811, 40.399475, 37.758186>,  <34.804787, 40.426727, 37.712460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.038811, 40.399475, 37.758186>,  <35.428848, 40.354057, 37.834396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038811, 40.399475, 37.758186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086371, -0.596819, -0.797713,
		-0.204284, -0.794301, 0.572148,
		-0.975094, 0.113543, -0.190526,
		34.746284, 40.433537, 37.701027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259411, 39.735123, 37.548355>,  <35.428848, 40.354057, 37.834396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259411, 39.735123, 37.548355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960327, 39.967949, 37.420525>,  <34.780876, 40.107643, 37.343826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.960327, 39.967949, 37.420525>,  <35.259411, 39.735123, 37.548355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960327, 39.967949, 37.420525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028288, -0.452911, -0.891107,
		-0.663423, -0.675330, 0.322181,
		-0.747710, 0.582067, -0.319575,
		34.736015, 40.142570, 37.324654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772125, 39.309986, 37.282410>,  <35.259411, 39.735123, 37.548355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772125, 39.309986, 37.282410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731129, 39.674297, 37.122417>,  <34.706532, 39.892883, 37.026421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.731129, 39.674297, 37.122417>,  <34.772125, 39.309986, 37.282410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731129, 39.674297, 37.122417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009130, -0.401219, -0.915937,
		-0.994692, -0.097527, 0.032806,
		-0.102491, 0.910776, -0.399979,
		34.700382, 39.947529, 37.002422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356571, 39.163994, 36.702099>,  <34.772125, 39.309986, 37.282410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356571, 39.163994, 36.702099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555073, 39.509727, 36.669468>,  <34.674175, 39.717167, 36.649891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.555073, 39.509727, 36.669468>,  <34.356571, 39.163994, 36.702099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555073, 39.509727, 36.669468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344481, -0.282284, -0.895348,
		-0.796907, 0.416224, -0.437832,
		0.496258, 0.864334, -0.081573,
		34.703949, 39.769028, 36.644997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231800, 39.342815, 36.092762>,  <34.356571, 39.163994, 36.702099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231800, 39.342815, 36.092762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567513, 39.549240, 36.161224>,  <34.768940, 39.673096, 36.202301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.567513, 39.549240, 36.161224>,  <34.231800, 39.342815, 36.092762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567513, 39.549240, 36.161224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383178, -0.338076, -0.859581,
		-0.385730, 0.787012, -0.481482,
		0.839278, 0.516059, 0.171159,
		34.819294, 39.704060, 36.212574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295033, 39.819477, 35.459755>,  <34.231800, 39.342815, 36.092762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295033, 39.819477, 35.459755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645798, 39.838821, 35.651039>,  <34.856255, 39.850430, 35.765812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.645798, 39.838821, 35.651039>,  <34.295033, 39.819477, 35.459755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645798, 39.838821, 35.651039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480267, -0.128056, -0.867724,
		0.019273, 0.990587, -0.135520,
		0.876911, 0.048362, 0.478214,
		34.908871, 39.853329, 35.794502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725945, 40.264729, 35.157806>,  <34.295033, 39.819477, 35.459755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725945, 40.264729, 35.157806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984554, 40.044201, 35.368725>,  <35.139721, 39.911884, 35.495277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984554, 40.044201, 35.368725>,  <34.725945, 40.264729, 35.157806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984554, 40.044201, 35.368725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510710, -0.200673, -0.836006,
		0.566723, 0.809799, 0.151825,
		0.646529, -0.551322, 0.527299,
		35.178513, 39.878803, 35.526913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402126, 40.491768, 34.921616>,  <34.725945, 40.264729, 35.157806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402126, 40.491768, 34.921616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462711, 40.140038, 35.102211>,  <35.499062, 39.929001, 35.210567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462711, 40.140038, 35.102211>,  <35.402126, 40.491768, 34.921616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462711, 40.140038, 35.102211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538533, -0.309612, -0.783660,
		0.828880, 0.361836, 0.426653,
		0.151459, -0.879327, 0.451492,
		35.508148, 39.876240, 35.237659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097397, 40.376980, 34.773506>,  <35.402126, 40.491768, 34.921616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097397, 40.376980, 34.773506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965099, 40.011192, 34.866768>,  <35.885719, 39.791721, 34.922726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.965099, 40.011192, 34.866768>,  <36.097397, 40.376980, 34.773506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965099, 40.011192, 34.866768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656881, -0.400466, -0.638853,
		0.677580, -0.058142, 0.733147,
		-0.330745, -0.914465, 0.233155,
		35.865875, 39.736855, 34.936714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710342, 39.975494, 34.690731>,  <36.097397, 40.376980, 34.773506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710342, 39.975494, 34.690731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384727, 39.743618, 34.676300>,  <36.189358, 39.604492, 34.667641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384727, 39.743618, 34.676300>,  <36.710342, 39.975494, 34.690731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384727, 39.743618, 34.676300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394744, -0.506618, -0.766495,
		0.426056, -0.638195, 0.641236,
		-0.814035, -0.579694, -0.036076,
		36.140518, 39.569710, 34.665478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937840, 39.302952, 34.872726>,  <36.710342, 39.975494, 34.690731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937840, 39.302952, 34.872726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328033, 39.260345, 34.949760>,  <37.562149, 39.234783, 34.995983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.328033, 39.260345, 34.949760>,  <36.937840, 39.302952, 34.872726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328033, 39.260345, 34.949760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079114, 0.646868, 0.758487,
		-0.205371, -0.755127, 0.622580,
		0.975481, -0.106517, 0.192590,
		37.620678, 39.228390, 35.007538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947025, 38.987793, 35.512241>,  <36.937840, 39.302952, 34.872726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947025, 38.987793, 35.512241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299591, 39.168583, 35.457359>,  <37.511131, 39.277058, 35.424431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299591, 39.168583, 35.457359>,  <36.947025, 38.987793, 35.512241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299591, 39.168583, 35.457359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055501, 0.387567, 0.920169,
		0.469070, -0.803436, 0.366692,
		0.881415, 0.451976, -0.137205,
		37.564014, 39.304176, 35.416199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306610, 38.748352, 36.029114>,  <36.947025, 38.987793, 35.512241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306610, 38.748352, 36.029114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485863, 39.084358, 35.906773>,  <37.593414, 39.285961, 35.833366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485863, 39.084358, 35.906773>,  <37.306610, 38.748352, 36.029114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485863, 39.084358, 35.906773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138392, 0.403192, 0.904591,
		0.883191, -0.363049, 0.296935,
		0.448132, 0.840019, -0.305852,
		37.620304, 39.336365, 35.815018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773281, 38.976448, 36.583485>,  <37.306610, 38.748352, 36.029114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773281, 38.976448, 36.583485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773781, 39.317257, 36.374084>,  <37.774082, 39.521744, 36.248444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773781, 39.317257, 36.374084>,  <37.773281, 38.976448, 36.583485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773781, 39.317257, 36.374084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033772, 0.523167, 0.851561,
		0.999429, -0.018743, -0.028121,
		0.001248, 0.852024, -0.523501,
		37.774155, 39.572865, 36.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334949, 39.368736, 36.713280>,  <37.773281, 38.976448, 36.583485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334949, 39.368736, 36.713280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071007, 39.645206, 36.595383>,  <37.912643, 39.811089, 36.524643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071007, 39.645206, 36.595383>,  <38.334949, 39.368736, 36.713280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071007, 39.645206, 36.595383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142744, 0.500424, 0.853932,
		0.737712, 0.521396, -0.428867,
		-0.659853, 0.691174, -0.294742,
		37.873051, 39.852558, 36.506962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705196, 39.945515, 36.868843>,  <38.334949, 39.368736, 36.713280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705196, 39.945515, 36.868843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327290, 40.052555, 36.793156>,  <38.100544, 40.116779, 36.747742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.327290, 40.052555, 36.793156>,  <38.705196, 39.945515, 36.868843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327290, 40.052555, 36.793156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013069, 0.546133, 0.837596,
		0.327480, 0.793807, -0.512472,
		-0.944768, 0.267599, -0.189222,
		38.043858, 40.132835, 36.736389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763439, 40.577415, 37.010513>,  <38.705196, 39.945515, 36.868843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763439, 40.577415, 37.010513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376385, 40.476578, 37.005898>,  <38.144154, 40.416077, 37.003128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.376385, 40.476578, 37.005898>,  <38.763439, 40.577415, 37.010513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376385, 40.476578, 37.005898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155276, 0.558712, 0.814697,
		-0.198931, 0.790121, -0.579773,
		-0.967634, -0.252093, -0.011542,
		38.086094, 40.400951, 37.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449265, 41.221809, 37.069267>,  <38.763439, 40.577415, 37.010513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449265, 41.221809, 37.069267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196350, 40.935513, 37.187878>,  <38.044601, 40.763733, 37.259045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196350, 40.935513, 37.187878>,  <38.449265, 41.221809, 37.069267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196350, 40.935513, 37.187878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049853, 0.419533, 0.906370,
		-0.773132, 0.558300, -0.300945,
		-0.632283, -0.715747, 0.296522,
		38.006664, 40.720787, 37.276833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008774, 41.659508, 37.454136>,  <38.449265, 41.221809, 37.069267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008774, 41.659508, 37.454136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923256, 41.276470, 37.531403>,  <37.871944, 41.046650, 37.577763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.923256, 41.276470, 37.531403>,  <38.008774, 41.659508, 37.454136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923256, 41.276470, 37.531403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256786, 0.245869, 0.934671,
		-0.942525, 0.150223, -0.298461,
		-0.213791, -0.957592, 0.193163,
		37.859119, 40.989193, 37.589352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264919, 41.587093, 37.711998>,  <38.008774, 41.659508, 37.454136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264919, 41.587093, 37.711998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454884, 41.261272, 37.845245>,  <37.568863, 41.065781, 37.925194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454884, 41.261272, 37.845245>,  <37.264919, 41.587093, 37.711998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454884, 41.261272, 37.845245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019109, 0.368897, 0.929274,
		-0.879827, -0.447686, 0.159628,
		0.474909, -0.814550, 0.333120,
		37.597355, 41.016907, 37.945183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045963, 41.483356, 38.379402>,  <37.264919, 41.587093, 37.711998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045963, 41.483356, 38.379402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373554, 41.254677, 38.359650>,  <37.570110, 41.117470, 38.347797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373554, 41.254677, 38.359650>,  <37.045963, 41.483356, 38.379402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373554, 41.254677, 38.359650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169794, 0.159229, 0.972531,
		-0.548129, -0.804866, 0.227476,
		0.818978, -0.571696, -0.049383,
		37.619247, 41.083168, 38.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067772, 41.055073, 38.972435>,  <37.045963, 41.483356, 38.379402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067772, 41.055073, 38.972435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452427, 41.078506, 38.865231>,  <37.683220, 41.092567, 38.800907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.452427, 41.078506, 38.865231>,  <37.067772, 41.055073, 38.972435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452427, 41.078506, 38.865231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232115, 0.347014, 0.908683,
		0.146236, -0.936028, 0.320102,
		0.961633, 0.058581, -0.268012,
		37.740917, 41.096081, 38.784828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472504, 40.704838, 39.383614>,  <37.067772, 41.055073, 38.972435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472504, 40.704838, 39.383614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699146, 40.993591, 39.224693>,  <37.835133, 41.166843, 39.129341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699146, 40.993591, 39.224693>,  <37.472504, 40.704838, 39.383614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699146, 40.993591, 39.224693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154474, 0.380556, 0.911765,
		0.809379, -0.577985, 0.104114,
		0.566607, 0.721880, -0.397298,
		37.869129, 41.210155, 39.105503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947861, 40.754642, 39.886505>,  <37.472504, 40.704838, 39.383614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947861, 40.754642, 39.886505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994221, 41.093376, 39.678871>,  <38.022038, 41.296616, 39.554291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.994221, 41.093376, 39.678871>,  <37.947861, 40.754642, 39.886505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994221, 41.093376, 39.678871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095652, 0.510659, 0.854446,
		0.988644, -0.148681, -0.021816,
		0.115899, 0.846830, -0.519082,
		38.028992, 41.347424, 39.523148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531353, 41.079494, 40.106377>,  <37.947861, 40.754642, 39.886505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531353, 41.079494, 40.106377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310558, 41.379436, 39.960487>,  <38.178082, 41.559402, 39.872952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.310558, 41.379436, 39.960487>,  <38.531353, 41.079494, 40.106377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310558, 41.379436, 39.960487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065354, 0.474957, 0.877579,
		0.831287, 0.460577, -0.311177,
		-0.551988, 0.749857, -0.364725,
		38.144962, 41.604393, 39.851070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911392, 41.771389, 40.364674>,  <38.531353, 41.079494, 40.106377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911392, 41.771389, 40.364674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537834, 41.859501, 40.252022>,  <38.313698, 41.912369, 40.184429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537834, 41.859501, 40.252022>,  <38.911392, 41.771389, 40.364674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537834, 41.859501, 40.252022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078687, 0.641751, 0.762865,
		0.348779, 0.734598, -0.581996,
		-0.933896, 0.220276, -0.281633,
		38.257664, 41.925583, 40.167530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802834, 42.518875, 40.389423>,  <38.911392, 41.771389, 40.364674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802834, 42.518875, 40.389423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429291, 42.376709, 40.405376>,  <38.205166, 42.291409, 40.414948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.429291, 42.376709, 40.405376>,  <38.802834, 42.518875, 40.389423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429291, 42.376709, 40.405376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169934, 0.539076, 0.824936,
		-0.314690, 0.763597, -0.563817,
		-0.933859, -0.355411, 0.039881,
		38.149132, 42.270084, 40.417339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446777, 43.121372, 40.492756>,  <38.802834, 42.518875, 40.389423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446777, 43.121372, 40.492756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187691, 42.835682, 40.598850>,  <38.032238, 42.664268, 40.662506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187691, 42.835682, 40.598850>,  <38.446777, 43.121372, 40.492756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187691, 42.835682, 40.598850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347315, 0.586655, 0.731579,
		-0.678113, 0.381735, -0.628046,
		-0.647716, -0.714223, 0.265236,
		37.993378, 42.621414, 40.678421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.642902, 43.418507, 40.487343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584419, 43.089729, 40.707539>,  <37.549328, 42.892464, 40.839657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584419, 43.089729, 40.707539>,  <37.642902, 43.418507, 40.487343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584419, 43.089729, 40.707539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320531, 0.565806, 0.759687,
		-0.935886, -0.065375, -0.346183,
		-0.146208, -0.821943, 0.550485,
		37.540558, 42.843147, 40.872684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876312, 43.403618, 40.721600>,  <37.642902, 43.418507, 40.487343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876312, 43.403618, 40.721600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111412, 43.201950, 40.974701>,  <37.252472, 43.080952, 41.126560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.111412, 43.201950, 40.974701>,  <36.876312, 43.403618, 40.721600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111412, 43.201950, 40.974701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325613, 0.568549, 0.755466,
		-0.740629, -0.650053, 0.170000,
		0.587746, -0.504166, 0.632749,
		37.287735, 43.050701, 41.164524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491871, 43.394829, 41.281418>,  <36.876312, 43.403618, 40.721600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491871, 43.394829, 41.281418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831871, 43.260754, 41.443977>,  <37.035870, 43.180309, 41.541512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831871, 43.260754, 41.443977>,  <36.491871, 43.394829, 41.281418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831871, 43.260754, 41.443977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274140, 0.377321, 0.884577,
		-0.449839, -0.863296, 0.228834,
		0.849996, -0.335184, 0.406397,
		37.086868, 43.160198, 41.565895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308716, 42.994102, 41.799046>,  <36.491871, 43.394829, 41.281418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308716, 42.994102, 41.799046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673885, 43.141102, 41.870049>,  <36.892986, 43.229301, 41.912651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.673885, 43.141102, 41.870049>,  <36.308716, 42.994102, 41.799046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673885, 43.141102, 41.870049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338035, 0.437176, 0.833432,
		0.228683, -0.820867, 0.523337,
		0.912928, 0.367498, 0.177507,
		36.947765, 43.251350, 41.923302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367538, 42.946529, 42.531212>,  <36.308716, 42.994102, 41.799046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367538, 42.946529, 42.531212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628544, 43.220940, 42.402473>,  <36.785149, 43.385586, 42.325230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628544, 43.220940, 42.402473>,  <36.367538, 42.946529, 42.531212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628544, 43.220940, 42.402473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304695, 0.626411, 0.717475,
		0.693820, -0.370096, 0.617772,
		0.652514, 0.686031, -0.321850,
		36.824299, 43.426750, 42.305920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708435, 43.179985, 43.200115>,  <36.367538, 42.946529, 42.531212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708435, 43.179985, 43.200115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770847, 43.465767, 42.927288>,  <36.808292, 43.637234, 42.763592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770847, 43.465767, 42.927288>,  <36.708435, 43.179985, 43.200115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770847, 43.465767, 42.927288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130313, 0.699376, 0.702775,
		0.979119, -0.020769, 0.202223,
		0.156026, 0.714453, -0.682066,
		36.817654, 43.680103, 42.722668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066200, 43.653362, 43.574879>,  <36.708435, 43.179985, 43.200115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066200, 43.653362, 43.574879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964695, 43.864147, 43.250431>,  <36.903793, 43.990620, 43.055763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964695, 43.864147, 43.250431>,  <37.066200, 43.653362, 43.574879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964695, 43.864147, 43.250431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162056, 0.803555, 0.572746,
		0.953595, 0.276787, -0.118513,
		-0.253761, 0.526962, -0.811121,
		36.888565, 44.022236, 43.007095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446785, 44.230156, 43.681034>,  <37.066200, 43.653362, 43.574879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446785, 44.230156, 43.681034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148499, 44.326168, 43.432426>,  <36.969524, 44.383774, 43.283260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.148499, 44.326168, 43.432426>,  <37.446785, 44.230156, 43.681034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148499, 44.326168, 43.432426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177391, 0.827649, 0.532476,
		0.642210, 0.507330, -0.574615,
		-0.745720, 0.240030, -0.621520,
		36.924782, 44.398178, 43.245972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526085, 44.938328, 43.583019>,  <37.446785, 44.230156, 43.681034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526085, 44.938328, 43.583019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150990, 44.866592, 43.464039>,  <36.925930, 44.823551, 43.392651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.150990, 44.866592, 43.464039>,  <37.526085, 44.938328, 43.583019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150990, 44.866592, 43.464039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340297, 0.645866, 0.683414,
		0.069556, 0.742089, -0.666683,
		-0.937742, -0.179334, -0.297454,
		36.869667, 44.812794, 43.374802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241535, 45.586700, 43.447346>,  <37.526085, 44.938328, 43.583019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241535, 45.586700, 43.447346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918880, 45.358238, 43.508167>,  <36.725288, 45.221161, 43.544659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.918880, 45.358238, 43.508167>,  <37.241535, 45.586700, 43.447346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918880, 45.358238, 43.508167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395850, 0.713094, 0.578619,
		-0.438909, 0.406546, -0.801299,
		-0.806637, -0.571155, 0.152052,
		36.676891, 45.186893, 43.553783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729561, 46.097492, 43.598022>,  <37.241535, 45.586700, 43.447346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729561, 46.097492, 43.598022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586624, 45.757217, 43.752235>,  <36.500862, 45.553051, 43.844765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.586624, 45.757217, 43.752235>,  <36.729561, 46.097492, 43.598022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586624, 45.757217, 43.752235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292719, 0.493999, 0.818706,
		-0.886919, 0.179701, -0.425537,
		-0.357338, -0.850689, 0.385535,
		36.479424, 45.502010, 43.867897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075832, 46.291210, 43.819347>,  <36.729561, 46.097492, 43.598022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075832, 46.291210, 43.819347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214859, 45.966099, 44.006359>,  <36.298275, 45.771030, 44.118568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214859, 45.966099, 44.006359>,  <36.075832, 46.291210, 43.819347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214859, 45.966099, 44.006359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299571, 0.376231, 0.876760,
		-0.888513, -0.444791, -0.112720,
		0.347566, -0.812780, 0.467533,
		36.319130, 45.722263, 44.146618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676975, 46.252720, 44.370674>,  <36.075832, 46.291210, 43.819347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676975, 46.252720, 44.370674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943279, 45.977386, 44.485889>,  <36.103062, 45.812187, 44.555019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.943279, 45.977386, 44.485889>,  <35.676975, 46.252720, 44.370674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943279, 45.977386, 44.485889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297485, 0.109162, 0.948465,
		-0.684299, -0.717138, -0.132092,
		0.665761, -0.688329, 0.288037,
		36.143009, 45.770889, 44.572300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338074, 45.787933, 44.788322>,  <35.676975, 46.252720, 44.370674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338074, 45.787933, 44.788322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712048, 45.821327, 44.926262>,  <35.936432, 45.841362, 45.009026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.712048, 45.821327, 44.926262>,  <35.338074, 45.787933, 44.788322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712048, 45.821327, 44.926262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354476, 0.262217, 0.897546,
		-0.015495, -0.961391, 0.274749,
		0.934936, 0.083485, 0.344854,
		35.992527, 45.846375, 45.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284225, 45.786655, 45.491348>,  <35.338074, 45.787933, 44.788322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284225, 45.786655, 45.491348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676529, 45.862808, 45.474075>,  <35.911911, 45.908501, 45.463711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.676529, 45.862808, 45.474075>,  <35.284225, 45.786655, 45.491348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676529, 45.862808, 45.474075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023301, 0.333796, 0.942357,
		0.193826, -0.923219, 0.331810,
		0.980759, 0.190385, -0.043186,
		35.970757, 45.919926, 45.461121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638649, 45.371479, 46.014923>,  <35.284225, 45.786655, 45.491348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638649, 45.371479, 46.014923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868134, 45.693577, 45.955017>,  <36.005825, 45.886837, 45.919075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.868134, 45.693577, 45.955017>,  <35.638649, 45.371479, 46.014923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868134, 45.693577, 45.955017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028585, 0.163053, 0.986203,
		0.818559, -0.570077, 0.070527,
		0.573711, 0.805249, -0.149765,
		36.040245, 45.935150, 45.910088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118866, 45.429218, 46.622646>,  <35.638649, 45.371479, 46.014923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118866, 45.429218, 46.622646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118137, 45.790913, 46.451832>,  <36.117702, 46.007927, 46.349342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118137, 45.790913, 46.451832>,  <36.118866, 45.429218, 46.622646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118137, 45.790913, 46.451832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043554, 0.426560, 0.903410,
		0.999049, 0.020243, 0.038607,
		-0.001820, 0.904233, -0.427036,
		36.117592, 46.062183, 46.323719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652004, 45.769928, 46.979347>,  <36.118866, 45.429218, 46.622646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652004, 45.769928, 46.979347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431973, 46.054886, 46.805035>,  <36.299953, 46.225861, 46.700447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431973, 46.054886, 46.805035>,  <36.652004, 45.769928, 46.979347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431973, 46.054886, 46.805035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062787, 0.555628, 0.829057,
		0.832750, 0.428684, -0.350367,
		-0.550077, 0.712396, -0.435783,
		36.266949, 46.268604, 46.674301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056591, 46.474964, 47.038067>,  <36.652004, 45.769928, 46.979347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056591, 46.474964, 47.038067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668900, 46.546116, 46.970001>,  <36.436287, 46.588806, 46.929161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.668900, 46.546116, 46.970001>,  <37.056591, 46.474964, 47.038067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668900, 46.546116, 46.970001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059554, 0.501297, 0.863223,
		0.238858, 0.846793, -0.475277,
		-0.969227, 0.177883, -0.170169,
		36.378132, 46.599480, 46.918949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970997, 47.067093, 47.340702>,  <37.056591, 46.474964, 47.038067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970997, 47.067093, 47.340702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599178, 46.922211, 47.313126>,  <36.376087, 46.835281, 47.296581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599178, 46.922211, 47.313126>,  <36.970997, 47.067093, 47.340702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599178, 46.922211, 47.313126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215041, 0.380696, 0.899348,
		-0.299504, 0.850810, -0.431763,
		-0.929545, -0.362205, -0.068940,
		36.320316, 46.813549, 47.292442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544884, 47.598621, 47.523487>,  <36.970997, 47.067093, 47.340702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544884, 47.598621, 47.523487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336323, 47.262985, 47.585537>,  <36.211185, 47.061604, 47.622765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336323, 47.262985, 47.585537>,  <36.544884, 47.598621, 47.523487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336323, 47.262985, 47.585537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219131, 0.307356, 0.926020,
		-0.824693, 0.448839, -0.344128,
		-0.521404, -0.839092, 0.155120,
		36.179901, 47.011257, 47.632072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984119, 47.839588, 47.718124>,  <36.544884, 47.598621, 47.523487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984119, 47.839588, 47.718124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989292, 47.464497, 47.856976>,  <35.992397, 47.239441, 47.940285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.989292, 47.464497, 47.856976>,  <35.984119, 47.839588, 47.718124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989292, 47.464497, 47.856976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405506, 0.312407, 0.859050,
		-0.914001, -0.151872, -0.376215,
		0.012933, -0.937730, 0.347125,
		35.993172, 47.183178, 47.961113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311844, 47.791916, 48.132885>,  <35.984119, 47.839588, 47.718124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311844, 47.791916, 48.132885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623650, 47.560436, 48.228783>,  <35.810734, 47.421551, 48.286320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623650, 47.560436, 48.228783>,  <35.311844, 47.791916, 48.132885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623650, 47.560436, 48.228783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182466, 0.156355, 0.970700,
		-0.599225, -0.800415, 0.016288,
		0.779509, -0.578696, 0.239741,
		35.857502, 47.386829, 48.300705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172211, 47.337959, 48.663280>,  <35.311844, 47.791916, 48.132885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172211, 47.337959, 48.663280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571243, 47.344284, 48.690380>,  <35.810661, 47.348080, 48.706642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571243, 47.344284, 48.690380>,  <35.172211, 47.337959, 48.663280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571243, 47.344284, 48.690380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069430, 0.163671, 0.984069,
		0.004466, -0.986388, 0.164372,
		0.997576, 0.015808, 0.067754,
		35.870518, 47.349026, 48.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548138, 47.086575, 48.321110>,  <35.172211, 47.337959, 48.663280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548138, 47.086575, 48.321110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280537, 46.848499, 48.499187>,  <34.119976, 46.705654, 48.606033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280537, 46.848499, 48.499187>,  <34.548138, 47.086575, 48.321110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280537, 46.848499, 48.499187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107555, -0.670184, -0.734360,
		0.735440, -0.443403, 0.512368,
		-0.668999, -0.595186, 0.445190,
		34.079838, 46.669945, 48.632744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769871, 46.462433, 48.128139>,  <34.548138, 47.086575, 48.321110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769871, 46.462433, 48.128139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391388, 46.394943, 48.238575>,  <34.164299, 46.354450, 48.304836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.391388, 46.394943, 48.238575>,  <34.769871, 46.462433, 48.128139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391388, 46.394943, 48.238575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047026, -0.772507, -0.633262,
		0.320131, -0.612180, 0.723016,
		-0.946206, -0.168726, 0.276091,
		34.107525, 46.344326, 48.321404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731216, 45.789284, 48.180515>,  <34.769871, 46.462433, 48.128139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731216, 45.789284, 48.180515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342854, 45.876289, 48.140465>,  <34.109837, 45.928493, 48.116432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342854, 45.876289, 48.140465>,  <34.731216, 45.789284, 48.180515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342854, 45.876289, 48.140465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111852, -0.781702, -0.613540,
		-0.211724, -0.584491, 0.783290,
		-0.970908, 0.217514, -0.100129,
		34.051582, 45.941544, 48.110428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313267, 45.098507, 48.035809>,  <34.731216, 45.789284, 48.180515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313267, 45.098507, 48.035809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053066, 45.372818, 47.905239>,  <33.896946, 45.537407, 47.826897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053066, 45.372818, 47.905239>,  <34.313267, 45.098507, 48.035809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053066, 45.372818, 47.905239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249385, -0.598817, -0.761068,
		-0.717397, -0.413669, 0.560554,
		-0.650499, 0.685781, -0.326427,
		33.857918, 45.578552, 47.807312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719139, 44.724804, 47.929367>,  <34.313267, 45.098507, 48.035809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719139, 44.724804, 47.929367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667000, 45.068249, 47.731056>,  <33.635715, 45.274315, 47.612072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.667000, 45.068249, 47.731056>,  <33.719139, 44.724804, 47.929367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667000, 45.068249, 47.731056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272779, -0.511798, -0.814650,
		-0.953206, 0.029050, 0.300923,
		-0.130346, 0.858615, -0.495773,
		33.627895, 45.325832, 47.582325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146042, 44.628021, 47.499271>,  <33.719139, 44.724804, 47.929367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146042, 44.628021, 47.499271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341957, 44.925888, 47.317909>,  <33.459507, 45.104607, 47.209091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341957, 44.925888, 47.317909>,  <33.146042, 44.628021, 47.499271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341957, 44.925888, 47.317909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059563, -0.490262, -0.869537,
		-0.869803, 0.452897, -0.195771,
		0.489790, 0.744666, -0.453408,
		33.488895, 45.149288, 47.181889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867340, 44.673492, 46.879986>,  <33.146042, 44.628021, 47.499271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867340, 44.673492, 46.879986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215874, 44.859879, 46.818466>,  <33.424995, 44.971710, 46.781555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.215874, 44.859879, 46.818466>,  <32.867340, 44.673492, 46.879986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215874, 44.859879, 46.818466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039038, -0.378273, -0.924870,
		-0.489135, 0.799867, -0.347793,
		0.871334, 0.465964, -0.153801,
		33.477272, 44.999668, 46.772327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897114, 44.831802, 46.144554>,  <32.867340, 44.673492, 46.879986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897114, 44.831802, 46.144554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274639, 44.898983, 46.258400>,  <33.501156, 44.939289, 46.326710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.274639, 44.898983, 46.258400>,  <32.897114, 44.831802, 46.144554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274639, 44.898983, 46.258400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316745, -0.214044, -0.924044,
		-0.094272, 0.962277, -0.255215,
		0.943814, 0.167950, 0.284618,
		33.557785, 44.949368, 46.343784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204983, 45.158607, 45.586815>,  <32.897114, 44.831802, 46.144554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204983, 45.158607, 45.586815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530994, 45.039169, 45.785435>,  <33.726601, 44.967506, 45.904606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530994, 45.039169, 45.785435>,  <33.204983, 45.158607, 45.586815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530994, 45.039169, 45.785435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484824, -0.117820, -0.866639,
		0.317279, 0.947079, 0.048739,
		0.815034, -0.298596, 0.496549,
		33.775505, 44.949589, 45.934399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801418, 45.583466, 45.382511>,  <33.204983, 45.158607, 45.586815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801418, 45.583466, 45.382511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909885, 45.220032, 45.509594>,  <33.974968, 45.001972, 45.585846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909885, 45.220032, 45.509594>,  <33.801418, 45.583466, 45.382511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909885, 45.220032, 45.509594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423847, -0.183636, -0.886923,
		0.864188, 0.375167, 0.335304,
		0.271171, -0.908585, 0.317709,
		33.991238, 44.947456, 45.604908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547310, 45.522270, 45.278721>,  <33.801418, 45.583466, 45.382511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547310, 45.522270, 45.278721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427666, 45.141369, 45.303219>,  <34.355881, 44.912830, 45.317917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427666, 45.141369, 45.303219>,  <34.547310, 45.522270, 45.278721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427666, 45.141369, 45.303219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407461, -0.185496, -0.894185,
		0.862850, -0.242503, 0.443489,
		-0.299108, -0.952252, 0.061245,
		34.337933, 44.855694, 45.321590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147999, 45.061642, 45.066341>,  <34.547310, 45.522270, 45.278721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147999, 45.061642, 45.066341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803761, 44.865757, 45.010406>,  <34.597218, 44.748226, 44.976845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.803761, 44.865757, 45.010406>,  <35.147999, 45.061642, 45.066341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803761, 44.865757, 45.010406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305837, -0.277394, -0.910778,
		0.407233, -0.826578, 0.388497,
		-0.860596, -0.489715, -0.139834,
		34.545582, 44.718842, 44.968456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305847, 44.417763, 44.731911>,  <35.147999, 45.061642, 45.066341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305847, 44.417763, 44.731911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909218, 44.414722, 44.680176>,  <34.671242, 44.412899, 44.649136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909218, 44.414722, 44.680176>,  <35.305847, 44.417763, 44.731911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909218, 44.414722, 44.680176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121572, -0.399668, -0.908562,
		-0.044783, -0.916628, 0.397224,
		-0.991572, -0.007603, -0.129335,
		34.611748, 44.412441, 44.641376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013428, 43.686436, 44.703568>,  <35.305847, 44.417763, 44.731911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013428, 43.686436, 44.703568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779926, 43.938137, 44.498329>,  <34.639828, 44.089157, 44.375187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.779926, 43.938137, 44.498329>,  <35.013428, 43.686436, 44.703568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779926, 43.938137, 44.498329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000970, -0.632489, -0.774569,
		-0.811931, -0.451658, 0.369827,
		-0.583752, 0.629256, -0.513100,
		34.604801, 44.126915, 44.344398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632439, 43.245213, 44.185532>,  <35.013428, 43.686436, 44.703568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632439, 43.245213, 44.185532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565323, 43.621815, 44.068626>,  <34.525055, 43.847775, 43.998482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565323, 43.621815, 44.068626>,  <34.632439, 43.245213, 44.185532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565323, 43.621815, 44.068626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109908, -0.312486, -0.943543,
		-0.979677, -0.126194, 0.155910,
		-0.167789, 0.941503, -0.292265,
		34.514988, 43.904266, 43.980946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976582, 43.219788, 43.889233>,  <34.632439, 43.245213, 44.185532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976582, 43.219788, 43.889233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165680, 43.536385, 43.734287>,  <34.279140, 43.726341, 43.641319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.165680, 43.536385, 43.734287>,  <33.976582, 43.219788, 43.889233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165680, 43.536385, 43.734287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277202, -0.283693, -0.917975,
		-0.836461, 0.541349, 0.085287,
		0.472749, 0.791492, -0.387361,
		34.307507, 43.773830, 43.618080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517441, 43.539394, 43.383766>,  <33.976582, 43.219788, 43.889233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517441, 43.539394, 43.383766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858803, 43.724152, 43.287136>,  <34.063618, 43.835007, 43.229156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.858803, 43.724152, 43.287136>,  <33.517441, 43.539394, 43.383766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858803, 43.724152, 43.287136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118782, -0.278933, -0.952936,
		-0.507538, 0.841933, -0.183178,
		0.853402, 0.461893, -0.241575,
		34.114822, 43.862720, 43.214664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301304, 43.982025, 42.892956>,  <33.517441, 43.539394, 43.383766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301304, 43.982025, 42.892956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686565, 43.888618, 42.839596>,  <33.917725, 43.832573, 42.807579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686565, 43.888618, 42.839596>,  <33.301304, 43.982025, 42.892956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686565, 43.888618, 42.839596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209411, -0.339977, -0.916822,
		0.168744, 0.910979, -0.376354,
		0.963158, -0.233521, -0.133400,
		33.975513, 43.818562, 42.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446655, 44.185505, 42.157085>,  <33.301304, 43.982025, 42.892956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446655, 44.185505, 42.157085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734867, 43.925022, 42.252388>,  <33.907795, 43.768734, 42.309570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734867, 43.925022, 42.252388>,  <33.446655, 44.185505, 42.157085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734867, 43.925022, 42.252388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083303, -0.422401, -0.902573,
		0.688400, 0.630484, -0.358601,
		0.720531, -0.651204, 0.238259,
		33.951027, 43.729660, 42.323864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895046, 44.157093, 41.583775>,  <33.446655, 44.185505, 42.157085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895046, 44.157093, 41.583775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980469, 43.816975, 41.776184>,  <34.031723, 43.612904, 41.891628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980469, 43.816975, 41.776184>,  <33.895046, 44.157093, 41.583775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980469, 43.816975, 41.776184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042261, -0.499964, -0.865015,
		0.976017, 0.164399, -0.142704,
		0.213554, -0.850299, 0.481025,
		34.044537, 43.561886, 41.920490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.517857, 42.450527, 38.795177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361153, 42.709023, 38.533215>,  <42.267132, 42.864120, 38.376038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.361153, 42.709023, 38.533215>,  <42.517857, 42.450527, 38.795177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361153, 42.709023, 38.533215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519186, -0.742917, -0.422516,
		-0.759588, 0.174496, 0.626560,
		-0.391754, 0.646239, -0.654907,
		42.243626, 42.902893, 38.336742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831940, 42.169724, 38.800102>,  <42.517857, 42.450527, 38.795177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831940, 42.169724, 38.800102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853405, 42.393688, 38.469379>,  <41.866283, 42.528069, 38.270947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.853405, 42.393688, 38.469379>,  <41.831940, 42.169724, 38.800102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853405, 42.393688, 38.469379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635764, -0.619338, -0.460679,
		-0.770016, 0.550380, 0.322734,
		0.053667, 0.559913, -0.826812,
		41.869507, 42.561661, 38.221336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083435, 42.272476, 38.618401>,  <41.831940, 42.169724, 38.800102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083435, 42.272476, 38.618401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298820, 42.350761, 38.290558>,  <41.428051, 42.397732, 38.093853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.298820, 42.350761, 38.290558>,  <41.083435, 42.272476, 38.618401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298820, 42.350761, 38.290558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482812, -0.725504, -0.490445,
		-0.690612, 0.659803, -0.296167,
		0.538467, 0.195715, -0.819603,
		41.460361, 42.409477, 38.044678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598537, 42.171513, 38.094994>,  <41.083435, 42.272476, 38.618401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598537, 42.171513, 38.094994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952660, 42.145988, 37.910751>,  <41.165134, 42.130672, 37.800205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.952660, 42.145988, 37.910751>,  <40.598537, 42.171513, 38.094994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952660, 42.145988, 37.910751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343054, -0.758318, -0.554317,
		-0.313911, 0.648754, -0.693237,
		0.885310, -0.063811, -0.460602,
		41.218254, 42.126846, 37.772572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478863, 42.041920, 37.413895>,  <40.598537, 42.171513, 38.094994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478863, 42.041920, 37.413895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855713, 41.912117, 37.447586>,  <41.081821, 41.834236, 37.467800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.855713, 41.912117, 37.447586>,  <40.478863, 42.041920, 37.413895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855713, 41.912117, 37.447586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233220, -0.814844, -0.530695,
		0.240846, 0.480338, -0.843367,
		0.942126, -0.324506, 0.084227,
		41.138351, 41.814766, 37.472855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573891, 41.614902, 36.739738>,  <40.478863, 42.041920, 37.413895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573891, 41.614902, 36.739738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896812, 41.522465, 36.956940>,  <41.090565, 41.467003, 37.087261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.896812, 41.522465, 36.956940>,  <40.573891, 41.614902, 36.739738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896812, 41.522465, 36.956940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064108, -0.880351, -0.469970,
		0.586642, 0.414220, -0.695897,
		0.807305, -0.231091, 0.543006,
		41.139004, 41.453136, 37.119843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021320, 41.423721, 36.170231>,  <40.573891, 41.614902, 36.739738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021320, 41.423721, 36.170231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104847, 41.263294, 36.527004>,  <41.154964, 41.167038, 36.741066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104847, 41.263294, 36.527004>,  <41.021320, 41.423721, 36.170231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104847, 41.263294, 36.527004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122991, -0.894024, -0.430807,
		0.970190, 0.199660, -0.137361,
		0.208819, -0.401070, 0.891929,
		41.167492, 41.142975, 36.794582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675373, 41.002930, 36.080597>,  <41.021320, 41.423721, 36.170231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675373, 41.002930, 36.080597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495235, 40.860577, 36.408142>,  <41.387154, 40.775166, 36.604671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.495235, 40.860577, 36.408142>,  <41.675373, 41.002930, 36.080597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495235, 40.860577, 36.408142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026170, -0.921998, -0.386309,
		0.892471, -0.152543, 0.424530,
		-0.450345, -0.355880, 0.818865,
		41.360130, 40.753811, 36.653801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100723, 40.454948, 36.444828>,  <41.675373, 41.002930, 36.080597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100723, 40.454948, 36.444828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756626, 40.349670, 36.619507>,  <41.550167, 40.286503, 36.724316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.756626, 40.349670, 36.619507>,  <42.100723, 40.454948, 36.444828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756626, 40.349670, 36.619507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100615, -0.927258, -0.360651,
		0.499856, -0.266310, 0.824150,
		-0.860245, -0.263195, 0.436700,
		41.498554, 40.270714, 36.750519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272160, 39.855099, 36.750221>,  <42.100723, 40.454948, 36.444828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272160, 39.855099, 36.750221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873936, 39.867172, 36.714565>,  <41.635002, 39.874416, 36.693172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.873936, 39.867172, 36.714565>,  <42.272160, 39.855099, 36.750221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873936, 39.867172, 36.714565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014501, -0.886665, -0.462186,
		-0.092989, -0.461427, 0.882291,
		-0.995561, 0.030184, -0.089141,
		41.575268, 39.876228, 36.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116451, 39.227200, 37.036407>,  <42.272160, 39.855099, 36.750221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116451, 39.227200, 37.036407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781284, 39.320507, 36.839035>,  <41.580185, 39.376492, 36.720612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781284, 39.320507, 36.839035>,  <42.116451, 39.227200, 37.036407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781284, 39.320507, 36.839035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136592, -0.964920, -0.224215,
		-0.528428, -0.120475, 0.840386,
		-0.837918, 0.233272, -0.493435,
		41.529907, 39.390488, 36.691006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587307, 38.642605, 37.216957>,  <42.116451, 39.227200, 37.036407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587307, 38.642605, 37.216957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447269, 38.821182, 36.887562>,  <41.363247, 38.928329, 36.689926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.447269, 38.821182, 36.887562>,  <41.587307, 38.642605, 37.216957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447269, 38.821182, 36.887562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022174, -0.874922, -0.483756,
		-0.936454, -0.187617, 0.296401,
		-0.350089, 0.446443, -0.823484,
		41.342243, 38.955116, 36.640518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043041, 38.270107, 36.981731>,  <41.587307, 38.642605, 37.216957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043041, 38.270107, 36.981731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182816, 38.455509, 36.656017>,  <41.266678, 38.566750, 36.460590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182816, 38.455509, 36.656017>,  <41.043041, 38.270107, 36.981731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182816, 38.455509, 36.656017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026078, -0.873542, -0.486049,
		-0.936598, 0.148606, -0.317332,
		0.349433, 0.463508, -0.814283,
		41.287643, 38.594563, 36.411732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670612, 37.966778, 36.393700>,  <41.043041, 38.270107, 36.981731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670612, 37.966778, 36.393700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.985672, 38.126770, 36.206242>,  <41.174706, 38.222763, 36.093765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.985672, 38.126770, 36.206242>,  <40.670612, 37.966778, 36.393700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985672, 38.126770, 36.206242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164005, -0.869301, -0.466282,
		-0.593898, 0.290405, -0.750300,
		0.787647, 0.399976, -0.468648,
		41.221966, 38.246761, 36.065647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539379, 37.848492, 35.649303>,  <40.670612, 37.966778, 36.393700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539379, 37.848492, 35.649303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936157, 37.892731, 35.674007>,  <41.174225, 37.919273, 35.688831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.936157, 37.892731, 35.674007>,  <40.539379, 37.848492, 35.649303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936157, 37.892731, 35.674007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122627, -0.716223, -0.687013,
		-0.031745, 0.689053, -0.724016,
		0.991945, 0.110593, 0.061760,
		41.233742, 37.925907, 35.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861259, 37.403282, 35.121365>,  <40.539379, 37.848492, 35.649303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861259, 37.403282, 35.121365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182140, 37.510616, 35.334705>,  <41.374668, 37.575020, 35.462711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.182140, 37.510616, 35.334705>,  <40.861259, 37.403282, 35.121365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182140, 37.510616, 35.334705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575409, -0.585827, -0.570711,
		0.159309, 0.764723, -0.624355,
		0.802200, 0.268340, 0.533356,
		41.422802, 37.591118, 35.494713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335037, 37.378445, 34.622993>,  <40.861259, 37.403282, 35.121365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335037, 37.378445, 34.622993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521984, 37.343040, 34.974842>,  <41.634151, 37.321796, 35.185951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.521984, 37.343040, 34.974842>,  <41.335037, 37.378445, 34.622993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521984, 37.343040, 34.974842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645743, -0.645382, -0.408042,
		0.603808, 0.758714, -0.244475,
		0.467367, -0.088512, 0.879621,
		41.662193, 37.316486, 35.238728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021072, 37.291348, 34.430763>,  <41.335037, 37.378445, 34.622993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021072, 37.291348, 34.430763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992321, 37.151871, 34.804554>,  <41.975071, 37.068184, 35.028828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992321, 37.151871, 34.804554>,  <42.021072, 37.291348, 34.430763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992321, 37.151871, 34.804554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354020, -0.884819, -0.302928,
		0.932472, 0.309048, 0.187045,
		-0.071882, -0.348690, 0.934478,
		41.970757, 37.047264, 35.084896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649677, 37.048050, 34.559032>,  <42.021072, 37.291348, 34.430763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649677, 37.048050, 34.559032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372795, 36.881741, 34.794994>,  <42.206665, 36.781956, 34.936573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.372795, 36.881741, 34.794994>,  <42.649677, 37.048050, 34.559032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372795, 36.881741, 34.794994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288527, -0.908645, -0.301855,
		0.661516, -0.038743, 0.748930,
		-0.692206, -0.415769, 0.589904,
		42.165134, 36.757011, 34.971966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979591, 36.444656, 34.969791>,  <42.649677, 37.048050, 34.559032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979591, 36.444656, 34.969791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586094, 36.379196, 34.940216>,  <42.349995, 36.339920, 34.922470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586094, 36.379196, 34.940216>,  <42.979591, 36.444656, 34.969791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586094, 36.379196, 34.940216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179522, -0.906717, -0.381622,
		-0.004589, -0.388692, 0.921356,
		-0.983743, -0.163652, -0.073940,
		42.290970, 36.330101, 34.918034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982117, 35.802151, 35.228676>,  <42.979591, 36.444656, 34.969791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982117, 35.802151, 35.228676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653446, 35.883404, 35.015667>,  <42.456245, 35.932156, 34.887859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.653446, 35.883404, 35.015667>,  <42.982117, 35.802151, 35.228676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.653446, 35.883404, 35.015667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143259, -0.830728, -0.537929,
		-0.551656, -0.518293, 0.653489,
		-0.821677, 0.203134, -0.532526,
		42.406944, 35.944344, 34.855907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335278, 35.478081, 35.809528>,  <42.982117, 35.802151, 35.228676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335278, 35.478081, 35.809528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697731, 35.421715, 35.649998>,  <43.915203, 35.387894, 35.554279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697731, 35.421715, 35.649998>,  <43.335278, 35.478081, 35.809528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697731, 35.421715, 35.649998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339411, 0.804911, 0.486743,
		0.252431, -0.576421, 0.777186,
		0.906134, -0.140916, -0.398828,
		43.969570, 35.379440, 35.530350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.930721, 35.399876, 36.328693>,  <43.335278, 35.478081, 35.809528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.930721, 35.399876, 36.328693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059265, 35.567902, 35.989216>,  <44.136391, 35.668716, 35.785530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059265, 35.567902, 35.989216>,  <43.930721, 35.399876, 36.328693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059265, 35.567902, 35.989216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395286, 0.754907, 0.523321,
		0.860509, -0.503651, 0.076554,
		0.321363, 0.420061, -0.848690,
		44.155674, 35.693920, 35.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.529686, 35.629337, 36.568584>,  <43.930721, 35.399876, 36.328693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.529686, 35.629337, 36.568584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450554, 35.825878, 36.229305>,  <44.403072, 35.943802, 36.025738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.450554, 35.825878, 36.229305>,  <44.529686, 35.629337, 36.568584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450554, 35.825878, 36.229305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263788, 0.860065, 0.436697,
		0.944075, -0.137351, -0.299762,
		-0.197834, 0.491348, -0.848197,
		44.391205, 35.973282, 35.974846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.094807, 36.066113, 36.347950>,  <44.529686, 35.629337, 36.568584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.094807, 36.066113, 36.347950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785557, 36.243702, 36.166771>,  <44.600006, 36.350258, 36.058064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785557, 36.243702, 36.166771>,  <45.094807, 36.066113, 36.347950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785557, 36.243702, 36.166771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318413, 0.889318, 0.328216,
		0.548534, 0.109529, -0.828924,
		-0.773127, 0.443978, -0.452945,
		44.553619, 36.376896, 36.030888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283466, 36.603909, 36.101543>,  <45.094807, 36.066113, 36.347950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283466, 36.603909, 36.101543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900856, 36.720303, 36.109402>,  <44.671291, 36.790138, 36.114117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.900856, 36.720303, 36.109402>,  <45.283466, 36.603909, 36.101543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900856, 36.720303, 36.109402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279656, 0.895987, 0.344963,
		0.082777, 0.335460, -0.938410,
		-0.956525, 0.290988, 0.019646,
		44.613899, 36.807598, 36.115295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340359, 37.291904, 35.807331>,  <45.283466, 36.603909, 36.101543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340359, 37.291904, 35.807331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967628, 37.290813, 35.952492>,  <44.743992, 37.290161, 36.039589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.967628, 37.290813, 35.952492>,  <45.340359, 37.291904, 35.807331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967628, 37.290813, 35.952492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055201, 0.987271, 0.149157,
		-0.358684, 0.159021, -0.919814,
		-0.931825, -0.002726, 0.362897,
		44.688080, 37.289997, 36.061359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990501, 37.866203, 35.475208>,  <45.340359, 37.291904, 35.807331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990501, 37.866203, 35.475208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811813, 37.759754, 35.816879>,  <44.704601, 37.695885, 36.021881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811813, 37.759754, 35.816879>,  <44.990501, 37.866203, 35.475208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811813, 37.759754, 35.816879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108348, 0.931617, 0.346916,
		-0.888087, 0.247523, -0.387341,
		-0.446723, -0.266124, 0.854176,
		44.677795, 37.679916, 36.073132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633530, 38.517143, 35.747669>,  <44.990501, 37.866203, 35.475208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633530, 38.517143, 35.747669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628925, 38.304073, 36.086166>,  <44.626163, 38.176231, 36.289265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.628925, 38.304073, 36.086166>,  <44.633530, 38.517143, 35.747669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628925, 38.304073, 36.086166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232482, 0.821680, 0.520379,
		-0.972533, 0.202726, 0.114378,
		-0.011512, -0.532676, 0.846241,
		44.625473, 38.144272, 36.340038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145126, 38.849125, 36.158352>,  <44.633530, 38.517143, 35.747669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145126, 38.849125, 36.158352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408508, 38.655487, 36.388859>,  <44.566536, 38.539303, 36.527164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.408508, 38.655487, 36.388859>,  <44.145126, 38.849125, 36.158352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.408508, 38.655487, 36.388859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160268, 0.838313, 0.521100,
		-0.735358, -0.250762, 0.629577,
		0.658455, -0.484096, 0.576271,
		44.606045, 38.510258, 36.561741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118801, 39.201756, 36.833981>,  <44.145126, 38.849125, 36.158352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118801, 39.201756, 36.833981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460472, 38.994995, 36.856552>,  <44.665474, 38.870937, 36.870094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.460472, 38.994995, 36.856552>,  <44.118801, 39.201756, 36.833981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.460472, 38.994995, 36.856552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360546, 0.666982, 0.652029,
		-0.374676, -0.536604, 0.756091,
		0.854180, -0.516906, 0.056432,
		44.716724, 38.839924, 36.873482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195107, 39.100948, 37.524452>,  <44.118801, 39.201756, 36.833981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195107, 39.100948, 37.524452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572540, 39.040001, 37.406853>,  <44.799000, 39.003433, 37.336292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572540, 39.040001, 37.406853>,  <44.195107, 39.100948, 37.524452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572540, 39.040001, 37.406853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327233, 0.564941, 0.757469,
		0.050676, -0.810941, 0.582929,
		0.943584, -0.152369, -0.293996,
		44.855614, 38.994289, 37.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544464, 38.960575, 38.064629>,  <44.195107, 39.100948, 37.524452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544464, 38.960575, 38.064629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812538, 39.094357, 37.799603>,  <44.973381, 39.174625, 37.640587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812538, 39.094357, 37.799603>,  <44.544464, 38.960575, 38.064629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812538, 39.094357, 37.799603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353408, 0.641212, 0.681139,
		0.652664, -0.690640, 0.311523,
		0.670174, 0.334460, -0.662573,
		45.013592, 39.194691, 37.600830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196491, 38.975479, 38.377365>,  <44.544464, 38.960575, 38.064629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196491, 38.975479, 38.377365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226486, 39.239994, 38.078812>,  <45.244484, 39.398701, 37.899681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.226486, 39.239994, 38.078812>,  <45.196491, 38.975479, 38.377365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.226486, 39.239994, 38.078812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290927, 0.701415, 0.650675,
		0.953802, -0.265935, -0.139788,
		0.074988, 0.661283, -0.746379,
		45.248981, 39.438377, 37.854897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.689056, 39.376064, 38.643547>,  <45.196491, 38.975479, 38.377365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.689056, 39.376064, 38.643547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.533394, 39.566216, 38.327934>,  <45.439999, 39.680305, 38.138565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.533394, 39.566216, 38.327934>,  <45.689056, 39.376064, 38.643547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533394, 39.566216, 38.327934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234223, 0.879465, 0.414343,
		0.890897, -0.023566, -0.453592,
		-0.389154, 0.475379, -0.789033,
		45.416649, 39.708828, 38.091225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.227596, 39.794353, 38.426857>,  <45.689056, 39.376064, 38.643547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.227596, 39.794353, 38.426857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878265, 39.954140, 38.315338>,  <45.668667, 40.050011, 38.248425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878265, 39.954140, 38.315338>,  <46.227596, 39.794353, 38.426857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878265, 39.954140, 38.315338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262482, 0.868014, 0.421491,
		0.410376, 0.294918, -0.862911,
		-0.873324, 0.399469, -0.278802,
		45.616268, 40.073978, 38.231697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.367626, 40.453766, 38.114967>,  <46.227596, 39.794353, 38.426857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.367626, 40.453766, 38.114967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984577, 40.492661, 38.223415>,  <45.754749, 40.515995, 38.288483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984577, 40.492661, 38.223415>,  <46.367626, 40.453766, 38.114967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984577, 40.492661, 38.223415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231514, 0.819840, 0.523701,
		-0.171355, 0.564276, -0.807608,
		-0.957621, 0.097234, 0.271121,
		45.697292, 40.521832, 38.304752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296741, 41.185951, 38.267445>,  <46.367626, 40.453766, 38.114967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296741, 41.185951, 38.267445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960964, 41.039143, 38.427761>,  <45.759499, 40.951057, 38.523949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.960964, 41.039143, 38.427761>,  <46.296741, 41.185951, 38.267445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960964, 41.039143, 38.427761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086414, 0.818250, 0.568330,
		-0.536536, 0.442446, -0.718590,
		-0.839442, -0.367026, 0.400787,
		45.709133, 40.929035, 38.547997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763344, 41.712582, 38.224300>,  <46.296741, 41.185951, 38.267445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763344, 41.712582, 38.224300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683487, 41.457115, 38.521553>,  <45.635574, 41.303833, 38.699905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.683487, 41.457115, 38.521553>,  <45.763344, 41.712582, 38.224300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683487, 41.457115, 38.521553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181857, 0.769375, 0.612365,
		-0.962846, -0.012892, -0.269744,
		-0.199639, -0.638668, 0.743134,
		45.623596, 41.265514, 38.744492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978313, 41.811794, 38.486687>,  <45.763344, 41.712582, 38.224300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978313, 41.811794, 38.486687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202297, 41.650204, 38.776031>,  <45.336685, 41.553249, 38.949638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.202297, 41.650204, 38.776031>,  <44.978313, 41.811794, 38.486687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.202297, 41.650204, 38.776031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375194, 0.654779, 0.656120,
		-0.738700, -0.638799, 0.215076,
		0.559956, -0.403981, 0.723359,
		45.370285, 41.529011, 38.993038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563011, 41.781048, 39.112179>,  <44.978313, 41.811794, 38.486687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563011, 41.781048, 39.112179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934212, 41.729652, 39.252064>,  <45.156933, 41.698814, 39.335995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.934212, 41.729652, 39.252064>,  <44.563011, 41.781048, 39.112179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934212, 41.729652, 39.252064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207760, 0.600686, 0.772018,
		-0.309259, -0.789093, 0.530746,
		0.928006, -0.128486, 0.349710,
		45.212612, 41.691105, 39.356976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417641, 41.600433, 39.706882>,  <44.563011, 41.781048, 39.112179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417641, 41.600433, 39.706882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790730, 41.744640, 39.710060>,  <45.014584, 41.831165, 39.711967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.790730, 41.744640, 39.710060>,  <44.417641, 41.600433, 39.706882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790730, 41.744640, 39.710060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252883, 0.638227, 0.727129,
		0.257075, -0.680215, 0.686455,
		0.932718, 0.360520, 0.007942,
		45.070545, 41.852795, 39.712444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.994759, 41.195293, 38.378563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629482, 41.132050, 38.528805>,  <38.410316, 41.094105, 38.618950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629482, 41.132050, 38.528805>,  <38.994759, 41.195293, 38.378563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629482, 41.132050, 38.528805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174920, -0.680380, -0.711678,
		0.368077, -0.715601, 0.593662,
		-0.913193, -0.158109, 0.375605,
		38.355526, 41.084618, 38.641487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789330, 40.540653, 38.247791>,  <38.994759, 41.195293, 38.378563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789330, 40.540653, 38.247791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426498, 40.703400, 38.290989>,  <38.208797, 40.801048, 38.316906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426498, 40.703400, 38.290989>,  <38.789330, 40.540653, 38.247791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426498, 40.703400, 38.290989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362075, -0.623234, -0.693167,
		-0.214723, -0.667860, 0.712641,
		-0.907081, 0.406868, 0.107993,
		38.154373, 40.825459, 38.323387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324421, 39.922714, 38.217701>,  <38.789330, 40.540653, 38.247791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324421, 39.922714, 38.217701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135780, 40.263714, 38.127518>,  <38.022594, 40.468315, 38.073406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135780, 40.263714, 38.127518>,  <38.324421, 39.922714, 38.217701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135780, 40.263714, 38.127518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543537, -0.482356, -0.686950,
		-0.694378, -0.201422, 0.690846,
		-0.471600, 0.852503, -0.225457,
		37.994301, 40.519466, 38.059879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519245, 39.788719, 38.230892>,  <38.324421, 39.922714, 38.217701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519245, 39.788719, 38.230892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638634, 40.091423, 37.998260>,  <37.710266, 40.273045, 37.858681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638634, 40.091423, 37.998260>,  <37.519245, 39.788719, 38.230892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638634, 40.091423, 37.998260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395770, -0.456361, -0.796933,
		-0.868494, 0.468033, 0.163291,
		0.298471, 0.756756, -0.581580,
		37.728176, 40.318451, 37.823788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196606, 39.732174, 37.623154>,  <37.519245, 39.788719, 38.230892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196606, 39.732174, 37.623154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409279, 40.051586, 37.510254>,  <37.536884, 40.243233, 37.442513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409279, 40.051586, 37.510254>,  <37.196606, 39.732174, 37.623154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409279, 40.051586, 37.510254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127177, -0.254204, -0.958752,
		-0.837338, 0.545652, -0.033603,
		0.531688, 0.798526, -0.282249,
		37.568787, 40.291145, 37.425579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851654, 39.944511, 37.052124>,  <37.196606, 39.732174, 37.623154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851654, 39.944511, 37.052124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218655, 40.102726, 37.035450>,  <37.438854, 40.197655, 37.025444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218655, 40.102726, 37.035450>,  <36.851654, 39.944511, 37.052124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218655, 40.102726, 37.035450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029055, -0.171196, -0.984808,
		-0.396660, 0.902356, -0.168566,
		0.917506, 0.395532, -0.041689,
		37.493908, 40.221386, 37.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783051, 40.486443, 36.465088>,  <36.851654, 39.944511, 37.052124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783051, 40.486443, 36.465088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161396, 40.384621, 36.545635>,  <37.388405, 40.323528, 36.593964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161396, 40.384621, 36.545635>,  <36.783051, 40.486443, 36.465088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161396, 40.384621, 36.545635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160220, -0.173356, -0.971739,
		0.282264, 0.951395, -0.123187,
		0.945863, -0.254550, 0.201364,
		37.445156, 40.308254, 36.606045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170303, 40.787914, 35.940784>,  <36.783051, 40.486443, 36.465088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170303, 40.787914, 35.940784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390121, 40.490536, 36.093250>,  <37.522011, 40.312111, 36.184731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390121, 40.490536, 36.093250>,  <37.170303, 40.787914, 35.940784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390121, 40.490536, 36.093250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245216, -0.292610, -0.924256,
		0.798666, 0.601390, 0.021502,
		0.549546, -0.743444, 0.381168,
		37.554985, 40.267502, 36.207600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639614, 40.541405, 35.388229>,  <37.170303, 40.787914, 35.940784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639614, 40.541405, 35.388229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684513, 40.235760, 35.642326>,  <37.711452, 40.052372, 35.794785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684513, 40.235760, 35.642326>,  <37.639614, 40.541405, 35.388229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684513, 40.235760, 35.642326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390429, -0.553954, -0.735323,
		0.913764, 0.330559, 0.236149,
		0.112252, -0.764111, 0.635243,
		37.718189, 40.006527, 35.832901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308422, 40.286644, 35.248512>,  <37.639614, 40.541405, 35.388229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308422, 40.286644, 35.248512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127510, 39.997704, 35.457764>,  <38.018963, 39.824341, 35.583313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127510, 39.997704, 35.457764>,  <38.308422, 40.286644, 35.248512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127510, 39.997704, 35.457764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307134, -0.676813, -0.669024,
		0.837325, -0.141915, 0.527965,
		-0.452278, -0.722347, 0.523125,
		37.991825, 39.780998, 35.614700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790173, 39.768311, 35.312061>,  <38.308422, 40.286644, 35.248512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790173, 39.768311, 35.312061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420002, 39.621700, 35.350513>,  <38.197899, 39.533733, 35.373585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420002, 39.621700, 35.350513>,  <38.790173, 39.768311, 35.312061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420002, 39.621700, 35.350513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142914, -0.572565, -0.807307,
		0.350941, -0.733366, 0.582250,
		-0.925427, -0.366529, 0.096128,
		38.142372, 39.511742, 35.379353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835560, 39.032566, 35.304817>,  <38.790173, 39.768311, 35.312061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835560, 39.032566, 35.304817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455044, 39.102871, 35.203506>,  <38.226734, 39.145054, 35.142719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455044, 39.102871, 35.203506>,  <38.835560, 39.032566, 35.304817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455044, 39.102871, 35.203506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097501, -0.607870, -0.788028,
		-0.292462, -0.774340, 0.561126,
		-0.951294, 0.175758, -0.253278,
		38.169655, 39.155598, 35.127522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347893, 38.414757, 35.293858>,  <38.835560, 39.032566, 35.304817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347893, 38.414757, 35.293858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282722, 38.703075, 35.024368>,  <38.243618, 38.876068, 34.862675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282722, 38.703075, 35.024368>,  <38.347893, 38.414757, 35.293858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282722, 38.703075, 35.024368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253396, -0.690517, -0.677478,
		-0.953543, 0.060339, 0.295152,
		-0.162929, 0.720795, -0.673727,
		38.233845, 38.919315, 34.822250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667568, 38.268429, 35.914474>,  <38.347893, 38.414757, 35.293858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667568, 38.268429, 35.914474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697613, 37.869560, 35.914806>,  <38.715637, 37.630238, 35.915005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697613, 37.869560, 35.914806>,  <38.667568, 38.268429, 35.914474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697613, 37.869560, 35.914806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172022, -0.012138, 0.985018,
		-0.982226, -0.074124, -0.172448,
		0.075107, -0.997175, 0.000829,
		38.720146, 37.570408, 35.915054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106491, 37.809177, 36.212791>,  <38.667568, 38.268429, 35.914474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106491, 37.809177, 36.212791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434803, 37.587265, 36.267273>,  <38.631790, 37.454117, 36.299961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434803, 37.587265, 36.267273>,  <38.106491, 37.809177, 36.212791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434803, 37.587265, 36.267273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219410, -0.086022, 0.971833,
		-0.527435, -0.827540, -0.192328,
		0.820775, -0.554777, 0.136199,
		38.681034, 37.420834, 36.308132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797909, 37.196892, 36.656391>,  <38.106491, 37.809177, 36.212791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797909, 37.196892, 36.656391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193863, 37.185776, 36.712032>,  <38.431435, 37.179108, 36.745419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193863, 37.185776, 36.712032>,  <37.797909, 37.196892, 36.656391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193863, 37.185776, 36.712032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141111, -0.293068, 0.945621,
		0.014488, -0.955688, -0.294026,
		0.989888, -0.027791, 0.139103,
		38.490829, 37.177437, 36.753765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920040, 36.568668, 37.031075>,  <37.797909, 37.196892, 36.656391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920040, 36.568668, 37.031075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238354, 36.803661, 37.089867>,  <38.429340, 36.944656, 37.125141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238354, 36.803661, 37.089867>,  <37.920040, 36.568668, 37.031075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238354, 36.803661, 37.089867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020542, -0.216376, 0.976094,
		0.605238, -0.779775, -0.160120,
		0.795780, 0.587480, 0.146977,
		38.477089, 36.979904, 37.133961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379238, 36.177692, 37.616150>,  <37.920040, 36.568668, 37.031075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379238, 36.177692, 37.616150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511951, 36.554905, 37.625984>,  <38.591579, 36.781235, 37.631886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511951, 36.554905, 37.625984>,  <38.379238, 36.177692, 37.616150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511951, 36.554905, 37.625984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018867, -0.019421, 0.999633,
		0.943166, -0.332129, 0.011348,
		0.331787, 0.943034, 0.024583,
		38.611488, 36.837814, 37.633358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868458, 36.190838, 38.013813>,  <38.379238, 36.177692, 37.616150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868458, 36.190838, 38.013813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766613, 36.577366, 38.028740>,  <38.705505, 36.809284, 38.037697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766613, 36.577366, 38.028740>,  <38.868458, 36.190838, 38.013813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766613, 36.577366, 38.028740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104003, -0.010998, 0.994516,
		0.961434, 0.257100, -0.097700,
		-0.254615, 0.966322, 0.037313,
		38.690228, 36.867264, 38.039932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219784, 36.327400, 38.596581>,  <38.868458, 36.190838, 38.013813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219784, 36.327400, 38.596581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009285, 36.656990, 38.512550>,  <38.882984, 36.854744, 38.462132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009285, 36.656990, 38.512550>,  <39.219784, 36.327400, 38.596581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009285, 36.656990, 38.512550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042126, 0.272007, 0.961373,
		0.849288, 0.497070, -0.177854,
		-0.526247, 0.823974, -0.210072,
		38.851410, 36.904182, 38.449528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572609, 36.905411, 38.867363>,  <39.219784, 36.327400, 38.596581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572609, 36.905411, 38.867363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180817, 36.984032, 38.849529>,  <38.945740, 37.031204, 38.838829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180817, 36.984032, 38.849529>,  <39.572609, 36.905411, 38.867363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180817, 36.984032, 38.849529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015568, 0.146760, 0.989050,
		0.200942, 0.969448, -0.140689,
		-0.979479, 0.196552, -0.044583,
		38.886974, 37.042995, 38.836155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447670, 37.330925, 39.367062>,  <39.572609, 36.905411, 38.867363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447670, 37.330925, 39.367062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068523, 37.236778, 39.281128>,  <38.841034, 37.180290, 39.229568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068523, 37.236778, 39.281128>,  <39.447670, 37.330925, 39.367062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068523, 37.236778, 39.281128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260311, 0.183016, 0.948021,
		-0.183819, 0.954518, -0.234745,
		-0.947865, -0.235371, -0.214830,
		38.784164, 37.166168, 39.216679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023701, 38.007549, 39.466652>,  <39.447670, 37.330925, 39.367062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023701, 38.007549, 39.466652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803741, 37.675346, 39.502132>,  <38.671764, 37.476025, 39.523418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803741, 37.675346, 39.502132>,  <39.023701, 38.007549, 39.466652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803741, 37.675346, 39.502132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428302, 0.371560, 0.823712,
		-0.717056, 0.414969, -0.560029,
		-0.549898, -0.830509, 0.088697,
		38.638771, 37.426193, 39.528740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396374, 38.331455, 39.736057>,  <39.023701, 38.007549, 39.466652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396374, 38.331455, 39.736057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353642, 37.939140, 39.801350>,  <38.328003, 37.703751, 39.840527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353642, 37.939140, 39.801350>,  <38.396374, 38.331455, 39.736057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353642, 37.939140, 39.801350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505040, 0.194943, 0.840793,
		-0.856459, 0.007382, -0.516162,
		-0.106828, -0.980787, 0.163232,
		38.321594, 37.644905, 39.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754478, 38.178665, 39.979027>,  <38.396374, 38.331455, 39.736057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754478, 38.178665, 39.979027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950859, 37.852238, 40.101017>,  <38.068687, 37.656384, 40.174210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950859, 37.852238, 40.101017>,  <37.754478, 38.178665, 39.979027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950859, 37.852238, 40.101017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294929, 0.173708, 0.939597,
		-0.819748, -0.551239, -0.155400,
		0.490948, -0.816065, 0.304973,
		38.098145, 37.607418, 40.192509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294796, 37.867081, 40.388615>,  <37.754478, 38.178665, 39.979027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294796, 37.867081, 40.388615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655991, 37.714428, 40.467571>,  <37.872707, 37.622837, 40.514946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655991, 37.714428, 40.467571>,  <37.294796, 37.867081, 40.388615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655991, 37.714428, 40.467571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139726, 0.173609, 0.974852,
		-0.406306, -0.907863, 0.103444,
		0.902991, -0.381635, 0.197390,
		37.926888, 37.599937, 40.526787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103165, 37.413784, 40.895523>,  <37.294796, 37.867081, 40.388615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103165, 37.413784, 40.895523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494678, 37.488976, 40.928116>,  <37.729588, 37.534092, 40.947670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494678, 37.488976, 40.928116>,  <37.103165, 37.413784, 40.895523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494678, 37.488976, 40.928116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141145, 0.330401, 0.933227,
		0.148505, -0.924932, 0.349925,
		0.978787, 0.187979, 0.081483,
		37.788315, 37.545368, 40.952560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355350, 37.227261, 41.641068>,  <37.103165, 37.413784, 40.895523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355350, 37.227261, 41.641068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615986, 37.493031, 41.494663>,  <37.772366, 37.652493, 41.406818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615986, 37.493031, 41.494663>,  <37.355350, 37.227261, 41.641068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615986, 37.493031, 41.494663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034924, 0.455718, 0.889439,
		0.757768, -0.592331, 0.273736,
		0.651589, 0.664428, -0.366015,
		37.811462, 37.692360, 41.384857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397045, 36.626369, 42.072479>,  <37.355350, 37.227261, 41.641068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397045, 36.626369, 42.072479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114178, 36.533485, 42.339607>,  <36.944458, 36.477753, 42.499886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114178, 36.533485, 42.339607>,  <37.397045, 36.626369, 42.072479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114178, 36.533485, 42.339607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582184, -0.344739, -0.736354,
		0.401217, -0.909523, 0.108598,
		-0.707168, -0.232214, 0.667824,
		36.902027, 36.463821, 42.539955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200218, 35.996876, 41.910698>,  <37.397045, 36.626369, 42.072479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200218, 35.996876, 41.910698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893681, 36.170414, 42.100224>,  <36.709759, 36.274536, 42.213940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893681, 36.170414, 42.100224>,  <37.200218, 35.996876, 41.910698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893681, 36.170414, 42.100224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627058, -0.344727, -0.698542,
		-0.139719, -0.832432, 0.536223,
		-0.766340, 0.433843, 0.473818,
		36.663780, 36.300568, 42.242371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665756, 35.477024, 41.915997>,  <37.200218, 35.996876, 41.910698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665756, 35.477024, 41.915997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508366, 35.841202, 41.967014>,  <36.413933, 36.059708, 41.997627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508366, 35.841202, 41.967014>,  <36.665756, 35.477024, 41.915997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508366, 35.841202, 41.967014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811957, -0.279089, -0.512675,
		-0.431166, -0.305286, 0.849056,
		-0.393475, 0.910445, 0.127546,
		36.390324, 36.114334, 42.005280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987396, 35.352543, 42.051342>,  <36.665756, 35.477024, 41.915997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987396, 35.352543, 42.051342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029865, 35.727386, 41.918346>,  <36.055347, 35.952293, 41.838551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029865, 35.727386, 41.918346>,  <35.987396, 35.352543, 42.051342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029865, 35.727386, 41.918346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761262, -0.138504, -0.633480,
		-0.639693, 0.320369, 0.698682,
		0.106177, 0.937113, -0.332484,
		36.061718, 36.008522, 41.818600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281082, 35.434322, 41.716583>,  <35.987396, 35.352543, 42.051342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281082, 35.434322, 41.716583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464260, 35.772633, 41.607079>,  <35.574165, 35.975620, 41.541374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464260, 35.772633, 41.607079>,  <35.281082, 35.434322, 41.716583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464260, 35.772633, 41.607079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516306, 0.002346, -0.856401,
		-0.723683, 0.533529, 0.437755,
		0.457942, 0.845779, -0.273766,
		35.601643, 36.026367, 41.524948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721523, 35.853867, 41.370365>,  <35.281082, 35.434322, 41.716583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721523, 35.853867, 41.370365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084583, 35.969860, 41.248993>,  <35.302422, 36.039455, 41.176170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084583, 35.969860, 41.248993>,  <34.721523, 35.853867, 41.370365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084583, 35.969860, 41.248993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358048, 0.157733, -0.920283,
		-0.219009, 0.943943, 0.246996,
		0.907655, 0.289987, -0.303432,
		35.356880, 36.056854, 41.157963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676147, 36.429134, 40.924774>,  <34.721523, 35.853867, 41.370365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676147, 36.429134, 40.924774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034004, 36.278332, 40.828869>,  <35.248718, 36.187851, 40.771324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034004, 36.278332, 40.828869>,  <34.676147, 36.429134, 40.924774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034004, 36.278332, 40.828869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237332, 0.053658, -0.969946,
		0.378540, 0.924655, -0.041471,
		0.894640, -0.377006, -0.239762,
		35.302395, 36.165230, 40.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007553, 36.939079, 40.436962>,  <34.676147, 36.429134, 40.924774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007553, 36.939079, 40.436962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177212, 36.580284, 40.387127>,  <35.279007, 36.365009, 40.357227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177212, 36.580284, 40.387127>,  <35.007553, 36.939079, 40.436962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177212, 36.580284, 40.387127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018972, 0.128741, -0.991497,
		0.905396, 0.422901, 0.037587,
		0.424144, -0.896984, -0.124585,
		35.304455, 36.311188, 40.349751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431202, 37.082458, 39.903805>,  <35.007553, 36.939079, 40.436962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431202, 37.082458, 39.903805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419933, 36.682732, 39.894218>,  <35.413170, 36.442894, 39.888466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419933, 36.682732, 39.894218>,  <35.431202, 37.082458, 39.903805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419933, 36.682732, 39.894218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185283, 0.028777, -0.982264,
		0.982281, -0.023236, -0.185967,
		-0.028175, -0.999316, -0.023962,
		35.411480, 36.382938, 39.887032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852558, 36.893673, 39.352726>,  <35.431202, 37.082458, 39.903805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852558, 36.893673, 39.352726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610741, 36.587170, 39.439789>,  <35.465649, 36.403267, 39.492027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610741, 36.587170, 39.439789>,  <35.852558, 36.893673, 39.352726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610741, 36.587170, 39.439789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372606, 0.030518, -0.927488,
		0.704053, -0.641807, -0.303962,
		-0.604544, -0.766259, 0.217655,
		35.429379, 36.357292, 39.505085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910496, 36.335171, 38.838978>,  <35.852558, 36.893673, 39.352726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910496, 36.335171, 38.838978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552605, 36.235306, 38.987099>,  <35.337868, 36.175388, 39.075970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552605, 36.235306, 38.987099>,  <35.910496, 36.335171, 38.838978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552605, 36.235306, 38.987099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349289, -0.125495, -0.928573,
		0.278301, -0.960166, 0.025080,
		-0.894732, -0.249663, 0.370301,
		35.284184, 36.160408, 39.098190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768623, 35.793221, 38.386486>,  <35.910496, 36.335171, 38.838978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768623, 35.793221, 38.386486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411385, 35.874344, 38.547112>,  <35.197041, 35.923016, 38.643486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411385, 35.874344, 38.547112>,  <35.768623, 35.793221, 38.386486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411385, 35.874344, 38.547112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434999, -0.161663, -0.885800,
		-0.114725, -0.965782, 0.232600,
		-0.893093, 0.202804, 0.401568,
		35.143456, 35.935184, 38.667580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.344597, 37.490589, 45.998878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964218, 37.552513, 45.891743>,  <37.735992, 37.589668, 45.827461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964218, 37.552513, 45.891743>,  <38.344597, 37.490589, 45.998878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964218, 37.552513, 45.891743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010733, -0.848750, -0.528686,
		-0.309178, -0.505625, 0.805452,
		-0.950944, 0.154813, -0.267841,
		37.678936, 37.598957, 45.811390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056019, 36.816418, 45.985283>,  <38.344597, 37.490589, 45.998878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056019, 36.816418, 45.985283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814919, 37.051811, 45.769737>,  <37.670258, 37.193047, 45.640408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.814919, 37.051811, 45.769737>,  <38.056019, 36.816418, 45.985283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814919, 37.051811, 45.769737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147514, -0.745875, -0.649546,
		-0.784176, -0.312022, 0.536385,
		-0.602749, 0.588483, -0.538870,
		37.634094, 37.228355, 45.608078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643528, 36.260162, 45.664337>,  <38.056019, 36.816418, 45.985283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643528, 36.260162, 45.664337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556053, 36.599434, 45.471352>,  <37.503567, 36.802998, 45.355560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.556053, 36.599434, 45.471352>,  <37.643528, 36.260162, 45.664337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556053, 36.599434, 45.471352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196092, -0.522546, -0.829755,
		-0.955889, -0.086849, 0.280595,
		-0.218688, 0.848176, -0.482466,
		37.490448, 36.853886, 45.326611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038769, 36.228550, 45.353321>,  <37.643528, 36.260162, 45.664337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038769, 36.228550, 45.353321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199490, 36.526085, 45.139683>,  <37.295921, 36.704605, 45.011501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.199490, 36.526085, 45.139683>,  <37.038769, 36.228550, 45.353321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199490, 36.526085, 45.139683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374191, -0.398962, -0.837144,
		-0.835784, 0.536222, 0.118033,
		0.401804, 0.743838, -0.534095,
		37.320030, 36.749237, 44.979454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485458, 36.504562, 44.850040>,  <37.038769, 36.228550, 45.353321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485458, 36.504562, 44.850040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846813, 36.588406, 44.700401>,  <37.063625, 36.638710, 44.610619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846813, 36.588406, 44.700401>,  <36.485458, 36.504562, 44.850040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846813, 36.588406, 44.700401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370362, -0.058326, -0.927054,
		-0.216138, 0.976044, 0.024940,
		0.903392, 0.209608, -0.374096,
		37.117832, 36.651287, 44.588173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292225, 36.915524, 44.298599>,  <36.485458, 36.504562, 44.850040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292225, 36.915524, 44.298599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668144, 36.801224, 44.223637>,  <36.893696, 36.732643, 44.178658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668144, 36.801224, 44.223637>,  <36.292225, 36.915524, 44.298599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668144, 36.801224, 44.223637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229179, -0.120251, -0.965928,
		0.253479, 0.950729, -0.178500,
		0.939801, -0.285751, -0.187406,
		36.950085, 36.715500, 44.167416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578445, 37.399384, 43.794609>,  <36.292225, 36.915524, 44.298599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578445, 37.399384, 43.794609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774437, 37.051014, 43.779526>,  <36.892033, 36.841991, 43.770473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.774437, 37.051014, 43.779526>,  <36.578445, 37.399384, 43.794609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774437, 37.051014, 43.779526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168352, -0.052092, -0.984349,
		0.855325, 0.488656, -0.172145,
		0.489976, -0.870920, -0.037711,
		36.921429, 36.789738, 43.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960415, 37.451618, 43.178871>,  <36.578445, 37.399384, 43.794609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960415, 37.451618, 43.178871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975986, 37.065201, 43.281044>,  <36.985329, 36.833351, 43.342346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975986, 37.065201, 43.281044>,  <36.960415, 37.451618, 43.178871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975986, 37.065201, 43.281044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286006, -0.255704, -0.923480,
		0.957437, -0.037106, -0.286248,
		0.038928, -0.966043, 0.255433,
		36.987663, 36.775387, 43.357674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360546, 37.199783, 42.579922>,  <36.960415, 37.451618, 43.178871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360546, 37.199783, 42.579922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153831, 36.913349, 42.767605>,  <37.029804, 36.741489, 42.880215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153831, 36.913349, 42.767605>,  <37.360546, 37.199783, 42.579922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153831, 36.913349, 42.767605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375339, -0.303071, -0.875939,
		0.769451, -0.628781, -0.112154,
		-0.516783, -0.716088, 0.469205,
		36.998795, 36.698524, 42.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910126, 37.279633, 42.207382>,  <37.360546, 37.199783, 42.579922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910126, 37.279633, 42.207382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936214, 37.605850, 41.977379>,  <37.951870, 37.801582, 41.839378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936214, 37.605850, 41.977379>,  <37.910126, 37.279633, 42.207382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936214, 37.605850, 41.977379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093241, 0.568733, 0.817220,
		0.993505, -0.106918, -0.038947,
		0.065225, 0.815543, -0.575008,
		37.955784, 37.850513, 41.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382393, 37.682003, 42.522987>,  <37.910126, 37.279633, 42.207382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382393, 37.682003, 42.522987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190388, 37.950409, 42.296951>,  <38.075184, 38.111454, 42.161327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190388, 37.950409, 42.296951>,  <38.382393, 37.682003, 42.522987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190388, 37.950409, 42.296951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057400, 0.666798, 0.743025,
		0.875382, 0.324225, -0.358587,
		-0.480012, 0.671014, -0.565092,
		38.046383, 38.151714, 42.127422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605324, 38.268017, 42.747997>,  <38.382393, 37.682003, 42.522987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605324, 38.268017, 42.747997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294781, 38.414692, 42.542938>,  <38.108456, 38.502697, 42.419903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294781, 38.414692, 42.542938>,  <38.605324, 38.268017, 42.747997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294781, 38.414692, 42.542938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049662, 0.846411, 0.530209,
		0.628328, 0.386174, -0.675331,
		-0.776361, 0.366683, -0.512646,
		38.061871, 38.524696, 42.389145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829159, 38.966385, 42.505886>,  <38.605324, 38.268017, 42.747997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829159, 38.966385, 42.505886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430630, 38.949913, 42.535957>,  <38.191513, 38.940029, 42.554001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430630, 38.949913, 42.535957>,  <38.829159, 38.966385, 42.505886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430630, 38.949913, 42.535957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004540, 0.850444, 0.526045,
		-0.085599, 0.524450, -0.847127,
		-0.996319, -0.041183, 0.075178,
		38.131733, 38.937557, 42.558510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661915, 39.631176, 42.326286>,  <38.829159, 38.966385, 42.505886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661915, 39.631176, 42.326286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363232, 39.464638, 42.533779>,  <38.184021, 39.364716, 42.658276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363232, 39.464638, 42.533779>,  <38.661915, 39.631176, 42.326286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363232, 39.464638, 42.533779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073711, 0.826864, 0.557551,
		-0.661050, 0.378094, -0.648118,
		-0.746712, -0.416343, 0.518728,
		38.139217, 39.339733, 42.689396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142040, 40.129730, 42.328178>,  <38.661915, 39.631176, 42.326286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142040, 40.129730, 42.328178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056839, 39.890911, 42.637543>,  <38.005718, 39.747620, 42.823162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056839, 39.890911, 42.637543>,  <38.142040, 40.129730, 42.328178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056839, 39.890911, 42.637543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138587, 0.802036, 0.580975,
		-0.967174, 0.016562, -0.253577,
		-0.213000, -0.597046, 0.773413,
		37.992939, 39.711796, 42.869568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636181, 40.527969, 42.745693>,  <38.142040, 40.129730, 42.328178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636181, 40.527969, 42.745693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773579, 40.231689, 42.976650>,  <37.856018, 40.053921, 43.115223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.773579, 40.231689, 42.976650>,  <37.636181, 40.527969, 42.745693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773579, 40.231689, 42.976650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042213, 0.626353, 0.778396,
		-0.938205, -0.243002, 0.246417,
		0.343496, -0.740697, 0.577389,
		37.876629, 40.009480, 43.149868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142197, 40.408989, 43.373325>,  <37.636181, 40.527969, 42.745693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142197, 40.408989, 43.373325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515987, 40.300369, 43.465416>,  <37.740261, 40.235195, 43.520672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.515987, 40.300369, 43.465416>,  <37.142197, 40.408989, 43.373325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515987, 40.300369, 43.465416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033118, 0.577574, 0.815667,
		-0.354469, -0.769850, 0.530738,
		0.934481, -0.271551, 0.230228,
		37.796333, 40.218903, 43.534485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091667, 40.345592, 44.011784>,  <37.142197, 40.408989, 43.373325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091667, 40.345592, 44.011784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486263, 40.383991, 43.958698>,  <37.723022, 40.407032, 43.926849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.486263, 40.383991, 43.958698>,  <37.091667, 40.345592, 44.011784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486263, 40.383991, 43.958698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018369, 0.740285, 0.672043,
		0.162758, -0.665405, 0.728524,
		0.986495, 0.095998, -0.132710,
		37.782211, 40.412792, 43.918884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392151, 40.356052, 44.673122>,  <37.091667, 40.345592, 44.011784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392151, 40.356052, 44.673122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678051, 40.511703, 44.440670>,  <37.849590, 40.605095, 44.301197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.678051, 40.511703, 44.440670>,  <37.392151, 40.356052, 44.673122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678051, 40.511703, 44.440670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288956, 0.592383, 0.752055,
		0.636900, -0.705450, 0.310963,
		0.714746, 0.389129, -0.581133,
		37.892475, 40.628441, 44.266331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999672, 40.301880, 45.054707>,  <37.392151, 40.356052, 44.673122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999672, 40.301880, 45.054707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081268, 40.581715, 44.780781>,  <38.130226, 40.749615, 44.616425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.081268, 40.581715, 44.780781>,  <37.999672, 40.301880, 45.054707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081268, 40.581715, 44.780781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340330, 0.605219, 0.719643,
		0.917914, -0.379861, -0.114632,
		0.203987, 0.699582, -0.684817,
		38.142464, 40.791588, 44.575336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630936, 40.538429, 45.106510>,  <37.999672, 40.301880, 45.054707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630936, 40.538429, 45.106510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460472, 40.848228, 44.919518>,  <38.358192, 41.034107, 44.807323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460472, 40.848228, 44.919518>,  <38.630936, 40.538429, 45.106510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460472, 40.848228, 44.919518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313330, 0.611139, 0.726865,
		0.848652, 0.163286, -0.503117,
		-0.426162, 0.774498, -0.467482,
		38.332623, 41.080578, 44.779274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009731, 41.136707, 45.326931>,  <38.630936, 40.538429, 45.106510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009731, 41.136707, 45.326931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723770, 41.350147, 45.146187>,  <38.552193, 41.478210, 45.037739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723770, 41.350147, 45.146187>,  <39.009731, 41.136707, 45.326931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723770, 41.350147, 45.146187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218273, 0.784249, 0.580784,
		0.664281, 0.316575, -0.677134,
		-0.714903, 0.533604, -0.451863,
		38.509300, 41.510227, 45.010628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236500, 41.854565, 45.121292>,  <39.009731, 41.136707, 45.326931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236500, 41.854565, 45.121292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838245, 41.884865, 45.143074>,  <38.599293, 41.903046, 45.156143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.838245, 41.884865, 45.143074>,  <39.236500, 41.854565, 45.121292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838245, 41.884865, 45.143074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092936, 0.856226, 0.508173,
		-0.008128, 0.511017, -0.859532,
		-0.995639, 0.075752, 0.054451,
		38.539555, 41.907589, 45.159409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.425514, 42.036522, 43.975067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782150, 41.868053, 44.041630>,  <32.996132, 41.766972, 44.081566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782150, 41.868053, 44.041630>,  <32.425514, 42.036522, 43.975067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782150, 41.868053, 44.041630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128148, -0.587087, -0.799316,
		0.434342, 0.691335, -0.577411,
		0.891586, -0.421170, 0.166404,
		33.049625, 41.741703, 44.091553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667110, 41.988190, 43.268311>,  <32.425514, 42.036522, 43.975067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667110, 41.988190, 43.268311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910885, 41.751362, 43.479229>,  <33.057148, 41.609264, 43.605778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.910885, 41.751362, 43.479229>,  <32.667110, 41.988190, 43.268311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910885, 41.751362, 43.479229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115484, -0.724271, -0.679776,
		0.784379, 0.353387, -0.509773,
		0.609437, -0.592072, 0.527292,
		33.093716, 41.573742, 43.637417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249886, 41.822803, 42.836933>,  <32.667110, 41.988190, 43.268311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249886, 41.822803, 42.836933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227753, 41.536282, 43.115170>,  <33.214474, 41.364368, 43.282112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.227753, 41.536282, 43.115170>,  <33.249886, 41.822803, 42.836933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227753, 41.536282, 43.115170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002326, -0.696747, -0.717313,
		0.998465, -0.038074, 0.040220,
		-0.055334, -0.716306, 0.695589,
		33.211151, 41.321388, 43.323845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688305, 41.274460, 42.576752>,  <33.249886, 41.822803, 42.836933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688305, 41.274460, 42.576752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452396, 41.088749, 42.841061>,  <33.310852, 40.977322, 42.999645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452396, 41.088749, 42.841061>,  <33.688305, 41.274460, 42.576752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452396, 41.088749, 42.841061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004919, -0.820268, -0.571959,
		0.807557, -0.334073, 0.486052,
		-0.589769, -0.464280, 0.660770,
		33.275467, 40.949467, 43.039291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067722, 40.642597, 42.783482>,  <33.688305, 41.274460, 42.576752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067722, 40.642597, 42.783482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681107, 40.605549, 42.879162>,  <33.449135, 40.583321, 42.936569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681107, 40.605549, 42.879162>,  <34.067722, 40.642597, 42.783482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681107, 40.605549, 42.879162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091483, -0.746728, -0.658809,
		0.239639, -0.658649, 0.713271,
		-0.966543, -0.092624, 0.239200,
		33.391144, 40.577763, 42.950920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018673, 39.914982, 42.639217>,  <34.067722, 40.642597, 42.783482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018673, 39.914982, 42.639217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651447, 40.072784, 42.654839>,  <33.431114, 40.167465, 42.664211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651447, 40.072784, 42.654839>,  <34.018673, 39.914982, 42.639217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651447, 40.072784, 42.654839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270378, -0.551044, -0.789459,
		-0.289926, -0.735333, 0.612559,
		-0.918062, 0.394507, 0.039055,
		33.376030, 40.191135, 42.666553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581120, 39.371731, 42.554951>,  <34.018673, 39.914982, 42.639217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581120, 39.371731, 42.554951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344017, 39.679478, 42.459694>,  <33.201756, 39.864124, 42.402538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344017, 39.679478, 42.459694>,  <33.581120, 39.371731, 42.554951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344017, 39.679478, 42.459694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192003, -0.422162, -0.885954,
		-0.782160, -0.479430, 0.397960,
		-0.592756, 0.769367, -0.238147,
		33.166191, 39.910290, 42.388248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996426, 39.093670, 42.298309>,  <33.581120, 39.371731, 42.554951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996426, 39.093670, 42.298309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.989815, 39.472645, 42.170506>,  <32.985847, 39.700031, 42.093822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.989815, 39.472645, 42.170506>,  <32.996426, 39.093670, 42.298309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989815, 39.472645, 42.170506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048336, -0.319936, -0.946205,
		-0.998694, -0.000191, 0.051082,
		-0.016523, 0.947439, -0.319509,
		32.984859, 39.756878, 42.074654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425964, 39.042522, 41.909649>,  <32.996426, 39.093670, 42.298309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425964, 39.042522, 41.909649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666771, 39.342701, 41.800537>,  <32.811253, 39.522808, 41.735069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.666771, 39.342701, 41.800537>,  <32.425964, 39.042522, 41.909649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666771, 39.342701, 41.800537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061469, -0.297054, -0.952880,
		-0.796116, 0.590415, -0.132702,
		0.602014, 0.750446, -0.272782,
		32.847374, 39.567833, 41.718704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201626, 39.301884, 41.281422>,  <32.425964, 39.042522, 41.909649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201626, 39.301884, 41.281422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570694, 39.454731, 41.260746>,  <32.792133, 39.546440, 41.248341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.570694, 39.454731, 41.260746>,  <32.201626, 39.301884, 41.281422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570694, 39.454731, 41.260746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007641, -0.152137, -0.988330,
		-0.385523, 0.911504, -0.143292,
		0.922666, 0.382119, -0.051687,
		32.847492, 39.569366, 41.245239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193584, 39.798550, 40.694817>,  <32.201626, 39.301884, 41.281422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193584, 39.798550, 40.694817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577465, 39.697800, 40.744671>,  <32.807793, 39.637348, 40.774586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577465, 39.697800, 40.744671>,  <32.193584, 39.798550, 40.694817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577465, 39.697800, 40.744671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070914, -0.212103, -0.974671,
		0.271935, 0.944230, -0.185694,
		0.959699, -0.251879, 0.124637,
		32.865376, 39.622234, 40.782063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555946, 40.151150, 40.152477>,  <32.193584, 39.798550, 40.694817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555946, 40.151150, 40.152477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762798, 39.832550, 40.277805>,  <32.886909, 39.641392, 40.353001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.762798, 39.832550, 40.277805>,  <32.555946, 40.151150, 40.152477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762798, 39.832550, 40.277805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158183, -0.270825, -0.949543,
		0.841165, 0.540595, -0.014058,
		0.517126, -0.796499, 0.313321,
		32.917934, 39.593601, 40.371803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357677, 40.245811, 39.996754>,  <32.555946, 40.151150, 40.152477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357677, 40.245811, 39.996754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252651, 39.860004, 40.007851>,  <33.189636, 39.628521, 40.014507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252651, 39.860004, 40.007851>,  <33.357677, 40.245811, 39.996754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252651, 39.860004, 40.007851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215898, -0.086745, -0.972555,
		0.940451, -0.249370, 0.231013,
		-0.262565, -0.964515, 0.027741,
		33.173882, 39.570648, 40.016174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662830, 39.998325, 39.338177>,  <33.357677, 40.245811, 39.996754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662830, 39.998325, 39.338177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446541, 39.699757, 39.493340>,  <33.316769, 39.520615, 39.586437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.446541, 39.699757, 39.493340>,  <33.662830, 39.998325, 39.338177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446541, 39.699757, 39.493340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389859, -0.186258, -0.901841,
		0.745406, -0.638875, -0.190286,
		-0.540722, -0.746422, 0.387909,
		33.284325, 39.475830, 39.609711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396008, 40.104282, 39.063168>,  <33.662830, 39.998325, 39.338177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396008, 40.104282, 39.063168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355598, 40.466045, 38.897354>,  <34.331352, 40.683105, 38.797867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.355598, 40.466045, 38.897354>,  <34.396008, 40.104282, 39.063168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355598, 40.466045, 38.897354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074774, 0.408582, 0.909653,
		0.992070, 0.122893, 0.026350,
		-0.101024, 0.904410, -0.414532,
		34.325291, 40.737370, 38.772995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953079, 40.677284, 39.275867>,  <34.396008, 40.104282, 39.063168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953079, 40.677284, 39.275867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631027, 40.885113, 39.161453>,  <34.437798, 41.009808, 39.092804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631027, 40.885113, 39.161453>,  <34.953079, 40.677284, 39.275867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631027, 40.885113, 39.161453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092068, 0.585908, 0.805131,
		0.585908, 0.621901, -0.519568,
		-0.805131, 0.519568, -0.286031,
		34.389488, 41.040985, 39.075645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187115, 41.335556, 39.459457>,  <34.953079, 40.677284, 39.275867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187115, 41.335556, 39.459457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796978, 41.394043, 39.393326>,  <34.562897, 41.429134, 39.353645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796978, 41.394043, 39.393326>,  <35.187115, 41.335556, 39.459457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796978, 41.394043, 39.393326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005466, 0.732836, 0.680384,
		0.220643, 0.664509, -0.713964,
		-0.975339, 0.146219, -0.165327,
		34.504375, 41.437908, 39.343727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080540, 42.046535, 39.651325>,  <35.187115, 41.335556, 39.459457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080540, 42.046535, 39.651325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721104, 41.872620, 39.674976>,  <34.505444, 41.768272, 39.689167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.721104, 41.872620, 39.674976>,  <35.080540, 42.046535, 39.651325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721104, 41.872620, 39.674976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229535, 0.580625, 0.781146,
		-0.373966, 0.688357, -0.621542,
		-0.898590, -0.434787, 0.059132,
		34.451527, 41.742184, 39.692715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547775, 42.606518, 39.685593>,  <35.080540, 42.046535, 39.651325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547775, 42.606518, 39.685593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385174, 42.279884, 39.849518>,  <34.287613, 42.083904, 39.947872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.385174, 42.279884, 39.849518>,  <34.547775, 42.606518, 39.685593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385174, 42.279884, 39.849518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354060, 0.554287, 0.753264,
		-0.842259, 0.161103, -0.514437,
		-0.406499, -0.816585, 0.409813,
		34.263226, 42.034908, 39.972462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830391, 42.815422, 39.823849>,  <34.547775, 42.606518, 39.685593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830391, 42.815422, 39.823849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918327, 42.490414, 40.039803>,  <33.971088, 42.295406, 40.169373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.918327, 42.490414, 40.039803>,  <33.830391, 42.815422, 39.823849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918327, 42.490414, 40.039803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296282, 0.471666, 0.830511,
		-0.929454, -0.342540, -0.137043,
		0.219845, -0.812525, 0.539880,
		33.984280, 42.246655, 40.201767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301346, 42.818985, 40.306381>,  <33.830391, 42.815422, 39.823849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301346, 42.818985, 40.306381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595730, 42.587570, 40.447041>,  <33.772362, 42.448723, 40.531437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.595730, 42.587570, 40.447041>,  <33.301346, 42.818985, 40.306381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595730, 42.587570, 40.447041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044302, 0.477139, 0.877710,
		-0.675573, -0.661540, 0.325526,
		0.735961, -0.578536, 0.351650,
		33.816517, 42.414009, 40.552536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063309, 42.568203, 40.972721>,  <33.301346, 42.818985, 40.306381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063309, 42.568203, 40.972721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462727, 42.546921, 40.976040>,  <33.702377, 42.534149, 40.978031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.462727, 42.546921, 40.976040>,  <33.063309, 42.568203, 40.972721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462727, 42.546921, 40.976040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015330, 0.428603, 0.903363,
		-0.051625, -0.901925, 0.428797,
		0.998549, -0.053209, 0.008300,
		33.762291, 42.530956, 40.978531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239765, 42.347225, 41.682526>,  <33.063309, 42.568203, 40.972721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239765, 42.347225, 41.682526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579674, 42.509594, 41.547993>,  <33.783619, 42.607014, 41.467274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.579674, 42.509594, 41.547993>,  <33.239765, 42.347225, 41.682526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579674, 42.509594, 41.547993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130978, 0.455424, 0.880587,
		0.510624, -0.792348, 0.333838,
		0.849769, 0.405923, -0.336331,
		33.834606, 42.631371, 41.447094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677837, 42.301373, 42.208607>,  <33.239765, 42.347225, 41.682526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677837, 42.301373, 42.208607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847965, 42.601322, 42.005905>,  <33.950043, 42.781292, 41.884285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.847965, 42.601322, 42.005905>,  <33.677837, 42.301373, 42.208607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847965, 42.601322, 42.005905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225577, 0.454419, 0.861753,
		0.876481, -0.480831, 0.024119,
		0.425318, 0.749870, -0.506754,
		33.975559, 42.826283, 41.853878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282291, 42.482849, 42.641399>,  <33.677837, 42.301373, 42.208607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282291, 42.482849, 42.641399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217758, 42.799103, 42.405136>,  <34.179039, 42.988853, 42.263378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217758, 42.799103, 42.405136>,  <34.282291, 42.482849, 42.641399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217758, 42.799103, 42.405136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306741, 0.609026, 0.731435,
		0.938020, -0.063177, -0.340773,
		-0.161330, 0.790630, -0.590658,
		34.169361, 43.036293, 42.227940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912697, 42.933811, 42.543167>,  <34.282291, 42.482849, 42.641399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912697, 42.933811, 42.543167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592033, 43.168282, 42.496258>,  <34.399635, 43.308964, 42.468113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.592033, 43.168282, 42.496258>,  <34.912697, 42.933811, 42.543167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592033, 43.168282, 42.496258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385678, 0.657045, 0.647722,
		0.456731, 0.474019, -0.752797,
		-0.801654, 0.586172, -0.117274,
		34.351536, 43.344131, 42.461075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221584, 43.480427, 42.669044>,  <34.912697, 42.933811, 42.543167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221584, 43.480427, 42.669044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840183, 43.598946, 42.691097>,  <34.611343, 43.670055, 42.704330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840183, 43.598946, 42.691097>,  <35.221584, 43.480427, 42.669044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840183, 43.598946, 42.691097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228919, 0.593043, 0.771943,
		0.196028, 0.748671, -0.633297,
		-0.953504, 0.296296, 0.055132,
		34.554131, 43.687836, 42.707638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290455, 44.212566, 42.739197>,  <35.221584, 43.480427, 42.669044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290455, 44.212566, 42.739197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927700, 44.112194, 42.874603>,  <34.710049, 44.051971, 42.955849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927700, 44.112194, 42.874603>,  <35.290455, 44.212566, 42.739197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927700, 44.112194, 42.874603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126973, 0.603284, 0.787354,
		-0.401795, 0.757021, -0.515247,
		-0.906884, -0.250933, 0.338518,
		34.655636, 44.036915, 42.976158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907452, 44.721622, 42.512577>,  <35.290455, 44.212566, 42.739197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907452, 44.721622, 42.512577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.233490, 44.622543, 42.722057>,  <36.429111, 44.563095, 42.847748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.233490, 44.622543, 42.722057>,  <35.907452, 44.721622, 42.512577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233490, 44.622543, 42.722057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273217, -0.632786, -0.724524,
		0.510852, 0.733642, -0.448107,
		0.815097, -0.247694, 0.523704,
		36.478020, 44.548237, 42.879169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413517, 44.783802, 42.038788>,  <35.907452, 44.721622, 42.512577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413517, 44.783802, 42.038788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545876, 44.536369, 42.323845>,  <36.625290, 44.387909, 42.494881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545876, 44.536369, 42.323845>,  <36.413517, 44.783802, 42.038788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545876, 44.536369, 42.323845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443885, -0.564393, -0.696008,
		0.832750, 0.546639, 0.087823,
		0.330898, -0.618584, 0.712643,
		36.645145, 44.350796, 42.537640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060127, 44.626053, 41.864826>,  <36.413517, 44.783802, 42.038788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060127, 44.626053, 41.864826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970791, 44.335907, 42.125278>,  <36.917191, 44.161819, 42.281551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970791, 44.335907, 42.125278>,  <37.060127, 44.626053, 41.864826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970791, 44.335907, 42.125278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467760, -0.665817, -0.581281,
		0.855173, 0.174749, 0.487998,
		-0.223339, -0.725362, 0.651129,
		36.903790, 44.118298, 42.320618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691780, 44.305420, 41.880543>,  <37.060127, 44.626053, 41.864826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691780, 44.305420, 41.880543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428913, 44.037792, 42.019386>,  <37.271194, 43.877216, 42.102692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428913, 44.037792, 42.019386>,  <37.691780, 44.305420, 41.880543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428913, 44.037792, 42.019386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497717, -0.731027, -0.466772,
		0.566050, -0.133982, 0.813410,
		-0.657164, -0.669065, 0.347113,
		37.231766, 43.837074, 42.123520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125076, 43.673290, 42.114357>,  <37.691780, 44.305420, 41.880543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125076, 43.673290, 42.114357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749409, 43.547501, 42.059120>,  <37.524010, 43.472027, 42.025978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.749409, 43.547501, 42.059120>,  <38.125076, 43.673290, 42.114357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749409, 43.547501, 42.059120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334218, -0.744104, -0.578453,
		0.079152, -0.589418, 0.803941,
		-0.939166, -0.314477, -0.138096,
		37.467659, 43.453156, 42.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232029, 42.935139, 42.231693>,  <38.125076, 43.673290, 42.114357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232029, 42.935139, 42.231693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890396, 43.002235, 42.034756>,  <37.685417, 43.042496, 41.916592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890396, 43.002235, 42.034756>,  <38.232029, 42.935139, 42.231693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890396, 43.002235, 42.034756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291501, -0.629579, -0.720179,
		-0.430775, -0.758612, 0.488816,
		-0.854084, 0.167745, -0.492343,
		37.634171, 43.052559, 41.887054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962276, 42.331295, 42.008423>,  <38.232029, 42.935139, 42.231693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962276, 42.331295, 42.008423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781227, 42.559685, 41.734451>,  <37.672600, 42.696716, 41.570068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.781227, 42.559685, 41.734451>,  <37.962276, 42.331295, 42.008423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781227, 42.559685, 41.734451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191040, -0.688185, -0.699932,
		-0.870999, -0.447651, 0.202407,
		-0.452619, 0.570973, -0.684928,
		37.645443, 42.730976, 41.528973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463200, 41.870262, 41.656544>,  <37.962276, 42.331295, 42.008423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463200, 41.870262, 41.656544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526344, 42.182175, 41.414215>,  <37.564232, 42.369324, 41.268818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.526344, 42.182175, 41.414215>,  <37.463200, 41.870262, 41.656544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526344, 42.182175, 41.414215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114420, -0.623822, -0.773146,
		-0.980809, 0.052733, -0.187702,
		0.157863, 0.779785, -0.605817,
		37.573704, 42.416111, 41.232471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258137, 41.585503, 41.116016>,  <37.463200, 41.870262, 41.656544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258137, 41.585503, 41.116016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454876, 41.907005, 40.982109>,  <37.572918, 42.099907, 40.901764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.454876, 41.907005, 40.982109>,  <37.258137, 41.585503, 41.116016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454876, 41.907005, 40.982109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160383, -0.461543, -0.872500,
		-0.855783, 0.375446, -0.355917,
		0.491847, 0.803753, -0.334765,
		37.602428, 42.148132, 40.881680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908195, 41.894543, 40.502514>,  <37.258137, 41.585503, 41.116016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908195, 41.894543, 40.502514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280685, 42.036457, 40.469162>,  <37.504181, 42.121605, 40.449150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280685, 42.036457, 40.469162>,  <36.908195, 41.894543, 40.502514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280685, 42.036457, 40.469162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064257, -0.385037, -0.920662,
		-0.358739, 0.851984, -0.381352,
		0.931223, 0.354782, -0.083382,
		37.560051, 42.142891, 40.444149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035583, 42.219528, 39.833332>,  <36.908195, 41.894543, 40.502514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035583, 42.219528, 39.833332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410053, 42.142658, 39.951077>,  <37.634735, 42.096535, 40.021725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410053, 42.142658, 39.951077>,  <37.035583, 42.219528, 39.833332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410053, 42.142658, 39.951077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156684, -0.521474, -0.838758,
		0.314694, 0.831344, -0.458078,
		0.936172, -0.192179, 0.294363,
		37.690907, 42.085003, 40.039387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430725, 42.536957, 39.379261>,  <37.035583, 42.219528, 39.833332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430725, 42.536957, 39.379261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658066, 42.250214, 39.540794>,  <37.794472, 42.078167, 39.637714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658066, 42.250214, 39.540794>,  <37.430725, 42.536957, 39.379261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658066, 42.250214, 39.540794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137502, -0.401161, -0.905628,
		0.811212, 0.570248, -0.129433,
		0.568356, -0.716859, 0.403837,
		37.828571, 42.035156, 39.661945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938198, 42.482227, 38.941940>,  <37.430725, 42.536957, 39.379261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938198, 42.482227, 38.941940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965477, 42.118065, 39.105164>,  <37.981846, 41.899567, 39.203098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.965477, 42.118065, 39.105164>,  <37.938198, 42.482227, 38.941940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965477, 42.118065, 39.105164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235322, -0.382789, -0.893362,
		0.969522, 0.156948, 0.188134,
		0.068196, -0.910406, 0.408055,
		37.985935, 41.844944, 39.227581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609043, 42.215843, 38.721802>,  <37.938198, 42.482227, 38.941940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609043, 42.215843, 38.721802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.381279, 41.901680, 38.818890>,  <38.244621, 41.713184, 38.877144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.381279, 41.901680, 38.818890>,  <38.609043, 42.215843, 38.721802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381279, 41.901680, 38.818890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412040, -0.528176, -0.742465,
		0.711335, -0.322755, 0.624365,
		-0.569409, -0.785404, 0.242722,
		38.210457, 41.666058, 38.891705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.813034, 31.590164, 26.693014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121469, 31.823439, 26.795240>,  <27.306532, 31.963404, 26.856577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.121469, 31.823439, 26.795240>,  <26.813034, 31.590164, 26.693014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121469, 31.823439, 26.795240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572327, 0.458923, 0.679582,
		0.279036, -0.670287, 0.687644,
		0.771090, 0.583185, 0.255567,
		27.352797, 31.998394, 26.871910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949266, 31.502213, 27.548527>,  <26.813034, 31.590164, 26.693014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949266, 31.502213, 27.548527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082457, 31.844494, 27.390085>,  <27.162371, 32.049862, 27.295019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082457, 31.844494, 27.390085>,  <26.949266, 31.502213, 27.548527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082457, 31.844494, 27.390085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568129, 0.517330, 0.640000,
		0.752567, 0.011935, 0.658408,
		0.332976, 0.855703, -0.396106,
		27.182350, 32.101204, 27.271254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128958, 32.032532, 28.015755>,  <26.949266, 31.502213, 27.548527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128958, 32.032532, 28.015755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053440, 32.258060, 27.694143>,  <27.008129, 32.393379, 27.501177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053440, 32.258060, 27.694143>,  <27.128958, 32.032532, 28.015755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053440, 32.258060, 27.694143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578335, 0.597868, 0.555051,
		0.793653, 0.569788, 0.213205,
		-0.188793, 0.563822, -0.804029,
		26.996803, 32.427208, 27.452934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397020, 32.736454, 28.202909>,  <27.128958, 32.032532, 28.015755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397020, 32.736454, 28.202909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148439, 32.767929, 27.891113>,  <26.999290, 32.786816, 27.704037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.148439, 32.767929, 27.891113>,  <27.397020, 32.736454, 28.202909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148439, 32.767929, 27.891113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503437, 0.722227, 0.474278,
		0.600288, 0.687166, -0.409216,
		-0.621454, 0.078689, -0.779489,
		26.962004, 32.791534, 27.657267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433369, 33.391197, 27.994263>,  <27.397020, 32.736454, 28.202909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433369, 33.391197, 27.994263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079782, 33.237431, 27.887808>,  <26.867630, 33.145172, 27.823935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079782, 33.237431, 27.887808>,  <27.433369, 33.391197, 27.994263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079782, 33.237431, 27.887808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465808, 0.674999, 0.572188,
		-0.040313, 0.629765, -0.775739,
		-0.883967, -0.384412, -0.266138,
		26.814592, 33.122108, 27.807966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058475, 33.992706, 27.919638>,  <27.433369, 33.391197, 27.994263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058475, 33.992706, 27.919638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765776, 33.720718, 27.938335>,  <26.590157, 33.557526, 27.949554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.765776, 33.720718, 27.938335>,  <27.058475, 33.992706, 27.919638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765776, 33.720718, 27.938335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576987, 0.654512, 0.488569,
		-0.362806, 0.330540, -0.871272,
		-0.731750, -0.679969, 0.046743,
		26.546251, 33.516727, 27.952358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458328, 34.407795, 27.820587>,  <27.058475, 33.992706, 27.919638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458328, 34.407795, 27.820587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.323185, 34.059368, 27.963186>,  <26.242098, 33.850311, 28.048746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.323185, 34.059368, 27.963186>,  <26.458328, 34.407795, 27.820587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323185, 34.059368, 27.963186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560451, 0.490492, 0.667317,
		-0.756138, 0.025660, -0.653908,
		-0.337860, -0.871068, 0.356498,
		26.221827, 33.798046, 28.070135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722916, 34.651783, 28.005709>,  <26.458328, 34.407795, 27.820587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722916, 34.651783, 28.005709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810549, 34.312290, 28.198233>,  <25.863129, 34.108597, 28.313747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.810549, 34.312290, 28.198233>,  <25.722916, 34.651783, 28.005709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810549, 34.312290, 28.198233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251319, 0.427563, 0.868348,
		-0.942784, -0.311202, -0.119631,
		0.219081, -0.848730, 0.481311,
		25.876274, 34.057671, 28.342627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139496, 34.511742, 28.442909>,  <25.722916, 34.651783, 28.005709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139496, 34.511742, 28.442909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.450968, 34.320251, 28.605133>,  <25.637850, 34.205357, 28.702467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.450968, 34.320251, 28.605133>,  <25.139496, 34.511742, 28.442909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450968, 34.320251, 28.605133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303773, 0.277918, 0.911309,
		-0.548983, -0.832814, 0.070984,
		0.778679, -0.478730, 0.405559,
		25.684572, 34.176632, 28.726801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912401, 34.157101, 29.032124>,  <25.139496, 34.511742, 28.442909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912401, 34.157101, 29.032124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304943, 34.191719, 29.100773>,  <25.540468, 34.212490, 29.141962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.304943, 34.191719, 29.100773>,  <24.912401, 34.157101, 29.032124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304943, 34.191719, 29.100773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180728, 0.111474, 0.977195,
		0.065430, -0.989993, 0.125034,
		0.981354, 0.086535, 0.171626,
		25.599350, 34.217682, 29.152260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997570, 33.887955, 29.699476>,  <24.912401, 34.157101, 29.032124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997570, 33.887955, 29.699476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.350838, 34.072914, 29.667976>,  <25.562798, 34.183891, 29.649076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.350838, 34.072914, 29.667976>,  <24.997570, 33.887955, 29.699476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350838, 34.072914, 29.667976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040148, 0.241796, 0.969496,
		0.467335, -0.853067, 0.232111,
		0.883168, 0.462398, -0.078751,
		25.615788, 34.211632, 29.644352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356421, 33.743950, 30.299997>,  <24.997570, 33.887955, 29.699476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356421, 33.743950, 30.299997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526134, 34.079170, 30.162796>,  <25.627964, 34.280304, 30.080475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.526134, 34.079170, 30.162796>,  <25.356421, 33.743950, 30.299997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526134, 34.079170, 30.162796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006050, 0.381403, 0.924389,
		0.905508, -0.390130, 0.166895,
		0.424286, 0.838052, -0.343003,
		25.653419, 34.330585, 30.059895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850836, 33.884140, 30.801987>,  <25.356421, 33.743950, 30.299997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850836, 33.884140, 30.801987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.780558, 34.212482, 30.584612>,  <25.738390, 34.409489, 30.454187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.780558, 34.212482, 30.584612>,  <25.850836, 33.884140, 30.801987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780558, 34.212482, 30.584612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001817, 0.551753, 0.834006,
		0.984443, 0.147519, -0.095450,
		-0.175696, 0.820857, -0.543437,
		25.727848, 34.458740, 30.421581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239552, 34.375328, 31.136753>,  <25.850836, 33.884140, 30.801987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239552, 34.375328, 31.136753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977163, 34.586796, 30.921270>,  <25.819731, 34.713676, 30.791981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977163, 34.586796, 30.921270>,  <26.239552, 34.375328, 31.136753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977163, 34.586796, 30.921270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307918, 0.464192, 0.830489,
		0.689122, 0.710654, -0.141708,
		-0.655970, 0.528674, -0.538709,
		25.780373, 34.745399, 30.759657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318779, 35.039261, 31.346884>,  <26.239552, 34.375328, 31.136753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318779, 35.039261, 31.346884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953373, 35.048016, 31.184399>,  <25.734129, 35.053268, 31.086908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.953373, 35.048016, 31.184399>,  <26.318779, 35.039261, 31.346884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953373, 35.048016, 31.184399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373590, 0.350037, 0.859013,
		0.160987, 0.936480, -0.311589,
		-0.913517, 0.021884, -0.406212,
		25.679317, 35.054581, 31.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030750, 35.617683, 31.618422>,  <26.318779, 35.039261, 31.346884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030750, 35.617683, 31.618422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722620, 35.390259, 31.502951>,  <25.537741, 35.253803, 31.433668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722620, 35.390259, 31.502951>,  <26.030750, 35.617683, 31.618422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722620, 35.390259, 31.502951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418874, 0.109862, 0.901374,
		-0.480770, 0.815273, -0.322784,
		-0.770328, -0.568559, -0.288678,
		25.491522, 35.219692, 31.416348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349953, 36.032440, 31.749920>,  <26.030750, 35.617683, 31.618422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349953, 36.032440, 31.749920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.279667, 35.639088, 31.731628>,  <25.237495, 35.403076, 31.720654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.279667, 35.639088, 31.731628>,  <25.349953, 36.032440, 31.749920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.279667, 35.639088, 31.731628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537495, 0.056918, 0.841344,
		-0.824757, 0.172416, -0.538563,
		-0.175715, -0.983379, -0.045729,
		25.226952, 35.344074, 31.717909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611826, 35.992290, 31.972414>,  <25.349953, 36.032440, 31.749920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611826, 35.992290, 31.972414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.756496, 35.622589, 32.021320>,  <24.843298, 35.400768, 32.050663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.756496, 35.622589, 32.021320>,  <24.611826, 35.992290, 31.972414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756496, 35.622589, 32.021320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593491, -0.127111, 0.794740,
		-0.718999, -0.360001, -0.594508,
		0.361676, -0.924252, 0.122265,
		24.865000, 35.345314, 32.057999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086926, 35.647232, 32.193245>,  <24.611826, 35.992290, 31.972414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086926, 35.647232, 32.193245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.395744, 35.406849, 32.275982>,  <24.581036, 35.262619, 32.325623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.395744, 35.406849, 32.275982>,  <24.086926, 35.647232, 32.193245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.395744, 35.406849, 32.275982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388515, -0.188694, 0.901915,
		-0.502987, -0.776684, -0.379164,
		0.772050, -0.600963, 0.206843,
		24.627359, 35.226559, 32.338036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847748, 35.045662, 32.576363>,  <24.086926, 35.647232, 32.193245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847748, 35.045662, 32.576363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.237598, 35.036091, 32.665382>,  <24.471510, 35.030350, 32.718792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.237598, 35.036091, 32.665382>,  <23.847748, 35.045662, 32.576363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237598, 35.036091, 32.665382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213162, -0.402510, 0.890251,
		0.068277, -0.915103, -0.397398,
		0.974628, -0.023926, 0.222547,
		24.529987, 35.028912, 32.732147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999828, 34.374756, 33.032089>,  <23.847748, 35.045662, 32.576363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999828, 34.374756, 33.032089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.308054, 34.615253, 33.116688>,  <24.492990, 34.759552, 33.167446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.308054, 34.615253, 33.116688>,  <23.999828, 34.374756, 33.032089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.308054, 34.615253, 33.116688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041149, -0.378070, 0.924862,
		0.636031, -0.703964, -0.316068,
		0.770566, 0.601247, 0.211497,
		24.539225, 34.795628, 33.180138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.464685, 33.961067, 33.566910>,  <23.999828, 34.374756, 33.032089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.464685, 33.961067, 33.566910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.529009, 34.355034, 33.592449>,  <24.567604, 34.591415, 33.607773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.529009, 34.355034, 33.592449>,  <24.464685, 33.961067, 33.566910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.529009, 34.355034, 33.592449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034368, -0.070241, 0.996938,
		0.986387, -0.158124, -0.045145,
		0.160811, 0.984918, 0.063850,
		24.577251, 34.650509, 33.611603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053490, 34.062866, 33.998589>,  <24.464685, 33.961067, 33.566910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053490, 34.062866, 33.998589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805162, 34.376396, 34.004318>,  <24.656166, 34.564514, 34.007755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.805162, 34.376396, 34.004318>,  <25.053490, 34.062866, 33.998589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805162, 34.376396, 34.004318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284902, -0.242599, 0.927349,
		0.730352, 0.571636, 0.373923,
		-0.620820, 0.783822, 0.014322,
		24.618916, 34.611542, 34.008614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788769, 34.286518, 33.717457>,  <25.053490, 34.062866, 33.998589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788769, 34.286518, 33.717457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110828, 34.220211, 33.945232>,  <26.304064, 34.180428, 34.081898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110828, 34.220211, 33.945232>,  <25.788769, 34.286518, 33.717457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110828, 34.220211, 33.945232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545911, 0.582367, -0.602354,
		-0.231771, 0.795846, 0.559385,
		0.805148, -0.165766, 0.569437,
		26.352373, 34.170483, 34.116062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.108881, 34.913860, 33.732651>,  <25.788769, 34.286518, 33.717457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.108881, 34.913860, 33.732651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388567, 34.641022, 33.818298>,  <26.556377, 34.477318, 33.869686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.388567, 34.641022, 33.818298>,  <26.108881, 34.913860, 33.732651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388567, 34.641022, 33.818298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669337, 0.519363, -0.531272,
		0.251174, 0.514789, 0.819698,
		0.699213, -0.682096, 0.214117,
		26.598331, 34.436394, 33.882534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847250, 35.181576, 33.805580>,  <26.108881, 34.913860, 33.732651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847250, 35.181576, 33.805580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926600, 34.796215, 33.733467>,  <26.974209, 34.564999, 33.690201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926600, 34.796215, 33.733467>,  <26.847250, 35.181576, 33.805580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926600, 34.796215, 33.733467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603418, 0.264990, -0.752108,
		0.772356, 0.040415, 0.633903,
		0.198374, -0.963404, -0.180279,
		26.986113, 34.507195, 33.679382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603724, 35.214813, 33.514870>,  <26.847250, 35.181576, 33.805580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603724, 35.214813, 33.514870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443338, 34.852093, 33.462814>,  <27.347107, 34.634460, 33.431580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443338, 34.852093, 33.462814>,  <27.603724, 35.214813, 33.514870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443338, 34.852093, 33.462814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579509, -0.141045, -0.802668,
		0.709506, -0.397257, 0.582054,
		-0.400961, -0.906804, -0.130142,
		27.323050, 34.580051, 33.423771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141397, 34.714981, 33.317364>,  <27.603724, 35.214813, 33.514870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141397, 34.714981, 33.317364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801588, 34.554909, 33.179863>,  <27.597702, 34.458866, 33.097363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.801588, 34.554909, 33.179863>,  <28.141397, 34.714981, 33.317364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801588, 34.554909, 33.179863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442547, -0.185883, -0.877268,
		0.287169, -0.897386, 0.335011,
		-0.849521, -0.400182, -0.343756,
		27.546732, 34.434853, 33.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366791, 34.071117, 32.999828>,  <28.141397, 34.714981, 33.317364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366791, 34.071117, 32.999828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015097, 34.165581, 32.834335>,  <27.804081, 34.222260, 32.735039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015097, 34.165581, 32.834335>,  <28.366791, 34.071117, 32.999828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015097, 34.165581, 32.834335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341088, -0.294220, -0.892801,
		-0.332575, -0.926100, 0.178135,
		-0.879234, 0.236164, -0.413732,
		27.751326, 34.236427, 32.710217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.290562, 33.596855, 32.464081>,  <28.366791, 34.071117, 32.999828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.290562, 33.596855, 32.464081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023144, 33.875263, 32.359318>,  <27.862692, 34.042309, 32.296459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023144, 33.875263, 32.359318>,  <28.290562, 33.596855, 32.464081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023144, 33.875263, 32.359318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181978, -0.188364, -0.965092,
		-0.721062, -0.692870, -0.000732,
		-0.668546, 0.696024, -0.261909,
		27.822580, 34.084072, 32.280746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868181, 33.397533, 31.918612>,  <28.290562, 33.596855, 32.464081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868181, 33.397533, 31.918612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846378, 33.794289, 31.872681>,  <27.833296, 34.032341, 31.845121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.846378, 33.794289, 31.872681>,  <27.868181, 33.397533, 31.918612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846378, 33.794289, 31.872681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107312, -0.108514, -0.988286,
		-0.992730, -0.066192, -0.100527,
		-0.054508, 0.991889, -0.114828,
		27.830027, 34.091854, 31.838232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549070, 33.447884, 31.250412>,  <27.868181, 33.397533, 31.918612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549070, 33.447884, 31.250412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728945, 33.795498, 31.332924>,  <27.836870, 34.004066, 31.382431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728945, 33.795498, 31.332924>,  <27.549070, 33.447884, 31.250412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728945, 33.795498, 31.332924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234877, 0.107765, -0.966033,
		-0.861750, 0.482864, -0.155656,
		0.449688, 0.869039, 0.206280,
		27.863852, 34.056210, 31.394808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557173, 33.867413, 30.651413>,  <27.549070, 33.447884, 31.250412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557173, 33.867413, 30.651413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840734, 34.032715, 30.880035>,  <28.010872, 34.131897, 31.017208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840734, 34.032715, 30.880035>,  <27.557173, 33.867413, 30.651413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840734, 34.032715, 30.880035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476170, 0.317384, -0.820079,
		-0.520307, 0.853513, 0.028213,
		0.708902, 0.413258, 0.571555,
		28.053406, 34.156693, 31.051502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597891, 34.611347, 30.482725>,  <27.557173, 33.867413, 30.651413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597891, 34.611347, 30.482725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948950, 34.493221, 30.633734>,  <28.159586, 34.422348, 30.724339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.948950, 34.493221, 30.633734>,  <27.597891, 34.611347, 30.482725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948950, 34.493221, 30.633734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437001, 0.169482, -0.883349,
		0.196881, 0.940248, 0.277797,
		0.877649, -0.295312, 0.377522,
		28.212244, 34.404629, 30.746990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043673, 35.082455, 30.134329>,  <27.597891, 34.611347, 30.482725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043673, 35.082455, 30.134329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255646, 34.770180, 30.266813>,  <28.382830, 34.582817, 30.346304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.255646, 34.770180, 30.266813>,  <28.043673, 35.082455, 30.134329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255646, 34.770180, 30.266813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404938, -0.110215, -0.907677,
		0.745115, 0.615128, 0.257723,
		0.529933, -0.780685, 0.331211,
		28.414625, 34.535973, 30.366177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673927, 35.255131, 29.844267>,  <28.043673, 35.082455, 30.134329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673927, 35.255131, 29.844267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711708, 34.883316, 29.986834>,  <28.734377, 34.660225, 30.072374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711708, 34.883316, 29.986834>,  <28.673927, 35.255131, 29.844267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711708, 34.883316, 29.986834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541853, -0.252338, -0.801698,
		0.835149, 0.268849, 0.479840,
		0.094453, -0.929541, 0.356416,
		28.740044, 34.604454, 30.093758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419609, 35.061554, 29.896404>,  <28.673927, 35.255131, 29.844267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419609, 35.061554, 29.896404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187014, 34.738037, 29.861252>,  <29.047457, 34.543926, 29.840160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.187014, 34.738037, 29.861252>,  <29.419609, 35.061554, 29.896404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187014, 34.738037, 29.861252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497546, -0.268078, -0.824974,
		0.643674, -0.523439, 0.558296,
		-0.581491, -0.808793, -0.087880,
		29.012566, 34.495399, 29.834888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643448, 34.754429, 29.343616>,  <29.419609, 35.061554, 29.896404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643448, 34.754429, 29.343616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358292, 34.480690, 29.404873>,  <29.187197, 34.316448, 29.441628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358292, 34.480690, 29.404873>,  <29.643448, 34.754429, 29.343616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358292, 34.480690, 29.404873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259131, -0.459987, -0.849272,
		0.651640, -0.565757, 0.505257,
		-0.712893, -0.684348, 0.153141,
		29.144424, 34.275387, 29.450815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019981, 34.139603, 29.453255>,  <29.643448, 34.754429, 29.343616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019981, 34.139603, 29.453255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650112, 34.088409, 29.309811>,  <29.428190, 34.057693, 29.223745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650112, 34.088409, 29.309811>,  <30.019981, 34.139603, 29.453255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650112, 34.088409, 29.309811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380687, -0.329479, -0.864015,
		-0.007575, -0.935448, 0.353382,
		-0.924673, -0.127983, -0.358609,
		29.372711, 34.050014, 29.202229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083529, 33.402374, 29.224974>,  <30.019981, 34.139603, 29.453255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083529, 33.402374, 29.224974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779613, 33.580025, 29.035036>,  <29.597265, 33.686615, 28.921074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779613, 33.580025, 29.035036>,  <30.083529, 33.402374, 29.224974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779613, 33.580025, 29.035036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287195, -0.425968, -0.857946,
		-0.583305, -0.788228, 0.196094,
		-0.759786, 0.444126, -0.474844,
		29.551678, 33.713264, 28.892582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801304, 32.882145, 28.767242>,  <30.083529, 33.402374, 29.224974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801304, 32.882145, 28.767242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661835, 33.228249, 28.623159>,  <29.578154, 33.435913, 28.536709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.661835, 33.228249, 28.623159>,  <29.801304, 32.882145, 28.767242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661835, 33.228249, 28.623159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311949, -0.255277, -0.915162,
		-0.883807, -0.431459, -0.180909,
		-0.348673, 0.865261, -0.360209,
		29.557234, 33.487827, 28.515097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581808, 32.672806, 28.141075>,  <29.801304, 32.882145, 28.767242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581808, 32.672806, 28.141075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635357, 33.069202, 28.139965>,  <29.667486, 33.307041, 28.139299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635357, 33.069202, 28.139965>,  <29.581808, 32.672806, 28.141075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635357, 33.069202, 28.139965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215886, -0.031895, -0.975897,
		-0.967198, 0.130045, -0.218212,
		0.133870, 0.990995, -0.002774,
		29.675518, 33.366501, 28.139133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.105789, 42.603745, 45.075863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774014, 42.454483, 45.242130>,  <38.574947, 42.364925, 45.341892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774014, 42.454483, 45.242130>,  <39.105789, 42.603745, 45.075863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774014, 42.454483, 45.242130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130999, 0.853326, 0.504653,
		-0.543014, 0.364128, -0.756668,
		-0.829442, -0.373156, 0.415668,
		38.525181, 42.342537, 45.366829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580097, 43.183289, 45.025635>,  <39.105789, 42.603745, 45.075863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580097, 43.183289, 45.025635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430603, 42.946087, 45.310917>,  <38.340908, 42.803764, 45.482086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430603, 42.946087, 45.310917>,  <38.580097, 43.183289, 45.025635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430603, 42.946087, 45.310917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127038, 0.794407, 0.593952,
		-0.918795, 0.131376, -0.372232,
		-0.373735, -0.593008, 0.713207,
		38.318481, 42.768185, 45.524879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948635, 43.469471, 45.410873>,  <38.580097, 43.183289, 45.025635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948635, 43.469471, 45.410873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091599, 43.218334, 45.687447>,  <38.177376, 43.067654, 45.853390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091599, 43.218334, 45.687447>,  <37.948635, 43.469471, 45.410873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091599, 43.218334, 45.687447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241105, 0.653209, 0.717765,
		-0.902288, -0.423246, 0.082090,
		0.357413, -0.627838, 0.691429,
		38.198822, 43.029984, 45.894875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380722, 43.345638, 45.858849>,  <37.948635, 43.469471, 45.410873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380722, 43.345638, 45.858849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720253, 43.259315, 46.051895>,  <37.923973, 43.207523, 46.167721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720253, 43.259315, 46.051895>,  <37.380722, 43.345638, 45.858849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720253, 43.259315, 46.051895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317662, 0.521512, 0.791907,
		-0.422585, -0.825502, 0.374123,
		0.848830, -0.215803, 0.482614,
		37.974903, 43.194576, 46.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111912, 43.166676, 46.534901>,  <37.380722, 43.345638, 45.858849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111912, 43.166676, 46.534901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504116, 43.242718, 46.554756>,  <37.739437, 43.288342, 46.566669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504116, 43.242718, 46.554756>,  <37.111912, 43.166676, 46.534901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504116, 43.242718, 46.554756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150769, 0.565968, 0.810524,
		0.125989, -0.802210, 0.583598,
		0.980508, 0.190105, 0.049643,
		37.798267, 43.299747, 46.569649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244957, 43.076187, 47.257008>,  <37.111912, 43.166676, 46.534901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244957, 43.076187, 47.257008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552525, 43.302116, 47.137180>,  <37.737064, 43.437675, 47.065285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552525, 43.302116, 47.137180>,  <37.244957, 43.076187, 47.257008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552525, 43.302116, 47.137180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176147, 0.637564, 0.749989,
		0.614603, -0.523913, 0.589727,
		0.768918, 0.564824, -0.299563,
		37.783199, 43.471565, 47.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621601, 43.228416, 47.835888>,  <37.244957, 43.076187, 47.257008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621601, 43.228416, 47.835888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762791, 43.531754, 47.616684>,  <37.847504, 43.713757, 47.485161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762791, 43.531754, 47.616684>,  <37.621601, 43.228416, 47.835888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762791, 43.531754, 47.616684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075554, 0.606904, 0.791176,
		0.932577, -0.237861, 0.271517,
		0.352975, 0.758347, -0.548013,
		37.868683, 43.759258, 47.452282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994823, 43.543781, 48.317909>,  <37.621601, 43.228416, 47.835888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994823, 43.543781, 48.317909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941505, 43.819786, 48.033340>,  <37.909515, 43.985390, 47.862598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941505, 43.819786, 48.033340>,  <37.994823, 43.543781, 48.317909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941505, 43.819786, 48.033340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069564, 0.709539, 0.701224,
		0.988632, 0.142959, -0.046578,
		-0.133295, 0.690012, -0.711418,
		37.901516, 44.026791, 47.819916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334732, 44.144814, 48.511868>,  <37.994823, 43.543781, 48.317909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334732, 44.144814, 48.511868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067760, 44.280350, 48.246620>,  <37.907578, 44.361671, 48.087471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.067760, 44.280350, 48.246620>,  <38.334732, 44.144814, 48.511868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067760, 44.280350, 48.246620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275242, 0.715177, 0.642467,
		0.691939, 0.611319, -0.384068,
		-0.667429, 0.338837, -0.663120,
		37.867531, 44.382000, 48.047684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305187, 44.847542, 48.464649>,  <38.334732, 44.144814, 48.511868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305187, 44.847542, 48.464649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934757, 44.732548, 48.366890>,  <37.712498, 44.663551, 48.308235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934757, 44.732548, 48.366890>,  <38.305187, 44.847542, 48.464649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934757, 44.732548, 48.366890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376935, 0.675187, 0.634068,
		-0.017269, 0.679320, -0.733639,
		-0.926079, -0.287484, -0.244399,
		37.656933, 44.646301, 48.293571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954456, 45.473328, 48.664249>,  <38.305187, 44.847542, 48.464649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954456, 45.473328, 48.664249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645443, 45.232037, 48.584938>,  <37.460037, 45.087261, 48.537354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645443, 45.232037, 48.584938>,  <37.954456, 45.473328, 48.664249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645443, 45.232037, 48.584938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595472, 0.579817, 0.556080,
		-0.220481, 0.547656, -0.807132,
		-0.772529, -0.603230, -0.198275,
		37.413685, 45.051067, 48.525455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421310, 45.903141, 48.380993>,  <37.954456, 45.473328, 48.664249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421310, 45.903141, 48.380993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230129, 45.575974, 48.509102>,  <37.115421, 45.379673, 48.585968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.230129, 45.575974, 48.509102>,  <37.421310, 45.903141, 48.380993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230129, 45.575974, 48.509102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711796, 0.574289, 0.404399,
		-0.514695, -0.034687, -0.856671,
		-0.477950, -0.817917, 0.320274,
		37.086746, 45.330597, 48.605183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691185, 45.873409, 48.117134>,  <37.421310, 45.903141, 48.380993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691185, 45.873409, 48.117134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735756, 45.689590, 48.469589>,  <36.762501, 45.579300, 48.681061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735756, 45.689590, 48.469589>,  <36.691185, 45.873409, 48.117134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735756, 45.689590, 48.469589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635702, 0.648557, 0.418637,
		-0.763850, -0.606789, -0.219865,
		0.111430, -0.459544, 0.881137,
		36.769184, 45.551727, 48.733929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513500, 46.439491, 48.505886>,  <36.691185, 45.873409, 48.117134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513500, 46.439491, 48.505886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154312, 46.613846, 48.530045>,  <35.938801, 46.718460, 48.544540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.154312, 46.613846, 48.530045>,  <36.513500, 46.439491, 48.505886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154312, 46.613846, 48.530045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220985, -0.327991, -0.918470,
		-0.380541, -0.838107, 0.390851,
		-0.897973, 0.435888, 0.060395,
		35.884922, 46.744614, 48.548164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766544, 46.003777, 48.413029>,  <36.513500, 46.439491, 48.505886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766544, 46.003777, 48.413029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833038, 46.375610, 48.281429>,  <35.872936, 46.598709, 48.202469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833038, 46.375610, 48.281429>,  <35.766544, 46.003777, 48.413029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833038, 46.375610, 48.281429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200726, -0.294758, -0.934252,
		-0.965440, 0.221344, 0.137592,
		0.166235, 0.929583, -0.329001,
		35.882908, 46.654484, 48.182728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390656, 46.006886, 47.825008>,  <35.766544, 46.003777, 48.413029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390656, 46.006886, 47.825008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614693, 46.331081, 47.756424>,  <35.749115, 46.525600, 47.715275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614693, 46.331081, 47.756424>,  <35.390656, 46.006886, 47.825008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614693, 46.331081, 47.756424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042253, -0.234648, -0.971162,
		-0.827353, 0.536694, -0.165670,
		0.560091, 0.810494, -0.171459,
		35.782719, 46.574230, 47.704987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069088, 46.367558, 47.185482>,  <35.390656, 46.006886, 47.825008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069088, 46.367558, 47.185482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446541, 46.493298, 47.226944>,  <35.673012, 46.568741, 47.251823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446541, 46.493298, 47.226944>,  <35.069088, 46.367558, 47.185482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446541, 46.493298, 47.226944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122426, -0.040507, -0.991651,
		-0.307523, 0.948444, -0.076708,
		0.943632, 0.314346, 0.103658,
		35.729630, 46.587601, 47.258041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129841, 46.899406, 46.732269>,  <35.069088, 46.367558, 47.185482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129841, 46.899406, 46.732269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505409, 46.788658, 46.814018>,  <35.730751, 46.722210, 46.863068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505409, 46.788658, 46.814018>,  <35.129841, 46.899406, 46.732269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505409, 46.788658, 46.814018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189059, -0.081211, -0.978602,
		0.287541, 0.957470, -0.023907,
		0.938923, -0.276869, 0.204369,
		35.787086, 46.705597, 46.875328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421490, 47.133312, 46.214474>,  <35.129841, 46.899406, 46.732269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421490, 47.133312, 46.214474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706852, 46.892105, 46.357258>,  <35.878067, 46.747379, 46.442928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.706852, 46.892105, 46.357258>,  <35.421490, 47.133312, 46.214474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706852, 46.892105, 46.357258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231041, -0.278507, -0.932230,
		0.661571, 0.747529, -0.059365,
		0.713403, -0.603021, 0.356962,
		35.920872, 46.711201, 46.464348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094700, 47.237164, 45.794106>,  <35.421490, 47.133312, 46.214474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094700, 47.237164, 45.794106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105247, 46.873501, 45.960350>,  <36.111576, 46.655304, 46.060097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105247, 46.873501, 45.960350>,  <36.094700, 47.237164, 45.794106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105247, 46.873501, 45.960350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106672, -0.410823, -0.905453,
		0.993945, 0.068209, 0.086150,
		0.026368, -0.909160, 0.415611,
		36.113159, 46.600754, 46.085033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763710, 46.967571, 45.602306>,  <36.094700, 47.237164, 45.794106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763710, 46.967571, 45.602306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547268, 46.645061, 45.697906>,  <36.417404, 46.451553, 45.755268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547268, 46.645061, 45.697906>,  <36.763710, 46.967571, 45.602306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547268, 46.645061, 45.697906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271560, -0.436507, -0.857739,
		0.795902, -0.399224, 0.455149,
		-0.541106, -0.806276, 0.239004,
		36.384937, 46.403179, 45.769608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223106, 46.337067, 45.503853>,  <36.763710, 46.967571, 45.602306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223106, 46.337067, 45.503853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844631, 46.211227, 45.473515>,  <36.617546, 46.135723, 45.455311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.844631, 46.211227, 45.473515>,  <37.223106, 46.337067, 45.503853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844631, 46.211227, 45.473515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261024, -0.603403, -0.753506,
		0.191290, -0.732756, 0.653052,
		-0.946189, -0.314601, -0.075842,
		36.560776, 46.116848, 45.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222752, 45.576656, 45.402180>,  <37.223106, 46.337067, 45.503853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222752, 45.576656, 45.402180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858498, 45.670940, 45.266422>,  <36.639946, 45.727512, 45.184967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858498, 45.670940, 45.266422>,  <37.222752, 45.576656, 45.402180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858498, 45.670940, 45.266422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095919, -0.678334, -0.728465,
		-0.401928, -0.695919, 0.595105,
		-0.910634, 0.235709, -0.339393,
		36.585308, 45.741653, 45.164604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165981, 45.047173, 44.930210>,  <37.222752, 45.576656, 45.402180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165981, 45.047173, 44.930210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854645, 45.272690, 44.819706>,  <36.667843, 45.408001, 44.753403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854645, 45.272690, 44.819706>,  <37.165981, 45.047173, 44.930210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854645, 45.272690, 44.819706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071314, -0.516564, -0.853274,
		-0.623774, -0.644439, 0.442271,
		-0.778344, 0.563790, -0.276262,
		36.621140, 45.441826, 44.736828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551334, 44.649094, 44.808399>,  <37.165981, 45.047173, 44.930210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551334, 44.649094, 44.808399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495403, 44.987930, 44.603313>,  <36.461845, 45.191235, 44.480263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.495403, 44.987930, 44.603313>,  <36.551334, 44.649094, 44.808399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495403, 44.987930, 44.603313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149432, -0.529924, -0.834776,
		-0.978835, -0.040110, 0.200682,
		-0.139829, 0.847096, -0.512715,
		36.453453, 45.242058, 44.449497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068180, 44.457592, 44.439850>,  <36.551334, 44.649094, 44.808399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068180, 44.457592, 44.439850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188168, 44.788239, 44.249393>,  <36.260162, 44.986626, 44.135120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.188168, 44.788239, 44.249393>,  <36.068180, 44.457592, 44.439850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188168, 44.788239, 44.249393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015701, -0.494785, -0.868873,
		-0.953818, 0.268115, -0.135443,
		0.299973, 0.826621, -0.476145,
		36.278160, 45.036224, 44.106548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650890, 44.478191, 43.814678>,  <36.068180, 44.457592, 44.439850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650890, 44.478191, 43.814678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978596, 44.695034, 43.739922>,  <36.175220, 44.825138, 43.695068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.978596, 44.695034, 43.739922>,  <35.650890, 44.478191, 43.814678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978596, 44.695034, 43.739922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157361, -0.525968, -0.835820,
		-0.551400, 0.655348, -0.516214,
		0.819265, 0.542103, -0.186893,
		36.224377, 44.857666, 43.683853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593685, 44.703945, 43.162460>,  <35.650890, 44.478191, 43.814678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593685, 44.703945, 43.162460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987770, 44.708035, 43.230865>,  <36.224220, 44.710487, 43.271908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.987770, 44.708035, 43.230865>,  <35.593685, 44.703945, 43.162460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987770, 44.708035, 43.230865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160942, -0.397422, -0.903412,
		0.058729, 0.917579, -0.393192,
		0.985215, 0.010224, 0.171017,
		36.283333, 44.711102, 43.282169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812504, 44.846386, 43.054276>,  <35.593685, 44.703945, 43.162460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812504, 44.846386, 43.054276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640812, 44.529594, 43.227955>,  <34.537796, 44.339520, 43.332161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640812, 44.529594, 43.227955>,  <34.812504, 44.846386, 43.054276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640812, 44.529594, 43.227955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001590, 0.480068, 0.877230,
		-0.903193, 0.377225, -0.204800,
		-0.429231, -0.791983, 0.434194,
		34.512043, 44.292000, 43.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253677, 45.082321, 43.447128>,  <34.812504, 44.846386, 43.054276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253677, 45.082321, 43.447128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350445, 44.731861, 43.613903>,  <34.408504, 44.521587, 43.713970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350445, 44.731861, 43.613903>,  <34.253677, 45.082321, 43.447128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350445, 44.731861, 43.613903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047031, 0.439787, 0.896870,
		-0.969156, -0.197361, 0.147599,
		0.241919, -0.876148, 0.416940,
		34.423019, 44.469017, 43.738987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629181, 44.888218, 43.831741>,  <34.253677, 45.082321, 43.447128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629181, 44.888218, 43.831741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929787, 44.671001, 43.981590>,  <34.110149, 44.540672, 44.071499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.929787, 44.671001, 43.981590>,  <33.629181, 44.888218, 43.831741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929787, 44.671001, 43.981590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334062, 0.176424, 0.925893,
		-0.568887, -0.820965, -0.048824,
		0.751512, -0.543038, 0.374619,
		34.155239, 44.508091, 44.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358330, 44.546204, 44.396770>,  <33.629181, 44.888218, 43.831741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358330, 44.546204, 44.396770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753166, 44.532284, 44.459309>,  <33.990067, 44.523930, 44.496834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753166, 44.532284, 44.459309>,  <33.358330, 44.546204, 44.396770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753166, 44.532284, 44.459309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158341, -0.064736, 0.985260,
		-0.024166, -0.997295, -0.069410,
		0.987089, -0.034800, 0.156348,
		34.049294, 44.521843, 44.506214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402184, 44.071896, 44.922165>,  <33.358330, 44.546204, 44.396770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402184, 44.071896, 44.922165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736965, 44.290489, 44.910473>,  <33.937836, 44.421646, 44.903458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736965, 44.290489, 44.910473>,  <33.402184, 44.071896, 44.922165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736965, 44.290489, 44.910473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037867, -0.004543, 0.999273,
		0.545957, -0.837455, -0.024496,
		0.836957, 0.546488, -0.029232,
		33.988052, 44.454437, 44.901703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897236, 43.669205, 45.307865>,  <33.402184, 44.071896, 44.922165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897236, 43.669205, 45.307865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028728, 44.046913, 45.301018>,  <34.107624, 44.273537, 45.296909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.028728, 44.046913, 45.301018>,  <33.897236, 43.669205, 45.307865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028728, 44.046913, 45.301018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135381, -0.029175, 0.990364,
		0.934668, -0.327885, -0.137427,
		0.328735, 0.944267, -0.017121,
		34.127350, 44.330193, 45.295883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321053, 43.735565, 45.971111>,  <33.897236, 43.669205, 45.307865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321053, 43.735565, 45.971111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232712, 44.109230, 45.858986>,  <34.179707, 44.333427, 45.791710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232712, 44.109230, 45.858986>,  <34.321053, 43.735565, 45.971111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232712, 44.109230, 45.858986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128531, 0.312779, 0.941089,
		0.966802, 0.171811, -0.189146,
		-0.220850, 0.934157, -0.280312,
		34.166458, 44.389477, 45.774891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635540, 43.134998, 46.430782>,  <34.321053, 43.735565, 45.971111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635540, 43.134998, 46.430782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301502, 42.951035, 46.551514>,  <34.101082, 42.840656, 46.623955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301502, 42.951035, 46.551514>,  <34.635540, 43.134998, 46.430782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301502, 42.951035, 46.551514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042671, -0.492867, -0.869058,
		0.548455, -0.738621, 0.391964,
		-0.835090, -0.459914, 0.301833,
		34.050976, 42.813061, 46.642063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763920, 42.445839, 46.281052>,  <34.635540, 43.134998, 46.430782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763920, 42.445839, 46.281052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370266, 42.486385, 46.339302>,  <34.134075, 42.510715, 46.374252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370266, 42.486385, 46.339302>,  <34.763920, 42.445839, 46.281052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370266, 42.486385, 46.339302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177355, -0.586143, -0.790558,
		0.005219, -0.803841, 0.594821,
		-0.984133, 0.101368, 0.145624,
		34.075027, 42.516796, 46.382988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429420, 41.792759, 46.185982>,  <34.763920, 42.445839, 46.281052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429420, 41.792759, 46.185982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141682, 42.059956, 46.109745>,  <33.969036, 42.220272, 46.064003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141682, 42.059956, 46.109745>,  <34.429420, 41.792759, 46.185982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141682, 42.059956, 46.109745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215927, -0.475803, -0.852635,
		-0.660236, -0.572189, 0.486506,
		-0.719350, 0.667990, -0.190591,
		33.925877, 42.260353, 46.052567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981930, 41.409264, 45.931484>,  <34.429420, 41.792759, 46.185982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981930, 41.409264, 45.931484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844261, 41.769199, 45.824276>,  <33.761658, 41.985161, 45.759953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844261, 41.769199, 45.824276>,  <33.981930, 41.409264, 45.931484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844261, 41.769199, 45.824276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304103, -0.376906, -0.874908,
		-0.888294, -0.219615, 0.403365,
		-0.344174, 0.899839, -0.268017,
		33.741009, 42.039150, 45.743870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289558, 41.293869, 45.713150>,  <33.981930, 41.409264, 45.931484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289558, 41.293869, 45.713150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421329, 41.631672, 45.544254>,  <33.500393, 41.834354, 45.442917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421329, 41.631672, 45.544254>,  <33.289558, 41.293869, 45.713150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421329, 41.631672, 45.544254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315791, -0.322894, -0.892197,
		-0.889805, 0.427253, 0.160318,
		0.329428, 0.844508, -0.422236,
		33.520157, 41.885025, 45.417583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753716, 41.373428, 45.256237>,  <33.289558, 41.293869, 45.713150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753716, 41.373428, 45.256237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034565, 41.620422, 45.114395>,  <33.203075, 41.768620, 45.029289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034565, 41.620422, 45.114395>,  <32.753716, 41.373428, 45.256237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034565, 41.620422, 45.114395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314796, -0.177518, -0.932411,
		-0.638695, 0.766293, 0.069742,
		0.702120, 0.617481, -0.354606,
		33.245201, 41.805668, 45.008015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447304, 41.835579, 44.748466>,  <32.753716, 41.373428, 45.256237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447304, 41.835579, 44.748466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832706, 41.864967, 44.645504>,  <33.063950, 41.882603, 44.583725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832706, 41.864967, 44.645504>,  <32.447304, 41.835579, 44.748466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832706, 41.864967, 44.645504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214956, -0.360704, -0.907572,
		-0.159530, 0.929782, -0.331747,
		0.963506, 0.073474, -0.257405,
		33.121758, 41.887009, 44.568283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.203846, 42.360615, 49.929619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321381, 42.646664, 49.675922>,  <36.391903, 42.818291, 49.523705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.321381, 42.646664, 49.675922>,  <36.203846, 42.360615, 49.929619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321381, 42.646664, 49.675922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432413, -0.691205, -0.579013,
		-0.852454, -0.104118, -0.512330,
		0.293839, 0.715119, -0.634242,
		36.409531, 42.861198, 49.485649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979649, 42.356647, 49.259331>,  <36.203846, 42.360615, 49.929619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979649, 42.356647, 49.259331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309639, 42.574230, 49.197987>,  <36.507633, 42.704781, 49.161179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.309639, 42.574230, 49.197987>,  <35.979649, 42.356647, 49.259331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309639, 42.574230, 49.197987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337073, -0.691376, -0.639048,
		-0.453645, 0.475507, -0.753724,
		0.824978, 0.543960, -0.153359,
		36.557133, 42.737419, 49.151978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978271, 42.534416, 48.489841>,  <35.979649, 42.356647, 49.259331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978271, 42.534416, 48.489841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.336990, 42.561775, 48.664692>,  <36.552219, 42.578190, 48.769604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.336990, 42.561775, 48.664692>,  <35.978271, 42.534416, 48.489841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336990, 42.561775, 48.664692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373683, -0.646083, -0.665535,
		0.236896, 0.760196, -0.604965,
		0.896795, 0.068402, 0.437127,
		36.606030, 42.582294, 48.795830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466122, 42.593178, 47.957058>,  <35.978271, 42.534416, 48.489841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466122, 42.593178, 47.957058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.717579, 42.483639, 48.248211>,  <36.868454, 42.417915, 48.422901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.717579, 42.483639, 48.248211>,  <36.466122, 42.593178, 47.957058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717579, 42.483639, 48.248211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430634, -0.656788, -0.619019,
		0.647579, 0.702595, -0.294961,
		0.628646, -0.273843, 0.727883,
		36.906174, 42.401485, 48.466576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178623, 42.507851, 47.667816>,  <36.466122, 42.593178, 47.957058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178623, 42.507851, 47.667816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218628, 42.310246, 48.013290>,  <37.242630, 42.191685, 48.220573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.218628, 42.310246, 48.013290>,  <37.178623, 42.507851, 47.667816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218628, 42.310246, 48.013290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251423, -0.827319, -0.502323,
		0.962696, 0.267388, 0.041465,
		0.100011, -0.494010, 0.863685,
		37.248631, 42.162041, 48.272396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888103, 42.322739, 47.708225>,  <37.178623, 42.507851, 47.667816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888103, 42.322739, 47.708225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682983, 42.075741, 47.946804>,  <37.559914, 41.927544, 48.089951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.682983, 42.075741, 47.946804>,  <37.888103, 42.322739, 47.708225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682983, 42.075741, 47.946804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457618, -0.784418, -0.418657,
		0.726378, 0.058256, 0.684822,
		-0.512798, -0.617490, 0.596443,
		37.529144, 41.890495, 48.125736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381607, 41.667706, 47.810654>,  <37.888103, 42.322739, 47.708225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381607, 41.667706, 47.810654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003616, 41.560860, 47.886200>,  <37.776821, 41.496750, 47.931526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003616, 41.560860, 47.886200>,  <38.381607, 41.667706, 47.810654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003616, 41.560860, 47.886200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167033, -0.890353, -0.423522,
		0.281286, -0.368672, 0.885979,
		-0.944975, -0.267119, 0.188863,
		37.720123, 41.480724, 47.942860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446709, 40.994312, 48.072308>,  <38.381607, 41.667706, 47.810654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446709, 40.994312, 48.072308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053783, 41.035728, 48.009892>,  <37.818027, 41.060577, 47.972443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053783, 41.035728, 48.009892>,  <38.446709, 40.994312, 48.072308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053783, 41.035728, 48.009892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053428, -0.953559, -0.296428,
		-0.179485, -0.282848, 0.942222,
		-0.982309, 0.103545, -0.156038,
		37.759090, 41.066792, 47.963081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112480, 40.419846, 48.415741>,  <38.446709, 40.994312, 48.072308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112480, 40.419846, 48.415741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884193, 40.540550, 48.110268>,  <37.747223, 40.612972, 47.926983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.884193, 40.540550, 48.110268>,  <38.112480, 40.419846, 48.415741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884193, 40.540550, 48.110268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068041, -0.944207, -0.322248,
		-0.818322, -0.131951, 0.559408,
		-0.570718, 0.301765, -0.763688,
		37.712978, 40.631081, 47.881161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520561, 40.005066, 48.379242>,  <38.112480, 40.419846, 48.415741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520561, 40.005066, 48.379242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.484077, 40.180935, 48.021835>,  <37.462189, 40.286457, 47.807392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.484077, 40.180935, 48.021835>,  <37.520561, 40.005066, 48.379242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484077, 40.180935, 48.021835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309481, -0.865339, -0.394221,
		-0.946521, 0.240569, 0.214997,
		-0.091208, 0.439676, -0.893513,
		37.456715, 40.312840, 47.753780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851776, 39.774429, 48.145878>,  <37.520561, 40.005066, 48.379242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851776, 39.774429, 48.145878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084511, 39.875038, 47.836502>,  <37.224152, 39.935406, 47.650879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.084511, 39.875038, 47.836502>,  <36.851776, 39.774429, 48.145878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084511, 39.875038, 47.836502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330049, -0.796131, -0.507191,
		-0.743328, 0.550373, -0.380201,
		0.581834, 0.251524, -0.773437,
		37.259060, 39.950497, 47.604469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372051, 39.608303, 47.578671>,  <36.851776, 39.774429, 48.145878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372051, 39.608303, 47.578671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.739838, 39.606857, 47.421406>,  <36.960510, 39.605991, 47.327045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.739838, 39.606857, 47.421406>,  <36.372051, 39.608303, 47.578671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739838, 39.606857, 47.421406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273914, -0.723255, -0.633935,
		-0.282067, 0.690571, -0.665995,
		0.919461, -0.003613, -0.393164,
		37.015675, 39.605774, 47.303455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368259, 40.257286, 47.357483>,  <36.372051, 39.608303, 47.578671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368259, 40.257286, 47.357483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985630, 40.153313, 47.304729>,  <35.756050, 40.090927, 47.273079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.985630, 40.153313, 47.304729>,  <36.368259, 40.257286, 47.357483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985630, 40.153313, 47.304729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263097, 0.575238, 0.774521,
		-0.125462, 0.775587, -0.618648,
		-0.956577, -0.259937, -0.131884,
		35.698658, 40.075333, 47.265163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897270, 40.863300, 47.163769>,  <36.368259, 40.257286, 47.357483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897270, 40.863300, 47.163769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662834, 40.581074, 47.323101>,  <35.522171, 40.411736, 47.418701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662834, 40.581074, 47.323101>,  <35.897270, 40.863300, 47.163769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662834, 40.581074, 47.323101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287857, 0.640870, 0.711634,
		-0.757388, 0.302419, -0.578711,
		-0.586091, -0.705569, 0.398334,
		35.487007, 40.369404, 47.442600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260403, 41.253101, 47.232605>,  <35.897270, 40.863300, 47.163769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260403, 41.253101, 47.232605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.244843, 40.927296, 47.464142>,  <35.235504, 40.731812, 47.603065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.244843, 40.927296, 47.464142>,  <35.260403, 41.253101, 47.232605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244843, 40.927296, 47.464142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346013, 0.554423, 0.756895,
		-0.937423, -0.170839, -0.303401,
		-0.038905, -0.814512, 0.578841,
		35.233170, 40.682941, 47.637794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661079, 41.311005, 47.619949>,  <35.260403, 41.253101, 47.232605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661079, 41.311005, 47.619949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.822491, 41.011543, 47.830349>,  <34.919338, 40.831867, 47.956589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.822491, 41.011543, 47.830349>,  <34.661079, 41.311005, 47.619949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822491, 41.011543, 47.830349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394162, 0.376567, 0.838352,
		-0.825711, -0.545632, -0.143135,
		0.403531, -0.748655, 0.526003,
		34.943550, 40.786945, 47.988152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136749, 41.072182, 48.088516>,  <34.661079, 41.311005, 47.619949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136749, 41.072182, 48.088516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459736, 40.939423, 48.283588>,  <34.653530, 40.859768, 48.400631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459736, 40.939423, 48.283588>,  <34.136749, 41.072182, 48.088516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459736, 40.939423, 48.283588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425878, 0.244062, 0.871242,
		-0.408191, -0.911194, 0.055723,
		0.807471, -0.331902, 0.487681,
		34.701977, 40.839851, 48.429893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978176, 40.529560, 48.586197>,  <34.136749, 41.072182, 48.088516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978176, 40.529560, 48.586197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313335, 40.718361, 48.695843>,  <34.514431, 40.831642, 48.761631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313335, 40.718361, 48.695843>,  <33.978176, 40.529560, 48.586197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313335, 40.718361, 48.695843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439680, 0.286082, 0.851375,
		0.323432, -0.833889, 0.447238,
		0.837898, 0.472003, 0.274116,
		34.564705, 40.859962, 48.778076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106007, 40.354149, 49.188480>,  <33.978176, 40.529560, 48.586197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106007, 40.354149, 49.188480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336563, 40.680935, 49.195839>,  <34.474895, 40.877007, 49.200253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.336563, 40.680935, 49.195839>,  <34.106007, 40.354149, 49.188480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336563, 40.680935, 49.195839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355473, 0.230401, 0.905845,
		0.735807, -0.528660, 0.423211,
		0.576392, 0.816967, 0.018394,
		34.509480, 40.926025, 49.201359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346687, 40.478577, 49.929722>,  <34.106007, 40.354149, 49.188480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346687, 40.478577, 49.929722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.440800, 40.820766, 49.745193>,  <34.497269, 41.026081, 49.634476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.440800, 40.820766, 49.745193>,  <34.346687, 40.478577, 49.929722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440800, 40.820766, 49.745193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216062, 0.508802, 0.833329,
		0.947607, -0.096394, 0.304546,
		0.235282, 0.855470, -0.461317,
		34.511383, 41.077408, 49.606800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584728, 40.940536, 50.474354>,  <34.346687, 40.478577, 49.929722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584728, 40.940536, 50.474354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500538, 41.194057, 50.176628>,  <34.450024, 41.346169, 49.997993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.500538, 41.194057, 50.176628>,  <34.584728, 40.940536, 50.474354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500538, 41.194057, 50.176628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260361, 0.697528, 0.667584,
		0.942292, 0.334297, 0.018206,
		-0.210472, 0.633799, -0.744312,
		34.437397, 41.384197, 49.953335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965717, 41.540844, 50.552513>,  <34.584728, 40.940536, 50.474354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965717, 41.540844, 50.552513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643185, 41.643047, 50.339142>,  <34.449665, 41.704369, 50.211121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.643185, 41.643047, 50.339142>,  <34.965717, 41.540844, 50.552513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643185, 41.643047, 50.339142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207255, 0.722636, 0.659426,
		0.553960, 0.642273, -0.529730,
		-0.806333, 0.255507, -0.533426,
		34.401283, 41.719700, 50.179115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919598, 42.330715, 50.472263>,  <34.965717, 41.540844, 50.552513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919598, 42.330715, 50.472263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546509, 42.193630, 50.427418>,  <34.322655, 42.111378, 50.400513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546509, 42.193630, 50.427418>,  <34.919598, 42.330715, 50.472263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546509, 42.193630, 50.427418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345844, 0.762262, 0.547127,
		-0.102050, 0.549093, -0.829508,
		-0.932726, -0.342715, -0.112112,
		34.266689, 42.090816, 50.393784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460842, 42.955730, 50.500824>,  <34.919598, 42.330715, 50.472263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460842, 42.955730, 50.500824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.213493, 42.645638, 50.552410>,  <34.065086, 42.459583, 50.583363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.213493, 42.645638, 50.552410>,  <34.460842, 42.955730, 50.500824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213493, 42.645638, 50.552410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623654, 0.583920, 0.519705,
		-0.478200, 0.240937, -0.844555,
		-0.618369, -0.775233, 0.128970,
		34.027981, 42.413067, 50.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837662, 43.194981, 50.320461>,  <34.460842, 42.955730, 50.500824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837662, 43.194981, 50.320461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760471, 42.873249, 50.545250>,  <33.714157, 42.680210, 50.680122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.760471, 42.873249, 50.545250>,  <33.837662, 43.194981, 50.320461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760471, 42.873249, 50.545250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561966, 0.560099, 0.608674,
		-0.804334, -0.198349, -0.560093,
		-0.192978, -0.804330, 0.561972,
		33.702579, 42.631950, 50.713840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106457, 43.121159, 50.339466>,  <33.837662, 43.194981, 50.320461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106457, 43.121159, 50.339466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293758, 42.980732, 50.663811>,  <33.406139, 42.896477, 50.858418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293758, 42.980732, 50.663811>,  <33.106457, 43.121159, 50.339466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293758, 42.980732, 50.663811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705973, 0.403209, 0.582258,
		-0.531354, -0.845090, -0.059035,
		0.468257, -0.351062, 0.810858,
		33.434235, 42.875412, 50.907066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402760, 43.102699, 49.592804>,  <33.106457, 43.121159, 50.339466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402760, 43.102699, 49.592804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354584, 43.466980, 49.434761>,  <33.325680, 43.685551, 49.339935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354584, 43.466980, 49.434761>,  <33.402760, 43.102699, 49.592804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354584, 43.466980, 49.434761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165925, -0.410876, -0.896465,
		-0.978756, -0.042408, 0.200593,
		-0.120436, 0.910704, -0.395111,
		33.318451, 43.740192, 49.316227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939007, 42.991962, 49.018070>,  <33.402760, 43.102699, 49.592804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939007, 42.991962, 49.018070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116848, 43.341187, 48.937977>,  <33.223553, 43.550720, 48.889919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.116848, 43.341187, 48.937977>,  <32.939007, 42.991962, 49.018070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116848, 43.341187, 48.937977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075858, -0.259438, -0.962776,
		-0.892511, 0.412861, -0.181575,
		0.444600, 0.873063, -0.200232,
		33.250229, 43.603104, 48.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534771, 43.271507, 48.541412>,  <32.939007, 42.991962, 49.018070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534771, 43.271507, 48.541412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901566, 43.428867, 48.514988>,  <33.121643, 43.523285, 48.499134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.901566, 43.428867, 48.514988>,  <32.534771, 43.271507, 48.541412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901566, 43.428867, 48.514988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012608, -0.136932, -0.990500,
		-0.398710, 0.909112, -0.120605,
		0.916990, 0.393402, -0.066059,
		33.176662, 43.546886, 48.495171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574104, 43.545139, 47.925552>,  <32.534771, 43.271507, 48.541412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574104, 43.545139, 47.925552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964424, 43.529675, 48.011646>,  <33.198616, 43.520393, 48.063301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964424, 43.529675, 48.011646>,  <32.574104, 43.545139, 47.925552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964424, 43.529675, 48.011646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211429, -0.084494, -0.973734,
		0.055835, 0.995674, -0.074274,
		0.975797, -0.038665, 0.215232,
		33.257164, 43.518074, 48.076218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918293, 43.912079, 47.409496>,  <32.574104, 43.545139, 47.925552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918293, 43.912079, 47.409496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189163, 43.650902, 47.545200>,  <33.351685, 43.494198, 47.626625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.189163, 43.650902, 47.545200>,  <32.918293, 43.912079, 47.409496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189163, 43.650902, 47.545200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285488, -0.191809, -0.938992,
		0.678180, 0.732720, 0.056518,
		0.677177, -0.652940, 0.339263,
		33.392315, 43.455021, 47.646980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450275, 43.982098, 47.011860>,  <32.918293, 43.912079, 47.409496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450275, 43.982098, 47.011860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538193, 43.623127, 47.164867>,  <33.590942, 43.407745, 47.256672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538193, 43.623127, 47.164867>,  <33.450275, 43.982098, 47.011860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538193, 43.623127, 47.164867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281372, -0.317122, -0.905684,
		0.934088, 0.306693, 0.182809,
		0.219794, -0.897426, 0.382515,
		33.604130, 43.353901, 47.279621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027935, 43.747036, 46.637791>,  <33.450275, 43.982098, 47.011860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027935, 43.747036, 46.637791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947281, 43.393398, 46.806416>,  <33.898888, 43.181217, 46.907593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.947281, 43.393398, 46.806416>,  <34.027935, 43.747036, 46.637791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947281, 43.393398, 46.806416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227394, -0.460902, -0.857824,
		0.952698, -0.077108, 0.293973,
		-0.201638, -0.884095, 0.421567,
		33.886791, 43.128170, 46.932884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632061, 44.196728, 46.507828>,  <34.027935, 43.747036, 46.637791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632061, 44.196728, 46.507828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374275, 44.446472, 46.331264>,  <34.219604, 44.596317, 46.225327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.374275, 44.446472, 46.331264>,  <34.632061, 44.196728, 46.507828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374275, 44.446472, 46.331264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219242, 0.402159, 0.888933,
		0.732531, 0.669659, -0.122291,
		-0.644463, 0.624359, -0.441411,
		34.180935, 44.633781, 46.198841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811085, 44.868641, 46.729076>,  <34.632061, 44.196728, 46.507828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811085, 44.868641, 46.729076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428963, 44.886395, 46.612167>,  <34.199688, 44.897045, 46.542023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.428963, 44.886395, 46.612167>,  <34.811085, 44.868641, 46.729076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428963, 44.886395, 46.612167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217635, 0.563504, 0.796931,
		0.200067, 0.824921, -0.528658,
		-0.955305, 0.044384, -0.292270,
		34.142372, 44.899712, 46.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609123, 45.556850, 46.648228>,  <34.811085, 44.868641, 46.729076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609123, 45.556850, 46.648228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249844, 45.384853, 46.684776>,  <34.034275, 45.281654, 46.706703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.249844, 45.384853, 46.684776>,  <34.609123, 45.556850, 46.648228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249844, 45.384853, 46.684776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234827, 0.645040, 0.727173,
		-0.371613, 0.631690, -0.680347,
		-0.898199, -0.429990, 0.091368,
		33.980385, 45.255856, 46.712185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150078, 46.057659, 46.618282>,  <34.609123, 45.556850, 46.648228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150078, 46.057659, 46.618282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934383, 45.781391, 46.811035>,  <33.804966, 45.615631, 46.926685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934383, 45.781391, 46.811035>,  <34.150078, 46.057659, 46.618282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934383, 45.781391, 46.811035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011215, 0.578036, 0.815934,
		-0.842082, 0.434575, -0.319442,
		-0.539234, -0.690666, 0.481880,
		33.772614, 45.574192, 46.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513538, 46.391369, 46.928837>,  <34.150078, 46.057659, 46.618282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513538, 46.391369, 46.928837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.553570, 46.051235, 47.135494>,  <33.577587, 45.847157, 47.259491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.553570, 46.051235, 47.135494>,  <33.513538, 46.391369, 46.928837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553570, 46.051235, 47.135494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118467, 0.525742, 0.842354,
		-0.987902, -0.023097, 0.153352,
		0.100079, -0.850330, 0.516646,
		33.583595, 45.796135, 47.290489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084076, 46.500294, 47.402580>,  <33.513538, 46.391369, 46.928837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084076, 46.500294, 47.402580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308437, 46.201206, 47.544731>,  <33.443054, 46.021751, 47.630024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.308437, 46.201206, 47.544731>,  <33.084076, 46.500294, 47.402580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308437, 46.201206, 47.544731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042279, 0.454576, 0.889704,
		-0.826800, -0.484015, 0.286587,
		0.560906, -0.747723, 0.355380,
		33.476707, 45.976891, 47.651344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812935, 46.316971, 47.991840>,  <33.084076, 46.500294, 47.402580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812935, 46.316971, 47.991840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.199230, 46.225376, 48.040680>,  <33.431007, 46.170418, 48.069984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.199230, 46.225376, 48.040680>,  <32.812935, 46.316971, 47.991840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199230, 46.225376, 48.040680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006332, 0.449580, 0.893218,
		-0.259434, -0.863389, 0.432727,
		0.965740, -0.228991, 0.122104,
		33.488953, 46.156677, 48.077312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873684, 46.110115, 48.694519>,  <32.812935, 46.316971, 47.991840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873684, 46.110115, 48.694519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259644, 46.157028, 48.600529>,  <33.491219, 46.185177, 48.544132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.259644, 46.157028, 48.600529>,  <32.873684, 46.110115, 48.694519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259644, 46.157028, 48.600529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123745, 0.586139, 0.800705,
		0.231641, -0.801676, 0.551051,
		0.964899, 0.117286, -0.234978,
		33.549114, 46.192215, 48.530037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205116, 45.952660, 49.284752>,  <32.873684, 46.110115, 48.694519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205116, 45.952660, 49.284752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460514, 46.179409, 49.076527>,  <33.613754, 46.315456, 48.951591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.460514, 46.179409, 49.076527>,  <33.205116, 45.952660, 49.284752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460514, 46.179409, 49.076527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157035, 0.566196, 0.809174,
		0.753437, -0.598398, 0.272493,
		0.638493, 0.566871, -0.520562,
		33.652061, 46.349472, 48.920357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.159187, 38.676674, 34.544468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462730, 38.928932, 34.609493>,  <35.644855, 39.080288, 34.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462730, 38.928932, 34.609493>,  <35.159187, 38.676674, 34.544468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462730, 38.928932, 34.609493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423603, 0.288369, 0.858722,
		0.494674, -0.720505, 0.485974,
		0.758853, 0.630647, 0.162559,
		35.690388, 39.118126, 34.658260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264931, 38.575001, 35.223061>,  <35.159187, 38.676674, 34.544468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264931, 38.575001, 35.223061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467972, 38.911785, 35.149914>,  <35.589798, 39.113857, 35.106026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467972, 38.911785, 35.149914>,  <35.264931, 38.575001, 35.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467972, 38.911785, 35.149914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301039, 0.372185, 0.877983,
		0.807287, -0.390618, 0.442385,
		0.507605, 0.841960, -0.182869,
		35.620255, 39.164371, 35.095055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733829, 38.706963, 35.761528>,  <35.264931, 38.575001, 35.223061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733829, 38.706963, 35.761528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669502, 39.063141, 35.591240>,  <35.630905, 39.276848, 35.489067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669502, 39.063141, 35.591240>,  <35.733829, 38.706963, 35.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669502, 39.063141, 35.591240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417968, 0.329304, 0.846676,
		0.894113, 0.314102, 0.319220,
		-0.160823, 0.890449, -0.425720,
		35.621254, 39.330276, 35.463524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139927, 39.246635, 36.139599>,  <35.733829, 38.706963, 35.761528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139927, 39.246635, 36.139599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835686, 39.430832, 35.956543>,  <35.653141, 39.541351, 35.846710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835686, 39.430832, 35.956543>,  <36.139927, 39.246635, 36.139599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835686, 39.430832, 35.956543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326945, 0.337306, 0.882798,
		0.560883, 0.821081, -0.106002,
		-0.760603, 0.460490, -0.457637,
		35.607506, 39.568977, 35.819252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997444, 39.775444, 36.557343>,  <36.139927, 39.246635, 36.139599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997444, 39.775444, 36.557343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678539, 39.794270, 36.316624>,  <35.487198, 39.805565, 36.172192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678539, 39.794270, 36.316624>,  <35.997444, 39.775444, 36.557343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678539, 39.794270, 36.316624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559532, 0.316444, 0.766020,
		0.226486, 0.947443, -0.225954,
		-0.797263, 0.047064, -0.601795,
		35.439362, 39.808388, 36.136086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803875, 40.543335, 36.410732>,  <35.997444, 39.775444, 36.557343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803875, 40.543335, 36.410732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494392, 40.299187, 36.342823>,  <35.308704, 40.152699, 36.302078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494392, 40.299187, 36.342823>,  <35.803875, 40.543335, 36.410732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494392, 40.299187, 36.342823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509326, 0.439892, 0.739650,
		-0.376783, 0.658740, -0.651227,
		-0.773706, -0.610374, -0.169770,
		35.262280, 40.116074, 36.291893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230106, 40.952793, 36.473858>,  <35.803875, 40.543335, 36.410732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230106, 40.952793, 36.473858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068192, 40.589600, 36.517159>,  <34.971043, 40.371685, 36.543137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068192, 40.589600, 36.517159>,  <35.230106, 40.952793, 36.473858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068192, 40.589600, 36.517159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553347, 0.337472, 0.761524,
		-0.727981, 0.248354, -0.639033,
		-0.404783, -0.907983, 0.108247,
		34.946758, 40.317204, 36.549633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406059, 41.065666, 36.433796>,  <35.230106, 40.952793, 36.473858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406059, 41.065666, 36.433796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500805, 40.725868, 36.622372>,  <34.557652, 40.521992, 36.735519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500805, 40.725868, 36.622372>,  <34.406059, 41.065666, 36.433796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500805, 40.725868, 36.622372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642967, 0.226718, 0.731568,
		-0.728346, -0.476404, -0.492495,
		0.236864, -0.849493, 0.471441,
		34.571865, 40.471020, 36.763805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814819, 40.813747, 36.736977>,  <34.406059, 41.065666, 36.433796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814819, 40.813747, 36.736977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096668, 40.620605, 36.944962>,  <34.265778, 40.504719, 37.069752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096668, 40.620605, 36.944962>,  <33.814819, 40.813747, 36.736977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096668, 40.620605, 36.944962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478790, 0.217291, 0.850614,
		-0.523707, -0.848313, -0.078079,
		0.704621, -0.482856, 0.519961,
		34.308056, 40.475750, 37.100948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515457, 40.601761, 37.380562>,  <33.814819, 40.813747, 36.736977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515457, 40.601761, 37.380562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899429, 40.555202, 37.482536>,  <34.129810, 40.527267, 37.543720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.899429, 40.555202, 37.482536>,  <33.515457, 40.601761, 37.380562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899429, 40.555202, 37.482536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197164, 0.365970, 0.909501,
		-0.199165, -0.923318, 0.328354,
		0.959927, -0.116401, 0.254934,
		34.187408, 40.520283, 37.559017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448292, 40.232307, 38.018139>,  <33.515457, 40.601761, 37.380562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448292, 40.232307, 38.018139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808975, 40.401875, 37.984180>,  <34.025387, 40.503616, 37.963806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808975, 40.401875, 37.984180>,  <33.448292, 40.232307, 38.018139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808975, 40.401875, 37.984180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088562, 0.373315, 0.923468,
		0.423170, -0.825183, 0.374165,
		0.901711, 0.423921, -0.084896,
		34.079491, 40.529049, 37.958714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811588, 40.055481, 38.604134>,  <33.448292, 40.232307, 38.018139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811588, 40.055481, 38.604134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010319, 40.377304, 38.473995>,  <34.129555, 40.570400, 38.395912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010319, 40.377304, 38.473995>,  <33.811588, 40.055481, 38.604134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010319, 40.377304, 38.473995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021593, 0.386228, 0.922150,
		0.867583, -0.451120, 0.209260,
		0.496823, 0.804561, -0.325344,
		34.159367, 40.618671, 38.376392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843372, 39.394238, 38.908981>,  <33.811588, 40.055481, 38.604134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843372, 39.394238, 38.908981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522995, 39.244038, 39.095524>,  <33.330769, 39.153919, 39.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522995, 39.244038, 39.095524>,  <33.843372, 39.394238, 38.908981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522995, 39.244038, 39.095524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255303, -0.490354, -0.833290,
		0.541580, -0.786481, 0.296880,
		-0.800944, -0.375499, 0.466358,
		33.282711, 39.131390, 39.235432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686226, 38.659794, 38.703339>,  <33.843372, 39.394238, 38.908981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686226, 38.659794, 38.703339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326038, 38.747849, 38.853378>,  <33.109928, 38.800682, 38.943401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326038, 38.747849, 38.853378>,  <33.686226, 38.659794, 38.703339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326038, 38.747849, 38.853378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433097, -0.532834, -0.726991,
		0.039829, -0.817086, 0.575139,
		-0.900467, 0.220135, 0.375099,
		33.055897, 38.813889, 38.965908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331360, 37.995411, 38.818218>,  <33.686226, 38.659794, 38.703339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331360, 37.995411, 38.818218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043594, 38.271572, 38.787762>,  <32.870937, 38.437267, 38.769489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043594, 38.271572, 38.787762>,  <33.331360, 37.995411, 38.818218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043594, 38.271572, 38.787762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498789, -0.589791, -0.635103,
		-0.483382, -0.418922, 0.768666,
		-0.719411, 0.690399, -0.076141,
		32.827770, 38.478691, 38.764919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730721, 37.695290, 38.886047>,  <33.331360, 37.995411, 38.818218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730721, 37.695290, 38.886047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622963, 38.033512, 38.701672>,  <32.558308, 38.236446, 38.591045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622963, 38.033512, 38.701672>,  <32.730721, 37.695290, 38.886047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622963, 38.033512, 38.701672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587200, -0.523591, -0.617291,
		-0.763297, 0.104369, 0.637562,
		-0.269395, 0.845553, -0.460941,
		32.542145, 38.287178, 38.563389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017262, 37.702557, 38.998829>,  <32.730721, 37.695290, 38.886047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017262, 37.702557, 38.998829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085537, 37.931255, 38.677837>,  <32.126503, 38.068474, 38.485241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085537, 37.931255, 38.677837>,  <32.017262, 37.702557, 38.998829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085537, 37.931255, 38.677837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673903, -0.526419, -0.518400,
		-0.718832, 0.629280, 0.295443,
		0.170692, 0.571743, -0.802480,
		32.136745, 38.102779, 38.437092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296288, 37.828751, 38.767273>,  <32.017262, 37.702557, 38.998829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296288, 37.828751, 38.767273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533926, 37.940025, 38.465370>,  <31.676510, 38.006790, 38.284229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533926, 37.940025, 38.465370>,  <31.296288, 37.828751, 38.767273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533926, 37.940025, 38.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593582, -0.481630, -0.644743,
		-0.542873, 0.831051, -0.121008,
		0.594096, 0.278185, -0.754760,
		31.712154, 38.023479, 38.238941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810753, 38.134518, 38.127922>,  <31.296288, 37.828751, 38.767273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810753, 38.134518, 38.127922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163307, 38.006847, 37.988617>,  <31.374840, 37.930244, 37.905033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163307, 38.006847, 37.988617>,  <30.810753, 38.134518, 38.127922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163307, 38.006847, 37.988617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471868, -0.629616, -0.617191,
		-0.022278, 0.708316, -0.705543,
		0.881388, -0.319174, -0.348259,
		31.427723, 37.911095, 37.884140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674685, 38.005253, 37.431515>,  <30.810753, 38.134518, 38.127922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674685, 38.005253, 37.431515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012209, 37.798702, 37.489941>,  <31.214724, 37.674770, 37.524998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012209, 37.798702, 37.489941>,  <30.674685, 38.005253, 37.431515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012209, 37.798702, 37.489941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379427, -0.766569, -0.518081,
		0.379495, 0.381741, -0.842768,
		0.843812, -0.516377, 0.146067,
		31.265352, 37.643787, 37.533760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808613, 37.672943, 36.783688>,  <30.674685, 38.005253, 37.431515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808613, 37.672943, 36.783688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020071, 37.478943, 37.062344>,  <31.146946, 37.362541, 37.229538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020071, 37.478943, 37.062344>,  <30.808613, 37.672943, 36.783688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020071, 37.478943, 37.062344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358461, -0.871479, -0.334708,
		0.769441, -0.072776, -0.634558,
		0.528646, -0.485002, 0.696639,
		31.178665, 37.333443, 37.271336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250784, 37.235222, 36.490395>,  <30.808613, 37.672943, 36.783688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250784, 37.235222, 36.490395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183554, 37.085823, 36.855305>,  <31.143215, 36.996181, 37.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183554, 37.085823, 36.855305>,  <31.250784, 37.235222, 36.490395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183554, 37.085823, 36.855305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379133, -0.829766, -0.409570,
		0.909950, -0.414714, -0.002141,
		-0.168078, -0.373499, 0.912276,
		31.133131, 36.973774, 37.128986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234346, 36.543259, 36.390816>,  <31.250784, 37.235222, 36.490395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234346, 36.543259, 36.390816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075338, 36.572865, 36.756657>,  <30.979935, 36.590630, 36.976162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075338, 36.572865, 36.756657>,  <31.234346, 36.543259, 36.390816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075338, 36.572865, 36.756657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541467, -0.823625, -0.168686,
		0.740805, -0.562284, 0.367483,
		-0.397518, 0.074017, 0.914604,
		30.956083, 36.595070, 37.031036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393145, 35.849617, 36.727139>,  <31.234346, 36.543259, 36.390816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393145, 35.849617, 36.727139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080494, 36.039227, 36.889305>,  <30.892904, 36.152992, 36.986607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080494, 36.039227, 36.889305>,  <31.393145, 35.849617, 36.727139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080494, 36.039227, 36.889305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581237, -0.789365, -0.197652,
		0.226329, -0.390133, 0.892509,
		-0.781625, 0.474025, 0.405416,
		30.846006, 36.181435, 37.010929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192842, 35.364616, 37.257633>,  <31.393145, 35.849617, 36.727139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192842, 35.364616, 37.257633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903753, 35.627960, 37.173512>,  <30.730299, 35.785969, 37.123039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903753, 35.627960, 37.173512>,  <31.192842, 35.364616, 37.257633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903753, 35.627960, 37.173512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666019, -0.744720, -0.042557,
		-0.184636, 0.109310, 0.976709,
		-0.722723, 0.658364, -0.210304,
		30.686935, 35.825470, 37.110420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638149, 35.159676, 37.671371>,  <31.192842, 35.364616, 37.257633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638149, 35.159676, 37.671371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448761, 35.370785, 37.389297>,  <30.335129, 35.497448, 37.220055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448761, 35.370785, 37.389297>,  <30.638149, 35.159676, 37.671371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448761, 35.370785, 37.389297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758004, -0.651911, 0.021034,
		-0.448617, 0.544491, 0.708712,
		-0.473470, 0.527770, -0.705185,
		30.306721, 35.529114, 37.177742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921436, 35.811394, 37.944820>,  <30.638149, 35.159676, 37.671371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921436, 35.811394, 37.944820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523525, 35.812290, 37.904007>,  <30.284779, 35.812828, 37.879520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523525, 35.812290, 37.904007>,  <30.921436, 35.811394, 37.944820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523525, 35.812290, 37.904007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087174, -0.538489, 0.838111,
		-0.053065, 0.842630, 0.535872,
		-0.994779, 0.002239, -0.102030,
		30.225092, 35.812962, 37.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607559, 35.401321, 37.967323>,  <30.921436, 35.811394, 37.944820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607559, 35.401321, 37.967323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865980, 35.289978, 38.251614>,  <32.021030, 35.223171, 38.422188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865980, 35.289978, 38.251614>,  <31.607559, 35.401321, 37.967323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865980, 35.289978, 38.251614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611620, 0.368286, 0.700204,
		-0.456662, -0.887062, 0.067679,
		0.646050, -0.278362, 0.710727,
		32.059795, 35.206470, 38.464832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140139, 35.377705, 38.600048>,  <31.607559, 35.401321, 37.967323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140139, 35.377705, 38.600048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516756, 35.343613, 38.730423>,  <31.742725, 35.323158, 38.808647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516756, 35.343613, 38.730423>,  <31.140139, 35.377705, 38.600048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516756, 35.343613, 38.730423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262067, 0.422678, 0.867562,
		-0.211706, -0.902263, 0.375634,
		0.941542, -0.085227, 0.325937,
		31.799219, 35.318047, 38.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139153, 35.097870, 39.326546>,  <31.140139, 35.377705, 38.600048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139153, 35.097870, 39.326546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482693, 35.292713, 39.263172>,  <31.688818, 35.409618, 39.225147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482693, 35.292713, 39.263172>,  <31.139153, 35.097870, 39.326546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482693, 35.292713, 39.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092958, 0.452399, 0.886958,
		0.503720, -0.747036, 0.433824,
		0.858850, 0.487106, -0.158439,
		31.740349, 35.438843, 39.215641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527060, 35.004337, 39.974037>,  <31.139153, 35.097870, 39.326546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527060, 35.004337, 39.974037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702843, 35.321091, 39.804424>,  <31.808313, 35.511143, 39.702656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702843, 35.321091, 39.804424>,  <31.527060, 35.004337, 39.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702843, 35.321091, 39.804424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137185, 0.407349, 0.902910,
		0.887725, -0.454963, 0.070379,
		0.439460, 0.791881, -0.424028,
		31.834681, 35.558655, 39.677216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092857, 35.042973, 40.355152>,  <31.527060, 35.004337, 39.974037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092857, 35.042973, 40.355152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045902, 35.393509, 40.168289>,  <32.017727, 35.603832, 40.056171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045902, 35.393509, 40.168289>,  <32.092857, 35.042973, 40.355152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045902, 35.393509, 40.168289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205943, 0.481670, 0.851810,
		0.971497, 0.003786, -0.237021,
		-0.117391, 0.876344, -0.467162,
		32.010685, 35.656414, 40.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729446, 35.383877, 40.377934>,  <32.092857, 35.042973, 40.355152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729446, 35.383877, 40.377934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440273, 35.658115, 40.343712>,  <32.266769, 35.822659, 40.323177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440273, 35.658115, 40.343712>,  <32.729446, 35.383877, 40.377934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440273, 35.658115, 40.343712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413955, 0.528944, 0.740851,
		0.553181, 0.500170, -0.666199,
		-0.722933, 0.685601, -0.085553,
		32.223392, 35.863796, 40.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081200, 36.000919, 40.300415>,  <32.729446, 35.383877, 40.377934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081200, 36.000919, 40.300415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714737, 36.121593, 40.405972>,  <32.494858, 36.193996, 40.469303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714737, 36.121593, 40.405972>,  <33.081200, 36.000919, 40.300415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714737, 36.121593, 40.405972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378507, 0.434629, 0.817209,
		0.131847, 0.848577, -0.512380,
		-0.916160, 0.301685, 0.263888,
		32.439888, 36.212101, 40.485138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973156, 36.767452, 40.358498>,  <33.081200, 36.000919, 40.300415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973156, 36.767452, 40.358498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694817, 36.604427, 40.595036>,  <32.527813, 36.506611, 40.736958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694817, 36.604427, 40.595036>,  <32.973156, 36.767452, 40.358498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694817, 36.604427, 40.595036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312966, 0.569011, 0.760447,
		-0.646410, 0.714227, -0.268393,
		-0.695850, -0.407563, 0.591342,
		32.486061, 36.482159, 40.772438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668755, 37.359581, 40.724194>,  <32.973156, 36.767452, 40.358498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668755, 37.359581, 40.724194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532150, 37.060268, 40.951679>,  <32.450188, 36.880680, 41.088173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532150, 37.060268, 40.951679>,  <32.668755, 37.359581, 40.724194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532150, 37.060268, 40.951679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390747, 0.437288, 0.809997,
		-0.854802, 0.498848, 0.143051,
		-0.341511, -0.748284, 0.568718,
		32.429695, 36.835785, 41.122295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409092, 37.569897, 41.355251>,  <32.668755, 37.359581, 40.724194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409092, 37.569897, 41.355251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420273, 37.186981, 41.470360>,  <32.426979, 36.957230, 41.539425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420273, 37.186981, 41.470360>,  <32.409092, 37.569897, 41.355251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420273, 37.186981, 41.470360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292161, 0.283137, 0.913496,
		-0.955961, 0.058544, 0.287597,
		0.027950, -0.957291, 0.287772,
		32.428658, 36.899796, 41.556690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189316, 37.520618, 42.042934>,  <32.409092, 37.569897, 41.355251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189316, 37.520618, 42.042934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422333, 37.196934, 42.012421>,  <32.562141, 37.002724, 41.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422333, 37.196934, 42.012421>,  <32.189316, 37.520618, 42.042934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422333, 37.196934, 42.012421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314563, 0.137918, 0.939164,
		-0.749464, -0.571096, 0.334892,
		0.582541, -0.809214, -0.076281,
		32.597095, 36.954170, 41.989536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114380, 37.241390, 42.623981>,  <32.189316, 37.520618, 42.042934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114380, 37.241390, 42.623981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446892, 37.064064, 42.489857>,  <32.646400, 36.957668, 42.409382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446892, 37.064064, 42.489857>,  <32.114380, 37.241390, 42.623981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446892, 37.064064, 42.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444457, 0.167861, 0.879932,
		-0.333806, -0.880505, 0.336577,
		0.831283, -0.443320, -0.335314,
		32.696278, 36.931068, 42.389263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421509, 36.997066, 43.147846>,  <32.114380, 37.241390, 42.623981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421509, 36.997066, 43.147846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747272, 36.958912, 42.918888>,  <32.942730, 36.936020, 42.781513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747272, 36.958912, 42.918888>,  <32.421509, 36.997066, 43.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747272, 36.958912, 42.918888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580155, 0.154742, 0.799672,
		0.012297, -0.983339, 0.181362,
		0.814413, -0.095385, -0.572392,
		32.991596, 36.930298, 42.747169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782276, 36.467533, 43.504597>,  <32.421509, 36.997066, 43.147846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782276, 36.467533, 43.504597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022995, 36.696774, 43.282104>,  <33.167427, 36.834320, 43.148609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022995, 36.696774, 43.282104>,  <32.782276, 36.467533, 43.504597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022995, 36.696774, 43.282104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449168, 0.333004, 0.829070,
		0.660370, -0.748772, -0.057019,
		0.601797, 0.573104, -0.556230,
		33.203533, 36.868706, 43.115234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453423, 36.319912, 43.737171>,  <32.782276, 36.467533, 43.504597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453423, 36.319912, 43.737171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500629, 36.670151, 43.549809>,  <33.528954, 36.880295, 43.437389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500629, 36.670151, 43.549809>,  <33.453423, 36.319912, 43.737171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500629, 36.670151, 43.549809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581797, 0.321299, 0.747181,
		0.804727, -0.360696, -0.471501,
		0.118012, 0.875594, -0.468410,
		33.536034, 36.932831, 43.409286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228638, 36.487595, 43.615788>,  <33.453423, 36.319912, 43.737171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228638, 36.487595, 43.615788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020241, 36.829002, 43.618885>,  <33.895203, 37.033848, 43.620743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020241, 36.829002, 43.618885>,  <34.228638, 36.487595, 43.615788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020241, 36.829002, 43.618885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589031, 0.352949, 0.726959,
		0.617742, 0.383307, -0.686637,
		-0.520996, 0.853524, 0.007748,
		33.863941, 37.085060, 43.621208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699261, 36.902641, 43.859043>,  <34.228638, 36.487595, 43.615788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699261, 36.902641, 43.859043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397793, 37.165539, 43.859962>,  <34.216911, 37.323277, 43.860516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397793, 37.165539, 43.859962>,  <34.699261, 36.902641, 43.859043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397793, 37.165539, 43.859962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477920, 0.545626, 0.688393,
		0.451186, 0.519924, -0.725335,
		-0.753673, 0.657245, 0.002303,
		34.171692, 37.362713, 43.860653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017632, 37.496418, 43.832207>,  <34.699261, 36.902641, 43.859043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017632, 37.496418, 43.832207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653313, 37.550579, 43.988213>,  <34.434719, 37.583076, 44.081814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653313, 37.550579, 43.988213>,  <35.017632, 37.496418, 43.832207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653313, 37.550579, 43.988213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393663, 0.569482, 0.721610,
		-0.124393, 0.810775, -0.571988,
		-0.910800, 0.135407, 0.390011,
		34.380074, 37.591202, 44.105217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046886, 38.195503, 44.097424>,  <35.017632, 37.496418, 43.832207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046886, 38.195503, 44.097424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714859, 38.075905, 44.285717>,  <34.515644, 38.004147, 44.398693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714859, 38.075905, 44.285717>,  <35.046886, 38.195503, 44.097424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714859, 38.075905, 44.285717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125169, 0.722686, 0.679749,
		-0.543437, 0.623158, -0.562451,
		-0.830066, -0.298999, 0.470734,
		34.465839, 37.986206, 44.426937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476620, 38.705917, 44.114208>,  <35.046886, 38.195503, 44.097424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476620, 38.705917, 44.114208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437374, 38.464954, 44.431061>,  <34.413826, 38.320377, 44.621174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437374, 38.464954, 44.431061>,  <34.476620, 38.705917, 44.114208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437374, 38.464954, 44.431061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219665, 0.763231, 0.607639,
		-0.970629, 0.233622, 0.057444,
		-0.098115, -0.602411, 0.792133,
		34.407940, 38.284229, 44.668701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107098, 39.090919, 44.668724>,  <34.476620, 38.705917, 44.114208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107098, 39.090919, 44.668724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278965, 38.780346, 44.853134>,  <34.382084, 38.594002, 44.963779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278965, 38.780346, 44.853134>,  <34.107098, 39.090919, 44.668724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278965, 38.780346, 44.853134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300006, 0.604293, 0.738124,
		-0.851695, -0.178837, 0.492578,
		0.429665, -0.776433, 0.461021,
		34.407864, 38.547417, 44.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941608, 39.277088, 45.361839>,  <34.107098, 39.090919, 44.668724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941608, 39.277088, 45.361839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220024, 38.991543, 45.392628>,  <34.387074, 38.820217, 45.411102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220024, 38.991543, 45.392628>,  <33.941608, 39.277088, 45.361839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220024, 38.991543, 45.392628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296905, 0.383770, 0.874396,
		-0.653739, -0.585763, 0.479069,
		0.696041, -0.713865, 0.076970,
		34.428837, 38.777382, 45.415718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882004, 39.057674, 46.017845>,  <33.941608, 39.277088, 45.361839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882004, 39.057674, 46.017845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245975, 38.961246, 45.882839>,  <34.464359, 38.903389, 45.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245975, 38.961246, 45.882839>,  <33.882004, 39.057674, 46.017845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245975, 38.961246, 45.882839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403396, 0.325119, 0.855318,
		-0.096455, -0.914431, 0.393081,
		0.909927, -0.241067, -0.337519,
		34.518955, 38.888927, 45.781582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166260, 38.791061, 46.571815>,  <33.882004, 39.057674, 46.017845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166260, 38.791061, 46.571815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474030, 38.881908, 46.333015>,  <34.658691, 38.936417, 46.189735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474030, 38.881908, 46.333015>,  <34.166260, 38.791061, 46.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474030, 38.881908, 46.333015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530125, 0.294310, 0.795204,
		0.356311, -0.928330, 0.106045,
		0.769422, 0.227122, -0.596997,
		34.704857, 38.950043, 46.153915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653965, 38.680218, 47.067146>,  <34.166260, 38.791061, 46.571815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653965, 38.680218, 47.067146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842541, 38.874256, 46.772549>,  <34.955685, 38.990681, 46.595791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842541, 38.874256, 46.772549>,  <34.653965, 38.680218, 47.067146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842541, 38.874256, 46.772549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556055, 0.484696, 0.675183,
		0.684506, -0.727840, -0.041235,
		0.471439, 0.485096, -0.736497,
		34.983971, 39.019783, 46.551601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426159, 38.662350, 47.207355>,  <34.653965, 38.680218, 47.067146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426159, 38.662350, 47.207355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378429, 38.977177, 46.965267>,  <35.349792, 39.166073, 46.820015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378429, 38.977177, 46.965267>,  <35.426159, 38.662350, 47.207355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378429, 38.977177, 46.965267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424526, 0.591483, 0.685510,
		0.897519, -0.175136, -0.404707,
		-0.119320, 0.787067, -0.605217,
		35.342632, 39.213295, 46.783703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063705, 39.073303, 47.129498>,  <35.426159, 38.662350, 47.207355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063705, 39.073303, 47.129498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734455, 39.294388, 47.077400>,  <35.536903, 39.427040, 47.046143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734455, 39.294388, 47.077400>,  <36.063705, 39.073303, 47.129498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734455, 39.294388, 47.077400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318340, 0.639079, 0.700169,
		0.470230, 0.534869, -0.701997,
		-0.823130, 0.552714, -0.130244,
		35.487514, 39.460201, 47.038326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340454, 39.650509, 46.822414>,  <36.063705, 39.073303, 47.129498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340454, 39.650509, 46.822414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709400, 39.505520, 46.875866>,  <36.930767, 39.418526, 46.907936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709400, 39.505520, 46.875866>,  <36.340454, 39.650509, 46.822414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709400, 39.505520, 46.875866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153408, -0.661126, -0.734424,
		0.354552, 0.656908, -0.665406,
		0.922366, -0.362470, 0.133629,
		36.986111, 39.396778, 46.915955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529327, 39.383404, 46.119652>,  <36.340454, 39.650509, 46.822414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529327, 39.383404, 46.119652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817905, 39.214321, 46.339046>,  <36.991051, 39.112873, 46.470684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817905, 39.214321, 46.339046>,  <36.529327, 39.383404, 46.119652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817905, 39.214321, 46.339046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119717, -0.704007, -0.700030,
		0.682047, 0.570695, -0.457296,
		0.721443, -0.422707, 0.548487,
		37.034340, 39.087509, 46.503593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278362, 39.250095, 45.713772>,  <36.529327, 39.383404, 46.119652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278362, 39.250095, 45.713772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286045, 38.981476, 46.010056>,  <37.290653, 38.820305, 46.187824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286045, 38.981476, 46.010056>,  <37.278362, 39.250095, 45.713772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286045, 38.981476, 46.010056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155651, -0.729804, -0.665701,
		0.987625, 0.128076, 0.090514,
		0.019203, -0.671552, 0.740708,
		37.291805, 38.780010, 46.232269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859253, 38.732903, 45.485558>,  <37.278362, 39.250095, 45.713772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859253, 38.732903, 45.485558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720394, 38.514603, 45.790623>,  <37.637077, 38.383625, 45.973660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720394, 38.514603, 45.790623>,  <37.859253, 38.732903, 45.485558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720394, 38.514603, 45.790623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160094, -0.835784, -0.525200,
		0.924044, -0.060227, 0.377514,
		-0.347151, -0.545745, 0.762659,
		37.616249, 38.350880, 46.019421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335449, 38.115303, 45.621132>,  <37.859253, 38.732903, 45.485558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335449, 38.115303, 45.621132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963226, 38.058144, 45.755978>,  <37.739891, 38.023846, 45.836884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.963226, 38.058144, 45.755978>,  <38.335449, 38.115303, 45.621132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963226, 38.058144, 45.755978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065629, -0.840685, -0.537533,
		0.360219, -0.522329, 0.772926,
		-0.930556, -0.142903, 0.337111,
		37.684059, 38.015274, 45.857109>
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
