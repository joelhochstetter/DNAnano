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
	<23.970646, 35.175774, 34.907242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244982, 34.891106, 34.968094>,  <24.409584, 34.720303, 35.004604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.244982, 34.891106, 34.968094>,  <23.970646, 35.175774, 34.907242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244982, 34.891106, 34.968094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166182, -0.050372, -0.984808,
		0.708524, 0.700703, 0.083720,
		0.685841, -0.711672, 0.152134,
		24.450733, 34.677605, 35.013733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.552275, 35.320118, 34.579609>,  <23.970646, 35.175774, 34.907242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.552275, 35.320118, 34.579609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588764, 34.921795, 34.577003>,  <24.610657, 34.682800, 34.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588764, 34.921795, 34.577003>,  <24.552275, 35.320118, 34.579609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588764, 34.921795, 34.577003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146671, 0.019908, -0.988985,
		0.984970, 0.089262, 0.147873,
		0.091222, -0.995809, -0.006516,
		24.616131, 34.623051, 34.575050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233421, 35.625771, 34.494545>,  <24.552275, 35.320118, 34.579609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233421, 35.625771, 34.494545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961746, 35.766148, 34.752396>,  <24.798740, 35.850376, 34.907104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.961746, 35.766148, 34.752396>,  <25.233421, 35.625771, 34.494545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961746, 35.766148, 34.752396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690265, 0.603943, 0.398480,
		-0.249470, 0.715604, -0.652438,
		-0.679190, 0.350947, 0.644622,
		24.757990, 35.871433, 34.945782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212149, 36.394756, 34.482151>,  <25.233421, 35.625771, 34.494545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212149, 36.394756, 34.482151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069363, 36.274349, 34.835865>,  <24.983692, 36.202106, 35.048096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069363, 36.274349, 34.835865>,  <25.212149, 36.394756, 34.482151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069363, 36.274349, 34.835865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657399, 0.591580, 0.466754,
		-0.663629, 0.747944, -0.013283,
		-0.356964, -0.301019, 0.884288,
		24.962273, 36.184044, 35.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811787, 36.600830, 34.784279>,  <25.212149, 36.394756, 34.482151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811787, 36.600830, 34.784279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200476, 36.673508, 34.723961>,  <26.433689, 36.717113, 34.687771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200476, 36.673508, 34.723961>,  <25.811787, 36.600830, 34.784279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200476, 36.673508, 34.723961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099643, -0.263459, -0.959511,
		-0.214063, 0.947406, -0.237905,
		0.971724, 0.181690, -0.150800,
		26.491993, 36.728016, 34.678722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994072, 37.159275, 34.143406>,  <25.811787, 36.600830, 34.784279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994072, 37.159275, 34.143406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311821, 36.929630, 34.222778>,  <26.502470, 36.791843, 34.270401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311821, 36.929630, 34.222778>,  <25.994072, 37.159275, 34.143406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311821, 36.929630, 34.222778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035853, -0.281784, -0.958808,
		0.606373, 0.768764, -0.203258,
		0.794372, -0.574108, 0.198428,
		26.550133, 36.757397, 34.282307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354143, 37.195732, 33.596870>,  <25.994072, 37.159275, 34.143406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354143, 37.195732, 33.596870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535250, 36.873001, 33.748676>,  <26.643913, 36.679363, 33.839760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.535250, 36.873001, 33.748676>,  <26.354143, 37.195732, 33.596870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535250, 36.873001, 33.748676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142972, -0.354439, -0.924084,
		0.880092, 0.472653, -0.045124,
		0.452765, -0.806828, 0.379515,
		26.671080, 36.630951, 33.862530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067135, 37.222206, 33.377304>,  <26.354143, 37.195732, 33.596870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067135, 37.222206, 33.377304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970705, 36.844978, 33.468960>,  <26.912848, 36.618641, 33.523952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970705, 36.844978, 33.468960>,  <27.067135, 37.222206, 33.377304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970705, 36.844978, 33.468960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216703, -0.282448, -0.934485,
		0.946004, -0.175624, 0.272457,
		-0.241073, -0.943069, 0.229139,
		26.898382, 36.562057, 33.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370415, 36.917152, 32.864166>,  <27.067135, 37.222206, 33.377304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370415, 36.917152, 32.864166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130308, 36.639839, 33.023685>,  <26.986244, 36.473450, 33.119396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130308, 36.639839, 33.023685>,  <27.370415, 36.917152, 32.864166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130308, 36.639839, 33.023685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126650, -0.409932, -0.903281,
		0.789708, -0.592718, 0.158264,
		-0.600268, -0.693284, 0.398794,
		26.950228, 36.431854, 33.143322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745777, 36.325485, 32.794258>,  <27.370415, 36.917152, 32.864166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745777, 36.325485, 32.794258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357233, 36.230785, 32.802372>,  <27.124107, 36.173965, 32.807240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357233, 36.230785, 32.802372>,  <27.745777, 36.325485, 32.794258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357233, 36.230785, 32.802372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093180, -0.458028, -0.884041,
		0.218589, -0.856830, 0.466970,
		-0.971358, -0.236754, 0.020281,
		27.065826, 36.159760, 32.808456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.803648, 35.537079, 32.580486>,  <27.745777, 36.325485, 32.794258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.803648, 35.537079, 32.580486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432468, 35.679558, 32.536606>,  <27.209761, 35.765045, 32.510277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432468, 35.679558, 32.536606>,  <27.803648, 35.537079, 32.580486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432468, 35.679558, 32.536606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081563, -0.481275, -0.872767,
		-0.363670, -0.800937, 0.475652,
		-0.927950, 0.356194, -0.109699,
		27.154083, 35.786415, 32.503696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378815, 34.968163, 32.479748>,  <27.803648, 35.537079, 32.580486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378815, 34.968163, 32.479748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148727, 35.266304, 32.344944>,  <27.010675, 35.445187, 32.264061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148727, 35.266304, 32.344944>,  <27.378815, 34.968163, 32.479748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148727, 35.266304, 32.344944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062050, -0.371046, -0.926539,
		-0.815644, -0.553873, 0.167183,
		-0.575218, 0.745352, -0.337009,
		26.976162, 35.489910, 32.243843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802864, 34.699860, 32.213879>,  <27.378815, 34.968163, 32.479748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802864, 34.699860, 32.213879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818932, 35.058922, 32.038334>,  <26.828573, 35.274361, 31.933008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818932, 35.058922, 32.038334>,  <26.802864, 34.699860, 32.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818932, 35.058922, 32.038334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089257, -0.434234, -0.896367,
		-0.995198, 0.075179, 0.062679,
		0.040170, 0.897658, -0.438859,
		26.830982, 35.328220, 31.906675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.267555, 34.797356, 31.820570>,  <26.802864, 34.699860, 32.213879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.267555, 34.797356, 31.820570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532488, 35.042519, 31.648218>,  <26.691448, 35.189617, 31.544807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532488, 35.042519, 31.648218>,  <26.267555, 34.797356, 31.820570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532488, 35.042519, 31.648218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151312, -0.453828, -0.878149,
		-0.733770, 0.646824, -0.207845,
		0.662334, 0.612910, -0.430878,
		26.731188, 35.226391, 31.518955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081350, 34.708233, 31.152208>,  <26.267555, 34.797356, 31.820570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081350, 34.708233, 31.152208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423079, 34.915760, 31.139786>,  <26.628115, 35.040276, 31.132332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423079, 34.915760, 31.139786>,  <26.081350, 34.708233, 31.152208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423079, 34.915760, 31.139786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165005, -0.327395, -0.930369,
		-0.492860, 0.789708, -0.365308,
		0.854320, 0.518819, -0.031055,
		26.679375, 35.071407, 31.130470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.003935, 35.134411, 30.627008>,  <26.081350, 34.708233, 31.152208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.003935, 35.134411, 30.627008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398842, 35.095016, 30.676975>,  <26.635786, 35.071381, 30.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398842, 35.095016, 30.676975>,  <26.003935, 35.134411, 30.627008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398842, 35.095016, 30.676975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093890, -0.273139, -0.957382,
		0.128410, 0.956920, -0.260414,
		0.987267, -0.098487, 0.124919,
		26.695023, 35.065472, 30.714451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269869, 35.466866, 30.138840>,  <26.003935, 35.134411, 30.627008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269869, 35.466866, 30.138840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581411, 35.233582, 30.231148>,  <26.768337, 35.093613, 30.286531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581411, 35.233582, 30.231148>,  <26.269869, 35.466866, 30.138840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581411, 35.233582, 30.231148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153665, -0.179285, -0.971722,
		0.608089, 0.792292, -0.050018,
		0.778855, -0.583207, 0.230768,
		26.815067, 35.058620, 30.300379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537973, 35.529732, 29.502728>,  <26.269869, 35.466866, 30.138840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537973, 35.529732, 29.502728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687023, 35.217068, 29.702791>,  <26.776453, 35.029469, 29.822828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687023, 35.217068, 29.702791>,  <26.537973, 35.529732, 29.502728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687023, 35.217068, 29.702791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080951, -0.509539, -0.856631,
		0.924444, 0.359691, -0.126591,
		0.372626, -0.781660, 0.500158,
		26.798811, 34.982571, 29.852839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097527, 35.528046, 29.149923>,  <26.537973, 35.529732, 29.502728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097527, 35.528046, 29.149923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063129, 35.168884, 29.322609>,  <27.042492, 34.953388, 29.426220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063129, 35.168884, 29.322609>,  <27.097527, 35.528046, 29.149923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063129, 35.168884, 29.322609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244055, -0.439101, -0.864655,
		0.965941, 0.031008, 0.256897,
		-0.085993, -0.897902, 0.431714,
		27.037333, 34.899513, 29.452124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715740, 35.151966, 28.913858>,  <27.097527, 35.528046, 29.149923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715740, 35.151966, 28.913858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433510, 34.891613, 29.025946>,  <27.264172, 34.735401, 29.093199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433510, 34.891613, 29.025946>,  <27.715740, 35.151966, 28.913858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433510, 34.891613, 29.025946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170439, -0.539697, -0.824426,
		0.687835, -0.533933, 0.491731,
		-0.705574, -0.650879, 0.280219,
		27.221838, 34.696350, 29.110012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040289, 34.635216, 28.747997>,  <27.715740, 35.151966, 28.913858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040289, 34.635216, 28.747997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655134, 34.531803, 28.779007>,  <27.424042, 34.469757, 28.797613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655134, 34.531803, 28.779007>,  <28.040289, 34.635216, 28.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655134, 34.531803, 28.779007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077985, -0.541466, -0.837098,
		0.258394, -0.799985, 0.541532,
		-0.962886, -0.258532, 0.077525,
		27.366268, 34.454243, 28.802265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097876, 33.897511, 28.685041>,  <28.040289, 34.635216, 28.747997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097876, 33.897511, 28.685041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717955, 34.001137, 28.614882>,  <27.490002, 34.063313, 28.572786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717955, 34.001137, 28.614882>,  <28.097876, 33.897511, 28.685041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717955, 34.001137, 28.614882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035298, -0.468321, -0.882853,
		-0.310857, -0.844726, 0.435667,
		-0.949801, 0.259063, -0.175398,
		27.433014, 34.078857, 28.562262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875933, 33.332500, 28.388174>,  <28.097876, 33.897511, 28.685041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875933, 33.332500, 28.388174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596437, 33.593811, 28.271559>,  <27.428740, 33.750599, 28.201590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596437, 33.593811, 28.271559>,  <27.875933, 33.332500, 28.388174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596437, 33.593811, 28.271559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090962, -0.323086, -0.941988,
		-0.709571, -0.684722, 0.166329,
		-0.698738, 0.653277, -0.291536,
		27.386816, 33.789795, 28.184097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398390, 32.929134, 27.927317>,  <27.875933, 33.332500, 28.388174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398390, 32.929134, 27.927317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305798, 33.306561, 27.832579>,  <27.250242, 33.533016, 27.775736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305798, 33.306561, 27.832579>,  <27.398390, 32.929134, 27.927317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305798, 33.306561, 27.832579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071608, -0.259322, -0.963133,
		-0.970201, -0.205985, 0.127595,
		-0.231479, 0.943569, -0.236844,
		27.236353, 33.589630, 27.761526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682634, 33.088722, 27.644758>,  <27.398390, 32.929134, 27.927317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682634, 33.088722, 27.644758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925360, 33.368370, 27.493490>,  <27.070995, 33.536160, 27.402729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925360, 33.368370, 27.493490>,  <26.682634, 33.088722, 27.644758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925360, 33.368370, 27.493490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116979, -0.392048, -0.912477,
		-0.786188, 0.597943, -0.156119,
		0.606815, 0.699116, -0.378171,
		27.107405, 33.578106, 27.380039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367924, 33.383064, 26.952303>,  <26.682634, 33.088722, 27.644758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367924, 33.383064, 26.952303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762337, 33.444027, 26.925423>,  <26.998983, 33.480606, 26.909294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762337, 33.444027, 26.925423>,  <26.367924, 33.383064, 26.952303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762337, 33.444027, 26.925423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048077, -0.125857, -0.990883,
		-0.159476, 0.980271, -0.116772,
		0.986030, 0.152408, -0.067200,
		27.058146, 33.489750, 26.905262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471083, 33.853165, 26.395649>,  <26.367924, 33.383064, 26.952303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471083, 33.853165, 26.395649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813757, 33.654480, 26.451324>,  <27.019361, 33.535271, 26.484730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813757, 33.654480, 26.451324>,  <26.471083, 33.853165, 26.395649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813757, 33.654480, 26.451324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008248, -0.282981, -0.959090,
		0.515776, 0.820489, -0.246522,
		0.856684, -0.496709, 0.139188,
		27.070763, 33.505466, 26.493080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168903, 34.027237, 26.009859>,  <26.471083, 33.853165, 26.395649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168903, 34.027237, 26.009859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106071, 33.640610, 26.090933>,  <27.068373, 33.408634, 26.139578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.106071, 33.640610, 26.090933>,  <27.168903, 34.027237, 26.009859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.106071, 33.640610, 26.090933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057178, -0.195987, -0.978938,
		0.985929, -0.165361, -0.024481,
		-0.157080, -0.966563, 0.202685,
		27.058947, 33.350639, 26.151739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797407, 33.484573, 25.994780>,  <27.168903, 34.027237, 26.009859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.797407, 33.484573, 25.994780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950363, 33.853771, 25.977497>,  <28.042137, 34.075291, 25.967129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950363, 33.853771, 25.977497>,  <27.797407, 33.484573, 25.994780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950363, 33.853771, 25.977497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897428, -0.382118, -0.220473,
		-0.220004, 0.045533, -0.974436,
		0.382388, 0.922991, -0.043205,
		28.065079, 34.130669, 25.964535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163836, 33.619923, 25.370945>,  <27.797407, 33.484573, 25.994780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163836, 33.619923, 25.370945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316328, 33.835697, 25.671257>,  <28.407824, 33.965160, 25.851444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316328, 33.835697, 25.671257>,  <28.163836, 33.619923, 25.370945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316328, 33.835697, 25.671257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892140, -0.427586, -0.145793,
		0.242377, 0.725382, -0.644262,
		0.381233, 0.539436, 0.750780,
		28.430698, 33.997528, 25.896490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026621, 34.343578, 25.150839>,  <28.163836, 33.619923, 25.370945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026621, 34.343578, 25.150839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654522, 34.481434, 25.100466>,  <27.431263, 34.564148, 25.070242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.654522, 34.481434, 25.100466>,  <28.026621, 34.343578, 25.150839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.654522, 34.481434, 25.100466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130590, 0.009767, 0.991388,
		0.342904, 0.938683, 0.035921,
		-0.930249, 0.344642, -0.125932,
		27.375446, 34.584827, 25.062687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853720, 34.928478, 25.694845>,  <28.026621, 34.343578, 25.150839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853720, 34.928478, 25.694845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511930, 34.741993, 25.603178>,  <27.306856, 34.630100, 25.548178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511930, 34.741993, 25.603178>,  <27.853720, 34.928478, 25.694845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511930, 34.741993, 25.603178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006327, -0.431760, 0.901966,
		-0.519456, 0.772157, 0.365978,
		-0.854474, -0.466216, -0.229166,
		27.255589, 34.602127, 25.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626049, 35.002426, 25.789589>,  <27.853720, 34.928478, 25.694845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626049, 35.002426, 25.789589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007915, 35.118160, 25.761599>,  <29.237036, 35.187599, 25.744804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007915, 35.118160, 25.761599>,  <28.626049, 35.002426, 25.789589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007915, 35.118160, 25.761599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084049, -0.036489, 0.995793,
		0.285562, -0.956533, -0.059153,
		0.954668, 0.289332, -0.069975,
		29.294315, 35.204960, 25.740606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039753, 34.703285, 26.249132>,  <28.626049, 35.002426, 25.789589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039753, 34.703285, 26.249132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274963, 35.013214, 26.156292>,  <29.416090, 35.199173, 26.100588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274963, 35.013214, 26.156292>,  <29.039753, 34.703285, 26.249132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274963, 35.013214, 26.156292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372935, -0.005089, 0.927843,
		0.717736, -0.632154, -0.291953,
		0.588026, 0.774826, -0.232100,
		29.451370, 35.245663, 26.086662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759985, 34.591949, 26.453262>,  <29.039753, 34.703285, 26.249132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759985, 34.591949, 26.453262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712671, 34.988892, 26.439142>,  <29.684282, 35.227055, 26.430670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.712671, 34.988892, 26.439142>,  <29.759985, 34.591949, 26.453262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712671, 34.988892, 26.439142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336905, 0.073547, 0.938662,
		0.934079, 0.099137, -0.343028,
		-0.118285, 0.992352, -0.035299,
		29.677185, 35.286598, 26.428553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235407, 35.007812, 26.860268>,  <29.759985, 34.591949, 26.453262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235407, 35.007812, 26.860268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973305, 35.306866, 26.817034>,  <29.816044, 35.486298, 26.791094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973305, 35.306866, 26.817034>,  <30.235407, 35.007812, 26.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973305, 35.306866, 26.817034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215721, 0.322315, 0.921725,
		0.723952, 0.580648, -0.372479,
		-0.655254, 0.747637, -0.108083,
		29.776730, 35.531158, 26.784609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579359, 35.542755, 27.027878>,  <30.235407, 35.007812, 26.860268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579359, 35.542755, 27.027878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187897, 35.602890, 27.083925>,  <29.953020, 35.638973, 27.117554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187897, 35.602890, 27.083925>,  <30.579359, 35.542755, 27.027878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187897, 35.602890, 27.083925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160922, 0.136528, 0.977479,
		0.127823, 0.979162, -0.157807,
		-0.978655, 0.150339, 0.140117,
		29.894300, 35.647991, 27.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605824, 35.997696, 27.476969>,  <30.579359, 35.542755, 27.027878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605824, 35.997696, 27.476969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225071, 35.876698, 27.496620>,  <29.996618, 35.804096, 27.508411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225071, 35.876698, 27.496620>,  <30.605824, 35.997696, 27.476969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225071, 35.876698, 27.496620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033929, 0.263344, 0.964105,
		-0.304578, 0.916048, -0.260937,
		-0.951883, -0.302498, 0.049128,
		29.939507, 35.785950, 27.511358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254683, 36.431400, 27.884130>,  <30.605824, 35.997696, 27.476969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254683, 36.431400, 27.884130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031324, 36.099571, 27.884890>,  <29.897310, 35.900475, 27.885345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031324, 36.099571, 27.884890>,  <30.254683, 36.431400, 27.884130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031324, 36.099571, 27.884890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177261, 0.121553, 0.976629,
		-0.810415, 0.545009, -0.214925,
		-0.558396, -0.829572, 0.001900,
		29.863806, 35.850700, 27.885460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580330, 36.550446, 28.408508>,  <30.254683, 36.431400, 27.884130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580330, 36.550446, 28.408508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606682, 36.153522, 28.366600>,  <29.622494, 35.915367, 28.341455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606682, 36.153522, 28.366600>,  <29.580330, 36.550446, 28.408508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606682, 36.153522, 28.366600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126646, -0.112465, 0.985552,
		-0.989758, -0.051658, -0.133082,
		0.065879, -0.992312, -0.104771,
		29.626446, 35.855827, 28.335169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070593, 36.269226, 28.885778>,  <29.580330, 36.550446, 28.408508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070593, 36.269226, 28.885778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287546, 35.943867, 28.801678>,  <29.417717, 35.748650, 28.751217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287546, 35.943867, 28.801678>,  <29.070593, 36.269226, 28.885778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287546, 35.943867, 28.801678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047464, -0.220195, 0.974300,
		-0.838790, -0.538423, -0.080823,
		0.542382, -0.813397, -0.210254,
		29.450260, 35.699848, 28.738602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714113, 35.701096, 29.185076>,  <29.070593, 36.269226, 28.885778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714113, 35.701096, 29.185076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103752, 35.618027, 29.149288>,  <29.337536, 35.568184, 29.127815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103752, 35.618027, 29.149288>,  <28.714113, 35.701096, 29.185076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103752, 35.618027, 29.149288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098833, 0.035138, 0.994483,
		-0.203384, -0.977567, 0.054753,
		0.974098, -0.207674, -0.089469,
		29.395981, 35.555725, 29.122448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793518, 35.077679, 29.631239>,  <28.714113, 35.701096, 29.185076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793518, 35.077679, 29.631239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157856, 35.234520, 29.579681>,  <29.376459, 35.328625, 29.548746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157856, 35.234520, 29.579681>,  <28.793518, 35.077679, 29.631239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157856, 35.234520, 29.579681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193861, -0.130720, 0.972281,
		0.364384, -0.910587, -0.195079,
		0.910847, 0.392101, -0.128895,
		29.431110, 35.352150, 29.541012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266460, 34.604908, 29.787750>,  <28.793518, 35.077679, 29.631239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266460, 34.604908, 29.787750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459696, 34.950550, 29.844234>,  <29.575638, 35.157936, 29.878124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459696, 34.950550, 29.844234>,  <29.266460, 34.604908, 29.787750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459696, 34.950550, 29.844234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247878, -0.289655, 0.924476,
		0.839750, -0.411602, -0.354123,
		0.483090, 0.864108, 0.141211,
		29.604624, 35.209782, 29.886599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760857, 34.352520, 30.236147>,  <29.266460, 34.604908, 29.787750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760857, 34.352520, 30.236147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773600, 34.751709, 30.258192>,  <29.781244, 34.991222, 30.271420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773600, 34.751709, 30.258192>,  <29.760857, 34.352520, 30.236147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773600, 34.751709, 30.258192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079917, -0.057508, 0.995141,
		0.996292, -0.027297, -0.081586,
		0.031856, 0.997972, 0.055113,
		29.783157, 35.051102, 30.274727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285028, 34.524082, 30.764732>,  <29.760857, 34.352520, 30.236147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285028, 34.524082, 30.764732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069443, 34.859692, 30.734898>,  <29.940092, 35.061058, 30.716997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069443, 34.859692, 30.734898>,  <30.285028, 34.524082, 30.764732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069443, 34.859692, 30.734898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116057, 0.161669, 0.979997,
		0.834294, 0.519528, -0.184508,
		-0.538965, 0.839019, -0.074585,
		29.907753, 35.111397, 30.712523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640038, 35.009186, 31.218977>,  <30.285028, 34.524082, 30.764732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640038, 35.009186, 31.218977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276638, 35.175137, 31.198973>,  <30.058598, 35.274708, 31.186970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276638, 35.175137, 31.198973>,  <30.640038, 35.009186, 31.218977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276638, 35.175137, 31.198973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015839, 0.153777, 0.987979,
		0.417583, 0.896787, -0.146278,
		-0.908501, 0.414880, -0.050010,
		30.004087, 35.299603, 31.183969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603880, 35.546898, 31.759573>,  <30.640038, 35.009186, 31.218977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603880, 35.546898, 31.759573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215052, 35.517784, 31.670330>,  <29.981754, 35.500317, 31.616785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215052, 35.517784, 31.670330>,  <30.603880, 35.546898, 31.759573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215052, 35.517784, 31.670330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233985, 0.373694, 0.897554,
		0.018047, 0.924692, -0.380288,
		-0.972073, -0.072783, -0.223108,
		29.923429, 35.495949, 31.603397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306866, 36.244297, 31.857512>,  <30.603880, 35.546898, 31.759573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306866, 36.244297, 31.857512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042427, 35.946106, 31.891466>,  <29.883764, 35.767189, 31.911839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042427, 35.946106, 31.891466>,  <30.306866, 36.244297, 31.857512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042427, 35.946106, 31.891466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115718, 0.213091, 0.970155,
		-0.741322, 0.631545, -0.227140,
		-0.661099, -0.745481, 0.084888,
		29.844097, 35.722462, 31.916933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679529, 36.575684, 32.099689>,  <30.306866, 36.244297, 31.857512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679529, 36.575684, 32.099689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655981, 36.182583, 32.169819>,  <29.641851, 35.946724, 32.211899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655981, 36.182583, 32.169819>,  <29.679529, 36.575684, 32.099689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655981, 36.182583, 32.169819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382922, 0.184427, 0.905184,
		-0.921903, -0.013845, -0.387173,
		-0.058873, -0.982749, 0.175325,
		29.638319, 35.887756, 32.222416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028465, 36.544228, 32.398079>,  <29.679529, 36.575684, 32.099689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028465, 36.544228, 32.398079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239397, 36.226761, 32.519417>,  <29.365955, 36.036282, 32.592220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239397, 36.226761, 32.519417>,  <29.028465, 36.544228, 32.398079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239397, 36.226761, 32.519417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175436, 0.247616, 0.952842,
		-0.831353, -0.555677, -0.008663,
		0.527327, -0.793668, 0.303342,
		29.397594, 35.988659, 32.610420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557777, 36.075516, 32.862034>,  <29.028465, 36.544228, 32.398079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557777, 36.075516, 32.862034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941236, 35.997520, 32.944954>,  <29.171312, 35.950722, 32.994705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941236, 35.997520, 32.944954>,  <28.557777, 36.075516, 32.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941236, 35.997520, 32.944954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165306, 0.211420, 0.963315,
		-0.231666, -0.957747, 0.170444,
		0.958647, -0.194992, 0.207300,
		29.228830, 35.939022, 33.007145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540546, 35.717422, 33.513992>,  <28.557777, 36.075516, 32.862034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540546, 35.717422, 33.513992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927551, 35.815136, 33.487934>,  <29.159754, 35.873764, 33.472298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927551, 35.815136, 33.487934>,  <28.540546, 35.717422, 33.513992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927551, 35.815136, 33.487934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026700, 0.157519, 0.987155,
		0.251410, -0.956824, 0.145880,
		0.967512, 0.244285, -0.065149,
		29.217806, 35.888420, 33.468388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811714, 35.299961, 34.130909>,  <28.540546, 35.717422, 33.513992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811714, 35.299961, 34.130909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074032, 35.571529, 33.998852>,  <29.231422, 35.734470, 33.919617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074032, 35.571529, 33.998852>,  <28.811714, 35.299961, 34.130909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074032, 35.571529, 33.998852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172531, 0.290959, 0.941050,
		0.734960, -0.674097, 0.073674,
		0.655795, 0.678923, -0.330146,
		29.270771, 35.775208, 33.899807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420858, 35.288872, 34.620358>,  <28.811714, 35.299961, 34.130909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420858, 35.288872, 34.620358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414009, 35.655251, 34.459984>,  <29.409901, 35.875076, 34.363762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414009, 35.655251, 34.459984>,  <29.420858, 35.288872, 34.620358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414009, 35.655251, 34.459984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149337, 0.398835, 0.904782,
		0.988638, -0.044383, -0.143613,
		-0.017121, 0.915948, -0.400931,
		29.408873, 35.930035, 34.339703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.886309, 35.662495, 35.013111>,  <29.420858, 35.288872, 34.620358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.886309, 35.662495, 35.013111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668945, 35.939877, 34.823868>,  <29.538528, 36.106304, 34.710323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668945, 35.939877, 34.823868>,  <29.886309, 35.662495, 35.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668945, 35.939877, 34.823868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317088, 0.352272, 0.880545,
		0.777280, 0.628510, 0.028459,
		-0.543407, 0.693455, -0.473107,
		29.505924, 36.147911, 34.681934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182323, 36.359119, 35.235401>,  <29.886309, 35.662495, 35.013111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182323, 36.359119, 35.235401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808294, 36.433697, 35.114819>,  <29.583876, 36.478443, 35.042469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808294, 36.433697, 35.114819>,  <30.182323, 36.359119, 35.235401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808294, 36.433697, 35.114819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235973, 0.307166, 0.921936,
		0.264485, 0.933214, -0.243227,
		-0.935075, 0.186443, -0.301454,
		29.527771, 36.489628, 35.024384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735861, 36.049057, 34.687641>,  <30.182323, 36.359119, 35.235401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735861, 36.049057, 34.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068411, 35.994164, 34.472240>,  <31.267941, 35.961227, 34.343002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068411, 35.994164, 34.472240>,  <30.735861, 36.049057, 34.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068411, 35.994164, 34.472240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051172, 0.983818, -0.171709,
		0.553348, 0.115198, 0.824945,
		0.831377, -0.137229, -0.538499,
		31.317823, 35.952995, 34.310692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204931, 36.665524, 34.941589>,  <30.735861, 36.049057, 34.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204931, 36.665524, 34.941589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319439, 36.535488, 34.581062>,  <31.388144, 36.457466, 34.364746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319439, 36.535488, 34.581062>,  <31.204931, 36.665524, 34.941589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319439, 36.535488, 34.581062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319288, 0.919283, -0.230162,
		0.903386, -0.221890, 0.366959,
		0.286268, -0.325091, -0.901314,
		31.405319, 36.437962, 34.310669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919233, 36.915783, 34.747658>,  <31.204931, 36.665524, 34.941589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919233, 36.915783, 34.747658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691010, 36.868870, 34.422523>,  <31.554075, 36.840721, 34.227444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691010, 36.868870, 34.422523>,  <31.919233, 36.915783, 34.747658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691010, 36.868870, 34.422523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261642, 0.912218, -0.315280,
		0.778463, -0.392558, -0.489789,
		-0.570560, -0.117284, -0.812838,
		31.519842, 36.833683, 34.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399429, 37.073135, 34.193897>,  <31.919233, 36.915783, 34.747658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399429, 37.073135, 34.193897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013062, 37.123619, 34.103500>,  <31.781240, 37.153912, 34.049263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013062, 37.123619, 34.103500>,  <32.399429, 37.073135, 34.193897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013062, 37.123619, 34.103500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198530, 0.921457, -0.333920,
		0.166098, -0.367406, -0.915109,
		-0.965918, 0.126213, -0.225993,
		31.723286, 37.161484, 34.035702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633175, 37.513702, 34.646286>,  <32.399429, 37.073135, 34.193897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633175, 37.513702, 34.646286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583298, 37.147190, 34.798538>,  <32.553371, 36.927284, 34.889889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583298, 37.147190, 34.798538>,  <32.633175, 37.513702, 34.646286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583298, 37.147190, 34.798538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057660, 0.376284, 0.924708,
		-0.990518, 0.137256, 0.005912,
		-0.124697, -0.916281, 0.380630,
		32.545887, 36.872307, 34.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687634, 37.580112, 35.375706>,  <32.633175, 37.513702, 34.646286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687634, 37.580112, 35.375706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581829, 37.198406, 35.431438>,  <32.518345, 36.969383, 35.464878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581829, 37.198406, 35.431438>,  <32.687634, 37.580112, 35.375706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581829, 37.198406, 35.431438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199434, 0.087226, 0.976022,
		-0.943536, 0.285956, 0.167241,
		-0.264511, -0.954265, 0.139330,
		32.502476, 36.912128, 35.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341972, 37.586983, 35.879341>,  <32.687634, 37.580112, 35.375706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341972, 37.586983, 35.879341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441204, 37.199863, 35.862286>,  <32.500744, 36.967590, 35.852051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441204, 37.199863, 35.862286>,  <32.341972, 37.586983, 35.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441204, 37.199863, 35.862286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194543, 0.006652, 0.980871,
		-0.949006, -0.251625, 0.189929,
		0.248075, -0.967802, -0.042639,
		32.515625, 36.909523, 35.849495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237591, 37.378510, 36.564621>,  <32.341972, 37.586983, 35.879341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237591, 37.378510, 36.564621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419872, 37.053928, 36.418266>,  <32.529243, 36.859180, 36.330452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419872, 37.053928, 36.418266>,  <32.237591, 37.378510, 36.564621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419872, 37.053928, 36.418266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407949, -0.174949, 0.896086,
		-0.791144, -0.557616, 0.251306,
		0.455706, -0.811454, -0.365888,
		32.556583, 36.810493, 36.308498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010765, 36.760323, 36.933506>,  <32.237591, 37.378510, 36.564621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010765, 36.760323, 36.933506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366734, 36.669968, 36.775002>,  <32.580315, 36.615753, 36.679897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366734, 36.669968, 36.775002>,  <32.010765, 36.760323, 36.933506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366734, 36.669968, 36.775002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352349, -0.211241, 0.911717,
		-0.289654, -0.950974, -0.108394,
		0.889916, -0.225890, -0.396262,
		32.633709, 36.602203, 36.656124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191833, 36.065044, 37.068520>,  <32.010765, 36.760323, 36.933506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191833, 36.065044, 37.068520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548645, 36.229633, 36.993706>,  <32.762730, 36.328384, 36.948818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548645, 36.229633, 36.993706>,  <32.191833, 36.065044, 37.068520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548645, 36.229633, 36.993706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385221, -0.475677, 0.790782,
		0.236417, -0.777447, -0.582824,
		0.892027, 0.411471, -0.187031,
		32.816254, 36.353073, 36.937595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659050, 35.662212, 37.423840>,  <32.191833, 36.065044, 37.068520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659050, 35.662212, 37.423840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913013, 35.956242, 37.328709>,  <33.065392, 36.132660, 37.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913013, 35.956242, 37.328709>,  <32.659050, 35.662212, 37.423840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913013, 35.956242, 37.328709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610447, -0.288622, 0.737598,
		0.473544, -0.613490, -0.631970,
		0.634910, 0.735070, -0.237828,
		33.103485, 36.176762, 37.257359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265076, 35.365948, 37.188641>,  <32.659050, 35.662212, 37.423840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265076, 35.365948, 37.188641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 35.731968, 37.333187>,  <33.379726, 35.951580, 37.419914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336731, 35.731968, 37.333187>,  <33.265076, 35.365948, 37.188641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336731, 35.731968, 37.333187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553245, -0.397427, 0.732101,
		0.813529, 0.068777, -0.577443,
		0.179140, 0.915053, 0.361369,
		33.390472, 36.006485, 37.441597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031303, 35.389366, 37.372063>,  <33.265076, 35.365948, 37.188641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031303, 35.389366, 37.372063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836926, 35.672985, 37.576454>,  <33.720299, 35.843159, 37.699089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836926, 35.672985, 37.576454>,  <34.031303, 35.389366, 37.372063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836926, 35.672985, 37.576454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424419, -0.319644, 0.847170,
		0.764019, 0.628550, -0.145605,
		-0.485947, 0.709051, 0.510982,
		33.691143, 35.885700, 37.729748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495884, 35.737354, 37.745705>,  <34.031303, 35.389366, 37.372063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495884, 35.737354, 37.745705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161491, 35.808983, 37.953190>,  <33.960857, 35.851959, 38.077682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161491, 35.808983, 37.953190>,  <34.495884, 35.737354, 37.745705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161491, 35.808983, 37.953190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426514, -0.382735, 0.819512,
		0.345283, 0.906337, 0.243583,
		-0.835982, 0.179072, 0.518717,
		33.910698, 35.862705, 38.108807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695953, 36.134712, 38.312531>,  <34.495884, 35.737354, 37.745705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695953, 36.134712, 38.312531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 35.999908, 38.414753>,  <34.116016, 35.919025, 38.476086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333492, 35.999908, 38.414753>,  <34.695953, 36.134712, 38.312531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333492, 35.999908, 38.414753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346017, -0.243226, 0.906153,
		-0.243226, 0.909541, 0.337012,
		-0.906153, -0.337012, 0.255558,
		34.061646, 35.898804, 38.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570019, 36.305931, 39.038754>,  <34.695953, 36.134712, 38.312531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570019, 36.305931, 39.038754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282509, 36.031460, 38.993992>,  <34.110004, 35.866776, 38.967136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282509, 36.031460, 38.993992>,  <34.570019, 36.305931, 39.038754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282509, 36.031460, 38.993992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144845, -0.305219, 0.941202,
		-0.679987, 0.660304, 0.318773,
		-0.718775, -0.686178, -0.111903,
		34.066875, 35.825607, 38.960423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132740, 36.288727, 39.681381>,  <34.570019, 36.305931, 39.038754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132740, 36.288727, 39.681381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091469, 35.936310, 39.496723>,  <34.066708, 35.724861, 39.385929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091469, 35.936310, 39.496723>,  <34.132740, 36.288727, 39.681381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091469, 35.936310, 39.496723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139712, -0.446683, 0.883716,
		-0.984802, 0.155677, -0.077005,
		-0.103178, -0.881044, -0.461645,
		34.060516, 35.671997, 39.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754681, 35.889721, 40.127415>,  <34.132740, 36.288727, 39.681381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754681, 35.889721, 40.127415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898224, 35.610954, 39.879051>,  <33.984348, 35.443695, 39.730034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898224, 35.610954, 39.879051>,  <33.754681, 35.889721, 40.127415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898224, 35.610954, 39.879051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044149, -0.651800, 0.757104,
		-0.932348, -0.299104, -0.203135,
		0.358856, -0.696917, -0.620910,
		34.005882, 35.401878, 39.692780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393108, 35.223133, 40.372078>,  <33.754681, 35.889721, 40.127415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393108, 35.223133, 40.372078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717342, 35.126057, 40.158894>,  <33.911884, 35.067810, 40.030983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717342, 35.126057, 40.158894>,  <33.393108, 35.223133, 40.372078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717342, 35.126057, 40.158894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263543, -0.661544, 0.702071,
		-0.522963, -0.709549, -0.472281,
		0.810589, -0.242691, -0.532960,
		33.960518, 35.053249, 39.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379688, 34.542534, 40.234711>,  <33.393108, 35.223133, 40.372078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379688, 34.542534, 40.234711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763664, 34.644489, 40.188156>,  <33.994049, 34.705662, 40.160225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763664, 34.644489, 40.188156>,  <33.379688, 34.542534, 40.234711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763664, 34.644489, 40.188156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266879, -0.705138, 0.656929,
		0.085373, -0.661675, -0.744915,
		0.959942, 0.254885, -0.116387,
		34.051647, 34.720955, 40.153240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733471, 33.930412, 40.138939>,  <33.379688, 34.542534, 40.234711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733471, 33.930412, 40.138939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973961, 34.208694, 40.296173>,  <34.118256, 34.375664, 40.390514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973961, 34.208694, 40.296173>,  <33.733471, 33.930412, 40.138939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973961, 34.208694, 40.296173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196166, -0.605373, 0.771390,
		0.774628, -0.386668, -0.500439,
		0.601224, 0.695710, 0.393088,
		34.154327, 34.417408, 40.414101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357063, 33.638733, 40.239086>,  <33.733471, 33.930412, 40.138939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357063, 33.638733, 40.239086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348320, 33.957249, 40.480896>,  <34.343075, 34.148357, 40.625980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348320, 33.957249, 40.480896>,  <34.357063, 33.638733, 40.239086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348320, 33.957249, 40.480896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095265, -0.600258, 0.794113,
		0.995212, 0.074948, -0.062738,
		-0.021858, 0.796287, 0.604524,
		34.341763, 34.196136, 40.662254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857021, 33.382519, 40.687553>,  <34.357063, 33.638733, 40.239086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857021, 33.382519, 40.687553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663219, 33.687336, 40.859386>,  <34.546940, 33.870228, 40.962486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663219, 33.687336, 40.859386>,  <34.857021, 33.382519, 40.687553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663219, 33.687336, 40.859386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121174, -0.427871, 0.895680,
		0.866356, 0.486015, 0.114965,
		-0.484504, 0.762047, 0.429581,
		34.517868, 33.915951, 40.988262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160328, 33.467068, 41.268330>,  <34.857021, 33.382519, 40.687553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160328, 33.467068, 41.268330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811462, 33.643368, 41.353241>,  <34.602142, 33.749149, 41.404190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811462, 33.643368, 41.353241>,  <35.160328, 33.467068, 41.268330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811462, 33.643368, 41.353241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005692, -0.443044, 0.896482,
		0.489176, 0.780673, 0.388917,
		-0.872167, 0.440751, 0.212283,
		34.549812, 33.775593, 41.416927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199970, 33.719536, 41.959282>,  <35.160328, 33.467068, 41.268330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199970, 33.719536, 41.959282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807404, 33.706631, 41.883625>,  <34.571861, 33.698887, 41.838230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807404, 33.706631, 41.883625>,  <35.199970, 33.719536, 41.959282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807404, 33.706631, 41.883625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157282, -0.429329, 0.889347,
		-0.109898, 0.902572, 0.416278,
		-0.981420, -0.032265, -0.189141,
		34.512978, 33.696953, 41.826881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950962, 33.960663, 42.552929>,  <35.199970, 33.719536, 41.959282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950962, 33.960663, 42.552929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618076, 33.810642, 42.389587>,  <34.418343, 33.720631, 42.291584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618076, 33.810642, 42.389587>,  <34.950962, 33.960663, 42.552929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618076, 33.810642, 42.389587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342791, -0.230838, 0.910609,
		-0.435787, 0.897804, 0.063543,
		-0.832216, -0.375050, -0.408355,
		34.368412, 33.698128, 42.267082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349319, 34.242050, 42.919121>,  <34.950962, 33.960663, 42.552929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349319, 34.242050, 42.919121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196648, 33.920765, 42.736183>,  <34.105045, 33.727993, 42.626419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196648, 33.920765, 42.736183>,  <34.349319, 34.242050, 42.919121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196648, 33.920765, 42.736183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404766, -0.299585, 0.863952,
		-0.830954, 0.514870, -0.210770,
		-0.381679, -0.803217, -0.457344,
		34.082146, 33.679798, 42.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609509, 34.238270, 43.115585>,  <34.349319, 34.242050, 42.919121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609509, 34.238270, 43.115585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684326, 33.866695, 42.987782>,  <33.729218, 33.643749, 42.911098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684326, 33.866695, 42.987782>,  <33.609509, 34.238270, 43.115585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684326, 33.866695, 42.987782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501788, -0.369964, 0.781879,
		-0.844524, 0.014076, -0.535332,
		0.187047, -0.928939, -0.319507,
		33.740440, 33.588013, 42.891930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961800, 33.827732, 43.152336>,  <33.609509, 34.238270, 43.115585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961800, 33.827732, 43.152336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269974, 33.573013, 43.164459>,  <33.454880, 33.420181, 43.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269974, 33.573013, 43.164459>,  <32.961800, 33.827732, 43.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269974, 33.573013, 43.164459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415538, -0.465547, 0.781405,
		-0.483491, -0.614613, -0.623288,
		0.770431, -0.636803, 0.030307,
		33.501102, 33.381973, 43.173553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628315, 33.152126, 43.292145>,  <32.961800, 33.827732, 43.152336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628315, 33.152126, 43.292145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010799, 33.079597, 43.384037>,  <33.240292, 33.036079, 43.439175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010799, 33.079597, 43.384037>,  <32.628315, 33.152126, 43.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010799, 33.079597, 43.384037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289483, -0.470421, 0.833609,
		-0.043082, -0.863612, -0.502313,
		0.956213, -0.181325, 0.229734,
		33.297665, 33.025200, 43.452957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674809, 32.364403, 43.491333>,  <32.628315, 33.152126, 43.292145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674809, 32.364403, 43.491333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010052, 32.534904, 43.627502>,  <33.211197, 32.637203, 43.709206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010052, 32.534904, 43.627502>,  <32.674809, 32.364403, 43.491333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010052, 32.534904, 43.627502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182510, -0.368984, 0.911340,
		0.514073, -0.825930, -0.231451,
		0.838105, 0.426253, 0.340425,
		33.261482, 32.662781, 43.729630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102848, 31.839489, 43.727497>,  <32.674809, 32.364403, 43.491333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102848, 31.839489, 43.727497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155098, 32.184845, 43.922432>,  <33.186447, 32.392059, 44.039394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155098, 32.184845, 43.922432>,  <33.102848, 31.839489, 43.727497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155098, 32.184845, 43.922432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112774, -0.475417, 0.872502,
		0.984997, -0.168931, 0.035265,
		0.130627, 0.863389, 0.487336,
		33.194286, 32.443863, 44.068634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557301, 31.675493, 44.361813>,  <33.102848, 31.839489, 43.727497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557301, 31.675493, 44.361813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411579, 32.037838, 44.448250>,  <33.324146, 32.255245, 44.500111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411579, 32.037838, 44.448250>,  <33.557301, 31.675493, 44.361813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411579, 32.037838, 44.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224980, -0.310770, 0.923475,
		0.903696, 0.287810, 0.317016,
		-0.364305, 0.905863, 0.216090,
		33.302288, 32.309597, 44.513077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870747, 31.790855, 44.993397>,  <33.557301, 31.675493, 44.361813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870747, 31.790855, 44.993397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563187, 32.046551, 44.988190>,  <33.378651, 32.199970, 44.985065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563187, 32.046551, 44.988190>,  <33.870747, 31.790855, 44.993397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563187, 32.046551, 44.988190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200333, -0.221526, 0.954355,
		0.607178, 0.736409, 0.298392,
		-0.768897, 0.639241, -0.013021,
		33.332520, 32.238323, 44.984283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912830, 32.147377, 45.578758>,  <33.870747, 31.790855, 44.993397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912830, 32.147377, 45.578758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535698, 32.246666, 45.489807>,  <33.309418, 32.306240, 45.436436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535698, 32.246666, 45.489807>,  <33.912830, 32.147377, 45.578758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535698, 32.246666, 45.489807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266834, -0.162475, 0.949948,
		0.199667, 0.954981, 0.219421,
		-0.942832, 0.248222, -0.222380,
		33.252850, 32.321133, 45.423092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781170, 32.628704, 46.058483>,  <33.912830, 32.147377, 45.578758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781170, 32.628704, 46.058483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443459, 32.450184, 45.939819>,  <33.240829, 32.343071, 45.868622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443459, 32.450184, 45.939819>,  <33.781170, 32.628704, 46.058483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443459, 32.450184, 45.939819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210459, -0.232966, 0.949439,
		-0.492844, 0.864028, 0.102761,
		-0.844281, -0.446298, -0.296659,
		33.190174, 32.316296, 45.850822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439003, 32.757805, 46.591877>,  <33.781170, 32.628704, 46.058483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439003, 32.757805, 46.591877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250790, 32.474373, 46.381535>,  <33.137863, 32.304314, 46.255329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250790, 32.474373, 46.381535>,  <33.439003, 32.757805, 46.591877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250790, 32.474373, 46.381535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278799, -0.446034, 0.850485,
		-0.837182, 0.546786, 0.012322,
		-0.470529, -0.708575, -0.525854,
		33.109631, 32.261799, 46.223778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743900, 32.718513, 46.916683>,  <33.439003, 32.757805, 46.591877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743900, 32.718513, 46.916683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797440, 32.366695, 46.734043>,  <32.829563, 32.155605, 46.624458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797440, 32.366695, 46.734043>,  <32.743900, 32.718513, 46.916683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797440, 32.366695, 46.734043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185177, -0.474825, 0.860378,
		-0.973547, -0.030608, -0.226426,
		0.133847, -0.879548, -0.456597,
		32.837593, 32.102833, 46.597065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217598, 32.264603, 47.221195>,  <32.743900, 32.718513, 46.916683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217598, 32.264603, 47.221195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485821, 32.026287, 47.044384>,  <32.646755, 31.883297, 46.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485821, 32.026287, 47.044384>,  <32.217598, 32.264603, 47.221195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485821, 32.026287, 47.044384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126561, -0.678977, 0.723168,
		-0.730988, -0.428976, -0.530693,
		0.670551, -0.595793, -0.442033,
		32.686989, 31.847549, 46.911774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923298, 31.540201, 47.121407>,  <32.217598, 32.264603, 47.221195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923298, 31.540201, 47.121407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319386, 31.494555, 47.153522>,  <32.557037, 31.467167, 47.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319386, 31.494555, 47.153522>,  <31.923298, 31.540201, 47.121407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319386, 31.494555, 47.153522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139199, -0.768238, 0.624847,
		-0.009627, -0.629911, -0.776608,
		0.990217, -0.114118, 0.080287,
		32.616451, 31.460320, 47.177608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883558, 31.013874, 47.526367>,  <31.923298, 31.540201, 47.121407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883558, 31.013874, 47.526367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278908, 31.074198, 47.518669>,  <32.516117, 31.110392, 47.514050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278908, 31.074198, 47.518669>,  <31.883558, 31.013874, 47.526367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278908, 31.074198, 47.518669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111324, -0.631730, 0.767153,
		0.103538, -0.760377, -0.641175,
		0.988376, 0.150808, -0.019240,
		32.575420, 31.119440, 47.512897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320522, 30.323805, 47.431896>,  <31.883558, 31.013874, 47.526367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320522, 30.323805, 47.431896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532181, 30.597664, 47.632401>,  <32.659176, 30.761980, 47.752705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532181, 30.597664, 47.632401>,  <32.320522, 30.323805, 47.431896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532181, 30.597664, 47.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098653, -0.636374, 0.765046,
		0.842778, -0.355368, -0.404275,
		0.529143, 0.684647, 0.501264,
		32.690926, 30.803059, 47.782780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924026, 29.998541, 47.606815>,  <32.320522, 30.323805, 47.431896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924026, 29.998541, 47.606815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887745, 30.284849, 47.883781>,  <32.865978, 30.456635, 48.049961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887745, 30.284849, 47.883781>,  <32.924026, 29.998541, 47.606815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887745, 30.284849, 47.883781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019485, -0.693875, 0.719831,
		0.995687, 0.078780, 0.048987,
		-0.090699, 0.715773, 0.692418,
		32.860535, 30.499580, 48.091507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433392, 29.878542, 48.111679>,  <32.924026, 29.998541, 47.606815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433392, 29.878542, 48.111679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163242, 30.112347, 48.291553>,  <33.001152, 30.252628, 48.399479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163242, 30.112347, 48.291553>,  <33.433392, 29.878542, 48.111679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163242, 30.112347, 48.291553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014014, -0.619828, 0.784612,
		0.737343, 0.523604, 0.426807,
		-0.675373, 0.584510, 0.449689,
		32.960632, 30.287699, 48.426460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618431, 29.950197, 48.770088>,  <33.433392, 29.878542, 48.111679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618431, 29.950197, 48.770088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235313, 30.062727, 48.793686>,  <33.005444, 30.130245, 48.807846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235313, 30.062727, 48.793686>,  <33.618431, 29.950197, 48.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235313, 30.062727, 48.793686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099947, -0.518375, 0.849293,
		0.269509, 0.807554, 0.524615,
		-0.957797, 0.281326, 0.058995,
		32.947975, 30.147125, 48.811386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587662, 29.951153, 49.448715>,  <33.618431, 29.950197, 48.770088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587662, 29.951153, 49.448715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203400, 30.006569, 49.352421>,  <32.972843, 30.039820, 49.294643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203400, 30.006569, 49.352421>,  <33.587662, 29.951153, 49.448715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203400, 30.006569, 49.352421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277702, -0.462291, 0.842121,
		0.005379, 0.875838, 0.482574,
		-0.960652, 0.138541, -0.240735,
		32.915203, 30.048132, 49.280201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270702, 30.175941, 50.044914>,  <33.587662, 29.951153, 49.448715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270702, 30.175941, 50.044914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002110, 30.007299, 49.801155>,  <32.840954, 29.906115, 49.654900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002110, 30.007299, 49.801155>,  <33.270702, 30.175941, 50.044914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002110, 30.007299, 49.801155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285911, -0.611296, 0.737952,
		-0.683645, 0.669753, 0.289932,
		-0.671479, -0.421603, -0.609399,
		32.800667, 29.880819, 49.618336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656010, 30.158709, 50.427326>,  <33.270702, 30.175941, 50.044914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656010, 30.158709, 50.427326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604534, 29.883200, 50.141941>,  <32.573647, 29.717894, 49.970711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604534, 29.883200, 50.141941>,  <32.656010, 30.158709, 50.427326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604534, 29.883200, 50.141941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227021, -0.679878, 0.697300,
		-0.965350, 0.251708, -0.068871,
		-0.128692, -0.688774, -0.713463,
		32.565926, 29.676567, 49.927902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966829, 29.822508, 50.546501>,  <32.656010, 30.158709, 50.427326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966829, 29.822508, 50.546501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237976, 29.591301, 50.364777>,  <32.400665, 29.452578, 50.255741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237976, 29.591301, 50.364777>,  <31.966829, 29.822508, 50.546501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237976, 29.591301, 50.364777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157945, -0.718019, 0.677865,
		-0.718019, -0.387746, -0.578015,
		-0.677865, 0.578015, 0.454309,
		32.441338, 29.417896, 50.228485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722284, 29.137403, 50.226906>,  <31.966829, 29.822508, 50.546501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722284, 29.137403, 50.226906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091206, 29.123320, 50.380848>,  <32.312557, 29.114870, 50.473213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091206, 29.123320, 50.380848>,  <31.722284, 29.137403, 50.226906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091206, 29.123320, 50.380848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295054, -0.707311, 0.642382,
		0.249598, -0.706025, -0.662744,
		0.922304, -0.035208, 0.384859,
		32.367897, 29.112757, 50.496307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881271, 28.444590, 50.396023>,  <31.722284, 29.137403, 50.226906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881271, 28.444590, 50.396023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095676, 28.669691, 50.647736>,  <32.224319, 28.804752, 50.798763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095676, 28.669691, 50.647736>,  <31.881271, 28.444590, 50.396023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095676, 28.669691, 50.647736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041522, -0.726935, 0.685450,
		0.843189, -0.393538, -0.366280,
		0.536012, 0.562755, 0.629283,
		32.256481, 28.838518, 50.836521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468254, 28.084652, 50.518475>,  <31.881271, 28.444590, 50.396023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468254, 28.084652, 50.518475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380253, 28.316206, 50.832542>,  <32.327454, 28.455139, 51.020985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380253, 28.316206, 50.832542>,  <32.468254, 28.084652, 50.518475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380253, 28.316206, 50.832542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047563, -0.797568, 0.601352,
		0.974339, 0.169643, 0.147932,
		-0.220001, 0.578885, 0.785170,
		32.314251, 28.489872, 51.068092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038429, 28.127306, 51.072998>,  <32.468254, 28.084652, 50.518475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038429, 28.127306, 51.072998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680973, 28.164999, 51.248512>,  <32.466499, 28.187614, 51.353821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680973, 28.164999, 51.248512>,  <33.038429, 28.127306, 51.072998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680973, 28.164999, 51.248512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196774, -0.796446, 0.571799,
		0.403348, 0.597323, 0.693192,
		-0.893639, 0.094232, 0.438783,
		32.412880, 28.193268, 51.380146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420551, 27.491524, 50.897789>,  <33.038429, 28.127306, 51.072998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420551, 27.491524, 50.897789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595482, 27.191267, 50.699684>,  <33.700439, 27.011114, 50.580822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595482, 27.191267, 50.699684>,  <33.420551, 27.491524, 50.897789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595482, 27.191267, 50.699684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384457, 0.341803, -0.857533,
		0.812981, 0.565430, -0.139109,
		0.437327, -0.750639, -0.495263,
		33.726681, 26.966076, 50.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709515, 27.793686, 50.209820>,  <33.420551, 27.491524, 50.897789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709515, 27.793686, 50.209820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654640, 27.403309, 50.142036>,  <33.621716, 27.169083, 50.101368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654640, 27.403309, 50.142036>,  <33.709515, 27.793686, 50.209820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654640, 27.403309, 50.142036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199720, 0.194815, -0.960291,
		0.970202, -0.097897, -0.221642,
		-0.137189, -0.975942, -0.169458,
		33.613483, 27.110527, 50.091198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104988, 27.638056, 49.585529>,  <33.709515, 27.793686, 50.209820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104988, 27.638056, 49.585529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817081, 27.362165, 49.617065>,  <33.644337, 27.196630, 49.635986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817081, 27.362165, 49.617065>,  <34.104988, 27.638056, 49.585529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817081, 27.362165, 49.617065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163758, 0.058325, -0.984775,
		0.674627, -0.721717, -0.154928,
		-0.719765, -0.689727, 0.078839,
		33.601151, 27.155247, 49.640717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078598, 27.427910, 48.924843>,  <34.104988, 27.638056, 49.585529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078598, 27.427910, 48.924843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740177, 27.274378, 49.072830>,  <33.537125, 27.182259, 49.161625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740177, 27.274378, 49.072830>,  <34.078598, 27.427910, 48.924843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740177, 27.274378, 49.072830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435780, 0.098178, -0.894683,
		0.307081, -0.918171, -0.250327,
		-0.846048, -0.383827, 0.369972,
		33.486362, 27.159229, 49.183823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876286, 26.782787, 48.613270>,  <34.078598, 27.427910, 48.924843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876286, 26.782787, 48.613270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568611, 27.006798, 48.736378>,  <33.384007, 27.141205, 48.810242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568611, 27.006798, 48.736378>,  <33.876286, 26.782787, 48.613270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568611, 27.006798, 48.736378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338410, 0.051555, -0.939585,
		-0.542061, -0.826868, 0.149863,
		-0.769187, 0.560028, 0.307766,
		33.337856, 27.174807, 48.828709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191399, 26.602869, 48.257229>,  <33.876286, 26.782787, 48.613270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191399, 26.602869, 48.257229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176273, 26.989029, 48.360435>,  <33.167198, 27.220724, 48.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176273, 26.989029, 48.360435>,  <33.191399, 26.602869, 48.257229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176273, 26.989029, 48.360435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146923, 0.250027, -0.957027,
		-0.988425, -0.074096, 0.132385,
		-0.037812, 0.965400, 0.258019,
		33.164928, 27.278648, 48.437840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773232, 26.877769, 47.792683>,  <33.191399, 26.602869, 48.257229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773232, 26.877769, 47.792683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932022, 27.219650, 47.926487>,  <33.027298, 27.424778, 48.006767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932022, 27.219650, 47.926487>,  <32.773232, 26.877769, 47.792683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932022, 27.219650, 47.926487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088704, 0.398478, -0.912878,
		-0.913531, 0.332722, 0.234003,
		0.396980, 0.854700, 0.334508,
		33.051117, 27.476061, 48.026840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281910, 27.468378, 47.743591>,  <32.773232, 26.877769, 47.792683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281910, 27.468378, 47.743591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658638, 27.602711, 47.749222>,  <32.884674, 27.683310, 47.752598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658638, 27.602711, 47.749222>,  <32.281910, 27.468378, 47.743591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658638, 27.602711, 47.749222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178606, 0.535481, -0.825445,
		-0.284745, 0.774905, 0.564307,
		0.941817, 0.335830, 0.014073,
		32.941185, 27.703459, 47.753445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284744, 28.036774, 47.201447>,  <32.281910, 27.468378, 47.743591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284744, 28.036774, 47.201447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680367, 28.029181, 47.259979>,  <32.917740, 28.024624, 47.295101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680367, 28.029181, 47.259979>,  <32.284744, 28.036774, 47.201447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680367, 28.029181, 47.259979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121247, 0.669759, -0.732613,
		-0.084101, 0.742336, 0.664729,
		0.989053, -0.018983, 0.146334,
		32.977081, 28.023485, 47.303879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537857, 28.643490, 46.898411>,  <32.284744, 28.036774, 47.201447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537857, 28.643490, 46.898411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861282, 28.411398, 46.937519>,  <33.055336, 28.272142, 46.960983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861282, 28.411398, 46.937519>,  <32.537857, 28.643490, 46.898411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861282, 28.411398, 46.937519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439921, 0.485756, -0.755322,
		0.390767, 0.653737, 0.648019,
		0.808561, -0.580232, 0.097775,
		33.103851, 28.237328, 46.966850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125252, 29.073650, 47.025562>,  <32.537857, 28.643490, 46.898411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125252, 29.073650, 47.025562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243816, 28.722208, 46.875797>,  <33.314957, 28.511343, 46.785938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243816, 28.722208, 46.875797>,  <33.125252, 29.073650, 47.025562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243816, 28.722208, 46.875797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293195, 0.456815, -0.839855,
		0.908942, 0.139170, 0.393010,
		0.296415, -0.878608, -0.374414,
		33.332741, 28.458626, 46.763474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811462, 29.221445, 46.749504>,  <33.125252, 29.073650, 47.025562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811462, 29.221445, 46.749504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692795, 28.889599, 46.560307>,  <33.621593, 28.690491, 46.446789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692795, 28.889599, 46.560307>,  <33.811462, 29.221445, 46.749504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692795, 28.889599, 46.560307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397902, 0.342870, -0.850949,
		0.868137, -0.440657, 0.228386,
		-0.296670, -0.829615, -0.472996,
		33.603794, 28.640715, 46.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350574, 29.018492, 46.388355>,  <33.811462, 29.221445, 46.749504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350574, 29.018492, 46.388355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069397, 28.799799, 46.206387>,  <33.900692, 28.668583, 46.097206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069397, 28.799799, 46.206387>,  <34.350574, 29.018492, 46.388355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069397, 28.799799, 46.206387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422524, 0.193521, -0.885451,
		0.572143, -0.814637, 0.094975,
		-0.702941, -0.546733, -0.454925,
		33.858513, 28.635778, 46.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641975, 28.613634, 45.846508>,  <34.350574, 29.018492, 46.388355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641975, 28.613634, 45.846508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255905, 28.638035, 45.744751>,  <34.024265, 28.652676, 45.683697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255905, 28.638035, 45.744751>,  <34.641975, 28.613634, 45.846508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255905, 28.638035, 45.744751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261607, 0.221405, -0.939437,
		-0.000984, -0.973272, -0.229653,
		-0.965174, 0.061003, -0.254397,
		33.966354, 28.656336, 45.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628342, 28.298815, 45.160530>,  <34.641975, 28.613634, 45.846508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628342, 28.298815, 45.160530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276714, 28.487389, 45.188782>,  <34.065739, 28.600533, 45.205730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276714, 28.487389, 45.188782>,  <34.628342, 28.298815, 45.160530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276714, 28.487389, 45.188782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028657, 0.200154, -0.979345,
		-0.475832, -0.858888, -0.189459,
		-0.879069, 0.471433, 0.070627,
		34.012993, 28.628819, 45.209969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260727, 28.239902, 44.565075>,  <34.628342, 28.298815, 45.160530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260727, 28.239902, 44.565075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093414, 28.569469, 44.718018>,  <33.993027, 28.767210, 44.809784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093414, 28.569469, 44.718018>,  <34.260727, 28.239902, 44.565075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093414, 28.569469, 44.718018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089071, 0.456133, -0.885443,
		-0.903939, -0.336308, -0.264180,
		-0.418283, 0.823917, 0.382361,
		33.967930, 28.816645, 44.832726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769173, 28.429230, 44.040421>,  <34.260727, 28.239902, 44.565075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769173, 28.429230, 44.040421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861847, 28.736578, 44.279060>,  <33.917450, 28.920988, 44.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861847, 28.736578, 44.279060>,  <33.769173, 28.429230, 44.040421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861847, 28.736578, 44.279060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192526, 0.564935, -0.802360,
		-0.953549, 0.300754, -0.017045,
		0.231684, 0.768372, 0.596596,
		33.931351, 28.967089, 44.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474133, 28.952196, 43.656185>,  <33.769173, 28.429230, 44.040421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474133, 28.952196, 43.656185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712639, 29.160641, 43.900452>,  <33.855743, 29.285707, 44.047012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.712639, 29.160641, 43.900452>,  <33.474133, 28.952196, 43.656185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712639, 29.160641, 43.900452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144012, 0.678907, -0.719962,
		-0.789764, 0.517232, 0.329763,
		0.596266, 0.521110, 0.610665,
		33.891518, 29.316975, 44.083652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382385, 29.637573, 43.505161>,  <33.474133, 28.952196, 43.656185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382385, 29.637573, 43.505161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726398, 29.661674, 43.707832>,  <33.932804, 29.676136, 43.829433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726398, 29.661674, 43.707832>,  <33.382385, 29.637573, 43.505161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726398, 29.661674, 43.707832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280627, 0.773477, -0.568315,
		-0.426145, 0.630954, 0.648303,
		0.860028, 0.060254, 0.506676,
		33.984406, 29.679750, 43.859837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508266, 30.337095, 43.651474>,  <33.382385, 29.637573, 43.505161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508266, 30.337095, 43.651474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860004, 30.147470, 43.669464>,  <34.071045, 30.033695, 43.680256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860004, 30.147470, 43.669464>,  <33.508266, 30.337095, 43.651474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860004, 30.147470, 43.669464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371925, 0.624761, -0.686546,
		0.297369, 0.620435, 0.725694,
		0.879343, -0.474061, 0.044971,
		34.123806, 30.005253, 43.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024780, 30.841618, 43.687412>,  <33.508266, 30.337095, 43.651474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024780, 30.841618, 43.687412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219967, 30.525265, 43.539684>,  <34.337078, 30.335453, 43.451050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219967, 30.525265, 43.539684>,  <34.024780, 30.841618, 43.687412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219967, 30.525265, 43.539684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511146, 0.601889, -0.613562,
		0.707543, 0.110623, 0.697958,
		0.487968, -0.790880, -0.369318,
		34.366356, 30.288000, 43.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686340, 31.103960, 43.477154>,  <34.024780, 30.841618, 43.687412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686340, 31.103960, 43.477154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667244, 30.761135, 43.271954>,  <34.655785, 30.555441, 43.148834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667244, 30.761135, 43.271954>,  <34.686340, 31.103960, 43.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667244, 30.761135, 43.271954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370556, 0.461739, -0.805906,
		0.927582, -0.228571, 0.295544,
		-0.047743, -0.857060, -0.512999,
		34.652920, 30.504017, 43.118053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300030, 31.141603, 42.959713>,  <34.686340, 31.103960, 43.477154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300030, 31.141603, 42.959713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048626, 30.860300, 42.826805>,  <34.897781, 30.691519, 42.747059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048626, 30.860300, 42.826805>,  <35.300030, 31.141603, 42.959713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048626, 30.860300, 42.826805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252889, 0.219214, -0.942333,
		0.735540, -0.676295, 0.040068,
		-0.628512, -0.703257, -0.332268,
		34.860073, 30.649323, 42.727123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670570, 30.639677, 42.498013>,  <35.300030, 31.141603, 42.959713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670570, 30.639677, 42.498013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281044, 30.641342, 42.407089>,  <35.047329, 30.642342, 42.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281044, 30.641342, 42.407089>,  <35.670570, 30.639677, 42.498013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281044, 30.641342, 42.407089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225693, 0.137958, -0.964381,
		0.027341, -0.990429, -0.135286,
		-0.973814, 0.004166, -0.227305,
		34.988899, 30.642591, 42.338898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658443, 30.381842, 41.876015>,  <35.670570, 30.639677, 42.498013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658443, 30.381842, 41.876015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284344, 30.523428, 41.874702>,  <35.059883, 30.608379, 41.873917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284344, 30.523428, 41.874702>,  <35.658443, 30.381842, 41.876015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284344, 30.523428, 41.874702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030470, 0.071270, -0.996992,
		-0.352666, -0.932539, -0.077440,
		-0.935253, 0.353964, -0.003280,
		35.003769, 30.629618, 41.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283363, 30.105923, 41.239117>,  <35.658443, 30.381842, 41.876015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283363, 30.105923, 41.239117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038155, 30.403605, 41.345226>,  <34.891029, 30.582212, 41.408894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038155, 30.403605, 41.345226>,  <35.283363, 30.105923, 41.239117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038155, 30.403605, 41.345226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142345, 0.226233, -0.963616,
		-0.777140, -0.628475, -0.032751,
		-0.613018, 0.744203, 0.265275,
		34.854248, 30.626865, 41.424809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721649, 30.019701, 40.823772>,  <35.283363, 30.105923, 41.239117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721649, 30.019701, 40.823772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727547, 30.402624, 40.939251>,  <34.731083, 30.632378, 41.008537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727547, 30.402624, 40.939251>,  <34.721649, 30.019701, 40.823772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727547, 30.402624, 40.939251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240824, 0.283626, -0.928203,
		-0.970457, -0.055842, 0.234724,
		0.014741, 0.957308, 0.288695,
		34.731968, 30.689816, 41.025860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183636, 30.373011, 40.460827>,  <34.721649, 30.019701, 40.823772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183636, 30.373011, 40.460827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382030, 30.697412, 40.584934>,  <34.501068, 30.892054, 40.659401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382030, 30.697412, 40.584934>,  <34.183636, 30.373011, 40.460827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382030, 30.697412, 40.584934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138857, 0.426802, -0.893621,
		-0.857154, 0.400143, 0.324303,
		0.495989, 0.811003, 0.310272,
		34.530827, 30.940714, 40.678017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868187, 30.861927, 40.068344>,  <34.183636, 30.373011, 40.460827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868187, 30.861927, 40.068344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187302, 31.055910, 40.211651>,  <34.378769, 31.172300, 40.297634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187302, 31.055910, 40.211651>,  <33.868187, 30.861927, 40.068344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187302, 31.055910, 40.211651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031508, 0.559851, -0.827994,
		-0.602117, 0.671850, 0.431361,
		0.797786, 0.484958, 0.358265,
		34.426636, 31.201397, 40.319130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693687, 31.603449, 40.090603>,  <33.868187, 30.861927, 40.068344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693687, 31.603449, 40.090603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082794, 31.523184, 40.044205>,  <34.316257, 31.475025, 40.016365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082794, 31.523184, 40.044205>,  <33.693687, 31.603449, 40.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082794, 31.523184, 40.044205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010068, 0.536582, -0.843788,
		0.231560, 0.819643, 0.523990,
		0.972768, -0.200663, -0.115999,
		34.374626, 31.462984, 40.009403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082878, 32.303040, 40.063553>,  <33.693687, 31.603449, 40.090603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082878, 32.303040, 40.063553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326767, 32.042118, 39.883446>,  <34.473103, 31.885567, 39.775383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326767, 32.042118, 39.883446>,  <34.082878, 32.303040, 40.063553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326767, 32.042118, 39.883446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211823, 0.681516, -0.700477,
		0.763783, 0.331723, 0.553711,
		0.609727, -0.652301, -0.450263,
		34.509686, 31.846428, 39.748367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695866, 32.705116, 39.969028>,  <34.082878, 32.303040, 40.063553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695866, 32.705116, 39.969028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710907, 32.410683, 39.698689>,  <34.719933, 32.234024, 39.536484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710907, 32.410683, 39.698689>,  <34.695866, 32.705116, 39.969028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710907, 32.410683, 39.698689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383199, 0.635247, -0.670537,
		0.922900, -0.233771, 0.305952,
		0.037603, -0.736079, -0.675850,
		34.722187, 32.189857, 39.495934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283215, 32.877148, 39.576378>,  <34.695866, 32.705116, 39.969028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283215, 32.877148, 39.576378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058094, 32.615734, 39.373932>,  <34.923023, 32.458885, 39.252464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058094, 32.615734, 39.373932>,  <35.283215, 32.877148, 39.576378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058094, 32.615734, 39.373932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094577, 0.557360, -0.824866,
		0.821165, -0.512102, -0.251874,
		-0.562800, -0.653530, -0.506117,
		34.889256, 32.419674, 39.222095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574604, 32.923874, 38.979271>,  <35.283215, 32.877148, 39.576378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574604, 32.923874, 38.979271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256462, 32.716751, 38.853237>,  <35.065578, 32.592476, 38.777615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256462, 32.716751, 38.853237>,  <35.574604, 32.923874, 38.979271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256462, 32.716751, 38.853237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068975, 0.439133, -0.895770,
		0.602206, -0.734189, -0.313551,
		-0.795355, -0.517811, -0.315089,
		35.017857, 32.561409, 38.758709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789410, 32.677620, 38.337536>,  <35.574604, 32.923874, 38.979271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789410, 32.677620, 38.337536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389954, 32.661186, 38.350391>,  <35.150280, 32.651325, 38.358105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389954, 32.661186, 38.350391>,  <35.789410, 32.677620, 38.337536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389954, 32.661186, 38.350391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041680, 0.257960, -0.965256,
		0.031368, -0.965281, -0.259321,
		-0.998639, -0.041087, 0.032142,
		35.090363, 32.648861, 38.360035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537304, 32.365314, 37.727859>,  <35.789410, 32.677620, 38.337536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537304, 32.365314, 37.727859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205372, 32.551365, 37.851177>,  <35.006214, 32.662994, 37.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205372, 32.551365, 37.851177>,  <35.537304, 32.365314, 37.727859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205372, 32.551365, 37.851177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126183, 0.381754, -0.915610,
		-0.543567, -0.798699, -0.258098,
		-0.829827, 0.465128, 0.308291,
		34.956425, 32.690903, 37.943665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962650, 32.252396, 37.251369>,  <35.537304, 32.365314, 37.727859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962650, 32.252396, 37.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874249, 32.588707, 37.449059>,  <34.821209, 32.790493, 37.567673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874249, 32.588707, 37.449059>,  <34.962650, 32.252396, 37.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874249, 32.588707, 37.449059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159465, 0.468778, -0.868803,
		-0.962148, -0.270820, 0.030472,
		-0.221004, 0.840776, 0.494220,
		34.807945, 32.840939, 37.597324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667080, 32.730614, 36.692425>,  <34.962650, 32.252396, 37.251369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667080, 32.730614, 36.692425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678329, 32.970009, 37.012680>,  <34.685081, 33.113644, 37.204834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678329, 32.970009, 37.012680>,  <34.667080, 32.730614, 36.692425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678329, 32.970009, 37.012680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035551, 0.801050, -0.597541,
		-0.998972, -0.011656, 0.043808,
		0.028127, 0.598484, 0.800641,
		34.686768, 33.149555, 37.252872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155655, 33.245087, 36.567627>,  <34.667080, 32.730614, 36.692425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155655, 33.245087, 36.567627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410450, 33.407967, 36.829449>,  <34.563328, 33.505695, 36.986542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410450, 33.407967, 36.829449>,  <34.155655, 33.245087, 36.567627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410450, 33.407967, 36.829449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203228, 0.730358, -0.652131,
		-0.743605, 0.548421, 0.382474,
		0.636985, 0.407198, 0.654553,
		34.601547, 33.530125, 37.025814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984428, 34.048916, 36.716152>,  <34.155655, 33.245087, 36.567627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984428, 34.048916, 36.716152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359638, 33.912743, 36.742142>,  <34.584763, 33.831039, 36.757736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359638, 33.912743, 36.742142>,  <33.984428, 34.048916, 36.716152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359638, 33.912743, 36.742142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318057, 0.771099, -0.551585,
		0.137675, 0.538064, 0.831584,
		0.938022, -0.340430, 0.064974,
		34.641045, 33.810612, 36.761635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211159, 34.639378, 36.535740>,  <33.984428, 34.048916, 36.716152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211159, 34.639378, 36.535740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518944, 34.387314, 36.494110>,  <34.703613, 34.236076, 36.469131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518944, 34.387314, 36.494110>,  <34.211159, 34.639378, 36.535740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518944, 34.387314, 36.494110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411900, 0.614137, -0.673182,
		0.488128, 0.475118, 0.732116,
		0.769461, -0.630158, -0.104076,
		34.749783, 34.198265, 36.462887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827831, 34.994068, 36.620872>,  <34.211159, 34.639378, 36.535740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827831, 34.994068, 36.620872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942711, 34.667118, 36.421104>,  <35.011639, 34.470947, 36.301243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942711, 34.667118, 36.421104>,  <34.827831, 34.994068, 36.620872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942711, 34.667118, 36.421104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334159, 0.574120, -0.747479,
		0.897695, 0.047788, 0.438018,
		0.287195, -0.817376, -0.499415,
		35.028870, 34.421906, 36.271278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612038, 35.038895, 36.543949>,  <34.827831, 34.994068, 36.620872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612038, 35.038895, 36.543949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457703, 34.792416, 36.269306>,  <35.365101, 34.644527, 36.104523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457703, 34.792416, 36.269306>,  <35.612038, 35.038895, 36.543949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457703, 34.792416, 36.269306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626354, 0.371456, -0.685348,
		0.677355, -0.694491, 0.242637,
		-0.385839, -0.616200, -0.686604,
		35.341949, 34.607555, 36.063324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028217, 34.568573, 36.349586>,  <35.612038, 35.038895, 36.543949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028217, 34.568573, 36.349586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768272, 34.718582, 36.085152>,  <35.612305, 34.808590, 35.926491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.768272, 34.718582, 36.085152>,  <36.028217, 34.568573, 36.349586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768272, 34.718582, 36.085152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759736, 0.345564, -0.550805,
		0.021882, -0.860198, -0.509490,
		-0.649863, 0.375025, -0.661085,
		35.573315, 34.831089, 35.886826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450329, 34.087524, 36.055370>,  <36.028217, 34.568573, 36.349586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450329, 34.087524, 36.055370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586746, 33.892498, 35.733883>,  <36.668594, 33.775482, 35.540989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586746, 33.892498, 35.733883>,  <36.450329, 34.087524, 36.055370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586746, 33.892498, 35.733883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170693, -0.808648, 0.562986,
		-0.924422, -0.329190, -0.192556,
		0.341039, -0.487568, -0.803722,
		36.689056, 33.746227, 35.492767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178894, 33.378166, 35.777550>,  <36.450329, 34.087524, 36.055370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178894, 33.378166, 35.777550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573124, 33.427105, 35.730782>,  <36.809662, 33.456467, 35.702721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573124, 33.427105, 35.730782>,  <36.178894, 33.378166, 35.777550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573124, 33.427105, 35.730782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164753, -0.851541, 0.497730,
		-0.038669, -0.509814, -0.859415,
		0.985576, 0.122345, -0.116921,
		36.868797, 33.463810, 35.695705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490612, 32.713024, 35.525730>,  <36.178894, 33.378166, 35.777550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490612, 32.713024, 35.525730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 32.925644, 35.714214>,  <36.941082, 33.053215, 35.827305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772156, 32.925644, 35.714214>,  <36.490612, 32.713024, 35.525730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772156, 32.925644, 35.714214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143311, -0.755977, 0.638718,
		0.695735, -0.382037, -0.608277,
		0.703857, 0.531551, 0.471209,
		36.983315, 33.085110, 35.855576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950825, 32.243835, 35.781490>,  <36.490612, 32.713024, 35.525730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950825, 32.243835, 35.781490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108231, 32.544243, 35.993572>,  <37.202675, 32.724487, 36.120823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108231, 32.544243, 35.993572>,  <36.950825, 32.243835, 35.781490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108231, 32.544243, 35.993572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442615, -0.660273, 0.606738,
		0.805751, -0.004085, -0.592240,
		0.393519, 0.751015, 0.530208,
		37.226288, 32.769547, 36.152634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558277, 32.006584, 35.887798>,  <36.950825, 32.243835, 35.781490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558277, 32.006584, 35.887798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517998, 32.286530, 36.170658>,  <37.493832, 32.454494, 36.340374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517998, 32.286530, 36.170658>,  <37.558277, 32.006584, 35.887798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517998, 32.286530, 36.170658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159465, -0.690215, 0.705814,
		0.982055, 0.183838, -0.042101,
		-0.100697, 0.699862, 0.707145,
		37.487789, 32.496487, 36.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089565, 31.997059, 36.358101>,  <37.558277, 32.006584, 35.887798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089565, 31.997059, 36.358101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801834, 32.170246, 36.575394>,  <37.629196, 32.274158, 36.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801834, 32.170246, 36.575394>,  <38.089565, 31.997059, 36.358101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801834, 32.170246, 36.575394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213903, -0.605958, 0.766199,
		0.660918, 0.667348, 0.343269,
		-0.719328, 0.432969, 0.543237,
		37.586037, 32.300137, 36.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371185, 32.112686, 36.969318>,  <38.089565, 31.997059, 36.358101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371185, 32.112686, 36.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975800, 32.093277, 37.026714>,  <37.738567, 32.081631, 37.061150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975800, 32.093277, 37.026714>,  <38.371185, 32.112686, 36.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975800, 32.093277, 37.026714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144287, -0.589875, 0.794499,
		0.046087, 0.806036, 0.590070,
		-0.988462, -0.048523, 0.143486,
		37.679260, 32.078720, 37.069759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381969, 32.072723, 37.731888>,  <38.371185, 32.112686, 36.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381969, 32.072723, 37.731888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020195, 31.977736, 37.590122>,  <37.803131, 31.920744, 37.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020195, 31.977736, 37.590122>,  <38.381969, 32.072723, 37.731888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020195, 31.977736, 37.590122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118587, -0.658080, 0.743551,
		-0.409803, 0.714521, 0.567029,
		-0.904433, -0.237467, -0.354416,
		37.748863, 31.906496, 37.483799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933533, 32.287563, 38.277603>,  <38.381969, 32.072723, 37.731888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933533, 32.287563, 38.277603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710842, 32.024036, 38.075214>,  <37.577229, 31.865921, 37.953781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710842, 32.024036, 38.075214>,  <37.933533, 32.287563, 38.277603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710842, 32.024036, 38.075214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182984, -0.691400, 0.698915,
		-0.810289, 0.296521, 0.505477,
		-0.556730, -0.658817, -0.505975,
		37.543823, 31.826391, 37.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445946, 32.112839, 38.703217>,  <37.933533, 32.287563, 38.277603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445946, 32.112839, 38.703217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388847, 31.807848, 38.450787>,  <37.354588, 31.624855, 38.299328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388847, 31.807848, 38.450787>,  <37.445946, 32.112839, 38.703217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388847, 31.807848, 38.450787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196134, -0.603169, 0.773123,
		-0.970131, 0.234137, -0.063446,
		-0.142748, -0.762474, -0.631075,
		37.346024, 31.579105, 38.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685425, 31.803648, 38.791088>,  <37.445946, 32.112839, 38.703217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685425, 31.803648, 38.791088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898903, 31.513708, 38.616840>,  <37.026989, 31.339745, 38.512291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898903, 31.513708, 38.616840>,  <36.685425, 31.803648, 38.791088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898903, 31.513708, 38.616840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, -0.631164, 0.730399,
		-0.804375, -0.276092, -0.526074,
		0.533697, -0.724848, -0.435618,
		37.059013, 31.296253, 38.486156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282700, 31.177980, 38.830303>,  <36.685425, 31.803648, 38.791088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282700, 31.177980, 38.830303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663559, 31.063000, 38.788769>,  <36.892075, 30.994011, 38.763847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663559, 31.063000, 38.788769>,  <36.282700, 31.177980, 38.830303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663559, 31.063000, 38.788769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127617, -0.682634, 0.719531,
		-0.277715, -0.671849, -0.686654,
		0.952149, -0.287453, -0.103838,
		36.949203, 30.976763, 38.757618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319183, 30.398035, 38.837749>,  <36.282700, 31.177980, 38.830303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319183, 30.398035, 38.837749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696022, 30.495726, 38.929661>,  <36.922127, 30.554340, 38.984810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696022, 30.495726, 38.929661>,  <36.319183, 30.398035, 38.837749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696022, 30.495726, 38.929661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011141, -0.662069, 0.749360,
		0.335143, -0.708533, -0.621015,
		0.942101, 0.244224, 0.229782,
		36.978653, 30.568993, 38.998596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674854, 29.755379, 38.860397>,  <36.319183, 30.398035, 38.837749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674854, 29.755379, 38.860397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901165, 30.004278, 39.076805>,  <37.036953, 30.153618, 39.206650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901165, 30.004278, 39.076805>,  <36.674854, 29.755379, 38.860397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901165, 30.004278, 39.076805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039867, -0.676013, 0.735810,
		0.823595, -0.394735, -0.407279,
		0.565776, 0.622246, 0.541024,
		37.070896, 30.190952, 39.239113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093994, 29.322985, 39.234135>,  <36.674854, 29.755379, 38.860397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093994, 29.322985, 39.234135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191174, 29.654713, 39.435413>,  <37.249481, 29.853748, 39.556179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191174, 29.654713, 39.435413>,  <37.093994, 29.322985, 39.234135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191174, 29.654713, 39.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065478, -0.531577, 0.844475,
		0.967827, -0.172215, -0.183448,
		0.242948, 0.829318, 0.503198,
		37.264057, 29.903507, 39.586372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729015, 29.238918, 39.600533>,  <37.093994, 29.322985, 39.234135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729015, 29.238918, 39.600533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515518, 29.521072, 39.787102>,  <37.387421, 29.690365, 39.899044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515518, 29.521072, 39.787102>,  <37.729015, 29.238918, 39.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515518, 29.521072, 39.787102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165773, -0.453579, 0.875663,
		0.829238, 0.544701, 0.125163,
		-0.533745, 0.705384, 0.466421,
		37.355396, 29.732687, 39.927029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103603, 29.254105, 40.219334>,  <37.729015, 29.238918, 39.600533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103603, 29.254105, 40.219334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743999, 29.416685, 40.284538>,  <37.528236, 29.514235, 40.323662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743999, 29.416685, 40.284538>,  <38.103603, 29.254105, 40.219334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743999, 29.416685, 40.284538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017842, -0.405920, 0.913734,
		0.437559, 0.818550, 0.372180,
		-0.899013, 0.406453, 0.163009,
		37.474297, 29.538622, 40.333443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212933, 29.340395, 40.877987>,  <38.103603, 29.254105, 40.219334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212933, 29.340395, 40.877987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820866, 29.391321, 40.817234>,  <37.585625, 29.421877, 40.780785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820866, 29.391321, 40.817234>,  <38.212933, 29.340395, 40.877987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820866, 29.391321, 40.817234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189862, -0.383478, 0.903824,
		0.056829, 0.914732, 0.400044,
		-0.980165, 0.127317, -0.151880,
		37.526817, 29.429516, 40.771671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873405, 29.801003, 41.331436>,  <38.212933, 29.340395, 40.877987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873405, 29.801003, 41.331436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564194, 29.580564, 41.205753>,  <37.378666, 29.448301, 41.130344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564194, 29.580564, 41.205753>,  <37.873405, 29.801003, 41.331436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564194, 29.580564, 41.205753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322223, -0.085543, 0.942791,
		-0.546444, 0.830047, -0.111448,
		-0.773027, -0.551093, -0.314205,
		37.332287, 29.415236, 41.111492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229233, 30.083771, 41.741016>,  <37.873405, 29.801003, 41.331436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229233, 30.083771, 41.741016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154030, 29.715939, 41.603016>,  <37.108910, 29.495239, 41.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154030, 29.715939, 41.603016>,  <37.229233, 30.083771, 41.741016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154030, 29.715939, 41.603016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269933, -0.289356, 0.918373,
		-0.944346, 0.265786, -0.193824,
		-0.188006, -0.919582, -0.344997,
		37.097630, 29.440063, 41.499516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571888, 29.872959, 41.945412>,  <37.229233, 30.083771, 41.741016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571888, 29.872959, 41.945412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727859, 29.513039, 41.867123>,  <36.821442, 29.297087, 41.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727859, 29.513039, 41.867123>,  <36.571888, 29.872959, 41.945412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727859, 29.513039, 41.867123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129831, -0.264145, 0.955705,
		-0.911645, -0.347250, -0.219821,
		0.389933, -0.899803, -0.195723,
		36.844841, 29.243097, 41.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164135, 29.410513, 42.279388>,  <36.571888, 29.872959, 41.945412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164135, 29.410513, 42.279388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503071, 29.215162, 42.195950>,  <36.706432, 29.097952, 42.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503071, 29.215162, 42.195950>,  <36.164135, 29.410513, 42.279388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503071, 29.215162, 42.195950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116760, -0.211859, 0.970300,
		-0.518064, -0.846526, -0.122492,
		0.847336, -0.488375, -0.208597,
		36.757271, 29.068649, 42.133369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051476, 28.659019, 42.342838>,  <36.164135, 29.410513, 42.279388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051476, 28.659019, 42.342838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439472, 28.730391, 42.408913>,  <36.672268, 28.773212, 42.448555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439472, 28.730391, 42.408913>,  <36.051476, 28.659019, 42.342838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439472, 28.730391, 42.408913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101173, -0.321579, 0.941463,
		0.221103, -0.929920, -0.293875,
		0.969988, 0.178428, 0.165184,
		36.730469, 28.783918, 42.458469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235413, 28.224321, 42.982803>,  <36.051476, 28.659019, 42.342838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235413, 28.224321, 42.982803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550270, 28.468016, 42.944366>,  <36.739185, 28.614233, 42.921307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550270, 28.468016, 42.944366>,  <36.235413, 28.224321, 42.982803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550270, 28.468016, 42.944366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096453, 0.032285, 0.994814,
		0.609179, -0.792331, -0.033349,
		0.787146, 0.609236, -0.096090,
		36.786415, 28.650787, 42.915539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730473, 28.042053, 43.393600>,  <36.235413, 28.224321, 42.982803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730473, 28.042053, 43.393600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818817, 28.424847, 43.318340>,  <36.871826, 28.654522, 43.273186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818817, 28.424847, 43.318340>,  <36.730473, 28.042053, 43.393600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818817, 28.424847, 43.318340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009163, 0.194942, 0.980772,
		0.975261, -0.214894, 0.051825,
		0.220865, 0.956984, -0.188150,
		36.885078, 28.711943, 43.261894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151035, 28.315569, 44.001984>,  <36.730473, 28.042053, 43.393600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151035, 28.315569, 44.001984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012417, 28.655907, 43.844013>,  <36.929245, 28.860109, 43.749233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012417, 28.655907, 43.844013>,  <37.151035, 28.315569, 44.001984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012417, 28.655907, 43.844013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069138, 0.396700, 0.915341,
		0.935480, 0.344516, -0.078650,
		-0.346550, 0.850845, -0.394924,
		36.908451, 28.911160, 43.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545650, 28.865765, 44.297497>,  <37.151035, 28.315569, 44.001984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545650, 28.865765, 44.297497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218918, 29.060225, 44.173275>,  <37.022877, 29.176901, 44.098743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218918, 29.060225, 44.173275>,  <37.545650, 28.865765, 44.297497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218918, 29.060225, 44.173275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026829, 0.505735, 0.862271,
		0.576250, 0.712664, -0.400058,
		-0.816833, 0.486150, -0.310550,
		36.973869, 29.206070, 44.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592064, 29.586632, 44.591148>,  <37.545650, 28.865765, 44.297497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592064, 29.586632, 44.591148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210205, 29.495337, 44.514675>,  <36.981091, 29.440559, 44.468792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210205, 29.495337, 44.514675>,  <37.592064, 29.586632, 44.591148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210205, 29.495337, 44.514675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264201, 0.353366, 0.897402,
		-0.137266, 0.907215, -0.397642,
		-0.954650, -0.228240, -0.191182,
		36.923809, 29.426865, 44.457321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143551, 30.243675, 44.738144>,  <37.592064, 29.586632, 44.591148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143551, 30.243675, 44.738144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913689, 29.917185, 44.761955>,  <36.775772, 29.721291, 44.776241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913689, 29.917185, 44.761955>,  <37.143551, 30.243675, 44.738144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913689, 29.917185, 44.761955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293304, 0.273314, 0.916118,
		-0.764029, 0.508995, -0.396464,
		-0.574659, -0.816225, 0.059530,
		36.741291, 29.672318, 44.779816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550735, 30.622675, 44.754612>,  <37.143551, 30.243675, 44.738144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550735, 30.622675, 44.754612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551411, 30.250723, 44.901752>,  <36.551815, 30.027552, 44.990036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551411, 30.250723, 44.901752>,  <36.550735, 30.622675, 44.754612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551411, 30.250723, 44.901752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415190, 0.334000, 0.846204,
		-0.909733, -0.154156, -0.385515,
		0.001685, -0.929881, 0.367855,
		36.551918, 29.971758, 45.012108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838161, 30.532616, 44.911419>,  <36.550735, 30.622675, 44.754612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838161, 30.532616, 44.911419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054424, 30.277952, 45.131367>,  <36.184181, 30.125154, 45.263336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054424, 30.277952, 45.131367>,  <35.838161, 30.532616, 44.911419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054424, 30.277952, 45.131367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477321, 0.306077, 0.823700,
		-0.692719, -0.707802, -0.138408,
		0.540653, -0.636658, 0.549874,
		36.216621, 30.086954, 45.296329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442276, 30.389996, 45.415951>,  <35.838161, 30.532616, 44.911419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442276, 30.389996, 45.415951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777683, 30.249441, 45.582527>,  <35.978928, 30.165108, 45.682472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777683, 30.249441, 45.582527>,  <35.442276, 30.389996, 45.415951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777683, 30.249441, 45.582527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405450, 0.108206, 0.907690,
		-0.364011, -0.929956, -0.051737,
		0.838514, -0.351387, 0.416439,
		36.029236, 30.144026, 45.707458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141457, 29.986454, 46.015678>,  <35.442276, 30.389996, 45.415951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141457, 29.986454, 46.015678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531036, 30.056679, 46.073090>,  <35.764786, 30.098814, 46.107536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531036, 30.056679, 46.073090>,  <35.141457, 29.986454, 46.015678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531036, 30.056679, 46.073090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142556, -0.018209, 0.989619,
		0.176352, -0.984300, 0.007293,
		0.973949, 0.175561, 0.143529,
		35.823219, 30.109348, 46.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360760, 29.541241, 46.550106>,  <35.141457, 29.986454, 46.015678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360760, 29.541241, 46.550106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605923, 29.857176, 46.541092>,  <35.753021, 30.046736, 46.535683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605923, 29.857176, 46.541092>,  <35.360760, 29.541241, 46.550106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605923, 29.857176, 46.541092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040515, -0.002933, 0.999175,
		0.789119, -0.613310, -0.033798,
		0.612903, 0.789837, -0.022534,
		35.789795, 30.094128, 46.534332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081894, 29.408522, 46.920750>,  <35.360760, 29.541241, 46.550106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081894, 29.408522, 46.920750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002522, 29.800547, 46.916687>,  <35.954899, 30.035761, 46.914249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002522, 29.800547, 46.916687>,  <36.081894, 29.408522, 46.920750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002522, 29.800547, 46.916687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105796, 0.031715, 0.993882,
		0.974389, 0.196140, -0.109980,
		-0.198428, 0.980063, -0.010152,
		35.942993, 30.094566, 46.913643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408085, 29.534985, 47.523121>,  <36.081894, 29.408522, 46.920750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408085, 29.534985, 47.523121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239685, 29.894716, 47.475838>,  <36.138645, 30.110556, 47.447468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239685, 29.894716, 47.475838>,  <36.408085, 29.534985, 47.523121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239685, 29.894716, 47.475838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060324, 0.102269, 0.992926,
		0.905054, 0.425148, 0.011197,
		-0.420996, 0.899328, -0.118205,
		36.113388, 30.164515, 47.440376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712196, 29.985447, 48.106750>,  <36.408085, 29.534985, 47.523121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712196, 29.985447, 48.106750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388340, 30.167841, 47.958931>,  <36.194027, 30.277277, 47.870239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388340, 30.167841, 47.958931>,  <36.712196, 29.985447, 48.106750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388340, 30.167841, 47.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320848, 0.183372, 0.929210,
		0.491472, 0.870891, -0.002163,
		-0.809637, 0.455987, -0.369546,
		36.145451, 30.304638, 47.848068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516987, 30.439468, 48.652439>,  <36.712196, 29.985447, 48.106750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516987, 30.439468, 48.652439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175335, 30.473898, 48.447281>,  <35.970345, 30.494556, 48.324184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175335, 30.473898, 48.447281>,  <36.516987, 30.439468, 48.652439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175335, 30.473898, 48.447281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510808, 0.046420, 0.858441,
		0.097699, 0.995206, 0.004319,
		-0.854125, 0.086076, -0.512895,
		35.919098, 30.499722, 48.293411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171120, 30.966637, 48.987640>,  <36.516987, 30.439468, 48.652439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171120, 30.966637, 48.987640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875622, 30.758314, 48.816517>,  <35.698322, 30.633320, 48.713844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875622, 30.758314, 48.816517>,  <36.171120, 30.966637, 48.987640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875622, 30.758314, 48.816517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497422, -0.006998, 0.867480,
		-0.454782, 0.853647, -0.253891,
		-0.738745, -0.520806, -0.427806,
		35.653999, 30.602072, 48.688175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565598, 31.066202, 49.536861>,  <36.171120, 30.966637, 48.987640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565598, 31.066202, 49.536861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931660, 31.129301, 49.685246>,  <37.151295, 31.167160, 49.774277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931660, 31.129301, 49.685246>,  <36.565598, 31.066202, 49.536861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931660, 31.129301, 49.685246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349461, 0.148249, -0.925148,
		-0.200934, 0.976288, 0.080544,
		0.915152, 0.157747, 0.370963,
		37.206203, 31.176624, 49.796535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873432, 31.563423, 49.033810>,  <36.565598, 31.066202, 49.536861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873432, 31.563423, 49.033810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191563, 31.472145, 49.258446>,  <37.382439, 31.417377, 49.393227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191563, 31.472145, 49.258446>,  <36.873432, 31.563423, 49.033810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191563, 31.472145, 49.258446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597282, 0.136810, -0.790277,
		0.103505, 0.963956, 0.245105,
		0.795324, -0.228195, 0.561593,
		37.430161, 31.403687, 49.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394951, 31.992903, 48.838219>,  <36.873432, 31.563423, 49.033810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394951, 31.992903, 48.838219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598385, 31.687984, 48.998341>,  <37.720448, 31.505033, 49.094414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598385, 31.687984, 48.998341>,  <37.394951, 31.992903, 48.838219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598385, 31.687984, 48.998341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675922, 0.065486, -0.734058,
		0.533355, 0.643906, 0.548559,
		0.508587, -0.762297, 0.400303,
		37.750961, 31.459295, 49.118431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177204, 32.194851, 48.853882>,  <37.394951, 31.992903, 48.838219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177204, 32.194851, 48.853882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187801, 31.795328, 48.870335>,  <38.194160, 31.555616, 48.880207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187801, 31.795328, 48.870335>,  <38.177204, 32.194851, 48.853882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187801, 31.795328, 48.870335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773405, -0.005587, -0.633888,
		0.633358, 0.048604, 0.772331,
		0.026495, -0.998802, 0.041129,
		38.195751, 31.495687, 48.882671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883911, 31.998001, 48.911747>,  <38.177204, 32.194851, 48.853882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883911, 31.998001, 48.911747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676540, 31.687845, 48.767525>,  <38.552116, 31.501751, 48.680992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676540, 31.687845, 48.767525>,  <38.883911, 31.998001, 48.911747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676540, 31.687845, 48.767525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629912, -0.061136, -0.774257,
		0.578310, -0.628514, 0.520123,
		-0.518429, -0.775392, -0.360553,
		38.521011, 31.455227, 48.659359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232349, 31.301428, 48.765556>,  <38.883911, 31.998001, 48.911747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232349, 31.301428, 48.765556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927094, 31.250439, 48.512142>,  <38.743938, 31.219845, 48.360092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927094, 31.250439, 48.512142>,  <39.232349, 31.301428, 48.765556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927094, 31.250439, 48.512142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644858, -0.214150, -0.733688,
		-0.042147, -0.968448, 0.245627,
		-0.763139, -0.127472, -0.633537,
		38.698151, 31.212196, 48.322083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482582, 30.673248, 48.184357>,  <39.232349, 31.301428, 48.765556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482582, 30.673248, 48.184357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168835, 30.852192, 48.012482>,  <38.980587, 30.959558, 47.909355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168835, 30.852192, 48.012482>,  <39.482582, 30.673248, 48.184357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168835, 30.852192, 48.012482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408430, -0.148878, -0.900567,
		-0.466846, -0.881877, -0.065938,
		-0.784372, 0.447357, -0.429688,
		38.933521, 30.986399, 47.883575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417751, 30.270336, 47.527084>,  <39.482582, 30.673248, 48.184357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417751, 30.270336, 47.527084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207825, 30.606155, 47.470909>,  <39.081867, 30.807648, 47.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207825, 30.606155, 47.470909>,  <39.417751, 30.270336, 47.527084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207825, 30.606155, 47.470909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181077, -0.051099, -0.982141,
		-0.831732, -0.540874, -0.125205,
		-0.524817, 0.839550, -0.140440,
		39.050381, 30.858021, 47.428776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975933, 30.154490, 46.972687>,  <39.417751, 30.270336, 47.527084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975933, 30.154490, 46.972687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985092, 30.553722, 46.995693>,  <38.990589, 30.793262, 47.009495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985092, 30.553722, 46.995693>,  <38.975933, 30.154490, 46.972687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985092, 30.553722, 46.995693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087824, 0.055298, -0.994600,
		-0.995873, 0.027824, -0.086389,
		0.022897, 0.998082, 0.057513,
		38.991962, 30.853148, 47.012947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462982, 30.474670, 46.500435>,  <38.975933, 30.154490, 46.972687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462982, 30.474670, 46.500435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755756, 30.735376, 46.579910>,  <38.931419, 30.891800, 46.627594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755756, 30.735376, 46.579910>,  <38.462982, 30.474670, 46.500435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755756, 30.735376, 46.579910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116414, 0.167691, -0.978942,
		-0.671357, 0.739651, 0.046864,
		0.731934, 0.651764, 0.198686,
		38.975338, 30.930906, 46.639515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528797, 30.620827, 45.954243>,  <38.462982, 30.474670, 46.500435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528797, 30.620827, 45.954243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852814, 30.812923, 46.088825>,  <39.047222, 30.928181, 46.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852814, 30.812923, 46.088825>,  <38.528797, 30.620827, 45.954243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852814, 30.812923, 46.088825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309005, 0.138048, -0.940988,
		-0.498349, 0.866204, -0.036573,
		0.810039, 0.480242, 0.336458,
		39.095825, 30.956997, 46.189762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448471, 31.282099, 45.716202>,  <38.528797, 30.620827, 45.954243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448471, 31.282099, 45.716202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840168, 31.235794, 45.782757>,  <39.075188, 31.208012, 45.822689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840168, 31.235794, 45.782757>,  <38.448471, 31.282099, 45.716202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840168, 31.235794, 45.782757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194525, 0.305983, -0.931952,
		0.056971, 0.944973, 0.322150,
		0.979242, -0.115761, 0.166389,
		39.133942, 31.201065, 45.832672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649616, 31.862818, 45.667061>,  <38.448471, 31.282099, 45.716202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649616, 31.862818, 45.667061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966877, 31.628231, 45.601376>,  <39.157234, 31.487478, 45.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966877, 31.628231, 45.601376>,  <38.649616, 31.862818, 45.667061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966877, 31.628231, 45.601376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028290, 0.304823, -0.951989,
		0.608367, 0.750426, 0.258361,
		0.793152, -0.586468, -0.164214,
		39.204823, 31.452291, 45.552113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168324, 32.285954, 45.253857>,  <38.649616, 31.862818, 45.667061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168324, 32.285954, 45.253857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253838, 31.896967, 45.216759>,  <39.305145, 31.663574, 45.194500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253838, 31.896967, 45.216759>,  <39.168324, 32.285954, 45.253857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253838, 31.896967, 45.216759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275864, 0.151171, -0.949234,
		0.937120, 0.177351, 0.300588,
		0.213788, -0.972468, -0.092741,
		39.317974, 31.605227, 45.188938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853870, 32.280304, 44.913498>,  <39.168324, 32.285954, 45.253857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853870, 32.280304, 44.913498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646851, 31.943966, 44.850090>,  <39.522640, 31.742163, 44.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646851, 31.943966, 44.850090>,  <39.853870, 32.280304, 44.913498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646851, 31.943966, 44.850090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138222, 0.100669, -0.985272,
		0.844417, -0.531835, 0.064122,
		-0.517547, -0.840843, -0.158518,
		39.491585, 31.691713, 44.802536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273895, 31.831139, 44.441040>,  <39.853870, 32.280304, 44.913498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273895, 31.831139, 44.441040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889370, 31.729305, 44.398956>,  <39.658657, 31.668205, 44.373707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889370, 31.729305, 44.398956>,  <40.273895, 31.831139, 44.441040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889370, 31.729305, 44.398956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118258, -0.036447, -0.992314,
		0.248791, -0.966364, 0.065143,
		-0.961311, -0.254582, -0.105212,
		39.600975, 31.652931, 44.367393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296898, 31.406263, 43.899525>,  <40.273895, 31.831139, 44.441040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296898, 31.406263, 43.899525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900253, 31.457685, 43.894108>,  <39.662266, 31.488539, 43.890858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900253, 31.457685, 43.894108>,  <40.296898, 31.406263, 43.899525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900253, 31.457685, 43.894108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000508, -0.108660, -0.994079,
		-0.129281, -0.985730, 0.107813,
		-0.991608, 0.128570, -0.013546,
		39.602772, 31.496252, 43.890045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057529, 31.015198, 43.323917>,  <40.296898, 31.406263, 43.899525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057529, 31.015198, 43.323917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695995, 31.168797, 43.399426>,  <39.479076, 31.260956, 43.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695995, 31.168797, 43.399426>,  <40.057529, 31.015198, 43.323917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695995, 31.168797, 43.399426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280744, -0.199258, -0.938871,
		-0.322909, -0.901578, 0.287901,
		-0.903832, 0.383996, 0.188771,
		39.424847, 31.283995, 43.456059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633648, 30.642277, 43.095863>,  <40.057529, 31.015198, 43.323917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633648, 30.642277, 43.095863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382504, 30.953604, 43.097305>,  <39.231815, 31.140400, 43.098171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382504, 30.953604, 43.097305>,  <39.633648, 30.642277, 43.095863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382504, 30.953604, 43.097305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138907, -0.107491, -0.984455,
		-0.765829, -0.618602, 0.175603,
		-0.627862, 0.778317, 0.003609,
		39.194145, 31.187099, 43.098389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082436, 30.454065, 42.673599>,  <39.633648, 30.642277, 43.095863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082436, 30.454065, 42.673599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104607, 30.853420, 42.678524>,  <39.117908, 31.093033, 42.681477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104607, 30.853420, 42.678524>,  <39.082436, 30.454065, 42.673599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104607, 30.853420, 42.678524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139565, 0.019955, -0.990012,
		-0.988660, 0.053158, 0.140446,
		0.055430, 0.998387, 0.012310,
		39.121235, 31.152937, 42.682217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538719, 30.682495, 42.304787>,  <39.082436, 30.454065, 42.673599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538719, 30.682495, 42.304787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803623, 30.981766, 42.288532>,  <38.962566, 31.161327, 42.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803623, 30.981766, 42.288532>,  <38.538719, 30.682495, 42.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803623, 30.981766, 42.288532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120381, 0.052719, -0.991327,
		-0.739544, 0.661404, 0.124980,
		0.662256, 0.748175, -0.040633,
		39.002300, 31.206219, 42.276344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241909, 31.135723, 41.862011>,  <38.538719, 30.682495, 42.304787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241909, 31.135723, 41.862011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598782, 31.316372, 41.859470>,  <38.812904, 31.424761, 41.857944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598782, 31.316372, 41.859470>,  <38.241909, 31.135723, 41.862011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598782, 31.316372, 41.859470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004057, -0.006050, -0.999974,
		-0.451650, 0.892188, -0.003566,
		0.892186, 0.451623, -0.006352,
		38.866436, 31.451859, 41.857563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241566, 31.889462, 41.460686>,  <38.241909, 31.135723, 41.862011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241566, 31.889462, 41.460686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611031, 31.736490, 41.450924>,  <38.832710, 31.644707, 41.445065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611031, 31.736490, 41.450924>,  <38.241566, 31.889462, 41.460686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611031, 31.736490, 41.450924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107994, 0.320884, -0.940941,
		0.367675, 0.866476, 0.337689,
		0.923662, -0.382430, -0.024407,
		38.888130, 31.621761, 41.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495430, 32.261902, 40.869068>,  <38.241566, 31.889462, 41.460686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495430, 32.261902, 40.869068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793663, 32.012405, 40.962925>,  <38.972603, 31.862707, 41.019238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793663, 32.012405, 40.962925>,  <38.495430, 32.261902, 40.869068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793663, 32.012405, 40.962925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417657, 0.162981, -0.893868,
		0.519301, 0.764450, 0.382026,
		0.745580, -0.623742, 0.234642,
		39.017338, 31.825283, 41.033318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212730, 32.583904, 40.782166>,  <38.495430, 32.261902, 40.869068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212730, 32.583904, 40.782166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200100, 32.191765, 40.704269>,  <39.192524, 31.956482, 40.657532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200100, 32.191765, 40.704269>,  <39.212730, 32.583904, 40.782166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200100, 32.191765, 40.704269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491285, 0.154456, -0.857195,
		0.870427, -0.122736, 0.476753,
		-0.031571, -0.980347, -0.194741,
		39.190628, 31.897661, 40.645847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870010, 32.477623, 40.405483>,  <39.212730, 32.583904, 40.782166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870010, 32.477623, 40.405483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660645, 32.143337, 40.339008>,  <39.535027, 31.942766, 40.299122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660645, 32.143337, 40.339008>,  <39.870010, 32.477623, 40.405483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660645, 32.143337, 40.339008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447242, -0.103445, -0.888411,
		0.725266, -0.539334, 0.427911,
		-0.523415, -0.835714, -0.166188,
		39.503620, 31.892624, 40.289150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389206, 31.986340, 40.227554>,  <39.870010, 32.477623, 40.405483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389206, 31.986340, 40.227554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036465, 31.866007, 40.082314>,  <39.824821, 31.793808, 39.995171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036465, 31.866007, 40.082314>,  <40.389206, 31.986340, 40.227554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036465, 31.866007, 40.082314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425485, -0.175766, -0.887732,
		0.203236, -0.937340, 0.282999,
		-0.881849, -0.300831, -0.363102,
		39.771912, 31.775757, 39.973381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580254, 31.438337, 39.808285>,  <40.389206, 31.986340, 40.227554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580254, 31.438337, 39.808285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215611, 31.552174, 39.689644>,  <39.996822, 31.620476, 39.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215611, 31.552174, 39.689644>,  <40.580254, 31.438337, 39.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215611, 31.552174, 39.689644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306629, -0.009754, -0.951779,
		-0.273761, -0.958599, -0.078372,
		-0.911611, 0.284591, -0.296604,
		39.942127, 31.637550, 39.600662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501144, 30.999739, 39.274284>,  <40.580254, 31.438337, 39.808285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501144, 30.999739, 39.274284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240261, 31.293362, 39.198620>,  <40.083729, 31.469536, 39.153221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240261, 31.293362, 39.198620>,  <40.501144, 30.999739, 39.274284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240261, 31.293362, 39.198620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262992, -0.014926, -0.964683,
		-0.710955, -0.678924, -0.183316,
		-0.652210, 0.734057, -0.189163,
		40.044598, 31.513578, 39.141872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167217, 30.912125, 38.616909>,  <40.501144, 30.999739, 39.274284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167217, 30.912125, 38.616909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109970, 31.301865, 38.686375>,  <40.075623, 31.535709, 38.728054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109970, 31.301865, 38.686375>,  <40.167217, 30.912125, 38.616909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109970, 31.301865, 38.686375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364495, 0.215031, -0.906038,
		-0.920142, -0.066371, -0.385920,
		-0.143120, 0.974349, 0.173668,
		40.067036, 31.594170, 38.738476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913029, 31.144041, 37.997894>,  <40.167217, 30.912125, 38.616909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913029, 31.144041, 37.997894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054810, 31.457878, 38.201374>,  <40.139877, 31.646181, 38.323463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054810, 31.457878, 38.201374>,  <39.913029, 31.144041, 37.997894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054810, 31.457878, 38.201374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389779, 0.370530, -0.843078,
		-0.849962, 0.497113, -0.174482,
		0.354454, 0.784593, 0.508700,
		40.161144, 31.693256, 38.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747440, 31.641340, 37.633472>,  <39.913029, 31.144041, 37.997894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747440, 31.641340, 37.633472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036274, 31.796741, 37.862438>,  <40.209576, 31.889982, 37.999817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036274, 31.796741, 37.862438>,  <39.747440, 31.641340, 37.633472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036274, 31.796741, 37.862438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432184, 0.392759, -0.811762,
		-0.540194, 0.833549, 0.115700,
		0.722085, 0.388505, 0.572413,
		40.252899, 31.913294, 38.034161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810078, 32.260056, 37.339993>,  <39.747440, 31.641340, 37.633472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810078, 32.260056, 37.339993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148026, 32.197964, 37.544777>,  <40.350792, 32.160709, 37.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148026, 32.197964, 37.544777>,  <39.810078, 32.260056, 37.339993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148026, 32.197964, 37.544777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530782, 0.362859, -0.765900,
		-0.066878, 0.918823, 0.388962,
		0.844866, -0.155232, 0.511962,
		40.401485, 32.151394, 37.698364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197208, 32.853462, 37.310181>,  <39.810078, 32.260056, 37.339993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197208, 32.853462, 37.310181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464230, 32.568272, 37.395996>,  <40.624443, 32.397156, 37.447487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464230, 32.568272, 37.395996>,  <40.197208, 32.853462, 37.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464230, 32.568272, 37.395996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622951, 0.377014, -0.685414,
		0.407801, 0.591201, 0.695830,
		0.667555, -0.712981, 0.214542,
		40.664497, 32.354378, 37.460358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699940, 33.253708, 37.259293>,  <40.197208, 32.853462, 37.310181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699940, 33.253708, 37.259293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834175, 32.876904, 37.258621>,  <40.914715, 32.650822, 37.258217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834175, 32.876904, 37.258621>,  <40.699940, 33.253708, 37.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834175, 32.876904, 37.258621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761422, 0.272301, -0.588293,
		0.554634, 0.196146, 0.808646,
		0.335586, -0.942008, -0.001677,
		40.934853, 32.594299, 37.258118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457745, 33.416756, 37.423805>,  <40.699940, 33.253708, 37.259293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457745, 33.416756, 37.423805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402317, 33.064339, 37.242889>,  <41.369061, 32.852890, 37.134338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402317, 33.064339, 37.242889>,  <41.457745, 33.416756, 37.423805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402317, 33.064339, 37.242889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652909, 0.262126, -0.710633,
		0.744654, -0.393773, 0.538918,
		-0.138564, -0.881041, -0.452291,
		41.360748, 32.800026, 37.107201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165741, 33.315857, 37.207600>,  <41.457745, 33.416756, 37.423805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165741, 33.315857, 37.207600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962414, 33.034317, 37.009121>,  <41.840416, 32.865395, 36.890034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962414, 33.034317, 37.009121>,  <42.165741, 33.315857, 37.207600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962414, 33.034317, 37.009121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655912, 0.056923, -0.752688,
		0.558025, -0.708064, 0.432729,
		-0.508319, -0.703850, -0.496192,
		41.809917, 32.823162, 36.860264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616165, 32.815022, 36.976967>,  <42.165741, 33.315857, 37.207600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616165, 32.815022, 36.976967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311928, 32.783203, 36.719234>,  <42.129387, 32.764111, 36.564594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311928, 32.783203, 36.719234>,  <42.616165, 32.815022, 36.976967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311928, 32.783203, 36.719234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600334, 0.291681, -0.744662,
		0.247172, -0.953203, -0.174099,
		-0.760595, -0.079542, -0.644335,
		42.083748, 32.759338, 36.525932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834549, 32.451401, 36.367523>,  <42.616165, 32.815022, 36.976967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834549, 32.451401, 36.367523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496853, 32.626598, 36.243961>,  <42.294235, 32.731716, 36.169823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496853, 32.626598, 36.243961>,  <42.834549, 32.451401, 36.367523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496853, 32.626598, 36.243961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435299, 0.224075, -0.871955,
		-0.312694, -0.870604, -0.379831,
		-0.844238, 0.437995, -0.308906,
		42.243580, 32.757996, 36.151291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801960, 32.288452, 35.687721>,  <42.834549, 32.451401, 36.367523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801960, 32.288452, 35.687721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593681, 32.626564, 35.735683>,  <42.468712, 32.829430, 35.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593681, 32.626564, 35.735683>,  <42.801960, 32.288452, 35.687721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593681, 32.626564, 35.735683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403355, 0.367351, -0.838068,
		-0.752448, -0.388016, -0.532226,
		-0.520698, 0.845279, 0.119905,
		42.437473, 32.880146, 35.771656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507698, 32.438332, 35.006294>,  <42.801960, 32.288452, 35.687721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507698, 32.438332, 35.006294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549183, 32.766918, 35.230591>,  <42.574074, 32.964069, 35.365170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549183, 32.766918, 35.230591>,  <42.507698, 32.438332, 35.006294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549183, 32.766918, 35.230591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362425, 0.493809, -0.790444,
		-0.926224, 0.285209, -0.246505,
		0.103716, 0.821468, 0.560744,
		42.580299, 33.013359, 35.398815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152142, 33.117050, 34.772202>,  <42.507698, 32.438332, 35.006294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152142, 33.117050, 34.772202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507435, 33.171631, 34.947670>,  <42.720612, 33.204380, 35.052952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507435, 33.171631, 34.947670>,  <42.152142, 33.117050, 34.772202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507435, 33.171631, 34.947670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319587, 0.502423, -0.803390,
		-0.330021, 0.853787, 0.402659,
		0.888229, 0.136451, 0.438670,
		42.773903, 33.212566, 35.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534122, 33.860302, 34.699539>,  <42.152142, 33.117050, 34.772202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534122, 33.860302, 34.699539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821072, 33.581650, 34.703316>,  <42.993240, 33.414459, 34.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821072, 33.581650, 34.703316>,  <42.534122, 33.860302, 34.699539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821072, 33.581650, 34.703316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378288, 0.378101, -0.844949,
		0.585044, 0.609713, 0.534764,
		0.717371, -0.696627, 0.009442,
		43.036282, 33.372662, 34.706150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167095, 34.148678, 34.390587>,  <42.534122, 33.860302, 34.699539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167095, 34.148678, 34.390587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114391, 33.754166, 34.350796>,  <43.082767, 33.517460, 34.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114391, 33.754166, 34.350796>,  <43.167095, 34.148678, 34.390587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114391, 33.754166, 34.350796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066921, 0.091277, -0.993574,
		0.989020, -0.137571, 0.053976,
		-0.131760, -0.986277, -0.099482,
		43.074863, 33.458282, 34.320950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824841, 33.754116, 34.057137>,  <43.167095, 34.148678, 34.390587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824841, 33.754116, 34.057137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465187, 33.597797, 33.978302>,  <43.249397, 33.504005, 33.931000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465187, 33.597797, 33.978302>,  <43.824841, 33.754116, 34.057137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465187, 33.597797, 33.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180569, 0.078980, -0.980386,
		0.398693, -0.917084, -0.000449,
		-0.899132, -0.390792, -0.197086,
		43.195446, 33.480560, 33.919178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913921, 33.282887, 33.550808>,  <43.824841, 33.754116, 34.057137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913921, 33.282887, 33.550808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529819, 33.393139, 33.533207>,  <43.299358, 33.459290, 33.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.529819, 33.393139, 33.533207>,  <43.913921, 33.282887, 33.550808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529819, 33.393139, 33.533207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103940, 0.206814, -0.972843,
		-0.259051, -0.938751, -0.227244,
		-0.960255, 0.275636, -0.043999,
		43.241741, 33.475830, 33.520008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678417, 32.986317, 33.006699>,  <43.913921, 33.282887, 33.550808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678417, 32.986317, 33.006699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467793, 33.323997, 33.046803>,  <43.341419, 33.526608, 33.070866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467793, 33.323997, 33.046803>,  <43.678417, 32.986317, 33.006699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467793, 33.323997, 33.046803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434436, 0.368578, -0.821837,
		-0.730751, -0.389192, -0.560832,
		-0.526563, 0.844204, 0.100260,
		43.309822, 33.577259, 33.076881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331966, 33.185757, 32.400055>,  <43.678417, 32.986317, 33.006699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331966, 33.185757, 32.400055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406204, 33.531471, 32.587059>,  <43.450748, 33.738899, 32.699261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406204, 33.531471, 32.587059>,  <43.331966, 33.185757, 32.400055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406204, 33.531471, 32.587059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329203, 0.393589, -0.858320,
		-0.925839, 0.313209, -0.211475,
		0.185599, 0.864285, 0.467509,
		43.461884, 33.790756, 32.727310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957043, 33.720554, 32.064846>,  <43.331966, 33.185757, 32.400055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957043, 33.720554, 32.064846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252350, 33.908939, 32.257992>,  <43.429535, 34.021969, 32.373878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252350, 33.908939, 32.257992>,  <42.957043, 33.720554, 32.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252350, 33.908939, 32.257992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216747, 0.512259, -0.831030,
		-0.638735, 0.718181, 0.276104,
		0.738267, 0.470964, 0.482861,
		43.473831, 34.050228, 32.402851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815731, 34.417793, 31.902334>,  <42.957043, 33.720554, 32.064846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815731, 34.417793, 31.902334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200436, 34.396694, 32.009834>,  <43.431259, 34.384037, 32.074333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200436, 34.396694, 32.009834>,  <42.815731, 34.417793, 31.902334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200436, 34.396694, 32.009834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257990, 0.503847, -0.824366,
		-0.091928, 0.862181, 0.498190,
		0.961764, -0.052746, 0.268751,
		43.488964, 34.380871, 32.090458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016602, 34.948933, 31.616943>,  <42.815731, 34.417793, 31.902334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016602, 34.948933, 31.616943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361828, 34.763252, 31.696569>,  <43.568966, 34.651844, 31.744345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361828, 34.763252, 31.696569>,  <43.016602, 34.948933, 31.616943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361828, 34.763252, 31.696569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409338, 0.411953, -0.814087,
		0.295898, 0.784097, 0.545560,
		0.863068, -0.464206, 0.199065,
		43.620747, 34.623989, 31.756289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446770, 35.562557, 31.667181>,  <43.016602, 34.948933, 31.616943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446770, 35.562557, 31.667181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630840, 35.219280, 31.576191>,  <43.741283, 35.013313, 31.521597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.630840, 35.219280, 31.576191>,  <43.446770, 35.562557, 31.667181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630840, 35.219280, 31.576191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282319, 0.384362, -0.878955,
		0.841746, 0.340251, 0.419157,
		0.460173, -0.858193, -0.227476,
		43.768890, 34.961823, 31.507948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120640, 35.694118, 31.297970>,  <43.446770, 35.562557, 31.667181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120640, 35.694118, 31.297970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015793, 35.324448, 31.186838>,  <43.952885, 35.102646, 31.120159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.015793, 35.324448, 31.186838>,  <44.120640, 35.694118, 31.297970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015793, 35.324448, 31.186838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134572, 0.250076, -0.958828,
		0.955608, -0.288711, 0.058820,
		-0.262115, -0.924179, -0.277828,
		43.937157, 35.047195, 31.103489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685143, 35.400921, 30.883980>,  <44.120640, 35.694118, 31.297970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685143, 35.400921, 30.883980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367676, 35.174953, 30.793676>,  <44.177197, 35.039375, 30.739494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367676, 35.174953, 30.793676>,  <44.685143, 35.400921, 30.883980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367676, 35.174953, 30.793676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171102, 0.148833, -0.973947,
		0.583798, -0.811615, -0.021465,
		-0.793665, -0.564915, -0.225758,
		44.129578, 35.005478, 30.725948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.911621, 34.950573, 30.410549>,  <44.685143, 35.400921, 30.883980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.911621, 34.950573, 30.410549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517483, 34.904945, 30.359837>,  <44.280998, 34.877571, 30.329409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517483, 34.904945, 30.359837>,  <44.911621, 34.950573, 30.410549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517483, 34.904945, 30.359837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146445, -0.184968, -0.971772,
		0.087398, -0.976102, 0.198963,
		-0.985350, -0.114068, -0.126780,
		44.221878, 34.870724, 30.321802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.843567, 34.392761, 29.925768>,  <44.911621, 34.950573, 30.410549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.843567, 34.392761, 29.925768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500931, 34.594616, 29.882717>,  <44.295349, 34.715729, 29.856888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500931, 34.594616, 29.882717>,  <44.843567, 34.392761, 29.925768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500931, 34.594616, 29.882717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041928, -0.139817, -0.989289,
		-0.514283, -0.851932, 0.098608,
		-0.856595, 0.504641, -0.107625,
		44.243954, 34.746010, 29.850430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522301, 34.204193, 29.249945>,  <44.843567, 34.392761, 29.925768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522301, 34.204193, 29.249945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325027, 34.539967, 29.341259>,  <44.206661, 34.741432, 29.396048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.325027, 34.539967, 29.341259>,  <44.522301, 34.204193, 29.249945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.325027, 34.539967, 29.341259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100988, 0.315894, -0.943404,
		-0.864043, -0.442219, -0.240568,
		-0.493185, 0.839436, 0.228287,
		44.177071, 34.791798, 29.409744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194557, 34.321312, 28.641161>,  <44.522301, 34.204193, 29.249945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194557, 34.321312, 28.641161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212898, 34.667355, 28.840954>,  <44.223904, 34.874981, 28.960831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212898, 34.667355, 28.840954>,  <44.194557, 34.321312, 28.641161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212898, 34.667355, 28.840954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089268, 0.494461, -0.864604,
		-0.994952, 0.084229, -0.054556,
		0.045849, 0.865109, 0.499484,
		44.226654, 34.926888, 28.990799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689297, 34.724514, 28.434244>,  <44.194557, 34.321312, 28.641161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689297, 34.724514, 28.434244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928116, 35.014557, 28.571503>,  <44.071407, 35.188583, 28.653858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928116, 35.014557, 28.571503>,  <43.689297, 34.724514, 28.434244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928116, 35.014557, 28.571503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028614, 0.408231, -0.912430,
		-0.801692, 0.554587, 0.222987,
		0.597052, 0.725107, 0.343144,
		44.107231, 35.232090, 28.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504559, 35.371799, 27.980694>,  <43.689297, 34.724514, 28.434244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504559, 35.371799, 27.980694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855717, 35.448887, 28.156038>,  <44.066410, 35.495140, 28.261246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855717, 35.448887, 28.156038>,  <43.504559, 35.371799, 27.980694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855717, 35.448887, 28.156038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278121, 0.540003, -0.794384,
		-0.389809, 0.819303, 0.420466,
		0.877894, 0.192718, 0.438363,
		44.119083, 35.506702, 28.287548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650951, 36.052139, 27.820963>,  <43.504559, 35.371799, 27.980694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650951, 36.052139, 27.820963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009251, 35.911133, 27.929310>,  <44.224232, 35.826530, 27.994318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009251, 35.911133, 27.929310>,  <43.650951, 36.052139, 27.820963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009251, 35.911133, 27.929310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422484, 0.485364, -0.765460,
		0.138367, 0.800096, 0.583696,
		0.895747, -0.352517, 0.270869,
		44.277973, 35.805378, 28.010571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146832, 36.578987, 27.803638>,  <43.650951, 36.052139, 27.820963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146832, 36.578987, 27.803638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415321, 36.282745, 27.791290>,  <44.576416, 36.105000, 27.783880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415321, 36.282745, 27.791290>,  <44.146832, 36.578987, 27.803638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415321, 36.282745, 27.791290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485128, 0.470407, -0.737135,
		0.560450, 0.479808, 0.675040,
		0.671227, -0.740608, -0.030871,
		44.616688, 36.060562, 27.782028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895702, 36.904217, 27.773539>,  <44.146832, 36.578987, 27.803638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895702, 36.904217, 27.773539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880867, 36.535782, 27.618504>,  <44.871967, 36.314720, 27.525482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880867, 36.535782, 27.618504>,  <44.895702, 36.904217, 27.773539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880867, 36.535782, 27.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490368, 0.321175, -0.810177,
		0.870726, -0.220106, 0.439760,
		-0.037084, -0.921086, -0.387589,
		44.869743, 36.259457, 27.502228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565399, 36.802681, 27.612204>,  <44.895702, 36.904217, 27.773539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565399, 36.802681, 27.612204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369953, 36.533531, 27.390036>,  <45.252686, 36.372040, 27.256735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369953, 36.533531, 27.390036>,  <45.565399, 36.802681, 27.612204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369953, 36.533531, 27.390036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613488, 0.187685, -0.767077,
		0.620392, -0.715551, 0.321095,
		-0.488618, -0.672876, -0.555420,
		45.223370, 36.331669, 27.223410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065712, 36.472725, 27.267490>,  <45.565399, 36.802681, 27.612204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065712, 36.472725, 27.267490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722294, 36.442200, 27.064680>,  <45.516243, 36.423885, 26.942993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.722294, 36.442200, 27.064680>,  <46.065712, 36.472725, 27.267490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.722294, 36.442200, 27.064680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462151, 0.313114, -0.829684,
		0.222069, -0.946645, -0.233557,
		-0.858546, -0.076308, -0.507026,
		45.464729, 36.419308, 26.912573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196632, 36.138821, 26.652613>,  <46.065712, 36.472725, 27.267490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196632, 36.138821, 26.652613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844551, 36.308258, 26.566988>,  <45.633305, 36.409920, 26.515614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844551, 36.308258, 26.566988>,  <46.196632, 36.138821, 26.652613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844551, 36.308258, 26.566988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357436, 0.294923, -0.886149,
		-0.312232, -0.856500, -0.410997,
		-0.880199, 0.423589, -0.214060,
		45.580490, 36.435333, 26.502769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036568, 35.925133, 25.905127>,  <46.196632, 36.138821, 26.652613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036568, 35.925133, 25.905127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806599, 36.248409, 25.956192>,  <45.668617, 36.442375, 25.986832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806599, 36.248409, 25.956192>,  <46.036568, 35.925133, 25.905127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806599, 36.248409, 25.956192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289458, 0.346839, -0.892141,
		-0.765296, -0.475958, -0.433342,
		-0.574922, 0.808187, 0.127665,
		45.634121, 36.490864, 25.994492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.721115, 35.998493, 25.275209>,  <46.036568, 35.925133, 25.905127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.721115, 35.998493, 25.275209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724827, 36.344013, 25.476706>,  <45.727055, 36.551327, 25.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724827, 36.344013, 25.476706>,  <45.721115, 35.998493, 25.275209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724827, 36.344013, 25.476706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442715, 0.448151, -0.776637,
		-0.896615, 0.230222, -0.378260,
		0.009281, 0.863805, 0.503741,
		45.727612, 36.603153, 25.627829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363789, 36.613567, 24.926430>,  <45.721115, 35.998493, 25.275209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363789, 36.613567, 24.926430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643692, 36.771606, 25.164499>,  <45.811634, 36.866428, 25.307341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.643692, 36.771606, 25.164499>,  <45.363789, 36.613567, 24.926430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.643692, 36.771606, 25.164499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375604, 0.505203, -0.776976,
		-0.607664, 0.767248, 0.205121,
		0.699761, 0.395096, 0.595175,
		45.853619, 36.890137, 25.343052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415184, 37.320816, 24.656450>,  <45.363789, 36.613567, 24.926430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415184, 37.320816, 24.656450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726864, 37.144344, 24.834534>,  <45.913872, 37.038460, 24.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726864, 37.144344, 24.834534>,  <45.415184, 37.320816, 24.656450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726864, 37.144344, 24.834534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610409, 0.372861, -0.698839,
		0.142314, 0.816293, 0.559833,
		0.779197, -0.441182, 0.445209,
		45.960625, 37.011990, 24.968096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043446, 37.739941, 24.896467>,  <45.415184, 37.320816, 24.656450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043446, 37.739941, 24.896467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215832, 37.391403, 24.802641>,  <46.319263, 37.182281, 24.746346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.215832, 37.391403, 24.802641>,  <46.043446, 37.739941, 24.896467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215832, 37.391403, 24.802641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485898, 0.443128, -0.753353,
		0.760374, 0.210698, 0.614360,
		0.430970, -0.871346, -0.234566,
		46.345123, 37.130001, 24.732271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.803356, 37.649712, 24.883949>,  <46.043446, 37.739941, 24.896467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.803356, 37.649712, 24.883949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615997, 37.410595, 24.623718>,  <46.503582, 37.267124, 24.467579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615997, 37.410595, 24.623718>,  <46.803356, 37.649712, 24.883949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615997, 37.410595, 24.623718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431687, 0.487627, -0.758859,
		0.770878, -0.636293, 0.029656,
		-0.468396, -0.597789, -0.650580,
		46.475479, 37.231258, 24.428545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460190, 38.252186, 24.473955>,  <46.803356, 37.649712, 24.883949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460190, 38.252186, 24.473955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482239, 38.338181, 24.863979>,  <46.495468, 38.389778, 25.097994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482239, 38.338181, 24.863979>,  <46.460190, 38.252186, 24.473955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482239, 38.338181, 24.863979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258616, 0.946293, -0.194029,
		-0.964406, -0.241471, 0.107762,
		0.055122, 0.214991, 0.975059,
		46.498775, 38.402679, 25.156498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.300457, 38.868465, 24.978500>,  <46.460190, 38.252186, 24.473955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.300457, 38.868465, 24.978500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252464, 38.710861, 25.342997>,  <46.223667, 38.616299, 25.561695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.252464, 38.710861, 25.342997>,  <46.300457, 38.868465, 24.978500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252464, 38.710861, 25.342997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917947, -0.305566, -0.252988,
		0.378125, -0.866823, -0.325021,
		-0.119980, -0.394014, 0.911240,
		46.216469, 38.592659, 25.616369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577007, 39.591988, 25.186224>,  <46.300457, 38.868465, 24.978500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577007, 39.591988, 25.186224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578854, 39.925964, 25.406349>,  <46.579960, 40.126350, 25.538425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578854, 39.925964, 25.406349>,  <46.577007, 39.591988, 25.186224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578854, 39.925964, 25.406349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390971, -0.505009, 0.769485,
		0.920391, -0.218707, 0.324109,
		0.004614, 0.834945, 0.550314,
		46.580238, 40.176449, 25.571444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.806747, 39.440247, 25.801495>,  <46.577007, 39.591988, 25.186224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.806747, 39.440247, 25.801495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640903, 39.796333, 25.876978>,  <46.541397, 40.009987, 25.922268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640903, 39.796333, 25.876978>,  <46.806747, 39.440247, 25.801495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640903, 39.796333, 25.876978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252361, -0.311719, 0.916049,
		0.874306, 0.332183, 0.353898,
		-0.414613, 0.890217, 0.188708,
		46.516521, 40.063396, 25.933590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190636, 39.795139, 26.444517>,  <46.806747, 39.440247, 25.801495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190636, 39.795139, 26.444517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811821, 39.922733, 26.429716>,  <46.584534, 39.999290, 26.420835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811821, 39.922733, 26.429716>,  <47.190636, 39.795139, 26.444517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811821, 39.922733, 26.429716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145308, -0.322921, 0.935205,
		0.286370, 0.891049, 0.352169,
		-0.947036, 0.318987, -0.037001,
		46.527710, 40.018429, 26.418615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994377, 39.635696, 27.021114>,  <47.190636, 39.795139, 26.444517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994377, 39.635696, 27.021114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643505, 39.777824, 26.891933>,  <46.432980, 39.863102, 26.814425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643505, 39.777824, 26.891933>,  <46.994377, 39.635696, 27.021114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643505, 39.777824, 26.891933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413376, -0.216665, 0.884407,
		0.244276, 0.909287, 0.336936,
		-0.877183, 0.355321, -0.322951,
		46.380352, 39.884422, 26.795048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907951, 40.169785, 27.473053>,  <46.994377, 39.635696, 27.021114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907951, 40.169785, 27.473053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.593098, 39.969086, 27.329573>,  <46.404186, 39.848667, 27.243484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.593098, 39.969086, 27.329573>,  <46.907951, 40.169785, 27.473053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593098, 39.969086, 27.329573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314599, -0.173613, 0.933213,
		-0.530510, 0.847414, -0.021191,
		-0.787139, -0.501745, -0.358699,
		46.356956, 39.818562, 27.221964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.262054, 40.333382, 27.897987>,  <46.907951, 40.169785, 27.473053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.262054, 40.333382, 27.897987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139240, 39.998798, 27.716412>,  <46.065552, 39.798046, 27.607466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139240, 39.998798, 27.716412>,  <46.262054, 40.333382, 27.897987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139240, 39.998798, 27.716412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355615, -0.341591, 0.869973,
		-0.882761, 0.428541, -0.192577,
		-0.307036, -0.836461, -0.453939,
		46.047131, 39.747860, 27.580231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703407, 40.221447, 28.213800>,  <46.262054, 40.333382, 27.897987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703407, 40.221447, 28.213800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797352, 39.856518, 28.079630>,  <45.853718, 39.637562, 27.999128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797352, 39.856518, 28.079630>,  <45.703407, 40.221447, 28.213800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797352, 39.856518, 28.079630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317973, -0.398200, 0.860424,
		-0.918550, -0.095423, -0.383615,
		0.234860, -0.912322, -0.335424,
		45.867809, 39.582821, 27.979002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108475, 39.817677, 28.414627>,  <45.703407, 40.221447, 28.213800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108475, 39.817677, 28.414627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430580, 39.588188, 28.354776>,  <45.623844, 39.450497, 28.318865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430580, 39.588188, 28.354776>,  <45.108475, 39.817677, 28.414627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430580, 39.588188, 28.354776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244107, -0.550788, 0.798151,
		-0.540320, -0.606206, -0.583583,
		0.805274, -0.573713, -0.149622,
		45.672161, 39.416073, 28.309887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910172, 39.198631, 28.479773>,  <45.108475, 39.817677, 28.414627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910172, 39.198631, 28.479773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304485, 39.177967, 28.543728>,  <45.541073, 39.165569, 28.582100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304485, 39.177967, 28.543728>,  <44.910172, 39.198631, 28.479773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304485, 39.177967, 28.543728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164949, -0.478799, 0.862289,
		0.032006, -0.876403, -0.480514,
		0.985783, -0.051662, 0.159887,
		45.600220, 39.162468, 28.591694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991356, 38.467625, 28.685350>,  <44.910172, 39.198631, 28.479773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991356, 38.467625, 28.685350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328449, 38.649555, 28.800537>,  <45.530704, 38.758713, 28.869650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328449, 38.649555, 28.800537>,  <44.991356, 38.467625, 28.685350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328449, 38.649555, 28.800537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023078, -0.503920, 0.863442,
		0.537830, -0.734301, -0.414176,
		0.842737, 0.454826, 0.287969,
		45.581272, 38.786003, 28.886929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396355, 37.867966, 28.952795>,  <44.991356, 38.467625, 28.685350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396355, 37.867966, 28.952795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537155, 38.211815, 29.100924>,  <45.621635, 38.418125, 29.189800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537155, 38.211815, 29.100924>,  <45.396355, 37.867966, 28.952795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537155, 38.211815, 29.100924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157101, -0.444289, 0.882001,
		0.922722, -0.252287, -0.291438,
		0.352000, 0.859627, 0.370320,
		45.642754, 38.469704, 29.212019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116261, 37.715275, 29.330467>,  <45.396355, 37.867966, 28.952795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116261, 37.715275, 29.330467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943962, 38.044666, 29.478165>,  <45.840584, 38.242302, 29.566782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.943962, 38.044666, 29.478165>,  <46.116261, 37.715275, 29.330467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943962, 38.044666, 29.478165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051821, -0.385900, 0.921084,
		0.900986, 0.415884, 0.123550,
		-0.430742, 0.823482, 0.369242,
		45.814739, 38.291710, 29.588938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.502609, 37.900711, 29.823298>,  <46.116261, 37.715275, 29.330467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.502609, 37.900711, 29.823298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152790, 38.071255, 29.915718>,  <45.942898, 38.173580, 29.971170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152790, 38.071255, 29.915718>,  <46.502609, 37.900711, 29.823298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152790, 38.071255, 29.915718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049241, -0.395914, 0.916966,
		0.482435, 0.813307, 0.325251,
		-0.874547, 0.426361, 0.231051,
		45.890427, 38.199162, 29.985033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626507, 38.112747, 30.466700>,  <46.502609, 37.900711, 29.823298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626507, 38.112747, 30.466700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229298, 38.129383, 30.422556>,  <45.990974, 38.139366, 30.396070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229298, 38.129383, 30.422556>,  <46.626507, 38.112747, 30.466700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229298, 38.129383, 30.422556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117744, -0.403006, 0.907592,
		-0.006727, 0.914252, 0.405090,
		-0.993021, 0.041591, -0.110359,
		45.931393, 38.141861, 30.389448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335987, 38.513119, 31.076899>,  <46.626507, 38.112747, 30.466700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335987, 38.513119, 31.076899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014938, 38.307728, 30.955484>,  <45.822308, 38.184494, 30.882637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014938, 38.307728, 30.955484>,  <46.335987, 38.513119, 31.076899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014938, 38.307728, 30.955484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210602, -0.232149, 0.949607,
		-0.558071, 0.826102, 0.078188,
		-0.802623, -0.513481, -0.303534,
		45.774151, 38.153683, 30.864424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816452, 38.688469, 31.528017>,  <46.335987, 38.513119, 31.076899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816452, 38.688469, 31.528017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660000, 38.363342, 31.355345>,  <45.566128, 38.168266, 31.251741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.660000, 38.363342, 31.355345>,  <45.816452, 38.688469, 31.528017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660000, 38.363342, 31.355345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330533, -0.313694, 0.890137,
		-0.858934, 0.490841, -0.145969,
		-0.391126, -0.812817, -0.431682,
		45.542664, 38.119495, 31.225840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169170, 38.540451, 31.883114>,  <45.816452, 38.688469, 31.528017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169170, 38.540451, 31.883114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264698, 38.192875, 31.709719>,  <45.322014, 37.984329, 31.605680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.264698, 38.192875, 31.709719>,  <45.169170, 38.540451, 31.883114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264698, 38.192875, 31.709719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567581, -0.487122, 0.663749,
		-0.787919, 0.087524, -0.609527,
		0.238820, -0.868937, -0.433490,
		45.336346, 37.932194, 31.579672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669628, 38.158291, 32.139328>,  <45.169170, 38.540451, 31.883114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669628, 38.158291, 32.139328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890430, 37.866539, 31.977694>,  <45.022911, 37.691486, 31.880713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890430, 37.866539, 31.977694>,  <44.669628, 38.158291, 32.139328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890430, 37.866539, 31.977694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397738, -0.656251, 0.641202,
		-0.732864, -0.193228, -0.652360,
		0.552010, -0.729382, -0.404088,
		45.056034, 37.647724, 31.856466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291321, 37.459347, 32.023956>,  <44.669628, 38.158291, 32.139328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291321, 37.459347, 32.023956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678131, 37.357563, 32.019711>,  <44.910217, 37.296494, 32.017162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678131, 37.357563, 32.019711>,  <44.291321, 37.459347, 32.023956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678131, 37.357563, 32.019711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178563, -0.707140, 0.684155,
		-0.181595, -0.659700, -0.729259,
		0.967026, -0.254458, -0.010615,
		44.968239, 37.281227, 32.016525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295902, 36.709774, 31.951900>,  <44.291321, 37.459347, 32.023956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295902, 36.709774, 31.951900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653084, 36.815620, 32.097561>,  <44.867393, 36.879128, 32.184959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653084, 36.815620, 32.097561>,  <44.295902, 36.709774, 31.951900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653084, 36.815620, 32.097561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094147, -0.681291, 0.725934,
		0.440190, -0.682510, -0.583449,
		0.892955, 0.264619, 0.364154,
		44.920971, 36.895004, 32.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625607, 36.065304, 32.111771>,  <44.295902, 36.709774, 31.951900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625607, 36.065304, 32.111771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819939, 36.335049, 32.334194>,  <44.936539, 36.496895, 32.467648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.819939, 36.335049, 32.334194>,  <44.625607, 36.065304, 32.111771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819939, 36.335049, 32.334194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051123, -0.613173, 0.788292,
		0.872556, -0.411404, -0.263423,
		0.485831, 0.674363, 0.556060,
		44.965687, 36.537357, 32.501011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179371, 35.704983, 32.349091>,  <44.625607, 36.065304, 32.111771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179371, 35.704983, 32.349091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097866, 36.011948, 32.592255>,  <45.048962, 36.196129, 32.738152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097866, 36.011948, 32.592255>,  <45.179371, 35.704983, 32.349091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097866, 36.011948, 32.592255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032580, -0.625909, 0.779216,
		0.978478, 0.138969, 0.152539,
		-0.203763, 0.767415, 0.607910,
		45.036736, 36.242172, 32.774628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592781, 35.601585, 32.876270>,  <45.179371, 35.704983, 32.349091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592781, 35.601585, 32.876270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329906, 35.851814, 33.044449>,  <45.172180, 36.001949, 33.145355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329906, 35.851814, 33.044449>,  <45.592781, 35.601585, 32.876270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329906, 35.851814, 33.044449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075526, -0.609664, 0.789054,
		0.749935, 0.486801, 0.447909,
		-0.657186, 0.625568, 0.420442,
		45.132751, 36.039486, 33.170582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717392, 35.651764, 33.603264>,  <45.592781, 35.601585, 32.876270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717392, 35.651764, 33.603264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336250, 35.772129, 33.587666>,  <45.107567, 35.844349, 33.578308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336250, 35.772129, 33.587666>,  <45.717392, 35.651764, 33.603264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336250, 35.772129, 33.587666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177677, -0.449160, 0.875606,
		0.245965, 0.841254, 0.481449,
		-0.952855, 0.300911, -0.038994,
		45.050392, 35.862404, 33.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709618, 35.803288, 34.283913>,  <45.717392, 35.651764, 33.603264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709618, 35.803288, 34.283913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325027, 35.823868, 34.175900>,  <45.094273, 35.836216, 34.111092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325027, 35.823868, 34.175900>,  <45.709618, 35.803288, 34.283913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325027, 35.823868, 34.175900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270001, -0.361290, 0.892507,
		-0.051640, 0.931033, 0.361263,
		-0.961474, 0.051453, -0.270037,
		45.036587, 35.839302, 34.094887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452419, 35.755630, 34.454594>,  <45.709618, 35.803288, 34.283913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452419, 35.755630, 34.454594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501911, 35.413830, 34.656395>,  <46.531605, 35.208752, 34.777477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501911, 35.413830, 34.656395>,  <46.452419, 35.755630, 34.454594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501911, 35.413830, 34.656395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989233, 0.066167, -0.130533,
		0.078159, 0.515222, 0.853485,
		0.123726, -0.854499, 0.504504,
		46.539028, 35.157478, 34.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888741, 35.787758, 35.099361>,  <46.452419, 35.755630, 34.454594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888741, 35.787758, 35.099361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922783, 35.411221, 34.968742>,  <46.943207, 35.185299, 34.890369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.922783, 35.411221, 34.968742>,  <46.888741, 35.787758, 35.099361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.922783, 35.411221, 34.968742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982171, 0.134394, -0.131449,
		0.167624, -0.309538, 0.935996,
		0.085104, -0.941342, -0.326547,
		46.948315, 35.128819, 34.870777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379833, 35.474731, 35.450504>,  <46.888741, 35.787758, 35.099361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379833, 35.474731, 35.450504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377289, 35.302887, 35.089310>,  <47.375763, 35.199780, 34.872593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.377289, 35.302887, 35.089310>,  <47.379833, 35.474731, 35.450504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.377289, 35.302887, 35.089310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978788, 0.182242, -0.093604,
		0.204776, -0.884432, 0.419341,
		-0.006364, -0.429614, -0.902990,
		47.375378, 35.174004, 34.818413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.817692, 34.932266, 35.512939>,  <47.379833, 35.474731, 35.450504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.817692, 34.932266, 35.512939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792835, 35.101273, 35.151249>,  <47.777920, 35.202675, 34.934235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.792835, 35.101273, 35.151249>,  <47.817692, 34.932266, 35.512939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.792835, 35.101273, 35.151249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988497, 0.151217, 0.002726,
		0.137886, -0.893652, -0.427052,
		-0.062142, 0.422515, -0.904223,
		47.774193, 35.228027, 34.879982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.513912, 34.734619, 44.902649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159328, 34.732639, 44.717533>,  <35.946579, 34.731453, 44.606464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.159328, 34.732639, 44.717533>,  <36.513912, 34.734619, 44.902649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159328, 34.732639, 44.717533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434024, 0.338278, -0.834979,
		0.160680, -0.941033, -0.297722,
		-0.886456, -0.004946, -0.462786,
		35.893391, 34.731155, 44.578697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654453, 34.301182, 44.198177>,  <36.513912, 34.734619, 44.902649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654453, 34.301182, 44.198177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303047, 34.482769, 44.138687>,  <36.092201, 34.591721, 44.102993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303047, 34.482769, 44.138687>,  <36.654453, 34.301182, 44.198177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303047, 34.482769, 44.138687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246901, 0.164957, -0.954898,
		-0.408960, -0.875615, -0.257003,
		-0.878517, 0.453969, -0.148729,
		36.039494, 34.618961, 44.094067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387051, 33.994484, 43.558910>,  <36.654453, 34.301182, 44.198177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387051, 33.994484, 43.558910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201664, 34.347004, 43.595821>,  <36.090431, 34.558514, 43.617966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.201664, 34.347004, 43.595821>,  <36.387051, 33.994484, 43.558910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201664, 34.347004, 43.595821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285710, 0.247196, -0.925885,
		-0.838789, -0.402755, -0.366363,
		-0.463468, 0.881296, 0.092274,
		36.062622, 34.611393, 43.623505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960896, 34.044815, 42.973484>,  <36.387051, 33.994484, 43.558910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960896, 34.044815, 42.973484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997017, 34.421303, 43.103687>,  <36.018688, 34.647194, 43.181808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997017, 34.421303, 43.103687>,  <35.960896, 34.044815, 42.973484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997017, 34.421303, 43.103687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073306, 0.319671, -0.944689,
		-0.993213, 0.109168, -0.040130,
		0.090302, 0.941219, 0.325504,
		36.024109, 34.703667, 43.201340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492817, 34.490311, 42.583500>,  <35.960896, 34.044815, 42.973484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492817, 34.490311, 42.583500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771927, 34.738903, 42.725971>,  <35.939392, 34.888058, 42.811455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771927, 34.738903, 42.725971>,  <35.492817, 34.490311, 42.583500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771927, 34.738903, 42.725971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096941, 0.410737, -0.906586,
		-0.709725, 0.667123, 0.226356,
		0.697777, 0.621484, 0.356182,
		35.981258, 34.925346, 42.832825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336933, 35.151817, 42.194729>,  <35.492817, 34.490311, 42.583500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336933, 35.151817, 42.194729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702774, 35.202175, 42.348434>,  <35.922279, 35.232388, 42.440659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.702774, 35.202175, 42.348434>,  <35.336933, 35.151817, 42.194729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702774, 35.202175, 42.348434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248214, 0.575412, -0.779289,
		-0.319217, 0.808117, 0.495023,
		0.914598, 0.125890, 0.384267,
		35.977154, 35.239941, 42.463715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459579, 35.862587, 42.118889>,  <35.336933, 35.151817, 42.194729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459579, 35.862587, 42.118889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806767, 35.666634, 42.151489>,  <36.015079, 35.549061, 42.171051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806767, 35.666634, 42.151489>,  <35.459579, 35.862587, 42.118889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806767, 35.666634, 42.151489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331926, 0.450188, -0.828949,
		0.369400, 0.746553, 0.553355,
		0.867968, -0.489887, 0.081501,
		36.067158, 35.519669, 42.175941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019691, 36.352444, 41.947487>,  <35.459579, 35.862587, 42.118889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019691, 36.352444, 41.947487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160172, 35.985600, 41.872047>,  <36.244461, 35.765491, 41.826786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160172, 35.985600, 41.872047>,  <36.019691, 36.352444, 41.947487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160172, 35.985600, 41.872047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417377, 0.333651, -0.845265,
		0.838126, 0.218142, 0.499959,
		0.351200, -0.917110, -0.188594,
		36.265530, 35.710468, 41.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670937, 36.485504, 41.582424>,  <36.019691, 36.352444, 41.947487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670937, 36.485504, 41.582424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644688, 36.092461, 41.512947>,  <36.628937, 35.856632, 41.471260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644688, 36.092461, 41.512947>,  <36.670937, 36.485504, 41.582424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644688, 36.092461, 41.512947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339880, 0.141645, -0.929741,
		0.938176, -0.120049, 0.324675,
		-0.065626, -0.982611, -0.173690,
		36.625000, 35.797676, 41.460838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299164, 36.079716, 41.312695>,  <36.670937, 36.485504, 41.582424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299164, 36.079716, 41.312695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020390, 35.813812, 41.205082>,  <36.853127, 35.654270, 41.140514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020390, 35.813812, 41.205082>,  <37.299164, 36.079716, 41.312695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020390, 35.813812, 41.205082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275791, 0.097848, -0.956225,
		0.661982, -0.740623, 0.115140,
		-0.696936, -0.664758, -0.269030,
		36.811310, 35.614384, 41.124374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628437, 35.618431, 40.801235>,  <37.299164, 36.079716, 41.312695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628437, 35.618431, 40.801235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236835, 35.616798, 40.719711>,  <37.001877, 35.615818, 40.670795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236835, 35.616798, 40.719711>,  <37.628437, 35.618431, 40.801235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236835, 35.616798, 40.719711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203695, -0.058821, -0.977266,
		-0.007993, -0.998260, 0.058418,
		-0.979002, -0.004088, -0.203810,
		36.943134, 35.615574, 40.658569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631191, 35.213173, 40.203926>,  <37.628437, 35.618431, 40.801235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631191, 35.213173, 40.203926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278992, 35.401276, 40.179962>,  <37.067673, 35.514137, 40.165585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278992, 35.401276, 40.179962>,  <37.631191, 35.213173, 40.203926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278992, 35.401276, 40.179962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151336, 0.159070, -0.975599,
		-0.449250, -0.868077, -0.211226,
		-0.880495, 0.470254, -0.059909,
		37.014843, 35.542351, 40.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200264, 34.848850, 39.596619>,  <37.631191, 35.213173, 40.203926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200264, 34.848850, 39.596619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075844, 35.223518, 39.660984>,  <37.001190, 35.448318, 39.699604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075844, 35.223518, 39.660984>,  <37.200264, 34.848850, 39.596619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075844, 35.223518, 39.660984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221840, 0.236196, -0.946044,
		-0.924139, -0.258574, -0.281261,
		-0.311055, 0.936670, 0.160916,
		36.982529, 35.504520, 39.709259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721382, 34.985405, 39.017506>,  <37.200264, 34.848850, 39.596619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721382, 34.985405, 39.017506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819241, 35.344322, 39.164478>,  <36.877956, 35.559673, 39.252663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819241, 35.344322, 39.164478>,  <36.721382, 34.985405, 39.017506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819241, 35.344322, 39.164478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107176, 0.351599, -0.929995,
		-0.963670, 0.266902, -0.010150,
		0.244648, 0.897297, 0.367431,
		36.892635, 35.613510, 39.274708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214859, 35.517612, 38.727871>,  <36.721382, 34.985405, 39.017506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214859, 35.517612, 38.727871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548512, 35.713844, 38.828712>,  <36.748703, 35.831585, 38.889217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548512, 35.713844, 38.828712>,  <36.214859, 35.517612, 38.727871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548512, 35.713844, 38.828712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106925, 0.304582, -0.946466,
		-0.541107, 0.816431, 0.201605,
		0.834129, 0.490582, 0.252108,
		36.798752, 35.861019, 38.904346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146114, 36.106190, 38.355534>,  <36.214859, 35.517612, 38.727871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146114, 36.106190, 38.355534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529812, 36.073833, 38.463833>,  <36.760029, 36.054420, 38.528812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.529812, 36.073833, 38.463833>,  <36.146114, 36.106190, 38.355534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529812, 36.073833, 38.463833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280148, 0.146840, -0.948660,
		0.036985, 0.985847, 0.163518,
		0.959244, -0.080895, 0.270752,
		36.817585, 36.049564, 38.545059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467655, 36.501369, 37.849243>,  <36.146114, 36.106190, 38.355534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467655, 36.501369, 37.849243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780781, 36.311188, 38.009815>,  <36.968655, 36.197079, 38.106159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780781, 36.311188, 38.009815>,  <36.467655, 36.501369, 37.849243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780781, 36.311188, 38.009815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533058, 0.179575, -0.826802,
		0.321017, 0.861219, 0.394017,
		0.782814, -0.475451, 0.401433,
		37.015625, 36.168552, 38.130245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126259, 36.828293, 37.774212>,  <36.467655, 36.501369, 37.849243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126259, 36.828293, 37.774212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230370, 36.443893, 37.811596>,  <37.292835, 36.213253, 37.834026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230370, 36.443893, 37.811596>,  <37.126259, 36.828293, 37.774212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230370, 36.443893, 37.811596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543404, 0.065781, -0.836890,
		0.798104, 0.268608, 0.539333,
		0.260274, -0.961001, 0.093463,
		37.308453, 36.155594, 37.839634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774132, 36.830875, 37.527332>,  <37.126259, 36.828293, 37.774212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774132, 36.830875, 37.527332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708256, 36.436337, 37.526768>,  <37.668732, 36.199615, 37.526428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708256, 36.436337, 37.526768>,  <37.774132, 36.830875, 37.527332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708256, 36.436337, 37.526768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400625, -0.065583, -0.913892,
		0.901319, -0.151076, 0.405955,
		-0.164691, -0.986344, -0.001413,
		37.658848, 36.140434, 37.526344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363449, 36.615715, 37.175274>,  <37.774132, 36.830875, 37.527332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363449, 36.615715, 37.175274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091858, 36.323257, 37.148705>,  <37.928902, 36.147781, 37.132763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.091858, 36.323257, 37.148705>,  <38.363449, 36.615715, 37.175274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091858, 36.323257, 37.148705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292690, -0.186603, -0.937823,
		0.673288, -0.656208, 0.340698,
		-0.678982, -0.731143, -0.066427,
		37.888165, 36.103916, 37.128777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793396, 36.085331, 36.914833>,  <38.363449, 36.615715, 37.175274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793396, 36.085331, 36.914833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408871, 36.009533, 36.834862>,  <38.178154, 35.964054, 36.786877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408871, 36.009533, 36.834862>,  <38.793396, 36.085331, 36.914833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408871, 36.009533, 36.834862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240097, -0.220612, -0.945348,
		0.135030, -0.956777, 0.257573,
		-0.961311, -0.189493, -0.199930,
		38.120476, 35.952686, 36.774883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873177, 35.329803, 36.699787>,  <38.793396, 36.085331, 36.914833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873177, 35.329803, 36.699787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.528751, 35.478401, 36.560898>,  <38.322098, 35.567562, 36.477566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.528751, 35.478401, 36.560898>,  <38.873177, 35.329803, 36.699787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528751, 35.478401, 36.560898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191835, -0.395065, -0.898400,
		-0.470930, -0.840186, 0.268909,
		-0.861060, 0.371498, -0.347225,
		38.270432, 35.589851, 36.456730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447254, 34.945072, 36.577431>,  <38.873177, 35.329803, 36.699787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447254, 34.945072, 36.577431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826019, 34.886673, 36.692009>,  <40.053276, 34.851635, 36.760754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826019, 34.886673, 36.692009>,  <39.447254, 34.945072, 36.577431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826019, 34.886673, 36.692009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301078, -0.090181, 0.949326,
		-0.112775, -0.985165, -0.129352,
		0.946908, -0.146006, 0.286441,
		40.110092, 34.842873, 36.777943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545357, 34.377308, 37.059502>,  <39.447254, 34.945072, 36.577431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545357, 34.377308, 37.059502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874218, 34.596397, 37.121559>,  <40.071533, 34.727852, 37.158794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874218, 34.596397, 37.121559>,  <39.545357, 34.377308, 37.059502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874218, 34.596397, 37.121559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100803, -0.128150, 0.986619,
		0.560277, -0.826786, -0.050146,
		0.822149, 0.547725, 0.155142,
		40.120861, 34.760715, 37.168102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787758, 34.107613, 37.716198>,  <39.545357, 34.377308, 37.059502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787758, 34.107613, 37.716198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992970, 34.448483, 37.675026>,  <40.116096, 34.653004, 37.650322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.992970, 34.448483, 37.675026>,  <39.787758, 34.107613, 37.716198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992970, 34.448483, 37.675026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064047, 0.081578, 0.994607,
		0.855980, -0.516853, -0.012728,
		0.513027, 0.852179, -0.102932,
		40.146877, 34.704136, 37.644146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393494, 33.933098, 38.075897>,  <39.787758, 34.107613, 37.716198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393494, 33.933098, 38.075897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326427, 34.326992, 38.057236>,  <40.286190, 34.563328, 38.046040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326427, 34.326992, 38.057236>,  <40.393494, 33.933098, 38.075897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326427, 34.326992, 38.057236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131897, 0.069309, 0.988837,
		0.976982, 0.159636, -0.141505,
		-0.167662, 0.984740, -0.046658,
		40.276131, 34.622414, 38.043240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799248, 34.230225, 38.484016>,  <40.393494, 33.933098, 38.075897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799248, 34.230225, 38.484016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537140, 34.527565, 38.430279>,  <40.379875, 34.705971, 38.398037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.537140, 34.527565, 38.430279>,  <40.799248, 34.230225, 38.484016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537140, 34.527565, 38.430279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022398, 0.158648, 0.987081,
		0.755064, 0.649812, -0.087308,
		-0.655269, 0.743353, -0.134344,
		40.340561, 34.750572, 38.389977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969887, 34.887367, 38.869305>,  <40.799248, 34.230225, 38.484016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969887, 34.887367, 38.869305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575958, 34.875690, 38.800854>,  <40.339603, 34.868687, 38.759785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575958, 34.875690, 38.800854>,  <40.969887, 34.887367, 38.869305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575958, 34.875690, 38.800854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173391, 0.117549, 0.977813,
		-0.008426, 0.992638, -0.120825,
		-0.984817, -0.029189, -0.171124,
		40.280514, 34.866932, 38.749516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791889, 35.243099, 39.422253>,  <40.969887, 34.887367, 38.869305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791889, 35.243099, 39.422253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431534, 35.119396, 39.300430>,  <40.215321, 35.045174, 39.227337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.431534, 35.119396, 39.300430>,  <40.791889, 35.243099, 39.422253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431534, 35.119396, 39.300430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362505, 0.150193, 0.919800,
		-0.238712, 0.939043, -0.247415,
		-0.900892, -0.309256, -0.304555,
		40.161266, 35.026619, 39.209064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427036, 35.660152, 39.863605>,  <40.791889, 35.243099, 39.422253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427036, 35.660152, 39.863605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167961, 35.387615, 39.727215>,  <40.012516, 35.224091, 39.645382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.167961, 35.387615, 39.727215>,  <40.427036, 35.660152, 39.863605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167961, 35.387615, 39.727215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521114, 0.069675, 0.850638,
		-0.555821, 0.728638, -0.400187,
		-0.647691, -0.681345, -0.340977,
		39.973656, 35.183212, 39.624920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736164, 35.804890, 40.249557>,  <40.427036, 35.660152, 39.863605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736164, 35.804890, 40.249557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711002, 35.429787, 40.112942>,  <39.695904, 35.204723, 40.030972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711002, 35.429787, 40.112942>,  <39.736164, 35.804890, 40.249557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711002, 35.429787, 40.112942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660498, -0.217435, 0.718654,
		-0.748188, 0.270793, -0.605711,
		-0.062904, -0.937759, -0.341540,
		39.692131, 35.148460, 40.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003757, 35.593384, 40.194042>,  <39.736164, 35.804890, 40.249557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003757, 35.593384, 40.194042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203781, 35.249756, 40.237732>,  <39.323795, 35.043579, 40.263947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203781, 35.249756, 40.237732>,  <39.003757, 35.593384, 40.194042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203781, 35.249756, 40.237732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593019, -0.247792, 0.766112,
		-0.631083, -0.447874, -0.633359,
		0.500063, -0.859074, 0.109221,
		39.353802, 34.992035, 40.270496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592876, 35.203239, 40.601097>,  <39.003757, 35.593384, 40.194042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592876, 35.203239, 40.601097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912994, 34.965187, 40.630371>,  <39.105064, 34.822357, 40.647934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.912994, 34.965187, 40.630371>,  <38.592876, 35.203239, 40.601097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912994, 34.965187, 40.630371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286545, -0.272379, 0.918532,
		-0.526713, -0.756062, -0.388514,
		0.800290, -0.595131, 0.073180,
		39.153080, 34.786648, 40.652325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331814, 34.636822, 40.939030>,  <38.592876, 35.203239, 40.601097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331814, 34.636822, 40.939030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727940, 34.632088, 40.994366>,  <38.965614, 34.629246, 41.027565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727940, 34.632088, 40.994366>,  <38.331814, 34.636822, 40.939030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727940, 34.632088, 40.994366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138524, -0.151706, 0.978671,
		0.009404, -0.988355, -0.151876,
		0.990315, -0.011835, 0.138337,
		39.025032, 34.628536, 41.035866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612385, 33.892719, 41.290573>,  <38.331814, 34.636822, 40.939030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612385, 33.892719, 41.290573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882610, 34.171886, 41.385670>,  <39.044746, 34.339386, 41.442726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882610, 34.171886, 41.385670>,  <38.612385, 33.892719, 41.290573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882610, 34.171886, 41.385670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042280, -0.285244, 0.957522,
		0.736086, -0.656921, -0.163193,
		0.675567, 0.697919, 0.237738,
		39.085281, 34.381264, 41.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012489, 33.492493, 41.705078>,  <38.612385, 33.892719, 41.290573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012489, 33.492493, 41.705078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117123, 33.871349, 41.779366>,  <39.179901, 34.098663, 41.823940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.117123, 33.871349, 41.779366>,  <39.012489, 33.492493, 41.705078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117123, 33.871349, 41.779366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085407, -0.214382, 0.973009,
		0.961396, -0.238656, -0.136970,
		0.261579, 0.947145, 0.185723,
		39.195595, 34.155495, 41.835083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648876, 33.489910, 42.200317>,  <39.012489, 33.492493, 41.705078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648876, 33.489910, 42.200317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476486, 33.849571, 42.230732>,  <39.373055, 34.065369, 42.248981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.476486, 33.849571, 42.230732>,  <39.648876, 33.489910, 42.200317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476486, 33.849571, 42.230732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105811, -0.033325, 0.993828,
		0.896140, 0.436359, -0.080778,
		-0.430973, 0.899156, 0.076035,
		39.347195, 34.119316, 42.253544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946049, 33.749588, 42.742870>,  <39.648876, 33.489910, 42.200317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946049, 33.749588, 42.742870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599834, 33.947830, 42.713936>,  <39.392105, 34.066776, 42.696575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.599834, 33.947830, 42.713936>,  <39.946049, 33.749588, 42.742870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599834, 33.947830, 42.713936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092503, -0.016233, 0.995580,
		0.492237, 0.868398, 0.059895,
		-0.865532, 0.495602, -0.072339,
		39.340176, 34.096512, 42.692234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011650, 34.280460, 43.242329>,  <39.946049, 33.749588, 42.742870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011650, 34.280460, 43.242329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622883, 34.214737, 43.174942>,  <39.389622, 34.175304, 43.134510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622883, 34.214737, 43.174942>,  <40.011650, 34.280460, 43.242329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622883, 34.214737, 43.174942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136001, -0.192046, 0.971917,
		-0.192046, 0.967534, 0.164306,
		-0.971917, -0.164306, -0.168467,
		39.331306, 34.165443, 43.124401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729137, 34.747658, 43.640766>,  <40.011650, 34.280460, 43.242329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729137, 34.747658, 43.640766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.445557, 34.471317, 43.584042>,  <39.275410, 34.305511, 43.550007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.445557, 34.471317, 43.584042>,  <39.729137, 34.747658, 43.640766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445557, 34.471317, 43.584042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118625, -0.081399, 0.989597,
		-0.695208, 0.718399, -0.024244,
		-0.708952, -0.690852, -0.141809,
		39.232872, 34.264061, 43.541500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.470245, 35.007202, 43.963043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596706, 34.629612, 43.925194>,  <38.672585, 34.403057, 43.902485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.596706, 34.629612, 43.925194>,  <38.470245, 35.007202, 43.963043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596706, 34.629612, 43.925194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535220, -0.259822, 0.803761,
		-0.783317, -0.203469, -0.587379,
		0.316155, -0.943977, -0.094622,
		38.691551, 34.346420, 43.896809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862572, 34.604469, 43.949184>,  <38.470245, 35.007202, 43.963043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862572, 34.604469, 43.949184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142956, 34.337585, 44.049969>,  <38.311184, 34.177456, 44.110439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.142956, 34.337585, 44.049969>,  <37.862572, 34.604469, 43.949184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142956, 34.337585, 44.049969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538388, -0.263325, 0.800499,
		-0.467757, -0.696768, -0.543800,
		0.700958, -0.667214, 0.251959,
		38.353245, 34.137421, 44.125557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589527, 33.952538, 44.136036>,  <37.862572, 34.604469, 43.949184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589527, 33.952538, 44.136036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950687, 33.907372, 44.301937>,  <38.167385, 33.880272, 44.401478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950687, 33.907372, 44.301937>,  <37.589527, 33.952538, 44.136036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950687, 33.907372, 44.301937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412346, -0.500039, 0.761532,
		0.121405, -0.858610, -0.498046,
		0.902902, -0.112914, 0.414752,
		38.221558, 33.873497, 44.426361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646908, 33.208778, 44.447338>,  <37.589527, 33.952538, 44.136036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646908, 33.208778, 44.447338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906494, 33.447842, 44.635662>,  <38.062244, 33.591278, 44.748657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906494, 33.447842, 44.635662>,  <37.646908, 33.208778, 44.447338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906494, 33.447842, 44.635662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358947, -0.305105, 0.882082,
		0.670825, -0.741432, 0.016525,
		0.648961, 0.597654, 0.470806,
		38.101181, 33.627136, 44.776905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807064, 32.826347, 45.038143>,  <37.646908, 33.208778, 44.447338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807064, 32.826347, 45.038143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934666, 33.191662, 45.139458>,  <38.011227, 33.410851, 45.200245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934666, 33.191662, 45.139458>,  <37.807064, 32.826347, 45.038143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934666, 33.191662, 45.139458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313694, -0.150442, 0.937530,
		0.894335, -0.378527, 0.238500,
		0.319000, 0.913283, 0.253288,
		38.030365, 33.465645, 45.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071613, 32.770184, 45.739899>,  <37.807064, 32.826347, 45.038143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071613, 32.770184, 45.739899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038597, 33.166908, 45.700912>,  <38.018787, 33.404942, 45.677521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.038597, 33.166908, 45.700912>,  <38.071613, 32.770184, 45.739899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038597, 33.166908, 45.700912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331888, 0.064861, 0.941086,
		0.939701, 0.110024, 0.323816,
		-0.082539, 0.991811, -0.097465,
		38.013836, 33.464451, 45.671673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474468, 33.099174, 46.256153>,  <38.071613, 32.770184, 45.739899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474468, 33.099174, 46.256153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.200619, 33.370617, 46.149734>,  <38.036308, 33.533482, 46.085884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.200619, 33.370617, 46.149734>,  <38.474468, 33.099174, 46.256153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200619, 33.370617, 46.149734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204529, 0.171477, 0.963724,
		0.699610, 0.714205, 0.021397,
		-0.684627, 0.678607, -0.266043,
		37.995232, 33.574200, 46.069923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487873, 33.629398, 46.806168>,  <38.474468, 33.099174, 46.256153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487873, 33.629398, 46.806168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136147, 33.705624, 46.631584>,  <37.925110, 33.751358, 46.526833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.136147, 33.705624, 46.631584>,  <38.487873, 33.629398, 46.806168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136147, 33.705624, 46.631584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412246, 0.154314, 0.897909,
		0.238461, 0.969470, -0.057130,
		-0.879312, 0.190565, -0.436458,
		37.872353, 33.762794, 46.500648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304359, 34.183270, 47.217804>,  <38.487873, 33.629398, 46.806168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304359, 34.183270, 47.217804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984909, 34.020451, 47.040489>,  <37.793240, 33.922760, 46.934101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.984909, 34.020451, 47.040489>,  <38.304359, 34.183270, 47.217804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984909, 34.020451, 47.040489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529492, 0.125115, 0.839037,
		-0.286068, 0.904796, -0.315450,
		-0.798625, -0.407051, -0.443291,
		37.745323, 33.898335, 46.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822750, 34.659492, 47.384472>,  <38.304359, 34.183270, 47.217804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822750, 34.659492, 47.384472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629547, 34.321033, 47.294376>,  <37.513626, 34.117958, 47.240318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629547, 34.321033, 47.294376>,  <37.822750, 34.659492, 47.384472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629547, 34.321033, 47.294376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547723, 0.091277, 0.831666,
		-0.683156, 0.525069, -0.507543,
		-0.483009, -0.846151, -0.225236,
		37.484646, 34.067188, 47.226807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181744, 34.820004, 47.682266>,  <37.822750, 34.659492, 47.384472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181744, 34.820004, 47.682266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196495, 34.421318, 47.653431>,  <37.205345, 34.182106, 47.636127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.196495, 34.421318, 47.653431>,  <37.181744, 34.820004, 47.682266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196495, 34.421318, 47.653431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500221, -0.080862, 0.862113,
		-0.865112, 0.004273, -0.501560,
		0.036874, -0.996716, -0.072092,
		37.207558, 34.122303, 47.631802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442417, 34.514515, 47.821117>,  <37.181744, 34.820004, 47.682266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442417, 34.514515, 47.821117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671127, 34.190029, 47.870117>,  <36.808353, 33.995338, 47.899517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671127, 34.190029, 47.870117>,  <36.442417, 34.514515, 47.821117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671127, 34.190029, 47.870117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526320, -0.248161, 0.813267,
		-0.629336, -0.529476, -0.568851,
		0.571772, -0.811216, 0.122497,
		36.842659, 33.946663, 47.906868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044739, 33.880825, 48.203362>,  <36.442417, 34.514515, 47.821117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044739, 33.880825, 48.203362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421227, 33.749157, 48.233711>,  <36.647118, 33.670158, 48.251919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.421227, 33.749157, 48.233711>,  <36.044739, 33.880825, 48.203362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421227, 33.749157, 48.233711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233845, -0.472833, 0.849556,
		-0.243772, -0.817361, -0.522013,
		0.941219, -0.329168, 0.075872,
		36.703590, 33.650406, 48.256474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928585, 33.211639, 48.365421>,  <36.044739, 33.880825, 48.203362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928585, 33.211639, 48.365421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296345, 33.319019, 48.480408>,  <36.517002, 33.383446, 48.549400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296345, 33.319019, 48.480408>,  <35.928585, 33.211639, 48.365421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296345, 33.319019, 48.480408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206284, -0.293189, 0.933535,
		0.334890, -0.917592, -0.214181,
		0.919400, 0.268449, 0.287470,
		36.572166, 33.399555, 48.566650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233913, 32.652027, 48.726311>,  <35.928585, 33.211639, 48.365421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233913, 32.652027, 48.726311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469692, 32.954777, 48.839233>,  <36.611160, 33.136425, 48.906986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469692, 32.954777, 48.839233>,  <36.233913, 32.652027, 48.726311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469692, 32.954777, 48.839233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110902, -0.270339, 0.956356,
		0.800155, -0.595034, -0.075414,
		0.589452, 0.756870, 0.282303,
		36.646526, 33.181839, 48.923923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794952, 32.416569, 49.177254>,  <36.233913, 32.652027, 48.726311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794952, 32.416569, 49.177254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792568, 32.802895, 49.280922>,  <36.791138, 33.034691, 49.343124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792568, 32.802895, 49.280922>,  <36.794952, 32.416569, 49.177254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792568, 32.802895, 49.280922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098752, -0.258478, 0.960956,
		0.995094, -0.019869, 0.096916,
		-0.005958, 0.965813, 0.259172,
		36.790779, 33.092640, 49.358673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074516, 32.344326, 49.819607>,  <36.794952, 32.416569, 49.177254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074516, 32.344326, 49.819607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928303, 32.716625, 49.815826>,  <36.840576, 32.940006, 49.813557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928303, 32.716625, 49.815826>,  <37.074516, 32.344326, 49.819607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928303, 32.716625, 49.815826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355290, -0.130130, 0.925654,
		0.860323, 0.341716, 0.378253,
		-0.365533, 0.930751, -0.009454,
		36.818642, 32.995850, 49.812988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474110, 32.671383, 50.345715>,  <37.074516, 32.344326, 49.819607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474110, 32.671383, 50.345715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140755, 32.882099, 50.278828>,  <36.940742, 33.008530, 50.238693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140755, 32.882099, 50.278828>,  <37.474110, 32.671383, 50.345715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140755, 32.882099, 50.278828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190933, 0.009521, 0.981557,
		0.518667, 0.849942, 0.092647,
		-0.833384, 0.526791, -0.167220,
		36.890739, 33.040138, 50.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496780, 33.363415, 50.727280>,  <37.474110, 32.671383, 50.345715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496780, 33.363415, 50.727280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126488, 33.223778, 50.669109>,  <36.904312, 33.139996, 50.634205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126488, 33.223778, 50.669109>,  <37.496780, 33.363415, 50.727280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126488, 33.223778, 50.669109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191015, 0.099734, 0.976507,
		-0.326390, 0.931765, -0.159010,
		-0.925734, -0.349095, -0.145429,
		36.848766, 33.119049, 50.625481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107586, 33.748993, 51.256809>,  <37.496780, 33.363415, 50.727280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107586, 33.748993, 51.256809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888588, 33.427040, 51.165234>,  <36.757187, 33.233868, 51.110291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888588, 33.427040, 51.165234>,  <37.107586, 33.748993, 51.256809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888588, 33.427040, 51.165234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257491, -0.098267, 0.961271,
		-0.796206, 0.585243, -0.153448,
		-0.547498, -0.804881, -0.228936,
		36.724339, 33.185577, 51.096554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453461, 33.847137, 51.569817>,  <37.107586, 33.748993, 51.256809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453461, 33.847137, 51.569817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484776, 33.452152, 51.515003>,  <36.503567, 33.215160, 51.482113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.484776, 33.452152, 51.515003>,  <36.453461, 33.847137, 51.569817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484776, 33.452152, 51.515003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340940, -0.155691, 0.927103,
		-0.936819, -0.025863, -0.348857,
		0.078292, -0.987467, -0.137037,
		36.508263, 33.155910, 51.473892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946835, 33.586235, 51.955173>,  <36.453461, 33.847137, 51.569817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946835, 33.586235, 51.955173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128414, 33.235977, 51.889225>,  <36.237362, 33.025822, 51.849655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128414, 33.235977, 51.889225>,  <35.946835, 33.586235, 51.955173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128414, 33.235977, 51.889225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260407, -0.307328, 0.915280,
		-0.852128, -0.372555, -0.367534,
		0.453946, -0.875644, -0.164867,
		36.264599, 32.973286, 51.839764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448311, 32.966301, 52.016949>,  <35.946835, 33.586235, 51.955173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448311, 32.966301, 52.016949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825974, 32.903839, 52.133007>,  <36.052570, 32.866364, 52.202641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.825974, 32.903839, 52.133007>,  <35.448311, 32.966301, 52.016949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825974, 32.903839, 52.133007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318063, -0.201949, 0.926311,
		-0.086048, -0.966868, -0.240337,
		0.944157, -0.156150, 0.290147,
		36.109222, 32.856995, 52.220051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584614, 32.207588, 52.136253>,  <35.448311, 32.966301, 52.016949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584614, 32.207588, 52.136253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268833, 32.111496, 52.362194>,  <35.079365, 32.053841, 52.497761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268833, 32.111496, 52.362194>,  <35.584614, 32.207588, 52.136253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268833, 32.111496, 52.362194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309923, 0.638320, 0.704624,
		-0.529827, 0.731327, -0.429470,
		-0.789450, -0.240227, 0.564854,
		35.031998, 32.039429, 52.531651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857239, 32.140938, 51.838551>,  <35.584614, 32.207588, 52.136253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857239, 32.140938, 51.838551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490101, 31.999493, 51.766426>,  <34.269817, 31.914625, 51.723152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490101, 31.999493, 51.766426>,  <34.857239, 32.140938, 51.838551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490101, 31.999493, 51.766426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119900, 0.186059, -0.975196,
		0.378393, -0.916700, -0.128375,
		-0.917847, -0.353615, -0.180315,
		34.214748, 31.893408, 51.712330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875450, 31.697706, 51.262882>,  <34.857239, 32.140938, 51.838551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875450, 31.697706, 51.262882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495407, 31.821793, 51.275909>,  <34.267380, 31.896244, 51.283726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.495407, 31.821793, 51.275909>,  <34.875450, 31.697706, 51.262882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495407, 31.821793, 51.275909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016069, 0.055587, -0.998324,
		-0.311504, -0.949040, -0.047829,
		-0.950109, 0.310214, 0.032566,
		34.210373, 31.914856, 51.285679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575584, 31.339525, 50.689903>,  <34.875450, 31.697706, 51.262882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575584, 31.339525, 50.689903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339378, 31.646269, 50.790478>,  <34.197655, 31.830315, 50.850822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339378, 31.646269, 50.790478>,  <34.575584, 31.339525, 50.689903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339378, 31.646269, 50.790478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061984, 0.267538, -0.961552,
		-0.804643, -0.583395, -0.110452,
		-0.590515, 0.766860, 0.251433,
		34.162224, 31.876328, 50.865910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971134, 31.287451, 50.220013>,  <34.575584, 31.339525, 50.689903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971134, 31.287451, 50.220013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987213, 31.673819, 50.322292>,  <33.996861, 31.905640, 50.383659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987213, 31.673819, 50.322292>,  <33.971134, 31.287451, 50.220013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987213, 31.673819, 50.322292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145246, 0.258832, -0.954939,
		-0.988579, 0.001248, 0.150701,
		0.040198, 0.965921, 0.255695,
		33.999271, 31.963594, 50.399002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353069, 31.623161, 49.866665>,  <33.971134, 31.287451, 50.220013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353069, 31.623161, 49.866665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623024, 31.900589, 49.967453>,  <33.784996, 32.067047, 50.027927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623024, 31.900589, 49.967453>,  <33.353069, 31.623161, 49.866665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623024, 31.900589, 49.967453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002965, 0.344006, -0.938963,
		-0.737916, 0.632945, 0.234221,
		0.674886, 0.693571, 0.251971,
		33.825489, 32.108662, 50.043045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115463, 32.263500, 49.605747>,  <33.353069, 31.623161, 49.866665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115463, 32.263500, 49.605747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504871, 32.341232, 49.653900>,  <33.738518, 32.387871, 49.682793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504871, 32.341232, 49.653900>,  <33.115463, 32.263500, 49.605747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504871, 32.341232, 49.653900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005224, 0.507560, -0.861601,
		-0.228532, 0.839417, 0.493106,
		0.973522, 0.194327, 0.120379,
		33.796928, 32.399532, 49.690014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183399, 32.976444, 49.345463>,  <33.115463, 32.263500, 49.605747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183399, 32.976444, 49.345463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572010, 32.882519, 49.358109>,  <33.805176, 32.826164, 49.365696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572010, 32.882519, 49.358109>,  <33.183399, 32.976444, 49.345463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572010, 32.882519, 49.358109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151720, 0.514053, -0.844234,
		0.181988, 0.824991, 0.535042,
		0.971525, -0.234817, 0.031616,
		33.863468, 32.812073, 49.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403858, 33.626282, 49.154331>,  <33.183399, 32.976444, 49.345463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403858, 33.626282, 49.154331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688255, 33.354122, 49.083279>,  <33.858894, 33.190826, 49.040649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688255, 33.354122, 49.083279>,  <33.403858, 33.626282, 49.154331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688255, 33.354122, 49.083279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136205, 0.381065, -0.914460,
		0.689882, 0.625981, 0.363608,
		0.710993, -0.680395, -0.177628,
		33.901554, 33.150005, 49.029991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115936, 33.977970, 48.852692>,  <33.403858, 33.626282, 49.154331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115936, 33.977970, 48.852692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117218, 33.590530, 48.753246>,  <34.117989, 33.358067, 48.693581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.117218, 33.590530, 48.753246>,  <34.115936, 33.977970, 48.852692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117218, 33.590530, 48.753246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567674, 0.206431, -0.796952,
		0.823247, -0.138575, 0.550510,
		0.003205, -0.968599, -0.248609,
		34.118179, 33.299950, 48.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828144, 33.702446, 48.719109>,  <34.115936, 33.977970, 48.852692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828144, 33.702446, 48.719109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576515, 33.480457, 48.501385>,  <34.425537, 33.347263, 48.370750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.576515, 33.480457, 48.501385>,  <34.828144, 33.702446, 48.719109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576515, 33.480457, 48.501385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629282, 0.047516, -0.775723,
		0.456369, -0.830510, 0.319343,
		-0.629072, -0.554973, -0.544310,
		34.387794, 33.313965, 48.338093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271679, 33.573730, 48.212654>,  <34.828144, 33.702446, 48.719109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271679, 33.573730, 48.212654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926888, 33.423454, 48.076508>,  <34.720013, 33.333290, 47.994820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.926888, 33.423454, 48.076508>,  <35.271679, 33.573730, 48.212654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926888, 33.423454, 48.076508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388924, -0.059428, -0.919351,
		0.325163, -0.924838, 0.197340,
		-0.861978, -0.375689, -0.340368,
		34.668293, 33.310749, 47.974396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498791, 33.091988, 47.682598>,  <35.271679, 33.573730, 48.212654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498791, 33.091988, 47.682598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111355, 33.166763, 47.616997>,  <34.878895, 33.211628, 47.577637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111355, 33.166763, 47.616997>,  <35.498791, 33.091988, 47.682598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111355, 33.166763, 47.616997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149103, -0.091254, -0.984602,
		-0.199024, -0.978124, 0.060515,
		-0.968586, 0.186937, -0.164003,
		34.820778, 33.222843, 47.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278721, 32.576996, 47.152134>,  <35.498791, 33.091988, 47.682598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278721, 32.576996, 47.152134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069569, 32.917858, 47.143761>,  <34.944077, 33.122375, 47.138737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069569, 32.917858, 47.143761>,  <35.278721, 32.576996, 47.152134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069569, 32.917858, 47.143761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154383, 0.070524, -0.985491,
		-0.838311, -0.518521, -0.168433,
		-0.522877, 0.852152, -0.020930,
		34.912704, 33.173504, 47.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654221, 32.512280, 46.635517>,  <35.278721, 32.576996, 47.152134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654221, 32.512280, 46.635517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766613, 32.892239, 46.690273>,  <34.834049, 33.120216, 46.723125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766613, 32.892239, 46.690273>,  <34.654221, 32.512280, 46.635517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766613, 32.892239, 46.690273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109476, 0.173429, -0.978743,
		-0.953449, 0.260022, 0.152721,
		0.280981, 0.949901, 0.136890,
		34.850906, 33.177208, 46.731339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484818, 32.881413, 45.980301>,  <34.654221, 32.512280, 46.635517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484818, 32.881413, 45.980301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694344, 33.170589, 46.160507>,  <34.820061, 33.344097, 46.268631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.694344, 33.170589, 46.160507>,  <34.484818, 32.881413, 45.980301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694344, 33.170589, 46.160507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158219, 0.437109, -0.885383,
		-0.837007, 0.535061, 0.114582,
		0.523819, 0.722943, 0.450520,
		34.851490, 33.387474, 46.295662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140358, 33.550343, 45.764126>,  <34.484818, 32.881413, 45.980301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140358, 33.550343, 45.764126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519844, 33.619160, 45.870209>,  <34.747536, 33.660450, 45.933857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.519844, 33.619160, 45.870209>,  <34.140358, 33.550343, 45.764126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519844, 33.619160, 45.870209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164746, 0.446919, -0.879274,
		-0.269798, 0.877875, 0.395657,
		0.948719, 0.172043, 0.265204,
		34.804459, 33.670773, 45.949772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288548, 34.288651, 45.699429>,  <34.140358, 33.550343, 45.764126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288548, 34.288651, 45.699429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648655, 34.116127, 45.723053>,  <34.864719, 34.012611, 45.737228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.648655, 34.116127, 45.723053>,  <34.288548, 34.288651, 45.699429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648655, 34.116127, 45.723053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335696, 0.601419, -0.724985,
		0.277177, 0.672506, 0.686228,
		0.900267, -0.431313, 0.059059,
		34.918736, 33.986732, 45.740772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686249, 34.859741, 45.614315>,  <34.288548, 34.288651, 45.699429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686249, 34.859741, 45.614315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.919689, 34.546608, 45.527992>,  <35.059753, 34.358727, 45.476196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.919689, 34.546608, 45.527992>,  <34.686249, 34.859741, 45.614315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919689, 34.546608, 45.527992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420908, 0.518900, -0.744029,
		0.694437, 0.343383, 0.632334,
		0.583605, -0.782835, -0.215811,
		35.094772, 34.311756, 45.463249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274532, 35.234161, 45.494133>,  <34.686249, 34.859741, 45.614315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274532, 35.234161, 45.494133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320152, 34.867638, 45.340580>,  <35.347523, 34.647724, 45.248447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320152, 34.867638, 45.340580>,  <35.274532, 35.234161, 45.494133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320152, 34.867638, 45.340580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528774, 0.383110, -0.757380,
		0.841066, -0.116610, 0.528215,
		0.114046, -0.916313, -0.383881,
		35.354366, 34.592743, 45.225414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056931, 35.100021, 45.344353>,  <35.274532, 35.234161, 45.494133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056931, 35.100021, 45.344353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811569, 34.880360, 45.117313>,  <35.664352, 34.748562, 44.981091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811569, 34.880360, 45.117313>,  <36.056931, 35.100021, 45.344353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811569, 34.880360, 45.117313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509080, 0.274524, -0.815766,
		0.603803, -0.789344, 0.111172,
		-0.613401, -0.549157, -0.567597,
		35.627548, 34.715614, 44.947033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.394703, 37.738480, 26.299946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.435810, 37.449879, 26.026049>,  <45.460476, 37.276718, 25.861712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.435810, 37.449879, 26.026049>,  <45.394703, 37.738480, 26.299946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435810, 37.449879, 26.026049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419578, -0.655591, 0.627818,
		-0.901883, 0.222783, -0.370100,
		0.102767, -0.721504, -0.684741,
		45.466640, 37.233429, 25.820627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720993, 37.456253, 26.134283>,  <45.394703, 37.738480, 26.299946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720993, 37.456253, 26.134283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996670, 37.168377, 26.100649>,  <45.162075, 36.995651, 26.080467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.996670, 37.168377, 26.100649>,  <44.720993, 37.456253, 26.134283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996670, 37.168377, 26.100649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464671, -0.528027, 0.710823,
		-0.555974, -0.450814, -0.698327,
		0.689183, -0.719691, -0.084089,
		45.203426, 36.952469, 26.075422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410553, 36.836025, 26.135324>,  <44.720993, 37.456253, 26.134283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410553, 36.836025, 26.135324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781086, 36.729210, 26.241600>,  <45.003407, 36.665119, 26.305367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781086, 36.729210, 26.241600>,  <44.410553, 36.836025, 26.135324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781086, 36.729210, 26.241600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361676, -0.433284, 0.825503,
		-0.105324, -0.860786, -0.497949,
		0.926336, -0.267042, 0.265690,
		45.058987, 36.649097, 26.321306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391838, 36.186802, 26.255947>,  <44.410553, 36.836025, 26.135324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391838, 36.186802, 26.255947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726643, 36.247433, 26.466259>,  <44.927525, 36.283810, 26.592445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.726643, 36.247433, 26.466259>,  <44.391838, 36.186802, 26.255947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726643, 36.247433, 26.466259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305797, -0.667245, 0.679170,
		0.453770, -0.729252, -0.512138,
		0.837007, 0.151576, 0.525779,
		44.977745, 36.292904, 26.623993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588158, 35.495037, 26.488609>,  <44.391838, 36.186802, 26.255947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588158, 35.495037, 26.488609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.777287, 35.755138, 26.726469>,  <44.890762, 35.911201, 26.869184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.777287, 35.755138, 26.726469>,  <44.588158, 35.495037, 26.488609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.777287, 35.755138, 26.726469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281996, -0.527691, 0.801262,
		0.834815, -0.546544, -0.066135,
		0.472823, 0.650255, 0.594648,
		44.919132, 35.950214, 26.904863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053268, 35.067532, 26.924856>,  <44.588158, 35.495037, 26.488609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053268, 35.067532, 26.924856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965218, 35.410397, 27.111113>,  <44.912388, 35.616116, 27.222866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965218, 35.410397, 27.111113>,  <45.053268, 35.067532, 26.924856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965218, 35.410397, 27.111113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184103, -0.505277, 0.843090,
		0.957941, 0.099858, 0.269029,
		-0.220123, 0.857160, 0.465642,
		44.899181, 35.667545, 27.250805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284813, 34.983917, 27.627575>,  <45.053268, 35.067532, 26.924856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284813, 34.983917, 27.627575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081451, 35.324268, 27.680529>,  <44.959435, 35.528481, 27.712301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081451, 35.324268, 27.680529>,  <45.284813, 34.983917, 27.627575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081451, 35.324268, 27.680529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207476, -0.270243, 0.940172,
		0.835749, 0.450525, 0.313931,
		-0.508408, 0.850880, 0.132382,
		44.928928, 35.579533, 27.720243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322716, 35.138275, 28.333456>,  <45.284813, 34.983917, 27.627575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322716, 35.138275, 28.333456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032497, 35.394608, 28.233118>,  <44.858368, 35.548405, 28.172915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032497, 35.394608, 28.233118>,  <45.322716, 35.138275, 28.333456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032497, 35.394608, 28.233118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354807, -0.036011, 0.934246,
		0.589657, 0.766840, 0.253498,
		-0.725546, 0.640827, -0.250846,
		44.814835, 35.586857, 28.157864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310848, 35.756618, 28.790998>,  <45.322716, 35.138275, 28.333456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310848, 35.756618, 28.790998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938332, 35.695866, 28.658562>,  <44.714821, 35.659416, 28.579100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.938332, 35.695866, 28.658562>,  <45.310848, 35.756618, 28.790998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938332, 35.695866, 28.658562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272057, -0.314407, 0.909469,
		-0.242226, 0.937060, 0.251486,
		-0.931296, -0.151878, -0.331091,
		44.658943, 35.650303, 28.559235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919128, 36.061939, 29.180433>,  <45.310848, 35.756618, 28.790998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919128, 36.061939, 29.180433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658115, 35.807369, 29.015917>,  <44.501507, 35.654625, 28.917206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658115, 35.807369, 29.015917>,  <44.919128, 36.061939, 29.180433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658115, 35.807369, 29.015917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367010, -0.209424, 0.906336,
		-0.662951, 0.742363, -0.096919,
		-0.652533, -0.636427, -0.411293,
		44.462357, 35.616440, 28.892529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349068, 36.056091, 29.656313>,  <44.919128, 36.061939, 29.180433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349068, 36.056091, 29.656313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274059, 35.733551, 29.431944>,  <44.229053, 35.540028, 29.297323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.274059, 35.733551, 29.431944>,  <44.349068, 36.056091, 29.656313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274059, 35.733551, 29.431944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497644, -0.414350, 0.762014,
		-0.846870, 0.422029, -0.323579,
		-0.187517, -0.806353, -0.560921,
		44.217804, 35.491646, 29.263668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644951, 35.927998, 29.688339>,  <44.349068, 36.056091, 29.656313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644951, 35.927998, 29.688339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819210, 35.582409, 29.587326>,  <43.923763, 35.375057, 29.526718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.819210, 35.582409, 29.587326>,  <43.644951, 35.927998, 29.688339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819210, 35.582409, 29.587326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414981, -0.441738, 0.795398,
		-0.798753, -0.241713, -0.550971,
		0.435643, -0.863969, -0.252533,
		43.949902, 35.323219, 29.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.124107, 35.390789, 29.664030>,  <43.644951, 35.927998, 29.688339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.124107, 35.390789, 29.664030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463444, 35.200291, 29.756557>,  <43.667046, 35.085991, 29.812075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.463444, 35.200291, 29.756557>,  <43.124107, 35.390789, 29.664030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463444, 35.200291, 29.756557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387280, -0.260272, 0.884462,
		-0.361017, -0.839909, -0.405240,
		0.848340, -0.476247, 0.231318,
		43.717945, 35.057419, 29.825953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919827, 34.804798, 30.102146>,  <43.124107, 35.390789, 29.664030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919827, 34.804798, 30.102146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.315174, 34.826500, 30.158978>,  <43.552383, 34.839520, 30.193077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.315174, 34.826500, 30.158978>,  <42.919827, 34.804798, 30.102146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315174, 34.826500, 30.158978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117433, -0.321398, 0.939635,
		0.096644, -0.945389, -0.311288,
		0.988367, 0.054255, 0.142081,
		43.611683, 34.842777, 30.201601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133457, 34.211693, 30.462160>,  <42.919827, 34.804798, 30.102146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133457, 34.211693, 30.462160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439518, 34.457836, 30.537930>,  <43.623154, 34.605522, 30.583391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.439518, 34.457836, 30.537930>,  <43.133457, 34.211693, 30.462160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439518, 34.457836, 30.537930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078157, -0.380798, 0.921349,
		0.639093, -0.690164, -0.339462,
		0.765148, 0.615359, 0.189424,
		43.669064, 34.642445, 30.594757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644855, 33.871578, 30.800280>,  <43.133457, 34.211693, 30.462160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644855, 33.871578, 30.800280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758133, 34.245678, 30.885231>,  <43.826099, 34.470139, 30.936201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758133, 34.245678, 30.885231>,  <43.644855, 33.871578, 30.800280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758133, 34.245678, 30.885231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017444, -0.216384, 0.976152,
		0.958903, -0.280149, -0.044965,
		0.283198, 0.935251, 0.212379,
		43.843094, 34.526253, 30.948944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296776, 33.861526, 31.206818>,  <43.644855, 33.871578, 30.800280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296776, 33.861526, 31.206818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110447, 34.201664, 31.304737>,  <43.998650, 34.405746, 31.363489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.110447, 34.201664, 31.304737>,  <44.296776, 33.861526, 31.206818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110447, 34.201664, 31.304737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016612, -0.284999, 0.958384,
		0.884722, 0.442371, 0.146885,
		-0.465823, 0.850343, 0.244797,
		43.970699, 34.456768, 31.378176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664436, 34.068619, 31.830742>,  <44.296776, 33.861526, 31.206818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664436, 34.068619, 31.830742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353619, 34.319218, 31.855062>,  <44.167126, 34.469578, 31.869656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.353619, 34.319218, 31.855062>,  <44.664436, 34.068619, 31.830742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353619, 34.319218, 31.855062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173656, -0.306227, 0.935986,
		0.605011, 0.716748, 0.346748,
		-0.777049, 0.626497, 0.060803,
		44.120502, 34.507168, 31.873304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715103, 34.337967, 32.558254>,  <44.664436, 34.068619, 31.830742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715103, 34.337967, 32.558254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341999, 34.381954, 32.420929>,  <44.118137, 34.408348, 32.338535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.341999, 34.381954, 32.420929>,  <44.715103, 34.337967, 32.558254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341999, 34.381954, 32.420929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359610, -0.350530, 0.864760,
		-0.025244, 0.930072, 0.366507,
		-0.932761, 0.109970, -0.343312,
		44.062172, 34.414944, 32.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334625, 34.829777, 33.046360>,  <44.715103, 34.337967, 32.558254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334625, 34.829777, 33.046360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063759, 34.601822, 32.860165>,  <43.901237, 34.465050, 32.748447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.063759, 34.601822, 32.860165>,  <44.334625, 34.829777, 33.046360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063759, 34.601822, 32.860165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472378, -0.148352, 0.868821,
		-0.564183, 0.808223, -0.168742,
		-0.677168, -0.569884, -0.465485,
		43.860607, 34.430855, 32.720520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753109, 34.914043, 33.366272>,  <44.334625, 34.829777, 33.046360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753109, 34.914043, 33.366272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639675, 34.578144, 33.181057>,  <43.571613, 34.376606, 33.069927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639675, 34.578144, 33.181057>,  <43.753109, 34.914043, 33.366272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639675, 34.578144, 33.181057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686554, -0.159316, 0.709409,
		-0.669494, 0.519079, -0.531352,
		-0.283587, -0.839747, -0.463037,
		43.554600, 34.326221, 33.042145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815159, 35.611252, 33.579674>,  <43.753109, 34.914043, 33.366272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.815159, 35.611252, 33.579674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167484, 35.700706, 33.746601>,  <44.378880, 35.754379, 33.846760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167484, 35.700706, 33.746601>,  <43.815159, 35.611252, 33.579674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167484, 35.700706, 33.746601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093390, 0.782039, -0.616193,
		-0.464166, 0.581723, 0.667943,
		0.880811, 0.223636, 0.417323,
		44.431728, 35.767796, 33.871799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851284, 36.363846, 33.577221>,  <43.815159, 35.611252, 33.579674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851284, 36.363846, 33.577221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214966, 36.197311, 33.578964>,  <44.433174, 36.097389, 33.580009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.214966, 36.197311, 33.578964>,  <43.851284, 36.363846, 33.577221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.214966, 36.197311, 33.578964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298151, 0.643729, -0.704782,
		0.290621, 0.642088, 0.709410,
		0.909200, -0.416336, 0.004358,
		44.487724, 36.072411, 33.580273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278320, 36.929752, 33.567989>,  <43.851284, 36.363846, 33.577221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278320, 36.929752, 33.567989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550060, 36.652420, 33.471836>,  <44.713104, 36.486023, 33.414143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.550060, 36.652420, 33.471836>,  <44.278320, 36.929752, 33.567989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550060, 36.652420, 33.471836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410611, 0.630652, -0.658541,
		0.608182, 0.348675, 0.713120,
		0.679348, -0.693328, -0.240382,
		44.753864, 36.444420, 33.399723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732655, 37.328735, 33.402966>,  <44.278320, 36.929752, 33.567989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732655, 37.328735, 33.402966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839539, 36.986984, 33.224693>,  <44.903667, 36.781933, 33.117729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839539, 36.986984, 33.224693>,  <44.732655, 37.328735, 33.402966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839539, 36.986984, 33.224693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491014, 0.518672, -0.699917,
		0.829158, -0.031810, 0.558108,
		0.267211, -0.854381, -0.445680,
		44.919701, 36.730671, 33.090988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438637, 37.416424, 33.257507>,  <44.732655, 37.328735, 33.402966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438637, 37.416424, 33.257507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293568, 37.131786, 33.016808>,  <45.206528, 36.961006, 32.872387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.293568, 37.131786, 33.016808>,  <45.438637, 37.416424, 33.257507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293568, 37.131786, 33.016808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389043, 0.471150, -0.791620,
		0.846827, -0.521205, 0.105968,
		-0.362670, -0.711592, -0.601754,
		45.184765, 36.918308, 32.836281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006187, 37.167778, 32.830193>,  <45.438637, 37.416424, 33.257507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006187, 37.167778, 32.830193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657913, 37.109371, 32.642330>,  <45.448948, 37.074326, 32.529613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.657913, 37.109371, 32.642330>,  <46.006187, 37.167778, 32.830193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657913, 37.109371, 32.642330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361838, 0.456609, -0.812761,
		0.333131, -0.877602, -0.344729,
		-0.870688, -0.146020, -0.469660,
		45.396706, 37.065567, 32.501431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273342, 37.070984, 32.158653>,  <46.006187, 37.167778, 32.830193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273342, 37.070984, 32.158653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878872, 37.117481, 32.111427>,  <45.642189, 37.145378, 32.083092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878872, 37.117481, 32.111427>,  <46.273342, 37.070984, 32.158653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878872, 37.117481, 32.111427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153368, 0.370885, -0.915927,
		-0.062684, -0.921375, -0.383587,
		-0.986179, 0.116244, -0.118061,
		45.583019, 37.152355, 32.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018440, 36.753849, 31.613668>,  <46.273342, 37.070984, 32.158653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018440, 36.753849, 31.613668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743649, 37.038437, 31.672834>,  <45.578773, 37.209190, 31.708334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743649, 37.038437, 31.672834>,  <46.018440, 36.753849, 31.613668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743649, 37.038437, 31.672834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136103, 0.325916, -0.935550,
		-0.713821, -0.622569, -0.320729,
		-0.686975, 0.711468, 0.147913,
		45.537556, 37.251877, 31.717209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726879, 36.777271, 31.039133>,  <46.018440, 36.753849, 31.613668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726879, 36.777271, 31.039133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593704, 37.114914, 31.207247>,  <45.513798, 37.317501, 31.308115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593704, 37.114914, 31.207247>,  <45.726879, 36.777271, 31.039133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593704, 37.114914, 31.207247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060935, 0.464039, -0.883717,
		-0.940978, -0.268611, -0.205931,
		-0.332936, 0.844107, 0.420283,
		45.493824, 37.368145, 31.333332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131786, 36.932442, 30.746655>,  <45.726879, 36.777271, 31.039133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131786, 36.932442, 30.746655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254074, 37.282661, 30.896297>,  <45.327446, 37.492794, 30.986084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.254074, 37.282661, 30.896297>,  <45.131786, 36.932442, 30.746655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254074, 37.282661, 30.896297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064468, 0.372982, -0.925596,
		-0.949938, 0.307087, 0.057582,
		0.305716, 0.875546, 0.374107,
		45.345787, 37.545326, 31.008530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764912, 37.518559, 30.429256>,  <45.131786, 36.932442, 30.746655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764912, 37.518559, 30.429256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090164, 37.708160, 30.564398>,  <45.285316, 37.821922, 30.645483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.090164, 37.708160, 30.564398>,  <44.764912, 37.518559, 30.429256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090164, 37.708160, 30.564398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010815, 0.592619, -0.805410,
		-0.581986, 0.651247, 0.487001,
		0.813127, 0.474004, 0.337852,
		45.334103, 37.850361, 30.665754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608780, 38.242527, 30.311991>,  <44.764912, 37.518559, 30.429256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608780, 38.242527, 30.311991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006855, 38.216343, 30.341131>,  <45.245701, 38.200630, 30.358616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006855, 38.216343, 30.341131>,  <44.608780, 38.242527, 30.311991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006855, 38.216343, 30.341131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096008, 0.504996, -0.857765,
		0.019364, 0.860636, 0.508853,
		0.995192, -0.065464, 0.072849,
		45.305412, 38.196705, 30.362986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894924, 38.930927, 30.313707>,  <44.608780, 38.242527, 30.311991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894924, 38.930927, 30.313707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189095, 38.684418, 30.201027>,  <45.365597, 38.536510, 30.133419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.189095, 38.684418, 30.201027>,  <44.894924, 38.930927, 30.313707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189095, 38.684418, 30.201027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187923, 0.584919, -0.789022,
		0.651028, 0.527327, 0.545975,
		0.735423, -0.616277, -0.281702,
		45.409721, 38.499535, 30.116516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345360, 39.396812, 30.102070>,  <44.894924, 38.930927, 30.313707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345360, 39.396812, 30.102070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473812, 39.054077, 29.940720>,  <45.550884, 38.848438, 29.843908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.473812, 39.054077, 29.940720>,  <45.345360, 39.396812, 30.102070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473812, 39.054077, 29.940720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241932, 0.486025, -0.839791,
		0.915612, 0.172091, 0.363372,
		0.321128, -0.856834, -0.403377,
		45.570152, 38.797028, 29.819706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019863, 39.610725, 29.733143>,  <45.345360, 39.396812, 30.102070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019863, 39.610725, 29.733143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906609, 39.255764, 29.587626>,  <45.838657, 39.042786, 29.500315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906609, 39.255764, 29.587626>,  <46.019863, 39.610725, 29.733143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906609, 39.255764, 29.587626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281426, 0.285747, -0.916050,
		0.916862, -0.361745, 0.168834,
		-0.283132, -0.887406, -0.363795,
		45.821671, 38.989544, 29.478487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650581, 39.342072, 29.302788>,  <46.019863, 39.610725, 29.733143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650581, 39.342072, 29.302788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320683, 39.168736, 29.157454>,  <46.122746, 39.064735, 29.070253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320683, 39.168736, 29.157454>,  <46.650581, 39.342072, 29.302788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320683, 39.168736, 29.157454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291021, 0.225649, -0.929725,
		0.484875, -0.872524, -0.059991,
		-0.824744, -0.433342, -0.363334,
		46.073257, 39.038734, 29.048454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857220, 38.878483, 28.753099>,  <46.650581, 39.342072, 29.302788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857220, 38.878483, 28.753099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479687, 38.994347, 28.689503>,  <46.253166, 39.063866, 28.651344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479687, 38.994347, 28.689503>,  <46.857220, 38.878483, 28.753099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479687, 38.994347, 28.689503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256204, 0.337681, -0.905721,
		-0.208659, -0.895584, -0.392926,
		-0.943833, 0.289656, -0.158992,
		46.196537, 39.081245, 28.641806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.691483, 38.574352, 28.100029>,  <46.857220, 38.878483, 28.753099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.691483, 38.574352, 28.100029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372391, 38.807011, 28.163671>,  <46.180935, 38.946606, 28.201857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.372391, 38.807011, 28.163671>,  <46.691483, 38.574352, 28.100029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.372391, 38.807011, 28.163671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034472, 0.219434, -0.975018,
		-0.602031, -0.783284, -0.154998,
		-0.797728, 0.581648, 0.159108,
		46.133072, 38.981506, 28.211403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208874, 38.430878, 27.559530>,  <46.691483, 38.574352, 28.100029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208874, 38.430878, 27.559530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.097534, 38.794720, 27.682913>,  <46.030731, 39.013023, 27.756943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.097534, 38.794720, 27.682913>,  <46.208874, 38.430878, 27.559530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.097534, 38.794720, 27.682913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030949, 0.329475, -0.943657,
		-0.959981, -0.253119, -0.119860,
		-0.278348, 0.909603, 0.308456,
		46.014030, 39.067600, 27.775450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.749043, 38.621693, 27.075792>,  <46.208874, 38.430878, 27.559530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.749043, 38.621693, 27.075792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.859192, 38.970776, 27.237066>,  <45.925282, 39.180225, 27.333830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.859192, 38.970776, 27.237066>,  <45.749043, 38.621693, 27.075792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859192, 38.970776, 27.237066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097834, 0.391780, -0.914843,
		-0.956347, 0.291367, 0.022506,
		0.275372, 0.872705, 0.403183,
		45.941803, 39.232586, 27.358021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286812, 39.126976, 26.739714>,  <45.749043, 38.621693, 27.075792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286812, 39.126976, 26.739714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609135, 39.318233, 26.879457>,  <45.802528, 39.432987, 26.963303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609135, 39.318233, 26.879457>,  <45.286812, 39.126976, 26.739714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609135, 39.318233, 26.879457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134320, 0.426997, -0.894221,
		-0.576742, 0.767497, 0.279853,
		0.805808, 0.478145, 0.349358,
		45.850876, 39.461678, 26.984264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.303268, 34.773327, 41.218346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914433, 34.694283, 41.167763>,  <39.681129, 34.646854, 41.137413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914433, 34.694283, 41.167763>,  <40.303268, 34.773327, 41.218346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914433, 34.694283, 41.167763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145535, -0.085146, -0.985682,
		0.184015, -0.976576, 0.111529,
		-0.972090, -0.197612, -0.126458,
		39.622807, 34.634998, 41.129826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172653, 34.077847, 40.883614>,  <40.303268, 34.773327, 41.218346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172653, 34.077847, 40.883614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864418, 34.320087, 40.804184>,  <39.679478, 34.465431, 40.756527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864418, 34.320087, 40.804184>,  <40.172653, 34.077847, 40.883614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864418, 34.320087, 40.804184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173132, -0.100938, -0.979713,
		-0.613363, -0.789337, -0.027068,
		-0.770591, 0.605606, -0.198572,
		39.633240, 34.501770, 40.744614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064457, 33.839569, 40.237373>,  <40.172653, 34.077847, 40.883614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064457, 33.839569, 40.237373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856998, 34.181324, 40.250206>,  <39.732525, 34.386375, 40.257908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856998, 34.181324, 40.250206>,  <40.064457, 33.839569, 40.237373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856998, 34.181324, 40.250206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229236, 0.175112, -0.957489,
		-0.823686, -0.489242, -0.286678,
		-0.518645, 0.854387, 0.032086,
		39.701405, 34.437641, 40.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618271, 33.900814, 39.653515>,  <40.064457, 33.839569, 40.237373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618271, 33.900814, 39.653515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634239, 34.287102, 39.756111>,  <39.643818, 34.518875, 39.817669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634239, 34.287102, 39.756111>,  <39.618271, 33.900814, 39.653515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634239, 34.287102, 39.756111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101221, 0.251466, -0.962559,
		-0.994063, 0.064384, -0.087714,
		0.039917, 0.965722, 0.256490,
		39.646214, 34.576817, 39.833057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134327, 34.262321, 39.341587>,  <39.618271, 33.900814, 39.653515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134327, 34.262321, 39.341587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399708, 34.552536, 39.414719>,  <39.558937, 34.726665, 39.458599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399708, 34.552536, 39.414719>,  <39.134327, 34.262321, 39.341587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399708, 34.552536, 39.414719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045051, 0.205171, -0.977689,
		-0.746863, 0.656884, 0.103434,
		0.663450, 0.725540, 0.182828,
		39.598743, 34.770199, 39.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052010, 34.607098, 38.687057>,  <39.134327, 34.262321, 39.341587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052010, 34.607098, 38.687057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389912, 34.738079, 38.856373>,  <39.592651, 34.816666, 38.957962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389912, 34.738079, 38.856373>,  <39.052010, 34.607098, 38.687057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389912, 34.738079, 38.856373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314067, 0.337076, -0.887548,
		-0.433306, 0.882698, 0.181904,
		0.844753, 0.327450, 0.423284,
		39.643337, 34.836315, 38.983356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128632, 35.326145, 38.624065>,  <39.052010, 34.607098, 38.687057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128632, 35.326145, 38.624065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495186, 35.174011, 38.674007>,  <39.715118, 35.082729, 38.703972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495186, 35.174011, 38.674007>,  <39.128632, 35.326145, 38.624065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495186, 35.174011, 38.674007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263769, 0.339087, -0.903021,
		0.301115, 0.860444, 0.411054,
		0.916382, -0.380336, 0.124854,
		39.770100, 35.059910, 38.711464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528690, 35.776657, 38.258038>,  <39.128632, 35.326145, 38.624065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528690, 35.776657, 38.258038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766174, 35.457134, 38.296844>,  <39.908665, 35.265419, 38.320129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766174, 35.457134, 38.296844>,  <39.528690, 35.776657, 38.258038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766174, 35.457134, 38.296844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339484, 0.139338, -0.930234,
		0.729564, 0.585222, 0.353910,
		0.593706, -0.798812, 0.097018,
		39.944286, 35.217491, 38.325951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229763, 35.931316, 37.989109>,  <39.528690, 35.776657, 38.258038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229763, 35.931316, 37.989109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217739, 35.531513, 37.992901>,  <40.210526, 35.291634, 37.995178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217739, 35.531513, 37.992901>,  <40.229763, 35.931316, 37.989109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217739, 35.531513, 37.992901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476532, -0.022668, -0.878865,
		0.878643, -0.021895, 0.476977,
		-0.030055, -0.999503, 0.009484,
		40.208721, 35.231663, 37.995747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897022, 35.804253, 37.602089>,  <40.229763, 35.931316, 37.989109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897022, 35.804253, 37.602089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677532, 35.470566, 37.623962>,  <40.545837, 35.270355, 37.637085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677532, 35.470566, 37.623962>,  <40.897022, 35.804253, 37.602089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677532, 35.470566, 37.623962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367835, -0.299653, -0.880287,
		0.750734, -0.462919, 0.471280,
		-0.548722, -0.834215, 0.054682,
		40.512917, 35.220303, 37.640366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327702, 35.183220, 37.425190>,  <40.897022, 35.804253, 37.602089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327702, 35.183220, 37.425190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957874, 35.054089, 37.344250>,  <40.735977, 34.976608, 37.295685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957874, 35.054089, 37.344250>,  <41.327702, 35.183220, 37.425190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957874, 35.054089, 37.344250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313338, -0.342103, -0.885881,
		0.216763, -0.882466, 0.417454,
		-0.924572, -0.322830, -0.202355,
		40.680504, 34.957241, 37.283543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418583, 34.619568, 36.921211>,  <41.327702, 35.183220, 37.425190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418583, 34.619568, 36.921211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029209, 34.705967, 36.890842>,  <40.795586, 34.757809, 36.872623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029209, 34.705967, 36.890842>,  <41.418583, 34.619568, 36.921211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029209, 34.705967, 36.890842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036361, -0.181530, -0.982713,
		-0.226047, -0.959370, 0.168855,
		-0.973437, 0.216000, -0.075918,
		40.737179, 34.770767, 36.868069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014122, 34.097298, 36.469082>,  <41.418583, 34.619568, 36.921211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014122, 34.097298, 36.469082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844524, 34.459450, 36.459923>,  <40.742767, 34.676739, 36.454426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844524, 34.459450, 36.459923>,  <41.014122, 34.097298, 36.469082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844524, 34.459450, 36.459923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089040, -0.066831, -0.993783,
		-0.901279, -0.419316, 0.108951,
		-0.423990, 0.905377, -0.022898,
		40.717327, 34.731064, 36.453053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073837, 34.082886, 35.785423>,  <41.014122, 34.097298, 36.469082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073837, 34.082886, 35.785423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234367, 33.942219, 35.447128>,  <41.330685, 33.857819, 35.244152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234367, 33.942219, 35.447128>,  <41.073837, 34.082886, 35.785423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234367, 33.942219, 35.447128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450030, -0.728512, 0.516472,
		-0.797753, -0.587880, -0.134112,
		0.401326, -0.351663, -0.845737,
		41.354767, 33.836720, 35.193409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710941, 33.870522, 35.990631>,  <41.073837, 34.082886, 35.785423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710941, 33.870522, 35.990631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921898, 33.548359, 35.882427>,  <42.048473, 33.355061, 35.817505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921898, 33.548359, 35.882427>,  <41.710941, 33.870522, 35.990631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921898, 33.548359, 35.882427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561589, -0.569379, 0.600355,
		-0.637554, -0.164706, -0.752593,
		0.527392, -0.805406, -0.270513,
		42.080116, 33.306736, 35.801273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178368, 33.385197, 35.768288>,  <41.710941, 33.870522, 35.990631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178368, 33.385197, 35.768288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502022, 33.173103, 35.869602>,  <41.696213, 33.045845, 35.930389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502022, 33.173103, 35.869602>,  <41.178368, 33.385197, 35.768288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502022, 33.173103, 35.869602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560138, -0.565664, 0.605202,
		-0.177626, -0.631563, -0.754703,
		0.809132, -0.530238, 0.253286,
		41.744762, 33.014030, 35.945587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985962, 32.723400, 35.808174>,  <41.178368, 33.385197, 35.768288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985962, 32.723400, 35.808174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311924, 32.704670, 36.039257>,  <41.507500, 32.693432, 36.177906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311924, 32.704670, 36.039257>,  <40.985962, 32.723400, 35.808174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311924, 32.704670, 36.039257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490902, -0.585671, 0.644984,
		0.308142, -0.809195, -0.500252,
		0.814901, -0.046828, 0.577705,
		41.556393, 32.690620, 36.212570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037827, 32.042465, 36.033669>,  <40.985962, 32.723400, 35.808174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037827, 32.042465, 36.033669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250961, 32.239834, 36.308659>,  <41.378841, 32.358257, 36.473652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250961, 32.239834, 36.308659>,  <41.037827, 32.042465, 36.033669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250961, 32.239834, 36.308659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553095, -0.411782, 0.724238,
		0.640446, -0.766137, 0.053499,
		0.532836, 0.493426, 0.687472,
		41.410812, 32.387863, 36.514900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367935, 31.593052, 36.534046>,  <41.037827, 32.042465, 36.033669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367935, 31.593052, 36.534046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337418, 31.948250, 36.715439>,  <41.319107, 32.161369, 36.824272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337418, 31.948250, 36.715439>,  <41.367935, 31.593052, 36.534046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337418, 31.948250, 36.715439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424035, -0.440521, 0.791287,
		0.902427, -0.131922, 0.410150,
		-0.076292, 0.887997, 0.453478,
		41.314529, 32.214649, 36.851482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589149, 31.535124, 37.217274>,  <41.367935, 31.593052, 36.534046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589149, 31.535124, 37.217274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350246, 31.855942, 37.217728>,  <41.206905, 32.048431, 37.217999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350246, 31.855942, 37.217728>,  <41.589149, 31.535124, 37.217274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350246, 31.855942, 37.217728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344651, -0.257924, 0.902602,
		0.724220, 0.538699, 0.430474,
		-0.597260, 0.802046, 0.001130,
		41.171070, 32.096558, 37.218067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369923, 31.317085, 37.836948>,  <41.589149, 31.535124, 37.217274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369923, 31.317085, 37.836948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196766, 31.662613, 37.733856>,  <41.092873, 31.869930, 37.672001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196766, 31.662613, 37.733856>,  <41.369923, 31.317085, 37.836948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196766, 31.662613, 37.733856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446006, 0.043219, 0.893986,
		0.783382, 0.501944, 0.366560,
		-0.432888, 0.863820, -0.257727,
		41.066898, 31.921759, 37.656540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479366, 31.821985, 38.424301>,  <41.369923, 31.317085, 37.836948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479366, 31.821985, 38.424301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165142, 31.923052, 38.198364>,  <40.976608, 31.983692, 38.062801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165142, 31.923052, 38.198364>,  <41.479366, 31.821985, 38.424301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165142, 31.923052, 38.198364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592161, -0.042104, 0.804719,
		0.179544, 0.966637, 0.182695,
		-0.785563, 0.252668, -0.564845,
		40.929474, 31.998852, 38.028912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141266, 32.301098, 38.834976>,  <41.479366, 31.821985, 38.424301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141266, 32.301098, 38.834976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862724, 32.191124, 38.569798>,  <40.695599, 32.125141, 38.410690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862724, 32.191124, 38.569798>,  <41.141266, 32.301098, 38.834976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862724, 32.191124, 38.569798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699298, 0.052087, 0.712930,
		-0.161476, 0.960052, -0.228531,
		-0.696353, -0.274932, -0.662951,
		40.653820, 32.108643, 38.370911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588310, 32.731377, 38.986382>,  <41.141266, 32.301098, 38.834976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588310, 32.731377, 38.986382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429630, 32.424740, 38.784401>,  <40.334423, 32.240757, 38.663212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429630, 32.424740, 38.784401>,  <40.588310, 32.731377, 38.986382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429630, 32.424740, 38.784401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726388, -0.074173, 0.683271,
		-0.561241, 0.637840, -0.527417,
		-0.396697, -0.766589, -0.504948,
		40.310619, 32.194763, 38.632915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909935, 32.907352, 38.898811>,  <40.588310, 32.731377, 38.986382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909935, 32.907352, 38.898811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948475, 32.512016, 38.851654>,  <39.971600, 32.274815, 38.823360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948475, 32.512016, 38.851654>,  <39.909935, 32.907352, 38.898811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948475, 32.512016, 38.851654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728187, -0.150739, 0.668597,
		-0.678572, 0.021429, -0.734221,
		0.096348, -0.988342, -0.117892,
		39.977379, 32.215515, 38.816288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250031, 32.630527, 38.992271>,  <39.909935, 32.907352, 38.898811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250031, 32.630527, 38.992271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456703, 32.291718, 39.042233>,  <39.580708, 32.088432, 39.072208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456703, 32.291718, 39.042233>,  <39.250031, 32.630527, 38.992271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456703, 32.291718, 39.042233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597794, -0.252456, 0.760860,
		-0.612933, -0.467783, -0.636782,
		0.516677, -0.847021, 0.124900,
		39.611706, 32.037613, 39.079704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851562, 31.951818, 38.992966>,  <39.250031, 32.630527, 38.992271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851562, 31.951818, 38.992966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186466, 31.875414, 39.197910>,  <39.387409, 31.829571, 39.320877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186466, 31.875414, 39.197910>,  <38.851562, 31.951818, 38.992966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186466, 31.875414, 39.197910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546194, -0.247675, 0.800206,
		-0.025947, -0.949828, -0.311695,
		0.837257, -0.191008, 0.512364,
		39.437645, 31.818111, 39.351620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743210, 31.373920, 39.351883>,  <38.851562, 31.951818, 38.992966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743210, 31.373920, 39.351883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062878, 31.504086, 39.554047>,  <39.254677, 31.582184, 39.675343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062878, 31.504086, 39.554047>,  <38.743210, 31.373920, 39.351883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062878, 31.504086, 39.554047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442296, -0.251044, 0.861018,
		0.407063, -0.911639, -0.056700,
		0.799171, 0.325411, 0.505405,
		39.302628, 31.601709, 39.705669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245823, 30.828514, 39.135548>,  <38.743210, 31.373920, 39.351883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245823, 30.828514, 39.135548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861481, 30.726175, 39.093037>,  <37.630875, 30.664772, 39.067532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861481, 30.726175, 39.093037>,  <38.245823, 30.828514, 39.135548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861481, 30.726175, 39.093037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015641, 0.433098, -0.901211,
		0.276599, -0.864274, -0.420148,
		-0.960858, -0.255846, -0.106277,
		37.573223, 30.649422, 39.061153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226624, 30.596062, 38.503006>,  <38.245823, 30.828514, 39.135548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226624, 30.596062, 38.503006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851257, 30.704844, 38.588253>,  <37.626038, 30.770113, 38.639400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851257, 30.704844, 38.588253>,  <38.226624, 30.596062, 38.503006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851257, 30.704844, 38.588253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066075, 0.464169, -0.883278,
		-0.339131, -0.842964, -0.417614,
		-0.938416, 0.271953, 0.213113,
		37.569733, 30.786430, 38.652187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839939, 30.408195, 37.946022>,  <38.226624, 30.596062, 38.503006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839939, 30.408195, 37.946022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627563, 30.693634, 38.128841>,  <37.500137, 30.864897, 38.238533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627563, 30.693634, 38.128841>,  <37.839939, 30.408195, 37.946022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627563, 30.693634, 38.128841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038328, 0.559011, -0.828274,
		-0.846545, -0.422243, -0.324150,
		-0.530936, 0.713595, 0.457044,
		37.468281, 30.907713, 38.265953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220318, 30.584976, 37.446404>,  <37.839939, 30.408195, 37.946022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220318, 30.584976, 37.446404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287476, 30.883558, 37.703964>,  <37.327770, 31.062708, 37.858501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287476, 30.883558, 37.703964>,  <37.220318, 30.584976, 37.446404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287476, 30.883558, 37.703964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110784, 0.663326, -0.740085,
		-0.979560, 0.052923, 0.194065,
		0.167896, 0.746457, 0.643904,
		37.337845, 31.107496, 37.897137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791119, 31.034946, 37.208748>,  <37.220318, 30.584976, 37.446404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791119, 31.034946, 37.208748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040096, 31.265203, 37.420856>,  <37.189484, 31.403358, 37.548122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040096, 31.265203, 37.420856>,  <36.791119, 31.034946, 37.208748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040096, 31.265203, 37.420856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136936, 0.747177, -0.650365,
		-0.770589, 0.332204, 0.543905,
		0.622447, 0.575645, 0.530276,
		37.226830, 31.437897, 37.579941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457325, 31.726238, 37.253937>,  <36.791119, 31.034946, 37.208748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457325, 31.726238, 37.253937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851353, 31.771032, 37.306244>,  <37.087769, 31.797909, 37.337627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851353, 31.771032, 37.306244>,  <36.457325, 31.726238, 37.253937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851353, 31.771032, 37.306244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037013, 0.879536, -0.474391,
		-0.168143, 0.462467, 0.870547,
		0.985067, 0.111987, 0.130771,
		37.146873, 31.804628, 37.345474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498325, 32.326046, 37.341652>,  <36.457325, 31.726238, 37.253937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498325, 32.326046, 37.341652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886494, 32.269138, 37.263634>,  <37.119396, 32.234993, 37.216824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886494, 32.269138, 37.263634>,  <36.498325, 32.326046, 37.341652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886494, 32.269138, 37.263634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014055, 0.839824, -0.542678,
		0.241008, 0.523885, 0.816982,
		0.970421, -0.142272, -0.195041,
		37.177620, 32.226456, 37.205120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799625, 32.956295, 37.509373>,  <36.498325, 32.326046, 37.341652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799625, 32.956295, 37.509373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029278, 32.738728, 37.264576>,  <37.167068, 32.608189, 37.117699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029278, 32.738728, 37.264576>,  <36.799625, 32.956295, 37.509373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029278, 32.738728, 37.264576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068447, 0.776721, -0.626114,
		0.815898, 0.317583, 0.483169,
		0.574131, -0.543916, -0.611988,
		37.201515, 32.575554, 37.080978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139477, 33.407234, 37.208950>,  <36.799625, 32.956295, 37.509373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139477, 33.407234, 37.208950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245419, 33.121655, 36.949680>,  <37.308983, 32.950306, 36.794117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245419, 33.121655, 36.949680>,  <37.139477, 33.407234, 37.208950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245419, 33.121655, 36.949680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137778, 0.693302, -0.707354,
		0.954394, 0.098044, 0.281993,
		0.264858, -0.713946, -0.648175,
		37.324875, 32.907471, 36.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559559, 33.853142, 36.754509>,  <37.139477, 33.407234, 37.208950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559559, 33.853142, 36.754509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464909, 33.508739, 36.574429>,  <37.408119, 33.302097, 36.466381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464909, 33.508739, 36.574429>,  <37.559559, 33.853142, 36.754509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464909, 33.508739, 36.574429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027011, 0.457352, -0.888876,
		0.971227, -0.222487, -0.084963,
		-0.236621, -0.861005, -0.450202,
		37.393921, 33.250439, 36.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030453, 33.770538, 36.200718>,  <37.559559, 33.853142, 36.754509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030453, 33.770538, 36.200718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717445, 33.537296, 36.113400>,  <37.529640, 33.397350, 36.061008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717445, 33.537296, 36.113400>,  <38.030453, 33.770538, 36.200718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717445, 33.537296, 36.113400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097597, 0.461145, -0.881941,
		0.614932, -0.668829, -0.417764,
		-0.782517, -0.583106, -0.218297,
		37.482689, 33.362366, 36.047909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209854, 33.631744, 35.537197>,  <38.030453, 33.770538, 36.200718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209854, 33.631744, 35.537197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816917, 33.578754, 35.590057>,  <37.581158, 33.546963, 35.621773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816917, 33.578754, 35.590057>,  <38.209854, 33.631744, 35.537197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816917, 33.578754, 35.590057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186918, 0.727028, -0.660675,
		-0.008554, -0.673707, -0.738949,
		-0.982338, -0.132471, 0.132147,
		37.522217, 33.539013, 35.629700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.810673, 28.347580, 41.964085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474277, 28.560699, 42.001751>,  <37.272442, 28.688572, 42.024349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474277, 28.560699, 42.001751>,  <37.810673, 28.347580, 41.964085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474277, 28.560699, 42.001751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165546, -0.087694, -0.982295,
		-0.515110, -0.841685, 0.161953,
		-0.840985, 0.532801, 0.094165,
		37.221981, 28.720539, 42.029999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300720, 28.146980, 41.319183>,  <37.810673, 28.347580, 41.964085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300720, 28.146980, 41.319183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177773, 28.493021, 41.477737>,  <37.104004, 28.700645, 41.572868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177773, 28.493021, 41.477737>,  <37.300720, 28.146980, 41.319183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177773, 28.493021, 41.477737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007721, 0.414268, -0.910122,
		-0.951559, -0.282803, -0.120653,
		-0.307368, 0.865104, 0.396384,
		37.085564, 28.752552, 41.596653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650906, 28.361179, 40.959373>,  <37.300720, 28.146980, 41.319183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650906, 28.361179, 40.959373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802101, 28.692247, 41.125305>,  <36.892818, 28.890888, 41.224865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802101, 28.692247, 41.125305>,  <36.650906, 28.361179, 40.959373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802101, 28.692247, 41.125305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151564, 0.497345, -0.854211,
		-0.913318, 0.260014, 0.313439,
		0.377994, 0.827672, 0.414825,
		36.915501, 28.940550, 41.249752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332718, 28.793703, 40.568096>,  <36.650906, 28.361179, 40.959373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332718, 28.793703, 40.568096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628242, 28.984238, 40.758785>,  <36.805557, 29.098558, 40.873199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.628242, 28.984238, 40.758785>,  <36.332718, 28.793703, 40.568096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628242, 28.984238, 40.758785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010996, 0.698778, -0.715254,
		-0.673826, 0.533678, 0.511025,
		0.738809, 0.476337, 0.476723,
		36.849884, 29.127138, 40.901802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216869, 29.524570, 40.576542>,  <36.332718, 28.793703, 40.568096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216869, 29.524570, 40.576542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611458, 29.508991, 40.640247>,  <36.848209, 29.499643, 40.678471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611458, 29.508991, 40.640247>,  <36.216869, 29.524570, 40.576542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611458, 29.508991, 40.640247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152941, 0.568669, -0.808223,
		-0.059088, 0.821644, 0.566931,
		0.986467, -0.038950, 0.159264,
		36.907398, 29.497307, 40.688026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366119, 30.112780, 40.644321>,  <36.216869, 29.524570, 40.576542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366119, 30.112780, 40.644321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728764, 29.964127, 40.564365>,  <36.946350, 29.874935, 40.516392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728764, 29.964127, 40.564365>,  <36.366119, 30.112780, 40.644321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728764, 29.964127, 40.564365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067157, 0.594726, -0.801118,
		0.416599, 0.712875, 0.564140,
		0.906606, -0.371631, -0.199887,
		37.000744, 29.852636, 40.504398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854843, 30.743458, 40.481842>,  <36.366119, 30.112780, 40.644321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854843, 30.743458, 40.481842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014191, 30.415638, 40.317093>,  <37.109798, 30.218946, 40.218243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.014191, 30.415638, 40.317093>,  <36.854843, 30.743458, 40.481842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014191, 30.415638, 40.317093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225426, 0.522751, -0.822140,
		0.889093, 0.234667, 0.392995,
		0.398368, -0.819550, -0.411874,
		37.133701, 30.169773, 40.193531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443077, 31.016657, 40.233501>,  <36.854843, 30.743458, 40.481842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443077, 31.016657, 40.233501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379681, 30.685743, 40.017914>,  <37.341640, 30.487196, 39.888561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379681, 30.685743, 40.017914>,  <37.443077, 31.016657, 40.233501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379681, 30.685743, 40.017914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301568, 0.479220, -0.824260,
		0.940179, -0.293174, 0.173528,
		-0.158494, -0.827283, -0.538965,
		37.332134, 30.437559, 39.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952061, 31.044977, 39.743584>,  <37.443077, 31.016657, 40.233501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952061, 31.044977, 39.743584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687222, 30.786118, 39.592419>,  <37.528316, 30.630802, 39.501720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.687222, 30.786118, 39.592419>,  <37.952061, 31.044977, 39.743584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687222, 30.786118, 39.592419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197053, 0.336200, -0.920945,
		0.723047, -0.684226, -0.095074,
		-0.662098, -0.647152, -0.377917,
		37.488590, 30.591972, 39.479042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628613, 30.970026, 39.992512>,  <37.952061, 31.044977, 39.743584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628613, 30.970026, 39.992512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920250, 31.231678, 40.073040>,  <39.095234, 31.388670, 40.121357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.920250, 31.231678, 40.073040>,  <38.628613, 30.970026, 39.992512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920250, 31.231678, 40.073040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183138, -0.096956, 0.978294,
		0.659452, -0.750141, 0.049106,
		0.729098, 0.654131, 0.201317,
		39.138981, 31.427917, 40.133434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140755, 30.678740, 40.412460>,  <38.628613, 30.970026, 39.992512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140755, 30.678740, 40.412460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151939, 31.071384, 40.487988>,  <39.158649, 31.306973, 40.533302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151939, 31.071384, 40.487988>,  <39.140755, 30.678740, 40.412460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151939, 31.071384, 40.487988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185159, -0.180534, 0.965983,
		0.982311, -0.061973, 0.176706,
		0.027964, 0.981614, 0.188815,
		39.160328, 31.365870, 40.544632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697628, 30.739775, 40.953701>,  <39.140755, 30.678740, 40.412460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697628, 30.739775, 40.953701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530094, 31.101143, 40.990372>,  <39.429573, 31.317965, 41.012375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530094, 31.101143, 40.990372>,  <39.697628, 30.739775, 40.953701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530094, 31.101143, 40.990372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042069, -0.120158, 0.991863,
		0.907086, 0.411572, 0.088333,
		-0.418837, 0.903422, 0.091679,
		39.404442, 31.372169, 41.017876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092430, 31.164612, 41.398186>,  <39.697628, 30.739775, 40.953701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092430, 31.164612, 41.398186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721668, 31.310896, 41.431900>,  <39.499210, 31.398666, 41.452129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721668, 31.310896, 41.431900>,  <40.092430, 31.164612, 41.398186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721668, 31.310896, 41.431900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106370, 0.040631, 0.993496,
		0.359908, 0.929841, -0.076562,
		-0.926904, 0.365711, 0.084284,
		39.443596, 31.420609, 41.457184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132706, 31.753401, 41.912445>,  <40.092430, 31.164612, 41.398186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132706, 31.753401, 41.912445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742905, 31.665516, 41.894234>,  <39.509026, 31.612785, 41.883305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.742905, 31.665516, 41.894234>,  <40.132706, 31.753401, 41.912445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742905, 31.665516, 41.894234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091788, 0.205175, 0.974412,
		-0.204748, 0.953745, -0.220110,
		-0.974502, -0.219712, -0.045533,
		39.450554, 31.599602, 41.880573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767231, 32.221642, 42.363262>,  <40.132706, 31.753401, 41.912445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767231, 32.221642, 42.363262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505707, 31.921988, 42.320694>,  <39.348793, 31.742195, 42.295155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505707, 31.921988, 42.320694>,  <39.767231, 32.221642, 42.363262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505707, 31.921988, 42.320694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271074, 0.100597, 0.957287,
		-0.706431, 0.654735, -0.268842,
		-0.653815, -0.749134, -0.106417,
		39.309563, 31.697247, 42.288769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160847, 32.497021, 42.651989>,  <39.767231, 32.221642, 42.363262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160847, 32.497021, 42.651989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141956, 32.097523, 42.658703>,  <39.130623, 31.857824, 42.662731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.141956, 32.097523, 42.658703>,  <39.160847, 32.497021, 42.651989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141956, 32.097523, 42.658703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383235, 0.033634, 0.923038,
		-0.922442, 0.037163, -0.384342,
		-0.047230, -0.998743, 0.016783,
		39.127789, 31.797899, 42.663738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508442, 32.313896, 43.027176>,  <39.160847, 32.497021, 42.651989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508442, 32.313896, 43.027176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739216, 31.988209, 43.053093>,  <38.877682, 31.792797, 43.068645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.739216, 31.988209, 43.053093>,  <38.508442, 32.313896, 43.027176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739216, 31.988209, 43.053093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149191, -0.027053, 0.988438,
		-0.803048, -0.579933, -0.137082,
		0.576936, -0.814215, 0.064796,
		38.912296, 31.743944, 43.072533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463440, 32.125084, 43.667572>,  <38.508442, 32.313896, 43.027176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463440, 32.125084, 43.667572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755936, 31.866053, 43.581856>,  <38.931435, 31.710632, 43.530426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755936, 31.866053, 43.581856>,  <38.463440, 32.125084, 43.667572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755936, 31.866053, 43.581856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290077, 0.010890, 0.956941,
		-0.617365, -0.761917, 0.195812,
		0.731243, -0.647583, -0.214291,
		38.975307, 31.671778, 43.517567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263386, 31.524870, 43.901569>,  <38.463440, 32.125084, 43.667572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263386, 31.524870, 43.901569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662083, 31.556725, 43.906700>,  <38.901302, 31.575836, 43.909779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662083, 31.556725, 43.906700>,  <38.263386, 31.524870, 43.901569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662083, 31.556725, 43.906700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001836, -0.136573, 0.990628,
		0.080640, -0.987424, -0.135982,
		0.996742, 0.079635, 0.012826,
		38.961105, 31.580616, 43.910549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518421, 30.976402, 44.277355>,  <38.263386, 31.524870, 43.901569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518421, 30.976402, 44.277355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853958, 31.193974, 44.268600>,  <39.055283, 31.324516, 44.263348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.853958, 31.193974, 44.268600>,  <38.518421, 30.976402, 44.277355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853958, 31.193974, 44.268600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158371, -0.205380, 0.965783,
		0.520821, -0.813610, -0.258425,
		0.838847, 0.543927, -0.021886,
		39.105614, 31.357151, 44.262035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884571, 30.556883, 44.676880>,  <38.518421, 30.976402, 44.277355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884571, 30.556883, 44.676880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060623, 30.915003, 44.704361>,  <39.166256, 31.129875, 44.720852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060623, 30.915003, 44.704361>,  <38.884571, 30.556883, 44.676880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060623, 30.915003, 44.704361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336931, -0.235591, 0.911578,
		0.832322, -0.378066, -0.405346,
		0.440132, 0.895301, 0.068705,
		39.192661, 31.183594, 44.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540054, 30.361620, 44.884773>,  <38.884571, 30.556883, 44.676880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540054, 30.361620, 44.884773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.493717, 30.744699, 44.990143>,  <39.465916, 30.974546, 45.053364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.493717, 30.744699, 44.990143>,  <39.540054, 30.361620, 44.884773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493717, 30.744699, 44.990143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333422, -0.212332, 0.918556,
		0.935634, 0.194238, -0.294721,
		-0.115840, 0.957699, 0.263428,
		39.458965, 31.032009, 45.069172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062794, 30.455770, 45.400070>,  <39.540054, 30.361620, 44.884773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062794, 30.455770, 45.400070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818546, 30.770403, 45.436790>,  <39.671997, 30.959183, 45.458824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.818546, 30.770403, 45.436790>,  <40.062794, 30.455770, 45.400070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818546, 30.770403, 45.436790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251940, 0.083055, 0.964172,
		0.750777, 0.611874, -0.248887,
		-0.610623, 0.786583, 0.091800,
		39.635361, 31.006378, 45.464329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.360619, 33.100365, 44.902836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675861, 32.857208, 44.941521>,  <32.865009, 32.711315, 44.964733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675861, 32.857208, 44.941521>,  <32.360619, 33.100365, 44.902836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675861, 32.857208, 44.941521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390399, 0.372166, -0.842069,
		0.475890, 0.701401, 0.530627,
		0.788110, -0.607889, 0.096716,
		32.912296, 32.674843, 44.970535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914608, 33.496716, 44.836819>,  <32.360619, 33.100365, 44.902836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914608, 33.496716, 44.836819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044239, 33.132080, 44.735638>,  <33.122017, 32.913300, 44.674931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044239, 33.132080, 44.735638>,  <32.914608, 33.496716, 44.836819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044239, 33.132080, 44.735638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424954, 0.379162, -0.821980,
		0.845215, 0.158891, 0.510260,
		0.324076, -0.911587, -0.252952,
		33.141460, 32.858604, 44.659752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627686, 33.513996, 44.664536>,  <32.914608, 33.496716, 44.836819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627686, 33.513996, 44.664536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476547, 33.191422, 44.482590>,  <33.385864, 32.997879, 44.373425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476547, 33.191422, 44.482590>,  <33.627686, 33.513996, 44.664536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476547, 33.191422, 44.482590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537287, 0.209118, -0.817063,
		0.754026, -0.553115, 0.354272,
		-0.377845, -0.806432, -0.454862,
		33.363194, 32.949493, 44.346130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227985, 33.300896, 44.361496>,  <33.627686, 33.513996, 44.664536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227985, 33.300896, 44.361496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919239, 33.134899, 44.168827>,  <33.733994, 33.035301, 44.053223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919239, 33.134899, 44.168827>,  <34.227985, 33.300896, 44.361496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919239, 33.134899, 44.168827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386683, 0.294967, -0.873768,
		0.504682, -0.860685, -0.067205,
		-0.771863, -0.414988, -0.481677,
		33.687679, 33.010403, 44.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535431, 32.899033, 43.772141>,  <34.227985, 33.300896, 44.361496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535431, 32.899033, 43.772141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151627, 32.927742, 43.663197>,  <33.921345, 32.944965, 43.597828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151627, 32.927742, 43.663197>,  <34.535431, 32.899033, 43.772141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151627, 32.927742, 43.663197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281655, 0.250603, -0.926212,
		0.001779, -0.965426, -0.260672,
		-0.959514, 0.071772, -0.272363,
		33.863773, 32.949272, 43.581486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291134, 32.394753, 43.219646>,  <34.535431, 32.899033, 43.772141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291134, 32.394753, 43.219646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069912, 32.727501, 43.201187>,  <33.937180, 32.927151, 43.190113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.069912, 32.727501, 43.201187>,  <34.291134, 32.394753, 43.219646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069912, 32.727501, 43.201187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281021, 0.134118, -0.950284,
		-0.784323, -0.538522, -0.307947,
		-0.553050, 0.831869, -0.046144,
		33.903996, 32.977062, 43.187344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172817, 32.402714, 42.602627>,  <34.291134, 32.394753, 43.219646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172817, 32.402714, 42.602627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042645, 32.769073, 42.696625>,  <33.964542, 32.988888, 42.753025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042645, 32.769073, 42.696625>,  <34.172817, 32.402714, 42.602627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042645, 32.769073, 42.696625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054256, 0.266204, -0.962388,
		-0.944007, -0.300443, -0.136325,
		-0.325433, 0.915898, 0.234998,
		33.945015, 33.043842, 42.767124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628330, 32.544098, 42.140717>,  <34.172817, 32.402714, 42.602627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628330, 32.544098, 42.140717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779034, 32.893314, 42.264553>,  <33.869457, 33.102844, 42.338856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.779034, 32.893314, 42.264553>,  <33.628330, 32.544098, 42.140717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779034, 32.893314, 42.264553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014735, 0.328525, -0.944380,
		-0.926193, 0.360369, 0.110911,
		0.376762, 0.873044, 0.309588,
		33.892063, 33.155228, 42.357430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409458, 33.006954, 41.704254>,  <33.628330, 32.544098, 42.140717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409458, 33.006954, 41.704254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681484, 33.244797, 41.875816>,  <33.844700, 33.387501, 41.978756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.681484, 33.244797, 41.875816>,  <33.409458, 33.006954, 41.704254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681484, 33.244797, 41.875816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008877, 0.578296, -0.815779,
		-0.733102, 0.558586, 0.387998,
		0.680061, 0.594605, 0.428909,
		33.885502, 33.423180, 42.004490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207016, 33.758842, 41.638031>,  <33.409458, 33.006954, 41.704254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207016, 33.758842, 41.638031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603382, 33.729401, 41.683056>,  <33.841202, 33.711735, 41.710072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.603382, 33.729401, 41.683056>,  <33.207016, 33.758842, 41.638031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603382, 33.729401, 41.683056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134254, 0.590835, -0.795543,
		-0.007951, 0.803428, 0.595349,
		0.990915, -0.073603, 0.112561,
		33.900658, 33.707321, 41.716824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410000, 34.421669, 41.512737>,  <33.207016, 33.758842, 41.638031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410000, 34.421669, 41.512737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764019, 34.235493, 41.509449>,  <33.976429, 34.123787, 41.507477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.764019, 34.235493, 41.509449>,  <33.410000, 34.421669, 41.512737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764019, 34.235493, 41.509449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326810, 0.633824, -0.701044,
		0.331502, 0.617768, 0.713071,
		0.885043, -0.465436, -0.008221,
		34.029533, 34.095863, 41.506981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889561, 34.924393, 41.461349>,  <33.410000, 34.421669, 41.512737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889561, 34.924393, 41.461349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051888, 34.591457, 41.310337>,  <34.149284, 34.391697, 41.219730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051888, 34.591457, 41.310337>,  <33.889561, 34.924393, 41.461349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051888, 34.591457, 41.310337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328842, 0.518386, -0.789391,
		0.852748, 0.196195, 0.484075,
		0.405813, -0.832336, -0.377535,
		34.173630, 34.341755, 41.197075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576416, 35.248341, 41.334194>,  <33.889561, 34.924393, 41.461349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576416, 35.248341, 41.334194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492229, 34.922325, 41.118259>,  <34.441719, 34.726715, 40.988701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492229, 34.922325, 41.118259>,  <34.576416, 35.248341, 41.334194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492229, 34.922325, 41.118259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292610, 0.474366, -0.830275,
		0.932783, -0.332705, 0.138651,
		-0.210465, -0.815036, -0.539833,
		34.429089, 34.677814, 40.956310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109486, 35.224602, 40.685383>,  <34.576416, 35.248341, 41.334194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109486, 35.224602, 40.685383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800560, 34.982384, 40.608608>,  <34.615204, 34.837051, 40.562542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.800560, 34.982384, 40.608608>,  <35.109486, 35.224602, 40.685383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800560, 34.982384, 40.608608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022310, 0.276105, -0.960869,
		0.634844, -0.746378, -0.199731,
		-0.772318, -0.605546, -0.191936,
		34.568863, 34.800720, 40.551029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813004, 34.931953, 40.775345>,  <35.109486, 35.224602, 40.685383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813004, 34.931953, 40.775345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137600, 35.151337, 40.856014>,  <36.332359, 35.282967, 40.904415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.137600, 35.151337, 40.856014>,  <35.813004, 34.931953, 40.775345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137600, 35.151337, 40.856014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122818, -0.177340, 0.976456,
		0.571311, -0.817156, -0.076550,
		0.811492, 0.548458, 0.201677,
		36.381046, 35.315876, 40.916519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257492, 34.521225, 41.273525>,  <35.813004, 34.931953, 40.775345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257492, 34.521225, 41.273525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.344440, 34.904827, 41.346252>,  <36.396610, 35.134987, 41.389889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.344440, 34.904827, 41.346252>,  <36.257492, 34.521225, 41.273525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344440, 34.904827, 41.346252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013260, -0.189160, 0.981857,
		0.975999, -0.211015, -0.053834,
		0.217370, 0.959005, 0.181822,
		36.409653, 35.192528, 41.400799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806282, 34.518944, 41.759731>,  <36.257492, 34.521225, 41.273525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806282, 34.518944, 41.759731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646214, 34.885517, 41.758820>,  <36.550171, 35.105461, 41.758274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.646214, 34.885517, 41.758820>,  <36.806282, 34.518944, 41.759731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646214, 34.885517, 41.758820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213508, -0.090813, 0.972711,
		0.891221, 0.389741, 0.232008,
		-0.400174, 0.916436, -0.002279,
		36.526161, 35.160446, 41.758137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256454, 34.975494, 42.245140>,  <36.806282, 34.518944, 41.759731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256454, 34.975494, 42.245140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887691, 35.128899, 42.223228>,  <36.666431, 35.220943, 42.210079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887691, 35.128899, 42.223228>,  <37.256454, 34.975494, 42.245140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887691, 35.128899, 42.223228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117151, -0.141192, 0.983026,
		0.369268, 0.912679, 0.175095,
		-0.921909, 0.383513, -0.054783,
		36.611118, 35.243954, 42.206795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209949, 35.352158, 42.828732>,  <37.256454, 34.975494, 42.245140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209949, 35.352158, 42.828732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823044, 35.338963, 42.728085>,  <36.590900, 35.331043, 42.667698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823044, 35.338963, 42.728085>,  <37.209949, 35.352158, 42.828732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823044, 35.338963, 42.728085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246665, -0.110715, 0.962756,
		-0.059618, 0.993305, 0.098953,
		-0.967265, -0.032989, -0.251614,
		36.532864, 35.329067, 42.652599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822079, 35.757023, 43.332893>,  <37.209949, 35.352158, 42.828732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822079, 35.757023, 43.332893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.549122, 35.512386, 43.172745>,  <36.385349, 35.365604, 43.076656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.549122, 35.512386, 43.172745>,  <36.822079, 35.757023, 43.332893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549122, 35.512386, 43.172745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407869, -0.135967, 0.902860,
		-0.606615, 0.779406, -0.156665,
		-0.682393, -0.611587, -0.400375,
		36.344402, 35.328911, 43.052631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166431, 35.936108, 43.597790>,  <36.822079, 35.757023, 43.332893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166431, 35.936108, 43.597790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105145, 35.560974, 43.473217>,  <36.068371, 35.335892, 43.398476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105145, 35.560974, 43.473217>,  <36.166431, 35.936108, 43.597790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105145, 35.560974, 43.473217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394120, -0.231006, 0.889554,
		-0.906197, 0.259037, -0.334225,
		-0.153219, -0.937836, -0.311428,
		36.059177, 35.279625, 43.379787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486977, 35.779404, 43.667835>,  <36.166431, 35.936108, 43.597790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486977, 35.779404, 43.667835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671177, 35.424385, 43.662178>,  <35.781696, 35.211372, 43.658783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671177, 35.424385, 43.662178>,  <35.486977, 35.779404, 43.667835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671177, 35.424385, 43.662178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451162, -0.247746, 0.857365,
		-0.764456, -0.388436, -0.514514,
		0.460500, -0.887547, -0.014144,
		35.809326, 35.158119, 43.657936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953049, 35.338139, 43.896080>,  <35.486977, 35.779404, 43.667835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953049, 35.338139, 43.896080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277393, 35.107372, 43.935436>,  <35.472000, 34.968914, 43.959049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.277393, 35.107372, 43.935436>,  <34.953049, 35.338139, 43.896080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277393, 35.107372, 43.935436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461443, -0.526819, 0.713816,
		-0.359973, -0.624207, -0.693387,
		0.810858, -0.576912, 0.098395,
		35.520649, 34.934299, 43.964954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827236, 34.608826, 43.867146>,  <34.953049, 35.338139, 43.896080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827236, 34.608826, 43.867146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163910, 34.631615, 44.081928>,  <35.365913, 34.645287, 44.210800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163910, 34.631615, 44.081928>,  <34.827236, 34.608826, 43.867146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163910, 34.631615, 44.081928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416561, -0.564236, 0.712822,
		0.343580, -0.823646, -0.451176,
		0.841683, 0.056969, 0.536959,
		35.416416, 34.648705, 44.243015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992298, 33.860573, 44.190750>,  <34.827236, 34.608826, 43.867146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992298, 33.860573, 44.190750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193756, 34.121128, 44.417744>,  <35.314632, 34.277462, 44.553940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.193756, 34.121128, 44.417744>,  <34.992298, 33.860573, 44.190750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193756, 34.121128, 44.417744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340688, -0.453887, 0.823358,
		0.793896, -0.608016, -0.006679,
		0.503647, 0.651385, 0.567483,
		35.344849, 34.316544, 44.587990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446583, 33.478600, 44.586353>,  <34.992298, 33.860573, 44.190750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446583, 33.478600, 44.586353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.422466, 33.817242, 44.797874>,  <35.407997, 34.020428, 44.924786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.422466, 33.817242, 44.797874>,  <35.446583, 33.478600, 44.586353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422466, 33.817242, 44.797874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011016, -0.530294, 0.847742,
		0.998120, 0.045286, 0.041299,
		-0.060292, 0.846603, 0.528798,
		35.404377, 34.071224, 44.956512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974220, 33.472450, 45.152763>,  <35.446583, 33.478600, 44.586353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974220, 33.472450, 45.152763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659649, 33.703465, 45.240379>,  <35.470905, 33.842075, 45.292950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659649, 33.703465, 45.240379>,  <35.974220, 33.472450, 45.152763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659649, 33.703465, 45.240379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072385, -0.438349, 0.895886,
		0.613424, 0.688695, 0.386535,
		-0.786429, 0.577538, 0.219042,
		35.423721, 33.876724, 45.306091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081692, 33.381138, 45.857372>,  <35.974220, 33.472450, 45.152763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081692, 33.381138, 45.857372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729946, 33.560665, 45.793758>,  <35.518898, 33.668381, 45.755592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729946, 33.560665, 45.793758>,  <36.081692, 33.381138, 45.857372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729946, 33.560665, 45.793758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332133, -0.338836, 0.880271,
		0.341193, 0.826895, 0.447025,
		-0.879360, 0.448815, -0.159030,
		35.466137, 33.695309, 45.746048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720695, 33.898823, 45.935741>,  <36.081692, 33.381138, 45.857372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720695, 33.898823, 45.935741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076748, 33.882294, 46.117271>,  <37.290379, 33.872375, 46.226189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.076748, 33.882294, 46.117271>,  <36.720695, 33.898823, 45.935741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076748, 33.882294, 46.117271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455587, 0.058112, -0.888293,
		0.010335, 0.997454, 0.070554,
		0.890131, -0.041324, 0.453826,
		37.343788, 33.869896, 46.253418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182907, 34.519974, 45.776825>,  <36.720695, 33.898823, 45.935741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182907, 34.519974, 45.776825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419373, 34.206657, 45.853745>,  <37.561253, 34.018669, 45.899899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419373, 34.206657, 45.853745>,  <37.182907, 34.519974, 45.776825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419373, 34.206657, 45.853745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549677, 0.216787, -0.806758,
		0.590238, 0.582631, 0.558713,
		0.591164, -0.783291, 0.192303,
		37.596722, 33.971668, 45.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851143, 34.734299, 45.507843>,  <37.182907, 34.519974, 45.776825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851143, 34.734299, 45.507843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895233, 34.340416, 45.561810>,  <37.921688, 34.104088, 45.594189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.895233, 34.340416, 45.561810>,  <37.851143, 34.734299, 45.507843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895233, 34.340416, 45.561810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666280, -0.027521, -0.745194,
		0.737511, 0.172028, 0.653058,
		0.110221, -0.984708, 0.134916,
		37.928299, 34.045002, 45.602283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589096, 34.632034, 45.419327>,  <37.851143, 34.734299, 45.507843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589096, 34.632034, 45.419327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420738, 34.271839, 45.375576>,  <38.319721, 34.055721, 45.349327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420738, 34.271839, 45.375576>,  <38.589096, 34.632034, 45.419327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420738, 34.271839, 45.375576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594927, -0.183011, -0.782668,
		0.684768, -0.394492, 0.612755,
		-0.420897, -0.900491, -0.109373,
		38.294468, 34.001694, 45.342766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156853, 34.061527, 45.303555>,  <38.589096, 34.632034, 45.419327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156853, 34.061527, 45.303555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806759, 33.981052, 45.127605>,  <38.596703, 33.932766, 45.022034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806759, 33.981052, 45.127605>,  <39.156853, 34.061527, 45.303555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806759, 33.981052, 45.127605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476409, -0.201217, -0.855889,
		0.083686, -0.958663, 0.271960,
		-0.875232, -0.201191, -0.439877,
		38.544189, 33.920696, 44.995644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331615, 33.530930, 44.891640>,  <39.156853, 34.061527, 45.303555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331615, 33.530930, 44.891640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980961, 33.667839, 44.756374>,  <38.770569, 33.749985, 44.675217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980961, 33.667839, 44.756374>,  <39.331615, 33.530930, 44.891640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980961, 33.667839, 44.756374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379819, 0.060837, -0.923058,
		-0.295369, -0.937627, -0.183335,
		-0.876638, 0.342277, -0.338159,
		38.717968, 33.770523, 44.654926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300182, 33.198212, 44.278618>,  <39.331615, 33.530930, 44.891640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300182, 33.198212, 44.278618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035465, 33.497215, 44.255783>,  <38.876637, 33.676617, 44.242085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035465, 33.497215, 44.255783>,  <39.300182, 33.198212, 44.278618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035465, 33.497215, 44.255783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124781, 0.034752, -0.991575,
		-0.739231, -0.663338, -0.116274,
		-0.661790, 0.747513, -0.057082,
		38.836929, 33.721470, 44.238659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861137, 33.127178, 43.655445>,  <39.300182, 33.198212, 44.278618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861137, 33.127178, 43.655445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.840107, 33.518711, 43.734562>,  <38.827488, 33.753632, 43.782032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.840107, 33.518711, 43.734562>,  <38.861137, 33.127178, 43.655445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840107, 33.518711, 43.734562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219883, 0.204556, -0.953839,
		-0.974108, -0.006661, -0.225984,
		-0.052580, 0.978832, 0.197795,
		38.824333, 33.812359, 43.793900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321518, 33.478336, 43.145973>,  <38.861137, 33.127178, 43.655445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321518, 33.478336, 43.145973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575851, 33.760956, 43.270237>,  <38.728451, 33.930527, 43.344795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575851, 33.760956, 43.270237>,  <38.321518, 33.478336, 43.145973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575851, 33.760956, 43.270237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020628, 0.386801, -0.921932,
		-0.771553, 0.592601, 0.231366,
		0.635831, 0.706547, 0.310661,
		38.766602, 33.972919, 43.363434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009544, 34.049702, 43.020123>,  <38.321518, 33.478336, 43.145973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009544, 34.049702, 43.020123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407108, 34.093403, 43.025944>,  <38.645645, 34.119625, 43.029438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.407108, 34.093403, 43.025944>,  <38.009544, 34.049702, 43.020123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407108, 34.093403, 43.025944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046445, 0.534880, -0.843651,
		-0.099958, 0.837834, 0.536696,
		0.993907, 0.109257, 0.014552,
		38.705280, 34.126179, 43.030308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183136, 34.669884, 42.615032>,  <38.009544, 34.049702, 43.020123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183136, 34.669884, 42.615032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540009, 34.492302, 42.648300>,  <38.754131, 34.385754, 42.668262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.540009, 34.492302, 42.648300>,  <38.183136, 34.669884, 42.615032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540009, 34.492302, 42.648300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290988, 0.424113, -0.857586,
		0.345451, 0.789326, 0.507571,
		0.892183, -0.443951, 0.083174,
		38.807663, 34.359116, 42.673252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573437, 35.170864, 42.451820>,  <38.183136, 34.669884, 42.615032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573437, 35.170864, 42.451820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.792923, 34.842194, 42.390167>,  <38.924614, 34.644993, 42.353176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.792923, 34.842194, 42.390167>,  <38.573437, 35.170864, 42.451820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792923, 34.842194, 42.390167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310366, 0.371412, -0.875058,
		0.776264, 0.432318, 0.458820,
		0.548715, -0.821678, -0.154137,
		38.957539, 34.595692, 42.343925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309540, 35.376274, 42.314335>,  <38.573437, 35.170864, 42.451820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309540, 35.376274, 42.314335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263954, 35.010788, 42.158318>,  <39.236603, 34.791496, 42.064709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.263954, 35.010788, 42.158318>,  <39.309540, 35.376274, 42.314335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263954, 35.010788, 42.158318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201996, 0.363090, -0.909595,
		0.972734, -0.182446, 0.143188,
		-0.113962, -0.913717, -0.390044,
		39.229767, 34.736671, 42.041306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815205, 35.393471, 41.686325>,  <39.309540, 35.376274, 42.314335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815205, 35.393471, 41.686325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.583973, 35.074814, 41.615681>,  <39.445232, 34.883621, 41.573296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.583973, 35.074814, 41.615681>,  <39.815205, 35.393471, 41.686325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583973, 35.074814, 41.615681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003905, 0.213732, -0.976885,
		0.815970, -0.565408, -0.120443,
		-0.578081, -0.796638, -0.176607,
		39.410549, 34.835823, 41.562698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.768463, 34.620827, 27.042084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596107, 34.277504, 27.153540>,  <27.492693, 34.071510, 27.220413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.596107, 34.277504, 27.153540>,  <27.768463, 34.620827, 27.042084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596107, 34.277504, 27.153540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251900, 0.410902, 0.876188,
		-0.866533, 0.307353, -0.393262,
		-0.430891, -0.858308, 0.278638,
		27.466841, 34.020012, 27.237131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199949, 34.836670, 27.441961>,  <27.768463, 34.620827, 27.042084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199949, 34.836670, 27.441961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212263, 34.448578, 27.538048>,  <27.219652, 34.215721, 27.595699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.212263, 34.448578, 27.538048>,  <27.199949, 34.836670, 27.441961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212263, 34.448578, 27.538048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371013, 0.212067, 0.904089,
		-0.928117, -0.116956, -0.353439,
		0.030786, -0.970231, 0.240215,
		27.221498, 34.157509, 27.610113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622520, 34.739063, 27.706820>,  <27.199949, 34.836670, 27.441961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622520, 34.739063, 27.706820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834356, 34.438164, 27.863615>,  <26.961458, 34.257626, 27.957693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.834356, 34.438164, 27.863615>,  <26.622520, 34.739063, 27.706820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834356, 34.438164, 27.863615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400328, 0.185764, 0.897346,
		-0.747845, -0.632149, -0.202768,
		0.529589, -0.752250, 0.391990,
		26.993233, 34.212490, 27.981213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187880, 34.408634, 28.213064>,  <26.622520, 34.739063, 27.706820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187880, 34.408634, 28.213064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.557833, 34.298740, 28.318224>,  <26.779804, 34.232803, 28.381321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.557833, 34.298740, 28.318224>,  <26.187880, 34.408634, 28.213064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557833, 34.298740, 28.318224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185908, 0.276426, 0.942882,
		-0.331712, -0.920929, 0.204586,
		0.924881, -0.274732, 0.262902,
		26.835297, 34.216320, 28.397095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072485, 34.031147, 28.760674>,  <26.187880, 34.408634, 28.213064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072485, 34.031147, 28.760674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447802, 34.168350, 28.778368>,  <26.672991, 34.250671, 28.788984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447802, 34.168350, 28.778368>,  <26.072485, 34.031147, 28.760674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447802, 34.168350, 28.778368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099844, 0.146195, 0.984204,
		0.331126, -0.927885, 0.171421,
		0.938289, 0.343011, 0.044235,
		26.729288, 34.271252, 28.791639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367310, 33.755016, 29.357845>,  <26.072485, 34.031147, 28.760674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367310, 33.755016, 29.357845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.628086, 34.048012, 29.279428>,  <26.784552, 34.223808, 29.232378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.628086, 34.048012, 29.279428>,  <26.367310, 33.755016, 29.357845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628086, 34.048012, 29.279428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034289, 0.229795, 0.972635,
		0.757494, -0.640822, 0.124696,
		0.651941, 0.732490, -0.196042,
		26.823668, 34.267757, 29.220615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850920, 33.709732, 29.979660>,  <26.367310, 33.755016, 29.357845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850920, 33.709732, 29.979660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910034, 34.072571, 29.822012>,  <26.945503, 34.290276, 29.727423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910034, 34.072571, 29.822012>,  <26.850920, 33.709732, 29.979660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910034, 34.072571, 29.822012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260231, 0.348787, 0.900348,
		0.954169, -0.235621, -0.184509,
		0.147786, 0.907100, -0.394118,
		26.954370, 34.344700, 29.703777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472311, 33.890560, 30.249832>,  <26.850920, 33.709732, 29.979660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472311, 33.890560, 30.249832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262962, 34.218723, 30.157734>,  <27.137354, 34.415623, 30.102474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262962, 34.218723, 30.157734>,  <27.472311, 33.890560, 30.249832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262962, 34.218723, 30.157734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149925, 0.354652, 0.922900,
		0.838812, 0.448499, -0.308614,
		-0.523370, 0.820409, -0.230246,
		27.105951, 34.464848, 30.088661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785553, 34.261417, 30.726028>,  <27.472311, 33.890560, 30.249832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785553, 34.261417, 30.726028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495085, 34.500874, 30.590796>,  <27.320803, 34.644547, 30.509655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.495085, 34.500874, 30.590796>,  <27.785553, 34.261417, 30.726028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.495085, 34.500874, 30.590796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203337, 0.656756, 0.726172,
		0.656756, 0.458581, -0.598644,
		-0.726172, 0.598644, -0.338082,
		27.277233, 34.680466, 30.489370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998993, 34.848785, 30.858068>,  <27.785553, 34.261417, 30.726028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998993, 34.848785, 30.858068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604504, 34.912693, 30.840918>,  <27.367811, 34.951038, 30.830627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.604504, 34.912693, 30.840918>,  <27.998993, 34.848785, 30.858068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604504, 34.912693, 30.840918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054697, 0.559557, 0.826985,
		0.156122, 0.813246, -0.560587,
		-0.986222, 0.159772, -0.042877,
		27.308638, 34.960625, 30.828054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897522, 35.589268, 30.923662>,  <27.998993, 34.848785, 30.858068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897522, 35.589268, 30.923662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540956, 35.430637, 31.011402>,  <27.327017, 35.335461, 31.064047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540956, 35.430637, 31.011402>,  <27.897522, 35.589268, 30.923662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540956, 35.430637, 31.011402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146837, 0.710639, 0.688064,
		-0.428745, 0.581140, -0.691703,
		-0.891413, -0.396572, 0.219350,
		27.273533, 35.311665, 31.077208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393305, 36.182362, 31.027193>,  <27.897522, 35.589268, 30.923662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393305, 36.182362, 31.027193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.184473, 35.873505, 31.172098>,  <27.059174, 35.688190, 31.259041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.184473, 35.873505, 31.172098>,  <27.393305, 36.182362, 31.027193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184473, 35.873505, 31.172098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182339, 0.515968, 0.836977,
		-0.833177, 0.370915, -0.410168,
		-0.522081, -0.772139, 0.362260,
		27.027849, 35.641861, 31.280777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831966, 36.507668, 31.361320>,  <27.393305, 36.182362, 31.027193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831966, 36.507668, 31.361320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.849337, 36.140774, 31.519711>,  <26.859758, 35.920639, 31.614744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.849337, 36.140774, 31.519711>,  <26.831966, 36.507668, 31.361320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849337, 36.140774, 31.519711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257280, 0.372715, 0.891566,
		-0.965361, -0.140595, -0.219800,
		0.043427, -0.917233, 0.395977,
		26.862364, 35.865604, 31.638504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314835, 36.524929, 31.860010>,  <26.831966, 36.507668, 31.361320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314835, 36.524929, 31.860010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530560, 36.204933, 31.965204>,  <26.659994, 36.012936, 32.028320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.530560, 36.204933, 31.965204>,  <26.314835, 36.524929, 31.860010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.530560, 36.204933, 31.965204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182411, 0.193903, 0.963913,
		-0.822113, -0.567821, -0.041352,
		0.539311, -0.799988, 0.262987,
		26.692352, 35.964935, 32.044102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880047, 36.124763, 32.348907>,  <26.314835, 36.524929, 31.860010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880047, 36.124763, 32.348907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267090, 36.037701, 32.400070>,  <26.499315, 35.985462, 32.430767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267090, 36.037701, 32.400070>,  <25.880047, 36.124763, 32.348907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267090, 36.037701, 32.400070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064003, 0.278619, 0.958267,
		-0.244209, -0.935413, 0.255663,
		0.967608, -0.217654, 0.127911,
		26.557373, 35.972404, 32.438442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888432, 35.646465, 32.897346>,  <25.880047, 36.124763, 32.348907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888432, 35.646465, 32.897346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.251177, 35.812954, 32.870934>,  <26.468824, 35.912846, 32.855087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.251177, 35.812954, 32.870934>,  <25.888432, 35.646465, 32.897346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251177, 35.812954, 32.870934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052291, 0.266607, 0.962386,
		0.418171, -0.869298, 0.263541,
		0.906862, 0.416222, -0.066031,
		26.523235, 35.937820, 32.851124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201859, 35.478580, 33.520504>,  <25.888432, 35.646465, 32.897346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201859, 35.478580, 33.520504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425287, 35.787533, 33.399559>,  <26.559345, 35.972904, 33.326992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425287, 35.787533, 33.399559>,  <26.201859, 35.478580, 33.520504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425287, 35.787533, 33.399559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, 0.303107, 0.948290,
		0.824089, -0.558171, 0.096549,
		0.558573, 0.772380, -0.302366,
		26.592859, 36.019245, 33.308849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837467, 35.356800, 33.881397>,  <26.201859, 35.478580, 33.520504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837467, 35.356800, 33.881397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.794130, 35.736378, 33.762894>,  <26.768129, 35.964123, 33.691792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.794130, 35.736378, 33.762894>,  <26.837467, 35.356800, 33.881397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794130, 35.736378, 33.762894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260634, 0.314705, 0.912705,
		0.959339, 0.021668, -0.281422,
		-0.108341, 0.948942, -0.296261,
		26.761627, 36.021061, 33.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288906, 35.657242, 34.373749>,  <26.837467, 35.356800, 33.881397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288906, 35.657242, 34.373749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135698, 35.987049, 34.207153>,  <27.043774, 36.184933, 34.107197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135698, 35.987049, 34.207153>,  <27.288906, 35.657242, 34.373749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135698, 35.987049, 34.207153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031451, 0.462248, 0.886192,
		0.923205, 0.326330, -0.202982,
		-0.383019, 0.824521, -0.416486,
		27.020792, 36.234406, 34.082207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761993, 36.297600, 34.460445>,  <27.288906, 35.657242, 34.373749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761993, 36.297600, 34.460445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379211, 36.399975, 34.405697>,  <27.149542, 36.461399, 34.372849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.379211, 36.399975, 34.405697>,  <27.761993, 36.297600, 34.460445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379211, 36.399975, 34.405697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074558, 0.238971, 0.968160,
		0.280493, 0.936691, -0.209603,
		-0.956956, 0.255935, -0.136868,
		27.092125, 36.476757, 34.364635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317387, 36.789692, 34.572445>,  <27.761993, 36.297600, 34.460445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317387, 36.789692, 34.572445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681528, 36.695690, 34.708694>,  <28.900013, 36.639290, 34.790443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681528, 36.695690, 34.708694>,  <28.317387, 36.789692, 34.572445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681528, 36.695690, 34.708694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330341, -0.083098, -0.940196,
		0.249257, 0.968436, 0.001983,
		0.910355, -0.235005, 0.340627,
		28.954634, 36.625187, 34.810883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728050, 37.019142, 34.062855>,  <28.317387, 36.789692, 34.572445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728050, 37.019142, 34.062855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981531, 36.772369, 34.249538>,  <29.133619, 36.624306, 34.361549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.981531, 36.772369, 34.249538>,  <28.728050, 37.019142, 34.062855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981531, 36.772369, 34.249538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324928, -0.335232, -0.884331,
		0.702030, 0.712047, -0.011977,
		0.633700, -0.616935, 0.466707,
		29.171640, 36.587288, 34.389549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341057, 37.119602, 33.833500>,  <28.728050, 37.019142, 34.062855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341057, 37.119602, 33.833500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.380388, 36.747726, 33.975491>,  <29.403986, 36.524601, 34.060684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.380388, 36.747726, 33.975491>,  <29.341057, 37.119602, 33.833500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380388, 36.747726, 33.975491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123448, -0.342557, -0.931351,
		0.987468, 0.135399, 0.081085,
		0.098328, -0.929689, 0.354978,
		29.409887, 36.468819, 34.081985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923931, 36.779881, 33.403252>,  <29.341057, 37.119602, 33.833500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923931, 36.779881, 33.403252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741438, 36.466656, 33.572323>,  <29.631941, 36.278721, 33.673767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.741438, 36.466656, 33.572323>,  <29.923931, 36.779881, 33.403252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741438, 36.466656, 33.572323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118340, -0.524168, -0.843353,
		0.881956, -0.334747, 0.331812,
		-0.456235, -0.783066, 0.422679,
		29.604567, 36.231735, 33.699127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447683, 36.148708, 33.253132>,  <29.923931, 36.779881, 33.403252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447683, 36.148708, 33.253132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067669, 36.050228, 33.329887>,  <29.839661, 35.991142, 33.375938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067669, 36.050228, 33.329887>,  <30.447683, 36.148708, 33.253132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067669, 36.050228, 33.329887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071614, -0.426426, -0.901683,
		0.303818, -0.870372, 0.387488,
		-0.950035, -0.246197, 0.191887,
		29.782658, 35.976368, 33.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398489, 35.466358, 33.212219>,  <30.447683, 36.148708, 33.253132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398489, 35.466358, 33.212219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035000, 35.621449, 33.150387>,  <29.816906, 35.714500, 33.113289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.035000, 35.621449, 33.150387>,  <30.398489, 35.466358, 33.212219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035000, 35.621449, 33.150387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071707, -0.509843, -0.857274,
		-0.411192, -0.767941, 0.491109,
		-0.908724, 0.387721, -0.154577,
		29.762383, 35.737766, 33.104012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020750, 34.894562, 33.010418>,  <30.398489, 35.466358, 33.212219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020750, 34.894562, 33.010418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852257, 35.231476, 32.875885>,  <29.751162, 35.433624, 32.795166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.852257, 35.231476, 32.875885>,  <30.020750, 34.894562, 33.010418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852257, 35.231476, 32.875885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090782, -0.408129, -0.908399,
		-0.902398, -0.352115, 0.248381,
		-0.421232, 0.842286, -0.336329,
		29.725887, 35.484161, 32.774986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423267, 34.662445, 32.602047>,  <30.020750, 34.894562, 33.010418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423267, 34.662445, 32.602047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471807, 35.034973, 32.464687>,  <29.500933, 35.258488, 32.382271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471807, 35.034973, 32.464687>,  <29.423267, 34.662445, 32.602047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471807, 35.034973, 32.464687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060525, -0.338366, -0.939066,
		-0.990763, 0.134741, 0.015307,
		0.121352, 0.931318, -0.343395,
		29.508213, 35.314369, 32.361668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974499, 34.757305, 32.008595>,  <29.423267, 34.662445, 32.602047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974499, 34.757305, 32.008595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246895, 35.049675, 31.990694>,  <29.410332, 35.225098, 31.979954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.246895, 35.049675, 31.990694>,  <28.974499, 34.757305, 32.008595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246895, 35.049675, 31.990694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078580, -0.133694, -0.987902,
		-0.728064, 0.669236, -0.148481,
		0.680990, 0.730924, -0.044749,
		29.451193, 35.268951, 31.977270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699575, 35.119629, 31.421371>,  <28.974499, 34.757305, 32.008595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699575, 35.119629, 31.421371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077269, 35.236115, 31.482841>,  <29.303885, 35.306007, 31.519724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077269, 35.236115, 31.482841>,  <28.699575, 35.119629, 31.421371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077269, 35.236115, 31.482841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153313, 0.024213, -0.987881,
		-0.291408, 0.956351, -0.021785,
		0.944233, 0.291217, 0.153677,
		29.360538, 35.323479, 31.528944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836773, 35.778919, 31.035656>,  <28.699575, 35.119629, 31.421371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836773, 35.778919, 31.035656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196114, 35.611835, 31.090036>,  <29.411718, 35.511585, 31.122665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196114, 35.611835, 31.090036>,  <28.836773, 35.778919, 31.035656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196114, 35.611835, 31.090036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167145, 0.038826, -0.985168,
		0.406237, 0.907750, 0.104697,
		0.898351, -0.417711, 0.135953,
		29.465618, 35.486523, 31.130823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368952, 36.285179, 30.795221>,  <28.836773, 35.778919, 31.035656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368952, 36.285179, 30.795221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502169, 35.908386, 30.778479>,  <29.582098, 35.682312, 30.768433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.502169, 35.908386, 30.778479>,  <29.368952, 36.285179, 30.795221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502169, 35.908386, 30.778479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279075, 0.140875, -0.949880,
		0.900667, 0.304668, 0.309801,
		0.333041, -0.941983, -0.041856,
		29.602081, 35.625790, 30.765923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816065, 36.338661, 30.343658>,  <29.368952, 36.285179, 30.795221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816065, 36.338661, 30.343658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781637, 35.940495, 30.326942>,  <29.760981, 35.701595, 30.316914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.781637, 35.940495, 30.326942>,  <29.816065, 36.338661, 30.343658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781637, 35.940495, 30.326942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176506, 0.026046, -0.983955,
		0.980529, -0.092065, 0.173455,
		-0.086070, -0.995412, -0.041789,
		29.755816, 35.641872, 30.314405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339125, 36.281250, 29.933115>,  <29.816065, 36.338661, 30.343658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339125, 36.281250, 29.933115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.104380, 35.957870, 29.915218>,  <29.963533, 35.763844, 29.904480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.104380, 35.957870, 29.915218>,  <30.339125, 36.281250, 29.933115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104380, 35.957870, 29.915218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147655, -0.052527, -0.987643,
		0.796111, -0.586215, 0.150198,
		-0.586860, -0.808451, -0.044740,
		29.928322, 35.715336, 29.901796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546972, 35.956356, 29.367672>,  <30.339125, 36.281250, 29.933115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546972, 35.956356, 29.367672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212326, 35.747841, 29.435001>,  <30.011538, 35.622730, 29.475399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.212326, 35.747841, 29.435001>,  <30.546972, 35.956356, 29.367672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212326, 35.747841, 29.435001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095698, -0.163472, -0.981896,
		0.539367, -0.837577, 0.086878,
		-0.836615, -0.521288, 0.168326,
		29.961342, 35.591454, 29.485498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652042, 35.335758, 29.055151>,  <30.546972, 35.956356, 29.367672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652042, 35.335758, 29.055151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262737, 35.427505, 29.050329>,  <30.029154, 35.482555, 29.047436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.262737, 35.427505, 29.050329>,  <30.652042, 35.335758, 29.055151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262737, 35.427505, 29.050329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032467, -0.189333, -0.981376,
		-0.227390, -0.954745, 0.191718,
		-0.973262, 0.229380, -0.012054,
		29.970758, 35.496315, 29.046713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263083, 34.755787, 28.742474>,  <30.652042, 35.335758, 29.055151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263083, 34.755787, 28.742474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043236, 35.089088, 28.718462>,  <29.911327, 35.289070, 28.704056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.043236, 35.089088, 28.718462>,  <30.263083, 34.755787, 28.742474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043236, 35.089088, 28.718462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258751, -0.238113, -0.936136,
		-0.794336, -0.498983, 0.346477,
		-0.549617, 0.833257, -0.060030,
		29.878351, 35.339066, 28.700453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732761, 34.594017, 28.292124>,  <30.263083, 34.755787, 28.742474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732761, 34.594017, 28.292124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732779, 34.994019, 28.291754>,  <29.732788, 35.234020, 28.291533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732779, 34.994019, 28.291754>,  <29.732761, 34.594017, 28.292124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732779, 34.994019, 28.291754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335157, -0.000858, -0.942162,
		-0.942162, 0.000351, 0.335157,
		0.000043, 1.000000, -0.000925,
		29.732792, 35.294018, 28.291475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178799, 34.778496, 27.926773>,  <29.732761, 34.594017, 28.292124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178799, 34.778496, 27.926773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425722, 35.093113, 27.933477>,  <29.573875, 35.281883, 27.937500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425722, 35.093113, 27.933477>,  <29.178799, 34.778496, 27.926773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425722, 35.093113, 27.933477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156798, 0.143880, -0.977094,
		-0.770938, 0.600540, 0.212147,
		0.617308, 0.786543, 0.016759,
		29.610914, 35.329075, 27.938505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722160, 35.290218, 27.562944>,  <29.178799, 34.778496, 27.926773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722160, 35.290218, 27.562944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093273, 35.439400, 27.558489>,  <29.315941, 35.528908, 27.555815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.093273, 35.439400, 27.558489>,  <28.722160, 35.290218, 27.562944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093273, 35.439400, 27.558489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141759, 0.324711, -0.935130,
		-0.345146, 0.869175, 0.354131,
		0.927782, 0.372957, -0.011141,
		29.371607, 35.551289, 27.555147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632576, 35.911030, 27.324888>,  <28.722160, 35.290218, 27.562944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632576, 35.911030, 27.324888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015291, 35.818371, 27.254580>,  <29.244921, 35.762775, 27.212395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015291, 35.818371, 27.254580>,  <28.632576, 35.911030, 27.324888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015291, 35.818371, 27.254580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119667, 0.237243, -0.964052,
		0.265023, 0.943427, 0.199271,
		0.956788, -0.231650, -0.175772,
		29.302328, 35.748875, 27.201847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797037, 36.411018, 26.828876>,  <28.632576, 35.911030, 27.324888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797037, 36.411018, 26.828876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111010, 36.163303, 26.821213>,  <29.299393, 36.014675, 26.816614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.111010, 36.163303, 26.821213>,  <28.797037, 36.411018, 26.828876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111010, 36.163303, 26.821213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095536, 0.151528, -0.983825,
		0.612173, 0.770405, 0.178103,
		0.784931, -0.619286, -0.019161,
		29.346489, 35.977516, 26.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.453373, 31.007528, 45.992702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061253, 31.067478, 45.941242>,  <39.825981, 31.103447, 45.910366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.061253, 31.067478, 45.941242>,  <40.453373, 31.007528, 45.992702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061253, 31.067478, 45.941242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121093, 0.058526, 0.990914,
		0.156041, 0.986972, -0.039225,
		-0.980300, 0.149873, -0.128648,
		39.767162, 31.112440, 45.902649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259598, 31.361221, 46.603745>,  <40.453373, 31.007528, 45.992702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259598, 31.361221, 46.603745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901974, 31.248062, 46.464817>,  <39.687401, 31.180166, 46.381462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.901974, 31.248062, 46.464817>,  <40.259598, 31.361221, 46.603745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901974, 31.248062, 46.464817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388902, 0.105421, 0.915228,
		-0.222303, 0.953339, -0.204272,
		-0.894056, -0.282899, -0.347320,
		39.633759, 31.163193, 46.360622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833885, 31.888166, 46.933857>,  <40.259598, 31.361221, 46.603745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833885, 31.888166, 46.933857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589867, 31.583935, 46.844990>,  <39.443455, 31.401396, 46.791668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.589867, 31.583935, 46.844990>,  <39.833885, 31.888166, 46.933857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589867, 31.583935, 46.844990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487631, 0.139366, 0.861855,
		-0.624547, 0.634110, -0.455902,
		-0.610047, -0.760580, -0.222171,
		39.406853, 31.355761, 46.778339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255539, 32.074238, 47.315601>,  <39.833885, 31.888166, 46.933857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255539, 32.074238, 47.315601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.167583, 31.705050, 47.189251>,  <39.114811, 31.483538, 47.113441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.167583, 31.705050, 47.189251>,  <39.255539, 32.074238, 47.315601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167583, 31.705050, 47.189251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665541, -0.094805, 0.740315,
		-0.713235, 0.373014, -0.593428,
		-0.219888, -0.922969, -0.315875,
		39.101616, 31.428158, 47.094490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487797, 31.980566, 47.151104>,  <39.255539, 32.074238, 47.315601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487797, 31.980566, 47.151104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669113, 31.635885, 47.242313>,  <38.777905, 31.429077, 47.297039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.669113, 31.635885, 47.242313>,  <38.487797, 31.980566, 47.151104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669113, 31.635885, 47.242313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630821, -0.129393, 0.765064,
		-0.629752, -0.490640, -0.602233,
		0.453295, -0.861702, 0.228021,
		38.805103, 31.377375, 47.310719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929329, 31.617437, 47.408611>,  <38.487797, 31.980566, 47.151104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929329, 31.617437, 47.408611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245918, 31.415604, 47.546577>,  <38.435871, 31.294502, 47.629356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245918, 31.415604, 47.546577>,  <37.929329, 31.617437, 47.408611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245918, 31.415604, 47.546577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494697, -0.197434, 0.846342,
		-0.358956, -0.840483, -0.405881,
		0.791471, -0.504588, 0.344915,
		38.483360, 31.264227, 47.650051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716747, 30.989866, 47.548470>,  <37.929329, 31.617437, 47.408611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716747, 30.989866, 47.548470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019047, 31.108835, 47.781837>,  <38.200428, 31.180218, 47.921860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.019047, 31.108835, 47.781837>,  <37.716747, 30.989866, 47.548470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019047, 31.108835, 47.781837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509650, -0.292303, 0.809207,
		0.411213, -0.908899, -0.069326,
		0.755752, 0.297425, 0.583419,
		38.245773, 31.198063, 47.956863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683613, 30.463789, 48.208164>,  <37.716747, 30.989866, 47.548470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683613, 30.463789, 48.208164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929787, 30.748863, 48.342815>,  <38.077492, 30.919909, 48.423607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.929787, 30.748863, 48.342815>,  <37.683613, 30.463789, 48.208164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929787, 30.748863, 48.342815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462319, -0.019494, 0.886499,
		0.638358, -0.701212, 0.317491,
		0.615435, 0.712686, 0.336628,
		38.114418, 30.962669, 48.443806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090454, 30.258280, 48.900822>,  <37.683613, 30.463789, 48.208164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090454, 30.258280, 48.900822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118435, 30.656933, 48.883705>,  <38.135223, 30.896124, 48.873436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.118435, 30.656933, 48.883705>,  <38.090454, 30.258280, 48.900822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118435, 30.656933, 48.883705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429086, 0.068786, 0.900641,
		0.900551, -0.044643, 0.432453,
		0.069954, 0.996632, -0.042789,
		38.139420, 30.955923, 48.870869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207947, 30.313711, 49.529755>,  <38.090454, 30.258280, 48.900822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207947, 30.313711, 49.529755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093948, 30.675249, 49.402103>,  <38.025547, 30.892172, 49.325512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.093948, 30.675249, 49.402103>,  <38.207947, 30.313711, 49.529755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093948, 30.675249, 49.402103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406174, 0.187687, 0.894313,
		0.868215, 0.384500, 0.313627,
		-0.285000, 0.903844, -0.319126,
		38.008450, 30.946402, 49.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481064, 30.767988, 50.017246>,  <38.207947, 30.313711, 49.529755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481064, 30.767988, 50.017246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151363, 30.931877, 49.860920>,  <37.953545, 31.030210, 49.767124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.151363, 30.931877, 49.860920>,  <38.481064, 30.767988, 50.017246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151363, 30.931877, 49.860920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342357, 0.189142, 0.920335,
		0.451003, 0.892385, -0.015629,
		-0.824250, 0.409724, -0.390818,
		37.904087, 31.054794, 49.743675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374836, 31.326416, 50.284939>,  <38.481064, 30.767988, 50.017246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374836, 31.326416, 50.284939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008286, 31.248348, 50.145134>,  <37.788353, 31.201508, 50.061249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.008286, 31.248348, 50.145134>,  <38.374836, 31.326416, 50.284939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008286, 31.248348, 50.145134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379211, 0.143480, 0.914118,
		-0.128260, 0.970218, -0.205492,
		-0.916378, -0.195170, -0.349515,
		37.733372, 31.189796, 50.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910835, 31.739380, 50.670982>,  <38.374836, 31.326416, 50.284939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910835, 31.739380, 50.670982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703186, 31.425907, 50.534538>,  <37.578594, 31.237823, 50.452671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.703186, 31.425907, 50.534538>,  <37.910835, 31.739380, 50.670982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703186, 31.425907, 50.534538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477113, -0.065416, 0.876404,
		-0.709134, 0.617711, -0.339944,
		-0.519126, -0.783680, -0.341107,
		37.547447, 31.190804, 50.432205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620441, 31.639572, 51.267483>,  <37.910835, 31.739380, 50.670982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620441, 31.639572, 51.267483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511791, 31.333416, 51.034107>,  <37.446602, 31.149723, 50.894081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.511791, 31.333416, 51.034107>,  <37.620441, 31.639572, 51.267483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511791, 31.333416, 51.034107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494214, -0.409259, 0.766981,
		-0.825815, 0.496675, -0.267100,
		-0.271627, -0.765389, -0.583436,
		37.430302, 31.103800, 50.859077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943031, 31.928932, 51.607418>,  <37.620441, 31.639572, 51.267483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943031, 31.928932, 51.607418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728729, 32.257359, 51.686218>,  <36.600147, 32.454414, 51.733498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.728729, 32.257359, 51.686218>,  <36.943031, 31.928932, 51.607418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728729, 32.257359, 51.686218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017756, 0.222303, -0.974816,
		-0.844184, -0.525765, -0.104522,
		-0.535760, 0.821068, 0.197000,
		36.568001, 32.503677, 51.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370205, 31.877275, 51.183544>,  <36.943031, 31.928932, 51.607418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370205, 31.877275, 51.183544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444168, 32.260780, 51.269878>,  <36.488548, 32.490883, 51.321678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444168, 32.260780, 51.269878>,  <36.370205, 31.877275, 51.183544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444168, 32.260780, 51.269878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074764, 0.232711, -0.969668,
		-0.979908, 0.163164, 0.114711,
		0.184910, 0.958761, 0.215836,
		36.499641, 32.548409, 51.334629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899837, 32.239918, 50.761776>,  <36.370205, 31.877275, 51.183544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899837, 32.239918, 50.761776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160755, 32.525356, 50.863983>,  <36.317307, 32.696621, 50.925308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160755, 32.525356, 50.863983>,  <35.899837, 32.239918, 50.761776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160755, 32.525356, 50.863983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046895, 0.374459, -0.926057,
		-0.756512, 0.592081, 0.277722,
		0.652296, 0.713597, 0.255517,
		36.356445, 32.739437, 50.940639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620846, 32.807781, 50.400845>,  <35.899837, 32.239918, 50.761776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620846, 32.807781, 50.400845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004299, 32.907009, 50.456680>,  <36.234371, 32.966545, 50.490181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004299, 32.907009, 50.456680>,  <35.620846, 32.807781, 50.400845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004299, 32.907009, 50.456680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010140, 0.519836, -0.854206,
		-0.284464, 0.817455, 0.500847,
		0.958633, 0.248069, 0.139586,
		36.291889, 32.981430, 50.498554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667946, 33.501541, 50.094910>,  <35.620846, 32.807781, 50.400845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667946, 33.501541, 50.094910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045670, 33.371040, 50.112026>,  <36.272305, 33.292740, 50.122295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.045670, 33.371040, 50.112026>,  <35.667946, 33.501541, 50.094910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045670, 33.371040, 50.112026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187595, 0.426954, -0.884601,
		0.270334, 0.843368, 0.464382,
		0.944313, -0.326254, 0.042791,
		36.328964, 33.273163, 50.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052017, 34.018494, 49.829849>,  <35.667946, 33.501541, 50.094910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052017, 34.018494, 49.829849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314453, 33.716873, 49.817547>,  <36.471916, 33.535900, 49.810165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314453, 33.716873, 49.817547>,  <36.052017, 34.018494, 49.829849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314453, 33.716873, 49.817547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388163, 0.372130, -0.843119,
		0.647202, 0.541225, 0.536847,
		0.656094, -0.754052, -0.030760,
		36.511280, 33.490658, 49.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782372, 34.323936, 49.625118>,  <36.052017, 34.018494, 49.829849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782372, 34.323936, 49.625118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791939, 33.935410, 49.530483>,  <36.797680, 33.702293, 49.473701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791939, 33.935410, 49.530483>,  <36.782372, 34.323936, 49.625118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791939, 33.935410, 49.530483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239524, 0.235328, -0.941939,
		0.970596, -0.034140, 0.238282,
		0.023916, -0.971316, -0.236586,
		36.799114, 33.644016, 49.459507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436253, 34.109417, 49.367432>,  <36.782372, 34.323936, 49.625118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436253, 34.109417, 49.367432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179840, 33.840767, 49.218842>,  <37.025993, 33.679577, 49.129688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.179840, 33.840767, 49.218842>,  <37.436253, 34.109417, 49.367432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179840, 33.840767, 49.218842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322280, 0.203721, -0.924464,
		0.696572, -0.712332, 0.085860,
		-0.641033, -0.671626, -0.371476,
		36.987530, 33.639278, 49.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841915, 33.669006, 48.883545>,  <37.436253, 34.109417, 49.367432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841915, 33.669006, 48.883545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460564, 33.619003, 48.773682>,  <37.231750, 33.589001, 48.707764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460564, 33.619003, 48.773682>,  <37.841915, 33.669006, 48.883545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460564, 33.619003, 48.773682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242105, 0.226442, -0.943456,
		0.180124, -0.965971, -0.185624,
		-0.953384, -0.124999, -0.274654,
		37.174549, 33.581501, 48.691284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912632, 33.306892, 48.412766>,  <37.841915, 33.669006, 48.883545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912632, 33.306892, 48.412766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529507, 33.409348, 48.360626>,  <37.299633, 33.470821, 48.329342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529507, 33.409348, 48.360626>,  <37.912632, 33.306892, 48.412766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529507, 33.409348, 48.360626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200354, 0.269922, -0.941807,
		-0.206049, -0.928189, -0.309853,
		-0.957811, 0.256138, -0.130349,
		37.242165, 33.486187, 48.321522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714272, 32.961037, 47.825294>,  <37.912632, 33.306892, 48.412766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714272, 32.961037, 47.825294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458504, 33.265564, 47.868275>,  <37.305042, 33.448280, 47.894062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458504, 33.265564, 47.868275>,  <37.714272, 32.961037, 47.825294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458504, 33.265564, 47.868275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154366, 0.264024, -0.952083,
		-0.753205, -0.592190, -0.286343,
		-0.639416, 0.761316, 0.107450,
		37.266678, 33.493958, 47.900509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191017, 32.808449, 47.427261>,  <37.714272, 32.961037, 47.825294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191017, 32.808449, 47.427261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215584, 33.203133, 47.487434>,  <37.230324, 33.439941, 47.523537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215584, 33.203133, 47.487434>,  <37.191017, 32.808449, 47.427261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215584, 33.203133, 47.487434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017586, 0.151765, -0.988260,
		-0.997958, 0.058046, 0.026672,
		0.061412, 0.986711, 0.150434,
		37.234009, 33.499146, 47.532566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678799, 33.103500, 47.000103>,  <37.191017, 32.808449, 47.427261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678799, 33.103500, 47.000103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944672, 33.395367, 47.064327>,  <37.104195, 33.570488, 47.102863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944672, 33.395367, 47.064327>,  <36.678799, 33.103500, 47.000103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944672, 33.395367, 47.064327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137466, 0.091797, -0.986244,
		-0.734369, 0.677612, -0.039288,
		0.664685, 0.729667, 0.160562,
		37.144077, 33.614265, 47.112495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598877, 33.388229, 46.439770>,  <36.678799, 33.103500, 47.000103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598877, 33.388229, 46.439770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932270, 33.566467, 46.570465>,  <37.132305, 33.673409, 46.648880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932270, 33.566467, 46.570465>,  <36.598877, 33.388229, 46.439770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932270, 33.566467, 46.570465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202998, 0.303035, -0.931108,
		-0.513907, 0.842387, 0.162119,
		0.833481, 0.445594, 0.326735,
		37.182316, 33.700146, 46.668484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018250, 33.844971, 46.492096>,  <36.598877, 33.388229, 46.439770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018250, 33.844971, 46.492096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664883, 33.788364, 46.313412>,  <35.452862, 33.754402, 46.206200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664883, 33.788364, 46.313412>,  <36.018250, 33.844971, 46.492096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664883, 33.788364, 46.313412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422667, -0.170950, 0.890016,
		-0.202313, 0.975065, 0.091207,
		-0.883415, -0.141511, -0.446713,
		35.399857, 33.745911, 46.179398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506451, 34.350018, 46.807404>,  <36.018250, 33.844971, 46.492096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506451, 34.350018, 46.807404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305496, 34.044918, 46.644520>,  <35.184925, 33.861858, 46.546787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.305496, 34.044918, 46.644520>,  <35.506451, 34.350018, 46.807404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305496, 34.044918, 46.644520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403164, -0.209984, 0.890711,
		-0.764896, 0.611655, -0.202020,
		-0.502387, -0.762749, -0.407213,
		35.154781, 33.816093, 46.522354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819805, 34.517101, 47.007545>,  <35.506451, 34.350018, 46.807404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819805, 34.517101, 47.007545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844093, 34.124565, 46.934566>,  <34.858665, 33.889042, 46.890781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844093, 34.124565, 46.934566>,  <34.819805, 34.517101, 47.007545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844093, 34.124565, 46.934566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428690, -0.190702, 0.883095,
		-0.901409, 0.024594, -0.432269,
		0.060716, -0.981340, -0.182444,
		34.862309, 33.830162, 46.879833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117435, 34.208206, 47.102154>,  <34.819805, 34.517101, 47.007545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117435, 34.208206, 47.102154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378132, 33.905216, 47.117470>,  <34.534550, 33.723423, 47.126659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378132, 33.905216, 47.117470>,  <34.117435, 34.208206, 47.102154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378132, 33.905216, 47.117470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399783, -0.300205, 0.866055,
		-0.644518, -0.579752, -0.498481,
		0.651744, -0.757473, 0.038288,
		34.573654, 33.677975, 47.128956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629398, 33.682461, 47.330425>,  <34.117435, 34.208206, 47.102154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629398, 33.682461, 47.330425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993896, 33.527824, 47.387260>,  <34.212593, 33.435043, 47.421360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.993896, 33.527824, 47.387260>,  <33.629398, 33.682461, 47.330425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993896, 33.527824, 47.387260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263207, -0.281233, 0.922838,
		-0.316794, -0.878328, -0.358023,
		0.911243, -0.386584, 0.142089,
		34.267269, 33.411850, 47.429886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567028, 32.937412, 47.476891>,  <33.629398, 33.682461, 47.330425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567028, 32.937412, 47.476891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920658, 33.053005, 47.623806>,  <34.132835, 33.122360, 47.711956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920658, 33.053005, 47.623806>,  <33.567028, 32.937412, 47.476891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920658, 33.053005, 47.623806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229030, -0.417160, 0.879501,
		0.407377, -0.861666, -0.302616,
		0.884075, 0.288980, 0.367289,
		34.185883, 33.139698, 47.733994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841957, 32.336540, 47.757656>,  <33.567028, 32.937412, 47.476891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841957, 32.336540, 47.757656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003445, 32.661385, 47.926178>,  <34.100338, 32.856289, 48.027290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003445, 32.661385, 47.926178>,  <33.841957, 32.336540, 47.757656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003445, 32.661385, 47.926178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016562, -0.466909, 0.884150,
		0.914735, -0.349966, -0.201948,
		0.403715, 0.812108, 0.421302,
		34.124557, 32.905018, 48.052570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727383, 31.542011, 47.757309>,  <33.841957, 32.336540, 47.757656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727383, 31.542011, 47.757309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364090, 31.398886, 47.670509>,  <33.146114, 31.313009, 47.618427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364090, 31.398886, 47.670509>,  <33.727383, 31.542011, 47.757309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364090, 31.398886, 47.670509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135885, 0.238287, -0.961642,
		0.395801, -0.902876, -0.167797,
		-0.908228, -0.357817, -0.217002,
		33.091621, 31.291540, 47.605408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864525, 31.175684, 47.162632>,  <33.727383, 31.542011, 47.757309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864525, 31.175684, 47.162632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472862, 31.256773, 47.157501>,  <33.237865, 31.305426, 47.154423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472862, 31.256773, 47.157501>,  <33.864525, 31.175684, 47.162632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472862, 31.256773, 47.157501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099686, 0.424529, -0.899910,
		-0.176986, -0.882428, -0.435887,
		-0.979152, 0.202723, -0.012830,
		33.179115, 31.317591, 47.153652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656143, 31.073673, 46.429188>,  <33.864525, 31.175684, 47.162632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656143, 31.073673, 46.429188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361275, 31.300816, 46.575676>,  <33.184353, 31.437101, 46.663570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.361275, 31.300816, 46.575676>,  <33.656143, 31.073673, 46.429188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361275, 31.300816, 46.575676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009046, 0.533643, -0.845662,
		-0.675646, -0.626710, -0.388249,
		-0.737171, 0.567856, 0.366223,
		33.140125, 31.471172, 46.685543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049896, 30.971535, 45.969334>,  <33.656143, 31.073673, 46.429188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049896, 30.971535, 45.969334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004578, 31.321465, 46.157734>,  <32.977386, 31.531424, 46.270775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004578, 31.321465, 46.157734>,  <33.049896, 30.971535, 45.969334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004578, 31.321465, 46.157734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050667, 0.468351, -0.882088,
		-0.992269, -0.123801, -0.008737,
		-0.113296, 0.874826, 0.471002,
		32.970589, 31.583912, 46.299034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591846, 31.260773, 45.521358>,  <33.049896, 30.971535, 45.969334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591846, 31.260773, 45.521358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743668, 31.551908, 45.749809>,  <32.834759, 31.726591, 45.886879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743668, 31.551908, 45.749809>,  <32.591846, 31.260773, 45.521358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743668, 31.551908, 45.749809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005384, 0.619052, -0.785332,
		-0.925156, 0.294996, 0.238879,
		0.379549, 0.727841, 0.571131,
		32.857533, 31.770260, 45.921150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143482, 31.766552, 45.430943>,  <32.591846, 31.260773, 45.521358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143482, 31.766552, 45.430943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483242, 31.927265, 45.567818>,  <32.687099, 32.023693, 45.649944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.483242, 31.927265, 45.567818>,  <32.143482, 31.766552, 45.430943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483242, 31.927265, 45.567818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071941, 0.554186, -0.829278,
		-0.522826, 0.729005, 0.441820,
		0.849398, 0.401783, 0.342188,
		32.738060, 32.047798, 45.670475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016472, 32.383503, 45.240524>,  <32.143482, 31.766552, 45.430943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016472, 32.383503, 45.240524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411556, 32.324192, 45.260323>,  <32.648605, 32.288605, 45.272202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411556, 32.324192, 45.260323>,  <32.016472, 32.383503, 45.240524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411556, 32.324192, 45.260323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106494, 0.406484, -0.907431,
		0.114435, 0.901545, 0.417277,
		0.987706, -0.148279, 0.049493,
		32.707867, 32.279709, 45.275169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.895260, 29.693113, 48.251526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.126556, 29.999489, 48.363937>,  <35.265335, 30.183315, 48.431385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.126556, 29.999489, 48.363937>,  <34.895260, 29.693113, 48.251526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126556, 29.999489, 48.363937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376510, 0.055064, -0.924775,
		-0.723796, 0.640550, -0.256544,
		0.578238, 0.765940, 0.281029,
		35.300026, 30.229271, 48.448246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826115, 30.206001, 47.756683>,  <34.895260, 29.693113, 48.251526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826115, 30.206001, 47.756683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182858, 30.272205, 47.925060>,  <35.396904, 30.311928, 48.026089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.182858, 30.272205, 47.925060>,  <34.826115, 30.206001, 47.756683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182858, 30.272205, 47.925060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402456, 0.134378, -0.905523,
		-0.206440, 0.977010, 0.053235,
		0.891858, 0.165512, 0.420945,
		35.450417, 30.321859, 48.051342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040939, 30.795671, 47.327122>,  <34.826115, 30.206001, 47.756683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040939, 30.795671, 47.327122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368507, 30.654543, 47.508179>,  <35.565048, 30.569866, 47.616814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.368507, 30.654543, 47.508179>,  <35.040939, 30.795671, 47.327122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368507, 30.654543, 47.508179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536161, 0.189048, -0.822674,
		0.204685, 0.916394, 0.343984,
		0.818923, -0.352820, 0.452639,
		35.614185, 30.548697, 47.643970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548870, 31.294390, 47.135349>,  <35.040939, 30.795671, 47.327122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548870, 31.294390, 47.135349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730885, 30.953478, 47.238544>,  <35.840096, 30.748930, 47.300461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730885, 30.953478, 47.238544>,  <35.548870, 31.294390, 47.135349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730885, 30.953478, 47.238544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378549, -0.077093, -0.922365,
		0.806003, 0.517372, 0.287550,
		0.455038, -0.852281, 0.257988,
		35.867397, 30.697794, 47.315941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224735, 31.364496, 46.762993>,  <35.548870, 31.294390, 47.135349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224735, 31.364496, 46.762993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.169785, 30.975624, 46.838879>,  <36.136814, 30.742300, 46.884411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.169785, 30.975624, 46.838879>,  <36.224735, 31.364496, 46.762993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169785, 30.975624, 46.838879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254502, -0.219745, -0.941775,
		0.957265, -0.081091, 0.277609,
		-0.137373, -0.972181, 0.189716,
		36.128574, 30.683969, 46.895794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823273, 30.958981, 46.569221>,  <36.224735, 31.364496, 46.762993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823273, 30.958981, 46.569221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514801, 30.704483, 46.560497>,  <36.329720, 30.551785, 46.555264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.514801, 30.704483, 46.560497>,  <36.823273, 30.958981, 46.569221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514801, 30.704483, 46.560497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251084, -0.272494, -0.928819,
		0.585015, -0.721760, 0.369893,
		-0.771178, -0.636246, -0.021809,
		36.283447, 30.513609, 46.553955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114223, 30.315372, 46.390862>,  <36.823273, 30.958981, 46.569221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114223, 30.315372, 46.390862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727638, 30.244156, 46.316845>,  <36.495686, 30.201426, 46.272434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727638, 30.244156, 46.316845>,  <37.114223, 30.315372, 46.390862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727638, 30.244156, 46.316845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253352, -0.543609, -0.800189,
		0.041875, -0.820238, 0.570487,
		-0.966467, -0.178042, -0.185045,
		36.437698, 30.190742, 46.261330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073593, 29.588860, 46.195747>,  <37.114223, 30.315372, 46.390862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073593, 29.588860, 46.195747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727104, 29.743008, 46.068535>,  <36.519211, 29.835497, 45.992207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.727104, 29.743008, 46.068535>,  <37.073593, 29.588860, 46.195747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727104, 29.743008, 46.068535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091854, -0.502841, -0.859484,
		-0.491135, -0.773721, 0.400177,
		-0.866227, 0.385365, -0.318032,
		36.467236, 29.858618, 45.973125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771935, 29.057346, 45.906670>,  <37.073593, 29.588860, 46.195747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771935, 29.057346, 45.906670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603401, 29.379210, 45.739338>,  <36.502281, 29.572329, 45.638939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603401, 29.379210, 45.739338>,  <36.771935, 29.057346, 45.906670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603401, 29.379210, 45.739338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251359, -0.339589, -0.906365,
		-0.871376, -0.487034, -0.059178,
		-0.421334, 0.804659, -0.418331,
		36.477001, 29.620607, 45.613838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334427, 28.794905, 45.402050>,  <36.771935, 29.057346, 45.906670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334427, 28.794905, 45.402050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386070, 29.171917, 45.278782>,  <36.417057, 29.398125, 45.204823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.386070, 29.171917, 45.278782>,  <36.334427, 28.794905, 45.402050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386070, 29.171917, 45.278782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158082, -0.326356, -0.931934,
		-0.978949, 0.071606, -0.191132,
		0.129109, 0.942531, -0.308167,
		36.424805, 29.454676, 45.186333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774876, 28.824738, 44.937096>,  <36.334427, 28.794905, 45.402050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774876, 28.824738, 44.937096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072136, 29.080999, 44.859852>,  <36.250492, 29.234756, 44.813507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.072136, 29.080999, 44.859852>,  <35.774876, 28.824738, 44.937096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072136, 29.080999, 44.859852> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016996, -0.306578, -0.951694,
		-0.668911, 0.703967, -0.238722,
		0.743148, 0.640656, -0.193109,
		36.295082, 29.273195, 44.801918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609665, 29.126740, 44.321026>,  <35.774876, 28.824738, 44.937096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609665, 29.126740, 44.321026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.003323, 29.191101, 44.350883>,  <36.239517, 29.229717, 44.368797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.003323, 29.191101, 44.350883>,  <35.609665, 29.126740, 44.321026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003323, 29.191101, 44.350883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081915, -0.039004, -0.995876,
		-0.157328, 0.986199, -0.051566,
		0.984143, 0.160904, 0.074648,
		36.298565, 29.239372, 44.373280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160763, 29.649698, 44.449661>,  <35.609665, 29.126740, 44.321026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160763, 29.649698, 44.449661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801083, 29.652582, 44.274673>,  <34.585274, 29.654312, 44.169682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.801083, 29.652582, 44.274673>,  <35.160763, 29.649698, 44.449661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801083, 29.652582, 44.274673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401769, -0.409523, 0.819068,
		-0.173249, 0.912271, 0.371141,
		-0.899203, 0.007210, -0.437472,
		34.531322, 29.654745, 44.143433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740158, 29.842243, 44.899097>,  <35.160763, 29.649698, 44.449661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740158, 29.842243, 44.899097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492840, 29.667765, 44.637581>,  <34.344448, 29.563078, 44.480671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492840, 29.667765, 44.637581>,  <34.740158, 29.842243, 44.899097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492840, 29.667765, 44.637581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489803, -0.436703, 0.754575,
		-0.614656, 0.786779, 0.056361,
		-0.618297, -0.436198, -0.653789,
		34.307350, 29.536905, 44.441444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044159, 30.112772, 45.128113>,  <34.740158, 29.842243, 44.899097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044159, 30.112772, 45.128113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.031834, 29.758785, 44.942261>,  <34.024441, 29.546392, 44.830750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.031834, 29.758785, 44.942261>,  <34.044159, 30.112772, 45.128113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031834, 29.758785, 44.942261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402495, -0.414514, 0.816196,
		-0.914904, 0.212160, -0.343423,
		-0.030811, -0.884967, -0.464634,
		34.022591, 29.493296, 44.802872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434326, 29.869217, 45.381363>,  <34.044159, 30.112772, 45.128113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434326, 29.869217, 45.381363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583775, 29.544456, 45.201931>,  <33.673443, 29.349600, 45.094273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.583775, 29.544456, 45.201931>,  <33.434326, 29.869217, 45.381363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583775, 29.544456, 45.201931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439548, -0.580824, 0.685157,
		-0.816826, -0.058816, -0.573877,
		0.373620, -0.811901, -0.448581,
		33.695862, 29.300886, 45.067356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900795, 29.335258, 45.425213>,  <33.434326, 29.869217, 45.381363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900795, 29.335258, 45.425213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.225536, 29.111458, 45.358456>,  <33.420380, 28.977177, 45.318401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.225536, 29.111458, 45.358456>,  <32.900795, 29.335258, 45.425213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225536, 29.111458, 45.358456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309441, -0.654718, 0.689631,
		-0.495119, -0.508234, -0.704667,
		0.811852, -0.559502, -0.166894,
		33.469093, 28.943607, 45.308388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725056, 28.548969, 45.273769>,  <32.900795, 29.335258, 45.425213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725056, 28.548969, 45.273769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098209, 28.593609, 45.410748>,  <33.322102, 28.620394, 45.492935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.098209, 28.593609, 45.410748>,  <32.725056, 28.548969, 45.273769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098209, 28.593609, 45.410748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180635, -0.677586, 0.712915,
		0.311596, -0.726927, -0.611952,
		0.932887, 0.111601, 0.342442,
		33.378075, 28.627089, 45.513481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017372, 27.885616, 45.484985>,  <32.725056, 28.548969, 45.273769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017372, 27.885616, 45.484985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.258694, 28.146473, 45.668610>,  <33.403488, 28.302986, 45.778782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.258694, 28.146473, 45.668610>,  <33.017372, 27.885616, 45.484985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258694, 28.146473, 45.668610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091145, -0.515460, 0.852052,
		0.792283, -0.555890, -0.251542,
		0.603307, 0.652140, 0.459057,
		33.439686, 28.342115, 45.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377068, 27.431396, 45.915680>,  <33.017372, 27.885616, 45.484985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377068, 27.431396, 45.915680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461838, 27.794365, 46.060829>,  <33.512699, 28.012146, 46.147919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461838, 27.794365, 46.060829>,  <33.377068, 27.431396, 45.915680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461838, 27.794365, 46.060829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123412, -0.343483, 0.931015,
		0.969463, -0.242084, 0.039196,
		0.211921, 0.907422, 0.362870,
		33.525414, 28.066591, 46.169689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923985, 27.396450, 46.400490>,  <33.377068, 27.431396, 45.915680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923985, 27.396450, 46.400490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719666, 27.727325, 46.494164>,  <33.597073, 27.925850, 46.550365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719666, 27.727325, 46.494164>,  <33.923985, 27.396450, 46.400490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719666, 27.727325, 46.494164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172081, -0.365265, 0.914860,
		0.842300, 0.427014, 0.328922,
		-0.510801, 0.827188, 0.234182,
		33.566425, 27.975483, 46.564419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207443, 27.549864, 46.953835>,  <33.923985, 27.396450, 46.400490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207443, 27.549864, 46.953835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843090, 27.714714, 46.962215>,  <33.624477, 27.813623, 46.967243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.843090, 27.714714, 46.962215>,  <34.207443, 27.549864, 46.953835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843090, 27.714714, 46.962215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086144, -0.239564, 0.967051,
		0.403567, 0.879068, 0.253717,
		-0.910886, 0.412126, 0.020954,
		33.569824, 27.838352, 46.968502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246647, 28.008011, 47.495972>,  <34.207443, 27.549864, 46.953835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246647, 28.008011, 47.495972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852688, 27.991764, 47.428646>,  <33.616314, 27.982016, 47.388252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.852688, 27.991764, 47.428646>,  <34.246647, 28.008011, 47.495972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852688, 27.991764, 47.428646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153394, -0.246176, 0.957010,
		-0.080304, 0.968374, 0.236227,
		-0.984897, -0.040616, -0.168311,
		33.557220, 27.979580, 47.378151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004143, 28.445679, 47.981281>,  <34.246647, 28.008011, 47.495972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004143, 28.445679, 47.981281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701332, 28.201866, 47.887150>,  <33.519646, 28.055578, 47.830669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.701332, 28.201866, 47.887150>,  <34.004143, 28.445679, 47.981281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701332, 28.201866, 47.887150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124165, -0.219407, 0.967700,
		-0.641477, 0.761796, 0.090415,
		-0.757028, -0.609530, -0.235333,
		33.474224, 28.019007, 47.816551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478573, 28.668089, 48.429272>,  <34.004143, 28.445679, 47.981281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478573, 28.668089, 48.429272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375950, 28.297722, 48.318378>,  <33.314377, 28.075502, 48.251842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375950, 28.297722, 48.318378>,  <33.478573, 28.668089, 48.429272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375950, 28.297722, 48.318378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008054, -0.284776, 0.958560,
		-0.966496, 0.248157, 0.065604,
		-0.256556, -0.925916, -0.277234,
		33.298985, 28.019947, 48.235207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089462, 28.361679, 48.973099>,  <33.478573, 28.668089, 48.429272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089462, 28.361679, 48.973099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202812, 28.050148, 48.749268>,  <33.270821, 27.863230, 48.614967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.202812, 28.050148, 48.749268>,  <33.089462, 28.361679, 48.973099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202812, 28.050148, 48.749268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063327, -0.597419, 0.799425,
		-0.956917, -0.191097, -0.218612,
		0.283371, -0.778827, -0.559579,
		33.287823, 27.816500, 48.581394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353046, 28.814390, 49.040184>,  <33.089462, 28.361679, 48.973099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353046, 28.814390, 49.040184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392109, 29.094131, 49.323414>,  <32.415546, 29.261976, 49.493351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.392109, 29.094131, 49.323414>,  <32.353046, 28.814390, 49.040184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392109, 29.094131, 49.323414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130380, 0.714331, -0.687555,
		-0.986643, -0.025178, 0.160938,
		0.097652, 0.699355, 0.708072,
		32.421406, 29.303938, 49.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879036, 29.317169, 48.849869>,  <32.353046, 28.814390, 49.040184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879036, 29.317169, 48.849869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.144791, 29.484507, 49.097603>,  <32.304245, 29.584909, 49.246243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.144791, 29.484507, 49.097603>,  <31.879036, 29.317169, 48.849869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144791, 29.484507, 49.097603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141962, 0.742944, -0.654126,
		-0.733781, 0.522516, 0.434215,
		0.664388, 0.418343, 0.619336,
		32.344109, 29.610010, 49.283405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641384, 29.989235, 49.035095>,  <31.879036, 29.317169, 48.849869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641384, 29.989235, 49.035095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035645, 30.009375, 49.099545>,  <32.272202, 30.021458, 49.138214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.035645, 30.009375, 49.099545>,  <31.641384, 29.989235, 49.035095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035645, 30.009375, 49.099545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078682, 0.707415, -0.702405,
		-0.149344, 0.705003, 0.693302,
		0.985650, 0.050350, 0.161119,
		32.331341, 30.024479, 49.147881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744520, 30.589230, 48.730698>,  <31.641384, 29.989235, 49.035095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744520, 30.589230, 48.730698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116585, 30.450216, 48.778061>,  <32.339825, 30.366808, 48.806480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.116585, 30.450216, 48.778061>,  <31.744520, 30.589230, 48.730698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116585, 30.450216, 48.778061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345048, 0.717234, -0.605407,
		0.125471, 0.603984, 0.787058,
		0.930161, -0.347533, 0.118411,
		32.395634, 30.345957, 48.813583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169079, 31.116720, 49.006721>,  <31.744520, 30.589230, 48.730698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169079, 31.116720, 49.006721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.432961, 30.868921, 48.836536>,  <32.591290, 30.720242, 48.734425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.432961, 30.868921, 48.836536>,  <32.169079, 31.116720, 49.006721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432961, 30.868921, 48.836536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255098, 0.717105, -0.648602,
		0.706909, 0.319348, 0.631107,
		0.659700, -0.619497, -0.425463,
		32.630871, 30.683071, 48.708897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678009, 31.579422, 48.800552>,  <32.169079, 31.116720, 49.006721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678009, 31.579422, 48.800552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.774300, 31.250010, 48.595089>,  <32.832073, 31.052362, 48.471809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.774300, 31.250010, 48.595089>,  <32.678009, 31.579422, 48.800552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774300, 31.250010, 48.595089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377476, 0.566995, -0.732139,
		0.894183, -0.017652, 0.447353,
		0.240723, -0.823532, -0.513661,
		32.846516, 31.002951, 48.440990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378189, 31.708742, 48.435963>,  <32.678009, 31.579422, 48.800552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378189, 31.708742, 48.435963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153664, 31.443975, 48.237251>,  <33.018948, 31.285114, 48.118027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.153664, 31.443975, 48.237251>,  <33.378189, 31.708742, 48.435963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153664, 31.443975, 48.237251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182571, 0.486434, -0.854430,
		0.807212, -0.570303, -0.152197,
		-0.561318, -0.661919, -0.496776,
		32.985268, 31.245399, 48.088219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052708, 32.064014, 48.374477>,  <33.378189, 31.708742, 48.435963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052708, 32.064014, 48.374477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095135, 32.454231, 48.451485>,  <34.120590, 32.688362, 48.497688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095135, 32.454231, 48.451485>,  <34.052708, 32.064014, 48.374477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095135, 32.454231, 48.451485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099930, -0.203089, 0.974048,
		0.989325, -0.084077, -0.119027,
		0.106068, 0.975544, 0.192519,
		34.126957, 32.746895, 48.509239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682220, 32.156944, 48.731728>,  <34.052708, 32.064014, 48.374477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682220, 32.156944, 48.731728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459110, 32.475307, 48.825893>,  <34.325245, 32.666325, 48.882393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459110, 32.475307, 48.825893>,  <34.682220, 32.156944, 48.731728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459110, 32.475307, 48.825893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103297, -0.214857, 0.971168,
		0.823538, 0.566012, 0.037627,
		-0.557777, 0.795906, 0.235410,
		34.291779, 32.714081, 48.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017235, 32.377403, 49.317654>,  <34.682220, 32.156944, 48.731728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017235, 32.377403, 49.317654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638779, 32.505260, 49.338238>,  <34.411705, 32.581974, 49.350590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638779, 32.505260, 49.338238>,  <35.017235, 32.377403, 49.317654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638779, 32.505260, 49.338238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031254, -0.248386, 0.968157,
		0.322243, 0.914404, 0.244998,
		-0.946141, 0.319639, 0.051461,
		34.354935, 32.601151, 49.353676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959671, 32.855961, 49.931953>,  <35.017235, 32.377403, 49.317654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959671, 32.855961, 49.931953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595451, 32.707447, 49.859238>,  <34.376919, 32.618340, 49.815609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.595451, 32.707447, 49.859238>,  <34.959671, 32.855961, 49.931953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595451, 32.707447, 49.859238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064998, -0.305695, 0.949908,
		-0.408255, 0.876756, 0.254218,
		-0.910551, -0.371281, -0.181788,
		34.322285, 32.596062, 49.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646732, 32.966625, 50.551308>,  <34.959671, 32.855961, 49.931953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646732, 32.966625, 50.551308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366646, 32.739719, 50.377914>,  <34.198593, 32.603577, 50.273876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.366646, 32.739719, 50.377914>,  <34.646732, 32.966625, 50.551308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366646, 32.739719, 50.377914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302555, -0.314183, 0.899861,
		-0.646655, 0.761248, 0.048366,
		-0.700213, -0.567266, -0.433487,
		34.156582, 32.569538, 50.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955540, 33.157272, 50.740349>,  <34.646732, 32.966625, 50.551308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955540, 33.157272, 50.740349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934052, 32.770233, 50.641666>,  <33.921158, 32.538010, 50.582458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934052, 32.770233, 50.641666>,  <33.955540, 33.157272, 50.740349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934052, 32.770233, 50.641666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194928, -0.232147, 0.952948,
		-0.979345, 0.099283, -0.176141,
		-0.053721, -0.967600, -0.246706,
		33.917934, 32.479954, 50.567654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266155, 32.850708, 50.962566>,  <33.955540, 33.157272, 50.740349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266155, 32.850708, 50.962566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558319, 32.578129, 50.944073>,  <33.733616, 32.414581, 50.932976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558319, 32.578129, 50.944073>,  <33.266155, 32.850708, 50.962566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558319, 32.578129, 50.944073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189890, -0.267629, 0.944625,
		-0.656087, -0.681179, -0.324878,
		0.730405, -0.681447, -0.046238,
		33.777439, 32.373695, 50.930202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984367, 32.301853, 51.343063>,  <33.266155, 32.850708, 50.962566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984367, 32.301853, 51.343063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.361813, 32.170391, 51.327118>,  <33.588280, 32.091515, 51.317551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.361813, 32.170391, 51.327118>,  <32.984367, 32.301853, 51.343063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361813, 32.170391, 51.327118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159668, -0.557260, 0.814842,
		-0.290014, -0.762528, -0.578311,
		0.943609, -0.328653, -0.039862,
		33.644894, 32.071796, 51.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970665, 31.558868, 51.574837>,  <32.984367, 32.301853, 51.343063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970665, 31.558868, 51.574837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348316, 31.680458, 51.625782>,  <33.574905, 31.753412, 51.656349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.348316, 31.680458, 51.625782>,  <32.970665, 31.558868, 51.574837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348316, 31.680458, 51.625782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055263, -0.526986, 0.848076,
		0.324912, -0.793654, -0.514341,
		0.944128, 0.303974, 0.127364,
		33.631554, 31.771650, 51.663990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.101860, 36.055420, 35.973568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440636, 35.906586, 36.125484>,  <37.643902, 35.817284, 36.216633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440636, 35.906586, 36.125484>,  <37.101860, 36.055420, 35.973568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440636, 35.906586, 36.125484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317472, 0.219089, 0.922611,
		-0.426501, -0.901970, 0.067428,
		0.846941, -0.372089, 0.379792,
		37.694717, 35.794960, 36.239422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892216, 35.522881, 36.444302>,  <37.101860, 36.055420, 35.973568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892216, 35.522881, 36.444302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254776, 35.655819, 36.548592>,  <37.472313, 35.735584, 36.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254776, 35.655819, 36.548592>,  <36.892216, 35.522881, 36.444302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254776, 35.655819, 36.548592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305314, 0.088902, 0.948093,
		0.291921, -0.938956, 0.182052,
		0.906402, 0.332351, 0.260724,
		37.526695, 35.755524, 36.626808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077007, 35.083035, 36.910824>,  <36.892216, 35.522881, 36.444302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077007, 35.083035, 36.910824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324123, 35.384094, 37.001907>,  <37.472393, 35.564732, 37.056557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324123, 35.384094, 37.001907>,  <37.077007, 35.083035, 36.910824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324123, 35.384094, 37.001907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235686, -0.099035, 0.966770,
		0.750189, -0.650932, 0.116205,
		0.617793, 0.752648, 0.227711,
		37.509460, 35.609890, 37.070221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452885, 34.854809, 37.500767>,  <37.077007, 35.083035, 36.910824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452885, 34.854809, 37.500767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512329, 35.250366, 37.501583>,  <37.547997, 35.487701, 37.502071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512329, 35.250366, 37.501583>,  <37.452885, 34.854809, 37.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512329, 35.250366, 37.501583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088966, 0.011316, 0.995971,
		0.984885, -0.148197, 0.089660,
		0.148614, 0.988893, 0.002039,
		37.556915, 35.547035, 37.502193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782936, 34.964680, 38.100014>,  <37.452885, 34.854809, 37.500767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782936, 34.964680, 38.100014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629154, 35.328178, 38.035061>,  <37.536884, 35.546280, 37.996090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629154, 35.328178, 38.035061>,  <37.782936, 34.964680, 38.100014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629154, 35.328178, 38.035061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247048, 0.068207, 0.966600,
		0.889472, 0.411732, 0.198282,
		-0.384456, 0.908749, -0.162386,
		37.513817, 35.600803, 37.986343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988621, 35.409019, 38.555740>,  <37.782936, 34.964680, 38.100014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988621, 35.409019, 38.555740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695606, 35.654404, 38.437714>,  <37.519798, 35.801636, 38.366898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695606, 35.654404, 38.437714>,  <37.988621, 35.409019, 38.555740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695606, 35.654404, 38.437714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281140, 0.122121, 0.951865,
		0.619966, 0.780225, 0.083011,
		-0.732532, 0.613461, -0.295064,
		37.475845, 35.838444, 38.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065933, 36.006657, 38.931812>,  <37.988621, 35.409019, 38.555740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065933, 36.006657, 38.931812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687580, 35.981346, 38.804504>,  <37.460567, 35.966160, 38.728119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.687580, 35.981346, 38.804504>,  <38.065933, 36.006657, 38.931812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687580, 35.981346, 38.804504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324053, 0.235766, 0.916190,
		0.017065, 0.969748, -0.243512,
		-0.945885, -0.063276, -0.318273,
		37.403816, 35.962364, 38.709023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773720, 36.561954, 39.414852>,  <38.065933, 36.006657, 38.931812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773720, 36.561954, 39.414852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480080, 36.342865, 39.254307>,  <37.303894, 36.211411, 39.157978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480080, 36.342865, 39.254307>,  <37.773720, 36.561954, 39.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480080, 36.342865, 39.254307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402499, -0.125061, 0.906838,
		-0.546891, 0.827260, -0.128650,
		-0.734101, -0.547723, -0.401366,
		37.259850, 36.178547, 39.133896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106007, 36.831192, 39.728230>,  <37.773720, 36.561954, 39.414852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106007, 36.831192, 39.728230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036892, 36.462990, 39.588047>,  <36.995422, 36.242069, 39.503937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036892, 36.462990, 39.588047>,  <37.106007, 36.831192, 39.728230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036892, 36.462990, 39.588047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383448, -0.264877, 0.884764,
		-0.907256, 0.287257, -0.307198,
		-0.172785, -0.920502, -0.350459,
		36.985058, 36.186840, 39.482910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378113, 36.701530, 39.845928>,  <37.106007, 36.831192, 39.728230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378113, 36.701530, 39.845928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562103, 36.348602, 39.806068>,  <36.672497, 36.136845, 39.782150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562103, 36.348602, 39.806068>,  <36.378113, 36.701530, 39.845928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562103, 36.348602, 39.806068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390025, -0.301594, 0.870013,
		-0.797684, -0.361321, -0.482853,
		0.459979, -0.882320, -0.099653,
		36.700096, 36.083908, 39.776173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942554, 36.209496, 40.117069>,  <36.378113, 36.701530, 39.845928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942554, 36.209496, 40.117069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269238, 35.979141, 40.131699>,  <36.465248, 35.840927, 40.140476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269238, 35.979141, 40.131699>,  <35.942554, 36.209496, 40.117069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269238, 35.979141, 40.131699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235258, -0.274419, 0.932388,
		-0.526912, -0.770097, -0.359603,
		0.816711, -0.575886, 0.036577,
		36.514252, 35.806374, 40.142673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675003, 35.571381, 40.413254>,  <35.942554, 36.209496, 40.117069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675003, 35.571381, 40.413254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067745, 35.602230, 40.482548>,  <36.303391, 35.620739, 40.524124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067745, 35.602230, 40.482548>,  <35.675003, 35.571381, 40.413254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067745, 35.602230, 40.482548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145510, -0.279387, 0.949089,
		0.121594, -0.957076, -0.263096,
		0.981856, 0.077120, 0.173236,
		36.362301, 35.625366, 40.534519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204144, 35.185085, 39.925266>,  <35.675003, 35.571381, 40.413254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204144, 35.185085, 39.925266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854832, 35.002338, 39.992977>,  <34.645245, 34.892689, 40.033604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854832, 35.002338, 39.992977>,  <35.204144, 35.185085, 39.925266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854832, 35.002338, 39.992977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388883, 0.444297, -0.807075,
		0.293519, -0.770630, -0.565664,
		-0.873280, -0.456869, 0.169276,
		34.592850, 34.865276, 40.043758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052181, 34.816959, 39.288052>,  <35.204144, 35.185085, 39.925266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052181, 34.816959, 39.288052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723877, 34.867840, 39.510826>,  <34.526894, 34.898369, 39.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723877, 34.867840, 39.510826>,  <35.052181, 34.816959, 39.288052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723877, 34.867840, 39.510826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522202, 0.228273, -0.821703,
		-0.231656, -0.965252, -0.120932,
		-0.820756, 0.127201, 0.556937,
		34.477650, 34.905998, 39.677906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489449, 34.482845, 38.926174>,  <35.052181, 34.816959, 39.288052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489449, 34.482845, 38.926174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328861, 34.757847, 39.168221>,  <34.232510, 34.922848, 39.313450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328861, 34.757847, 39.168221>,  <34.489449, 34.482845, 38.926174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328861, 34.757847, 39.168221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519544, 0.373153, -0.768655,
		-0.754251, -0.622977, 0.207376,
		-0.401471, 0.687500, 0.605115,
		34.208420, 34.964096, 39.349754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827778, 34.603565, 38.690643>,  <34.489449, 34.482845, 38.926174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827778, 34.603565, 38.690643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894848, 34.936646, 38.901733>,  <33.935089, 35.136494, 39.028385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894848, 34.936646, 38.901733>,  <33.827778, 34.603565, 38.690643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894848, 34.936646, 38.901733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328815, 0.551886, -0.766357,
		-0.929390, -0.045025, 0.366342,
		0.167674, 0.832703, 0.527722,
		33.945148, 35.186455, 39.060051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127804, 34.969276, 38.680546>,  <33.827778, 34.603565, 38.690643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127804, 34.969276, 38.680546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413002, 35.228054, 38.788689>,  <33.584122, 35.383320, 38.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413002, 35.228054, 38.788689>,  <33.127804, 34.969276, 38.680546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413002, 35.228054, 38.788689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344954, 0.659341, -0.668039,
		-0.610441, 0.383053, 0.693277,
		0.713000, 0.646947, 0.270353,
		33.626904, 35.422138, 38.869793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834583, 35.563660, 38.736698>,  <33.127804, 34.969276, 38.680546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834583, 35.563660, 38.736698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213322, 35.678188, 38.678051>,  <33.440567, 35.746906, 38.642864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213322, 35.678188, 38.678051>,  <32.834583, 35.563660, 38.736698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213322, 35.678188, 38.678051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301733, 0.632522, -0.713354,
		-0.111514, 0.719677, 0.685296,
		0.946848, 0.286325, -0.146615,
		33.497375, 35.764088, 38.634068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826336, 36.252331, 38.691822>,  <32.834583, 35.563660, 38.736698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826336, 36.252331, 38.691822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149414, 36.102543, 38.509659>,  <33.343262, 36.012669, 38.400360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149414, 36.102543, 38.509659>,  <32.826336, 36.252331, 38.691822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149414, 36.102543, 38.509659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238287, 0.499192, -0.833083,
		0.539301, 0.781397, 0.313965,
		0.807697, -0.374468, -0.455411,
		33.391724, 35.990204, 38.373035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046074, 36.863949, 38.343575>,  <32.826336, 36.252331, 38.691822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046074, 36.863949, 38.343575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236252, 36.554230, 38.176525>,  <33.350361, 36.368397, 38.076294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236252, 36.554230, 38.176525>,  <33.046074, 36.863949, 38.343575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236252, 36.554230, 38.176525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116037, 0.415367, -0.902223,
		0.872058, 0.477419, 0.107638,
		0.475447, -0.774301, -0.417623,
		33.378887, 36.321941, 38.051239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554482, 37.184639, 37.917629>,  <33.046074, 36.863949, 38.343575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554482, 37.184639, 37.917629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501019, 36.811253, 37.784496>,  <33.468941, 36.587219, 37.704617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501019, 36.811253, 37.784496>,  <33.554482, 37.184639, 37.917629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501019, 36.811253, 37.784496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172362, 0.352624, -0.919754,
		0.975924, -0.065562, -0.208024,
		-0.133655, -0.933466, -0.332834,
		33.460922, 36.531212, 37.684647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820499, 37.203106, 37.240829>,  <33.554482, 37.184639, 37.917629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820499, 37.203106, 37.240829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594444, 36.873108, 37.240849>,  <33.458813, 36.675110, 37.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594444, 36.873108, 37.240849>,  <33.820499, 37.203106, 37.240829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594444, 36.873108, 37.240849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255342, 0.174854, -0.950908,
		0.784490, -0.537403, -0.309473,
		-0.565133, -0.825000, 0.000050,
		33.424904, 36.625607, 37.240864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012207, 36.837723, 36.691071>,  <33.820499, 37.203106, 37.240829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012207, 36.837723, 36.691071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652054, 36.686447, 36.777130>,  <33.435963, 36.595680, 36.828766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652054, 36.686447, 36.777130>,  <34.012207, 36.837723, 36.691071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652054, 36.686447, 36.777130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322434, 0.247926, -0.913547,
		0.292162, -0.891907, -0.345171,
		-0.900377, -0.378198, 0.215147,
		33.381939, 36.572990, 36.841675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818005, 36.668522, 36.012981>,  <34.012207, 36.837723, 36.691071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818005, 36.668522, 36.012981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484104, 36.625706, 36.229034>,  <33.283764, 36.600018, 36.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484104, 36.625706, 36.229034>,  <33.818005, 36.668522, 36.012981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484104, 36.625706, 36.229034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539960, -0.033072, -0.841041,
		0.107889, -0.993704, -0.030191,
		-0.834748, -0.107041, 0.540128,
		33.233681, 36.593594, 36.391071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439854, 35.983353, 35.862873>,  <33.818005, 36.668522, 36.012981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439854, 35.983353, 35.862873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161972, 36.242435, 35.988010>,  <32.995243, 36.397884, 36.063091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161972, 36.242435, 35.988010>,  <33.439854, 35.983353, 35.862873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161972, 36.242435, 35.988010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556846, -0.208966, -0.803900,
		-0.455321, -0.732671, 0.505842,
		-0.694698, 0.647709, 0.312838,
		32.953564, 36.436749, 36.081863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899204, 35.632565, 35.651360>,  <33.439854, 35.983353, 35.862873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899204, 35.632565, 35.651360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784233, 36.009163, 35.721752>,  <32.715248, 36.235123, 35.763988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784233, 36.009163, 35.721752>,  <32.899204, 35.632565, 35.651360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784233, 36.009163, 35.721752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362097, 0.063289, -0.929989,
		-0.886718, -0.331032, 0.322721,
		-0.287431, 0.941495, 0.175986,
		32.698002, 36.291611, 35.774548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233639, 35.556255, 34.947151>,  <32.899204, 35.632565, 35.651360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233639, 35.556255, 34.947151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537270, 35.667679, 35.182507>,  <33.719448, 35.734531, 35.323719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537270, 35.667679, 35.182507>,  <33.233639, 35.556255, 34.947151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537270, 35.667679, 35.182507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043393, -0.880167, 0.472676,
		0.649550, -0.384331, -0.656029,
		0.759080, 0.278560, 0.588390,
		33.764992, 35.751247, 35.359024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734985, 34.999966, 34.950649>,  <33.233639, 35.556255, 34.947151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734985, 34.999966, 34.950649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743359, 35.218166, 35.285789>,  <33.748383, 35.349087, 35.486874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743359, 35.218166, 35.285789>,  <33.734985, 34.999966, 34.950649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743359, 35.218166, 35.285789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068987, -0.835248, 0.545528,
		0.997398, -0.069220, 0.020148,
		0.020933, 0.545499, 0.837850,
		33.749638, 35.381817, 35.537144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246078, 34.843063, 35.419521>,  <33.734985, 34.999966, 34.950649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246078, 34.843063, 35.419521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382469, 34.834202, 35.043598>,  <34.464302, 34.828884, 34.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382469, 34.834202, 35.043598>,  <34.246078, 34.843063, 35.419521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382469, 34.834202, 35.043598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644483, -0.722298, 0.250855,
		-0.684381, -0.691227, -0.232009,
		0.340977, -0.022155, -0.939811,
		34.484760, 34.827557, 34.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646461, 34.238216, 35.216103>,  <34.246078, 34.843063, 35.419521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646461, 34.238216, 35.216103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041977, 34.213161, 35.270309>,  <35.279285, 34.198128, 35.302834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041977, 34.213161, 35.270309>,  <34.646461, 34.238216, 35.216103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041977, 34.213161, 35.270309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149038, -0.467063, 0.871573,
		0.008698, -0.882002, -0.471165,
		0.988793, -0.062641, 0.135514,
		35.338615, 34.194370, 35.310963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878368, 33.538376, 35.285095>,  <34.646461, 34.238216, 35.216103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878368, 33.538376, 35.285095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088623, 33.804089, 35.497673>,  <35.214775, 33.963516, 35.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088623, 33.804089, 35.497673>,  <34.878368, 33.538376, 35.285095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088623, 33.804089, 35.497673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269571, -0.462449, 0.844673,
		0.806866, -0.587256, -0.064010,
		0.525641, 0.664283, 0.531442,
		35.246315, 34.003372, 35.657104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399471, 33.233616, 35.759739>,  <34.878368, 33.538376, 35.285095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399471, 33.233616, 35.759739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304817, 33.593651, 35.906075>,  <35.248024, 33.809673, 35.993877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304817, 33.593651, 35.906075>,  <35.399471, 33.233616, 35.759739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304817, 33.593651, 35.906075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211687, -0.415252, 0.884734,
		0.948257, 0.131916, 0.288801,
		-0.236636, 0.900091, 0.365841,
		35.233826, 33.863678, 36.015827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765453, 33.374092, 36.432186>,  <35.399471, 33.233616, 35.759739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765453, 33.374092, 36.432186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435802, 33.600655, 36.431641>,  <35.238010, 33.736591, 36.431313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435802, 33.600655, 36.431641>,  <35.765453, 33.374092, 36.432186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435802, 33.600655, 36.431641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242119, -0.350108, 0.904877,
		0.512050, 0.746063, 0.425670,
		-0.824126, 0.566405, -0.001364,
		35.188564, 33.770576, 36.431232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868206, 33.656898, 37.096104>,  <35.765453, 33.374092, 36.432186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868206, 33.656898, 37.096104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482540, 33.677471, 36.991989>,  <35.251141, 33.689816, 36.929520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482540, 33.677471, 36.991989>,  <35.868206, 33.656898, 37.096104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482540, 33.677471, 36.991989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263778, -0.080137, 0.961249,
		0.028575, 0.995457, 0.090830,
		-0.964160, 0.051427, -0.260289,
		35.193291, 33.692898, 36.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598354, 34.008148, 37.667953>,  <35.868206, 33.656898, 37.096104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598354, 34.008148, 37.667953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300449, 33.827503, 37.471436>,  <35.121708, 33.719116, 37.353523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300449, 33.827503, 37.471436>,  <35.598354, 34.008148, 37.667953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300449, 33.827503, 37.471436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193307, -0.558645, 0.806566,
		-0.638717, 0.695671, 0.328758,
		-0.744763, -0.451617, -0.491294,
		35.077019, 33.692017, 37.324047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109459, 33.968082, 38.181137>,  <35.598354, 34.008148, 37.667953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109459, 33.968082, 38.181137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939201, 33.746582, 37.894867>,  <34.837048, 33.613682, 37.723106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939201, 33.746582, 37.894867>,  <35.109459, 33.968082, 38.181137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939201, 33.746582, 37.894867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549967, -0.469752, 0.690557,
		-0.718587, 0.687526, -0.104600,
		-0.425640, -0.553752, -0.715674,
		34.811508, 33.580456, 37.680164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395771, 33.898067, 38.182751>,  <35.109459, 33.968082, 38.181137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395771, 33.898067, 38.182751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537891, 33.567593, 38.007854>,  <34.623161, 33.369308, 37.902916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537891, 33.567593, 38.007854>,  <34.395771, 33.898067, 38.182751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537891, 33.567593, 38.007854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361110, -0.552763, 0.751035,
		-0.862185, -0.108949, -0.494739,
		0.355298, -0.826186, -0.437241,
		34.644482, 33.319736, 37.876682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967781, 33.368778, 38.445934>,  <34.395771, 33.898067, 38.182751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967781, 33.368778, 38.445934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250465, 33.143353, 38.274845>,  <34.420078, 33.008099, 38.172192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250465, 33.143353, 38.274845>,  <33.967781, 33.368778, 38.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250465, 33.143353, 38.274845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037695, -0.633693, 0.772666,
		-0.706495, -0.529930, -0.469083,
		0.706713, -0.563567, -0.427725,
		34.462479, 32.974281, 38.146526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828793, 32.691929, 38.607464>,  <33.967781, 33.368778, 38.445934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828793, 32.691929, 38.607464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212669, 32.655788, 38.501015>,  <34.442997, 32.634102, 38.437145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212669, 32.655788, 38.501015>,  <33.828793, 32.691929, 38.607464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212669, 32.655788, 38.501015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143902, -0.655384, 0.741460,
		-0.241407, -0.749871, -0.615967,
		0.959695, -0.090355, -0.266122,
		34.500580, 32.628681, 38.421177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912270, 32.014339, 38.536144>,  <33.828793, 32.691929, 38.607464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912270, 32.014339, 38.536144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276432, 32.171291, 38.588604>,  <34.494930, 32.265461, 38.620079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276432, 32.171291, 38.588604>,  <33.912270, 32.014339, 38.536144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276432, 32.171291, 38.588604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141757, -0.593663, 0.792129,
		0.388674, -0.702568, -0.596097,
		0.910405, 0.392381, 0.131147,
		34.549553, 32.289005, 38.627949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448818, 31.461508, 38.408226>,  <33.912270, 32.014339, 38.536144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448818, 31.461508, 38.408226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580082, 31.752113, 38.649719>,  <34.658840, 31.926477, 38.794617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580082, 31.752113, 38.649719>,  <34.448818, 31.461508, 38.408226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580082, 31.752113, 38.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203276, -0.678462, 0.705952,
		0.922493, -0.108938, -0.370323,
		0.328155, 0.726514, 0.603732,
		34.678528, 31.970068, 38.830837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034496, 31.184776, 38.746212>,  <34.448818, 31.461508, 38.408226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034496, 31.184776, 38.746212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912071, 31.476954, 38.990433>,  <34.838615, 31.652260, 39.136967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912071, 31.476954, 38.990433>,  <35.034496, 31.184776, 38.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912071, 31.476954, 38.990433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024375, -0.635109, 0.772038,
		0.951700, 0.251174, 0.176578,
		-0.306062, 0.730444, 0.610555,
		34.820251, 31.696087, 39.173599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477486, 31.153419, 39.327362>,  <35.034496, 31.184776, 38.746212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477486, 31.153419, 39.327362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168236, 31.379562, 39.442360>,  <34.982685, 31.515247, 39.511356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168236, 31.379562, 39.442360>,  <35.477486, 31.153419, 39.327362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168236, 31.379562, 39.442360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086591, -0.543112, 0.835183,
		0.628316, 0.620806, 0.468848,
		-0.773124, 0.565357, 0.287490,
		34.936298, 31.549170, 39.528606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681126, 31.294207, 40.046272>,  <35.477486, 31.153419, 39.327362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681126, 31.294207, 40.046272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287231, 31.361092, 40.026966>,  <35.050896, 31.401222, 40.015381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287231, 31.361092, 40.026966>,  <35.681126, 31.294207, 40.046272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287231, 31.361092, 40.026966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119579, -0.448544, 0.885725,
		0.126453, 0.877980, 0.461694,
		-0.984739, 0.167212, -0.048268,
		34.991810, 31.411255, 40.012486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568871, 31.727686, 40.576088>,  <35.681126, 31.294207, 40.046272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568871, 31.727686, 40.576088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208611, 31.568548, 40.506176>,  <34.992455, 31.473066, 40.464230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208611, 31.568548, 40.506176>,  <35.568871, 31.727686, 40.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208611, 31.568548, 40.506176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102989, -0.195320, 0.975317,
		-0.422161, 0.896421, 0.134942,
		-0.900652, -0.397843, -0.174778,
		34.938416, 31.449196, 40.453743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173779, 31.994019, 41.073994>,  <35.568871, 31.727686, 40.576088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173779, 31.994019, 41.073994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991215, 31.659067, 40.953667>,  <34.881676, 31.458096, 40.881470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991215, 31.659067, 40.953667>,  <35.173779, 31.994019, 41.073994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991215, 31.659067, 40.953667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147147, -0.262389, 0.953677,
		-0.877519, 0.479530, -0.003462,
		-0.456409, -0.837379, -0.300813,
		34.854294, 31.407854, 40.863422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781036, 31.943932, 41.559113>,  <35.173779, 31.994019, 41.073994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781036, 31.943932, 41.559113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778713, 31.579222, 41.394855>,  <34.777317, 31.360395, 41.296299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778713, 31.579222, 41.394855>,  <34.781036, 31.943932, 41.559113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778713, 31.579222, 41.394855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118323, -0.407140, 0.905669,
		-0.992958, 0.053852, -0.105518,
		-0.005812, -0.911776, -0.410645,
		34.776970, 31.305689, 41.271664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122784, 31.646685, 41.718494>,  <34.781036, 31.943932, 41.559113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122784, 31.646685, 41.718494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378185, 31.345804, 41.653374>,  <34.531425, 31.165276, 41.614300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378185, 31.345804, 41.653374>,  <34.122784, 31.646685, 41.718494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378185, 31.345804, 41.653374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208578, -0.372749, 0.904187,
		-0.740818, -0.543367, -0.394894,
		0.638502, -0.752204, -0.162805,
		34.569736, 31.120144, 41.604534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772480, 31.154833, 41.976746>,  <34.122784, 31.646685, 41.718494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772480, 31.154833, 41.976746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122612, 30.965473, 41.937363>,  <34.332691, 30.851858, 41.913734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122612, 30.965473, 41.937363>,  <33.772480, 31.154833, 41.976746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122612, 30.965473, 41.937363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158190, -0.472784, 0.866863,
		-0.456909, -0.743221, -0.488730,
		0.875334, -0.473389, -0.098449,
		34.385212, 30.823454, 41.907825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722759, 30.411844, 42.017048>,  <33.772480, 31.154833, 41.976746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722759, 30.411844, 42.017048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101418, 30.491579, 42.118336>,  <34.328613, 30.539419, 42.179108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101418, 30.491579, 42.118336>,  <33.722759, 30.411844, 42.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101418, 30.491579, 42.118336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126296, -0.493422, 0.860572,
		0.296490, -0.846640, -0.441921,
		0.946649, 0.199338, 0.253222,
		34.385410, 30.551380, 42.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012333, 29.755539, 42.280689>,  <33.722759, 30.411844, 42.017048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012333, 29.755539, 42.280689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267670, 30.027233, 42.425552>,  <34.420872, 30.190248, 42.512470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267670, 30.027233, 42.425552>,  <34.012333, 29.755539, 42.280689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267670, 30.027233, 42.425552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038377, -0.497981, 0.866338,
		0.768793, -0.539124, -0.343951,
		0.638345, 0.679234, 0.362155,
		34.459175, 30.231003, 42.534199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617584, 29.334890, 42.495049>,  <34.012333, 29.755539, 42.280689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617584, 29.334890, 42.495049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608971, 29.680920, 42.695522>,  <34.603802, 29.888538, 42.815807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608971, 29.680920, 42.695522>,  <34.617584, 29.334890, 42.495049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608971, 29.680920, 42.695522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085954, -0.497838, 0.863000,
		0.996066, 0.061664, -0.063636,
		-0.021535, 0.865075, 0.501180,
		34.602509, 29.940443, 42.845875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043594, 29.200745, 43.046886>,  <34.617584, 29.334890, 42.495049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043594, 29.200745, 43.046886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817917, 29.513472, 43.153049>,  <34.682510, 29.701109, 43.216747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817917, 29.513472, 43.153049>,  <35.043594, 29.200745, 43.046886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817917, 29.513472, 43.153049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102156, -0.385092, 0.917207,
		0.819297, 0.490371, 0.297134,
		-0.564195, 0.781819, 0.265411,
		34.648659, 29.748018, 43.232674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250706, 29.337557, 43.730515>,  <35.043594, 29.200745, 43.046886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250706, 29.337557, 43.730515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908829, 29.545137, 43.724964>,  <34.703705, 29.669685, 43.721634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908829, 29.545137, 43.724964>,  <35.250706, 29.337557, 43.730515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908829, 29.545137, 43.724964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266292, -0.415311, 0.869831,
		0.445639, 0.747130, 0.493156,
		-0.854690, 0.518954, -0.013876,
		34.652420, 29.700823, 43.720802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919971, 29.713051, 43.524208>,  <35.250706, 29.337557, 43.730515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919971, 29.713051, 43.524208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247776, 29.561552, 43.696228>,  <36.444458, 29.470652, 43.799442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247776, 29.561552, 43.696228>,  <35.919971, 29.713051, 43.524208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247776, 29.561552, 43.696228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373419, -0.216306, -0.902092,
		0.434689, 0.899867, -0.035834,
		0.819514, -0.378749, 0.430053,
		36.493629, 29.447927, 43.825245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423584, 29.980633, 43.225937>,  <35.919971, 29.713051, 43.524208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423584, 29.980633, 43.225937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601295, 29.654510, 43.374474>,  <36.707920, 29.458838, 43.463596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601295, 29.654510, 43.374474>,  <36.423584, 29.980633, 43.225937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601295, 29.654510, 43.374474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265970, -0.275775, -0.923693,
		0.855500, 0.509139, 0.094328,
		0.444275, -0.815307, 0.371341,
		36.734577, 29.409918, 43.485874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143307, 30.007088, 42.940678>,  <36.423584, 29.980633, 43.225937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143307, 30.007088, 42.940678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 29.633461, 43.047028>,  <36.990742, 29.409285, 43.110840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047955, 29.633461, 43.047028>,  <37.143307, 30.007088, 42.940678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047955, 29.633461, 43.047028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371766, -0.340684, -0.863554,
		0.897197, -0.107014, 0.428468,
		-0.238385, -0.934068, 0.265876,
		36.976440, 29.353241, 43.126789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659103, 29.612543, 42.745686>,  <37.143307, 30.007088, 42.940678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659103, 29.612543, 42.745686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388783, 29.319822, 42.780930>,  <37.226593, 29.144190, 42.802078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388783, 29.319822, 42.780930>,  <37.659103, 29.612543, 42.745686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388783, 29.319822, 42.780930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179412, -0.279260, -0.943305,
		0.714919, -0.621675, 0.320017,
		-0.675797, -0.731802, 0.088112,
		37.186043, 29.100283, 42.807362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937637, 29.001257, 42.457081>,  <37.659103, 29.612543, 42.745686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937637, 29.001257, 42.457081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540146, 28.957100, 42.464130>,  <37.301651, 28.930607, 42.468361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540146, 28.957100, 42.464130>,  <37.937637, 29.001257, 42.457081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540146, 28.957100, 42.464130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006829, -0.217271, -0.976087,
		0.111579, -0.969849, 0.216663,
		-0.993732, -0.110391, 0.017620,
		37.242027, 28.923983, 42.469418>
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
