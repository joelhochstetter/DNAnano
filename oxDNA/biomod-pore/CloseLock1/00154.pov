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
	<24.231798, 35.282215, 35.448624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268629, 35.039474, 35.132839>,  <24.290728, 34.893829, 34.943367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268629, 35.039474, 35.132839>,  <24.231798, 35.282215, 35.448624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268629, 35.039474, 35.132839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738995, 0.573030, -0.354293,
		0.667389, -0.550785, 0.501226,
		0.092078, -0.606855, -0.789461,
		24.296253, 34.857418, 34.896000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905216, 34.915695, 35.509476>,  <24.231798, 35.282215, 35.448624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905216, 34.915695, 35.509476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742422, 35.004585, 35.155079>,  <24.644745, 35.057919, 34.942440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742422, 35.004585, 35.155079>,  <24.905216, 34.915695, 35.509476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742422, 35.004585, 35.155079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767015, 0.609871, -0.199364,
		0.496035, -0.760706, -0.418659,
		-0.406985, 0.222226, -0.885990,
		24.620327, 35.071255, 34.889282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.454575, 34.958694, 35.032715>,  <24.905216, 34.915695, 35.509476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.454575, 34.958694, 35.032715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158974, 35.186787, 34.889206>,  <24.981613, 35.323643, 34.803101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158974, 35.186787, 34.889206>,  <25.454575, 34.958694, 35.032715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158974, 35.186787, 34.889206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672677, 0.653924, -0.346250,
		0.037169, -0.497217, -0.866830,
		-0.739002, 0.570226, -0.358772,
		24.937273, 35.357853, 34.781574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548525, 35.203583, 34.296272>,  <25.454575, 34.958694, 35.032715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548525, 35.203583, 34.296272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368845, 35.472309, 34.531860>,  <25.261038, 35.633545, 34.673214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368845, 35.472309, 34.531860>,  <25.548525, 35.203583, 34.296272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368845, 35.472309, 34.531860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621070, 0.708695, -0.334698,
		-0.642255, 0.215445, -0.735590,
		-0.449200, 0.671815, 0.588969,
		25.234085, 35.673855, 34.708549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276329, 35.933605, 33.927826>,  <25.548525, 35.203583, 34.296272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276329, 35.933605, 33.927826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359926, 35.974358, 34.316864>,  <25.410084, 35.998810, 34.550285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359926, 35.974358, 34.316864>,  <25.276329, 35.933605, 33.927826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359926, 35.974358, 34.316864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647580, 0.730829, -0.215706,
		-0.732777, 0.674915, 0.086761,
		0.208991, 0.101880, 0.972596,
		25.422623, 36.004921, 34.608643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948517, 36.523575, 34.328999>,  <25.276329, 35.933605, 33.927826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948517, 36.523575, 34.328999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318247, 36.396774, 34.413979>,  <25.540085, 36.320694, 34.464966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.318247, 36.396774, 34.413979>,  <24.948517, 36.523575, 34.328999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318247, 36.396774, 34.413979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358701, 0.911733, -0.200193,
		-0.130236, 0.261249, 0.956445,
		0.924323, -0.317005, 0.212451,
		25.595543, 36.301674, 34.477715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246870, 36.945053, 34.862015>,  <24.948517, 36.523575, 34.328999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246870, 36.945053, 34.862015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566883, 36.825493, 34.653934>,  <25.758890, 36.753757, 34.529087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566883, 36.825493, 34.653934>,  <25.246870, 36.945053, 34.862015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566883, 36.825493, 34.653934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406366, 0.907850, 0.103322,
		0.441380, -0.294052, 0.847772,
		0.800032, -0.298902, -0.520200,
		25.806892, 36.735821, 34.497875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795454, 37.210106, 35.257332>,  <25.246870, 36.945053, 34.862015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795454, 37.210106, 35.257332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950718, 37.138977, 34.895622>,  <26.043877, 37.096298, 34.678596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950718, 37.138977, 34.895622>,  <25.795454, 37.210106, 35.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950718, 37.138977, 34.895622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410820, 0.911712, -0.002944,
		0.824959, -0.370350, 0.426947,
		0.388162, -0.177827, -0.904272,
		26.067167, 37.085629, 34.624340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433971, 37.438866, 35.302437>,  <25.795454, 37.210106, 35.257332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433971, 37.438866, 35.302437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347420, 37.452438, 34.912148>,  <26.295488, 37.460583, 34.677975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347420, 37.452438, 34.912148>,  <26.433971, 37.438866, 35.302437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347420, 37.452438, 34.912148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375914, 0.925239, -0.051189,
		0.901037, -0.377863, -0.212959,
		-0.216380, 0.033931, -0.975719,
		26.282505, 37.462616, 34.619431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840057, 37.952366, 35.064030>,  <26.433971, 37.438866, 35.302437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840057, 37.952366, 35.064030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654360, 37.901836, 34.713367>,  <26.542940, 37.871517, 34.502972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654360, 37.901836, 34.713367>,  <26.840057, 37.952366, 35.064030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654360, 37.901836, 34.713367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333679, 0.891905, -0.305227,
		0.820448, -0.434221, -0.371912,
		-0.464245, -0.126324, -0.876652,
		26.515087, 37.863937, 34.450371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342487, 38.110157, 34.476402>,  <26.840057, 37.952366, 35.064030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342487, 38.110157, 34.476402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956278, 38.184780, 34.403778>,  <26.724552, 38.229553, 34.360203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956278, 38.184780, 34.403778>,  <27.342487, 38.110157, 34.476402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956278, 38.184780, 34.403778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236482, 0.920135, -0.312135,
		0.108825, -0.344308, -0.932528,
		-0.965522, 0.186558, -0.181556,
		26.666620, 38.240749, 34.349312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370819, 38.450066, 33.849297>,  <27.342487, 38.110157, 34.476402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370819, 38.450066, 33.849297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001616, 38.524822, 33.983833>,  <26.780092, 38.569675, 34.064556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001616, 38.524822, 33.983833>,  <27.370819, 38.450066, 33.849297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001616, 38.524822, 33.983833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049263, 0.924322, -0.378420,
		-0.381610, -0.332717, -0.862365,
		-0.923010, 0.186892, 0.336340,
		26.724712, 38.580891, 34.084736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937702, 38.783283, 33.268711>,  <27.370819, 38.450066, 33.849297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937702, 38.783283, 33.268711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780523, 38.882236, 33.622974>,  <26.686216, 38.941608, 33.835533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780523, 38.882236, 33.622974>,  <26.937702, 38.783283, 33.268711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780523, 38.882236, 33.622974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000248, 0.963105, -0.269126,
		-0.919562, -0.105971, -0.378386,
		-0.392945, 0.247384, 0.885661,
		26.662640, 38.956451, 33.888672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633392, 39.327675, 33.106533>,  <26.937702, 38.783283, 33.268711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633392, 39.327675, 33.106533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626772, 39.367054, 33.504536>,  <26.622799, 39.390682, 33.743336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626772, 39.367054, 33.504536>,  <26.633392, 39.327675, 33.106533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626772, 39.367054, 33.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106307, 0.989673, -0.096152,
		-0.994196, 0.104184, -0.026846,
		-0.016551, 0.098448, 0.995004,
		26.621807, 39.396587, 33.803036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148174, 39.830860, 33.262512>,  <26.633392, 39.327675, 33.106533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148174, 39.830860, 33.262512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391127, 39.810684, 33.579636>,  <26.536898, 39.798580, 33.769909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391127, 39.810684, 33.579636>,  <26.148174, 39.830860, 33.262512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391127, 39.810684, 33.579636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171993, 0.982661, -0.069249,
		-0.775570, 0.178418, 0.605524,
		0.607380, -0.050438, 0.792809,
		26.573341, 39.795551, 33.817478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878674, 40.185184, 33.772755>,  <26.148174, 39.830860, 33.262512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878674, 40.185184, 33.772755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256365, 40.198856, 33.903759>,  <26.482979, 40.207062, 33.982361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256365, 40.198856, 33.903759>,  <25.878674, 40.185184, 33.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256365, 40.198856, 33.903759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088263, 0.984477, 0.151707,
		-0.317245, -0.172153, 0.932587,
		0.944227, 0.034184, 0.327515,
		26.539633, 40.209110, 34.002014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879471, 40.623409, 34.387863>,  <25.878674, 40.185184, 33.772755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879471, 40.623409, 34.387863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265678, 40.625427, 34.283752>,  <26.497404, 40.626637, 34.221287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265678, 40.625427, 34.283752>,  <25.879471, 40.623409, 34.387863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265678, 40.625427, 34.283752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047185, 0.979862, 0.194021,
		0.256015, -0.199613, 0.945839,
		0.965520, 0.005043, -0.260278,
		26.555334, 40.626942, 34.205669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263243, 40.984978, 34.962372>,  <25.879471, 40.623409, 34.387863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263243, 40.984978, 34.962372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497866, 41.016548, 34.639950>,  <26.638639, 41.035492, 34.446495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497866, 41.016548, 34.639950>,  <26.263243, 40.984978, 34.962372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497866, 41.016548, 34.639950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115291, 0.976967, 0.179563,
		0.801661, -0.198254, 0.563946,
		0.586556, 0.078931, -0.806054,
		26.673832, 41.040226, 34.398132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853409, 41.338963, 35.218151>,  <26.263243, 40.984978, 34.962372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853409, 41.338963, 35.218151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864977, 41.375172, 34.819962>,  <26.871918, 41.396896, 34.581047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864977, 41.375172, 34.819962>,  <26.853409, 41.338963, 35.218151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864977, 41.375172, 34.819962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226126, 0.969481, 0.094728,
		0.973669, -0.227842, 0.007567,
		0.028919, 0.090523, -0.995475,
		26.873652, 41.402328, 34.521320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560823, 41.576485, 35.086658>,  <26.853409, 41.338963, 35.218151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560823, 41.576485, 35.086658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335962, 41.689335, 34.775688>,  <27.201046, 41.757046, 34.589108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335962, 41.689335, 34.775688>,  <27.560823, 41.576485, 35.086658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335962, 41.689335, 34.775688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390991, 0.918993, 0.050776,
		0.728773, -0.275422, -0.626924,
		-0.562153, 0.282126, -0.777425,
		27.167316, 41.773972, 34.542461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989895, 41.746220, 34.542339>,  <27.560823, 41.576485, 35.086658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989895, 41.746220, 34.542339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643805, 41.943176, 34.504536>,  <27.436150, 42.061352, 34.481853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643805, 41.943176, 34.504536>,  <27.989895, 41.746220, 34.542339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643805, 41.943176, 34.504536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499066, 0.863881, -0.068132,
		0.048098, -0.106116, -0.993190,
		-0.865228, 0.492391, -0.094510,
		27.384235, 42.090893, 34.476181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240206, 42.197132, 34.020908>,  <27.989895, 41.746220, 34.542339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240206, 42.197132, 34.020908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889307, 42.350452, 34.136509>,  <27.678768, 42.442444, 34.205868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889307, 42.350452, 34.136509>,  <28.240206, 42.197132, 34.020908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889307, 42.350452, 34.136509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415768, 0.907599, 0.058311,
		-0.239946, 0.171311, -0.955551,
		-0.877247, 0.383296, 0.289000,
		27.626133, 42.465443, 34.223209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343996, 42.838577, 33.917370>,  <28.240206, 42.197132, 34.020908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343996, 42.838577, 33.917370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976034, 42.871456, 34.070740>,  <27.755257, 42.891182, 34.162762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976034, 42.871456, 34.070740>,  <28.343996, 42.838577, 33.917370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976034, 42.871456, 34.070740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147159, 0.978684, 0.143252,
		-0.363477, 0.188203, -0.912394,
		-0.919907, 0.082198, 0.383425,
		27.700062, 42.896114, 34.185768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010330, 43.405060, 33.591244>,  <28.343996, 42.838577, 33.917370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010330, 43.405060, 33.591244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796144, 43.367901, 33.927017>,  <27.667633, 43.345604, 34.128483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796144, 43.367901, 33.927017>,  <28.010330, 43.405060, 33.591244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796144, 43.367901, 33.927017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090469, 0.981903, 0.166378,
		-0.839698, 0.165032, -0.517370,
		-0.535465, -0.092902, 0.839432,
		27.635506, 43.340031, 34.178848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485270, 43.952198, 33.609348>,  <28.010330, 43.405060, 33.591244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485270, 43.952198, 33.609348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593344, 43.849827, 33.980618>,  <27.658188, 43.788403, 34.203377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593344, 43.849827, 33.980618>,  <27.485270, 43.952198, 33.609348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593344, 43.849827, 33.980618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104940, 0.966109, 0.235840,
		-0.957073, 0.033682, 0.287884,
		0.270184, -0.255927, 0.928171,
		27.674398, 43.773048, 34.259068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815948, 44.147301, 33.365982>,  <27.485270, 43.952198, 33.609348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815948, 44.147301, 33.365982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993910, 44.120113, 33.008785>,  <27.100687, 44.103802, 32.794468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993910, 44.120113, 33.008785>,  <26.815948, 44.147301, 33.365982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993910, 44.120113, 33.008785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437922, 0.853268, -0.283121,
		0.781207, 0.517025, 0.349859,
		0.444904, -0.067965, -0.892995,
		27.127380, 44.099724, 32.740887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098646, 44.747440, 33.266186>,  <26.815948, 44.147301, 33.365982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098646, 44.747440, 33.266186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007212, 44.625134, 32.896481>,  <26.952351, 44.551750, 32.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007212, 44.625134, 32.896481>,  <27.098646, 44.747440, 33.266186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007212, 44.625134, 32.896481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579167, 0.805823, -0.123344,
		0.782505, 0.507106, -0.361289,
		-0.228586, -0.305764, -0.924260,
		26.938637, 44.533405, 32.619202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215586, 45.311543, 32.795204>,  <27.098646, 44.747440, 33.266186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215586, 45.311543, 32.795204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931412, 45.061226, 32.666420>,  <26.760906, 44.911034, 32.589149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931412, 45.061226, 32.666420>,  <27.215586, 45.311543, 32.795204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931412, 45.061226, 32.666420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608283, 0.776107, -0.166281,
		0.353937, 0.077714, -0.932035,
		-0.710437, -0.625794, -0.321965,
		26.718281, 44.873489, 32.569832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512136, 46.011749, 32.428089>,  <27.215586, 45.311543, 32.795204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512136, 46.011749, 32.428089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652218, 46.128265, 32.784180>,  <27.736267, 46.198174, 32.997833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652218, 46.128265, 32.784180>,  <27.512136, 46.011749, 32.428089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652218, 46.128265, 32.784180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683517, -0.729307, -0.030250,
		0.640439, 0.619081, -0.454507,
		0.350202, 0.291290, 0.890230,
		27.757278, 46.215652, 33.051247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.271973, 46.167732, 32.316463>,  <27.512136, 46.011749, 32.428089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.271973, 46.167732, 32.316463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143057, 46.009514, 32.660480>,  <28.065708, 45.914581, 32.866890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143057, 46.009514, 32.660480>,  <28.271973, 46.167732, 32.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143057, 46.009514, 32.660480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691489, -0.718842, -0.071480,
		0.646508, 0.571673, 0.505190,
		-0.322289, -0.395546, 0.860043,
		28.046370, 45.890850, 32.918491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848598, 45.999737, 32.713711>,  <28.271973, 46.167732, 32.316463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848598, 45.999737, 32.713711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534679, 45.755894, 32.758385>,  <28.346327, 45.609589, 32.785191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534679, 45.755894, 32.758385>,  <28.848598, 45.999737, 32.713711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534679, 45.755894, 32.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541721, -0.762296, -0.354179,
		0.301045, -0.217458, 0.928485,
		-0.784799, -0.609604, 0.111684,
		28.299240, 45.573013, 32.791889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974009, 45.355015, 33.242195>,  <28.848598, 45.999737, 32.713711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974009, 45.355015, 33.242195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730053, 45.315350, 32.927692>,  <28.583679, 45.291550, 32.738991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730053, 45.315350, 32.927692>,  <28.974009, 45.355015, 33.242195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730053, 45.315350, 32.927692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636489, -0.652383, -0.411435,
		-0.472139, -0.751374, 0.461001,
		-0.609891, -0.099168, -0.786256,
		28.547087, 45.285599, 32.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723083, 44.797729, 33.251656>,  <28.974009, 45.355015, 33.242195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723083, 44.797729, 33.251656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819740, 44.884327, 32.873295>,  <28.877735, 44.936287, 32.646278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819740, 44.884327, 32.873295>,  <28.723083, 44.797729, 33.251656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819740, 44.884327, 32.873295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288246, -0.946808, -0.143068,
		-0.926565, -0.238082, -0.291194,
		0.241643, 0.216497, -0.945906,
		28.892233, 44.949276, 32.589523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343842, 44.315506, 32.788876>,  <28.723083, 44.797729, 33.251656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343842, 44.315506, 32.788876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693743, 44.463577, 32.663799>,  <28.903685, 44.552418, 32.588753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693743, 44.463577, 32.663799>,  <28.343842, 44.315506, 32.788876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693743, 44.463577, 32.663799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393647, -0.919168, 0.013088,
		-0.282569, -0.134538, -0.949765,
		0.874755, 0.370174, -0.312689,
		28.956169, 44.574631, 32.569992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612133, 43.948067, 32.289688>,  <28.343842, 44.315506, 32.788876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612133, 43.948067, 32.289688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948980, 44.129097, 32.407001>,  <29.151089, 44.237713, 32.477390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948980, 44.129097, 32.407001>,  <28.612133, 43.948067, 32.289688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948980, 44.129097, 32.407001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496335, -0.863106, -0.093270,
		0.210926, 0.224112, -0.951464,
		0.842117, 0.452572, 0.293286,
		29.201616, 44.264870, 32.494987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201582, 43.858047, 31.871033>,  <28.612133, 43.948067, 32.289688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201582, 43.858047, 31.871033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336992, 43.913925, 32.243244>,  <29.418240, 43.947453, 32.466572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336992, 43.913925, 32.243244>,  <29.201582, 43.858047, 31.871033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336992, 43.913925, 32.243244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408897, -0.912505, -0.011767,
		0.847468, 0.384474, -0.366030,
		0.338528, 0.139696, 0.930529,
		29.438551, 43.955833, 32.522404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860502, 43.665127, 31.820671>,  <29.201582, 43.858047, 31.871033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860502, 43.665127, 31.820671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786564, 43.638947, 32.212906>,  <29.742201, 43.623238, 32.448246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786564, 43.638947, 32.212906>,  <29.860502, 43.665127, 31.820671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786564, 43.638947, 32.212906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515258, -0.856102, 0.039991,
		0.836864, 0.512647, 0.191970,
		-0.184847, -0.065447, 0.980586,
		29.731110, 43.619312, 32.507080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495583, 43.372719, 32.143681>,  <29.860502, 43.665127, 31.820671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495583, 43.372719, 32.143681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221876, 43.294464, 32.424683>,  <30.057653, 43.247513, 32.593285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221876, 43.294464, 32.424683>,  <30.495583, 43.372719, 32.143681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221876, 43.294464, 32.424683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366466, -0.925115, 0.099322,
		0.630465, 0.325405, 0.704717,
		-0.684264, -0.195636, 0.702502,
		30.016598, 43.235775, 32.635433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827541, 42.986042, 32.701145>,  <30.495583, 43.372719, 32.143681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827541, 42.986042, 32.701145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436789, 42.918205, 32.753208>,  <30.202337, 42.877502, 32.784447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436789, 42.918205, 32.753208>,  <30.827541, 42.986042, 32.701145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436789, 42.918205, 32.753208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169257, -0.985476, -0.013712,
		0.130591, 0.008635, 0.991399,
		-0.976882, -0.169591, 0.130156,
		30.143724, 42.867329, 32.792255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883516, 42.493317, 33.282860>,  <30.827541, 42.986042, 32.701145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883516, 42.493317, 33.282860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537756, 42.471661, 33.082909>,  <30.330299, 42.458668, 32.962936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537756, 42.471661, 33.082909>,  <30.883516, 42.493317, 33.282860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537756, 42.471661, 33.082909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047419, -0.998533, 0.026148,
		-0.500560, -0.001102, 0.865701,
		-0.864402, -0.054139, -0.499878,
		30.278435, 42.455418, 32.932945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582542, 41.883545, 33.565254>,  <30.883516, 42.493317, 33.282860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582542, 41.883545, 33.565254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348375, 41.951912, 33.248249>,  <30.207876, 41.992931, 33.058048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348375, 41.951912, 33.248249>,  <30.582542, 41.883545, 33.565254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348375, 41.951912, 33.248249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326692, -0.944381, 0.037650,
		-0.741997, 0.280948, 0.608694,
		-0.585417, 0.170919, -0.792511,
		30.172750, 42.003189, 33.010494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993311, 41.520462, 33.817879>,  <30.582542, 41.883545, 33.565254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993311, 41.520462, 33.817879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974659, 41.536598, 33.418640>,  <29.963469, 41.546280, 33.179096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974659, 41.536598, 33.418640>,  <29.993311, 41.520462, 33.817879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974659, 41.536598, 33.418640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214236, -0.976338, -0.029451,
		-0.975668, 0.212455, 0.054167,
		-0.046628, 0.040339, -0.998098,
		29.960670, 41.548698, 33.119209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390457, 41.068817, 33.536690>,  <29.993311, 41.520462, 33.817879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390457, 41.068817, 33.536690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638681, 41.099819, 33.224564>,  <29.787617, 41.118420, 33.037289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638681, 41.099819, 33.224564>,  <29.390457, 41.068817, 33.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638681, 41.099819, 33.224564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102041, -0.978660, -0.178360,
		-0.777490, 0.190308, -0.599409,
		0.620561, 0.077509, -0.780318,
		29.824850, 41.123074, 32.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098507, 40.717957, 33.060013>,  <29.390457, 41.068817, 33.536690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098507, 40.717957, 33.060013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483931, 40.720493, 32.953049>,  <29.715185, 40.722015, 32.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483931, 40.720493, 32.953049>,  <29.098507, 40.717957, 33.060013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483931, 40.720493, 32.953049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009080, -0.998367, -0.056409,
		-0.267334, 0.056781, -0.961930,
		0.963561, 0.006346, -0.267413,
		29.772999, 40.722397, 32.872826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136322, 40.160347, 32.632259>,  <29.098507, 40.717957, 33.060013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136322, 40.160347, 32.632259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526863, 40.219742, 32.695107>,  <29.761189, 40.255379, 32.732815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526863, 40.219742, 32.695107>,  <29.136322, 40.160347, 32.632259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526863, 40.219742, 32.695107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158834, -0.985749, -0.055407,
		0.146652, 0.079053, -0.986024,
		0.976353, 0.148489, 0.157118,
		29.819769, 40.264290, 32.742241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526459, 39.807583, 32.078674>,  <29.136322, 40.160347, 32.632259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526459, 39.807583, 32.078674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757647, 39.853531, 32.401848>,  <29.896360, 39.881100, 32.595753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757647, 39.853531, 32.401848>,  <29.526459, 39.807583, 32.078674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757647, 39.853531, 32.401848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041561, -0.992902, 0.111442,
		0.814998, -0.030832, -0.578643,
		0.577971, 0.114873, 0.807931,
		29.931038, 39.887993, 32.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032574, 39.302254, 31.938311>,  <29.526459, 39.807583, 32.078674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032574, 39.302254, 31.938311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093348, 39.394218, 32.322823>,  <30.129812, 39.449398, 32.553528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093348, 39.394218, 32.322823>,  <30.032574, 39.302254, 31.938311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093348, 39.394218, 32.322823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020836, -0.973098, 0.229448,
		0.988171, -0.014832, -0.152640,
		0.151936, 0.229914, 0.961278,
		30.138929, 39.463192, 32.611206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521027, 38.870045, 32.240433>,  <30.032574, 39.302254, 31.938311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521027, 38.870045, 32.240433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284935, 38.988899, 32.540657>,  <30.143280, 39.060211, 32.720791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284935, 38.988899, 32.540657>,  <30.521027, 38.870045, 32.240433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284935, 38.988899, 32.540657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230531, -0.953114, 0.196032,
		0.773617, -0.057323, 0.631055,
		-0.590231, 0.297132, 0.750560,
		30.107866, 39.078037, 32.765823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708881, 38.365910, 32.877514>,  <30.521027, 38.870045, 32.240433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708881, 38.365910, 32.877514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358158, 38.538654, 32.962082>,  <30.147724, 38.642300, 33.012825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358158, 38.538654, 32.962082>,  <30.708881, 38.365910, 32.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358158, 38.538654, 32.962082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406932, -0.900693, 0.152180,
		0.256149, 0.047398, 0.965475,
		-0.876809, 0.431863, 0.211424,
		30.095116, 38.668213, 33.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384079, 37.991398, 33.488277>,  <30.708881, 38.365910, 32.877514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384079, 37.991398, 33.488277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078539, 38.192307, 33.326164>,  <29.895216, 38.312851, 33.228897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078539, 38.192307, 33.326164>,  <30.384079, 37.991398, 33.488277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078539, 38.192307, 33.326164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644904, -0.569489, 0.509687,
		0.025198, 0.650693, 0.758923,
		-0.763848, 0.502276, -0.405284,
		29.849384, 38.342991, 33.204578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007492, 38.113754, 34.016895>,  <30.384079, 37.991398, 33.488277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007492, 38.113754, 34.016895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770714, 38.161747, 33.698097>,  <29.628647, 38.190540, 33.506817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770714, 38.161747, 33.698097>,  <30.007492, 38.113754, 34.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770714, 38.161747, 33.698097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720436, -0.522104, 0.456486,
		-0.361347, 0.844401, 0.395496,
		-0.591947, 0.119980, -0.796997,
		29.593130, 38.197742, 33.459000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282795, 38.346836, 34.242668>,  <30.007492, 38.113754, 34.016895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282795, 38.346836, 34.242668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229019, 38.188118, 33.879467>,  <29.196753, 38.092888, 33.661545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229019, 38.188118, 33.879467>,  <29.282795, 38.346836, 34.242668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229019, 38.188118, 33.879467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752383, -0.555441, 0.354126,
		-0.644861, 0.730778, -0.223870,
		-0.134441, -0.396798, -0.908007,
		29.188686, 38.069080, 33.607063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601133, 38.106316, 34.175888>,  <29.282795, 38.346836, 34.242668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601133, 38.106316, 34.175888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762276, 37.887566, 33.882324>,  <28.858961, 37.756313, 33.706184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762276, 37.887566, 33.882324>,  <28.601133, 38.106316, 34.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762276, 37.887566, 33.882324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625585, -0.749843, 0.215356,
		-0.668094, 0.372367, -0.644199,
		0.402857, -0.546880, -0.733913,
		28.883133, 37.723503, 33.662151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071882, 37.761532, 33.843948>,  <28.601133, 38.106316, 34.175888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071882, 37.761532, 33.843948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392700, 37.553566, 33.726360>,  <28.585190, 37.428787, 33.655807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392700, 37.553566, 33.726360>,  <28.071882, 37.761532, 33.843948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392700, 37.553566, 33.726360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533198, -0.845053, 0.039829,
		-0.269124, 0.124797, -0.954986,
		0.802043, -0.519915, -0.293965,
		28.633312, 37.397591, 33.638172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831934, 37.342739, 33.281349>,  <28.071882, 37.761532, 33.843948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831934, 37.342739, 33.281349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166739, 37.159821, 33.401543>,  <28.367622, 37.050068, 33.473660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166739, 37.159821, 33.401543>,  <27.831934, 37.342739, 33.281349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166739, 37.159821, 33.401543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455762, -0.886532, -0.079633,
		0.302806, -0.070296, -0.950456,
		0.837012, -0.457296, 0.300485,
		28.417843, 37.022633, 33.491688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125526, 36.903446, 32.639748>,  <27.831934, 37.342739, 33.281349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125526, 36.903446, 32.639748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243357, 36.776577, 33.000332>,  <28.314054, 36.700455, 33.216682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243357, 36.776577, 33.000332>,  <28.125526, 36.903446, 32.639748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243357, 36.776577, 33.000332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517158, -0.846155, -0.128722,
		0.803601, -0.428278, -0.413285,
		0.294574, -0.317174, 0.901458,
		28.331730, 36.681423, 33.270771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323101, 36.217052, 32.566730>,  <28.125526, 36.903446, 32.639748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323101, 36.217052, 32.566730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274246, 36.215500, 32.963734>,  <28.244934, 36.214569, 33.201935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274246, 36.215500, 32.963734>,  <28.323101, 36.217052, 32.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274246, 36.215500, 32.963734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208691, -0.977537, -0.029502,
		0.970325, -0.210730, 0.118583,
		-0.122136, -0.003879, 0.992506,
		28.237606, 36.214336, 33.261486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648010, 35.634743, 32.749454>,  <28.323101, 36.217052, 32.566730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648010, 35.634743, 32.749454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392645, 35.693962, 33.051582>,  <28.239426, 35.729492, 33.232861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392645, 35.693962, 33.051582>,  <28.648010, 35.634743, 32.749454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392645, 35.693962, 33.051582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385319, -0.910980, -0.147122,
		0.666301, -0.384964, 0.638627,
		-0.638413, 0.148048, 0.755321,
		28.201120, 35.738377, 33.278179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313908, 35.732117, 32.807552>,  <28.648010, 35.634743, 32.749454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313908, 35.732117, 32.807552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423391, 36.112389, 32.749199>,  <29.489082, 36.340553, 32.714188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423391, 36.112389, 32.749199>,  <29.313908, 35.732117, 32.807552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423391, 36.112389, 32.749199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932939, -0.225537, 0.280640,
		0.233898, -0.212916, -0.948662,
		0.273711, 0.950684, -0.145885,
		29.505505, 36.397594, 32.705433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833548, 35.840549, 32.255394>,  <29.313908, 35.732117, 32.807552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833548, 35.840549, 32.255394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885452, 36.107983, 32.548286>,  <29.916595, 36.268444, 32.724022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885452, 36.107983, 32.548286>,  <29.833548, 35.840549, 32.255394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885452, 36.107983, 32.548286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990011, -0.128430, -0.058178,
		0.055143, 0.732463, -0.678570,
		0.129762, 0.668584, 0.732228,
		29.924381, 36.308559, 32.767956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528831, 36.178471, 32.231735>,  <29.833548, 35.840549, 32.255394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528831, 36.178471, 32.231735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420151, 36.302658, 32.596107>,  <30.354942, 36.377171, 32.814732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.420151, 36.302658, 32.596107>,  <30.528831, 36.178471, 32.231735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420151, 36.302658, 32.596107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962370, 0.082982, 0.258761,
		0.004746, 0.946955, -0.321331,
		-0.271700, 0.310468, 0.910928,
		30.338640, 36.395798, 32.869385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222340, 35.962540, 32.365337>,  <30.528831, 36.178471, 32.231735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222340, 35.962540, 32.365337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435125, 35.655445, 32.222454>,  <31.562796, 35.471188, 32.136726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435125, 35.655445, 32.222454>,  <31.222340, 35.962540, 32.365337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435125, 35.655445, 32.222454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665998, 0.639866, -0.383430,
		0.522936, -0.033927, 0.851696,
		0.531963, -0.767737, -0.357204,
		31.594715, 35.425125, 32.115292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650845, 35.672482, 32.856888>,  <31.222340, 35.962540, 32.365337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650845, 35.672482, 32.856888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719067, 35.669895, 33.251019>,  <31.760000, 35.668343, 33.487495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719067, 35.669895, 33.251019>,  <31.650845, 35.672482, 32.856888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719067, 35.669895, 33.251019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964262, -0.204670, -0.168251,
		0.202755, 0.978810, -0.028671,
		0.170554, -0.006468, 0.985327,
		31.770233, 35.667953, 33.546616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149975, 35.229931, 33.394455>,  <31.650845, 35.672482, 32.856888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149975, 35.229931, 33.394455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237391, 34.839600, 33.395580>,  <31.289841, 34.605400, 33.396255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237391, 34.839600, 33.395580>,  <31.149975, 35.229931, 33.394455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237391, 34.839600, 33.395580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099500, -0.019414, 0.994848,
		-0.970742, -0.217695, -0.101337,
		0.218541, -0.975824, 0.002814,
		31.302952, 34.546852, 33.396423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605227, 34.931713, 33.653694>,  <31.149975, 35.229931, 33.394455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605227, 34.931713, 33.653694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932470, 34.716831, 33.735775>,  <31.128817, 34.587902, 33.785023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932470, 34.716831, 33.735775>,  <30.605227, 34.931713, 33.653694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932470, 34.716831, 33.735775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116087, 0.195214, 0.973866,
		-0.563227, -0.820549, 0.097343,
		0.818107, -0.537207, 0.205205,
		31.177902, 34.555668, 33.797337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372257, 34.473957, 34.077694>,  <30.605227, 34.931713, 33.653694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372257, 34.473957, 34.077694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768620, 34.443306, 34.121941>,  <31.006437, 34.424915, 34.148487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768620, 34.443306, 34.121941>,  <30.372257, 34.473957, 34.077694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768620, 34.443306, 34.121941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111901, -0.012667, 0.993639,
		-0.074744, -0.996979, -0.021127,
		0.990904, -0.076633, 0.110616,
		31.065891, 34.420319, 34.155125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502182, 33.846230, 34.634380>,  <30.372257, 34.473957, 34.077694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502182, 33.846230, 34.634380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826704, 34.079128, 34.613319>,  <31.021418, 34.218868, 34.600681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826704, 34.079128, 34.613319>,  <30.502182, 33.846230, 34.634380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826704, 34.079128, 34.613319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036121, 0.139815, 0.989518,
		0.583509, -0.800897, 0.134464,
		0.811303, 0.582250, -0.052655,
		31.070095, 34.253803, 34.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855362, 33.660942, 35.192558>,  <30.502182, 33.846230, 34.634380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855362, 33.660942, 35.192558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032646, 34.005184, 35.092216>,  <31.139017, 34.211727, 35.032013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032646, 34.005184, 35.092216>,  <30.855362, 33.660942, 35.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032646, 34.005184, 35.092216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159402, 0.199714, 0.966802,
		0.882131, -0.468483, -0.048667,
		0.443210, 0.860604, -0.250851,
		31.165609, 34.263367, 35.016960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527851, 33.694191, 35.437344>,  <30.855362, 33.660942, 35.192558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527851, 33.694191, 35.437344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399651, 34.071331, 35.400864>,  <31.322729, 34.297615, 35.378975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399651, 34.071331, 35.400864>,  <31.527851, 33.694191, 35.437344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399651, 34.071331, 35.400864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272204, 0.183887, 0.944505,
		0.907294, 0.277893, -0.315583,
		-0.320503, 0.942847, -0.091196,
		31.303499, 34.354187, 35.373505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975819, 34.019184, 35.885830>,  <31.527851, 33.694191, 35.437344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975819, 34.019184, 35.885830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681870, 34.279690, 35.810127>,  <31.505499, 34.435993, 35.764706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681870, 34.279690, 35.810127>,  <31.975819, 34.019184, 35.885830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681870, 34.279690, 35.810127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110437, 0.160422, 0.980851,
		0.669151, 0.741704, -0.045967,
		-0.734875, 0.651260, -0.189258,
		31.461407, 34.475067, 35.753349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090092, 34.479420, 36.428658>,  <31.975819, 34.019184, 35.885830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090092, 34.479420, 36.428658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719368, 34.567146, 36.306728>,  <31.496933, 34.619781, 36.233570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719368, 34.567146, 36.306728>,  <32.090092, 34.479420, 36.428658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719368, 34.567146, 36.306728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244596, 0.263357, 0.933175,
		0.284941, 0.939437, -0.190437,
		-0.926812, 0.219320, -0.304824,
		31.441324, 34.632942, 36.215282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951256, 35.246323, 36.600403>,  <32.090092, 34.479420, 36.428658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951256, 35.246323, 36.600403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605698, 35.046707, 36.573143>,  <31.398363, 34.926937, 36.556786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605698, 35.046707, 36.573143>,  <31.951256, 35.246323, 36.600403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605698, 35.046707, 36.573143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207512, 0.229361, 0.950964,
		-0.458935, 0.835676, -0.301700,
		-0.863896, -0.499038, -0.068151,
		31.346529, 34.896996, 36.552696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418713, 35.726719, 36.670174>,  <31.951256, 35.246323, 36.600403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418713, 35.726719, 36.670174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291191, 35.359215, 36.763336>,  <31.214678, 35.138714, 36.819233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291191, 35.359215, 36.763336>,  <31.418713, 35.726719, 36.670174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291191, 35.359215, 36.763336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327637, 0.337406, 0.882503,
		-0.889392, 0.205035, -0.408586,
		-0.318804, -0.918759, 0.232909,
		31.195551, 35.083588, 36.833210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890059, 35.869972, 37.100903>,  <31.418713, 35.726719, 36.670174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890059, 35.869972, 37.100903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901976, 35.475880, 37.168346>,  <30.909126, 35.239426, 37.208813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901976, 35.475880, 37.168346>,  <30.890059, 35.869972, 37.100903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901976, 35.475880, 37.168346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401238, 0.142712, 0.904788,
		-0.915489, -0.094612, -0.391061,
		0.029794, -0.985232, 0.168613,
		30.910913, 35.180309, 37.218929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209677, 35.706718, 37.406944>,  <30.890059, 35.869972, 37.100903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209677, 35.706718, 37.406944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478224, 35.432240, 37.518940>,  <30.639353, 35.267551, 37.586136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478224, 35.432240, 37.518940>,  <30.209677, 35.706718, 37.406944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478224, 35.432240, 37.518940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322038, 0.070149, 0.944124,
		-0.667501, -0.724021, -0.173887,
		0.671368, -0.686202, 0.279987,
		30.679634, 35.226379, 37.602936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892801, 35.226902, 37.904461>,  <30.209677, 35.706718, 37.406944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892801, 35.226902, 37.904461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286301, 35.175640, 37.954769>,  <30.522400, 35.144882, 37.984955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286301, 35.175640, 37.954769>,  <29.892801, 35.226902, 37.904461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286301, 35.175640, 37.954769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123741, 0.023715, 0.992031,
		-0.130115, -0.991471, 0.007472,
		0.983747, -0.128153, 0.125771,
		30.581425, 35.137196, 37.992500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988686, 34.612625, 38.328918>,  <29.892801, 35.226902, 37.904461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988686, 34.612625, 38.328918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321260, 34.829765, 38.376286>,  <30.520805, 34.960049, 38.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321260, 34.829765, 38.376286>,  <29.988686, 34.612625, 38.328918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321260, 34.829765, 38.376286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073759, -0.319085, 0.944852,
		0.550701, -0.776850, -0.305339,
		0.831437, 0.542853, 0.118421,
		30.570692, 34.992622, 38.411812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509636, 34.155922, 38.792370>,  <29.988686, 34.612625, 38.328918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509636, 34.155922, 38.792370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622881, 34.539482, 38.784828>,  <30.690828, 34.769619, 38.780304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622881, 34.539482, 38.784828>,  <30.509636, 34.155922, 38.792370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622881, 34.539482, 38.784828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281442, -0.064273, 0.957423,
		0.916863, -0.276366, -0.288072,
		0.283114, 0.958901, -0.018852,
		30.707815, 34.827152, 38.779171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069672, 34.151443, 39.151459>,  <30.509636, 34.155922, 38.792370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069672, 34.151443, 39.151459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948456, 34.532375, 39.165539>,  <30.875727, 34.760933, 39.173985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948456, 34.532375, 39.165539>,  <31.069672, 34.151443, 39.151459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948456, 34.532375, 39.165539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063253, -0.016753, 0.997857,
		0.950876, 0.304618, -0.055161,
		-0.303041, 0.952327, 0.035198,
		30.857544, 34.818073, 39.176098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603014, 34.595074, 39.457565>,  <31.069672, 34.151443, 39.151459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603014, 34.595074, 39.457565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263765, 34.800598, 39.509243>,  <31.060217, 34.923912, 39.540249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263765, 34.800598, 39.509243>,  <31.603014, 34.595074, 39.457565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263765, 34.800598, 39.509243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165397, 0.025121, 0.985907,
		0.503322, 0.857537, -0.106288,
		-0.848122, 0.513809, 0.129190,
		31.009329, 34.954742, 39.548000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775818, 34.994926, 40.007641>,  <31.603014, 34.595074, 39.457565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775818, 34.994926, 40.007641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381819, 35.063820, 40.011913>,  <31.145420, 35.105156, 40.014477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381819, 35.063820, 40.011913>,  <31.775818, 34.994926, 40.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381819, 35.063820, 40.011913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035414, 0.141158, 0.989354,
		0.168897, 0.974889, -0.145140,
		-0.984997, 0.172238, 0.010684,
		31.086319, 35.115490, 40.015118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604834, 35.604725, 40.421070>,  <31.775818, 34.994926, 40.007641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604834, 35.604725, 40.421070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259665, 35.403721, 40.399750>,  <31.052563, 35.283119, 40.386955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.259665, 35.403721, 40.399750>,  <31.604834, 35.604725, 40.421070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.259665, 35.403721, 40.399750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152731, 0.158805, 0.975425,
		-0.481700, 0.849859, -0.213786,
		-0.862924, -0.502514, -0.053303,
		31.000788, 35.252968, 40.383759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187346, 35.993725, 40.824085>,  <31.604834, 35.604725, 40.421070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187346, 35.993725, 40.824085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001560, 35.639591, 40.815533>,  <30.890089, 35.427113, 40.810402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001560, 35.639591, 40.815533>,  <31.187346, 35.993725, 40.824085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001560, 35.639591, 40.815533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256812, 0.111548, 0.960002,
		-0.847538, 0.451377, -0.279174,
		-0.464464, -0.885334, -0.021378,
		30.862221, 35.373993, 40.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497009, 36.068596, 41.183804>,  <31.187346, 35.993725, 40.824085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497009, 36.068596, 41.183804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568346, 35.675014, 41.181953>,  <30.611147, 35.438866, 41.180843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568346, 35.675014, 41.181953>,  <30.497009, 36.068596, 41.183804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568346, 35.675014, 41.181953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470497, -0.089400, 0.877861,
		-0.864192, -0.154383, -0.478893,
		0.178340, -0.983958, -0.004622,
		30.621847, 35.379826, 41.180565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931408, 35.750690, 41.280132>,  <30.497009, 36.068596, 41.183804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931408, 35.750690, 41.280132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172005, 35.462433, 41.418045>,  <30.316362, 35.289478, 41.500793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172005, 35.462433, 41.418045>,  <29.931408, 35.750690, 41.280132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172005, 35.462433, 41.418045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516094, -0.021097, 0.856272,
		-0.609797, -0.692980, -0.384612,
		0.601493, -0.720649, 0.344778,
		30.352453, 35.246239, 41.521477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462427, 35.221027, 41.517204>,  <29.931408, 35.750690, 41.280132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462427, 35.221027, 41.517204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811726, 35.159706, 41.702217>,  <30.021305, 35.122913, 41.813225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811726, 35.159706, 41.702217>,  <29.462427, 35.221027, 41.517204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811726, 35.159706, 41.702217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483538, -0.155285, 0.861439,
		-0.060237, -0.975902, -0.209730,
		0.873248, -0.153303, 0.462531,
		30.073700, 35.113716, 41.840977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412533, 34.658611, 41.829887>,  <29.462427, 35.221027, 41.517204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412533, 34.658611, 41.829887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728624, 34.816124, 42.017704>,  <29.918280, 34.910633, 42.130394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728624, 34.816124, 42.017704>,  <29.412533, 34.658611, 41.829887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728624, 34.816124, 42.017704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345217, -0.347012, 0.872014,
		0.506320, -0.851187, -0.138279,
		0.790231, 0.393781, 0.469543,
		29.965694, 34.934258, 42.158566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539400, 34.312580, 42.423836>,  <29.412533, 34.658611, 41.829887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539400, 34.312580, 42.423836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772139, 34.628811, 42.500202>,  <29.911781, 34.818550, 42.546021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772139, 34.628811, 42.500202>,  <29.539400, 34.312580, 42.423836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772139, 34.628811, 42.500202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286913, -0.020120, 0.957745,
		0.761011, -0.612034, 0.215119,
		0.581845, 0.790575, 0.190912,
		29.946692, 34.865982, 42.557476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908920, 34.139957, 43.086212>,  <29.539400, 34.312580, 42.423836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908920, 34.139957, 43.086212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903170, 34.539757, 43.074902>,  <29.899719, 34.779636, 43.068115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903170, 34.539757, 43.074902>,  <29.908920, 34.139957, 43.086212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903170, 34.539757, 43.074902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312440, 0.022368, 0.949674,
		0.949829, 0.022487, 0.311962,
		-0.014378, 0.999497, -0.028272,
		29.898857, 34.839607, 43.066422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250679, 34.419224, 43.745731>,  <29.908920, 34.139957, 43.086212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250679, 34.419224, 43.745731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005783, 34.700291, 43.600719>,  <29.858847, 34.868931, 43.513714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005783, 34.700291, 43.600719>,  <30.250679, 34.419224, 43.745731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005783, 34.700291, 43.600719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297524, 0.220067, 0.929005,
		0.732560, 0.676633, 0.074326,
		-0.612238, 0.702665, -0.362527,
		29.822111, 34.911091, 43.491962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218554, 35.010204, 44.183784>,  <30.250679, 34.419224, 43.745731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218554, 35.010204, 44.183784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899670, 35.119804, 43.968609>,  <29.708340, 35.185562, 43.839504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899670, 35.119804, 43.968609>,  <30.218554, 35.010204, 44.183784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899670, 35.119804, 43.968609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437197, 0.352444, 0.827431,
		0.416308, 0.894823, -0.161182,
		-0.797212, 0.273998, -0.537940,
		29.660505, 35.202003, 43.807228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098845, 35.770061, 44.335709>,  <30.218554, 35.010204, 44.183784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098845, 35.770061, 44.335709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750338, 35.631939, 44.196190>,  <29.541233, 35.549065, 44.112480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750338, 35.631939, 44.196190>,  <30.098845, 35.770061, 44.335709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750338, 35.631939, 44.196190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457773, 0.315384, 0.831250,
		-0.177034, 0.883908, -0.432857,
		-0.871265, -0.345309, -0.348796,
		29.488958, 35.528347, 44.091553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598373, 36.236294, 44.554962>,  <30.098845, 35.770061, 44.335709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598373, 36.236294, 44.554962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363167, 35.924145, 44.469872>,  <29.222042, 35.736855, 44.418816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363167, 35.924145, 44.469872>,  <29.598373, 36.236294, 44.554962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363167, 35.924145, 44.469872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627025, 0.273647, 0.729354,
		-0.510955, 0.562260, -0.650223,
		-0.588018, -0.780373, -0.212730,
		29.186762, 35.690033, 44.406052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873930, 36.536854, 44.608826>,  <29.598373, 36.236294, 44.554962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873930, 36.536854, 44.608826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832628, 36.139072, 44.600868>,  <28.807848, 35.900402, 44.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832628, 36.139072, 44.600868>,  <28.873930, 36.536854, 44.608826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832628, 36.139072, 44.600868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785186, 0.069212, 0.615380,
		-0.610591, 0.079164, -0.787979,
		-0.103254, -0.994456, -0.019898,
		28.801653, 35.840736, 44.594898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178495, 36.359787, 44.496754>,  <28.873930, 36.536854, 44.608826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178495, 36.359787, 44.496754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347775, 36.056725, 44.695492>,  <28.449341, 35.874886, 44.814735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347775, 36.056725, 44.695492>,  <28.178495, 36.359787, 44.496754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347775, 36.056725, 44.695492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696394, 0.078795, 0.713320,
		-0.579603, -0.647876, -0.494284,
		0.423196, -0.757660, 0.496847,
		28.474733, 35.829426, 44.844547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757254, 36.089260, 44.909309>,  <28.178495, 36.359787, 44.496754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757254, 36.089260, 44.909309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039396, 35.859463, 45.075409>,  <28.208681, 35.721584, 45.175068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.039396, 35.859463, 45.075409>,  <27.757254, 36.089260, 44.909309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039396, 35.859463, 45.075409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517133, -0.016384, 0.855748,
		-0.484818, -0.818346, -0.308645,
		0.705355, -0.574492, 0.415251,
		28.251003, 35.687115, 45.199986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409491, 35.624058, 45.265156>,  <27.757254, 36.089260, 44.909309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409491, 35.624058, 45.265156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775988, 35.627907, 45.425362>,  <27.995886, 35.630215, 45.521484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.775988, 35.627907, 45.425362>,  <27.409491, 35.624058, 45.265156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775988, 35.627907, 45.425362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398483, -0.081401, 0.913556,
		0.041393, -0.996635, -0.070748,
		0.916241, 0.009623, 0.400511,
		28.050859, 35.630795, 45.545513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443203, 35.123352, 45.876022>,  <27.409491, 35.624058, 45.265156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443203, 35.123352, 45.876022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748795, 35.368015, 45.958202>,  <27.932150, 35.514812, 46.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748795, 35.368015, 45.958202>,  <27.443203, 35.123352, 45.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748795, 35.368015, 45.958202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215890, -0.057741, 0.974709,
		0.608051, -0.789013, 0.087937,
		0.763980, 0.611657, 0.205449,
		27.977989, 35.551514, 46.019836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947807, 34.728390, 46.260273>,  <27.443203, 35.123352, 45.876022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947807, 34.728390, 46.260273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037800, 35.108185, 46.347771>,  <28.091795, 35.336063, 46.400269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037800, 35.108185, 46.347771>,  <27.947807, 34.728390, 46.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037800, 35.108185, 46.347771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160369, -0.185354, 0.969498,
		0.961075, -0.253196, 0.110569,
		0.224979, 0.949492, 0.218744,
		28.105293, 35.393032, 46.413395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350744, 34.666389, 46.840279>,  <27.947807, 34.728390, 46.260273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350744, 34.666389, 46.840279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263695, 35.056786, 46.844097>,  <28.211464, 35.291023, 46.846386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263695, 35.056786, 46.844097>,  <28.350744, 34.666389, 46.840279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263695, 35.056786, 46.844097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048699, 0.001093, 0.998813,
		0.974817, 0.217831, -0.047767,
		-0.217625, 0.975986, 0.009543,
		28.198408, 35.349583, 46.846958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887802, 34.969006, 47.072102>,  <28.350744, 34.666389, 46.840279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887802, 34.969006, 47.072102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589581, 35.224064, 47.149616>,  <28.410646, 35.377098, 47.196125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589581, 35.224064, 47.149616>,  <28.887802, 34.969006, 47.072102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589581, 35.224064, 47.149616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259684, 0.010165, 0.965640,
		0.613768, 0.770261, -0.173166,
		-0.745555, 0.637648, 0.193786,
		28.365913, 35.415359, 47.207752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149122, 35.416420, 47.505138>,  <28.887802, 34.969006, 47.072102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149122, 35.416420, 47.505138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751310, 35.415131, 47.546906>,  <28.512623, 35.414356, 47.571964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751310, 35.415131, 47.546906>,  <29.149122, 35.416420, 47.505138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751310, 35.415131, 47.546906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104372, -0.072835, 0.991868,
		0.004412, 0.997339, 0.072772,
		-0.994528, -0.003219, 0.104416,
		28.452951, 35.414165, 47.578232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957521, 35.861313, 48.078320>,  <29.149122, 35.416420, 47.505138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957521, 35.861313, 48.078320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655613, 35.601826, 48.039360>,  <28.474468, 35.446133, 48.015984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655613, 35.601826, 48.039360>,  <28.957521, 35.861313, 48.078320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655613, 35.601826, 48.039360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123726, -0.286593, 0.950030,
		-0.644215, 0.705004, 0.296575,
		-0.754771, -0.648717, -0.097400,
		28.429182, 35.407211, 48.010139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477894, 36.114918, 48.581509>,  <28.957521, 35.861313, 48.078320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477894, 36.114918, 48.581509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333429, 35.747742, 48.515854>,  <28.246750, 35.527435, 48.476460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333429, 35.747742, 48.515854>,  <28.477894, 36.114918, 48.581509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333429, 35.747742, 48.515854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167923, -0.109120, 0.979742,
		-0.917259, 0.381409, -0.114733,
		-0.361163, -0.917943, -0.164139,
		28.225080, 35.472359, 48.466614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798841, 35.940826, 49.040421>,  <28.477894, 36.114918, 48.581509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798841, 35.940826, 49.040421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968769, 35.588448, 48.957027>,  <28.070726, 35.377022, 48.906994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968769, 35.588448, 48.957027>,  <27.798841, 35.940826, 49.040421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968769, 35.588448, 48.957027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104749, -0.276582, 0.955264,
		-0.899198, -0.383976, -0.209775,
		0.424818, -0.880946, -0.208481,
		28.096214, 35.324165, 48.894482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418272, 35.383945, 49.345890>,  <27.798841, 35.940826, 49.040421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418272, 35.383945, 49.345890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758516, 35.190319, 49.263771>,  <27.962662, 35.074142, 49.214500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758516, 35.190319, 49.263771>,  <27.418272, 35.383945, 49.345890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758516, 35.190319, 49.263771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044067, -0.454703, 0.889553,
		-0.523950, -0.747614, -0.408105,
		0.850608, -0.484065, -0.205296,
		28.013699, 35.045101, 49.202183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357208, 34.578770, 49.343227>,  <27.418272, 35.383945, 49.345890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357208, 34.578770, 49.343227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702248, 34.741600, 49.463371>,  <27.909271, 34.839298, 49.535458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702248, 34.741600, 49.463371>,  <27.357208, 34.578770, 49.343227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702248, 34.741600, 49.463371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158445, -0.346458, 0.924588,
		0.480437, -0.845138, -0.234355,
		0.862598, 0.407074, 0.300359,
		27.961027, 34.863724, 49.553478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.761850, 34.063030, 49.558647>,  <27.357208, 34.578770, 49.343227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.761850, 34.063030, 49.558647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855515, 34.393936, 49.762920>,  <27.911713, 34.592480, 49.885487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855515, 34.393936, 49.762920>,  <27.761850, 34.063030, 49.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855515, 34.393936, 49.762920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014203, -0.528147, 0.849035,
		0.972095, -0.191557, -0.135420,
		0.234160, 0.827265, 0.510688,
		27.925762, 34.642117, 49.916126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291485, 33.998657, 50.052124>,  <27.761850, 34.063030, 49.558647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291485, 33.998657, 50.052124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098793, 34.255272, 50.290909>,  <27.983179, 34.409241, 50.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098793, 34.255272, 50.290909>,  <28.291485, 33.998657, 50.052124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098793, 34.255272, 50.290909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125486, -0.623697, 0.771528,
		0.867289, 0.446578, 0.219949,
		-0.481728, 0.641537, 0.596965,
		27.954275, 34.447735, 50.469997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742121, 34.196316, 50.799477>,  <28.291485, 33.998657, 50.052124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742121, 34.196316, 50.799477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342327, 34.208813, 50.802364>,  <28.102451, 34.216309, 50.804096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342327, 34.208813, 50.802364>,  <28.742121, 34.196316, 50.799477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342327, 34.208813, 50.802364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013305, -0.609054, 0.793017,
		0.029174, 0.792513, 0.609157,
		-0.999486, 0.031240, 0.007224,
		28.042480, 34.218185, 50.804531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442442, 34.289799, 51.547318>,  <28.742121, 34.196316, 50.799477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442442, 34.289799, 51.547318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163828, 34.096439, 51.335217>,  <27.996660, 33.980423, 51.207958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163828, 34.096439, 51.335217>,  <28.442442, 34.289799, 51.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163828, 34.096439, 51.335217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153583, -0.621427, 0.768272,
		-0.700895, 0.616563, 0.358602,
		-0.696533, -0.483403, -0.530249,
		27.954868, 33.951420, 51.176144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469666, 33.493069, 51.370659>,  <28.442442, 34.289799, 51.547318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469666, 33.493069, 51.370659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217541, 33.636806, 51.095390>,  <28.066265, 33.723049, 50.930229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.217541, 33.636806, 51.095390>,  <28.469666, 33.493069, 51.370659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217541, 33.636806, 51.095390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717836, 0.607354, -0.340341,
		0.295665, -0.708515, -0.640772,
		-0.630312, 0.359342, -0.688171,
		28.028446, 33.744610, 50.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835281, 33.484066, 50.773746>,  <28.469666, 33.493069, 51.370659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835281, 33.484066, 50.773746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540545, 33.749035, 50.719692>,  <28.363703, 33.908016, 50.687260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.540545, 33.749035, 50.719692>,  <28.835281, 33.484066, 50.773746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540545, 33.749035, 50.719692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664965, 0.674043, -0.321695,
		-0.122007, -0.326902, -0.937150,
		-0.736842, 0.662421, -0.135140,
		28.319492, 33.947762, 50.679150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378748, 33.247040, 50.345264>,  <28.835281, 33.484066, 50.773746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378748, 33.247040, 50.345264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160389, 32.954636, 50.509026>,  <29.029373, 32.779190, 50.607285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160389, 32.954636, 50.509026>,  <29.378748, 33.247040, 50.345264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160389, 32.954636, 50.509026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043828, -0.463055, -0.885245,
		0.836706, -0.501195, 0.220741,
		-0.545896, -0.731015, 0.409407,
		28.996620, 32.735332, 50.631847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789518, 32.530861, 50.142834>,  <29.378748, 33.247040, 50.345264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789518, 32.530861, 50.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392828, 32.550076, 50.190449>,  <29.154814, 32.561604, 50.219017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392828, 32.550076, 50.190449>,  <29.789518, 32.530861, 50.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392828, 32.550076, 50.190449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127676, -0.273401, -0.953389,
		-0.013250, -0.960700, 0.277272,
		-0.991727, 0.048033, 0.119036,
		29.095310, 32.564484, 50.226158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473495, 31.916721, 49.785461>,  <29.789518, 32.530861, 50.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473495, 31.916721, 49.785461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206743, 32.214348, 49.801636>,  <29.046692, 32.392925, 49.811340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206743, 32.214348, 49.801636>,  <29.473495, 31.916721, 49.785461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206743, 32.214348, 49.801636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257393, -0.179093, -0.949566,
		-0.699298, -0.643656, 0.310951,
		-0.666883, 0.744066, 0.040433,
		29.006678, 32.437569, 49.813766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016071, 31.670643, 49.401943>,  <29.473495, 31.916721, 49.785461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016071, 31.670643, 49.401943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959837, 32.065960, 49.378220>,  <28.926096, 32.303150, 49.363987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959837, 32.065960, 49.378220>,  <29.016071, 31.670643, 49.401943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959837, 32.065960, 49.378220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272804, -0.096248, -0.957243,
		-0.951743, -0.118396, 0.283141,
		-0.140585, 0.988291, -0.059304,
		28.917662, 32.362446, 49.360428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266661, 31.796751, 49.044403>,  <29.016071, 31.670643, 49.401943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266661, 31.796751, 49.044403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505686, 32.114025, 48.997448>,  <28.649101, 32.304390, 48.969276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505686, 32.114025, 48.997448>,  <28.266661, 31.796751, 49.044403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505686, 32.114025, 48.997448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136305, -0.043783, -0.989699,
		-0.790153, 0.607406, 0.081952,
		0.597561, 0.793184, -0.117388,
		28.684954, 32.351982, 48.962231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920109, 32.218739, 48.608921>,  <28.266661, 31.796751, 49.044403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920109, 32.218739, 48.608921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299458, 32.341454, 48.576733>,  <28.527067, 32.415081, 48.557419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299458, 32.341454, 48.576733>,  <27.920109, 32.218739, 48.608921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299458, 32.341454, 48.576733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059886, -0.075959, -0.995311,
		-0.311460, 0.948743, -0.053665,
		0.948370, 0.306785, -0.080475,
		28.583969, 32.433491, 48.552589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970490, 32.759026, 48.077129>,  <27.920109, 32.218739, 48.608921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970490, 32.759026, 48.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329161, 32.583504, 48.100510>,  <28.544363, 32.478191, 48.114536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329161, 32.583504, 48.100510>,  <27.970490, 32.759026, 48.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329161, 32.583504, 48.100510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141252, 0.158472, -0.977207,
		0.419543, 0.884497, 0.204081,
		0.896678, -0.438808, 0.058451,
		28.598164, 32.451862, 48.118046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396103, 33.088825, 47.521912>,  <27.970490, 32.759026, 48.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396103, 33.088825, 47.521912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624559, 32.771748, 47.607178>,  <28.761633, 32.581501, 47.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624559, 32.771748, 47.607178>,  <28.396103, 33.088825, 47.521912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624559, 32.771748, 47.607178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371684, 0.018201, -0.928181,
		0.731881, 0.609352, 0.305025,
		0.571141, -0.792691, 0.213166,
		28.795902, 32.533939, 47.671127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065632, 33.184807, 47.174126>,  <28.396103, 33.088825, 47.521912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065632, 33.184807, 47.174126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113640, 32.810722, 47.307381>,  <29.142445, 32.586273, 47.387333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113640, 32.810722, 47.307381>,  <29.065632, 33.184807, 47.174126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113640, 32.810722, 47.307381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482711, -0.238250, -0.842750,
		0.867517, 0.261953, 0.422842,
		0.120019, -0.935210, 0.333133,
		29.149645, 32.530159, 47.407322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789284, 33.060783, 47.212326>,  <29.065632, 33.184807, 47.174126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789284, 33.060783, 47.212326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604769, 32.709599, 47.161106>,  <29.494061, 32.498886, 47.130375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604769, 32.709599, 47.161106>,  <29.789284, 33.060783, 47.212326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604769, 32.709599, 47.161106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634644, -0.225646, -0.739129,
		0.620034, -0.422216, 0.661281,
		-0.461287, -0.877962, -0.128049,
		29.466383, 32.446209, 47.122692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349485, 32.703201, 47.024624>,  <29.789284, 33.060783, 47.212326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349485, 32.703201, 47.024624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047674, 32.467144, 46.909786>,  <29.866589, 32.325512, 46.840881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047674, 32.467144, 46.909786>,  <30.349485, 32.703201, 47.024624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047674, 32.467144, 46.909786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544002, -0.317726, -0.776603,
		0.367087, -0.742148, 0.560771,
		-0.754526, -0.590141, -0.287097,
		29.821316, 32.290100, 46.823658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623709, 32.121399, 46.820694>,  <30.349485, 32.703201, 47.024624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623709, 32.121399, 46.820694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275166, 32.090317, 46.626911>,  <30.066040, 32.071667, 46.510643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.275166, 32.090317, 46.626911>,  <30.623709, 32.121399, 46.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275166, 32.090317, 46.626911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489549, -0.203695, -0.847850,
		-0.032797, -0.975945, 0.215533,
		-0.871359, -0.077707, -0.484454,
		30.013758, 32.067005, 46.481575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550222, 31.420015, 46.497051>,  <30.623709, 32.121399, 46.820694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550222, 31.420015, 46.497051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339657, 31.696632, 46.299198>,  <30.213318, 31.862602, 46.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339657, 31.696632, 46.299198>,  <30.550222, 31.420015, 46.497051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339657, 31.696632, 46.299198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454633, -0.262657, -0.851070,
		-0.718468, -0.672890, -0.176131,
		-0.526415, 0.691542, -0.494629,
		30.181732, 31.904095, 46.150810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359650, 31.085060, 45.800484>,  <30.550222, 31.420015, 46.497051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359650, 31.085060, 45.800484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296349, 31.474070, 45.732189>,  <30.258368, 31.707476, 45.691212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296349, 31.474070, 45.732189>,  <30.359650, 31.085060, 45.800484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296349, 31.474070, 45.732189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299774, -0.117429, -0.946755,
		-0.940793, -0.201008, -0.272955,
		-0.158253, 0.972526, -0.170734,
		30.248873, 31.765827, 45.680969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967279, 31.156651, 45.221626>,  <30.359650, 31.085060, 45.800484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967279, 31.156651, 45.221626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101532, 31.533234, 45.234325>,  <30.182083, 31.759184, 45.241947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101532, 31.533234, 45.234325>,  <29.967279, 31.156651, 45.221626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101532, 31.533234, 45.234325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144317, -0.018081, -0.989366,
		-0.930872, 0.336646, -0.141937,
		0.335633, 0.941458, 0.031752,
		30.202221, 31.815670, 45.243851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677813, 31.421787, 44.601917>,  <29.967279, 31.156651, 45.221626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677813, 31.421787, 44.601917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966299, 31.683268, 44.693588>,  <30.139391, 31.840157, 44.748589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966299, 31.683268, 44.693588>,  <29.677813, 31.421787, 44.601917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966299, 31.683268, 44.693588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103661, 0.225263, -0.968768,
		-0.684910, 0.722448, 0.094700,
		0.721216, 0.653702, 0.229175,
		30.182665, 31.879377, 44.762341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512094, 32.047146, 44.271652>,  <29.677813, 31.421787, 44.601917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512094, 32.047146, 44.271652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903566, 32.071304, 44.350174>,  <30.138451, 32.085800, 44.397285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903566, 32.071304, 44.350174>,  <29.512094, 32.047146, 44.271652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903566, 32.071304, 44.350174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175359, 0.251842, -0.951748,
		-0.106916, 0.965882, 0.235882,
		0.978682, 0.060393, 0.196303,
		30.197170, 32.089424, 44.409065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731686, 32.573994, 43.903362>,  <29.512094, 32.047146, 44.271652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731686, 32.573994, 43.903362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071569, 32.367950, 43.948360>,  <30.275499, 32.244324, 43.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071569, 32.367950, 43.948360>,  <29.731686, 32.573994, 43.903362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071569, 32.367950, 43.948360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316014, 0.326767, -0.890707,
		0.422049, 0.792394, 0.440439,
		0.849712, -0.515106, 0.112495,
		30.326483, 32.213417, 43.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172155, 32.870220, 43.405220>,  <29.731686, 32.573994, 43.903362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172155, 32.870220, 43.405220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382072, 32.539341, 43.485565>,  <30.508022, 32.340813, 43.533772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382072, 32.539341, 43.485565>,  <30.172155, 32.870220, 43.405220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382072, 32.539341, 43.485565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296390, -0.043630, -0.954070,
		0.797964, 0.560221, 0.222275,
		0.524792, -0.827194, 0.200859,
		30.539511, 32.291183, 43.545822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750517, 32.919521, 42.965027>,  <30.172155, 32.870220, 43.405220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750517, 32.919521, 42.965027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744411, 32.533787, 43.070721>,  <30.740747, 32.302345, 43.134136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744411, 32.533787, 43.070721>,  <30.750517, 32.919521, 42.965027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744411, 32.533787, 43.070721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478141, -0.239129, -0.845102,
		0.878150, 0.113439, 0.464741,
		-0.015266, -0.964339, 0.264231,
		30.739832, 32.244484, 43.149990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443617, 32.668640, 42.936512>,  <30.750517, 32.919521, 42.965027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443617, 32.668640, 42.936512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171837, 32.380669, 42.879875>,  <31.008770, 32.207886, 42.845894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171837, 32.380669, 42.879875>,  <31.443617, 32.668640, 42.936512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171837, 32.380669, 42.879875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394064, -0.195274, -0.898099,
		0.618921, -0.666007, 0.416378,
		-0.679448, -0.719932, -0.141590,
		30.968002, 32.164688, 42.837399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633987, 32.511269, 42.313480>,  <31.443617, 32.668640, 42.936512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633987, 32.511269, 42.313480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318121, 32.268429, 42.348927>,  <31.128601, 32.122723, 42.370193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318121, 32.268429, 42.348927>,  <31.633987, 32.511269, 42.313480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318121, 32.268429, 42.348927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198243, -0.389158, -0.899587,
		0.580626, -0.692807, 0.427659,
		-0.789666, -0.607104, 0.088611,
		31.081221, 32.086296, 42.375511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844055, 31.856514, 42.153427>,  <31.633987, 32.511269, 42.313480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844055, 31.856514, 42.153427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448799, 31.880133, 42.096733>,  <31.211645, 31.894304, 42.062717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448799, 31.880133, 42.096733>,  <31.844055, 31.856514, 42.153427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448799, 31.880133, 42.096733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118683, -0.291930, -0.949047,
		-0.097413, -0.954615, 0.281461,
		-0.988142, 0.059045, -0.141735,
		31.152357, 31.897846, 42.054211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677460, 31.284781, 41.808159>,  <31.844055, 31.856514, 42.153427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677460, 31.284781, 41.808159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374472, 31.531841, 41.723553>,  <31.192678, 31.680079, 41.672787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374472, 31.531841, 41.723553>,  <31.677460, 31.284781, 41.808159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374472, 31.531841, 41.723553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030107, -0.290595, -0.956372,
		-0.652173, -0.730794, 0.201522,
		-0.757472, 0.617653, -0.211520,
		31.147230, 31.717136, 41.660095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259552, 30.837921, 41.447479>,  <31.677460, 31.284781, 41.808159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259552, 30.837921, 41.447479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181141, 31.217340, 41.348015>,  <31.134094, 31.444992, 41.288338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181141, 31.217340, 41.348015>,  <31.259552, 30.837921, 41.447479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181141, 31.217340, 41.348015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290864, -0.185919, -0.938527,
		-0.936467, -0.256305, -0.239453,
		-0.196030, 0.948547, -0.248657,
		31.122332, 31.501905, 41.273418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935947, 30.753492, 40.822178>,  <31.259552, 30.837921, 41.447479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935947, 30.753492, 40.822178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004318, 31.145573, 40.782200>,  <31.045340, 31.380821, 40.758213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004318, 31.145573, 40.782200>,  <30.935947, 30.753492, 40.822178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004318, 31.145573, 40.782200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049272, -0.109819, -0.992730,
		-0.984051, 0.164758, -0.067067,
		0.170926, 0.980201, -0.099949,
		31.055595, 31.439632, 40.752216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371338, 31.081062, 40.376968>,  <30.935947, 30.753492, 40.822178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371338, 31.081062, 40.376968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674549, 31.341368, 40.359531>,  <30.856476, 31.497551, 40.349068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674549, 31.341368, 40.359531>,  <30.371338, 31.081062, 40.376968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674549, 31.341368, 40.359531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092000, -0.172854, -0.980641,
		-0.645703, 0.739341, -0.190898,
		0.758026, 0.650766, -0.043592,
		30.901957, 31.536598, 40.346455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243826, 31.473486, 39.771713>,  <30.371338, 31.081062, 40.376968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243826, 31.473486, 39.771713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631218, 31.530779, 39.853230>,  <30.863653, 31.565155, 39.902138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631218, 31.530779, 39.853230>,  <30.243826, 31.473486, 39.771713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631218, 31.530779, 39.853230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166870, 0.234342, -0.957726,
		-0.184936, 0.961545, 0.203054,
		0.968480, 0.143234, 0.203791,
		30.921762, 31.573750, 39.914368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297159, 32.154907, 39.468609>,  <30.243826, 31.473486, 39.771713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297159, 32.154907, 39.468609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661451, 31.990942, 39.488781>,  <30.880026, 31.892563, 39.500885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661451, 31.990942, 39.488781>,  <30.297159, 32.154907, 39.468609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661451, 31.990942, 39.488781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075375, 0.044925, -0.996143,
		0.406066, 0.911018, 0.071811,
		0.910730, -0.409912, 0.050426,
		30.934669, 31.867968, 39.503910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744118, 32.611332, 39.067181>,  <30.297159, 32.154907, 39.468609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744118, 32.611332, 39.067181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900301, 32.244167, 39.095417>,  <30.994011, 32.023869, 39.112358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900301, 32.244167, 39.095417>,  <30.744118, 32.611332, 39.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900301, 32.244167, 39.095417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261859, 0.037228, -0.964388,
		0.882594, 0.395036, 0.254900,
		0.390458, -0.917911, 0.070586,
		31.017439, 31.968794, 39.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312922, 32.689194, 38.709873>,  <30.744118, 32.611332, 39.067181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312922, 32.689194, 38.709873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268930, 32.292038, 38.728069>,  <31.242537, 32.053745, 38.738987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268930, 32.292038, 38.728069>,  <31.312922, 32.689194, 38.709873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268930, 32.292038, 38.728069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238488, -0.070792, -0.968562,
		0.964898, -0.095669, 0.244579,
		-0.109976, -0.992893, 0.045491,
		31.235937, 31.994169, 38.741718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818249, 32.443207, 38.179863>,  <31.312922, 32.689194, 38.709873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818249, 32.443207, 38.179863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598127, 32.117123, 38.252075>,  <31.466055, 31.921471, 38.295403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598127, 32.117123, 38.252075>,  <31.818249, 32.443207, 38.179863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598127, 32.117123, 38.252075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210263, -0.344549, -0.914918,
		0.808057, -0.465523, 0.361017,
		-0.550303, -0.815214, 0.180533,
		31.433037, 31.872559, 38.306236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260517, 31.832483, 38.068611>,  <31.818249, 32.443207, 38.179863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260517, 31.832483, 38.068611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869038, 31.774942, 38.010014>,  <31.634151, 31.740417, 37.974857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869038, 31.774942, 38.010014>,  <32.260517, 31.832483, 38.068611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869038, 31.774942, 38.010014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182857, -0.286258, -0.940542,
		0.093366, -0.947292, 0.306464,
		-0.978696, -0.143854, -0.146492,
		31.575428, 31.731787, 37.966064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196632, 31.261728, 37.650177>,  <32.260517, 31.832483, 38.068611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196632, 31.261728, 37.650177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824490, 31.406139, 37.624554>,  <31.601204, 31.492786, 37.609180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824490, 31.406139, 37.624554>,  <32.196632, 31.261728, 37.650177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824490, 31.406139, 37.624554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087375, -0.387953, -0.917528,
		-0.356098, -0.848030, 0.392478,
		-0.930355, 0.361022, -0.064053,
		31.545383, 31.514446, 37.605339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809755, 30.697630, 37.420609>,  <32.196632, 31.261728, 37.650177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809755, 30.697630, 37.420609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653318, 31.054998, 37.332203>,  <31.559456, 31.269419, 37.279160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653318, 31.054998, 37.332203>,  <31.809755, 30.697630, 37.420609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653318, 31.054998, 37.332203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094977, -0.278041, -0.955862,
		-0.915437, -0.352840, 0.193594,
		-0.391093, 0.893419, -0.221017,
		31.535990, 31.323025, 37.265896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377357, 30.573364, 36.877605>,  <31.809755, 30.697630, 37.420609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377357, 30.573364, 36.877605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388369, 30.971369, 36.839249>,  <31.394976, 31.210171, 36.816235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388369, 30.971369, 36.839249>,  <31.377357, 30.573364, 36.877605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388369, 30.971369, 36.839249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113526, -0.092193, -0.989248,
		-0.993154, 0.038119, 0.110421,
		0.027529, 0.995011, -0.095889,
		31.396627, 31.269873, 36.810482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768940, 30.876719, 36.490055>,  <31.377357, 30.573364, 36.877605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768940, 30.876719, 36.490055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072788, 31.133232, 36.446732>,  <31.255096, 31.287140, 36.420738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072788, 31.133232, 36.446732>,  <30.768940, 30.876719, 36.490055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072788, 31.133232, 36.446732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188896, 0.058192, -0.980271,
		-0.622330, 0.765094, 0.165340,
		0.759621, 0.641284, -0.108308,
		31.300674, 31.325617, 36.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493597, 31.363674, 36.093254>,  <30.768940, 30.876719, 36.490055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493597, 31.363674, 36.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880459, 31.465073, 36.085773>,  <31.112576, 31.525911, 36.081287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880459, 31.465073, 36.085773>,  <30.493597, 31.363674, 36.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880459, 31.465073, 36.085773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063145, 0.168350, -0.983703,
		-0.246218, 0.952574, 0.178827,
		0.967155, 0.253497, -0.018700,
		31.170605, 31.541122, 36.080162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617067, 32.092682, 35.943657>,  <30.493597, 31.363674, 36.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617067, 32.092682, 35.943657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961550, 31.905350, 35.864666>,  <31.168240, 31.792952, 35.817272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961550, 31.905350, 35.864666>,  <30.617067, 32.092682, 35.943657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961550, 31.905350, 35.864666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017154, 0.415092, -0.909618,
		0.507968, 0.779980, 0.365513,
		0.861205, -0.468327, -0.197474,
		31.219912, 31.764853, 35.805424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988474, 32.594551, 35.503124>,  <30.617067, 32.092682, 35.943657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988474, 32.594551, 35.503124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195103, 32.255554, 35.454273>,  <31.319080, 32.052155, 35.424965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195103, 32.255554, 35.454273>,  <30.988474, 32.594551, 35.503124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195103, 32.255554, 35.454273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324423, 0.325716, -0.888065,
		0.792404, 0.419129, 0.443200,
		0.516571, -0.847491, -0.122124,
		31.350075, 32.001308, 35.417637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726467, 32.672432, 35.515396>,  <30.988474, 32.594551, 35.503124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726467, 32.672432, 35.515396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661087, 32.347969, 35.290787>,  <31.621859, 32.153290, 35.156021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661087, 32.347969, 35.290787>,  <31.726467, 32.672432, 35.515396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661087, 32.347969, 35.290787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454201, 0.443393, -0.772725,
		0.875777, -0.381344, 0.295957,
		-0.163449, -0.811159, -0.561520,
		31.612053, 32.104622, 35.122330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342186, 32.662598, 35.216816>,  <31.726467, 32.672432, 35.515396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342186, 32.662598, 35.216816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086803, 32.451630, 34.992599>,  <31.933573, 32.325050, 34.858070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086803, 32.451630, 34.992599>,  <32.342186, 32.662598, 35.216816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086803, 32.451630, 34.992599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321997, 0.478456, -0.816944,
		0.699064, -0.702076, -0.135647,
		-0.638458, -0.527418, -0.560538,
		31.895266, 32.293404, 34.824440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005291, 33.043571, 35.096272>,  <32.342186, 32.662598, 35.216816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005291, 33.043571, 35.096272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386383, 33.159340, 35.059311>,  <33.615040, 33.228802, 35.037136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386383, 33.159340, 35.059311>,  <33.005291, 33.043571, 35.096272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386383, 33.159340, 35.059311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207507, -0.397773, 0.893710,
		0.221904, -0.870639, -0.439028,
		0.952732, 0.289419, -0.092397,
		33.672203, 33.246166, 35.031593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386082, 32.486309, 35.240864>,  <33.005291, 33.043571, 35.096272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386082, 32.486309, 35.240864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632095, 32.789127, 35.329067>,  <33.779705, 32.970818, 35.381989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632095, 32.789127, 35.329067>,  <33.386082, 32.486309, 35.240864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632095, 32.789127, 35.329067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246066, -0.449961, 0.858479,
		0.749124, -0.473733, -0.463023,
		0.615033, 0.757041, 0.220507,
		33.816605, 33.016239, 35.395218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900711, 32.130287, 35.637135>,  <33.386082, 32.486309, 35.240864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900711, 32.130287, 35.637135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942642, 32.516285, 35.733292>,  <33.967800, 32.747883, 35.790985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942642, 32.516285, 35.733292>,  <33.900711, 32.130287, 35.637135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942642, 32.516285, 35.733292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101567, -0.250850, 0.962683,
		0.989290, -0.076500, -0.124308,
		0.104828, 0.964999, 0.240394,
		33.974091, 32.805786, 35.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472961, 32.125717, 36.047276>,  <33.900711, 32.130287, 35.637135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472961, 32.125717, 36.047276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307877, 32.474693, 36.151974>,  <34.208828, 32.684078, 36.214794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307877, 32.474693, 36.151974>,  <34.472961, 32.125717, 36.047276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307877, 32.474693, 36.151974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193368, -0.196891, 0.961167,
		0.890101, 0.447296, -0.087444,
		-0.412710, 0.872445, 0.261746,
		34.184063, 32.736427, 36.230499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924194, 32.437855, 36.535374>,  <34.472961, 32.125717, 36.047276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924194, 32.437855, 36.535374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564789, 32.596348, 36.610924>,  <34.349144, 32.691444, 36.656254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564789, 32.596348, 36.610924>,  <34.924194, 32.437855, 36.535374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564789, 32.596348, 36.610924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138568, -0.152235, 0.978582,
		0.416497, 0.905442, 0.081881,
		-0.898515, 0.396231, 0.188871,
		34.295235, 32.715218, 36.667583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053635, 32.789181, 37.154968>,  <34.924194, 32.437855, 36.535374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053635, 32.789181, 37.154968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654610, 32.761513, 37.151104>,  <34.415195, 32.744911, 37.148785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654610, 32.761513, 37.151104>,  <35.053635, 32.789181, 37.154968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654610, 32.761513, 37.151104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006700, -0.042941, 0.999055,
		-0.069522, 0.996680, 0.042373,
		-0.997558, -0.069172, -0.009663,
		34.355343, 32.740761, 37.148205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773170, 33.203476, 37.652817>,  <35.053635, 32.789181, 37.154968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773170, 33.203476, 37.652817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473846, 32.940693, 37.616062>,  <34.294250, 32.783024, 37.594009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473846, 32.940693, 37.616062>,  <34.773170, 33.203476, 37.652817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473846, 32.940693, 37.616062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077521, -0.050961, 0.995687,
		-0.658805, 0.752205, -0.012794,
		-0.748309, -0.656956, -0.091885,
		34.249355, 32.743607, 37.588497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204338, 33.409466, 38.174049>,  <34.773170, 33.203476, 37.652817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204338, 33.409466, 38.174049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116905, 33.029808, 38.083405>,  <34.064445, 32.802013, 38.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116905, 33.029808, 38.083405>,  <34.204338, 33.409466, 38.174049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116905, 33.029808, 38.083405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016043, -0.228702, 0.973364,
		-0.975686, 0.216397, 0.034764,
		-0.218584, -0.949140, -0.226613,
		34.051331, 32.745068, 38.015419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686852, 33.325436, 38.499023>,  <34.204338, 33.409466, 38.174049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686852, 33.325436, 38.499023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832371, 32.956429, 38.447475>,  <33.919682, 32.735023, 38.416546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832371, 32.956429, 38.447475>,  <33.686852, 33.325436, 38.499023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832371, 32.956429, 38.447475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176485, -0.204111, 0.962908,
		-0.914606, -0.327561, -0.237067,
		0.363799, -0.922520, -0.128872,
		33.941509, 32.679672, 38.408813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301151, 32.939049, 38.912598>,  <33.686852, 33.325436, 38.499023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301151, 32.939049, 38.912598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585472, 32.676254, 38.812099>,  <33.756065, 32.518578, 38.751801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585472, 32.676254, 38.812099>,  <33.301151, 32.939049, 38.912598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585472, 32.676254, 38.812099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015447, -0.371692, 0.928228,
		-0.703220, -0.655908, -0.274349,
		0.710805, -0.656986, -0.251249,
		33.798714, 32.479160, 38.736725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979580, 32.326534, 39.127304>,  <33.301151, 32.939049, 38.912598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979580, 32.326534, 39.127304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370998, 32.252312, 39.091488>,  <33.605850, 32.207779, 39.070000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370998, 32.252312, 39.091488>,  <32.979580, 32.326534, 39.127304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370998, 32.252312, 39.091488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036241, -0.272802, 0.961387,
		-0.202815, -0.944007, -0.260225,
		0.978546, -0.185553, -0.089540,
		33.664562, 32.196644, 39.064625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103493, 31.586330, 39.383106>,  <32.979580, 32.326534, 39.127304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103493, 31.586330, 39.383106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448917, 31.783613, 39.425072>,  <33.656174, 31.901983, 39.450253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448917, 31.783613, 39.425072>,  <33.103493, 31.586330, 39.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448917, 31.783613, 39.425072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010975, -0.226398, 0.973973,
		0.504122, -0.839935, -0.200922,
		0.863563, 0.493206, 0.104914,
		33.707985, 31.931576, 39.456547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530609, 31.216267, 39.731350>,  <33.103493, 31.586330, 39.383106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530609, 31.216267, 39.731350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670868, 31.583456, 39.805508>,  <33.755024, 31.803770, 39.850002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670868, 31.583456, 39.805508>,  <33.530609, 31.216267, 39.731350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670868, 31.583456, 39.805508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030269, -0.208965, 0.977455,
		0.936018, -0.337131, -0.101059,
		0.350648, 0.917974, 0.185390,
		33.776062, 31.858849, 39.861126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582825, 31.076807, 40.501247>,  <33.530609, 31.216267, 39.731350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582825, 31.076807, 40.501247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702637, 31.457846, 40.479939>,  <33.774525, 31.686470, 40.467155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702637, 31.457846, 40.479939>,  <33.582825, 31.076807, 40.501247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702637, 31.457846, 40.479939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133570, 0.013414, 0.990949,
		0.944691, -0.303933, -0.123221,
		0.299529, 0.952599, -0.053269,
		33.792496, 31.743626, 40.463959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364799, 31.154797, 40.822506>,  <33.582825, 31.076807, 40.501247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364799, 31.154797, 40.822506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136673, 31.483055, 40.836830>,  <33.999798, 31.680010, 40.845425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136673, 31.483055, 40.836830>,  <34.364799, 31.154797, 40.822506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136673, 31.483055, 40.836830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153780, 0.063840, 0.986041,
		0.806902, 0.567863, -0.162608,
		-0.570317, 0.820644, 0.035813,
		33.965576, 31.729248, 40.847572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607254, 31.465729, 41.434746>,  <34.364799, 31.154797, 40.822506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607254, 31.465729, 41.434746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264122, 31.663507, 41.378685>,  <34.058243, 31.782175, 41.345047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264122, 31.663507, 41.378685>,  <34.607254, 31.465729, 41.434746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264122, 31.663507, 41.378685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061039, 0.172762, 0.983070,
		0.510288, 0.851867, -0.118021,
		-0.857834, 0.494445, -0.140155,
		34.006771, 31.811842, 41.336639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567024, 32.265247, 41.604313>,  <34.607254, 31.465729, 41.434746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567024, 32.265247, 41.604313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199230, 32.109852, 41.628403>,  <33.978554, 32.016613, 41.642857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199230, 32.109852, 41.628403>,  <34.567024, 32.265247, 41.604313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199230, 32.109852, 41.628403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094875, 0.367947, 0.924994,
		-0.381513, 0.844801, -0.375178,
		-0.919482, -0.388492, 0.060226,
		33.923386, 31.993303, 41.646469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087383, 32.765301, 41.950481>,  <34.567024, 32.265247, 41.604313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087383, 32.765301, 41.950481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870827, 32.430244, 41.979465>,  <33.740894, 32.229210, 41.996857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870827, 32.430244, 41.979465>,  <34.087383, 32.765301, 41.950481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870827, 32.430244, 41.979465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356588, 0.306807, 0.882448,
		-0.761406, 0.451913, -0.464796,
		-0.541392, -0.837642, 0.072458,
		33.708408, 32.178951, 42.001202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518066, 33.048809, 42.346092>,  <34.087383, 32.765301, 41.950481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518066, 33.048809, 42.346092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500988, 32.650639, 42.380280>,  <33.490742, 32.411736, 42.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500988, 32.650639, 42.380280>,  <33.518066, 33.048809, 42.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500988, 32.650639, 42.380280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435031, 0.095533, 0.895333,
		-0.899402, 0.001050, -0.437120,
		-0.042700, -0.995426, 0.085466,
		33.488178, 32.352013, 42.405918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831959, 32.899948, 42.620762>,  <33.518066, 33.048809, 42.346092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831959, 32.899948, 42.620762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068520, 32.594772, 42.725193>,  <33.210457, 32.411667, 42.787853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068520, 32.594772, 42.725193>,  <32.831959, 32.899948, 42.620762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068520, 32.594772, 42.725193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467580, -0.060674, 0.881866,
		-0.656973, -0.643613, -0.392619,
		0.591402, -0.762943, 0.261079,
		33.245941, 32.365891, 42.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406998, 32.554886, 43.022175>,  <32.831959, 32.899948, 42.620762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406998, 32.554886, 43.022175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761852, 32.394695, 43.113922>,  <32.974766, 32.298580, 43.168968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761852, 32.394695, 43.113922>,  <32.406998, 32.554886, 43.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761852, 32.394695, 43.113922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272369, -0.053114, 0.960726,
		-0.372564, -0.914767, -0.156196,
		0.887137, -0.400474, 0.229366,
		33.027992, 32.274551, 43.182732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205593, 32.078640, 43.488007>,  <32.406998, 32.554886, 43.022175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205593, 32.078640, 43.488007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588627, 32.177662, 43.546989>,  <32.818447, 32.237076, 43.582378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588627, 32.177662, 43.546989>,  <32.205593, 32.078640, 43.488007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588627, 32.177662, 43.546989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148264, -0.015501, 0.988826,
		0.247074, -0.968750, 0.021860,
		0.957587, 0.247555, 0.147461,
		32.875904, 32.251926, 43.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340420, 31.718306, 44.038445>,  <32.205593, 32.078640, 43.488007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340420, 31.718306, 44.038445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652031, 31.969099, 44.037601>,  <32.838997, 32.119576, 44.037094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652031, 31.969099, 44.037601>,  <32.340420, 31.718306, 44.038445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652031, 31.969099, 44.037601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149222, 0.188678, 0.970636,
		0.608974, -0.755837, 0.240545,
		0.779028, 0.626986, -0.002112,
		32.885738, 32.157196, 44.036968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800190, 31.489288, 44.627003>,  <32.340420, 31.718306, 44.038445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800190, 31.489288, 44.627003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873924, 31.877136, 44.562683>,  <32.918163, 32.109844, 44.524090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873924, 31.877136, 44.562683>,  <32.800190, 31.489288, 44.627003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873924, 31.877136, 44.562683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241165, 0.203221, 0.948968,
		0.952817, -0.136146, 0.271299,
		0.184332, 0.969621, -0.160799,
		32.929222, 32.168022, 44.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373447, 31.783070, 45.128147>,  <32.800190, 31.489288, 44.627003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373447, 31.783070, 45.128147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164040, 32.099777, 45.002274>,  <33.038395, 32.289803, 44.926750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164040, 32.099777, 45.002274>,  <33.373447, 31.783070, 45.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164040, 32.099777, 45.002274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120453, 0.296852, 0.947296,
		0.843456, 0.533832, -0.060037,
		-0.523519, 0.791771, -0.314683,
		33.006985, 32.337307, 44.907867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714008, 32.448120, 45.394379>,  <33.373447, 31.783070, 45.128147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714008, 32.448120, 45.394379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336582, 32.535271, 45.294601>,  <33.110126, 32.587563, 45.234737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336582, 32.535271, 45.294601>,  <33.714008, 32.448120, 45.394379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336582, 32.535271, 45.294601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125157, 0.462737, 0.877616,
		0.306638, 0.859304, -0.409352,
		-0.943562, 0.217877, -0.249440,
		33.053513, 32.600636, 45.219769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565105, 33.293537, 45.544754>,  <33.714008, 32.448120, 45.394379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565105, 33.293537, 45.544754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220699, 33.091476, 45.521210>,  <33.014053, 32.970238, 45.507084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220699, 33.091476, 45.521210>,  <33.565105, 33.293537, 45.544754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220699, 33.091476, 45.521210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327315, 0.461849, 0.824355,
		-0.389244, 0.729051, -0.563005,
		-0.861020, -0.505155, -0.058857,
		32.962395, 32.939930, 45.503551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120708, 33.812088, 45.613068>,  <33.565105, 33.293537, 45.544754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120708, 33.812088, 45.613068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897507, 33.488636, 45.687618>,  <32.763584, 33.294563, 45.732349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897507, 33.488636, 45.687618>,  <33.120708, 33.812088, 45.613068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897507, 33.488636, 45.687618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522751, 0.516967, 0.677847,
		-0.644483, 0.280813, -0.711186,
		-0.558009, -0.808634, 0.186381,
		32.730103, 33.246044, 45.743534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375420, 33.999004, 45.579563>,  <33.120708, 33.812088, 45.613068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375420, 33.999004, 45.579563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401180, 33.668678, 45.803665>,  <32.416637, 33.470482, 45.938126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401180, 33.668678, 45.803665>,  <32.375420, 33.999004, 45.579563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401180, 33.668678, 45.803665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675173, 0.377356, 0.633832,
		-0.734842, -0.419091, -0.533263,
		0.064404, -0.825811, 0.560257,
		32.420502, 33.420937, 45.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738827, 33.931725, 45.744774>,  <32.375420, 33.999004, 45.579563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738827, 33.931725, 45.744774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944397, 33.729698, 46.022133>,  <32.067738, 33.608482, 46.188549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944397, 33.729698, 46.022133>,  <31.738827, 33.931725, 45.744774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944397, 33.729698, 46.022133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613601, 0.348436, 0.708581,
		-0.599481, -0.789623, -0.130837,
		0.513924, -0.505062, 0.693394,
		32.098576, 33.578178, 46.230152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274961, 33.621498, 46.256622>,  <31.738827, 33.931725, 45.744774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274961, 33.621498, 46.256622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628828, 33.624554, 46.443089>,  <31.841148, 33.626385, 46.554970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628828, 33.624554, 46.443089>,  <31.274961, 33.621498, 46.256622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628828, 33.624554, 46.443089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445202, 0.310718, 0.839791,
		-0.138434, -0.950471, 0.278280,
		0.884664, 0.007635, 0.466166,
		31.894228, 33.626846, 46.582939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161661, 33.239277, 46.859997>,  <31.274961, 33.621498, 46.256622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161661, 33.239277, 46.859997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482449, 33.469463, 46.924099>,  <31.674921, 33.607574, 46.962559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.482449, 33.469463, 46.924099>,  <31.161661, 33.239277, 46.859997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482449, 33.469463, 46.924099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424259, 0.359832, 0.830979,
		0.420540, -0.734406, 0.532722,
		0.801966, 0.575472, 0.160255,
		31.723040, 33.642105, 46.972176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202854, 33.288067, 47.556007>,  <31.161661, 33.239277, 46.859997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202854, 33.288067, 47.556007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447363, 33.583889, 47.443295>,  <31.594069, 33.761383, 47.375668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447363, 33.583889, 47.443295>,  <31.202854, 33.288067, 47.556007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447363, 33.583889, 47.443295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407256, 0.599228, 0.689252,
		0.678594, -0.306561, 0.667480,
		0.611270, 0.739558, -0.281783,
		31.630745, 33.805756, 47.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483496, 33.570511, 48.167759>,  <31.202854, 33.288067, 47.556007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483496, 33.570511, 48.167759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543289, 33.846703, 47.884663>,  <31.579165, 34.012417, 47.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543289, 33.846703, 47.884663>,  <31.483496, 33.570511, 48.167759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543289, 33.846703, 47.884663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337248, 0.708466, 0.619951,
		0.929472, 0.146013, 0.338764,
		0.149482, 0.690475, -0.707742,
		31.588135, 34.053844, 47.672340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959553, 34.176125, 48.390144>,  <31.483496, 33.570511, 48.167759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959553, 34.176125, 48.390144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727934, 34.321392, 48.098167>,  <31.588963, 34.408550, 47.922981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727934, 34.321392, 48.098167>,  <31.959553, 34.176125, 48.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727934, 34.321392, 48.098167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245918, 0.775814, 0.581066,
		0.777323, 0.515970, -0.359922,
		-0.579045, 0.363164, -0.729944,
		31.554220, 34.430340, 47.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957985, 34.848499, 48.499172>,  <31.959553, 34.176125, 48.390144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957985, 34.848499, 48.499172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645185, 34.841434, 48.249962>,  <31.457506, 34.837196, 48.100433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645185, 34.841434, 48.249962>,  <31.957985, 34.848499, 48.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645185, 34.841434, 48.249962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549041, 0.492651, 0.675166,
		0.295013, 0.870048, -0.394948,
		-0.781999, -0.017659, -0.623030,
		31.410585, 34.836136, 48.063053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885384, 35.521500, 48.441837>,  <31.957985, 34.848499, 48.499172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885384, 35.521500, 48.441837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548027, 35.313759, 48.386749>,  <31.345613, 35.189114, 48.353699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548027, 35.313759, 48.386749>,  <31.885384, 35.521500, 48.441837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548027, 35.313759, 48.386749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458483, 0.561996, 0.688443,
		-0.280145, 0.643769, -0.712096,
		-0.843393, -0.519348, -0.137717,
		31.295010, 35.157955, 48.345432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576725, 36.000141, 48.920109>,  <31.885384, 35.521500, 48.441837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576725, 36.000141, 48.920109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518692, 36.364376, 48.765305>,  <31.483871, 36.582916, 48.672421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518692, 36.364376, 48.765305>,  <31.576725, 36.000141, 48.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518692, 36.364376, 48.765305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776122, -0.137862, -0.615328,
		-0.613666, -0.389639, -0.686728,
		-0.145082, 0.910591, -0.387009,
		31.475166, 36.637554, 48.649200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426939, 36.083351, 48.109428>,  <31.576725, 36.000141, 48.920109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426939, 36.083351, 48.109428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613491, 36.406601, 48.253334>,  <31.725422, 36.600552, 48.339676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613491, 36.406601, 48.253334>,  <31.426939, 36.083351, 48.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613491, 36.406601, 48.253334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706455, -0.095506, -0.701284,
		-0.532362, 0.581224, -0.615443,
		0.466381, 0.808120, 0.359765,
		31.753405, 36.649036, 48.361263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624056, 36.500450, 47.538078>,  <31.426939, 36.083351, 48.109428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624056, 36.500450, 47.538078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871424, 36.604881, 47.834564>,  <32.019844, 36.667542, 48.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871424, 36.604881, 47.834564>,  <31.624056, 36.500450, 47.538078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871424, 36.604881, 47.834564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785801, -0.215731, -0.579635,
		0.008573, 0.940903, -0.338568,
		0.618420, 0.261078, 0.741212,
		32.056950, 36.683205, 48.056927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053696, 37.008667, 47.255737>,  <31.624056, 36.500450, 47.538078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053696, 37.008667, 47.255737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241055, 36.835423, 47.563766>,  <32.353470, 36.731476, 47.748585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241055, 36.835423, 47.563766>,  <32.053696, 37.008667, 47.255737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241055, 36.835423, 47.563766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769164, -0.228973, -0.596623,
		0.434732, 0.871770, 0.225886,
		0.468396, -0.433114, 0.770076,
		32.381573, 36.705490, 47.794788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569374, 37.391357, 47.390785>,  <32.053696, 37.008667, 47.255737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569374, 37.391357, 47.390785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667923, 37.020210, 47.502762>,  <32.727055, 36.797523, 47.569946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667923, 37.020210, 47.502762>,  <32.569374, 37.391357, 47.390785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667923, 37.020210, 47.502762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730771, -0.011878, -0.682520,
		0.636611, 0.372728, 0.675130,
		0.246375, -0.927865, 0.279940,
		32.741837, 36.741852, 47.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875145, 37.086891, 46.854553>,  <32.569374, 37.391357, 47.390785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875145, 37.086891, 46.854553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988934, 36.800758, 47.109856>,  <33.057205, 36.629078, 47.263039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988934, 36.800758, 47.109856>,  <32.875145, 37.086891, 46.854553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988934, 36.800758, 47.109856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722241, -0.277895, -0.633358,
		0.630432, 0.641147, 0.437591,
		0.284471, -0.715336, 0.638256,
		33.074276, 36.586159, 47.301334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552635, 37.113228, 46.958797>,  <32.875145, 37.086891, 46.854553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552635, 37.113228, 46.958797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476181, 36.736942, 47.070881>,  <33.430309, 36.511169, 47.138130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476181, 36.736942, 47.070881>,  <33.552635, 37.113228, 46.958797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476181, 36.736942, 47.070881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720165, -0.328375, -0.611173,
		0.666955, 0.084980, 0.740237,
		-0.191138, -0.940717, 0.280211,
		33.418839, 36.454727, 47.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250210, 36.845421, 47.106594>,  <33.552635, 37.113228, 46.958797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250210, 36.845421, 47.106594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004749, 36.534790, 47.049519>,  <33.857471, 36.348412, 47.015274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004749, 36.534790, 47.049519>,  <34.250210, 36.845421, 47.106594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004749, 36.534790, 47.049519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633334, -0.376201, -0.676284,
		0.471506, -0.505374, 0.722689,
		-0.613653, -0.776575, -0.142690,
		33.820652, 36.301819, 47.006710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739853, 36.472092, 46.758194>,  <34.250210, 36.845421, 47.106594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739853, 36.472092, 46.758194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399376, 36.264030, 46.730186>,  <34.195087, 36.139194, 46.713383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399376, 36.264030, 46.730186>,  <34.739853, 36.472092, 46.758194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399376, 36.264030, 46.730186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425330, -0.605468, -0.672683,
		0.307505, -0.602367, 0.736610,
		-0.851196, -0.520156, -0.070020,
		34.144016, 36.107983, 46.709179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916470, 35.696270, 46.851170>,  <34.739853, 36.472092, 46.758194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916470, 35.696270, 46.851170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579857, 35.777328, 46.650867>,  <34.377888, 35.825962, 46.530685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579857, 35.777328, 46.650867>,  <34.916470, 35.696270, 46.851170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579857, 35.777328, 46.650867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297590, -0.599734, -0.742805,
		-0.450848, -0.774115, 0.444390,
		-0.841532, 0.202646, -0.500757,
		34.327396, 35.838123, 46.500641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661289, 35.039211, 46.599781>,  <34.916470, 35.696270, 46.851170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661289, 35.039211, 46.599781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501274, 35.329647, 46.376076>,  <34.405266, 35.503906, 46.241852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501274, 35.329647, 46.376076>,  <34.661289, 35.039211, 46.599781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501274, 35.329647, 46.376076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269096, -0.490267, -0.828990,
		-0.876105, -0.482119, 0.000737,
		-0.400034, 0.726085, -0.559262,
		34.381264, 35.547474, 46.208298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196041, 34.696877, 46.042511>,  <34.661289, 35.039211, 46.599781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196041, 34.696877, 46.042511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326145, 35.057220, 45.927509>,  <34.404205, 35.273426, 45.858509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326145, 35.057220, 45.927509>,  <34.196041, 34.696877, 46.042511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326145, 35.057220, 45.927509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352076, -0.397548, -0.847348,
		-0.877640, 0.174380, -0.446475,
		0.325256, 0.900859, -0.287509,
		34.423721, 35.327477, 45.841255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802296, 34.972832, 45.466854>,  <34.196041, 34.696877, 46.042511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802296, 34.972832, 45.466854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189655, 35.071041, 45.484371>,  <34.422070, 35.129967, 45.494881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189655, 35.071041, 45.484371>,  <33.802296, 34.972832, 45.466854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189655, 35.071041, 45.484371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154384, -0.452238, -0.878434,
		-0.195873, 0.857437, -0.475852,
		0.968400, 0.245526, 0.043793,
		34.480175, 35.144699, 45.497509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992023, 35.385963, 44.856709>,  <33.802296, 34.972832, 45.466854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992023, 35.385963, 44.856709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323456, 35.207245, 44.991661>,  <34.522316, 35.100014, 45.072632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323456, 35.207245, 44.991661>,  <33.992023, 35.385963, 44.856709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323456, 35.207245, 44.991661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228902, -0.279601, -0.932431,
		0.510942, 0.849820, -0.129399,
		0.828579, -0.446798, 0.337385,
		34.572029, 35.073204, 45.092876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457069, 35.493851, 44.319538>,  <33.992023, 35.385963, 44.856709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457069, 35.493851, 44.319538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623951, 35.189793, 44.518787>,  <34.724079, 35.007359, 44.638336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623951, 35.189793, 44.518787>,  <34.457069, 35.493851, 44.319538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623951, 35.189793, 44.518787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337029, -0.379610, -0.861573,
		0.844008, 0.527335, 0.097814,
		0.417207, -0.760141, 0.498121,
		34.749111, 34.961750, 44.668224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079647, 35.440197, 44.086456>,  <34.457069, 35.493851, 44.319538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079647, 35.440197, 44.086456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006840, 35.075581, 44.233944>,  <34.963158, 34.856812, 44.322437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006840, 35.075581, 44.233944>,  <35.079647, 35.440197, 44.086456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006840, 35.075581, 44.233944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330922, -0.409900, -0.849984,
		0.925938, -0.032692, 0.376258,
		-0.182016, -0.911545, 0.368723,
		34.952236, 34.802116, 44.344563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551773, 34.993874, 43.810833>,  <35.079647, 35.440197, 44.086456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551773, 34.993874, 43.810833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317715, 34.697021, 43.941582>,  <35.177280, 34.518909, 44.020031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317715, 34.697021, 43.941582>,  <35.551773, 34.993874, 43.810833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317715, 34.697021, 43.941582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237321, -0.542153, -0.806070,
		0.775427, -0.394092, 0.493360,
		-0.585143, -0.742133, 0.326874,
		35.142174, 34.474380, 44.039642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971523, 34.365639, 43.938847>,  <35.551773, 34.993874, 43.810833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971523, 34.365639, 43.938847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599365, 34.244434, 43.856346>,  <35.376068, 34.171711, 43.806847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599365, 34.244434, 43.856346>,  <35.971523, 34.365639, 43.938847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599365, 34.244434, 43.856346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326218, -0.427915, -0.842895,
		0.167149, -0.851512, 0.496980,
		-0.930399, -0.303013, -0.206253,
		35.320244, 34.153530, 43.794472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060356, 33.749924, 43.541088>,  <35.971523, 34.365639, 43.938847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060356, 33.749924, 43.541088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675373, 33.835136, 43.473816>,  <35.444382, 33.886265, 43.433453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675373, 33.835136, 43.473816>,  <36.060356, 33.749924, 43.541088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675373, 33.835136, 43.473816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084368, -0.354109, -0.931391,
		-0.257971, -0.910617, 0.322843,
		-0.962462, 0.213034, -0.168176,
		35.386635, 33.899048, 43.423363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788483, 33.111801, 43.259003>,  <36.060356, 33.749924, 43.541088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788483, 33.111801, 43.259003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526760, 33.396122, 43.155746>,  <35.369724, 33.566715, 43.093792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526760, 33.396122, 43.155746>,  <35.788483, 33.111801, 43.259003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526760, 33.396122, 43.155746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035112, -0.312437, -0.949289,
		-0.755411, -0.630194, 0.179473,
		-0.654310, 0.710802, -0.258145,
		35.330467, 33.609364, 43.078304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235905, 32.882156, 42.846630>,  <35.788483, 33.111801, 43.259003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235905, 32.882156, 42.846630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230877, 33.269051, 42.745201>,  <35.227859, 33.501186, 42.684345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230877, 33.269051, 42.745201>,  <35.235905, 32.882156, 42.846630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230877, 33.269051, 42.745201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113302, -0.253338, -0.960720,
		-0.993481, 0.016659, 0.112773,
		-0.012565, 0.967234, -0.253574,
		35.227108, 33.559219, 42.669128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751438, 32.925125, 42.244774>,  <35.235905, 32.882156, 42.846630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751438, 32.925125, 42.244774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966900, 33.261715, 42.227947>,  <35.096176, 33.463669, 42.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966900, 33.261715, 42.227947>,  <34.751438, 32.925125, 42.244774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966900, 33.261715, 42.227947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172543, 0.061302, -0.983093,
		-0.824668, 0.536809, 0.178211,
		0.538657, 0.841474, -0.042069,
		35.128498, 33.514156, 42.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531441, 33.349178, 41.616695>,  <34.751438, 32.925125, 42.244774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531441, 33.349178, 41.616695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883232, 33.528584, 41.680382>,  <35.094307, 33.636227, 41.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883232, 33.528584, 41.680382>,  <34.531441, 33.349178, 41.616695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883232, 33.528584, 41.680382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116712, 0.121070, -0.985759,
		-0.461401, 0.885539, 0.054132,
		0.879481, 0.448512, 0.159215,
		35.147076, 33.663136, 41.728146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592529, 33.977730, 41.218746>,  <34.531441, 33.349178, 41.616695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592529, 33.977730, 41.218746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970585, 33.871365, 41.294647>,  <35.197418, 33.807545, 41.340187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970585, 33.871365, 41.294647>,  <34.592529, 33.977730, 41.218746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970585, 33.871365, 41.294647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264270, 0.280928, -0.922627,
		0.192030, 0.922156, 0.335788,
		0.945138, -0.265911, 0.189752,
		35.254128, 33.791592, 41.351574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083599, 34.536610, 40.844467>,  <34.592529, 33.977730, 41.218746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083599, 34.536610, 40.844467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320404, 34.222992, 40.919079>,  <35.462486, 34.034821, 40.963848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320404, 34.222992, 40.919079>,  <35.083599, 34.536610, 40.844467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320404, 34.222992, 40.919079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288637, -0.009830, -0.957388,
		0.752466, 0.620630, 0.220483,
		0.592017, -0.784042, 0.186534,
		35.498009, 33.987778, 40.975040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742100, 34.757992, 40.708118>,  <35.083599, 34.536610, 40.844467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742100, 34.757992, 40.708118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736801, 34.358170, 40.697491>,  <35.733624, 34.118275, 40.691113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736801, 34.358170, 40.697491>,  <35.742100, 34.757992, 40.708118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736801, 34.358170, 40.697491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444661, 0.017913, -0.895520,
		0.895601, -0.023675, 0.444227,
		-0.013244, -0.999559, -0.026571,
		35.732826, 34.058300, 40.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433773, 34.541359, 40.453880>,  <35.742100, 34.757992, 40.708118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433773, 34.541359, 40.453880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184532, 34.234249, 40.394196>,  <36.034988, 34.049984, 40.358383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184532, 34.234249, 40.394196>,  <36.433773, 34.541359, 40.453880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184532, 34.234249, 40.394196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447460, -0.193456, -0.873129,
		0.641498, -0.610820, 0.464090,
		-0.623106, -0.767772, -0.149216,
		35.997601, 34.003918, 40.349430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822636, 33.977512, 40.224304>,  <36.433773, 34.541359, 40.453880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822636, 33.977512, 40.224304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444580, 33.887127, 40.129932>,  <36.217747, 33.832897, 40.073311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444580, 33.887127, 40.129932>,  <36.822636, 33.977512, 40.224304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444580, 33.887127, 40.129932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296867, -0.292644, -0.908972,
		0.136349, -0.929140, 0.343668,
		-0.945134, -0.225961, -0.235929,
		36.161041, 33.819340, 40.059155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971035, 33.365211, 39.953308>,  <36.822636, 33.977512, 40.224304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971035, 33.365211, 39.953308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609344, 33.473789, 39.821430>,  <36.392330, 33.538937, 39.742302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609344, 33.473789, 39.821430>,  <36.971035, 33.365211, 39.953308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609344, 33.473789, 39.821430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283230, -0.196628, -0.938679,
		-0.319628, -0.942154, 0.100913,
		-0.904222, 0.271447, -0.329694,
		36.338078, 33.555222, 39.722523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841747, 32.827885, 39.373009>,  <36.971035, 33.365211, 39.953308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841747, 32.827885, 39.373009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596195, 33.139084, 39.319527>,  <36.448864, 33.325802, 39.287437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596195, 33.139084, 39.319527>,  <36.841747, 32.827885, 39.373009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596195, 33.139084, 39.319527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238034, 0.020936, -0.971031,
		-0.752658, -0.627921, -0.198041,
		-0.613878, 0.777995, -0.133709,
		36.412033, 33.372482, 39.279415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536587, 32.692249, 38.720047>,  <36.841747, 32.827885, 39.373009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536587, 32.692249, 38.720047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496117, 33.081009, 38.805069>,  <36.471832, 33.314262, 38.856083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496117, 33.081009, 38.805069>,  <36.536587, 32.692249, 38.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496117, 33.081009, 38.805069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201746, 0.229256, -0.952229,
		-0.974198, -0.053464, -0.219272,
		-0.101180, 0.971897, 0.212554,
		36.465763, 33.372578, 38.868835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161629, 32.929787, 38.113529>,  <36.536587, 32.692249, 38.720047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161629, 32.929787, 38.113529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335369, 33.249210, 38.280212>,  <36.439613, 33.440865, 38.380222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335369, 33.249210, 38.280212>,  <36.161629, 32.929787, 38.113529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335369, 33.249210, 38.280212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244488, 0.340734, -0.907814,
		-0.866929, 0.496189, -0.047240,
		0.434351, 0.798559, 0.416704,
		36.465675, 33.488777, 38.405224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064442, 33.355705, 37.546967>,  <36.161629, 32.929787, 38.113529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064442, 33.355705, 37.546967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329464, 33.534809, 37.787144>,  <36.488476, 33.642269, 37.931252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329464, 33.534809, 37.787144>,  <36.064442, 33.355705, 37.546967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329464, 33.534809, 37.787144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408531, 0.455880, -0.790744,
		-0.627791, 0.769212, 0.119124,
		0.662556, 0.447757, 0.600444,
		36.528233, 33.669136, 37.967278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126839, 34.077835, 37.189644>,  <36.064442, 33.355705, 37.546967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126839, 34.077835, 37.189644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455853, 34.035435, 37.413143>,  <36.653259, 34.009995, 37.547241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455853, 34.035435, 37.413143>,  <36.126839, 34.077835, 37.189644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455853, 34.035435, 37.413143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563261, 0.287563, -0.774625,
		-0.078568, 0.951878, 0.296235,
		0.822535, -0.105997, 0.558749,
		36.702614, 34.003635, 37.580769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443321, 34.674896, 37.079407>,  <36.126839, 34.077835, 37.189644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443321, 34.674896, 37.079407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728764, 34.415703, 37.185905>,  <36.900028, 34.260185, 37.249805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728764, 34.415703, 37.185905>,  <36.443321, 34.674896, 37.079407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728764, 34.415703, 37.185905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595269, 0.360486, -0.718126,
		0.369359, 0.670942, 0.642970,
		0.713603, -0.647986, 0.266242,
		36.942844, 34.221306, 37.265778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108967, 35.121983, 37.191994>,  <36.443321, 34.674896, 37.079407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108967, 35.121983, 37.191994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212074, 34.745739, 37.103619>,  <37.273937, 34.519993, 37.050594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212074, 34.745739, 37.103619>,  <37.108967, 35.121983, 37.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212074, 34.745739, 37.103619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642580, 0.337652, -0.687810,
		0.721560, 0.035322, 0.691451,
		0.257765, -0.940608, -0.220939,
		37.289402, 34.463558, 37.037338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864780, 35.150471, 37.089657>,  <37.108967, 35.121983, 37.191994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864780, 35.150471, 37.089657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754269, 34.793179, 36.947784>,  <37.687962, 34.578804, 36.862659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754269, 34.793179, 36.947784>,  <37.864780, 35.150471, 37.089657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754269, 34.793179, 36.947784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745252, 0.033914, -0.665920,
		0.606852, -0.448309, 0.656315,
		-0.276280, -0.893235, -0.354684,
		37.671383, 34.525208, 36.841377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473671, 34.777229, 36.901791>,  <37.864780, 35.150471, 37.089657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473671, 34.777229, 36.901791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184547, 34.599911, 36.689739>,  <38.011074, 34.493519, 36.562508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184547, 34.599911, 36.689739>,  <38.473671, 34.777229, 36.901791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184547, 34.599911, 36.689739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604693, -0.034406, -0.795715,
		0.334497, -0.895715, 0.292926,
		-0.722813, -0.443295, -0.530124,
		37.967705, 34.466923, 36.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722294, 34.201878, 36.617672>,  <38.473671, 34.777229, 36.901791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722294, 34.201878, 36.617672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407494, 34.265488, 36.379230>,  <38.218613, 34.303654, 36.236164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407494, 34.265488, 36.379230>,  <38.722294, 34.201878, 36.617672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407494, 34.265488, 36.379230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591092, -0.082460, -0.802378,
		-0.176753, -0.983825, -0.029102,
		-0.787000, 0.159024, -0.596106,
		38.171394, 34.313194, 36.200397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682068, 33.683796, 36.063301>,  <38.722294, 34.201878, 36.617672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682068, 33.683796, 36.063301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485939, 34.003994, 35.925442>,  <38.368259, 34.196114, 35.842728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485939, 34.003994, 35.925442>,  <38.682068, 33.683796, 36.063301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485939, 34.003994, 35.925442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606076, 0.029011, -0.794877,
		-0.626300, -0.598631, -0.499389,
		-0.490326, 0.800499, -0.344647,
		38.338840, 34.244144, 35.822048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487957, 33.619354, 35.316551>,  <38.682068, 33.683796, 36.063301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487957, 33.619354, 35.316551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493759, 34.006416, 35.417301>,  <38.497238, 34.238651, 35.477753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493759, 34.006416, 35.417301>,  <38.487957, 33.619354, 35.316551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493759, 34.006416, 35.417301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716432, 0.165668, -0.677701,
		-0.697506, 0.190280, -0.690854,
		0.014501, 0.967650, 0.251877,
		38.498108, 34.296711, 35.492863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732517, 33.998951, 34.708530>,  <38.487957, 33.619354, 35.316551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732517, 33.998951, 34.708530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941376, 33.828743, 35.004177>,  <39.066692, 33.726616, 35.181564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941376, 33.828743, 35.004177>,  <38.732517, 33.998951, 34.708530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941376, 33.828743, 35.004177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851684, 0.214744, -0.478038,
		0.044695, 0.879099, 0.474540,
		0.522147, -0.425524, 0.739116,
		39.098019, 33.701084, 35.225910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215096, 34.500919, 34.838421>,  <38.732517, 33.998951, 34.708530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215096, 34.500919, 34.838421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374439, 34.170006, 34.996864>,  <39.470047, 33.971458, 35.091930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374439, 34.170006, 34.996864>,  <39.215096, 34.500919, 34.838421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374439, 34.170006, 34.996864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916197, 0.338400, -0.214636,
		0.043521, 0.448420, 0.892763,
		0.398359, -0.827288, 0.396113,
		39.493946, 33.921818, 35.115700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785336, 34.602055, 35.469608>,  <39.215096, 34.500919, 34.838421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785336, 34.602055, 35.469608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821507, 34.290592, 35.221245>,  <39.843208, 34.103714, 35.072227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821507, 34.290592, 35.221245>,  <39.785336, 34.602055, 35.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821507, 34.290592, 35.221245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823557, 0.409027, -0.393001,
		0.559979, -0.475812, 0.678253,
		0.090429, -0.778652, -0.620905,
		39.848637, 34.056995, 35.034973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528667, 34.308449, 35.455849>,  <39.785336, 34.602055, 35.469608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528667, 34.308449, 35.455849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302578, 34.256195, 35.130039>,  <40.166924, 34.224842, 34.934551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302578, 34.256195, 35.130039>,  <40.528667, 34.308449, 35.455849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302578, 34.256195, 35.130039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667082, 0.508490, -0.544462,
		0.485302, -0.851102, -0.200271,
		-0.565228, -0.130632, -0.814526,
		40.133011, 34.217007, 34.885681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061180, 34.355297, 34.933971>,  <40.528667, 34.308449, 35.455849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061180, 34.355297, 34.933971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705120, 34.417149, 34.762520>,  <40.491486, 34.454258, 34.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705120, 34.417149, 34.762520>,  <41.061180, 34.355297, 34.933971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705120, 34.417149, 34.762520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388626, 0.748757, -0.536966,
		0.237911, -0.644557, -0.726598,
		-0.890151, 0.154624, -0.428629,
		40.438076, 34.463535, 34.633930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998341, 34.314480, 34.087791>,  <41.061180, 34.355297, 34.933971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998341, 34.314480, 34.087791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758350, 34.612064, 34.205471>,  <40.614357, 34.790615, 34.276077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758350, 34.612064, 34.205471>,  <40.998341, 34.314480, 34.087791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758350, 34.612064, 34.205471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217315, 0.505463, -0.835034,
		-0.769939, -0.437066, -0.464939,
		-0.599974, 0.743963, 0.294195,
		40.578358, 34.835255, 34.293728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361980, 33.866199, 33.745937>,  <40.998341, 34.314480, 34.087791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361980, 33.866199, 33.745937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505802, 34.231033, 33.667126>,  <41.592094, 34.449932, 33.619839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505802, 34.231033, 33.667126>,  <41.361980, 33.866199, 33.745937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505802, 34.231033, 33.667126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383381, -0.336904, -0.859950,
		-0.850727, 0.233665, -0.470812,
		0.359559, 0.912084, -0.197031,
		41.613670, 34.504658, 33.608017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156116, 34.226967, 33.083263>,  <41.361980, 33.866199, 33.745937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156116, 34.226967, 33.083263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530827, 34.300541, 33.202343>,  <41.755653, 34.344685, 33.273792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530827, 34.300541, 33.202343>,  <41.156116, 34.226967, 33.083263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530827, 34.300541, 33.202343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349669, -0.525605, -0.775545,
		0.013822, 0.830606, -0.556689,
		0.936771, 0.183938, 0.297702,
		41.811859, 34.355721, 33.291653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565937, 34.467979, 32.485851>,  <41.156116, 34.226967, 33.083263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565937, 34.467979, 32.485851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870899, 34.367039, 32.724197>,  <42.053875, 34.306473, 32.867207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870899, 34.367039, 32.724197>,  <41.565937, 34.467979, 32.485851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870899, 34.367039, 32.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460788, -0.434799, -0.773708,
		0.454332, 0.864446, -0.215210,
		0.762402, -0.252354, 0.595870,
		42.099621, 34.291332, 32.902958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171528, 34.574493, 32.133083>,  <41.565937, 34.467979, 32.485851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171528, 34.574493, 32.133083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300346, 34.336285, 32.427467>,  <42.377640, 34.193359, 32.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300346, 34.336285, 32.427467>,  <42.171528, 34.574493, 32.133083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300346, 34.336285, 32.427467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618373, -0.456320, -0.639834,
		0.716867, 0.661158, 0.221295,
		0.322050, -0.595519, 0.735963,
		42.396961, 34.157631, 32.648254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910172, 34.518703, 32.011417>,  <42.171528, 34.574493, 32.133083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910172, 34.518703, 32.011417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809074, 34.205120, 32.238232>,  <42.748417, 34.016972, 32.374321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809074, 34.205120, 32.238232>,  <42.910172, 34.518703, 32.011417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809074, 34.205120, 32.238232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392096, -0.618774, -0.680720,
		0.884523, 0.050284, 0.463779,
		-0.252745, -0.783958, 0.567036,
		42.733250, 33.969933, 32.408344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521584, 34.127613, 32.035320>,  <42.910172, 34.518703, 32.011417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521584, 34.127613, 32.035320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219807, 33.883335, 32.131550>,  <43.038742, 33.736771, 32.189285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219807, 33.883335, 32.131550>,  <43.521584, 34.127613, 32.035320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219807, 33.883335, 32.131550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295254, -0.643098, -0.706576,
		0.586210, -0.462042, 0.665489,
		-0.754442, -0.610690, 0.240571,
		42.993473, 33.700127, 32.203720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783928, 33.420734, 32.238132>,  <43.521584, 34.127613, 32.035320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783928, 33.420734, 32.238132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402927, 33.362331, 32.131237>,  <43.174328, 33.327290, 32.067101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.402927, 33.362331, 32.131237>,  <43.783928, 33.420734, 32.238132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402927, 33.362331, 32.131237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283347, -0.746454, -0.602097,
		-0.111575, -0.649222, 0.752371,
		-0.952505, -0.146003, -0.267241,
		43.117176, 33.318531, 32.051064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787094, 32.634617, 32.225864>,  <43.783928, 33.420734, 32.238132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787094, 32.634617, 32.225864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458385, 32.766441, 32.039928>,  <43.261158, 32.845535, 31.928368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458385, 32.766441, 32.039928>,  <43.787094, 32.634617, 32.225864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458385, 32.766441, 32.039928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140812, -0.673024, -0.726093,
		-0.552139, -0.662140, 0.506669,
		-0.821776, 0.329559, -0.464839,
		43.211853, 32.865311, 31.900476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372139, 32.050510, 31.967390>,  <43.787094, 32.634617, 32.225864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372139, 32.050510, 31.967390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260426, 32.345882, 31.721880>,  <43.193398, 32.523106, 31.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260426, 32.345882, 31.721880>,  <43.372139, 32.050510, 31.967390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260426, 32.345882, 31.721880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155778, -0.595899, -0.787806,
		-0.947487, -0.315637, 0.051396,
		-0.279287, 0.738429, -0.613776,
		43.176640, 32.567410, 31.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889832, 31.734505, 31.605064>,  <43.372139, 32.050510, 31.967390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889832, 31.734505, 31.605064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971432, 32.059673, 31.386875>,  <43.020393, 32.254776, 31.255960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971432, 32.059673, 31.386875>,  <42.889832, 31.734505, 31.605064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971432, 32.059673, 31.386875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120368, -0.573793, -0.810107,
		-0.971543, 0.099605, -0.214904,
		0.204001, 0.812921, -0.545475,
		43.032631, 32.303551, 31.223232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536774, 31.698622, 30.879738>,  <42.889832, 31.734505, 31.605064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536774, 31.698622, 30.879738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857365, 31.936520, 30.854694>,  <43.049717, 32.079258, 30.839668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857365, 31.936520, 30.854694>,  <42.536774, 31.698622, 30.879738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857365, 31.936520, 30.854694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308970, -0.501445, -0.808140,
		-0.512031, 0.628359, -0.585653,
		0.801475, 0.594742, -0.062611,
		43.097809, 32.114941, 30.835911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672626, 31.728275, 30.217583>,  <42.536774, 31.698622, 30.879738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672626, 31.728275, 30.217583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017536, 31.881197, 30.350443>,  <43.224483, 31.972950, 30.430159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017536, 31.881197, 30.350443>,  <42.672626, 31.728275, 30.217583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017536, 31.881197, 30.350443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466464, -0.344142, -0.814848,
		-0.197211, 0.857561, -0.475076,
		0.862275, 0.382303, 0.332152,
		43.276218, 31.995888, 30.450089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975830, 32.050262, 29.627653>,  <42.672626, 31.728275, 30.217583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975830, 32.050262, 29.627653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274410, 31.977240, 29.883617>,  <43.453560, 31.933428, 30.037195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274410, 31.977240, 29.883617>,  <42.975830, 32.050262, 29.627653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274410, 31.977240, 29.883617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562376, -0.341010, -0.753290,
		0.355731, 0.922164, -0.151884,
		0.746451, -0.182553, 0.639910,
		43.498344, 31.922474, 30.075590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583874, 32.362583, 29.320114>,  <42.975830, 32.050262, 29.627653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583874, 32.362583, 29.320114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736206, 32.102776, 29.583355>,  <43.827606, 31.946892, 29.741299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.736206, 32.102776, 29.583355>,  <43.583874, 32.362583, 29.320114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736206, 32.102776, 29.583355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717458, -0.241406, -0.653435,
		0.583286, 0.721007, 0.374067,
		0.380829, -0.649517, 0.658101,
		43.850456, 31.907921, 29.780785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364086, 32.601364, 29.347670>,  <43.583874, 32.362583, 29.320114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364086, 32.601364, 29.347670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307575, 32.232941, 29.492828>,  <44.273670, 32.011887, 29.579924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.307575, 32.232941, 29.492828>,  <44.364086, 32.601364, 29.347670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.307575, 32.232941, 29.492828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821786, -0.313513, -0.475792,
		0.552005, 0.231006, 0.801203,
		-0.141277, -0.921057, 0.362898,
		44.265190, 31.956623, 29.601698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.997265, 32.353558, 29.563568>,  <44.364086, 32.601364, 29.347670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.997265, 32.353558, 29.563568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755939, 32.040577, 29.501877>,  <44.611145, 31.852789, 29.464861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755939, 32.040577, 29.501877>,  <44.997265, 32.353558, 29.563568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755939, 32.040577, 29.501877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685812, -0.410317, -0.601084,
		0.407036, -0.468412, 0.784163,
		-0.603310, -0.782451, -0.154229,
		44.574947, 31.805841, 29.455608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.406364, 31.653332, 29.686056>,  <44.997265, 32.353558, 29.563568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.406364, 31.653332, 29.686056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087227, 31.537203, 29.474714>,  <44.895744, 31.467525, 29.347908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087227, 31.537203, 29.474714>,  <45.406364, 31.653332, 29.686056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087227, 31.537203, 29.474714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569064, -0.652014, -0.501043,
		-0.199031, -0.700422, 0.685417,
		-0.797843, -0.290323, -0.528356,
		44.847874, 31.450106, 29.316208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342880, 30.926733, 29.724926>,  <45.406364, 31.653332, 29.686056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342880, 30.926733, 29.724926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171825, 31.035158, 29.379984>,  <45.069191, 31.100214, 29.173019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171825, 31.035158, 29.379984>,  <45.342880, 30.926733, 29.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171825, 31.035158, 29.379984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673079, -0.541316, -0.503927,
		-0.603402, -0.795928, 0.049038,
		-0.427635, 0.271064, -0.862353,
		45.043533, 31.116476, 29.121279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559277, 30.414143, 29.292528>,  <45.342880, 30.926733, 29.724926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559277, 30.414143, 29.292528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408001, 30.653522, 29.010015>,  <45.317238, 30.797150, 28.840508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408001, 30.653522, 29.010015>,  <45.559277, 30.414143, 29.292528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408001, 30.653522, 29.010015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629895, -0.392745, -0.670062,
		-0.678387, -0.698292, -0.228428,
		-0.378185, 0.598447, -0.706284,
		45.294544, 30.833057, 28.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398895, 29.937300, 28.727255>,  <45.559277, 30.414143, 29.292528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398895, 29.937300, 28.727255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404213, 30.306339, 28.573042>,  <45.407406, 30.527763, 28.480515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404213, 30.306339, 28.573042>,  <45.398895, 29.937300, 28.727255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404213, 30.306339, 28.573042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637986, -0.304715, -0.707193,
		-0.769933, -0.236561, -0.592657,
		0.013297, 0.922598, -0.385533,
		45.408203, 30.583118, 28.457382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083626, 29.972027, 27.992359>,  <45.398895, 29.937300, 28.727255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083626, 29.972027, 27.992359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364311, 30.247574, 28.065094>,  <45.532722, 30.412901, 28.108734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.364311, 30.247574, 28.065094>,  <45.083626, 29.972027, 27.992359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364311, 30.247574, 28.065094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537942, -0.344935, -0.769181,
		-0.467140, 0.637561, -0.612615,
		0.701711, 0.688866, 0.181838,
		45.574825, 30.454233, 28.119646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265217, 30.174294, 27.291883>,  <45.083626, 29.972027, 27.992359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265217, 30.174294, 27.291883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547386, 30.238445, 27.568047>,  <45.716686, 30.276937, 27.733744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.547386, 30.238445, 27.568047>,  <45.265217, 30.174294, 27.291883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547386, 30.238445, 27.568047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695685, -0.343113, -0.631107,
		0.135670, 0.925501, -0.353612,
		0.705419, 0.160380, 0.690408,
		45.759010, 30.286560, 27.775169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334320, 30.785009, 26.722517>,  <45.265217, 30.174294, 27.291883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334320, 30.785009, 26.722517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044888, 31.028894, 26.593105>,  <44.871227, 31.175226, 26.515457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044888, 31.028894, 26.593105>,  <45.334320, 30.785009, 26.722517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044888, 31.028894, 26.593105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687783, 0.676375, -0.263575,
		0.058123, -0.413238, -0.908766,
		-0.723585, 0.609714, -0.323531,
		44.827812, 31.211809, 26.496046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543652, 31.124804, 26.108763>,  <45.334320, 30.785009, 26.722517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543652, 31.124804, 26.108763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246296, 31.367445, 26.221481>,  <45.067883, 31.513031, 26.289112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246296, 31.367445, 26.221481>,  <45.543652, 31.124804, 26.108763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246296, 31.367445, 26.221481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513431, 0.787537, -0.340843,
		-0.428682, -0.108695, -0.896893,
		-0.743385, 0.606606, 0.281796,
		45.023281, 31.549427, 26.306021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404404, 31.104610, 25.304522>,  <45.543652, 31.124804, 26.108763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404404, 31.104610, 25.304522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062267, 31.199219, 25.120153>,  <44.856987, 31.255983, 25.009533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.062267, 31.199219, 25.120153>,  <45.404404, 31.104610, 25.304522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.062267, 31.199219, 25.120153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159410, -0.966693, -0.200235,
		-0.492930, -0.097794, 0.864556,
		-0.855341, 0.236521, -0.460922,
		44.805664, 31.270176, 24.981876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.008358, 31.093273, 24.971563>,  <45.404404, 31.104610, 25.304522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.008358, 31.093273, 24.971563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713573, 31.312620, 24.813482>,  <45.536705, 31.444229, 24.718634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.713573, 31.312620, 24.813482>,  <46.008358, 31.093273, 24.971563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713573, 31.312620, 24.813482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047036, 0.541654, 0.839284,
		0.674301, 0.637106, -0.373383,
		-0.736957, 0.548368, -0.395205,
		45.492485, 31.477131, 24.694921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.247849, 31.772287, 24.924183>,  <46.008358, 31.093273, 24.971563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.247849, 31.772287, 24.924183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850368, 31.788095, 24.966122>,  <45.611881, 31.797581, 24.991285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850368, 31.788095, 24.966122>,  <46.247849, 31.772287, 24.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850368, 31.788095, 24.966122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107112, 0.609670, 0.785385,
		-0.032884, 0.791669, -0.610064,
		-0.993703, 0.039519, 0.104846,
		45.552258, 31.799952, 24.997576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888016, 32.462086, 24.908115>,  <46.247849, 31.772287, 24.924183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888016, 32.462086, 24.908115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667358, 32.210007, 25.126673>,  <45.534966, 32.058762, 25.257807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.667358, 32.210007, 25.126673>,  <45.888016, 32.462086, 24.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.667358, 32.210007, 25.126673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126186, 0.710599, 0.692189,
		-0.824480, 0.312895, -0.471519,
		-0.551643, -0.630195, 0.546391,
		45.501865, 32.020947, 25.290590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192032, 32.714699, 25.138691>,  <45.888016, 32.462086, 24.908115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192032, 32.714699, 25.138691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325359, 32.439484, 25.396526>,  <45.405357, 32.274353, 25.551228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325359, 32.439484, 25.396526>,  <45.192032, 32.714699, 25.138691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325359, 32.439484, 25.396526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090773, 0.703932, 0.704443,
		-0.938433, -0.176295, 0.297091,
		0.333322, -0.688040, 0.644590,
		45.425358, 32.233070, 25.589903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817982, 32.675297, 25.879095>,  <45.192032, 32.714699, 25.138691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817982, 32.675297, 25.879095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203346, 32.568291, 25.885750>,  <45.434566, 32.504089, 25.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.203346, 32.568291, 25.885750>,  <44.817982, 32.675297, 25.879095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203346, 32.568291, 25.885750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153756, 0.602448, 0.783208,
		-0.219542, -0.751993, 0.621537,
		0.963411, -0.267512, 0.016639,
		45.492371, 32.488037, 25.890741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018833, 32.235363, 26.513014>,  <44.817982, 32.675297, 25.879095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018833, 32.235363, 26.513014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289173, 32.470394, 26.335032>,  <45.451378, 32.611412, 26.228241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289173, 32.470394, 26.335032>,  <45.018833, 32.235363, 26.513014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289173, 32.470394, 26.335032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045994, 0.568908, 0.821114,
		0.735607, -0.575412, 0.357469,
		0.675846, 0.587576, -0.444958,
		45.491928, 32.646667, 26.201544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666420, 32.240273, 26.913834>,  <45.018833, 32.235363, 26.513014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666420, 32.240273, 26.913834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591576, 32.566849, 26.695324>,  <45.546669, 32.762794, 26.564219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591576, 32.566849, 26.695324>,  <45.666420, 32.240273, 26.913834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591576, 32.566849, 26.695324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071686, 0.543264, 0.836496,
		0.979720, 0.195676, -0.043122,
		-0.187108, 0.816441, -0.546274,
		45.535442, 32.811783, 26.531443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209145, 32.814007, 27.063957>,  <45.666420, 32.240273, 26.913834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209145, 32.814007, 27.063957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829258, 32.906319, 26.979305>,  <45.601326, 32.961704, 26.928514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.829258, 32.906319, 26.979305>,  <46.209145, 32.814007, 27.063957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.829258, 32.906319, 26.979305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015545, 0.709779, 0.704253,
		0.312737, 0.665548, -0.677673,
		-0.949713, 0.230780, -0.211629,
		45.544346, 32.975552, 26.915817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249859, 33.540470, 27.023474>,  <46.209145, 32.814007, 27.063957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249859, 33.540470, 27.023474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875385, 33.421444, 27.098312>,  <45.650700, 33.350029, 27.143215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875385, 33.421444, 27.098312>,  <46.249859, 33.540470, 27.023474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875385, 33.421444, 27.098312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051108, 0.641865, 0.765112,
		-0.347764, 0.706727, -0.616115,
		-0.936188, -0.297567, 0.187099,
		45.594528, 33.332172, 27.154442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898067, 34.161736, 27.167383>,  <46.249859, 33.540470, 27.023474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898067, 34.161736, 27.167383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653625, 33.879322, 27.310522>,  <45.506958, 33.709873, 27.396406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653625, 33.879322, 27.310522>,  <45.898067, 34.161736, 27.167383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653625, 33.879322, 27.310522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189825, 0.569617, 0.799689,
		-0.768448, 0.420770, -0.482122,
		-0.611110, -0.706038, 0.357848,
		45.470291, 33.667511, 27.417877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265499, 34.537674, 27.353014>,  <45.898067, 34.161736, 27.167383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265499, 34.537674, 27.353014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273983, 34.185875, 27.543184>,  <45.279072, 33.974796, 27.657286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273983, 34.185875, 27.543184>,  <45.265499, 34.537674, 27.353014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273983, 34.185875, 27.543184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342046, 0.440453, 0.830064,
		-0.939444, -0.180220, -0.291489,
		0.021206, -0.879501, 0.475424,
		45.280346, 33.922024, 27.685812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519108, 34.327175, 27.575129>,  <45.265499, 34.537674, 27.353014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519108, 34.327175, 27.575129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783894, 34.157387, 27.822231>,  <44.942764, 34.055511, 27.970493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783894, 34.157387, 27.822231>,  <44.519108, 34.327175, 27.575129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783894, 34.157387, 27.822231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488269, 0.381110, 0.785079,
		-0.568678, -0.821327, 0.045025,
		0.661966, -0.424473, 0.617757,
		44.982483, 34.030045, 28.007559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169247, 34.008980, 28.146387>,  <44.519108, 34.327175, 27.575129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169247, 34.008980, 28.146387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544487, 34.046787, 28.279669>,  <44.769630, 34.069473, 28.359638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544487, 34.046787, 28.279669>,  <44.169247, 34.008980, 28.146387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544487, 34.046787, 28.279669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330311, 0.533539, 0.778608,
		-0.104181, -0.840477, 0.531737,
		0.938105, 0.094523, 0.333204,
		44.825920, 34.075146, 28.379629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001656, 33.879658, 28.821302>,  <44.169247, 34.008980, 28.146387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001656, 33.879658, 28.821302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374584, 34.022881, 28.841566>,  <44.598343, 34.108814, 28.853724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374584, 34.022881, 28.841566>,  <44.001656, 33.879658, 28.821302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374584, 34.022881, 28.841566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250393, 0.538116, 0.804819,
		0.260913, -0.763036, 0.591354,
		0.932324, 0.358059, 0.050658,
		44.654282, 34.130299, 28.856764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281601, 33.688095, 29.444191>,  <44.001656, 33.879658, 28.821302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281601, 33.688095, 29.444191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515881, 33.984951, 29.313850>,  <44.656448, 34.163067, 29.235645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515881, 33.984951, 29.313850>,  <44.281601, 33.688095, 29.444191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515881, 33.984951, 29.313850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170850, 0.506034, 0.845423,
		0.792316, -0.439493, 0.423179,
		0.585700, 0.742142, -0.325852,
		44.691589, 34.207592, 29.216095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807621, 33.725838, 29.969629>,  <44.281601, 33.688095, 29.444191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807621, 33.725838, 29.969629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840424, 34.078506, 29.783752>,  <44.860104, 34.290108, 29.672226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840424, 34.078506, 29.783752>,  <44.807621, 33.725838, 29.969629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840424, 34.078506, 29.783752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050842, 0.461953, 0.885446,
		0.995334, -0.096239, -0.006942,
		0.082007, 0.881667, -0.464691,
		44.865025, 34.343006, 29.644344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374992, 34.129921, 30.320086>,  <44.807621, 33.725838, 29.969629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374992, 34.129921, 30.320086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140560, 34.407837, 30.153337>,  <44.999901, 34.574585, 30.053289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140560, 34.407837, 30.153337>,  <45.374992, 34.129921, 30.320086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140560, 34.407837, 30.153337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164617, 0.401657, 0.900873,
		0.793354, 0.596608, -0.121029,
		-0.586081, 0.694788, -0.416868,
		44.964737, 34.616272, 30.028276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657928, 34.907421, 30.459763>,  <45.374992, 34.129921, 30.320086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657928, 34.907421, 30.459763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269505, 34.947559, 30.373064>,  <45.036449, 34.971642, 30.321045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.269505, 34.947559, 30.373064>,  <45.657928, 34.907421, 30.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.269505, 34.947559, 30.373064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168438, 0.355694, 0.919299,
		0.169342, 0.929200, -0.328497,
		-0.971057, 0.100345, -0.216747,
		44.978188, 34.977661, 30.308041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495979, 35.554317, 30.695330>,  <45.657928, 34.907421, 30.459763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495979, 35.554317, 30.695330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141125, 35.370136, 30.682827>,  <44.928211, 35.259628, 30.675325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141125, 35.370136, 30.682827>,  <45.495979, 35.554317, 30.695330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141125, 35.370136, 30.682827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186249, 0.295226, 0.937098,
		-0.422266, 0.837151, -0.347664,
		-0.887132, -0.460457, -0.031255,
		44.874985, 35.231998, 30.673450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098938, 36.014980, 31.052357>,  <45.495979, 35.554317, 30.695330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098938, 36.014980, 31.052357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885807, 35.676704, 31.040298>,  <44.757931, 35.473740, 31.033064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885807, 35.676704, 31.040298>,  <45.098938, 36.014980, 31.052357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885807, 35.676704, 31.040298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266216, 0.133701, 0.954596,
		-0.803262, 0.516655, -0.296375,
		-0.532823, -0.845690, -0.030145,
		44.725960, 35.422997, 31.031256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538364, 36.234421, 31.446297>,  <45.098938, 36.014980, 31.052357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538364, 36.234421, 31.446297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523193, 35.834961, 31.432098>,  <44.514091, 35.595284, 31.423578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523193, 35.834961, 31.432098>,  <44.538364, 36.234421, 31.446297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523193, 35.834961, 31.432098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229820, -0.025855, 0.972889,
		-0.972494, 0.045053, -0.228530,
		-0.037923, -0.998650, -0.035497,
		44.511818, 35.535366, 31.421450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.988228, 36.009663, 31.879143>,  <44.538364, 36.234421, 31.446297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.988228, 36.009663, 31.879143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232578, 35.695625, 31.838245>,  <44.379189, 35.507202, 31.813707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.232578, 35.695625, 31.838245>,  <43.988228, 36.009663, 31.879143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232578, 35.695625, 31.838245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200885, -0.278613, 0.939159,
		-0.765815, -0.553173, -0.327913,
		0.610878, -0.785095, -0.102242,
		44.415840, 35.460098, 31.807573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637745, 35.399906, 32.257446>,  <43.988228, 36.009663, 31.879143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637745, 35.399906, 32.257446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032845, 35.338181, 32.248077>,  <44.269905, 35.301147, 32.242458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.032845, 35.338181, 32.248077>,  <43.637745, 35.399906, 32.257446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032845, 35.338181, 32.248077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039147, -0.390189, 0.919902,
		-0.151089, -0.907712, -0.391448,
		0.987745, -0.154311, -0.023419,
		44.329166, 35.291885, 32.241051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728920, 34.688965, 32.520226>,  <43.637745, 35.399906, 32.257446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728920, 34.688965, 32.520226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090561, 34.856888, 32.552109>,  <44.307545, 34.957642, 32.571239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090561, 34.856888, 32.552109>,  <43.728920, 34.688965, 32.520226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090561, 34.856888, 32.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051917, -0.293066, 0.954682,
		0.424143, -0.858995, -0.286758,
		0.904106, 0.419809, 0.079705,
		44.361794, 34.982830, 32.576019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126816, 34.180260, 32.866585>,  <43.728920, 34.688965, 32.520226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126816, 34.180260, 32.866585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308414, 34.535095, 32.899944>,  <44.417374, 34.747997, 32.919960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308414, 34.535095, 32.899944>,  <44.126816, 34.180260, 32.866585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308414, 34.535095, 32.899944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103847, -0.040283, 0.993777,
		0.884931, -0.459832, 0.073833,
		0.453997, 0.887092, 0.083400,
		44.444614, 34.801224, 32.924965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632374, 34.099022, 33.420307>,  <44.126816, 34.180260, 32.866585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632374, 34.099022, 33.420307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567932, 34.492695, 33.390858>,  <44.529266, 34.728901, 33.373188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567932, 34.492695, 33.390858>,  <44.632374, 34.099022, 33.420307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567932, 34.492695, 33.390858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052100, 0.082974, 0.995189,
		0.985561, 0.156497, -0.064643,
		-0.161107, 0.984187, -0.073622,
		44.519600, 34.787952, 33.368771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157291, 34.360847, 33.859776>,  <44.632374, 34.099022, 33.420307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157291, 34.360847, 33.859776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860943, 34.626438, 33.819294>,  <44.683132, 34.785793, 33.795006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.860943, 34.626438, 33.819294>,  <45.157291, 34.360847, 33.859776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.860943, 34.626438, 33.819294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058762, 0.086022, 0.994559,
		0.669070, 0.742788, -0.024715,
		-0.740873, 0.663977, -0.101202,
		44.638680, 34.825630, 33.788933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349876, 34.971783, 34.203102>,  <45.157291, 34.360847, 33.859776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349876, 34.971783, 34.203102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950893, 34.944557, 34.194645>,  <44.711502, 34.928223, 34.189571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.950893, 34.944557, 34.194645>,  <45.349876, 34.971783, 34.203102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.950893, 34.944557, 34.194645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031145, 0.149439, 0.988280,
		-0.064104, 0.986425, -0.151179,
		-0.997457, -0.068061, -0.021143,
		44.651657, 34.924137, 34.188301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966953, 34.616463, 34.488468>,  <45.349876, 34.971783, 34.203102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966953, 34.616463, 34.488468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238899, 34.481430, 34.748875>,  <46.402065, 34.400410, 34.905117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238899, 34.481430, 34.748875>,  <45.966953, 34.616463, 34.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238899, 34.481430, 34.748875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724877, 0.174885, -0.666309,
		0.111083, 0.924906, 0.363606,
		0.679863, -0.337586, 0.651016,
		46.442860, 34.380154, 34.944180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542946, 35.124626, 34.559456>,  <45.966953, 34.616463, 34.488468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542946, 35.124626, 34.559456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618694, 34.734947, 34.608570>,  <46.664143, 34.501141, 34.638039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618694, 34.734947, 34.608570>,  <46.542946, 35.124626, 34.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618694, 34.734947, 34.608570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687427, 0.042247, -0.725024,
		0.701129, 0.221707, 0.677690,
		0.189373, -0.974198, 0.122787,
		46.675507, 34.442688, 34.645405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188915, 34.943207, 34.743073>,  <46.542946, 35.124626, 34.559456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188915, 34.943207, 34.743073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074844, 34.646091, 34.500767>,  <47.006401, 34.467823, 34.355385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.074844, 34.646091, 34.500767>,  <47.188915, 34.943207, 34.743073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.074844, 34.646091, 34.500767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726247, 0.244987, -0.642298,
		0.625492, -0.623100, 0.469581,
		-0.285175, -0.742784, -0.605762,
		46.989292, 34.423256, 34.319038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.942814, 35.008682, 34.514309>,  <47.188915, 34.943207, 34.743073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.942814, 35.008682, 34.514309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757908, 35.149708, 34.839764>,  <47.646965, 35.234325, 35.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757908, 35.149708, 34.839764>,  <47.942814, 35.008682, 34.514309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757908, 35.149708, 34.839764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811700, 0.537659, 0.228181,
		-0.357012, 0.765911, -0.534718,
		-0.462262, 0.352567, 0.813640,
		47.619228, 35.255478, 35.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.711288, 38.920258, 42.003468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.460188, 38.629128, 41.893055>,  <30.309526, 38.454449, 41.826809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.460188, 38.629128, 41.893055>,  <30.711288, 38.920258, 42.003468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460188, 38.629128, 41.893055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664672, -0.316632, -0.676724,
		0.405138, -0.608286, 0.682533,
		-0.627753, -0.727828, -0.276031,
		30.271862, 38.410778, 41.810246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083050, 38.293159, 41.860481>,  <30.711288, 38.920258, 42.003468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083050, 38.293159, 41.860481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742176, 38.223160, 41.663239>,  <30.537651, 38.181160, 41.544891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.742176, 38.223160, 41.663239>,  <31.083050, 38.293159, 41.860481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742176, 38.223160, 41.663239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512185, -0.471713, -0.717742,
		-0.107000, -0.864212, 0.491619,
		-0.852184, -0.175001, -0.493109,
		30.486521, 38.170658, 41.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999134, 37.492867, 41.791290>,  <31.083050, 38.293159, 41.860481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999134, 37.492867, 41.791290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.780148, 37.686584, 41.518311>,  <30.648754, 37.802814, 41.354523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.780148, 37.686584, 41.518311>,  <30.999134, 37.492867, 41.791290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780148, 37.686584, 41.518311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386482, -0.577008, -0.719510,
		-0.742233, -0.657663, 0.128723,
		-0.547469, 0.484295, -0.682449,
		30.615908, 37.831871, 41.313576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792019, 36.952751, 41.276608>,  <30.999134, 37.492867, 41.791290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792019, 36.952751, 41.276608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.757866, 37.305084, 41.090343>,  <30.737373, 37.516483, 40.978584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.757866, 37.305084, 41.090343>,  <30.792019, 36.952751, 41.276608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757866, 37.305084, 41.090343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371494, -0.405521, -0.835191,
		-0.924501, -0.244302, -0.292601,
		-0.085383, 0.880834, -0.465661,
		30.732250, 37.569336, 40.950645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517635, 36.765518, 40.663353>,  <30.792019, 36.952751, 41.276608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517635, 36.765518, 40.663353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.608948, 37.146252, 40.581474>,  <30.663736, 37.374691, 40.532349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.608948, 37.146252, 40.581474>,  <30.517635, 36.765518, 40.663353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608948, 37.146252, 40.581474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369852, -0.279265, -0.886127,
		-0.900609, 0.126582, -0.415789,
		0.228283, 0.951834, -0.204692,
		30.677433, 37.431801, 40.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303141, 36.931625, 39.988197>,  <30.517635, 36.765518, 40.663353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303141, 36.931625, 39.988197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602150, 37.190823, 40.046593>,  <30.781555, 37.346340, 40.081631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.602150, 37.190823, 40.046593>,  <30.303141, 36.931625, 39.988197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602150, 37.190823, 40.046593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348294, -0.195238, -0.916828,
		-0.565599, 0.736195, -0.371638,
		0.747522, 0.647996, 0.145986,
		30.826406, 37.385220, 40.090389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381989, 37.231670, 39.354137>,  <30.303141, 36.931625, 39.988197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381989, 37.231670, 39.354137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715490, 37.321907, 39.555714>,  <30.915592, 37.376049, 39.676659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715490, 37.321907, 39.555714>,  <30.381989, 37.231670, 39.354137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715490, 37.321907, 39.555714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544626, -0.186050, -0.817782,
		-0.090729, 0.956291, -0.277985,
		0.833757, 0.225595, 0.503941,
		30.965618, 37.389587, 39.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825960, 37.655422, 38.874329>,  <30.381989, 37.231670, 39.354137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825960, 37.655422, 38.874329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045374, 37.473206, 39.154785>,  <31.177023, 37.363876, 39.323059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045374, 37.473206, 39.154785>,  <30.825960, 37.655422, 38.874329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045374, 37.473206, 39.154785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674790, -0.253974, -0.692933,
		0.493729, 0.853218, 0.168080,
		0.548535, -0.455540, 0.701137,
		31.209934, 37.336544, 39.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488462, 37.918133, 38.774834>,  <30.825960, 37.655422, 38.874329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488462, 37.918133, 38.774834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.555630, 37.582512, 38.981827>,  <31.595930, 37.381138, 39.106022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.555630, 37.582512, 38.981827>,  <31.488462, 37.918133, 38.774834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555630, 37.582512, 38.981827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799153, -0.191495, -0.569810,
		0.577197, 0.509233, 0.638377,
		0.167921, -0.839054, 0.517486,
		31.606007, 37.330795, 39.137074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126740, 37.890533, 38.858391>,  <31.488462, 37.918133, 38.774834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126740, 37.890533, 38.858391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018276, 37.507164, 38.893936>,  <31.953199, 37.277142, 38.915264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.018276, 37.507164, 38.893936>,  <32.126740, 37.890533, 38.858391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018276, 37.507164, 38.893936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849658, -0.281713, -0.445779,
		0.452280, -0.045371, 0.890721,
		-0.271153, -0.958425, 0.088863,
		31.936930, 37.219635, 38.920593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646519, 37.507992, 39.117718>,  <32.126740, 37.890533, 38.858391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646519, 37.507992, 39.117718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.434128, 37.246433, 38.902130>,  <32.306694, 37.089500, 38.772778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.434128, 37.246433, 38.902130>,  <32.646519, 37.507992, 39.117718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434128, 37.246433, 38.902130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833727, -0.289373, -0.470279,
		0.151549, -0.699060, 0.698818,
		-0.530973, -0.653894, -0.538971,
		32.274837, 37.050266, 38.740440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039562, 36.938068, 39.070007>,  <32.646519, 37.507992, 39.117718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039562, 36.938068, 39.070007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800983, 36.878746, 38.754475>,  <32.657837, 36.843155, 38.565155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.800983, 36.878746, 38.754475>,  <33.039562, 36.938068, 39.070007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800983, 36.878746, 38.754475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784394, -0.316130, -0.533656,
		-0.170230, -0.937053, 0.304884,
		-0.596447, -0.148305, -0.788833,
		32.622051, 36.834255, 38.517826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181736, 36.307575, 38.850933>,  <33.039562, 36.938068, 39.070007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181736, 36.307575, 38.850933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.008904, 36.466282, 38.526985>,  <32.905205, 36.561504, 38.332615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.008904, 36.466282, 38.526985>,  <33.181736, 36.307575, 38.850933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008904, 36.466282, 38.526985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603911, -0.539649, -0.586575,
		-0.669777, -0.742534, -0.006440,
		-0.432076, 0.396764, -0.809869,
		32.879280, 36.585312, 38.284023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156811, 35.711609, 38.313900>,  <33.181736, 36.307575, 38.850933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156811, 35.711609, 38.313900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.101887, 36.045315, 38.100304>,  <33.068932, 36.245541, 37.972145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.101887, 36.045315, 38.100304>,  <33.156811, 35.711609, 38.313900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101887, 36.045315, 38.100304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591513, -0.363355, -0.719781,
		-0.794519, -0.414690, -0.443590,
		-0.137305, 0.834269, -0.533987,
		33.060696, 36.295597, 37.940109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164200, 35.490177, 37.738102>,  <33.156811, 35.711609, 38.313900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164200, 35.490177, 37.738102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217632, 35.879765, 37.664848>,  <33.249691, 36.113518, 37.620895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.217632, 35.879765, 37.664848>,  <33.164200, 35.490177, 37.738102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217632, 35.879765, 37.664848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584595, -0.226651, -0.779024,
		-0.800253, -0.002996, -0.599654,
		0.133578, 0.973971, -0.183129,
		33.257706, 36.171955, 37.609909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901733, 35.736675, 37.011246>,  <33.164200, 35.490177, 37.738102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901733, 35.736675, 37.011246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199547, 35.967640, 37.145267>,  <33.378235, 36.106216, 37.225681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199547, 35.967640, 37.145267>,  <32.901733, 35.736675, 37.011246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199547, 35.967640, 37.145267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459095, -0.078481, -0.884914,
		-0.484660, 0.812676, -0.323516,
		0.744538, 0.577407, 0.335059,
		33.422909, 36.140862, 37.245785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087257, 36.001659, 36.397095>,  <32.901733, 35.736675, 37.011246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087257, 36.001659, 36.397095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382366, 36.083733, 36.654339>,  <33.559429, 36.132977, 36.808685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382366, 36.083733, 36.654339>,  <33.087257, 36.001659, 36.397095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382366, 36.083733, 36.654339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664486, -0.052841, -0.745430,
		-0.118968, 0.977296, -0.175326,
		0.737770, 0.205184, 0.643113,
		33.603699, 36.145287, 36.847271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450794, 36.373505, 35.984005>,  <33.087257, 36.001659, 36.397095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450794, 36.373505, 35.984005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703182, 36.272739, 36.277512>,  <33.854614, 36.212280, 36.453617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.703182, 36.272739, 36.277512>,  <33.450794, 36.373505, 35.984005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703182, 36.272739, 36.277512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765070, 0.045211, -0.642358,
		0.128645, 0.966693, 0.221259,
		0.630966, -0.251915, 0.733771,
		33.892471, 36.197166, 36.497643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054005, 36.791142, 35.905849>,  <33.450794, 36.373505, 35.984005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054005, 36.791142, 35.905849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194893, 36.484772, 36.120995>,  <34.279427, 36.300949, 36.250084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.194893, 36.484772, 36.120995>,  <34.054005, 36.791142, 35.905849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194893, 36.484772, 36.120995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811664, -0.036154, -0.583005,
		0.465984, 0.641913, 0.608939,
		0.352223, -0.765924, 0.537865,
		34.300560, 36.254993, 36.282352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816967, 36.967625, 36.017536>,  <34.054005, 36.791142, 35.905849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816967, 36.967625, 36.017536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759113, 36.575237, 36.069366>,  <34.724403, 36.339806, 36.100464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.759113, 36.575237, 36.069366>,  <34.816967, 36.967625, 36.017536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759113, 36.575237, 36.069366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718760, -0.194155, -0.667599,
		0.680049, -0.003424, 0.733159,
		-0.144632, -0.980965, 0.129574,
		34.715725, 36.280949, 36.108238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512772, 36.667007, 36.090553>,  <34.816967, 36.967625, 36.017536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512772, 36.667007, 36.090553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263523, 36.377399, 35.972225>,  <35.113972, 36.203636, 35.901226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263523, 36.377399, 35.972225>,  <35.512772, 36.667007, 36.090553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263523, 36.377399, 35.972225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634745, -0.247155, -0.732130,
		0.456962, -0.643980, 0.613576,
		-0.623125, -0.724020, -0.295822,
		35.076584, 36.160194, 35.883480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244534, 36.587929, 36.268730>,  <35.512772, 36.667007, 36.090553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244534, 36.587929, 36.268730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562576, 36.348274, 36.306328>,  <36.753403, 36.204483, 36.328884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562576, 36.348274, 36.306328>,  <36.244534, 36.587929, 36.268730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562576, 36.348274, 36.306328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131560, -0.019107, 0.991124,
		-0.592023, -0.800419, -0.094015,
		0.795110, -0.599137, 0.093992,
		36.801109, 36.168533, 36.334526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072487, 35.911785, 36.673615>,  <36.244534, 36.587929, 36.268730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072487, 35.911785, 36.673615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455875, 36.021969, 36.703159>,  <36.685909, 36.088081, 36.720886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.455875, 36.021969, 36.703159>,  <36.072487, 35.911785, 36.673615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455875, 36.021969, 36.703159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133884, 0.205921, 0.969367,
		0.251818, -0.938997, 0.234250,
		0.958469, 0.275467, 0.073862,
		36.743416, 36.104607, 36.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305202, 35.513676, 37.197887>,  <36.072487, 35.911785, 36.673615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305202, 35.513676, 37.197887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568535, 35.812263, 37.159161>,  <36.726536, 35.991417, 37.135925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.568535, 35.812263, 37.159161>,  <36.305202, 35.513676, 37.197887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568535, 35.812263, 37.159161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209304, 0.305085, 0.929040,
		0.723041, -0.591355, 0.357087,
		0.658334, 0.746473, -0.096816,
		36.766037, 36.036205, 37.130116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598915, 35.620956, 37.930183>,  <36.305202, 35.513676, 37.197887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598915, 35.620956, 37.930183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703987, 35.957394, 37.741055>,  <36.767029, 36.159256, 37.627579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703987, 35.957394, 37.741055>,  <36.598915, 35.620956, 37.930183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703987, 35.957394, 37.741055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127550, 0.516001, 0.847039,
		0.956415, -0.162192, 0.242825,
		0.262680, 0.841093, -0.472823,
		36.782791, 36.209721, 37.599209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218811, 35.836544, 38.252254>,  <36.598915, 35.620956, 37.930183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218811, 35.836544, 38.252254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037952, 36.146404, 38.075401>,  <36.929436, 36.332321, 37.969288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037952, 36.146404, 38.075401>,  <37.218811, 35.836544, 38.252254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037952, 36.146404, 38.075401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030228, 0.508723, 0.860399,
		0.891432, 0.375661, -0.253433,
		-0.452146, 0.774648, -0.442136,
		36.902309, 36.378799, 37.942760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408314, 36.453526, 38.621723>,  <37.218811, 35.836544, 38.252254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408314, 36.453526, 38.621723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102592, 36.589134, 38.402302>,  <36.919159, 36.670498, 38.270649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102592, 36.589134, 38.402302>,  <37.408314, 36.453526, 38.621723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102592, 36.589134, 38.402302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357827, 0.484711, 0.798132,
		0.536469, 0.806301, -0.249157,
		-0.764304, 0.339018, -0.548549,
		36.873302, 36.690838, 38.237736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422108, 37.183914, 38.638744>,  <37.408314, 36.453526, 38.621723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422108, 37.183914, 38.638744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046726, 37.068604, 38.562634>,  <36.821499, 36.999416, 38.516968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.046726, 37.068604, 38.562634>,  <37.422108, 37.183914, 38.638744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046726, 37.068604, 38.562634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338769, 0.660703, 0.669856,
		-0.067388, 0.693087, -0.717697,
		-0.938453, -0.288274, -0.190273,
		36.765190, 36.982121, 38.505550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089840, 37.901070, 38.642200>,  <37.422108, 37.183914, 38.638744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089840, 37.901070, 38.642200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825920, 37.603973, 38.687801>,  <36.667568, 37.425716, 38.715160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825920, 37.603973, 38.687801>,  <37.089840, 37.901070, 38.642200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825920, 37.603973, 38.687801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490864, 0.540887, 0.683004,
		-0.568956, 0.394689, -0.721463,
		-0.659804, -0.742739, 0.114002,
		36.627979, 37.381153, 38.722004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516895, 38.277466, 38.763039>,  <37.089840, 37.901070, 38.642200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516895, 38.277466, 38.763039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414921, 37.908951, 38.880501>,  <36.353737, 37.687843, 38.950977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.414921, 37.908951, 38.880501>,  <36.516895, 38.277466, 38.763039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414921, 37.908951, 38.880501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606247, 0.388877, 0.693714,
		-0.753308, -0.001176, -0.657667,
		-0.254936, -0.921289, 0.293657,
		36.338440, 37.632565, 38.968597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768356, 38.280266, 38.911564>,  <36.516895, 38.277466, 38.763039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768356, 38.280266, 38.911564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924366, 37.987343, 39.134850>,  <36.017971, 37.811588, 39.268822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924366, 37.987343, 39.134850>,  <35.768356, 38.280266, 38.911564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924366, 37.987343, 39.134850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454163, 0.374364, 0.808447,
		-0.801009, -0.568835, -0.186577,
		0.390025, -0.732310, 0.558213,
		36.041374, 37.767651, 39.302315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281490, 38.091393, 39.321182>,  <35.768356, 38.280266, 38.911564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281490, 38.091393, 39.321182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581001, 37.924820, 39.527451>,  <35.760708, 37.824875, 39.651211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581001, 37.924820, 39.527451>,  <35.281490, 38.091393, 39.321182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581001, 37.924820, 39.527451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432899, 0.281896, 0.856232,
		-0.501930, -0.864359, 0.030802,
		0.748775, -0.416434, 0.515672,
		35.805634, 37.799889, 39.682152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941147, 37.756554, 39.867325>,  <35.281490, 38.091393, 39.321182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941147, 37.756554, 39.867325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323814, 37.809704, 39.970959>,  <35.553417, 37.841595, 40.033138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323814, 37.809704, 39.970959>,  <34.941147, 37.756554, 39.867325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323814, 37.809704, 39.970959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277684, 0.148680, 0.949098,
		0.087587, -0.979918, 0.179134,
		0.956671, 0.132871, 0.259085,
		35.610817, 37.849567, 40.048683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116512, 37.155228, 40.310410>,  <34.941147, 37.756554, 39.867325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116512, 37.155228, 40.310410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342819, 37.478855, 40.374062>,  <35.478603, 37.673031, 40.412254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342819, 37.478855, 40.374062>,  <35.116512, 37.155228, 40.310410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342819, 37.478855, 40.374062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371497, 0.077818, 0.925167,
		0.736137, -0.582545, 0.344592,
		0.565767, 0.809065, 0.159129,
		35.512550, 37.721573, 40.421799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324623, 37.149094, 41.001339>,  <35.116512, 37.155228, 40.310410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324623, 37.149094, 41.001339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366474, 37.535961, 40.908691>,  <35.391586, 37.768082, 40.853104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.366474, 37.535961, 40.908691>,  <35.324623, 37.149094, 41.001339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366474, 37.535961, 40.908691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531002, 0.251246, 0.809266,
		0.840886, 0.038314, 0.539854,
		0.104630, 0.967165, -0.231615,
		35.397861, 37.826111, 40.839207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501553, 37.392979, 41.607735>,  <35.324623, 37.149094, 41.001339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501553, 37.392979, 41.607735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388550, 37.713364, 41.396584>,  <35.320747, 37.905594, 41.269894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388550, 37.713364, 41.396584>,  <35.501553, 37.392979, 41.607735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388550, 37.713364, 41.396584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435195, 0.383392, 0.814626,
		0.854867, 0.459865, 0.240264,
		-0.282503, 0.800958, -0.527880,
		35.303799, 37.953651, 41.238220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558262, 38.006336, 42.047283>,  <35.501553, 37.392979, 41.607735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558262, 38.006336, 42.047283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351269, 38.187038, 41.756596>,  <35.227074, 38.295460, 41.582184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351269, 38.187038, 41.756596>,  <35.558262, 38.006336, 42.047283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351269, 38.187038, 41.756596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654293, 0.338428, 0.676289,
		0.551460, 0.825460, 0.120449,
		-0.517486, 0.451755, -0.726722,
		35.196022, 38.322563, 41.538578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443707, 38.717697, 42.336720>,  <35.558262, 38.006336, 42.047283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443707, 38.717697, 42.336720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179977, 38.621735, 42.051697>,  <35.021740, 38.564159, 41.880684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.179977, 38.621735, 42.051697>,  <35.443707, 38.717697, 42.336720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179977, 38.621735, 42.051697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741435, 0.364735, 0.563244,
		0.124770, 0.899675, -0.418351,
		-0.659323, -0.239904, -0.712558,
		34.982182, 38.549763, 41.837929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068825, 39.275188, 42.270851>,  <35.443707, 38.717697, 42.336720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068825, 39.275188, 42.270851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845303, 38.973518, 42.132893>,  <34.711189, 38.792515, 42.050117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.845303, 38.973518, 42.132893>,  <35.068825, 39.275188, 42.270851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845303, 38.973518, 42.132893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739473, 0.264886, 0.618883,
		-0.375387, 0.600879, -0.705712,
		-0.558807, -0.754175, -0.344899,
		34.677662, 38.747265, 42.029423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394733, 39.600788, 42.302814>,  <35.068825, 39.275188, 42.270851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394733, 39.600788, 42.302814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310783, 39.211613, 42.264160>,  <34.260414, 38.978107, 42.240967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310783, 39.211613, 42.264160>,  <34.394733, 39.600788, 42.302814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310783, 39.211613, 42.264160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851184, 0.133184, 0.507689,
		-0.481081, 0.188808, -0.856103,
		-0.209875, -0.972941, -0.096638,
		34.247822, 38.919731, 42.235168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.615353, 39.517448, 41.887577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709209, 39.195210, 42.105186>,  <33.765522, 39.001865, 42.235752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709209, 39.195210, 42.105186>,  <33.615353, 39.517448, 41.887577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709209, 39.195210, 42.105186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786832, 0.171240, 0.592936,
		-0.570825, -0.567180, -0.593689,
		0.234638, -0.805596, 0.544023,
		33.779602, 38.953529, 42.268394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967777, 39.219967, 41.934303>,  <33.615353, 39.517448, 41.887577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967777, 39.219967, 41.934303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160511, 39.019535, 42.221844>,  <33.276154, 38.899277, 42.394367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160511, 39.019535, 42.221844>,  <32.967777, 39.219967, 41.934303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160511, 39.019535, 42.221844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763955, 0.161596, 0.624708,
		-0.429192, -0.850180, -0.304940,
		0.481837, -0.501080, 0.718855,
		33.305061, 38.869213, 42.437500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437569, 38.841370, 42.257381>,  <32.967777, 39.219967, 41.934303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437569, 38.841370, 42.257381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733479, 38.829521, 42.526264>,  <32.911022, 38.822411, 42.687595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.733479, 38.829521, 42.526264>,  <32.437569, 38.841370, 42.257381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733479, 38.829521, 42.526264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666339, 0.106485, 0.738007,
		-0.093441, -0.993873, 0.059036,
		0.739771, -0.029622, 0.672206,
		32.955410, 38.820637, 42.727924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263481, 38.273788, 42.824532>,  <32.437569, 38.841370, 42.257381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263481, 38.273788, 42.824532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530704, 38.519657, 42.992287>,  <32.691040, 38.667179, 43.092937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530704, 38.519657, 42.992287>,  <32.263481, 38.273788, 42.824532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530704, 38.519657, 42.992287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655135, 0.218607, 0.723194,
		0.352844, -0.757888, 0.548732,
		0.668057, 0.614668, 0.419384,
		32.731121, 38.704056, 43.118103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358864, 38.003944, 43.492741>,  <32.263481, 38.273788, 42.824532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358864, 38.003944, 43.492741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438519, 38.395912, 43.488659>,  <32.486313, 38.631092, 43.486210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438519, 38.395912, 43.488659>,  <32.358864, 38.003944, 43.492741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438519, 38.395912, 43.488659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739771, 0.157147, 0.654251,
		0.642716, -0.122737, 0.756208,
		0.199136, 0.979919, -0.010204,
		32.498260, 38.689888, 43.485600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289654, 38.210560, 44.198353>,  <32.358864, 38.003944, 43.492741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289654, 38.210560, 44.198353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.338585, 38.576492, 44.044411>,  <32.367943, 38.796051, 43.952045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.338585, 38.576492, 44.044411>,  <32.289654, 38.210560, 44.198353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338585, 38.576492, 44.044411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624171, 0.372400, 0.686825,
		0.771651, 0.156196, 0.616569,
		0.122332, 0.914834, -0.384856,
		32.375286, 38.850941, 43.928955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564312, 38.695984, 44.725132>,  <32.289654, 38.210560, 44.198353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564312, 38.695984, 44.725132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337334, 38.885143, 44.455505>,  <32.201145, 38.998638, 44.293728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.337334, 38.885143, 44.455505>,  <32.564312, 38.695984, 44.725132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337334, 38.885143, 44.455505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527892, 0.419324, 0.738578,
		0.631928, 0.774939, 0.011696,
		-0.567448, 0.472902, -0.674067,
		32.167099, 39.027016, 44.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559212, 39.354446, 44.865623>,  <32.564312, 38.695984, 44.725132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559212, 39.354446, 44.865623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220177, 39.322178, 44.655827>,  <32.016754, 39.302818, 44.529949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220177, 39.322178, 44.655827>,  <32.559212, 39.354446, 44.865623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220177, 39.322178, 44.655827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511030, 0.390393, 0.765795,
		0.142980, 0.917107, -0.372117,
		-0.847588, -0.080669, -0.524488,
		31.965900, 39.297977, 44.498482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281567, 39.953671, 44.864811>,  <32.559212, 39.354446, 44.865623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281567, 39.953671, 44.864811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966558, 39.719524, 44.787708>,  <31.777554, 39.579037, 44.741447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.966558, 39.719524, 44.787708>,  <32.281567, 39.953671, 44.864811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966558, 39.719524, 44.787708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473415, 0.374346, 0.797335,
		-0.394574, 0.719174, -0.571927,
		-0.787521, -0.585367, -0.192760,
		31.730303, 39.543915, 44.729881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763523, 40.369133, 44.920311>,  <32.281567, 39.953671, 44.864811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763523, 40.369133, 44.920311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587461, 40.010803, 44.944836>,  <31.481825, 39.795807, 44.959553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.587461, 40.010803, 44.944836>,  <31.763523, 40.369133, 44.920311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587461, 40.010803, 44.944836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517816, 0.309025, 0.797728,
		-0.733573, 0.319375, -0.599892,
		-0.440156, -0.895825, 0.061315,
		31.455414, 39.742054, 44.963230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147249, 40.599483, 45.221519>,  <31.763523, 40.369133, 44.920311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147249, 40.599483, 45.221519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149868, 40.202442, 45.270012>,  <31.151440, 39.964218, 45.299107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149868, 40.202442, 45.270012>,  <31.147249, 40.599483, 45.221519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149868, 40.202442, 45.270012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493655, 0.102222, 0.863629,
		-0.869633, -0.065501, -0.489334,
		0.006548, -0.992603, 0.121231,
		31.151833, 39.904663, 45.306381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471161, 40.344654, 45.408276>,  <31.147249, 40.599483, 45.221519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471161, 40.344654, 45.408276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724842, 40.065884, 45.542194>,  <30.877050, 39.898621, 45.622543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724842, 40.065884, 45.542194>,  <30.471161, 40.344654, 45.408276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724842, 40.065884, 45.542194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310144, 0.167336, 0.935847,
		-0.708236, -0.697350, -0.110022,
		0.634202, -0.696923, 0.334793,
		30.915102, 39.856808, 45.642632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016253, 39.886532, 45.826233>,  <30.471161, 40.344654, 45.408276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016253, 39.886532, 45.826233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386065, 39.772511, 45.927414>,  <30.607952, 39.704098, 45.988125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.386065, 39.772511, 45.927414>,  <30.016253, 39.886532, 45.826233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386065, 39.772511, 45.927414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277385, -0.048155, 0.959551,
		-0.261341, -0.957301, -0.123590,
		0.924532, -0.285053, 0.252956,
		30.663424, 39.686996, 46.003300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817503, 39.321392, 46.271820>,  <30.016253, 39.886532, 45.826233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817503, 39.321392, 46.271820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188332, 39.439312, 46.364456>,  <30.410828, 39.510063, 46.420036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188332, 39.439312, 46.364456>,  <29.817503, 39.321392, 46.271820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188332, 39.439312, 46.364456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237869, -0.014908, 0.971183,
		0.289761, -0.955441, 0.056304,
		0.927069, 0.294804, 0.231590,
		30.466452, 39.527752, 46.433933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130234, 38.840626, 46.715580>,  <29.817503, 39.321392, 46.271820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130234, 38.840626, 46.715580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321657, 39.182682, 46.795288>,  <30.436512, 39.387917, 46.843113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.321657, 39.182682, 46.795288>,  <30.130234, 38.840626, 46.715580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321657, 39.182682, 46.795288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082032, -0.182405, 0.979796,
		0.874215, -0.485237, -0.017142,
		0.478560, 0.855145, 0.199266,
		30.465225, 39.439224, 46.855068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336479, 38.664036, 47.412086>,  <30.130234, 38.840626, 46.715580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336479, 38.664036, 47.412086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381672, 39.059181, 47.369453>,  <30.408789, 39.296268, 47.343876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.381672, 39.059181, 47.369453>,  <30.336479, 38.664036, 47.412086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381672, 39.059181, 47.369453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068888, 0.099222, 0.992678,
		0.991206, -0.119498, -0.056842,
		0.112983, 0.987864, -0.106581,
		30.415567, 39.355541, 47.337479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007860, 38.756500, 47.784313>,  <30.336479, 38.664036, 47.412086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007860, 38.756500, 47.784313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.793949, 39.091682, 47.740772>,  <30.665602, 39.292789, 47.714649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.793949, 39.091682, 47.740772>,  <31.007860, 38.756500, 47.784313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793949, 39.091682, 47.740772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155390, 0.029098, 0.987425,
		0.830582, 0.544967, 0.114648,
		-0.534778, 0.837952, -0.108851,
		30.633516, 39.343067, 47.708118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393444, 39.384239, 48.164070>,  <31.007860, 38.756500, 47.784313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393444, 39.384239, 48.164070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018423, 39.523190, 48.156818>,  <30.793411, 39.606560, 48.152466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.018423, 39.523190, 48.156818>,  <31.393444, 39.384239, 48.164070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018423, 39.523190, 48.156818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067884, 0.233830, 0.969905,
		0.341161, 0.908104, -0.242809,
		-0.937550, 0.347377, -0.018128,
		30.737158, 39.627403, 48.151379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427870, 39.904869, 48.610168>,  <31.393444, 39.384239, 48.164070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427870, 39.904869, 48.610168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037464, 39.831059, 48.563953>,  <30.803221, 39.786774, 48.536224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037464, 39.831059, 48.563953>,  <31.427870, 39.904869, 48.610168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037464, 39.831059, 48.563953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123092, 0.030000, 0.991942,
		-0.179573, 0.982370, -0.051994,
		-0.976013, -0.184526, -0.115534,
		30.744659, 39.775700, 48.529293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966980, 40.454567, 48.962887>,  <31.427870, 39.904869, 48.610168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966980, 40.454567, 48.962887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753965, 40.116722, 48.940868>,  <30.626156, 39.914013, 48.927658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753965, 40.116722, 48.940868>,  <30.966980, 40.454567, 48.962887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753965, 40.116722, 48.940868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263198, 0.103432, 0.959181,
		-0.804444, 0.525290, -0.277382,
		-0.532538, -0.844614, -0.055050,
		30.594204, 39.863338, 48.924355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514107, 40.666965, 49.390823>,  <30.966980, 40.454567, 48.962887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514107, 40.666965, 49.390823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482239, 40.271709, 49.338314>,  <30.463118, 40.034557, 49.306808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.482239, 40.271709, 49.338314>,  <30.514107, 40.666965, 49.390823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482239, 40.271709, 49.338314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004758, -0.132071, 0.991229,
		-0.996810, 0.078348, 0.015224,
		-0.079672, -0.988139, -0.131277,
		30.458338, 39.975269, 49.298931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963261, 40.306736, 49.875629>,  <30.514107, 40.666965, 49.390823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963261, 40.306736, 49.875629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276373, 40.070206, 49.798084>,  <30.464241, 39.928288, 49.751556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.276373, 40.070206, 49.798084>,  <29.963261, 40.306736, 49.875629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276373, 40.070206, 49.798084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153851, -0.117957, 0.981028,
		-0.602976, -0.797758, -0.001358,
		0.782783, -0.591328, -0.193862,
		30.511208, 39.892807, 49.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337337, 40.620998, 49.586292>,  <29.963261, 40.306736, 49.875629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337337, 40.620998, 49.586292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047899, 40.694435, 49.320148>,  <28.874235, 40.738499, 49.160461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047899, 40.694435, 49.320148>,  <29.337337, 40.620998, 49.586292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047899, 40.694435, 49.320148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158845, -0.982395, -0.098326,
		-0.671696, 0.034540, 0.740022,
		-0.723597, 0.183594, -0.665357,
		28.830820, 40.749512, 49.120541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900928, 39.933300, 49.748806>,  <29.337337, 40.620998, 49.586292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900928, 39.933300, 49.748806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.595221, 39.675438, 49.755936>,  <28.411797, 39.520721, 49.760216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.595221, 39.675438, 49.755936>,  <28.900928, 39.933300, 49.748806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595221, 39.675438, 49.755936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500199, -0.610008, -0.614566,
		0.407056, -0.460776, 0.788664,
		-0.764268, -0.644652, 0.017828,
		28.365940, 39.482044, 49.761284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183264, 39.539509, 49.336277>,  <28.900928, 39.933300, 49.748806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183264, 39.539509, 49.336277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843765, 39.345985, 49.421654>,  <28.640066, 39.229874, 49.472881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843765, 39.345985, 49.421654>,  <29.183264, 39.539509, 49.336277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843765, 39.345985, 49.421654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227899, -0.698899, -0.677939,
		0.477169, -0.526755, 0.703448,
		-0.848747, -0.483807, 0.213446,
		28.589142, 39.200844, 49.485687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350639, 38.842804, 49.482857>,  <29.183264, 39.539509, 49.336277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350639, 38.842804, 49.482857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973440, 38.843029, 49.349735>,  <28.747122, 38.843163, 49.269863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.973440, 38.843029, 49.349735>,  <29.350639, 38.842804, 49.482857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973440, 38.843029, 49.349735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268907, -0.587885, -0.762942,
		-0.196078, -0.808944, 0.554222,
		-0.942996, 0.000562, -0.332802,
		28.690540, 38.843197, 49.249893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188396, 38.173470, 49.174747>,  <29.350639, 38.842804, 49.482857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188396, 38.173470, 49.174747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879234, 38.358498, 49.001011>,  <28.693737, 38.469513, 48.896770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.879234, 38.358498, 49.001011>,  <29.188396, 38.173470, 49.174747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879234, 38.358498, 49.001011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066533, -0.621659, -0.780457,
		-0.631024, -0.632117, 0.449707,
		-0.772905, 0.462567, -0.434338,
		28.647364, 38.497269, 48.870708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654905, 37.680519, 48.871040>,  <29.188396, 38.173470, 49.174747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654905, 37.680519, 48.871040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572796, 38.029606, 48.693851>,  <28.523531, 38.239059, 48.587536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572796, 38.029606, 48.693851>,  <28.654905, 37.680519, 48.871040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572796, 38.029606, 48.693851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047943, -0.461036, -0.886086,
		-0.977530, -0.160653, 0.136479,
		-0.205274, 0.872718, -0.442974,
		28.511213, 38.291420, 48.560959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250126, 37.507759, 48.399040>,  <28.654905, 37.680519, 48.871040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250126, 37.507759, 48.399040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366060, 37.865337, 48.262306>,  <28.435621, 38.079884, 48.180264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366060, 37.865337, 48.262306>,  <28.250126, 37.507759, 48.399040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366060, 37.865337, 48.262306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080437, -0.333153, -0.939436,
		-0.953689, 0.299781, -0.024654,
		0.289838, 0.893947, -0.341838,
		28.453012, 38.133522, 48.159756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775492, 37.743534, 47.842979>,  <28.250126, 37.507759, 48.399040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775492, 37.743534, 47.842979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109226, 37.952164, 47.771603>,  <28.309467, 38.077343, 47.728775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109226, 37.952164, 47.771603>,  <27.775492, 37.743534, 47.842979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109226, 37.952164, 47.771603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077651, -0.209275, -0.974769,
		-0.545762, 0.827139, -0.134104,
		0.834334, 0.521579, -0.178443,
		28.359526, 38.108639, 47.718071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600855, 38.142052, 47.218872>,  <27.775492, 37.743534, 47.842979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600855, 38.142052, 47.218872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.999662, 38.129097, 47.246887>,  <28.238947, 38.121323, 47.263695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.999662, 38.129097, 47.246887>,  <27.600855, 38.142052, 47.218872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999662, 38.129097, 47.246887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066427, -0.101487, -0.992617,
		0.039258, 0.994310, -0.099033,
		0.997019, -0.032390, 0.070034,
		28.298767, 38.119381, 47.267899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804321, 38.548042, 46.668522>,  <27.600855, 38.142052, 47.218872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804321, 38.548042, 46.668522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125420, 38.316410, 46.725456>,  <28.318079, 38.177429, 46.759617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125420, 38.316410, 46.725456>,  <27.804321, 38.548042, 46.668522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125420, 38.316410, 46.725456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232957, 0.084816, -0.968781,
		0.548933, 0.810845, 0.202987,
		0.802748, -0.579083, 0.142334,
		28.366243, 38.142685, 46.768158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219936, 38.838406, 46.164173>,  <27.804321, 38.548042, 46.668522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219936, 38.838406, 46.164173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.389122, 38.492973, 46.273960>,  <28.490633, 38.285713, 46.339832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.389122, 38.492973, 46.273960>,  <28.219936, 38.838406, 46.164173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389122, 38.492973, 46.273960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484339, -0.040543, -0.873941,
		0.765843, 0.502584, 0.401116,
		0.422966, -0.863577, 0.274471,
		28.516012, 38.233902, 46.356300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913168, 38.945484, 46.020237>,  <28.219936, 38.838406, 46.164173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913168, 38.945484, 46.020237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827251, 38.554913, 46.028679>,  <28.775702, 38.320568, 46.033745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.827251, 38.554913, 46.028679>,  <28.913168, 38.945484, 46.020237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827251, 38.554913, 46.028679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467535, -0.121768, -0.875548,
		0.857482, -0.178194, 0.482671,
		-0.214791, -0.976432, 0.021102,
		28.762814, 38.261982, 46.035011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573811, 38.609409, 45.917534>,  <28.913168, 38.945484, 46.020237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573811, 38.609409, 45.917534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271687, 38.386616, 45.779388>,  <29.090412, 38.252941, 45.696499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271687, 38.386616, 45.779388>,  <29.573811, 38.609409, 45.917534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271687, 38.386616, 45.779388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498727, -0.146611, -0.854270,
		0.425177, -0.817483, 0.388518,
		-0.755312, -0.556980, -0.345365,
		29.045094, 38.219521, 45.675777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918596, 38.068825, 45.555305>,  <29.573811, 38.609409, 45.917534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918596, 38.068825, 45.555305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542677, 38.054741, 45.419342>,  <29.317125, 38.046291, 45.337765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.542677, 38.054741, 45.419342>,  <29.918596, 38.068825, 45.555305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542677, 38.054741, 45.419342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341525, -0.062416, -0.937798,
		0.011801, -0.997429, 0.070682,
		-0.939799, -0.035207, -0.339910,
		29.260736, 38.044178, 45.317368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996231, 37.760216, 44.914001>,  <29.918596, 38.068825, 45.555305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996231, 37.760216, 44.914001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619528, 37.890663, 44.881157>,  <29.393507, 37.968933, 44.861450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.619528, 37.890663, 44.881157>,  <29.996231, 37.760216, 44.914001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619528, 37.890663, 44.881157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084695, -0.006291, -0.996387,
		-0.325458, -0.945307, -0.021696,
		-0.941756, 0.326120, -0.082110,
		29.337002, 37.988499, 44.856525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651611, 37.352859, 44.560413>,  <29.996231, 37.760216, 44.914001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651611, 37.352859, 44.560413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467196, 37.700611, 44.489277>,  <29.356546, 37.909264, 44.446594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467196, 37.700611, 44.489277>,  <29.651611, 37.352859, 44.560413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467196, 37.700611, 44.489277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151741, -0.120217, -0.981082,
		-0.874310, -0.479301, -0.076496,
		-0.461038, 0.869378, -0.177837,
		29.328884, 37.961426, 44.435925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335455, 37.298683, 43.850925>,  <29.651611, 37.352859, 44.560413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335455, 37.298683, 43.850925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310026, 37.694557, 43.902267>,  <29.294769, 37.932083, 43.933075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310026, 37.694557, 43.902267>,  <29.335455, 37.298683, 43.850925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310026, 37.694557, 43.902267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050616, 0.131651, -0.990003,
		-0.996693, -0.056440, -0.058463,
		-0.063572, 0.989688, 0.128359,
		29.290955, 37.991463, 43.940777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816013, 37.516586, 43.400379>,  <29.335455, 37.298683, 43.850925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816013, 37.516586, 43.400379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.059011, 37.825081, 43.476418>,  <29.204811, 38.010178, 43.522041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.059011, 37.825081, 43.476418>,  <28.816013, 37.516586, 43.400379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059011, 37.825081, 43.476418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179715, 0.099655, -0.978658,
		-0.773724, 0.628695, -0.078063,
		0.607498, 0.771240, 0.190092,
		29.241261, 38.056454, 43.533443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626860, 38.047382, 43.011368>,  <28.816013, 37.516586, 43.400379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626860, 38.047382, 43.011368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010950, 38.123734, 43.092884>,  <29.241404, 38.169544, 43.141796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.010950, 38.123734, 43.092884>,  <28.626860, 38.047382, 43.011368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010950, 38.123734, 43.092884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169633, 0.180957, -0.968751,
		-0.221794, 0.964790, 0.141380,
		0.960225, 0.190881, 0.203795,
		29.299017, 38.180996, 43.154022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801294, 38.527470, 42.502388>,  <28.626860, 38.047382, 43.011368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801294, 38.527470, 42.502388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169752, 38.451939, 42.638527>,  <29.390827, 38.406620, 42.720211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169752, 38.451939, 42.638527>,  <28.801294, 38.527470, 42.502388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169752, 38.451939, 42.638527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388171, 0.381596, -0.838873,
		0.028524, 0.904837, 0.424802,
		0.921146, -0.188824, 0.340346,
		29.446096, 38.395290, 42.740631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279564, 39.188797, 42.369785>,  <28.801294, 38.527470, 42.502388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279564, 39.188797, 42.369785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501701, 38.857918, 42.404057>,  <29.634983, 38.659389, 42.424618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.501701, 38.857918, 42.404057>,  <29.279564, 39.188797, 42.369785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501701, 38.857918, 42.404057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544524, 0.283819, -0.789265,
		0.628561, 0.484965, 0.608046,
		0.555341, -0.827197, 0.085678,
		29.668304, 38.609760, 42.429760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082199, 39.292767, 42.051517>,  <29.279564, 39.188797, 42.369785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082199, 39.292767, 42.051517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028761, 38.896557, 42.064220>,  <29.996698, 38.658829, 42.071842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.028761, 38.896557, 42.064220>,  <30.082199, 39.292767, 42.051517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028761, 38.896557, 42.064220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527066, -0.098152, -0.844137,
		0.839258, -0.096035, 0.535186,
		-0.133596, -0.990527, 0.031758,
		29.988682, 38.599400, 42.073750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.647804, 30.717239, 28.246164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344284, 30.682573, 27.987953>,  <46.162170, 30.661774, 27.833027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.344284, 30.682573, 27.987953>,  <46.647804, 30.717239, 28.246164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344284, 30.682573, 27.987953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634608, 0.321441, 0.702814,
		0.146590, 0.942955, -0.298909,
		-0.758804, -0.086665, -0.645527,
		46.116642, 30.656574, 27.794294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281044, 31.488415, 28.183125>,  <46.647804, 30.717239, 28.246164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281044, 31.488415, 28.183125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051891, 31.169830, 28.105707>,  <45.914402, 30.978680, 28.059258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051891, 31.169830, 28.105707>,  <46.281044, 31.488415, 28.183125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051891, 31.169830, 28.105707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722807, 0.379572, 0.577472,
		-0.386471, 0.470715, -0.793137,
		-0.572878, -0.796462, -0.193543,
		45.880028, 30.930891, 28.047644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642109, 31.705076, 27.896132>,  <46.281044, 31.488415, 28.183125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642109, 31.705076, 27.896132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536640, 31.362469, 28.073605>,  <45.473358, 31.156904, 28.180088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.536640, 31.362469, 28.073605>,  <45.642109, 31.705076, 27.896132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.536640, 31.362469, 28.073605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764141, 0.466177, 0.445833,
		-0.588700, -0.221486, -0.777417,
		-0.263668, -0.856518, 0.443685,
		45.457539, 31.105513, 28.206711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855347, 31.663355, 27.953554>,  <45.642109, 31.705076, 27.896132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855347, 31.663355, 27.953554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984207, 31.401068, 28.226685>,  <45.061523, 31.243696, 28.390562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984207, 31.401068, 28.226685>,  <44.855347, 31.663355, 27.953554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984207, 31.401068, 28.226685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760089, 0.250816, 0.599463,
		-0.564343, -0.712127, -0.417603,
		0.322152, -0.655718, 0.682826,
		45.080853, 31.204351, 28.431532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311901, 31.380844, 28.106157>,  <44.855347, 31.663355, 27.953554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311901, 31.380844, 28.106157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563576, 31.293924, 28.404663>,  <44.714581, 31.241772, 28.583767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563576, 31.293924, 28.404663>,  <44.311901, 31.380844, 28.106157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563576, 31.293924, 28.404663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698347, 0.263469, 0.665504,
		-0.341232, -0.939875, 0.014019,
		0.629184, -0.217301, 0.746263,
		44.752331, 31.228733, 28.628542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795593, 31.140547, 28.634306>,  <44.311901, 31.380844, 28.106157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795593, 31.140547, 28.634306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130207, 31.224962, 28.836563>,  <44.330975, 31.275612, 28.957918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130207, 31.224962, 28.836563>,  <43.795593, 31.140547, 28.634306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130207, 31.224962, 28.836563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547915, 0.324001, 0.771241,
		-0.001068, -0.922218, 0.386668,
		0.836533, 0.211038, 0.505643,
		44.381168, 31.288273, 28.988256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796158, 30.758377, 29.265045>,  <43.795593, 31.140547, 28.634306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796158, 30.758377, 29.265045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025837, 31.083817, 29.301601>,  <44.163647, 31.279079, 29.323536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.025837, 31.083817, 29.301601>,  <43.796158, 30.758377, 29.265045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025837, 31.083817, 29.301601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497805, 0.258328, 0.827923,
		0.649987, -0.520890, 0.553345,
		0.574202, 0.813597, 0.091392,
		44.198097, 31.327896, 29.329020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828915, 30.824621, 29.912291>,  <43.796158, 30.758377, 29.265045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828915, 30.824621, 29.912291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002659, 31.169298, 29.807360>,  <44.106907, 31.376104, 29.744400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002659, 31.169298, 29.807360>,  <43.828915, 30.824621, 29.912291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002659, 31.169298, 29.807360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376585, 0.438293, 0.816139,
		0.818237, -0.255713, 0.514878,
		0.434365, 0.861691, -0.262330,
		44.132969, 31.427805, 29.728661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255058, 30.969227, 30.550171>,  <43.828915, 30.824621, 29.912291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255058, 30.969227, 30.550171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144562, 31.277882, 30.320993>,  <44.078266, 31.463076, 30.183487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144562, 31.277882, 30.320993>,  <44.255058, 30.969227, 30.550171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144562, 31.277882, 30.320993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423713, 0.437303, 0.793243,
		0.862647, 0.461888, 0.206154,
		-0.276238, 0.771638, -0.572946,
		44.061691, 31.509373, 30.149109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559349, 31.694220, 30.813702>,  <44.255058, 30.969227, 30.550171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559349, 31.694220, 30.813702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232307, 31.762562, 30.593763>,  <44.036083, 31.803568, 30.461800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232307, 31.762562, 30.593763>,  <44.559349, 31.694220, 30.813702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232307, 31.762562, 30.593763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382895, 0.551867, 0.740834,
		0.430018, 0.816243, -0.385788,
		-0.817604, 0.170855, -0.549848,
		43.987026, 31.813818, 30.428808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.467438, 32.384350, 30.741722>,  <44.559349, 31.694220, 30.813702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.467438, 32.384350, 30.741722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098648, 32.251488, 30.662088>,  <43.877373, 32.171768, 30.614307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098648, 32.251488, 30.662088>,  <44.467438, 32.384350, 30.741722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098648, 32.251488, 30.662088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371559, 0.613896, 0.696474,
		-0.109124, 0.716102, -0.689412,
		-0.921974, -0.332159, -0.199084,
		43.822056, 32.151840, 30.602364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067146, 33.006016, 30.683046>,  <44.467438, 32.384350, 30.741722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067146, 33.006016, 30.683046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773960, 32.736603, 30.721235>,  <43.598049, 32.574955, 30.744148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773960, 32.736603, 30.721235>,  <44.067146, 33.006016, 30.683046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773960, 32.736603, 30.721235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473710, 0.606078, 0.638958,
		-0.488226, 0.423106, -0.763294,
		-0.732962, -0.673536, 0.095474,
		43.554070, 32.534542, 30.749878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403442, 33.354862, 30.548777>,  <44.067146, 33.006016, 30.683046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403442, 33.354862, 30.548777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303757, 33.031300, 30.761778>,  <43.243946, 32.837162, 30.889578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303757, 33.031300, 30.761778>,  <43.403442, 33.354862, 30.548777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303757, 33.031300, 30.761778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485649, 0.580103, 0.653931,
		-0.837876, -0.095639, -0.537417,
		-0.249216, -0.808909, 0.532502,
		43.228992, 32.788628, 30.921528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664921, 33.417847, 30.755241>,  <43.403442, 33.354862, 30.548777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664921, 33.417847, 30.755241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852135, 33.181740, 31.018309>,  <42.964462, 33.040077, 31.176149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.852135, 33.181740, 31.018309>,  <42.664921, 33.417847, 30.755241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852135, 33.181740, 31.018309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435685, 0.493352, 0.752849,
		-0.768842, -0.638900, -0.026261,
		0.468040, -0.590263, 0.657669,
		42.992546, 33.004662, 31.215609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129089, 33.146843, 31.170870>,  <42.664921, 33.417847, 30.755241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129089, 33.146843, 31.170870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464775, 33.096024, 31.382370>,  <42.666187, 33.065533, 31.509270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464775, 33.096024, 31.382370>,  <42.129089, 33.146843, 31.170870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464775, 33.096024, 31.382370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391895, 0.532808, 0.750022,
		-0.377009, -0.836645, 0.397353,
		0.839215, -0.127044, 0.528751,
		42.716541, 33.057911, 31.540995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878532, 33.033634, 31.872801>,  <42.129089, 33.146843, 31.170870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878532, 33.033634, 31.872801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265129, 33.131027, 31.905334>,  <42.497086, 33.189461, 31.924854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265129, 33.131027, 31.905334>,  <41.878532, 33.033634, 31.872801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265129, 33.131027, 31.905334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179631, 0.415126, 0.891854,
		0.183385, -0.876577, 0.444952,
		0.966490, 0.243480, 0.081332,
		42.555077, 33.204071, 31.929733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015404, 32.906952, 32.428909>,  <41.878532, 33.033634, 31.872801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015404, 32.906952, 32.428909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332516, 33.144730, 32.375034>,  <42.522781, 33.287395, 32.342709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.332516, 33.144730, 32.375034>,  <42.015404, 32.906952, 32.428909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332516, 33.144730, 32.375034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124569, 0.374326, 0.918892,
		0.596643, -0.711701, 0.370807,
		0.792779, 0.594441, -0.134684,
		42.570351, 33.323063, 32.334629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368420, 32.968426, 33.092163>,  <42.015404, 32.906952, 32.428909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368420, 32.968426, 33.092163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493176, 33.288479, 32.887218>,  <42.568027, 33.480511, 32.764252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.493176, 33.288479, 32.887218>,  <42.368420, 32.968426, 33.092163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493176, 33.288479, 32.887218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302708, 0.594840, 0.744670,
		0.900608, -0.077157, 0.427729,
		0.311887, 0.800132, -0.512362,
		42.586742, 33.528519, 32.733509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829895, 33.351982, 33.558178>,  <42.368420, 32.968426, 33.092163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829895, 33.351982, 33.558178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693375, 33.588253, 33.265709>,  <42.611462, 33.730015, 33.090225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.693375, 33.588253, 33.265709>,  <42.829895, 33.351982, 33.558178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.693375, 33.588253, 33.265709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271981, 0.682546, 0.678348,
		0.899745, 0.430386, -0.072301,
		-0.341300, 0.590676, -0.731174,
		42.590984, 33.765457, 33.046356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087975, 34.023304, 33.706345>,  <42.829895, 33.351982, 33.558178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087975, 34.023304, 33.706345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763401, 34.094574, 33.483696>,  <42.568657, 34.137337, 33.350105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763401, 34.094574, 33.483696>,  <43.087975, 34.023304, 33.706345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763401, 34.094574, 33.483696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318720, 0.663407, 0.676985,
		0.489890, 0.726735, -0.481523,
		-0.811434, 0.178177, -0.556621,
		42.519970, 34.148026, 33.316711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962696, 34.808437, 33.778000>,  <43.087975, 34.023304, 33.706345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962696, 34.808437, 33.778000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627506, 34.638416, 33.641102>,  <42.426392, 34.536404, 33.558964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.627506, 34.638416, 33.641102>,  <42.962696, 34.808437, 33.778000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627506, 34.638416, 33.641102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519299, 0.428358, 0.739485,
		-0.167720, 0.797395, -0.579683,
		-0.837973, -0.425055, -0.342242,
		42.376114, 34.510899, 33.538429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520653, 35.209663, 34.023312>,  <42.962696, 34.808437, 33.778000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520653, 35.209663, 34.023312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911240, 35.245232, 34.101906>,  <44.145592, 35.266575, 34.149063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911240, 35.245232, 34.101906>,  <43.520653, 35.209663, 34.023312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911240, 35.245232, 34.101906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207796, -0.143999, -0.967515,
		-0.057742, 0.985574, -0.159088,
		0.976466, 0.088924, 0.196484,
		44.204178, 35.271908, 34.160851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877625, 35.828724, 33.603542>,  <43.520653, 35.209663, 34.023312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877625, 35.828724, 33.603542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138355, 35.530926, 33.661293>,  <44.294792, 35.352245, 33.695942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.138355, 35.530926, 33.661293>,  <43.877625, 35.828724, 33.603542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138355, 35.530926, 33.661293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135986, -0.072549, -0.988051,
		0.746077, 0.663671, 0.053952,
		0.651826, -0.744498, 0.144377,
		44.333904, 35.307575, 33.704605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526970, 36.063126, 33.445988>,  <43.877625, 35.828724, 33.603542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526970, 36.063126, 33.445988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523731, 35.666870, 33.391479>,  <44.521790, 35.429115, 33.358776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523731, 35.666870, 33.391479>,  <44.526970, 36.063126, 33.445988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523731, 35.666870, 33.391479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236894, 0.130493, -0.962732,
		0.971502, -0.040071, 0.233621,
		-0.008092, -0.990639, -0.136266,
		44.521305, 35.369678, 33.350601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.079472, 35.918655, 33.082935>,  <44.526970, 36.063126, 33.445988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.079472, 35.918655, 33.082935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871391, 35.579323, 33.043484>,  <44.746544, 35.375725, 33.019814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871391, 35.579323, 33.043484>,  <45.079472, 35.918655, 33.082935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871391, 35.579323, 33.043484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134555, 0.032629, -0.990369,
		0.843379, -0.528459, 0.097174,
		-0.520199, -0.848331, -0.098625,
		44.715332, 35.324821, 33.013897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535374, 35.496426, 32.640087>,  <45.079472, 35.918655, 33.082935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535374, 35.496426, 32.640087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.159035, 35.362644, 32.618359>,  <44.933231, 35.282375, 32.605320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.159035, 35.362644, 32.618359>,  <45.535374, 35.496426, 32.640087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159035, 35.362644, 32.618359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064251, -0.018676, -0.997759,
		0.332692, -0.942226, 0.039060,
		-0.940844, -0.334456, -0.054325,
		44.876781, 35.262306, 32.602062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575806, 34.913193, 32.193272>,  <45.535374, 35.496426, 32.640087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575806, 34.913193, 32.193272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193821, 35.031582, 32.201771>,  <44.964630, 35.102615, 32.206871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193821, 35.031582, 32.201771>,  <45.575806, 34.913193, 32.193272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193821, 35.031582, 32.201771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008677, 0.099437, -0.995006,
		-0.296606, -0.950007, -0.097526,
		-0.954960, 0.295971, 0.021250,
		44.907333, 35.120373, 32.208145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267723, 34.456169, 31.673649>,  <45.575806, 34.913193, 32.193272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267723, 34.456169, 31.673649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032341, 34.774136, 31.732744>,  <44.891113, 34.964916, 31.768202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.032341, 34.774136, 31.732744>,  <45.267723, 34.456169, 31.673649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032341, 34.774136, 31.732744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002744, 0.180760, -0.983523,
		-0.808528, -0.579161, -0.104188,
		-0.588452, 0.794920, 0.147739,
		44.855804, 35.012611, 31.777065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.601501, 34.225750, 31.460989>,  <45.267723, 34.456169, 31.673649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.601501, 34.225750, 31.460989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517044, 34.616432, 31.445642>,  <44.466370, 34.850842, 31.436436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.517044, 34.616432, 31.445642>,  <44.601501, 34.225750, 31.460989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517044, 34.616432, 31.445642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062253, -0.025734, -0.997729,
		-0.975471, -0.213050, -0.055369,
		-0.211141, 0.976703, -0.038365,
		44.453701, 34.909443, 31.434134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001213, 34.320896, 31.062994>,  <44.601501, 34.225750, 31.460989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001213, 34.320896, 31.062994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220680, 34.655273, 31.057968>,  <44.352360, 34.855900, 31.054953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220680, 34.655273, 31.057968>,  <44.001213, 34.320896, 31.062994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220680, 34.655273, 31.057968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026114, 0.002113, -0.999657,
		-0.835633, 0.548807, 0.022989,
		0.548667, 0.835946, -0.012566,
		44.385281, 34.906055, 31.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641525, 34.714394, 30.567669>,  <44.001213, 34.320896, 31.062994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641525, 34.714394, 30.567669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011944, 34.862980, 30.594360>,  <44.234196, 34.952133, 30.610374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011944, 34.862980, 30.594360>,  <43.641525, 34.714394, 30.567669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011944, 34.862980, 30.594360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063269, 0.021504, -0.997765,
		-0.372069, 0.928198, -0.003588,
		0.926046, 0.371464, 0.066727,
		44.289757, 34.974419, 30.614378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735714, 35.017681, 29.945189>,  <43.641525, 34.714394, 30.567669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735714, 35.017681, 29.945189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116356, 35.000904, 30.066967>,  <44.344742, 34.990837, 30.140034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116356, 35.000904, 30.066967>,  <43.735714, 35.017681, 29.945189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116356, 35.000904, 30.066967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287785, -0.225968, -0.930655,
		0.107827, 0.973231, -0.202963,
		0.951605, -0.041940, 0.304447,
		44.401836, 34.988323, 30.158300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225082, 35.439377, 29.454578>,  <43.735714, 35.017681, 29.945189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225082, 35.439377, 29.454578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476410, 35.185936, 29.635139>,  <44.627205, 35.033871, 29.743475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476410, 35.185936, 29.635139>,  <44.225082, 35.439377, 29.454578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476410, 35.185936, 29.635139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333270, -0.305078, -0.892109,
		0.702955, 0.710968, 0.019474,
		0.628320, -0.633602, 0.451400,
		44.664906, 34.995853, 29.770559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.765263, 35.537434, 29.083370>,  <44.225082, 35.439377, 29.454578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.765263, 35.537434, 29.083370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811764, 35.178291, 29.253235>,  <44.839664, 34.962807, 29.355154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811764, 35.178291, 29.253235>,  <44.765263, 35.537434, 29.083370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811764, 35.178291, 29.253235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300980, -0.375611, -0.876543,
		0.946518, 0.229714, 0.226572,
		0.116251, -0.897857, 0.424662,
		44.846638, 34.908936, 29.380634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469093, 35.229778, 28.965172>,  <44.765263, 35.537434, 29.083370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469093, 35.229778, 28.965172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234035, 34.915596, 29.042870>,  <45.093002, 34.727085, 29.089487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.234035, 34.915596, 29.042870>,  <45.469093, 35.229778, 28.965172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.234035, 34.915596, 29.042870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396547, -0.488839, -0.777037,
		0.705284, -0.379595, 0.598734,
		-0.587644, -0.785458, 0.194243,
		45.057743, 34.679958, 29.101143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883789, 34.674988, 28.864550>,  <45.469093, 35.229778, 28.965172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883789, 34.674988, 28.864550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516182, 34.517361, 28.868929>,  <45.295616, 34.422783, 28.871555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516182, 34.517361, 28.868929>,  <45.883789, 34.674988, 28.864550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516182, 34.517361, 28.868929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290316, -0.695319, -0.657456,
		0.266693, -0.601035, 0.753414,
		-0.919017, -0.394067, 0.010947,
		45.240479, 34.399139, 28.872213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.017803, 34.060665, 28.851128>,  <45.883789, 34.674988, 28.864550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.017803, 34.060665, 28.851128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634857, 34.049068, 28.736160>,  <45.405090, 34.042110, 28.667181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634857, 34.049068, 28.736160>,  <46.017803, 34.060665, 28.851128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634857, 34.049068, 28.736160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244383, -0.611815, -0.752303,
		-0.154032, -0.790470, 0.592817,
		-0.957367, -0.028996, -0.287416,
		45.347649, 34.040371, 28.649935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745975, 33.294052, 28.785439>,  <46.017803, 34.060665, 28.851128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745975, 33.294052, 28.785439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542305, 33.541851, 28.546453>,  <45.420101, 33.690529, 28.403063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.542305, 33.541851, 28.546453>,  <45.745975, 33.294052, 28.785439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542305, 33.541851, 28.546453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236700, -0.566625, -0.789246,
		-0.827474, -0.543284, 0.141877,
		-0.509176, 0.619499, -0.597463,
		45.389553, 33.727699, 28.367214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266182, 32.815830, 28.373423>,  <45.745975, 33.294052, 28.785439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266182, 32.815830, 28.373423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271244, 33.159187, 28.168285>,  <45.274281, 33.365200, 28.045204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271244, 33.159187, 28.168285>,  <45.266182, 32.815830, 28.373423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271244, 33.159187, 28.168285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273683, -0.490325, -0.827454,
		-0.961737, 0.150827, 0.228722,
		0.012654, 0.858390, -0.512842,
		45.275040, 33.416706, 28.014433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761391, 32.773972, 27.925394>,  <45.266182, 32.815830, 28.373423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761391, 32.773972, 27.925394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965839, 33.073097, 27.755911>,  <45.088509, 33.252575, 27.654221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.965839, 33.073097, 27.755911>,  <44.761391, 32.773972, 27.925394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.965839, 33.073097, 27.755911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193239, -0.380363, -0.904424,
		-0.837505, 0.544146, -0.049904,
		0.511120, 0.747816, -0.423706,
		45.119175, 33.297443, 27.628799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334747, 33.040611, 27.302341>,  <44.761391, 32.773972, 27.925394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334747, 33.040611, 27.302341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718735, 33.139160, 27.249039>,  <44.949127, 33.198288, 27.217056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718735, 33.139160, 27.249039>,  <44.334747, 33.040611, 27.302341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718735, 33.139160, 27.249039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019940, -0.414426, -0.909865,
		-0.279392, 0.876100, -0.392924,
		0.959970, 0.246374, -0.133257,
		45.006725, 33.213074, 27.209063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.332382, 33.298264, 26.654734>,  <44.334747, 33.040611, 27.302341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.332382, 33.298264, 26.654734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710415, 33.188339, 26.725502>,  <44.937233, 33.122383, 26.767963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710415, 33.188339, 26.725502>,  <44.332382, 33.298264, 26.654734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710415, 33.188339, 26.725502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061062, -0.383319, -0.921595,
		0.321081, 0.881785, -0.345487,
		0.945081, -0.274811, 0.176921,
		44.993938, 33.105896, 26.778578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.437065, 38.644955, 40.685326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145943, 38.382603, 40.605198>,  <35.971272, 38.225193, 40.557121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145943, 38.382603, 40.605198>,  <36.437065, 38.644955, 40.685326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145943, 38.382603, 40.605198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586599, -0.444074, -0.677273,
		0.355255, -0.610426, 0.707937,
		-0.727801, -0.655880, -0.200315,
		35.927601, 38.185837, 40.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736401, 37.873127, 40.627258>,  <36.437065, 38.644955, 40.685326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736401, 37.873127, 40.627258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396404, 37.888657, 40.417114>,  <36.192406, 37.897976, 40.291027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396404, 37.888657, 40.417114>,  <36.736401, 37.873127, 40.627258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396404, 37.888657, 40.417114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463484, -0.418905, -0.780834,
		-0.250393, -0.907199, 0.338071,
		-0.849992, 0.038825, -0.525363,
		36.141407, 37.900303, 40.259506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858067, 37.328663, 40.243725>,  <36.736401, 37.873127, 40.627258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858067, 37.328663, 40.243725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527699, 37.474579, 40.071781>,  <36.329479, 37.562130, 39.968616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527699, 37.474579, 40.071781>,  <36.858067, 37.328663, 40.243725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527699, 37.474579, 40.071781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226856, -0.482971, -0.845740,
		-0.516127, -0.796032, 0.316142,
		-0.825923, 0.364791, -0.429859,
		36.279922, 37.584019, 39.942822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506672, 36.736923, 39.841469>,  <36.858067, 37.328663, 40.243725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506672, 36.736923, 39.841469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359257, 37.071384, 39.678974>,  <36.270809, 37.272060, 39.581478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359257, 37.071384, 39.678974>,  <36.506672, 36.736923, 39.841469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359257, 37.071384, 39.678974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149893, -0.377825, -0.913663,
		-0.917448, -0.397612, 0.013910,
		-0.368539, 0.836154, -0.406234,
		36.248695, 37.322231, 39.557102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010868, 36.488708, 39.461903>,  <36.506672, 36.736923, 39.841469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010868, 36.488708, 39.461903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090900, 36.842453, 39.293201>,  <36.138920, 37.054699, 39.191982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090900, 36.842453, 39.293201>,  <36.010868, 36.488708, 39.461903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090900, 36.842453, 39.293201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216033, -0.459682, -0.861407,
		-0.955665, 0.081242, -0.283026,
		0.200084, 0.884360, -0.421751,
		36.150925, 37.107761, 39.166676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585155, 36.575333, 38.860924>,  <36.010868, 36.488708, 39.461903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585155, 36.575333, 38.860924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928627, 36.777527, 38.827072>,  <36.134708, 36.898842, 38.806763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928627, 36.777527, 38.827072>,  <35.585155, 36.575333, 38.860924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928627, 36.777527, 38.827072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228895, -0.525968, -0.819124,
		-0.458564, 0.683992, -0.567339,
		0.858677, 0.505482, -0.084628,
		36.186230, 36.929173, 38.801685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556290, 36.845024, 38.170902>,  <35.585155, 36.575333, 38.860924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556290, 36.845024, 38.170902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935467, 36.860207, 38.297367>,  <36.162975, 36.869316, 38.373245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935467, 36.860207, 38.297367>,  <35.556290, 36.845024, 38.170902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935467, 36.860207, 38.297367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303620, -0.407055, -0.861464,
		0.095997, 0.912615, -0.397390,
		0.947945, 0.037958, 0.316164,
		36.219849, 36.871593, 38.392216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891823, 37.315426, 37.707832>,  <35.556290, 36.845024, 38.170902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891823, 37.315426, 37.707832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210453, 37.121864, 37.852776>,  <36.401630, 37.005730, 37.939743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210453, 37.121864, 37.852776>,  <35.891823, 37.315426, 37.707832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210453, 37.121864, 37.852776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247996, -0.285071, -0.925869,
		0.551325, 0.827391, -0.107076,
		0.796579, -0.483900, 0.362357,
		36.449429, 36.976696, 37.961483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382389, 37.521648, 37.325928>,  <35.891823, 37.315426, 37.707832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382389, 37.521648, 37.325928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531387, 37.187756, 37.488148>,  <36.620785, 36.987419, 37.585480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531387, 37.187756, 37.488148>,  <36.382389, 37.521648, 37.325928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531387, 37.187756, 37.488148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293238, -0.308742, -0.904815,
		0.880489, 0.455959, 0.129771,
		0.372493, -0.834733, 0.405549,
		36.643135, 36.937336, 37.609814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900745, 37.304832, 36.975502>,  <36.382389, 37.521648, 37.325928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900745, 37.304832, 36.975502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899441, 36.956360, 37.171886>,  <36.898659, 36.747276, 37.289715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899441, 36.956360, 37.171886>,  <36.900745, 37.304832, 36.975502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899441, 36.956360, 37.171886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482433, -0.431418, -0.762323,
		0.875927, 0.234368, 0.421692,
		-0.003261, -0.871177, 0.490957,
		36.898464, 36.695007, 37.319172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626064, 37.024956, 37.032516>,  <36.900745, 37.304832, 36.975502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626064, 37.024956, 37.032516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371635, 36.718254, 37.067150>,  <37.218979, 36.534233, 37.087933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371635, 36.718254, 37.067150>,  <37.626064, 37.024956, 37.032516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371635, 36.718254, 37.067150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334475, -0.375098, -0.864539,
		0.695367, -0.520951, 0.495050,
		-0.636075, -0.766754, 0.086586,
		37.180813, 36.488228, 37.093124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987415, 36.364597, 37.014790>,  <37.626064, 37.024956, 37.032516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987415, 36.364597, 37.014790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608673, 36.303440, 36.901596>,  <37.381428, 36.266747, 36.833679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608673, 36.303440, 36.901596>,  <37.987415, 36.364597, 37.014790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608673, 36.303440, 36.901596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315337, -0.267844, -0.910397,
		0.063396, -0.951254, 0.301823,
		-0.946860, -0.152891, -0.282985,
		37.324615, 36.257572, 36.816700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932014, 35.732426, 36.683109>,  <37.987415, 36.364597, 37.014790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932014, 35.732426, 36.683109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612362, 35.939911, 36.561573>,  <37.420570, 36.064404, 36.488651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612362, 35.939911, 36.561573>,  <37.932014, 35.732426, 36.683109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612362, 35.939911, 36.561573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239545, -0.188807, -0.952350,
		-0.551365, -0.833839, 0.026627,
		-0.799134, 0.518714, -0.303844,
		37.372623, 36.095524, 36.470421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579350, 35.325504, 36.178993>,  <37.932014, 35.732426, 36.683109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579350, 35.325504, 36.178993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498791, 35.713379, 36.123650>,  <37.450455, 35.946106, 36.090443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498791, 35.713379, 36.123650>,  <37.579350, 35.325504, 36.178993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498791, 35.713379, 36.123650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045510, -0.150362, -0.987583,
		-0.978451, -0.192603, 0.074413,
		-0.201400, 0.969688, -0.138356,
		37.438370, 36.004284, 36.082142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100601, 35.547527, 35.472485>,  <37.579350, 35.325504, 36.178993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100601, 35.547527, 35.472485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167625, 35.156490, 35.421524>,  <38.207840, 34.921867, 35.390945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167625, 35.156490, 35.421524>,  <38.100601, 35.547527, 35.472485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167625, 35.156490, 35.421524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606256, -0.204085, 0.768637,
		-0.777417, -0.051551, -0.626869,
		0.167559, -0.977595, -0.127406,
		38.217892, 34.863213, 35.383301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492313, 35.201794, 35.474621>,  <38.100601, 35.547527, 35.472485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492313, 35.201794, 35.474621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759178, 34.923588, 35.581318>,  <37.919296, 34.756664, 35.645336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759178, 34.923588, 35.581318>,  <37.492313, 35.201794, 35.474621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759178, 34.923588, 35.581318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559903, -0.232027, 0.795407,
		-0.491329, -0.680014, -0.544222,
		0.667161, -0.695518, 0.266741,
		37.959328, 34.714931, 35.661339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154037, 34.549561, 35.474541>,  <37.492313, 35.201794, 35.474621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154037, 34.549561, 35.474541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474972, 34.529369, 35.712433>,  <37.667534, 34.517254, 35.855167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474972, 34.529369, 35.712433>,  <37.154037, 34.549561, 35.474541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474972, 34.529369, 35.712433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585111, -0.263345, 0.767004,
		0.117907, -0.963380, -0.240824,
		0.802336, -0.050474, 0.594735,
		37.715672, 34.514229, 35.890854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965530, 33.975922, 35.869247>,  <37.154037, 34.549561, 35.474541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965530, 33.975922, 35.869247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279671, 34.124798, 36.067116>,  <37.468155, 34.214123, 36.185837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279671, 34.124798, 36.067116>,  <36.965530, 33.975922, 35.869247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279671, 34.124798, 36.067116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413087, -0.280078, 0.866554,
		0.461072, -0.884889, -0.066211,
		0.785349, 0.372193, 0.494672,
		37.515274, 34.236454, 36.215519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428444, 33.357670, 36.274097>,  <36.965530, 33.975922, 35.869247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428444, 33.357670, 36.274097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506317, 33.701321, 36.463409>,  <37.553040, 33.907513, 36.576996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506317, 33.701321, 36.463409>,  <37.428444, 33.357670, 36.274097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506317, 33.701321, 36.463409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426444, -0.360392, 0.829616,
		0.883315, -0.363338, 0.296209,
		0.194680, 0.859129, 0.473283,
		37.564720, 33.959061, 36.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615070, 33.217770, 36.876144>,  <37.428444, 33.357670, 36.274097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615070, 33.217770, 36.876144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549271, 33.604889, 36.952362>,  <37.509792, 33.837162, 36.998093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549271, 33.604889, 36.952362>,  <37.615070, 33.217770, 36.876144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549271, 33.604889, 36.952362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266692, -0.229622, 0.936028,
		0.949640, 0.103156, 0.295876,
		-0.164497, 0.967798, 0.190548,
		37.499920, 33.895229, 37.009525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824257, 33.416470, 37.522648>,  <37.615070, 33.217770, 36.876144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824257, 33.416470, 37.522648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562572, 33.711311, 37.454906>,  <37.405563, 33.888218, 37.414261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562572, 33.711311, 37.454906>,  <37.824257, 33.416470, 37.522648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562572, 33.711311, 37.454906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344766, -0.091347, 0.934233,
		0.673162, 0.669571, 0.313890,
		-0.654209, 0.737109, -0.169354,
		37.366310, 33.932446, 37.404099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822823, 33.800045, 38.129028>,  <37.824257, 33.416470, 37.522648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822823, 33.800045, 38.129028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464733, 33.867596, 37.964073>,  <37.249882, 33.908127, 37.865101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464733, 33.867596, 37.964073>,  <37.822823, 33.800045, 38.129028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464733, 33.867596, 37.964073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428039, -0.068485, 0.901162,
		0.123940, 0.983256, 0.133593,
		-0.895222, 0.168873, -0.412383,
		37.196167, 33.918259, 37.840359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470009, 34.169930, 38.655685>,  <37.822823, 33.800045, 38.129028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470009, 34.169930, 38.655685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180347, 34.010017, 38.430908>,  <37.006550, 33.914070, 38.296040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180347, 34.010017, 38.430908>,  <37.470009, 34.169930, 38.655685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180347, 34.010017, 38.430908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510425, -0.237254, 0.826545,
		-0.463758, 0.885375, -0.032248,
		-0.724151, -0.399777, -0.561946,
		36.963100, 33.890083, 38.262325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972347, 34.537163, 38.979259>,  <37.470009, 34.169930, 38.655685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972347, 34.537163, 38.979259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814045, 34.212952, 38.806553>,  <36.719063, 34.018425, 38.702930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814045, 34.212952, 38.806553>,  <36.972347, 34.537163, 38.979259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814045, 34.212952, 38.806553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645709, -0.088720, 0.758412,
		-0.653019, 0.578944, -0.488252,
		-0.395760, -0.810526, -0.431765,
		36.695316, 33.969795, 38.677025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335869, 34.559261, 39.276863>,  <36.972347, 34.537163, 38.979259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335869, 34.559261, 39.276863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352398, 34.193016, 39.116890>,  <36.362316, 33.973270, 39.020905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352398, 34.193016, 39.116890>,  <36.335869, 34.559261, 39.276863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352398, 34.193016, 39.116890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583266, -0.347098, 0.734387,
		-0.811230, 0.202922, -0.548388,
		0.041321, -0.915612, -0.399933,
		36.364796, 33.918331, 38.996910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653736, 34.444111, 39.126034>,  <36.335869, 34.559261, 39.276863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653736, 34.444111, 39.126034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879333, 34.116207, 39.165829>,  <36.014690, 33.919464, 39.189705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879333, 34.116207, 39.165829>,  <35.653736, 34.444111, 39.126034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879333, 34.116207, 39.165829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475561, -0.223938, 0.850702,
		-0.675095, -0.527105, -0.516147,
		0.563994, -0.819764, 0.099491,
		36.048531, 33.870277, 39.195675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180340, 33.909843, 39.240265>,  <35.653736, 34.444111, 39.126034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180340, 33.909843, 39.240265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533825, 33.819412, 39.404190>,  <35.745914, 33.765156, 39.502544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533825, 33.819412, 39.404190>,  <35.180340, 33.909843, 39.240265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533825, 33.819412, 39.404190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460480, -0.263298, 0.847722,
		-0.083746, -0.937851, -0.336782,
		0.883711, -0.226074, 0.409811,
		35.798939, 33.751591, 39.527134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051807, 33.327217, 39.541958>,  <35.180340, 33.909843, 39.240265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051807, 33.327217, 39.541958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368961, 33.498417, 39.715466>,  <35.559254, 33.601135, 39.819569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368961, 33.498417, 39.715466>,  <35.051807, 33.327217, 39.541958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368961, 33.498417, 39.715466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479036, -0.002186, 0.877792,
		0.376643, -0.903776, 0.203294,
		0.792883, 0.428000, 0.433765,
		35.606827, 33.626816, 39.845596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822834, 32.586685, 39.573757>,  <35.051807, 33.327217, 39.541958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822834, 32.586685, 39.573757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490128, 32.366695, 39.543545>,  <34.290504, 32.234703, 39.525417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490128, 32.366695, 39.543545>,  <34.822834, 32.586685, 39.573757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490128, 32.366695, 39.543545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166990, -0.118115, -0.978858,
		0.529421, -0.826790, 0.190083,
		-0.831762, -0.549970, -0.075533,
		34.240601, 32.201706, 39.520885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954937, 31.964512, 39.160522>,  <34.822834, 32.586685, 39.573757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954937, 31.964512, 39.160522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562149, 32.029583, 39.121990>,  <34.326477, 32.068626, 39.098869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562149, 32.029583, 39.121990>,  <34.954937, 31.964512, 39.160522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562149, 32.029583, 39.121990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107100, 0.058741, -0.992511,
		-0.155801, -0.984929, -0.075104,
		-0.981965, 0.162678, -0.096334,
		34.267559, 32.078384, 39.093090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804390, 31.673815, 38.537270>,  <34.954937, 31.964512, 39.160522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804390, 31.673815, 38.537270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502216, 31.926798, 38.605766>,  <34.320911, 32.078587, 38.646862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502216, 31.926798, 38.605766>,  <34.804390, 31.673815, 38.537270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502216, 31.926798, 38.605766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018629, 0.281969, -0.959243,
		-0.654964, -0.721451, -0.224790,
		-0.755430, 0.632457, 0.171239,
		34.275589, 32.116535, 38.657139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382793, 31.517920, 38.077579>,  <34.804390, 31.673815, 38.537270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382793, 31.517920, 38.077579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257969, 31.883286, 38.182114>,  <34.183075, 32.102505, 38.244835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257969, 31.883286, 38.182114>,  <34.382793, 31.517920, 38.077579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257969, 31.883286, 38.182114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203581, 0.204390, -0.957486,
		-0.927995, -0.351992, 0.122173,
		-0.312057, 0.913415, 0.261332,
		34.164352, 32.157310, 38.260513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682663, 31.497599, 37.802071>,  <34.382793, 31.517920, 38.077579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682663, 31.497599, 37.802071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787357, 31.877153, 37.872620>,  <33.850174, 32.104885, 37.914948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787357, 31.877153, 37.872620>,  <33.682663, 31.497599, 37.802071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787357, 31.877153, 37.872620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168270, 0.224804, -0.959765,
		-0.950359, 0.221524, 0.218508,
		0.261732, 0.948889, 0.176369,
		33.865875, 32.161819, 37.925529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184853, 31.991404, 37.485958>,  <33.682663, 31.497599, 37.802071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184853, 31.991404, 37.485958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522858, 32.204487, 37.504593>,  <33.725662, 32.332336, 37.515774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522858, 32.204487, 37.504593>,  <33.184853, 31.991404, 37.485958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522858, 32.204487, 37.504593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131628, 0.291654, -0.947424,
		-0.518289, 0.794455, 0.316572,
		0.845015, 0.532709, 0.046589,
		33.776363, 32.364300, 37.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067726, 32.597408, 37.245640>,  <33.184853, 31.991404, 37.485958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067726, 32.597408, 37.245640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461311, 32.653893, 37.202045>,  <33.697464, 32.687782, 37.175888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461311, 32.653893, 37.202045>,  <33.067726, 32.597408, 37.245640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461311, 32.653893, 37.202045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153722, 0.361319, -0.919684,
		-0.090487, 0.921688, 0.377231,
		0.983962, 0.141208, -0.108989,
		33.756500, 32.696255, 37.169350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208302, 33.354874, 36.909195>,  <33.067726, 32.597408, 37.245640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208302, 33.354874, 36.909195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543056, 33.145760, 36.844303>,  <33.743908, 33.020290, 36.805367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543056, 33.145760, 36.844303>,  <33.208302, 33.354874, 36.909195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543056, 33.145760, 36.844303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012387, 0.278212, -0.960440,
		0.547234, 0.805790, 0.226356,
		0.836888, -0.522781, -0.162229,
		33.794125, 32.988926, 36.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614056, 33.825718, 36.547634>,  <33.208302, 33.354874, 36.909195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614056, 33.825718, 36.547634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796181, 33.484543, 36.445503>,  <33.905457, 33.279839, 36.384224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796181, 33.484543, 36.445503>,  <33.614056, 33.825718, 36.547634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796181, 33.484543, 36.445503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136120, 0.350091, -0.926773,
		0.879865, 0.387216, 0.275503,
		0.455312, -0.852936, -0.255325,
		33.932774, 33.228661, 36.368904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158302, 34.068676, 36.086517>,  <33.614056, 33.825718, 36.547634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158302, 34.068676, 36.086517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104156, 33.682476, 35.997532>,  <34.071671, 33.450756, 35.944141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104156, 33.682476, 35.997532>,  <34.158302, 34.068676, 36.086517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104156, 33.682476, 35.997532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130374, 0.205218, -0.969994,
		0.982181, -0.160302, 0.098097,
		-0.135361, -0.965499, -0.222460,
		34.063549, 33.392826, 35.930794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724018, 33.923157, 35.702873>,  <34.158302, 34.068676, 36.086517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724018, 33.923157, 35.702873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448566, 33.651134, 35.602226>,  <34.283295, 33.487919, 35.541840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448566, 33.651134, 35.602226>,  <34.724018, 33.923157, 35.702873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448566, 33.651134, 35.602226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115375, 0.239823, -0.963936,
		0.715879, -0.692823, -0.086686,
		-0.688626, -0.680060, -0.251619,
		34.241978, 33.447117, 35.526741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923874, 33.738750, 34.964798>,  <34.724018, 33.923157, 35.702873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923874, 33.738750, 34.964798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553082, 33.589123, 34.975945>,  <34.330605, 33.499344, 34.982632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553082, 33.589123, 34.975945>,  <34.923874, 33.738750, 34.964798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553082, 33.589123, 34.975945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063020, 0.082066, -0.994633,
		0.369778, -0.923761, -0.099647,
		-0.926981, -0.374073, 0.027870,
		34.274986, 33.476902, 34.984306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.201935, 31.847328, 43.480465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840012, 31.987936, 43.384331>,  <33.622860, 32.072300, 43.326653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.840012, 31.987936, 43.384331>,  <34.201935, 31.847328, 43.480465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840012, 31.987936, 43.384331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175413, -0.206601, -0.962573,
		-0.388017, -0.913099, 0.125273,
		-0.904805, 0.351520, -0.240334,
		33.568569, 32.093391, 43.312229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940617, 31.248934, 43.061539>,  <34.201935, 31.847328, 43.480465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940617, 31.248934, 43.061539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735950, 31.587145, 43.000507>,  <33.613152, 31.790071, 42.963890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.735950, 31.587145, 43.000507>,  <33.940617, 31.248934, 43.061539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735950, 31.587145, 43.000507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149081, -0.087520, -0.984944,
		-0.846153, -0.526706, -0.081272,
		-0.511663, 0.845530, -0.152577,
		33.582451, 31.840803, 42.954735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499691, 31.046041, 42.463573>,  <33.940617, 31.248934, 43.061539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499691, 31.046041, 42.463573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468670, 31.443708, 42.433598>,  <33.450058, 31.682308, 42.415611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.468670, 31.443708, 42.433598>,  <33.499691, 31.046041, 42.463573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468670, 31.443708, 42.433598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077805, -0.080969, -0.993675,
		-0.993948, -0.071230, 0.083630,
		-0.077551, 0.994168, -0.074937,
		33.445404, 31.741959, 42.411118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966145, 31.121510, 42.018406>,  <33.499691, 31.046041, 42.463573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966145, 31.121510, 42.018406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.174232, 31.462206, 41.993382>,  <33.299084, 31.666624, 41.978367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.174232, 31.462206, 41.993382>,  <32.966145, 31.121510, 42.018406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174232, 31.462206, 41.993382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057464, -0.038178, -0.997617,
		-0.852099, 0.522572, 0.029084,
		0.520216, 0.851740, -0.062561,
		33.330296, 31.717728, 41.974613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704659, 31.614546, 41.445850>,  <32.966145, 31.121510, 42.018406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704659, 31.614546, 41.445850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083702, 31.716366, 41.523041>,  <33.311127, 31.777458, 41.569355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.083702, 31.716366, 41.523041>,  <32.704659, 31.614546, 41.445850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083702, 31.716366, 41.523041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183363, 0.061213, -0.981137,
		-0.261559, 0.965121, 0.011331,
		0.947610, 0.254548, 0.192979,
		33.367985, 31.792730, 41.580933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795692, 32.175426, 41.003136>,  <32.704659, 31.614546, 41.445850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795692, 32.175426, 41.003136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161709, 32.045521, 41.098816>,  <33.381321, 31.967577, 41.156223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.161709, 32.045521, 41.098816>,  <32.795692, 32.175426, 41.003136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161709, 32.045521, 41.098816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266034, 0.040180, -0.963126,
		0.303180, 0.944941, 0.123165,
		0.915045, -0.324766, 0.239205,
		33.436222, 31.948092, 41.170578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264767, 32.807934, 40.865749>,  <32.795692, 32.175426, 41.003136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264767, 32.807934, 40.865749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499374, 32.484005, 40.871056>,  <33.640141, 32.289646, 40.874241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.499374, 32.484005, 40.871056>,  <33.264767, 32.807934, 40.865749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499374, 32.484005, 40.871056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248258, 0.164164, -0.954682,
		0.770946, 0.563237, 0.297331,
		0.586523, -0.809824, 0.013267,
		33.675331, 32.241058, 40.875034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863499, 33.013802, 40.554726>,  <33.264767, 32.807934, 40.865749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863499, 33.013802, 40.554726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866558, 32.615726, 40.515636>,  <33.868393, 32.376881, 40.492184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866558, 32.615726, 40.515636>,  <33.863499, 33.013802, 40.554726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866558, 32.615726, 40.515636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208497, 0.097163, -0.973185,
		0.977993, -0.012935, 0.208235,
		0.007645, -0.995184, -0.097722,
		33.868851, 32.317173, 40.486320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427166, 32.962666, 40.032478>,  <33.863499, 33.013802, 40.554726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427166, 32.962666, 40.032478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204613, 32.630836, 40.013542>,  <34.071079, 32.431740, 40.002182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204613, 32.630836, 40.013542>,  <34.427166, 32.962666, 40.032478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204613, 32.630836, 40.013542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068017, 0.102252, -0.992431,
		0.828137, -0.548953, -0.113316,
		-0.556384, -0.829576, -0.047341,
		34.037697, 32.381966, 39.999340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121212, 33.026066, 40.334263>,  <34.427166, 32.962666, 40.032478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121212, 33.026066, 40.334263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394283, 33.317223, 40.308590>,  <35.558128, 33.491917, 40.293186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.394283, 33.317223, 40.308590>,  <35.121212, 33.026066, 40.334263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394283, 33.317223, 40.308590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145735, 0.221698, 0.964163,
		0.716035, -0.648864, 0.257429,
		0.682683, 0.727891, -0.064181,
		35.599087, 33.535591, 40.289337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740086, 32.757835, 40.640732>,  <35.121212, 33.026066, 40.334263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740086, 32.757835, 40.640732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731716, 33.157722, 40.636345>,  <35.726696, 33.397655, 40.633713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.731716, 33.157722, 40.636345>,  <35.740086, 32.757835, 40.640732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731716, 33.157722, 40.636345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036566, 0.011726, 0.999263,
		0.999112, 0.020507, -0.036801,
		-0.020924, 0.999721, -0.010966,
		35.725437, 33.457638, 40.633057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339043, 32.994083, 41.116196>,  <35.740086, 32.757835, 40.640732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339043, 32.994083, 41.116196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072033, 33.290699, 41.089291>,  <35.911827, 33.468670, 41.073147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072033, 33.290699, 41.089291>,  <36.339043, 32.994083, 41.116196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072033, 33.290699, 41.089291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059431, 0.143115, 0.987920,
		0.742211, 0.655464, -0.139604,
		-0.667525, 0.741542, -0.067266,
		35.871777, 33.513161, 41.069111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443707, 33.508514, 41.650341>,  <36.339043, 32.994083, 41.116196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443707, 33.508514, 41.650341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071312, 33.615585, 41.551056>,  <35.847874, 33.679829, 41.491486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071312, 33.615585, 41.551056>,  <36.443707, 33.508514, 41.650341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071312, 33.615585, 41.551056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222941, 0.121516, 0.967228,
		0.289071, 0.955814, -0.053453,
		-0.930986, 0.267681, -0.248217,
		35.792015, 33.695889, 41.476589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319786, 34.151562, 42.012367>,  <36.443707, 33.508514, 41.650341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319786, 34.151562, 42.012367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960651, 33.996048, 41.929680>,  <35.745171, 33.902740, 41.880070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960651, 33.996048, 41.929680>,  <36.319786, 34.151562, 42.012367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960651, 33.996048, 41.929680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277728, 0.135712, 0.951026,
		-0.341694, 0.911277, -0.229824,
		-0.897838, -0.388789, -0.206715,
		35.691299, 33.879410, 41.867664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938347, 34.576408, 42.272095>,  <36.319786, 34.151562, 42.012367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938347, 34.576408, 42.272095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688667, 34.265484, 42.240692>,  <35.538860, 34.078930, 42.221851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.688667, 34.265484, 42.240692>,  <35.938347, 34.576408, 42.272095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688667, 34.265484, 42.240692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438613, 0.265505, 0.858561,
		-0.646526, 0.570345, -0.506666,
		-0.624198, -0.777312, -0.078504,
		35.501408, 34.032291, 42.217140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267521, 34.826805, 42.450836>,  <35.938347, 34.576408, 42.272095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267521, 34.826805, 42.450836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252129, 34.433872, 42.524086>,  <35.242893, 34.198112, 42.568035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252129, 34.433872, 42.524086>,  <35.267521, 34.826805, 42.450836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252129, 34.433872, 42.524086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513184, 0.176676, 0.839897,
		-0.857415, -0.061661, -0.510917,
		-0.038478, -0.982336, 0.183128,
		35.240585, 34.139172, 42.579025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601704, 34.679184, 42.732239>,  <35.267521, 34.826805, 42.450836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601704, 34.679184, 42.732239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814667, 34.354008, 42.826622>,  <34.942444, 34.158901, 42.883251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.814667, 34.354008, 42.826622>,  <34.601704, 34.679184, 42.732239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814667, 34.354008, 42.826622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424854, -0.015525, 0.905129,
		-0.732150, -0.582144, -0.353645,
		0.532406, -0.812938, 0.235960,
		34.974388, 34.110126, 42.897411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106285, 34.102226, 43.193851>,  <34.601704, 34.679184, 42.732239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106285, 34.102226, 43.193851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492828, 34.032421, 43.269436>,  <34.724754, 33.990540, 43.314785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.492828, 34.032421, 43.269436>,  <34.106285, 34.102226, 43.193851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492828, 34.032421, 43.269436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162471, 0.155392, 0.974400,
		-0.199407, -0.972316, 0.121811,
		0.966354, -0.174512, 0.188960,
		34.782734, 33.980068, 43.326122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154591, 33.604160, 43.745354>,  <34.106285, 34.102226, 43.193851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154591, 33.604160, 43.745354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515419, 33.776707, 43.750763>,  <34.731918, 33.880234, 43.754009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.515419, 33.776707, 43.750763>,  <34.154591, 33.604160, 43.745354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515419, 33.776707, 43.750763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069782, 0.114865, 0.990927,
		0.425903, -0.894833, 0.133718,
		0.902074, 0.431370, 0.013522,
		34.786041, 33.906116, 43.754818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418613, 33.382271, 44.393921>,  <34.154591, 33.604160, 43.745354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418613, 33.382271, 44.393921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609154, 33.716251, 44.283684>,  <34.723476, 33.916637, 44.217541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609154, 33.716251, 44.283684>,  <34.418613, 33.382271, 44.393921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609154, 33.716251, 44.283684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153727, 0.387700, 0.908876,
		0.865715, -0.390574, 0.313034,
		0.476347, 0.834949, -0.275596,
		34.752056, 33.966736, 44.201004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631149, 33.690487, 45.011288>,  <34.418613, 33.382271, 44.393921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631149, 33.690487, 45.011288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756523, 33.998589, 44.789127>,  <34.831749, 34.183449, 44.655830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.756523, 33.998589, 44.789127>,  <34.631149, 33.690487, 45.011288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756523, 33.998589, 44.789127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132814, 0.543566, 0.828792,
		0.940275, -0.333540, 0.068075,
		0.313439, 0.770251, -0.555400,
		34.850555, 34.229664, 44.622509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273052, 33.834301, 45.218197>,  <34.631149, 33.690487, 45.011288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273052, 33.834301, 45.218197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112385, 34.171619, 45.075363>,  <35.015984, 34.374012, 44.989662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.112385, 34.171619, 45.075363>,  <35.273052, 33.834301, 45.218197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112385, 34.171619, 45.075363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080589, 0.355861, 0.931058,
		0.912232, 0.402755, -0.074978,
		-0.401670, 0.843298, -0.357085,
		34.991882, 34.424610, 44.968239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670246, 34.448635, 45.457138>,  <35.273052, 33.834301, 45.218197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670246, 34.448635, 45.457138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318542, 34.616882, 45.367706>,  <35.107521, 34.717831, 45.314045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318542, 34.616882, 45.367706>,  <35.670246, 34.448635, 45.457138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318542, 34.616882, 45.367706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016408, 0.495834, 0.868262,
		0.476062, 0.759758, -0.442868,
		-0.879259, 0.420613, -0.223581,
		35.054764, 34.743065, 45.300632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.680357, 35.398769, 43.042988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.985842, 35.334801, 43.293163>,  <29.169132, 35.296417, 43.443268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.985842, 35.334801, 43.293163>,  <28.680357, 35.398769, 43.042988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985842, 35.334801, 43.293163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641171, 0.075141, -0.763711,
		0.075141, 0.984265, 0.159926,
		0.763711, -0.159926, 0.625436,
		29.214954, 35.286823, 43.480793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169188, 35.837620, 42.872974>,  <28.680357, 35.398769, 43.042988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169188, 35.837620, 42.872974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368986, 35.567284, 43.089767>,  <29.488865, 35.405083, 43.219845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.368986, 35.567284, 43.089767>,  <29.169188, 35.837620, 42.872974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368986, 35.567284, 43.089767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695989, -0.059466, -0.715586,
		0.515850, 0.734648, 0.440672,
		0.499498, -0.675838, 0.541982,
		29.518835, 35.364532, 43.252361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783655, 36.092979, 42.838470>,  <29.169188, 35.837620, 42.872974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783655, 36.092979, 42.838470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815214, 35.700214, 42.907314>,  <29.834150, 35.464554, 42.948620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.815214, 35.700214, 42.907314>,  <29.783655, 36.092979, 42.838470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815214, 35.700214, 42.907314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637848, -0.082956, -0.765682,
		0.766110, 0.170189, 0.619766,
		0.078897, -0.981913, 0.172109,
		29.838882, 35.405640, 42.958946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512400, 35.972336, 42.823353>,  <29.783655, 36.092979, 42.838470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512400, 35.972336, 42.823353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.312588, 35.633858, 42.749142>,  <30.192701, 35.430771, 42.704617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.312588, 35.633858, 42.749142>,  <30.512400, 35.972336, 42.823353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312588, 35.633858, 42.749142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587831, -0.173781, -0.790098,
		0.636338, -0.503736, 0.584229,
		-0.499529, -0.846197, -0.185528,
		30.162729, 35.379997, 42.693481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970028, 35.527351, 42.738655>,  <30.512400, 35.972336, 42.823353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970028, 35.527351, 42.738655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644617, 35.366070, 42.571037>,  <30.449369, 35.269302, 42.470467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.644617, 35.366070, 42.571037>,  <30.970028, 35.527351, 42.738655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644617, 35.366070, 42.571037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557016, -0.333307, -0.760684,
		0.167043, -0.852251, 0.495747,
		-0.813529, -0.403206, -0.419041,
		30.400558, 35.245110, 42.445324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204844, 34.891106, 42.453430>,  <30.970028, 35.527351, 42.738655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204844, 34.891106, 42.453430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858006, 34.945370, 42.261703>,  <30.649902, 34.977928, 42.146667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858006, 34.945370, 42.261703>,  <31.204844, 34.891106, 42.453430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858006, 34.945370, 42.261703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465518, -0.121807, -0.876616,
		-0.177307, -0.983239, 0.042466,
		-0.867096, 0.135662, -0.479313,
		30.597878, 34.986069, 42.117908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159513, 34.299385, 41.947624>,  <31.204844, 34.891106, 42.453430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159513, 34.299385, 41.947624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915886, 34.591187, 41.823132>,  <30.769711, 34.766266, 41.748436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.915886, 34.591187, 41.823132>,  <31.159513, 34.299385, 41.947624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915886, 34.591187, 41.823132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300410, -0.150984, -0.941784,
		-0.734024, -0.667107, -0.127190,
		-0.609067, 0.729501, -0.311232,
		30.733166, 34.810036, 41.729763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913612, 34.092770, 41.256054>,  <31.159513, 34.299385, 41.947624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913612, 34.092770, 41.256054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818342, 34.478878, 41.213104>,  <30.761179, 34.710541, 41.187332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.818342, 34.478878, 41.213104>,  <30.913612, 34.092770, 41.256054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818342, 34.478878, 41.213104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114576, -0.081862, -0.990036,
		-0.964440, -0.248107, -0.091099,
		-0.238177, 0.965268, -0.107378,
		30.746889, 34.768459, 41.180889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360146, 34.149578, 40.732689>,  <30.913612, 34.092770, 41.256054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360146, 34.149578, 40.732689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.492517, 34.526306, 40.756195>,  <30.571941, 34.752342, 40.770298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.492517, 34.526306, 40.756195>,  <30.360146, 34.149578, 40.732689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492517, 34.526306, 40.756195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139261, 0.012845, -0.990172,
		-0.933323, 0.335860, -0.126908,
		0.330929, 0.941824, 0.058761,
		30.591797, 34.808853, 40.773823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917685, 34.573223, 40.344402>,  <30.360146, 34.149578, 40.732689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917685, 34.573223, 40.344402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.246780, 34.800022, 40.360443>,  <30.444239, 34.936104, 40.370068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.246780, 34.800022, 40.360443>,  <29.917685, 34.573223, 40.344402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246780, 34.800022, 40.360443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047015, 0.138190, -0.989289,
		-0.566470, 0.812042, 0.140352,
		0.822740, 0.567001, 0.040102,
		30.493603, 34.970123, 40.372475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782412, 35.161018, 39.952240>,  <29.917685, 34.573223, 40.344402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782412, 35.161018, 39.952240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.181597, 35.164604, 39.977493>,  <30.421108, 35.166756, 39.992645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.181597, 35.164604, 39.977493>,  <29.782412, 35.161018, 39.952240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181597, 35.164604, 39.977493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058981, 0.246687, -0.967299,
		-0.024246, 0.969054, 0.245656,
		0.997965, 0.008964, 0.063137,
		30.480986, 35.167294, 39.996433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978806, 35.690140, 39.622829>,  <29.782412, 35.161018, 39.952240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978806, 35.690140, 39.622829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298449, 35.449757, 39.616119>,  <30.490234, 35.305527, 39.612091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.298449, 35.449757, 39.616119>,  <29.978806, 35.690140, 39.622829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298449, 35.449757, 39.616119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071805, 0.123116, -0.989791,
		0.596885, 0.789744, 0.141534,
		0.799107, -0.600954, -0.016779,
		30.538181, 35.269470, 39.611084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501820, 36.084164, 39.203865>,  <29.978806, 35.690140, 39.622829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501820, 36.084164, 39.203865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590984, 35.694233, 39.205521>,  <30.644484, 35.460274, 39.206512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.590984, 35.694233, 39.205521>,  <30.501820, 36.084164, 39.203865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590984, 35.694233, 39.205521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196951, 0.040880, -0.979561,
		0.954735, 0.219173, 0.201106,
		0.222914, -0.974829, 0.004136,
		30.657858, 35.401783, 39.206760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158239, 36.014660, 38.856552>,  <30.501820, 36.084164, 39.203865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158239, 36.014660, 38.856552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037807, 35.633778, 38.835922>,  <30.965549, 35.405251, 38.823544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037807, 35.633778, 38.835922>,  <31.158239, 36.014660, 38.856552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037807, 35.633778, 38.835922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343038, -0.057686, -0.937548,
		0.889762, -0.299967, 0.344010,
		-0.301078, -0.952204, -0.051574,
		30.947483, 35.348118, 38.820450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710653, 35.973038, 39.326813>,  <31.158239, 36.014660, 38.856552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710653, 35.973038, 39.326813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791307, 36.345261, 39.204567>,  <31.839699, 36.568596, 39.131218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791307, 36.345261, 39.204567>,  <31.710653, 35.973038, 39.326813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791307, 36.345261, 39.204567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382529, 0.362062, 0.850049,
		0.901674, -0.054490, 0.428970,
		0.201633, 0.930560, -0.305618,
		31.851797, 36.624428, 39.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878019, 36.320442, 39.972019>,  <31.710653, 35.973038, 39.326813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878019, 36.320442, 39.972019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810869, 36.621754, 39.717655>,  <31.770578, 36.802540, 39.565037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810869, 36.621754, 39.717655>,  <31.878019, 36.320442, 39.972019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810869, 36.621754, 39.717655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441644, 0.519243, 0.731667,
		0.881344, 0.403678, 0.245512,
		-0.167878, 0.753280, -0.635914,
		31.760506, 36.847736, 39.526882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940859, 36.940033, 40.401516>,  <31.878019, 36.320442, 39.972019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940859, 36.940033, 40.401516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758364, 37.060665, 40.066639>,  <31.648867, 37.133045, 39.865711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.758364, 37.060665, 40.066639>,  <31.940859, 36.940033, 40.401516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758364, 37.060665, 40.066639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550344, 0.643681, 0.531785,
		0.699263, 0.703366, -0.127698,
		-0.456237, 0.301580, -0.837196,
		31.621492, 37.151138, 39.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062027, 37.644619, 40.327183>,  <31.940859, 36.940033, 40.401516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062027, 37.644619, 40.327183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.723303, 37.572998, 40.126842>,  <31.520069, 37.530025, 40.006638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.723303, 37.572998, 40.126842>,  <32.062027, 37.644619, 40.327183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723303, 37.572998, 40.126842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459334, 0.720966, 0.518864,
		0.268193, 0.669438, -0.692767,
		-0.846808, -0.179056, -0.500854,
		31.469261, 37.519279, 39.976585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785427, 38.282829, 40.292450>,  <32.062027, 37.644619, 40.327183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785427, 38.282829, 40.292450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486177, 38.026779, 40.222546>,  <31.306627, 37.873146, 40.180603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486177, 38.026779, 40.222546>,  <31.785427, 38.282829, 40.292450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486177, 38.026779, 40.222546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578352, 0.499931, 0.644653,
		-0.325294, 0.583354, -0.744232,
		-0.748126, -0.640130, -0.174760,
		31.261740, 37.834740, 40.170116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189152, 38.602062, 40.229065>,  <31.785427, 38.282829, 40.292450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189152, 38.602062, 40.229065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.053858, 38.238274, 40.325771>,  <30.972681, 38.020000, 40.383797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.053858, 38.238274, 40.325771>,  <31.189152, 38.602062, 40.229065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053858, 38.238274, 40.325771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581399, 0.403966, 0.706249,
		-0.739981, 0.098315, -0.665403,
		-0.338235, -0.909476, 0.241767,
		30.952387, 37.965431, 40.398300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517979, 38.732494, 40.394073>,  <31.189152, 38.602062, 40.229065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517979, 38.732494, 40.394073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576384, 38.372772, 40.558968>,  <30.611427, 38.156940, 40.657906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576384, 38.372772, 40.558968>,  <30.517979, 38.732494, 40.394073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576384, 38.372772, 40.558968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538451, 0.277326, 0.795714,
		-0.829910, -0.338152, -0.443737,
		0.146012, -0.899302, 0.412234,
		30.620188, 38.102982, 40.682636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859793, 38.524097, 40.568787>,  <30.517979, 38.732494, 40.394073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859793, 38.524097, 40.568787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.105227, 38.306644, 40.797863>,  <30.252487, 38.176170, 40.935310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.105227, 38.306644, 40.797863>,  <29.859793, 38.524097, 40.568787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105227, 38.306644, 40.797863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566151, 0.202699, 0.798991,
		-0.550443, -0.814478, -0.183406,
		0.613584, -0.543634, 0.572692,
		30.289303, 38.143555, 40.969669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363897, 37.960667, 40.958031>,  <29.859793, 38.524097, 40.568787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363897, 37.960667, 40.958031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708988, 38.024887, 41.149830>,  <29.916042, 38.063419, 41.264912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708988, 38.024887, 41.149830>,  <29.363897, 37.960667, 40.958031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708988, 38.024887, 41.149830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484863, -0.006540, 0.874566,
		0.143554, -0.987005, 0.072206,
		0.862728, 0.160558, 0.479501,
		29.967808, 38.073051, 41.293682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291271, 37.606003, 41.600082>,  <29.363897, 37.960667, 40.958031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291271, 37.606003, 41.600082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.600475, 37.851768, 41.663265>,  <29.785997, 37.999229, 41.701176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.600475, 37.851768, 41.663265>,  <29.291271, 37.606003, 41.600082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600475, 37.851768, 41.663265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219581, 0.025536, 0.975260,
		0.595179, -0.788571, 0.154653,
		0.773011, 0.614413, 0.157957,
		29.832378, 38.036091, 41.710651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682322, 37.349033, 42.227974>,  <29.291271, 37.606003, 41.600082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682322, 37.349033, 42.227974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.777102, 37.735958, 42.191845>,  <29.833969, 37.968113, 42.170166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.777102, 37.735958, 42.191845>,  <29.682322, 37.349033, 42.227974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777102, 37.735958, 42.191845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144281, 0.126975, 0.981356,
		0.960749, -0.219499, 0.169652,
		0.236949, 0.967314, -0.090322,
		29.848186, 38.026154, 42.164749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322229, 37.487568, 42.680336>,  <29.682322, 37.349033, 42.227974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322229, 37.487568, 42.680336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.093884, 37.809574, 42.615753>,  <29.956877, 38.002777, 42.577003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.093884, 37.809574, 42.615753>,  <30.322229, 37.487568, 42.680336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093884, 37.809574, 42.615753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075331, 0.144469, 0.986638,
		0.817582, 0.575399, -0.021829,
		-0.570864, 0.805012, -0.161461,
		29.922625, 38.051079, 42.567314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480202, 37.931149, 43.206444>,  <30.322229, 37.487568, 42.680336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480202, 37.931149, 43.206444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168575, 38.127594, 43.050564>,  <29.981600, 38.245461, 42.957035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.168575, 38.127594, 43.050564>,  <30.480202, 37.931149, 43.206444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168575, 38.127594, 43.050564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322229, 0.219542, 0.920853,
		0.537798, 0.842977, -0.012786,
		-0.779065, 0.491113, -0.389701,
		29.934856, 38.274929, 42.933655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475039, 38.615932, 43.524342>,  <30.480202, 37.931149, 43.206444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475039, 38.615932, 43.524342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.112289, 38.502853, 43.399338>,  <29.894640, 38.435005, 43.324337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.112289, 38.502853, 43.399338>,  <30.475039, 38.615932, 43.524342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112289, 38.502853, 43.399338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336351, 0.038824, 0.940936,
		-0.253864, 0.958424, -0.130293,
		-0.906874, -0.282694, -0.312510,
		29.840227, 38.418045, 43.305584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905262, 39.266609, 43.715527>,  <30.475039, 38.615932, 43.524342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905262, 39.266609, 43.715527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223867, 39.302097, 43.954758>,  <31.415030, 39.323391, 44.098297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.223867, 39.302097, 43.954758>,  <30.905262, 39.266609, 43.715527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223867, 39.302097, 43.954758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604622, -0.117397, -0.787813,
		0.000319, 0.989114, -0.147149,
		0.796512, 0.088718, 0.598078,
		31.462822, 39.328712, 44.134182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519833, 39.651253, 43.378273>,  <30.905262, 39.266609, 43.715527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519833, 39.651253, 43.378273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747431, 39.488132, 43.663914>,  <31.883989, 39.390259, 43.835297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.747431, 39.488132, 43.663914>,  <31.519833, 39.651253, 43.378273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747431, 39.488132, 43.663914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722625, -0.166522, -0.670883,
		0.392502, 0.897757, 0.199939,
		0.568995, -0.407803, 0.714101,
		31.918129, 39.365791, 43.878143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121643, 39.999020, 43.428608>,  <31.519833, 39.651253, 43.378273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121643, 39.999020, 43.428608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208908, 39.640465, 43.582954>,  <32.261269, 39.425331, 43.675564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.208908, 39.640465, 43.582954>,  <32.121643, 39.999020, 43.428608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208908, 39.640465, 43.582954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779038, -0.078184, -0.622083,
		0.587796, 0.436324, 0.681262,
		0.218167, -0.896386, 0.385869,
		32.274357, 39.371548, 43.698715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817745, 39.978745, 43.411907>,  <32.121643, 39.999020, 43.428608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817745, 39.978745, 43.411907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740265, 39.587490, 43.442196>,  <32.693779, 39.352737, 43.460369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740265, 39.587490, 43.442196>,  <32.817745, 39.978745, 43.411907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740265, 39.587490, 43.442196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892960, -0.207746, -0.399330,
		0.406330, -0.009732, 0.913675,
		-0.193698, -0.978135, 0.075723,
		32.682156, 39.294048, 43.464912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396545, 39.635872, 43.657200>,  <32.817745, 39.978745, 43.411907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396545, 39.635872, 43.657200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189323, 39.366940, 43.445694>,  <33.064991, 39.205582, 43.318790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.189323, 39.366940, 43.445694>,  <33.396545, 39.635872, 43.657200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189323, 39.366940, 43.445694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848994, -0.328989, -0.413491,
		0.104043, -0.663131, 0.741237,
		-0.518058, -0.672327, -0.528765,
		33.033905, 39.165241, 43.287064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771572, 38.973774, 43.727844>,  <33.396545, 39.635872, 43.657200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771572, 38.973774, 43.727844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.540958, 38.908791, 43.407539>,  <33.402592, 38.869801, 43.215359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.540958, 38.908791, 43.407539>,  <33.771572, 38.973774, 43.727844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540958, 38.908791, 43.407539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803724, -0.289181, -0.520001,
		-0.147085, -0.943388, 0.297295,
		-0.576535, -0.162459, -0.800758,
		33.367996, 38.860054, 43.167313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877068, 38.228096, 43.462669>,  <33.771572, 38.973774, 43.727844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877068, 38.228096, 43.462669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728275, 38.430386, 43.151318>,  <33.639000, 38.551762, 42.964508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728275, 38.430386, 43.151318>,  <33.877068, 38.228096, 43.462669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728275, 38.430386, 43.151318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588714, -0.519788, -0.619061,
		-0.717667, -0.688519, -0.104378,
		-0.371981, 0.505729, -0.778376,
		33.616680, 38.582104, 42.917805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856995, 37.795757, 42.827477>,  <33.877068, 38.228096, 43.462669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856995, 37.795757, 42.827477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845276, 38.158512, 42.659336>,  <33.838245, 38.376167, 42.558453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845276, 38.158512, 42.659336>,  <33.856995, 37.795757, 42.827477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845276, 38.158512, 42.659336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727607, -0.268994, -0.631055,
		-0.685369, -0.324334, -0.651980,
		-0.029294, 0.906890, -0.420347,
		33.836487, 38.430580, 42.533234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858978, 37.690002, 42.091240>,  <33.856995, 37.795757, 42.827477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858978, 37.690002, 42.091240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974060, 38.072422, 42.113834>,  <34.043110, 38.301876, 42.127392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.974060, 38.072422, 42.113834>,  <33.858978, 37.690002, 42.091240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974060, 38.072422, 42.113834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660652, -0.155414, -0.734429,
		-0.693374, 0.248614, -0.676331,
		0.287700, 0.956053, 0.056488,
		34.060371, 38.359238, 42.130779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893951, 37.919464, 41.446438>,  <33.858978, 37.690002, 42.091240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893951, 37.919464, 41.446438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133633, 38.188171, 41.620647>,  <34.277443, 38.349396, 41.725174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.133633, 38.188171, 41.620647>,  <33.893951, 37.919464, 41.446438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133633, 38.188171, 41.620647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595306, -0.010116, -0.803436,
		-0.535315, 0.740695, -0.405967,
		0.599207, 0.671765, 0.435525,
		34.313396, 38.389702, 41.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029194, 38.371567, 40.951378>,  <33.893951, 37.919464, 41.446438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029194, 38.371567, 40.951378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330750, 38.411873, 41.211071>,  <34.511684, 38.436054, 41.366886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.330750, 38.411873, 41.211071>,  <34.029194, 38.371567, 40.951378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330750, 38.411873, 41.211071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656996, -0.119807, -0.744314,
		0.002784, 0.987671, -0.156521,
		0.753889, 0.100762, 0.649229,
		34.556915, 38.442101, 41.405838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402214, 38.777546, 40.556622>,  <34.029194, 38.371567, 40.951378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402214, 38.777546, 40.556622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635498, 38.655975, 40.857952>,  <34.775467, 38.583035, 41.038750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635498, 38.655975, 40.857952>,  <34.402214, 38.777546, 40.556622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635498, 38.655975, 40.857952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724617, -0.224499, -0.651560,
		0.367144, 0.925868, 0.089297,
		0.583211, -0.303922, 0.753323,
		34.810463, 38.564800, 41.083950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042046, 39.123848, 40.592983>,  <34.402214, 38.777546, 40.556622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042046, 39.123848, 40.592983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142063, 38.780140, 40.771477>,  <35.202072, 38.573914, 40.878574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.142063, 38.780140, 40.771477>,  <35.042046, 39.123848, 40.592983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142063, 38.780140, 40.771477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736725, -0.130207, -0.663538,
		0.628264, 0.494665, 0.600492,
		0.250041, -0.859275, 0.446236,
		35.217075, 38.522358, 40.905346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774670, 39.075153, 40.645603>,  <35.042046, 39.123848, 40.592983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774670, 39.075153, 40.645603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658813, 38.695919, 40.698124>,  <35.589298, 38.468380, 40.729637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.658813, 38.695919, 40.698124>,  <35.774670, 39.075153, 40.645603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658813, 38.695919, 40.698124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673256, -0.299317, -0.676118,
		0.680319, -0.107433, 0.724999,
		-0.289642, -0.948086, 0.131301,
		35.571922, 38.411491, 40.737514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.013287, 43.108402, 35.326542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872028, 43.345497, 35.037003>,  <27.787273, 43.487755, 34.863277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.872028, 43.345497, 35.037003>,  <28.013287, 43.108402, 35.326542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872028, 43.345497, 35.037003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528566, -0.764792, -0.368390,
		-0.771948, 0.252503, 0.583385,
		-0.353148, 0.592735, -0.723845,
		27.766085, 43.523319, 34.819847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350769, 43.079399, 35.374973>,  <28.013287, 43.108402, 35.326542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350769, 43.079399, 35.374973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417477, 43.181835, 34.994110>,  <27.457502, 43.243298, 34.765591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417477, 43.181835, 34.994110>,  <27.350769, 43.079399, 35.374973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417477, 43.181835, 34.994110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477359, -0.823993, -0.305229,
		-0.862738, 0.505424, -0.015170,
		0.166770, 0.256091, -0.952158,
		27.467508, 43.258663, 34.708462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756084, 43.149242, 35.018425>,  <27.350769, 43.079399, 35.374973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756084, 43.149242, 35.018425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040176, 43.061852, 34.750740>,  <27.210632, 43.009415, 34.590130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.040176, 43.061852, 34.750740>,  <26.756084, 43.149242, 35.018425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040176, 43.061852, 34.750740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462673, -0.861339, -0.209828,
		-0.530573, 0.458651, -0.712834,
		0.710230, -0.218480, -0.669209,
		27.253244, 42.996307, 34.549976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417881, 42.805180, 34.565262>,  <26.756084, 43.149242, 35.018425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417881, 42.805180, 34.565262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792414, 42.710953, 34.461113>,  <27.017134, 42.654419, 34.398624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.792414, 42.710953, 34.461113>,  <26.417881, 42.805180, 34.565262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792414, 42.710953, 34.461113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322225, -0.871067, -0.370692,
		-0.139479, 0.430989, -0.891512,
		0.936331, -0.235564, -0.260371,
		27.073313, 42.640282, 34.383003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330605, 42.508751, 33.875778>,  <26.417881, 42.805180, 34.565262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330605, 42.508751, 33.875778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678215, 42.371464, 34.018322>,  <26.886782, 42.289093, 34.103848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678215, 42.371464, 34.018322>,  <26.330605, 42.508751, 33.875778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678215, 42.371464, 34.018322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163873, -0.879278, -0.447231,
		0.466838, 0.330258, -0.820361,
		0.869027, -0.343219, 0.356360,
		26.938923, 42.268497, 34.125229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564663, 42.071636, 33.412071>,  <26.330605, 42.508751, 33.875778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564663, 42.071636, 33.412071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738102, 41.966808, 33.756935>,  <26.842165, 41.903912, 33.963852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738102, 41.966808, 33.756935>,  <26.564663, 42.071636, 33.412071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738102, 41.966808, 33.756935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210045, -0.959813, -0.186119,
		0.876284, -0.100391, -0.471219,
		0.433598, -0.262071, 0.862156,
		26.868181, 41.888187, 34.015583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974972, 41.527882, 33.230247>,  <26.564663, 42.071636, 33.412071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974972, 41.527882, 33.230247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930162, 41.486565, 33.625576>,  <26.903276, 41.461773, 33.862774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.930162, 41.486565, 33.625576>,  <26.974972, 41.527882, 33.230247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930162, 41.486565, 33.625576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079940, -0.990422, -0.112576,
		0.990485, -0.091618, 0.102694,
		-0.112024, -0.103296, 0.988322,
		26.896555, 41.455578, 33.922073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440718, 41.038898, 33.384430>,  <26.974972, 41.527882, 33.230247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440718, 41.038898, 33.384430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215786, 41.060680, 33.714478>,  <27.080826, 41.073750, 33.912506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215786, 41.060680, 33.714478>,  <27.440718, 41.038898, 33.384430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215786, 41.060680, 33.714478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107111, -0.984627, 0.137978,
		0.819946, 0.165968, 0.547853,
		-0.562331, 0.054453, 0.825118,
		27.047087, 41.077015, 33.962013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830868, 40.629589, 33.938732>,  <27.440718, 41.038898, 33.384430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830868, 40.629589, 33.938732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432302, 40.644855, 33.968933>,  <27.193163, 40.654015, 33.987053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432302, 40.644855, 33.968933>,  <27.830868, 40.629589, 33.938732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432302, 40.644855, 33.968933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017916, -0.967404, 0.252602,
		0.082686, 0.250344, 0.964620,
		-0.996415, 0.038169, 0.075506,
		27.133379, 40.656307, 33.991585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714193, 40.276718, 34.540245>,  <27.830868, 40.629589, 33.938732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714193, 40.276718, 34.540245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378006, 40.239529, 34.326717>,  <27.176292, 40.217213, 34.198601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.378006, 40.239529, 34.326717>,  <27.714193, 40.276718, 34.540245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378006, 40.239529, 34.326717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141933, -0.912995, 0.382485,
		-0.522939, 0.397234, 0.754149,
		-0.840470, -0.092978, -0.533821,
		27.125866, 40.211636, 34.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389896, 39.740082, 34.816010>,  <27.714193, 40.276718, 34.540245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389896, 39.740082, 34.816010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126860, 39.768097, 34.515965>,  <26.969038, 39.784908, 34.335938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.126860, 39.768097, 34.515965>,  <27.389896, 39.740082, 34.816010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126860, 39.768097, 34.515965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273242, -0.950047, 0.150830,
		-0.702075, 0.304147, 0.643882,
		-0.657593, 0.070042, -0.750111,
		26.929583, 39.789108, 34.290932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607468, 39.584358, 35.114910>,  <27.389896, 39.740082, 34.816010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607468, 39.584358, 35.114910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643938, 39.513111, 34.723000>,  <26.665821, 39.470364, 34.487854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.643938, 39.513111, 34.723000>,  <26.607468, 39.584358, 35.114910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643938, 39.513111, 34.723000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356929, -0.924351, 0.134826,
		-0.929672, 0.337417, -0.147853,
		0.091175, -0.178117, -0.979776,
		26.671291, 39.459675, 34.429066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102295, 39.207195, 34.996407>,  <26.607468, 39.584358, 35.114910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102295, 39.207195, 34.996407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296413, 39.138813, 34.653416>,  <26.412886, 39.097782, 34.447620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296413, 39.138813, 34.653416>,  <26.102295, 39.207195, 34.996407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296413, 39.138813, 34.653416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322631, -0.946505, 0.006107,
		-0.812647, 0.273684, -0.514492,
		0.485298, -0.170954, -0.857474,
		26.442003, 39.087528, 34.396175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643784, 38.909580, 34.635849>,  <26.102295, 39.207195, 34.996407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643784, 38.909580, 34.635849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.996784, 38.801849, 34.481628>,  <26.208584, 38.737209, 34.389095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.996784, 38.801849, 34.481628>,  <25.643784, 38.909580, 34.635849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996784, 38.801849, 34.481628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259047, -0.962588, 0.079487,
		-0.392539, 0.029729, -0.919255,
		0.882501, -0.269332, -0.385554,
		26.261534, 38.721050, 34.365963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439566, 38.414139, 34.043690>,  <25.643784, 38.909580, 34.635849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439566, 38.414139, 34.043690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820158, 38.364819, 34.156460>,  <26.048513, 38.335228, 34.224121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820158, 38.364819, 34.156460>,  <25.439566, 38.414139, 34.043690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820158, 38.364819, 34.156460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169120, -0.974962, 0.144387,
		0.257060, -0.185061, -0.948511,
		0.951482, -0.123296, 0.281921,
		26.105602, 38.327831, 34.241035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670551, 37.983452, 33.529938>,  <25.439566, 38.414139, 34.043690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670551, 37.983452, 33.529938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949383, 37.910294, 33.807247>,  <26.116682, 37.866398, 33.973633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.949383, 37.910294, 33.807247>,  <25.670551, 37.983452, 33.529938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949383, 37.910294, 33.807247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220238, -0.974792, -0.035718,
		0.682331, -0.127787, -0.719788,
		0.697079, -0.182896, 0.693274,
		26.158506, 37.855423, 34.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121477, 37.383244, 33.326561>,  <25.670551, 37.983452, 33.529938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121477, 37.383244, 33.326561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177351, 37.390713, 33.722569>,  <26.210875, 37.395195, 33.960175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177351, 37.390713, 33.722569>,  <26.121477, 37.383244, 33.326561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177351, 37.390713, 33.722569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136649, -0.989892, 0.037952,
		0.980722, -0.140586, -0.135718,
		0.139682, 0.018675, 0.990020,
		26.219255, 37.396317, 34.019573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694818, 36.938194, 33.444443>,  <26.121477, 37.383244, 33.326561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694818, 36.938194, 33.444443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474388, 36.988136, 33.774467>,  <26.342131, 37.018101, 33.972481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474388, 36.988136, 33.774467>,  <26.694818, 36.938194, 33.444443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474388, 36.988136, 33.774467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158015, -0.986468, 0.043734,
		0.819358, -0.106272, 0.563346,
		-0.551075, 0.124851, 0.825063,
		26.309065, 37.025593, 34.021988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924463, 36.419785, 33.792831>,  <26.694818, 36.938194, 33.444443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924463, 36.419785, 33.792831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.563427, 36.521309, 33.931923>,  <26.346806, 36.582222, 34.015377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.563427, 36.521309, 33.931923>,  <26.924463, 36.419785, 33.792831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.563427, 36.521309, 33.931923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, -0.944020, 0.292348,
		0.402461, 0.210725, 0.890854,
		-0.902589, 0.253812, 0.347725,
		26.292650, 36.597454, 34.036240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577913, 36.325230, 33.988270>,  <26.924463, 36.419785, 33.792831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577913, 36.325230, 33.988270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869457, 36.056957, 33.933208>,  <28.044384, 35.895996, 33.900169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869457, 36.056957, 33.933208>,  <27.577913, 36.325230, 33.988270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869457, 36.056957, 33.933208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613940, 0.729223, -0.302178,
		0.303046, 0.135733, 0.943260,
		0.728862, -0.670679, -0.137656,
		28.088116, 35.855755, 33.891911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196674, 36.299408, 34.551094>,  <27.577913, 36.325230, 33.988270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196674, 36.299408, 34.551094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217724, 36.261589, 34.153442>,  <28.230354, 36.238899, 33.914852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.217724, 36.261589, 34.153442>,  <28.196674, 36.299408, 34.551094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217724, 36.261589, 34.153442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651461, 0.757751, -0.037577,
		0.756855, -0.645659, 0.101468,
		0.052625, -0.094543, -0.994129,
		28.233511, 36.233227, 33.855206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913809, 36.272739, 34.379654>,  <28.196674, 36.299408, 34.551094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913809, 36.272739, 34.379654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725042, 36.397606, 34.049843>,  <28.611782, 36.472527, 33.851955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.725042, 36.397606, 34.049843>,  <28.913809, 36.272739, 34.379654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725042, 36.397606, 34.049843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654402, 0.750734, -0.090313,
		0.590808, -0.582193, -0.558567,
		-0.471915, 0.312170, -0.824528,
		28.583467, 36.491257, 33.802483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504360, 36.421917, 33.898117>,  <28.913809, 36.272739, 34.379654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504360, 36.421917, 33.898117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173548, 36.603958, 33.766117>,  <28.975060, 36.713181, 33.686916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.173548, 36.603958, 33.766117>,  <29.504360, 36.421917, 33.898117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173548, 36.603958, 33.766117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522759, 0.838501, -0.153747,
		0.206734, -0.299664, -0.931376,
		-0.827033, 0.455101, -0.330000,
		28.925438, 36.740490, 33.667118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665194, 36.708199, 33.224155>,  <29.504360, 36.421917, 33.898117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665194, 36.708199, 33.224155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348261, 36.915203, 33.353397>,  <29.158102, 37.039406, 33.430943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348261, 36.915203, 33.353397>,  <29.665194, 36.708199, 33.224155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348261, 36.915203, 33.353397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409455, 0.843673, -0.347222,
		-0.452283, -0.142819, -0.880365,
		-0.792330, 0.517512, 0.323101,
		29.110561, 37.070457, 33.450329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478083, 37.063332, 32.708126>,  <29.665194, 36.708199, 33.224155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478083, 37.063332, 32.708126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298021, 37.259064, 33.006905>,  <29.189985, 37.376503, 33.186172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298021, 37.259064, 33.006905>,  <29.478083, 37.063332, 32.708126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298021, 37.259064, 33.006905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406133, 0.857155, -0.316766,
		-0.795247, 0.160765, -0.584583,
		-0.450154, 0.489326, 0.746942,
		29.162975, 37.405861, 33.230988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122835, 37.595371, 32.377811>,  <29.478083, 37.063332, 32.708126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122835, 37.595371, 32.377811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144562, 37.730564, 32.753647>,  <29.157598, 37.811680, 32.979149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.144562, 37.730564, 32.753647>,  <29.122835, 37.595371, 32.377811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144562, 37.730564, 32.753647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369938, 0.867200, -0.333330,
		-0.927467, 0.365694, -0.077928,
		0.054318, 0.337982, 0.939584,
		29.160856, 37.831959, 33.035522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882444, 38.258907, 32.336693>,  <29.122835, 37.595371, 32.377811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882444, 38.258907, 32.336693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071144, 38.235668, 32.688618>,  <29.184364, 38.221725, 32.899773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071144, 38.235668, 32.688618>,  <28.882444, 38.258907, 32.336693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071144, 38.235668, 32.688618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539789, 0.808022, -0.236068,
		-0.697196, 0.586280, 0.412546,
		0.471749, -0.058102, 0.879817,
		29.212669, 38.218239, 32.952564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886845, 38.879658, 32.605328>,  <28.882444, 38.258907, 32.336693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886845, 38.879658, 32.605328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185009, 38.709595, 32.810696>,  <29.363907, 38.607555, 32.933918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185009, 38.709595, 32.810696>,  <28.886845, 38.879658, 32.605328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185009, 38.709595, 32.810696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567986, 0.808247, -0.155333,
		-0.348934, 0.407405, 0.843959,
		0.745411, -0.425156, 0.513425,
		29.408632, 38.582047, 32.964722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937300, 39.254826, 33.208439>,  <28.886845, 38.879658, 32.605328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937300, 39.254826, 33.208439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282871, 39.069305, 33.129940>,  <29.490215, 38.957993, 33.082840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282871, 39.069305, 33.129940>,  <28.937300, 39.254826, 33.208439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282871, 39.069305, 33.129940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494016, 0.856186, 0.151310,
		0.097843, -0.227669, 0.968810,
		0.863930, -0.463803, -0.196244,
		29.542049, 38.930164, 33.071068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417604, 39.434845, 33.781338>,  <28.937300, 39.254826, 33.208439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417604, 39.434845, 33.781338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636957, 39.326603, 33.464844>,  <29.768570, 39.261658, 33.274948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636957, 39.326603, 33.464844>,  <29.417604, 39.434845, 33.781338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636957, 39.326603, 33.464844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493766, 0.868419, 0.045212,
		0.674885, -0.415476, 0.609843,
		0.548384, -0.270607, -0.791231,
		29.801472, 39.245422, 33.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092344, 39.596893, 33.958569>,  <29.417604, 39.434845, 33.781338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092344, 39.596893, 33.958569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109200, 39.540169, 33.562969>,  <30.119312, 39.506134, 33.325611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109200, 39.540169, 33.562969>,  <30.092344, 39.596893, 33.958569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109200, 39.540169, 33.562969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409524, 0.905352, -0.112369,
		0.911326, -0.400283, 0.096225,
		0.042138, -0.141812, -0.988996,
		30.121841, 39.497623, 33.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763218, 40.014938, 33.608910>,  <30.092344, 39.596893, 33.958569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763218, 40.014938, 33.608910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481285, 39.979900, 33.327332>,  <30.312124, 39.958878, 33.158386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.481285, 39.979900, 33.327332>,  <30.763218, 40.014938, 33.608910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481285, 39.979900, 33.327332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086799, 0.974239, -0.208144,
		0.704043, -0.207808, -0.679072,
		-0.704833, -0.087600, -0.703944,
		30.269835, 39.953621, 33.116150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049595, 40.479210, 33.090996>,  <30.763218, 40.014938, 33.608910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049595, 40.479210, 33.090996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666002, 40.427135, 32.990273>,  <30.435846, 40.395893, 32.929836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.666002, 40.427135, 32.990273>,  <31.049595, 40.479210, 33.090996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666002, 40.427135, 32.990273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074039, 0.972504, -0.220803,
		0.273632, -0.193102, -0.942251,
		-0.958981, -0.130182, -0.251811,
		30.378307, 40.388081, 32.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018574, 40.929482, 32.591339>,  <31.049595, 40.479210, 33.090996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018574, 40.929482, 32.591339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635534, 40.848255, 32.673084>,  <30.405710, 40.799519, 32.722134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635534, 40.848255, 32.673084>,  <31.018574, 40.929482, 32.591339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635534, 40.848255, 32.673084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245063, 0.947105, -0.207210,
		-0.151478, -0.248507, -0.956712,
		-0.957601, -0.203067, 0.204366,
		30.348253, 40.787334, 32.734394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667473, 41.198578, 32.023510>,  <31.018574, 40.929482, 32.591339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667473, 41.198578, 32.023510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400040, 41.184795, 32.320644>,  <30.239580, 41.176525, 32.498924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.400040, 41.184795, 32.320644>,  <30.667473, 41.198578, 32.023510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400040, 41.184795, 32.320644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286781, 0.933603, -0.214807,
		-0.686115, -0.356648, -0.634072,
		-0.668582, -0.034458, 0.742839,
		30.199465, 41.174458, 32.543495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106321, 41.530350, 31.824482>,  <30.667473, 41.198578, 32.023510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106321, 41.530350, 31.824482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044973, 41.538704, 32.219662>,  <30.008163, 41.543716, 32.456768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044973, 41.538704, 32.219662>,  <30.106321, 41.530350, 31.824482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044973, 41.538704, 32.219662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095890, 0.994744, -0.035918,
		-0.983505, -0.100243, -0.150561,
		-0.153370, 0.020888, 0.987948,
		29.998962, 41.544971, 32.516045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713547, 42.142368, 31.838480>,  <30.106321, 41.530350, 31.824482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713547, 42.142368, 31.838480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800758, 42.093998, 32.225849>,  <29.853085, 42.064976, 32.458271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.800758, 42.093998, 32.225849>,  <29.713547, 42.142368, 31.838480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800758, 42.093998, 32.225849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111470, 0.982714, 0.147807,
		-0.969556, -0.140176, 0.200778,
		0.218027, -0.120926, 0.968422,
		29.866167, 42.057720, 32.516376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165934, 42.413044, 32.317116>,  <29.713547, 42.142368, 31.838480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165934, 42.413044, 32.317116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498638, 42.396496, 32.538551>,  <29.698261, 42.386566, 32.671413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498638, 42.396496, 32.538551>,  <29.165934, 42.413044, 32.317116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498638, 42.396496, 32.538551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191092, 0.914938, 0.355489,
		-0.521210, -0.401469, 0.753102,
		0.831760, -0.041373, 0.553592,
		29.748167, 42.384083, 32.704628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926441, 42.594898, 33.085110>,  <29.165934, 42.413044, 32.317116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926441, 42.594898, 33.085110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304029, 42.691807, 32.995464>,  <29.530582, 42.749950, 32.941677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.304029, 42.691807, 32.995464>,  <28.926441, 42.594898, 33.085110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304029, 42.691807, 32.995464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170668, 0.939556, 0.296826,
		0.282480, -0.241946, 0.928260,
		0.943969, 0.242272, -0.224113,
		29.587219, 42.764488, 32.928230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257683, 42.919174, 33.672829>,  <28.926441, 42.594898, 33.085110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257683, 42.919174, 33.672829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491825, 43.046299, 33.374474>,  <29.632311, 43.122574, 33.195461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491825, 43.046299, 33.374474>,  <29.257683, 42.919174, 33.672829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491825, 43.046299, 33.374474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084733, 0.938914, 0.333557,
		0.806335, -0.132049, 0.576530,
		0.585358, 0.317810, -0.745891,
		29.667433, 43.141644, 33.150707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490061, 43.536369, 33.796673>,  <29.257683, 42.919174, 33.672829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490061, 43.536369, 33.796673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559607, 43.564129, 33.403744>,  <29.601334, 43.580784, 33.167988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.559607, 43.564129, 33.403744>,  <29.490061, 43.536369, 33.796673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559607, 43.564129, 33.403744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247469, 0.968583, 0.024623,
		0.953168, 0.238813, 0.185577,
		0.173867, 0.069394, -0.982321,
		29.611767, 43.584946, 33.109047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957666, 44.140411, 33.700008>,  <29.490061, 43.536369, 33.796673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957666, 44.140411, 33.700008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739969, 44.071373, 33.371616>,  <29.609352, 44.029949, 33.174580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739969, 44.071373, 33.371616>,  <29.957666, 44.140411, 33.700008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739969, 44.071373, 33.371616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162192, 0.981791, -0.098889,
		0.823101, 0.079337, -0.562326,
		-0.544241, -0.172601, -0.820982,
		29.576696, 44.019592, 33.125320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.244289, 36.113171, 45.518307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945492, 35.863197, 45.427570>,  <34.766212, 35.713215, 45.373127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945492, 35.863197, 45.427570>,  <35.244289, 36.113171, 45.518307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945492, 35.863197, 45.427570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580303, 0.446405, 0.681153,
		-0.324410, 0.640457, -0.696113,
		-0.746998, -0.624930, -0.226841,
		34.721394, 35.675720, 45.359520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637753, 36.538361, 45.511349>,  <35.244289, 36.113171, 45.518307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637753, 36.538361, 45.511349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556179, 36.154747, 45.590004>,  <34.507233, 35.924580, 45.637196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556179, 36.154747, 45.590004>,  <34.637753, 36.538361, 45.511349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556179, 36.154747, 45.590004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615053, 0.281781, 0.736416,
		-0.761655, 0.029242, -0.647322,
		-0.203938, -0.959033, 0.196635,
		34.494999, 35.867039, 45.648994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927113, 36.557804, 45.581589>,  <34.637753, 36.538361, 45.511349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927113, 36.557804, 45.581589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052891, 36.217335, 45.749699>,  <34.128357, 36.013054, 45.850563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052891, 36.217335, 45.749699>,  <33.927113, 36.557804, 45.581589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052891, 36.217335, 45.749699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620472, 0.150777, 0.769598,
		-0.718427, -0.502767, -0.480716,
		0.314448, -0.851171, 0.420275,
		34.147224, 35.961983, 45.875782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392452, 36.083237, 45.680096>,  <33.927113, 36.557804, 45.581589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392452, 36.083237, 45.680096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675022, 35.997524, 45.949924>,  <33.844566, 35.946098, 46.111820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675022, 35.997524, 45.949924>,  <33.392452, 36.083237, 45.680096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675022, 35.997524, 45.949924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671412, 0.098725, 0.734479,
		-0.223983, -0.971770, -0.074130,
		0.706426, -0.214282, 0.674571,
		33.886951, 35.933239, 46.152294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029190, 35.599216, 46.194981>,  <33.392452, 36.083237, 45.680096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029190, 35.599216, 46.194981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357159, 35.745209, 46.371399>,  <33.553940, 35.832802, 46.477249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.357159, 35.745209, 46.371399>,  <33.029190, 35.599216, 46.194981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357159, 35.745209, 46.371399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533482, 0.207665, 0.819922,
		0.207665, -0.907560, 0.364978,
		-0.819922, -0.364978, -0.441042,
		33.603134, 35.854702, 46.503712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052265, 35.298687, 46.753155>,  <33.029190, 35.599216, 46.194981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052265, 35.298687, 46.753155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292259, 35.600185, 46.860397>,  <33.436256, 35.781086, 46.924744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292259, 35.600185, 46.860397>,  <33.052265, 35.298687, 46.753155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292259, 35.600185, 46.860397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566815, 0.164012, 0.807354,
		0.564568, -0.636368, 0.525640,
		0.599986, 0.753748, 0.268107,
		33.472256, 35.826309, 46.940830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069424, 35.257416, 47.435230>,  <33.052265, 35.298687, 46.753155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069424, 35.257416, 47.435230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165855, 35.636204, 47.350266>,  <33.223717, 35.863476, 47.299286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.165855, 35.636204, 47.350266>,  <33.069424, 35.257416, 47.435230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165855, 35.636204, 47.350266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605231, 0.317798, 0.729863,
		0.758666, -0.047397, 0.649753,
		0.241084, 0.946973, -0.212416,
		33.238182, 35.920296, 47.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185822, 35.555706, 48.064423>,  <33.069424, 35.257416, 47.435230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185822, 35.555706, 48.064423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168949, 35.874249, 47.823082>,  <33.158825, 36.065372, 47.678276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168949, 35.874249, 47.823082>,  <33.185822, 35.555706, 48.064423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168949, 35.874249, 47.823082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395647, 0.541210, 0.741994,
		0.917434, 0.270013, 0.292248,
		-0.042181, 0.796357, -0.603354,
		33.156296, 36.113155, 47.642075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452175, 36.233459, 48.328224>,  <33.185822, 35.555706, 48.064423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452175, 36.233459, 48.328224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152004, 36.298180, 48.071884>,  <32.971901, 36.337009, 47.918079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152004, 36.298180, 48.071884>,  <33.452175, 36.233459, 48.328224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152004, 36.298180, 48.071884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480778, 0.531717, 0.697230,
		0.453558, 0.831323, -0.321226,
		-0.750425, 0.161796, -0.640847,
		32.926876, 36.346718, 47.879631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006748, 36.434475, 48.866631>,  <33.452175, 36.233459, 48.328224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006748, 36.434475, 48.866631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841213, 36.529549, 48.515121>,  <32.741890, 36.586594, 48.304214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841213, 36.529549, 48.515121>,  <33.006748, 36.434475, 48.866631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841213, 36.529549, 48.515121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643251, 0.606721, 0.467030,
		0.644177, 0.758548, -0.098193,
		-0.413840, 0.237687, -0.878772,
		32.717060, 36.600853, 48.251492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878071, 37.212833, 48.959145>,  <33.006748, 36.434475, 48.866631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878071, 37.212833, 48.959145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622227, 37.058506, 48.693203>,  <32.468719, 36.965908, 48.533638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622227, 37.058506, 48.693203>,  <32.878071, 37.212833, 48.959145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622227, 37.058506, 48.693203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754002, 0.483202, 0.444969,
		0.149580, 0.785911, -0.599974,
		-0.639615, -0.385823, -0.664856,
		32.430344, 36.942760, 48.493748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358070, 37.714497, 48.758301>,  <32.878071, 37.212833, 48.959145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358070, 37.714497, 48.758301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161697, 37.386585, 48.640350>,  <32.043873, 37.189838, 48.569580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.161697, 37.386585, 48.640350>,  <32.358070, 37.714497, 48.758301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161697, 37.386585, 48.640350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844108, 0.363834, 0.393836,
		-0.215570, 0.442257, -0.870597,
		-0.490929, -0.819777, -0.294881,
		32.014420, 37.140652, 48.551888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853125, 37.857552, 48.254551>,  <32.358070, 37.714497, 48.758301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853125, 37.857552, 48.254551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780199, 37.565350, 48.517796>,  <31.736443, 37.390026, 48.675743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780199, 37.565350, 48.517796>,  <31.853125, 37.857552, 48.254551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780199, 37.565350, 48.517796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715543, 0.557640, 0.420757,
		-0.674359, -0.394200, -0.624377,
		-0.182316, -0.730510, 0.658116,
		31.725504, 37.346195, 48.715229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171038, 37.881107, 48.431175>,  <31.853125, 37.857552, 48.254551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171038, 37.881107, 48.431175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339096, 37.681000, 48.734016>,  <31.439932, 37.560936, 48.915722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339096, 37.681000, 48.734016>,  <31.171038, 37.881107, 48.431175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339096, 37.681000, 48.734016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524350, 0.547101, 0.652486,
		-0.740631, -0.671128, -0.032452,
		0.420147, -0.500267, 0.757106,
		31.465139, 37.530918, 48.961147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791023, 38.398338, 48.854500>,  <31.171038, 37.881107, 48.431175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791023, 38.398338, 48.854500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642565, 38.761482, 48.776478>,  <30.553490, 38.979366, 48.729664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642565, 38.761482, 48.776478>,  <30.791023, 38.398338, 48.854500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642565, 38.761482, 48.776478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574322, 0.059373, -0.816474,
		-0.729661, -0.415055, -0.543438,
		-0.371147, 0.907857, -0.195053,
		30.531221, 39.033840, 48.717960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200802, 38.690334, 49.203503>,  <30.791023, 38.398338, 48.854500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200802, 38.690334, 49.203503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309216, 39.074371, 49.231129>,  <30.374264, 39.304794, 49.247704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.309216, 39.074371, 49.231129>,  <30.200802, 38.690334, 49.203503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309216, 39.074371, 49.231129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233834, 0.135275, -0.962820,
		-0.933735, 0.244809, 0.261166,
		0.271037, 0.960088, 0.069067,
		30.390526, 39.362396, 49.251850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607088, 39.071938, 48.850933>,  <30.200802, 38.690334, 49.203503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607088, 39.071938, 48.850933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935446, 39.299061, 48.875362>,  <30.132460, 39.435333, 48.890018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.935446, 39.299061, 48.875362>,  <29.607088, 39.071938, 48.850933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935446, 39.299061, 48.875362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087427, 0.230633, -0.969105,
		-0.564349, 0.790193, 0.238967,
		0.820894, 0.567805, 0.061073,
		30.181713, 39.469402, 48.893684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469259, 39.573223, 48.423943>,  <29.607088, 39.071938, 48.850933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469259, 39.573223, 48.423943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866808, 39.604397, 48.455292>,  <30.105337, 39.623100, 48.474102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866808, 39.604397, 48.455292>,  <29.469259, 39.573223, 48.423943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866808, 39.604397, 48.455292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064842, 0.163078, -0.984480,
		-0.089502, 0.983531, 0.157025,
		0.993874, 0.077931, 0.078370,
		30.164970, 39.627777, 48.478802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516064, 40.093491, 47.987019>,  <29.469259, 39.573223, 48.423943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516064, 40.093491, 47.987019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870230, 39.916443, 48.043762>,  <30.082729, 39.810215, 48.077808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870230, 39.916443, 48.043762>,  <29.516064, 40.093491, 47.987019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870230, 39.916443, 48.043762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223974, 0.138858, -0.964652,
		0.407277, 0.885892, 0.222083,
		0.885416, -0.442621, 0.141863,
		30.135855, 39.783657, 48.086323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942703, 40.405670, 47.530617>,  <29.516064, 40.093491, 47.987019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942703, 40.405670, 47.530617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172789, 40.085907, 47.599995>,  <30.310839, 39.894051, 47.641621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172789, 40.085907, 47.599995>,  <29.942703, 40.405670, 47.530617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172789, 40.085907, 47.599995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337162, 0.038508, -0.940659,
		0.745287, 0.599558, 0.291679,
		0.575212, -0.799404, 0.173449,
		30.345352, 39.846085, 47.652031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739157, 40.613552, 47.425934>,  <29.942703, 40.405670, 47.530617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739157, 40.613552, 47.425934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650772, 40.227688, 47.368500>,  <30.597742, 39.996170, 47.334042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650772, 40.227688, 47.368500>,  <30.739157, 40.613552, 47.425934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650772, 40.227688, 47.368500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390363, 0.047436, -0.919438,
		0.893752, -0.259207, 0.366085,
		-0.220959, -0.964656, -0.143581,
		30.584484, 39.938290, 47.325424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325426, 40.322231, 47.206120>,  <30.739157, 40.613552, 47.425934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325426, 40.322231, 47.206120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043303, 40.064743, 47.087353>,  <30.874029, 39.910248, 47.016094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.043303, 40.064743, 47.087353>,  <31.325426, 40.322231, 47.206120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043303, 40.064743, 47.087353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407211, -0.025057, -0.912990,
		0.580274, -0.764848, 0.279804,
		-0.705309, -0.643724, -0.296914,
		30.831709, 39.871624, 46.998280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662268, 39.851521, 46.803288>,  <31.325426, 40.322231, 47.206120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662268, 39.851521, 46.803288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293505, 39.753933, 46.682911>,  <31.072247, 39.695381, 46.610683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.293505, 39.753933, 46.682911>,  <31.662268, 39.851521, 46.803288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293505, 39.753933, 46.682911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367208, -0.302710, -0.879502,
		0.123470, -0.921329, 0.368657,
		-0.921907, -0.243966, -0.300944,
		31.016933, 39.680744, 46.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856010, 39.365662, 46.380634>,  <31.662268, 39.851521, 46.803288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856010, 39.365662, 46.380634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474949, 39.451431, 46.294403>,  <31.246311, 39.502892, 46.242664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.474949, 39.451431, 46.294403>,  <31.856010, 39.365662, 46.380634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474949, 39.451431, 46.294403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152883, -0.275053, -0.949196,
		-0.262825, -0.937213, 0.229249,
		-0.952654, 0.214424, -0.215575,
		31.189152, 39.515759, 46.229733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661022, 38.871410, 45.921070>,  <31.856010, 39.365662, 46.380634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661022, 38.871410, 45.921070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.427094, 39.186951, 45.845501>,  <31.286736, 39.376274, 45.800159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.427094, 39.186951, 45.845501>,  <31.661022, 38.871410, 45.921070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427094, 39.186951, 45.845501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061049, -0.189440, -0.979992,
		-0.808862, -0.584654, 0.062630,
		-0.584821, 0.788855, -0.188924,
		31.251648, 39.423607, 45.788822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123016, 38.608955, 45.481434>,  <31.661022, 38.871410, 45.921070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123016, 38.608955, 45.481434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146311, 39.003254, 45.418312>,  <31.160288, 39.239834, 45.380440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.146311, 39.003254, 45.418312>,  <31.123016, 38.608955, 45.481434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146311, 39.003254, 45.418312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166021, -0.165438, -0.972146,
		-0.984401, 0.030416, -0.173290,
		0.058237, 0.985751, -0.157807,
		31.163782, 39.298981, 45.370972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834303, 38.637817, 44.908020>,  <31.123016, 38.608955, 45.481434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834303, 38.637817, 44.908020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041813, 38.979248, 44.927128>,  <31.166319, 39.184105, 44.938591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.041813, 38.979248, 44.927128>,  <30.834303, 38.637817, 44.908020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041813, 38.979248, 44.927128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341776, -0.155853, -0.926768,
		-0.783621, 0.497111, -0.372584,
		0.518775, 0.853575, 0.047771,
		31.197445, 39.235321, 44.941460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654137, 38.906086, 44.327583>,  <30.834303, 38.637817, 44.908020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654137, 38.906086, 44.327583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998346, 39.070499, 44.447945>,  <31.204872, 39.169147, 44.520161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.998346, 39.070499, 44.447945>,  <30.654137, 38.906086, 44.327583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998346, 39.070499, 44.447945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353291, -0.055998, -0.933836,
		-0.366990, 0.909898, -0.193403,
		0.860525, 0.411036, 0.300908,
		31.256504, 39.193810, 44.538216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968191, 39.135292, 43.855530>,  <30.654137, 38.906086, 44.327583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968191, 39.135292, 43.855530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754879, 38.806229, 43.776695>,  <29.626892, 38.608791, 43.729397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.754879, 38.806229, 43.776695>,  <29.968191, 39.135292, 43.855530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754879, 38.806229, 43.776695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377118, 0.022650, 0.925888,
		-0.757227, 0.568082, -0.322319,
		-0.533281, -0.822660, -0.197083,
		29.594894, 38.559429, 43.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309896, 39.281441, 44.074883>,  <29.968191, 39.135292, 43.855530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309896, 39.281441, 44.074883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319767, 38.882591, 44.046223>,  <29.325689, 38.643280, 44.029026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.319767, 38.882591, 44.046223>,  <29.309896, 39.281441, 44.074883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319767, 38.882591, 44.046223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397753, -0.075544, 0.914377,
		-0.917161, 0.005936, -0.398473,
		0.024675, -0.997125, -0.071647,
		29.327169, 38.583454, 44.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594572, 39.007412, 44.215179>,  <29.309896, 39.281441, 44.074883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594572, 39.007412, 44.215179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820511, 38.686401, 44.292011>,  <28.956074, 38.493793, 44.338112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.820511, 38.686401, 44.292011>,  <28.594572, 39.007412, 44.215179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820511, 38.686401, 44.292011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417361, -0.077032, 0.905470,
		-0.711871, -0.591617, -0.378456,
		0.564844, -0.802531, 0.192081,
		28.989964, 38.445641, 44.349636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275341, 38.613476, 44.617302>,  <28.594572, 39.007412, 44.215179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275341, 38.613476, 44.617302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.590847, 38.381542, 44.698929>,  <28.780151, 38.242382, 44.747906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.590847, 38.381542, 44.698929>,  <28.275341, 38.613476, 44.617302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590847, 38.381542, 44.698929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415090, -0.257565, 0.872560,
		-0.453377, -0.772952, -0.443841,
		0.788765, -0.579832, 0.204071,
		28.827477, 38.207592, 44.760151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074343, 37.944138, 44.837524>,  <28.275341, 38.613476, 44.617302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074343, 37.944138, 44.837524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.446846, 37.961296, 44.982258>,  <28.670347, 37.971592, 45.069096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.446846, 37.961296, 44.982258>,  <28.074343, 37.944138, 44.837524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446846, 37.961296, 44.982258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337062, -0.275758, 0.900193,
		0.138390, -0.960270, -0.242344,
		0.931256, 0.042892, 0.361832,
		28.726223, 37.974163, 45.090809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160284, 37.334442, 45.298775>,  <28.074343, 37.944138, 44.837524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160284, 37.334442, 45.298775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.449663, 37.580673, 45.423794>,  <28.623291, 37.728413, 45.498806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.449663, 37.580673, 45.423794>,  <28.160284, 37.334442, 45.298775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449663, 37.580673, 45.423794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239895, -0.200359, 0.949898,
		0.647360, -0.762179, 0.002725,
		0.723447, 0.615580, 0.312548,
		28.666697, 37.765347, 45.517559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571344, 37.003304, 45.907734>,  <28.160284, 37.334442, 45.298775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571344, 37.003304, 45.907734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.624186, 37.398121, 45.944180>,  <28.655891, 37.635010, 45.966049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.624186, 37.398121, 45.944180>,  <28.571344, 37.003304, 45.907734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624186, 37.398121, 45.944180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086216, -0.080132, 0.993049,
		0.987479, -0.139041, 0.074513,
		0.132104, 0.987039, 0.091116,
		28.663816, 37.694233, 45.971516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927301, 36.352535, 46.213955>,  <28.571344, 37.003304, 45.907734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927301, 36.352535, 46.213955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640034, 36.079185, 46.161434>,  <28.467674, 35.915176, 46.129921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640034, 36.079185, 46.161434>,  <28.927301, 36.352535, 46.213955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640034, 36.079185, 46.161434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390628, -0.239748, -0.888781,
		0.575887, -0.689584, 0.439123,
		-0.718167, -0.683371, -0.131303,
		28.424583, 35.874176, 46.122044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194689, 35.713200, 46.130051>,  <28.927301, 36.352535, 46.213955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194689, 35.713200, 46.130051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.838482, 35.702183, 45.948402>,  <28.624758, 35.695572, 45.839413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.838482, 35.702183, 45.948402>,  <29.194689, 35.713200, 46.130051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838482, 35.702183, 45.948402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451538, -0.175535, -0.874815,
		-0.055617, -0.984088, 0.168754,
		-0.890517, -0.027544, -0.454116,
		28.571327, 35.693920, 45.812168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127134, 35.092972, 45.926460>,  <29.194689, 35.713200, 46.130051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127134, 35.092972, 45.926460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.873760, 35.284222, 45.683098>,  <28.721737, 35.398972, 45.537079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.873760, 35.284222, 45.683098>,  <29.127134, 35.092972, 45.926460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873760, 35.284222, 45.683098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523340, -0.314448, -0.791983,
		-0.569980, -0.820072, -0.051041,
		-0.633433, 0.478126, -0.608406,
		28.683729, 35.427658, 45.500576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099024, 34.719379, 45.305412>,  <29.127134, 35.092972, 45.926460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099024, 34.719379, 45.305412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929995, 35.063725, 45.192036>,  <28.828577, 35.270332, 45.124008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.929995, 35.063725, 45.192036>,  <29.099024, 34.719379, 45.305412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929995, 35.063725, 45.192036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409316, -0.097761, -0.907140,
		-0.808637, -0.499350, -0.311056,
		-0.422571, 0.860868, -0.283446,
		28.803223, 35.321983, 45.107002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857912, 34.545158, 44.725231>,  <29.099024, 34.719379, 45.305412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857912, 34.545158, 44.725231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.783129, 34.931999, 44.656227>,  <28.738258, 35.164104, 44.614826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.783129, 34.931999, 44.656227>,  <28.857912, 34.545158, 44.725231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783129, 34.931999, 44.656227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250736, -0.122813, -0.960234,
		-0.949831, -0.222778, -0.219526,
		-0.186958, 0.967102, -0.172510,
		28.727041, 35.222130, 44.604473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395094, 34.638950, 44.186291>,  <28.857912, 34.545158, 44.725231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395094, 34.638950, 44.186291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.626251, 34.963234, 44.223797>,  <28.764946, 35.157803, 44.246300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.626251, 34.963234, 44.223797>,  <28.395094, 34.638950, 44.186291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626251, 34.963234, 44.223797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320924, -0.120104, -0.939459,
		-0.750364, 0.573000, -0.329583,
		0.577894, 0.810707, 0.093768,
		28.799620, 35.206448, 44.251926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275131, 35.067932, 43.604633>,  <28.395094, 34.638950, 44.186291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275131, 35.067932, 43.604633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640583, 35.172287, 43.729351>,  <28.859854, 35.234898, 43.804184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.640583, 35.172287, 43.729351>,  <28.275131, 35.067932, 43.604633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640583, 35.172287, 43.729351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282498, 0.144137, -0.948377,
		-0.292358, 0.954549, 0.057989,
		0.913631, 0.260884, 0.311798,
		28.914673, 35.250553, 43.822891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.359501, 34.320824, 48.774952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519608, 34.664833, 48.648373>,  <30.615671, 34.871239, 48.572426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.519608, 34.664833, 48.648373>,  <30.359501, 34.320824, 48.774952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519608, 34.664833, 48.648373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350899, -0.462836, -0.814035,
		-0.846556, 0.214791, -0.487041,
		0.400267, 0.860028, -0.316447,
		30.639688, 34.922840, 48.553440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252308, 34.411583, 48.033703>,  <30.359501, 34.320824, 48.774952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252308, 34.411583, 48.033703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.561993, 34.645973, 48.129391>,  <30.747803, 34.786610, 48.186802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.561993, 34.645973, 48.129391>,  <30.252308, 34.411583, 48.033703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561993, 34.645973, 48.129391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418682, -0.190709, -0.887883,
		-0.474658, 0.787566, -0.392987,
		0.774213, 0.585977, 0.239218,
		30.794256, 34.821766, 48.201157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373159, 34.813480, 47.333797>,  <30.252308, 34.411583, 48.033703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373159, 34.813480, 47.333797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.692694, 34.812744, 47.574417>,  <30.884415, 34.812302, 47.718788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.692694, 34.812744, 47.574417>,  <30.373159, 34.813480, 47.333797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692694, 34.812744, 47.574417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570253, -0.316024, -0.758248,
		0.191497, 0.948749, -0.251403,
		0.798837, -0.001839, 0.601545,
		30.932344, 34.812191, 47.754879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909742, 35.077381, 46.907261>,  <30.373159, 34.813480, 47.333797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909742, 35.077381, 46.907261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074314, 34.859138, 47.199299>,  <31.173058, 34.728191, 47.374523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.074314, 34.859138, 47.199299>,  <30.909742, 35.077381, 46.907261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074314, 34.859138, 47.199299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642275, -0.394798, -0.656976,
		0.646691, 0.739221, 0.187998,
		0.411429, -0.545607, 0.730095,
		31.197742, 34.695457, 47.418327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653463, 35.020947, 46.722080>,  <30.909742, 35.077381, 46.907261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653463, 35.020947, 46.722080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.612867, 34.741695, 47.005581>,  <31.588511, 34.574146, 47.175682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.612867, 34.741695, 47.005581>,  <31.653463, 35.020947, 46.722080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612867, 34.741695, 47.005581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689455, -0.562950, -0.455784,
		0.717183, 0.442392, 0.538458,
		-0.101490, -0.698123, 0.708748,
		31.582420, 34.532257, 47.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320965, 34.822136, 46.915798>,  <31.653463, 35.020947, 46.722080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320965, 34.822136, 46.915798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.108639, 34.514542, 47.058289>,  <31.981243, 34.329987, 47.143784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.108639, 34.514542, 47.058289>,  <32.320965, 34.822136, 46.915798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108639, 34.514542, 47.058289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704833, -0.633967, -0.318272,
		0.470585, 0.082141, 0.878523,
		-0.530811, -0.768986, 0.356231,
		31.949396, 34.283844, 47.165157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787659, 34.364502, 47.193699>,  <32.320965, 34.822136, 46.915798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787659, 34.364502, 47.193699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449711, 34.169029, 47.106625>,  <32.246944, 34.051746, 47.054379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.449711, 34.169029, 47.106625>,  <32.787659, 34.364502, 47.193699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449711, 34.169029, 47.106625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531469, -0.720174, -0.445971,
		0.061168, -0.492478, 0.868172,
		-0.844866, -0.488686, -0.217685,
		32.196251, 34.022423, 47.041321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039349, 33.624168, 47.193718>,  <32.787659, 34.364502, 47.193699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039349, 33.624168, 47.193718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685902, 33.625839, 47.006443>,  <32.473831, 33.626842, 46.894077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.685902, 33.625839, 47.006443>,  <33.039349, 33.624168, 47.193718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685902, 33.625839, 47.006443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338777, -0.684520, -0.645493,
		-0.323183, -0.728982, 0.603439,
		-0.883619, 0.004181, -0.468188,
		32.420815, 33.627094, 46.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800991, 32.878632, 47.093128>,  <33.039349, 33.624168, 47.193718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800991, 32.878632, 47.093128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.601959, 33.096672, 46.823235>,  <32.482540, 33.227497, 46.661297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.601959, 33.096672, 46.823235>,  <32.800991, 32.878632, 47.093128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601959, 33.096672, 46.823235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386390, -0.557144, -0.735047,
		-0.776603, -0.626460, 0.066603,
		-0.497584, 0.545105, -0.674737,
		32.452682, 33.260204, 46.620811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461842, 32.382446, 46.758228>,  <32.800991, 32.878632, 47.093128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461842, 32.382446, 46.758228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452271, 32.699646, 46.514729>,  <32.446529, 32.889965, 46.368629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.452271, 32.699646, 46.514729>,  <32.461842, 32.382446, 46.758228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452271, 32.699646, 46.514729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097779, -0.604145, -0.790852,
		-0.994920, -0.078446, -0.063084,
		-0.023927, 0.793003, -0.608747,
		32.445091, 32.937546, 46.332104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180157, 32.117744, 46.109043>,  <32.461842, 32.382446, 46.758228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180157, 32.117744, 46.109043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301178, 32.476021, 45.978687>,  <32.373791, 32.690987, 45.900475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.301178, 32.476021, 45.978687>,  <32.180157, 32.117744, 46.109043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301178, 32.476021, 45.978687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002413, -0.341193, -0.939990,
		-0.953129, 0.285185, -0.101068,
		0.302555, 0.895688, -0.325889,
		32.391945, 32.744728, 45.880920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754999, 32.435669, 45.490318>,  <32.180157, 32.117744, 46.109043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754999, 32.435669, 45.490318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127380, 32.581581, 45.496799>,  <32.350811, 32.669128, 45.500690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127380, 32.581581, 45.496799>,  <31.754999, 32.435669, 45.490318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127380, 32.581581, 45.496799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131433, -0.293358, -0.946925,
		-0.340663, 0.883673, -0.321046,
		0.930953, 0.364779, 0.016207,
		32.406666, 32.691013, 45.501663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222538, 32.631191, 45.016045>,  <31.754999, 32.435669, 45.490318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222538, 32.631191, 45.016045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892639, 32.414219, 44.952095>,  <30.694700, 32.284035, 44.913727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.892639, 32.414219, 44.952095>,  <31.222538, 32.631191, 45.016045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892639, 32.414219, 44.952095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354084, 0.274908, 0.893896,
		-0.440925, 0.793848, -0.418796,
		-0.824748, -0.542430, -0.159875,
		30.645214, 32.251492, 44.904133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709955, 32.969460, 45.457912>,  <31.222538, 32.631191, 45.016045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709955, 32.969460, 45.457912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526682, 32.626823, 45.362988>,  <30.416718, 32.421242, 45.306034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.526682, 32.626823, 45.362988>,  <30.709955, 32.969460, 45.457912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526682, 32.626823, 45.362988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445397, -0.009790, 0.895280,
		-0.769215, 0.515898, -0.377039,
		-0.458182, -0.856594, -0.237310,
		30.389227, 32.369846, 45.291794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033089, 33.047310, 45.552181>,  <30.709955, 32.969460, 45.457912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033089, 33.047310, 45.552181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091532, 32.652832, 45.583359>,  <30.126598, 32.416145, 45.602066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.091532, 32.652832, 45.583359>,  <30.033089, 33.047310, 45.552181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091532, 32.652832, 45.583359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600880, -0.025883, 0.798920,
		-0.785873, -0.163561, -0.596365,
		0.146108, -0.986194, 0.077940,
		30.135365, 32.356976, 45.606739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336750, 32.690559, 45.523209>,  <30.033089, 33.047310, 45.552181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336750, 32.690559, 45.523209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.625145, 32.485893, 45.710133>,  <29.798182, 32.363094, 45.822289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.625145, 32.485893, 45.710133>,  <29.336750, 32.690559, 45.523209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625145, 32.485893, 45.710133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549679, -0.011667, 0.835294,
		-0.421938, -0.859106, -0.289663,
		0.720986, -0.511664, 0.467310,
		29.841440, 32.332394, 45.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913952, 32.198536, 45.837002>,  <29.336750, 32.690559, 45.523209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913952, 32.198536, 45.837002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.262877, 32.142124, 46.024269>,  <29.472231, 32.108276, 46.136631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.262877, 32.142124, 46.024269>,  <28.913952, 32.198536, 45.837002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262877, 32.142124, 46.024269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487329, -0.328653, 0.809011,
		0.039768, -0.933861, -0.355417,
		0.872313, -0.141033, 0.468167,
		29.524570, 32.099815, 46.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835999, 31.576622, 46.322052>,  <28.913952, 32.198536, 45.837002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835999, 31.576622, 46.322052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131111, 31.802139, 46.470547>,  <29.308178, 31.937450, 46.559643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.131111, 31.802139, 46.470547>,  <28.835999, 31.576622, 46.322052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131111, 31.802139, 46.470547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433523, -0.025820, 0.900773,
		0.517435, -0.825512, 0.225368,
		0.737780, 0.563793, 0.371238,
		29.352446, 31.971277, 46.581917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882269, 31.270861, 47.048897>,  <28.835999, 31.576622, 46.322052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882269, 31.270861, 47.048897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071980, 31.622534, 47.067226>,  <29.185806, 31.833538, 47.078224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.071980, 31.622534, 47.067226>,  <28.882269, 31.270861, 47.048897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071980, 31.622534, 47.067226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209931, 0.062387, 0.975724,
		0.854980, -0.472383, 0.214157,
		0.474277, 0.879183, 0.045828,
		29.214262, 31.886288, 47.080975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316978, 31.290257, 47.567436>,  <28.882269, 31.270861, 47.048897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316978, 31.290257, 47.567436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246281, 31.679947, 47.511368>,  <29.203861, 31.913761, 47.477726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.246281, 31.679947, 47.511368>,  <29.316978, 31.290257, 47.567436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246281, 31.679947, 47.511368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125064, 0.119034, 0.984982,
		0.976279, 0.191622, 0.100802,
		-0.176745, 0.974224, -0.140175,
		29.193256, 31.972214, 47.469315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677357, 31.640593, 47.996338>,  <29.316978, 31.290257, 47.567436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677357, 31.640593, 47.996338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.405712, 31.916382, 47.895592>,  <29.242725, 32.081856, 47.835144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.405712, 31.916382, 47.895592>,  <29.677357, 31.640593, 47.996338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405712, 31.916382, 47.895592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086917, 0.265183, 0.960272,
		0.728872, 0.674023, -0.120162,
		-0.679111, 0.689471, -0.251869,
		29.201979, 32.123222, 47.820030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882580, 32.248466, 48.270679>,  <29.677357, 31.640593, 47.996338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882580, 32.248466, 48.270679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488380, 32.291473, 48.218174>,  <29.251860, 32.317280, 48.186672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488380, 32.291473, 48.218174>,  <29.882580, 32.248466, 48.270679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488380, 32.291473, 48.218174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085188, 0.355499, 0.930786,
		0.146740, 0.928472, -0.341185,
		-0.985500, 0.107519, -0.131261,
		29.192730, 32.323730, 48.178795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799513, 32.883690, 48.290760>,  <29.882580, 32.248466, 48.270679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799513, 32.883690, 48.290760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.441051, 32.740402, 48.395515>,  <29.225975, 32.654430, 48.458366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.441051, 32.740402, 48.395515>,  <29.799513, 32.883690, 48.290760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441051, 32.740402, 48.395515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078382, 0.453103, 0.888006,
		-0.436765, 0.816317, -0.377972,
		-0.896154, -0.358224, 0.261884,
		29.172205, 32.632935, 48.474079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462914, 33.371212, 48.720455>,  <29.799513, 32.883690, 48.290760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462914, 33.371212, 48.720455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241606, 33.049419, 48.806896>,  <29.108820, 32.856342, 48.858761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241606, 33.049419, 48.806896>,  <29.462914, 33.371212, 48.720455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241606, 33.049419, 48.806896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036952, 0.282878, 0.958444,
		-0.832181, 0.522294, -0.186235,
		-0.553271, -0.804481, 0.216106,
		29.075624, 32.808075, 48.871727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016945, 33.663990, 49.188843>,  <29.462914, 33.371212, 48.720455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016945, 33.663990, 49.188843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999369, 33.267597, 49.239464>,  <28.988823, 33.029762, 49.269836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999369, 33.267597, 49.239464>,  <29.016945, 33.663990, 49.188843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999369, 33.267597, 49.239464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075641, 0.129611, 0.988676,
		-0.996167, 0.033869, -0.080654,
		-0.043939, -0.990986, 0.126552,
		28.986187, 32.970303, 49.277428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047741, 34.364315, 48.931416>,  <29.016945, 33.663990, 49.188843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047741, 34.364315, 48.931416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.684324, 34.513733, 49.006264>,  <28.466274, 34.603382, 49.051174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.684324, 34.513733, 49.006264>,  <29.047741, 34.364315, 48.931416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684324, 34.513733, 49.006264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068243, 0.309183, -0.948551,
		-0.412182, -0.874568, -0.255414,
		-0.908542, 0.373546, 0.187123,
		28.411762, 34.625797, 49.062401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658310, 34.207581, 48.347260>,  <29.047741, 34.364315, 48.931416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658310, 34.207581, 48.347260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.462246, 34.510784, 48.519382>,  <28.344606, 34.692707, 48.622658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.462246, 34.510784, 48.519382>,  <28.658310, 34.207581, 48.347260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462246, 34.510784, 48.519382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114175, 0.433596, -0.893845,
		-0.864122, -0.487259, -0.125986,
		-0.490161, 0.758006, 0.430312,
		28.315197, 34.738186, 48.648476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963831, 34.222031, 48.092297>,  <28.658310, 34.207581, 48.347260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963831, 34.222031, 48.092297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.054291, 34.592957, 48.211586>,  <28.108566, 34.815514, 48.283161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.054291, 34.592957, 48.211586>,  <27.963831, 34.222031, 48.092297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054291, 34.592957, 48.211586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244235, 0.350354, -0.904214,
		-0.942978, 0.131649, 0.305715,
		0.226148, 0.927319, 0.298222,
		28.122135, 34.871151, 48.301052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334047, 34.717865, 47.984085>,  <27.963831, 34.222031, 48.092297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334047, 34.717865, 47.984085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.676279, 34.924801, 47.976704>,  <27.881618, 35.048962, 47.972275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.676279, 34.924801, 47.976704>,  <27.334047, 34.717865, 47.984085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676279, 34.924801, 47.976704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276674, 0.426854, -0.860957,
		-0.437535, 0.741722, 0.508343,
		0.855579, 0.517344, -0.018451,
		27.932953, 35.080006, 47.971169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198709, 35.479889, 47.846458>,  <27.334047, 34.717865, 47.984085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198709, 35.479889, 47.846458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.586771, 35.460472, 47.751423>,  <27.819607, 35.448822, 47.694401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.586771, 35.460472, 47.751423>,  <27.198709, 35.479889, 47.846458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586771, 35.460472, 47.751423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150518, 0.647635, -0.746936,
		0.190128, 0.760403, 0.620998,
		0.970152, -0.048542, -0.237588,
		27.877817, 35.445911, 47.680145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315632, 36.128544, 47.461636>,  <27.198709, 35.479889, 47.846458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315632, 36.128544, 47.461636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629185, 35.898975, 47.366856>,  <27.817316, 35.761234, 47.309986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.629185, 35.898975, 47.366856>,  <27.315632, 36.128544, 47.461636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629185, 35.898975, 47.366856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032760, 0.419319, -0.907248,
		0.620045, 0.703412, 0.347498,
		0.783882, -0.573919, -0.236953,
		27.864349, 35.726799, 47.295769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734985, 36.562965, 46.982738>,  <27.315632, 36.128544, 47.461636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734985, 36.562965, 46.982738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.873518, 36.191330, 46.930813>,  <27.956638, 35.968349, 46.899658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.873518, 36.191330, 46.930813>,  <27.734985, 36.562965, 46.982738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873518, 36.191330, 46.930813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254891, 0.226370, -0.940100,
		0.902820, 0.292498, 0.315215,
		0.346333, -0.929086, -0.129816,
		27.977417, 35.912605, 46.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337299, 36.718090, 46.523254>,  <27.734985, 36.562965, 46.982738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337299, 36.718090, 46.523254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262629, 36.325981, 46.497280>,  <28.217827, 36.090717, 46.481697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262629, 36.325981, 46.497280>,  <28.337299, 36.718090, 46.523254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262629, 36.325981, 46.497280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279432, 0.010384, -0.960109,
		0.941844, -0.197375, 0.271981,
		-0.186677, -0.980273, -0.064933,
		28.206625, 36.031898, 46.477798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070724, 37.006844, 46.556343>,  <28.337299, 36.718090, 46.523254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070724, 37.006844, 46.556343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.918779, 37.373165, 46.504173>,  <28.827612, 37.592957, 46.472874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.918779, 37.373165, 46.504173>,  <29.070724, 37.006844, 46.556343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918779, 37.373165, 46.504173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147525, 0.079209, 0.985881,
		0.913203, 0.393741, 0.105015,
		-0.379863, 0.915802, -0.130421,
		28.804821, 37.647907, 46.465046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500463, 37.509293, 46.991364>,  <29.070724, 37.006844, 46.556343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500463, 37.509293, 46.991364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.169897, 37.726852, 46.933098>,  <28.971558, 37.857388, 46.898140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.169897, 37.726852, 46.933098>,  <29.500463, 37.509293, 46.991364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169897, 37.726852, 46.933098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029324, 0.299916, 0.953515,
		0.562298, 0.783727, -0.263804,
		-0.826414, 0.543896, -0.145660,
		28.921972, 37.890022, 46.889400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587244, 38.157330, 47.316292>,  <29.500463, 37.509293, 46.991364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587244, 38.157330, 47.316292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.187738, 38.144012, 47.301525>,  <28.948034, 38.136024, 47.292667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.187738, 38.144012, 47.301525>,  <29.587244, 38.157330, 47.316292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187738, 38.144012, 47.301525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046259, 0.350721, 0.935337,
		-0.018191, 0.935888, -0.351827,
		-0.998764, -0.033290, -0.036913,
		28.888109, 38.134026, 47.290451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338646, 38.858074, 47.504765>,  <29.587244, 38.157330, 47.316292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338646, 38.858074, 47.504765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.024044, 38.615330, 47.550598>,  <28.835283, 38.469685, 47.578098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.024044, 38.615330, 47.550598>,  <29.338646, 38.858074, 47.504765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024044, 38.615330, 47.550598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087494, 0.293149, 0.952055,
		-0.611355, 0.738771, -0.283660,
		-0.786505, -0.606862, 0.114580,
		28.788094, 38.433270, 47.584972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797035, 39.293301, 47.770477>,  <29.338646, 38.858074, 47.504765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797035, 39.293301, 47.770477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668041, 38.930695, 47.879459>,  <28.590645, 38.713131, 47.944851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.668041, 38.930695, 47.879459>,  <28.797035, 39.293301, 47.770477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668041, 38.930695, 47.879459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245747, 0.358146, 0.900744,
		-0.914118, 0.223523, -0.338270,
		-0.322487, -0.906515, 0.272457,
		28.571295, 38.658741, 47.961197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228470, 39.406254, 48.047714>,  <28.797035, 39.293301, 47.770477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228470, 39.406254, 48.047714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.302952, 39.042313, 48.196037>,  <28.347641, 38.823948, 48.285030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.302952, 39.042313, 48.196037>,  <28.228470, 39.406254, 48.047714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302952, 39.042313, 48.196037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112755, 0.355123, 0.927995,
		-0.976020, -0.214605, -0.036465,
		0.186203, -0.909853, 0.370805,
		28.358812, 38.769356, 48.307278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638184, 39.097153, 48.446751>,  <28.228470, 39.406254, 48.047714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638184, 39.097153, 48.446751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.980194, 38.929943, 48.569511>,  <28.185400, 38.829617, 48.643169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.980194, 38.929943, 48.569511>,  <27.638184, 39.097153, 48.446751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980194, 38.929943, 48.569511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172663, 0.328560, 0.928566,
		-0.488999, -0.846938, 0.208750,
		0.855025, -0.418025, 0.306901,
		28.236702, 38.804535, 48.661583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432280, 38.796978, 49.100739>,  <27.638184, 39.097153, 48.446751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432280, 38.796978, 49.100739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.831644, 38.814857, 49.114460>,  <28.071262, 38.825584, 49.122692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.831644, 38.814857, 49.114460>,  <27.432280, 38.796978, 49.100739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831644, 38.814857, 49.114460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049178, 0.394213, 0.917702,
		0.027496, -0.917932, 0.395785,
		0.998411, 0.044697, 0.034303,
		28.131168, 38.828266, 49.124752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.514862, 38.518353, 49.734558>,  <27.432280, 38.796978, 49.100739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.514862, 38.518353, 49.734558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839317, 38.729279, 49.633366>,  <28.033991, 38.855835, 49.572651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.839317, 38.729279, 49.633366>,  <27.514862, 38.518353, 49.734558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839317, 38.729279, 49.633366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172269, 0.628775, 0.758265,
		0.558909, -0.571476, 0.600862,
		0.811138, 0.527310, -0.252981,
		28.082659, 38.887474, 49.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.658432, 35.639927, 34.908417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885189, 35.622627, 35.237480>,  <35.021244, 35.612247, 35.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885189, 35.622627, 35.237480>,  <34.658432, 35.639927, 34.908417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885189, 35.622627, 35.237480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788143, 0.262127, 0.556884,
		-0.239724, -0.964064, 0.114511,
		0.566888, -0.043247, 0.822659,
		35.055256, 35.609653, 35.484280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388725, 35.106239, 35.460167>,  <34.658432, 35.639927, 34.908417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388725, 35.106239, 35.460167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601551, 35.411236, 35.607414>,  <34.729248, 35.594234, 35.695763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601551, 35.411236, 35.607414>,  <34.388725, 35.106239, 35.460167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601551, 35.411236, 35.607414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561727, -0.007432, 0.827289,
		0.633536, -0.646957, 0.424357,
		0.532066, 0.762490, 0.368122,
		34.761169, 35.639984, 35.717850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493179, 35.004131, 36.157192>,  <34.388725, 35.106239, 35.460167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493179, 35.004131, 36.157192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577457, 35.395103, 36.163361>,  <34.628025, 35.629688, 36.167061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577457, 35.395103, 36.163361>,  <34.493179, 35.004131, 36.157192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577457, 35.395103, 36.163361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565003, 0.108894, 0.817871,
		0.797732, -0.181036, 0.575195,
		0.210699, 0.977429, 0.015418,
		34.640667, 35.688332, 36.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564457, 35.156525, 36.906933>,  <34.493179, 35.004131, 36.157192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564457, 35.156525, 36.906933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483578, 35.498817, 36.716419>,  <34.435051, 35.704193, 36.602112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483578, 35.498817, 36.716419>,  <34.564457, 35.156525, 36.906933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483578, 35.498817, 36.716419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582053, 0.286111, 0.761153,
		0.787611, 0.431121, 0.440231,
		-0.202194, 0.855730, -0.476280,
		34.422920, 35.755535, 36.573536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746628, 35.787495, 37.383476>,  <34.564457, 35.156525, 36.906933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746628, 35.787495, 37.383476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489979, 35.934063, 37.113945>,  <34.335987, 36.022003, 36.952225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489979, 35.934063, 37.113945>,  <34.746628, 35.787495, 37.383476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489979, 35.934063, 37.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502583, 0.462798, 0.730225,
		0.579420, 0.807188, -0.112784,
		-0.641625, 0.366424, -0.673833,
		34.297493, 36.043991, 36.911797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533886, 36.486996, 37.651321>,  <34.746628, 35.787495, 37.383476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533886, 36.486996, 37.651321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246029, 36.389797, 37.391144>,  <34.073315, 36.331478, 37.235039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246029, 36.389797, 37.391144>,  <34.533886, 36.486996, 37.651321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246029, 36.389797, 37.391144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692580, 0.317982, 0.647473,
		0.049497, 0.916429, -0.397124,
		-0.719641, -0.242992, -0.650440,
		34.030136, 36.316898, 37.196011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154228, 37.066685, 37.725765>,  <34.533886, 36.486996, 37.651321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154228, 37.066685, 37.725765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931866, 36.766689, 37.582386>,  <33.798447, 36.586693, 37.496357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931866, 36.766689, 37.582386>,  <34.154228, 37.066685, 37.725765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931866, 36.766689, 37.582386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709234, 0.203039, 0.675101,
		-0.433539, 0.629518, -0.644788,
		-0.555905, -0.749988, -0.358451,
		33.765095, 36.541695, 37.474850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576580, 37.380329, 37.560417>,  <34.154228, 37.066685, 37.725765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576580, 37.380329, 37.560417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490761, 36.989792, 37.571213>,  <33.439270, 36.755470, 37.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490761, 36.989792, 37.571213>,  <33.576580, 37.380329, 37.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490761, 36.989792, 37.571213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818946, 0.194886, 0.539766,
		-0.532255, 0.093705, -0.841382,
		-0.214552, -0.976339, 0.026990,
		33.426395, 36.696892, 37.579311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937500, 37.387909, 37.251274>,  <33.576580, 37.380329, 37.560417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937500, 37.387909, 37.251274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962833, 37.055069, 37.471672>,  <32.978031, 36.855366, 37.603912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962833, 37.055069, 37.471672>,  <32.937500, 37.387909, 37.251274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962833, 37.055069, 37.471672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808271, 0.281085, 0.517387,
		-0.585395, -0.478122, -0.654761,
		0.063330, -0.832100, 0.550998,
		32.981831, 36.805439, 37.636971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318916, 37.177711, 37.249153>,  <32.937500, 37.387909, 37.251274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318916, 37.177711, 37.249153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478035, 36.983822, 37.560745>,  <32.573505, 36.867489, 37.747700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478035, 36.983822, 37.560745>,  <32.318916, 37.177711, 37.249153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478035, 36.983822, 37.560745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759076, 0.303013, 0.576182,
		-0.515328, -0.820505, -0.247403,
		0.397794, -0.484720, 0.778977,
		32.597374, 36.838406, 37.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868332, 36.624966, 37.459694>,  <32.318916, 37.177711, 37.249153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868332, 36.624966, 37.459694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093819, 36.689934, 37.783630>,  <32.229111, 36.728916, 37.977993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093819, 36.689934, 37.783630>,  <31.868332, 36.624966, 37.459694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093819, 36.689934, 37.783630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808370, -0.092814, 0.581312,
		0.169583, -0.982346, 0.078978,
		0.563719, 0.162424, 0.809839,
		32.262936, 36.738663, 38.026581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768593, 36.144146, 37.992146>,  <31.868332, 36.624966, 37.459694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768593, 36.144146, 37.992146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909422, 36.453720, 38.202694>,  <31.993919, 36.639465, 38.329025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909422, 36.453720, 38.202694>,  <31.768593, 36.144146, 37.992146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909422, 36.453720, 38.202694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813568, -0.025006, 0.580932,
		0.462766, -0.632772, 0.620845,
		0.352073, 0.773935, 0.526375,
		32.015045, 36.685902, 38.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714252, 35.596210, 38.453400>,  <31.768593, 36.144146, 37.992146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714252, 35.596210, 38.453400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368319, 35.395409, 38.450375>,  <31.160759, 35.274929, 38.448559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368319, 35.395409, 38.450375>,  <31.714252, 35.596210, 38.453400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368319, 35.395409, 38.450375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123657, -0.198380, -0.972293,
		0.486591, -0.841808, 0.233642,
		-0.864834, -0.502001, -0.007565,
		31.108868, 35.244808, 38.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811472, 34.814556, 38.194344>,  <31.714252, 35.596210, 38.453400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811472, 34.814556, 38.194344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433769, 34.921944, 38.118130>,  <31.207148, 34.986378, 38.072403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.433769, 34.921944, 38.118130>,  <31.811472, 34.814556, 38.194344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433769, 34.921944, 38.118130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082294, -0.367896, -0.926218,
		-0.318753, -0.890269, 0.325296,
		-0.944258, 0.268465, -0.190532,
		31.150492, 35.002483, 38.060970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613152, 34.288677, 37.795254>,  <31.811472, 34.814556, 38.194344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613152, 34.288677, 37.795254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318701, 34.556229, 37.753830>,  <31.142031, 34.716759, 37.728977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318701, 34.556229, 37.753830>,  <31.613152, 34.288677, 37.795254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318701, 34.556229, 37.753830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179989, -0.340942, -0.922693,
		-0.652473, -0.660580, 0.371367,
		-0.736127, 0.668874, -0.103559,
		31.097862, 34.756889, 37.722763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123755, 33.930569, 37.406452>,  <31.613152, 34.288677, 37.795254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123755, 33.930569, 37.406452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033325, 34.316559, 37.353214>,  <30.979067, 34.548153, 37.321274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033325, 34.316559, 37.353214>,  <31.123755, 33.930569, 37.406452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033325, 34.316559, 37.353214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149399, -0.169362, -0.974164,
		-0.962585, -0.200349, 0.182455,
		-0.226074, 0.964975, -0.133093,
		30.965504, 34.606052, 37.313286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416553, 34.013332, 37.096851>,  <31.123755, 33.930569, 37.406452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416553, 34.013332, 37.096851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653061, 34.325424, 37.015217>,  <30.794966, 34.512680, 36.966236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653061, 34.325424, 37.015217>,  <30.416553, 34.013332, 37.096851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653061, 34.325424, 37.015217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027969, -0.233067, -0.972058,
		-0.805990, 0.580455, -0.115983,
		0.591267, 0.780226, -0.204084,
		30.830441, 34.559490, 36.953991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255665, 34.291409, 36.459194>,  <30.416553, 34.013332, 37.096851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255665, 34.291409, 36.459194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590456, 34.510063, 36.469387>,  <30.791330, 34.641258, 36.475502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590456, 34.510063, 36.469387>,  <30.255665, 34.291409, 36.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590456, 34.510063, 36.469387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004930, 0.054100, -0.998523,
		-0.547211, 0.835618, 0.047975,
		0.836980, 0.546639, 0.025484,
		30.841551, 34.674053, 36.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201534, 34.858067, 35.906776>,  <30.255665, 34.291409, 36.459194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201534, 34.858067, 35.906776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587063, 34.796551, 35.993858>,  <30.818380, 34.759644, 36.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587063, 34.796551, 35.993858>,  <30.201534, 34.858067, 35.906776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587063, 34.796551, 35.993858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211348, -0.056756, -0.975762,
		0.162416, 0.986473, -0.022200,
		0.963822, -0.153787, 0.217707,
		30.876209, 34.750416, 36.059170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491970, 35.370522, 35.561466>,  <30.201534, 34.858067, 35.906776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491970, 35.370522, 35.561466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781904, 35.099125, 35.609238>,  <30.955864, 34.936287, 35.637901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781904, 35.099125, 35.609238>,  <30.491970, 35.370522, 35.561466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781904, 35.099125, 35.609238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156249, -0.006936, -0.987693,
		0.670969, 0.734576, 0.100986,
		0.724836, -0.678491, 0.119431,
		30.999355, 34.895576, 35.645065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036463, 35.559994, 35.125206>,  <30.491970, 35.370522, 35.561466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036463, 35.559994, 35.125206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111876, 35.176575, 35.210663>,  <31.157124, 34.946522, 35.261936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111876, 35.176575, 35.210663>,  <31.036463, 35.559994, 35.125206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111876, 35.176575, 35.210663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212299, -0.172616, -0.961838,
		0.958845, 0.226693, 0.170955,
		0.188533, -0.958548, 0.213639,
		31.168436, 34.889011, 35.274754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658609, 35.472843, 34.808426>,  <31.036463, 35.559994, 35.125206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658609, 35.472843, 34.808426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496748, 35.109375, 34.849560>,  <31.399632, 34.891293, 34.874241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496748, 35.109375, 34.849560>,  <31.658609, 35.472843, 34.808426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496748, 35.109375, 34.849560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132874, -0.169684, -0.976500,
		0.904765, -0.381480, 0.189401,
		-0.404653, -0.908669, 0.102835,
		31.375351, 34.836773, 34.880409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145355, 34.976479, 34.505062>,  <31.658609, 35.472843, 34.808426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145355, 34.976479, 34.505062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810150, 34.759014, 34.523655>,  <31.609026, 34.628536, 34.534813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810150, 34.759014, 34.523655>,  <32.145355, 34.976479, 34.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810150, 34.759014, 34.523655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196812, -0.380624, -0.903543,
		0.508918, -0.748034, 0.425968,
		-0.838014, -0.543664, 0.046485,
		31.558746, 34.595917, 34.537601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346367, 34.385761, 34.377678>,  <32.145355, 34.976479, 34.505062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346367, 34.385761, 34.377678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955914, 34.400795, 34.292110>,  <31.721643, 34.409817, 34.240772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955914, 34.400795, 34.292110>,  <32.346367, 34.385761, 34.377678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955914, 34.400795, 34.292110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187484, -0.351400, -0.917261,
		-0.109643, -0.935471, 0.335966,
		-0.976129, 0.037583, -0.213914,
		31.663074, 34.412071, 34.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203079, 33.736603, 33.942104>,  <32.346367, 34.385761, 34.377678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203079, 33.736603, 33.942104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905458, 34.000378, 33.899166>,  <31.726885, 34.158642, 33.873402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905458, 34.000378, 33.899166>,  <32.203079, 33.736603, 33.942104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905458, 34.000378, 33.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063869, -0.230142, -0.971059,
		-0.665057, -0.715666, 0.213356,
		-0.744056, 0.659436, -0.107349,
		31.682241, 34.198208, 33.866962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668993, 33.329342, 33.599583>,  <32.203079, 33.736603, 33.942104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668993, 33.329342, 33.599583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583210, 33.714695, 33.535213>,  <31.531740, 33.945908, 33.496593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583210, 33.714695, 33.535213>,  <31.668993, 33.329342, 33.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583210, 33.714695, 33.535213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139413, -0.193263, -0.971192,
		-0.966732, -0.185846, 0.175755,
		-0.214460, 0.963385, -0.160925,
		31.518871, 34.003712, 33.486935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631393, 32.611694, 33.994694>,  <31.668993, 33.329342, 33.599583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631393, 32.611694, 33.994694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870985, 32.308449, 33.891552>,  <32.014740, 32.126503, 33.829666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870985, 32.308449, 33.891552>,  <31.631393, 32.611694, 33.994694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870985, 32.308449, 33.891552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563328, 0.627784, -0.537167,
		0.569109, 0.176495, 0.803096,
		0.598979, -0.758114, -0.257853,
		32.050678, 32.081017, 33.814198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939547, 32.137417, 34.109486>,  <31.631393, 32.611694, 33.994694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939547, 32.137417, 34.109486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334816, 32.123169, 34.169147>,  <31.571978, 32.114620, 34.204945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334816, 32.123169, 34.169147>,  <30.939547, 32.137417, 34.109486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334816, 32.123169, 34.169147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146554, -0.505679, 0.850183,
		0.045139, -0.861986, -0.504919,
		0.988173, -0.035621, 0.149153,
		31.631268, 32.112484, 34.213894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126024, 31.404814, 34.112186>,  <30.939547, 32.137417, 34.109486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126024, 31.404814, 34.112186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326872, 31.678009, 34.324375>,  <31.447380, 31.841927, 34.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.326872, 31.678009, 34.324375>,  <31.126024, 31.404814, 34.112186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326872, 31.678009, 34.324375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089395, -0.569128, 0.817375,
		0.860165, -0.457842, -0.224715,
		0.502120, 0.682989, 0.530473,
		31.477509, 31.882906, 34.483517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384523, 30.982327, 34.576630>,  <31.126024, 31.404814, 34.112186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384523, 30.982327, 34.576630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462820, 31.330318, 34.757656>,  <31.509798, 31.539114, 34.866272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462820, 31.330318, 34.757656>,  <31.384523, 30.982327, 34.576630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462820, 31.330318, 34.757656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228640, -0.489262, 0.841633,
		0.953629, -0.061268, -0.294682,
		0.195742, 0.869982, 0.452567,
		31.521544, 31.591312, 34.893425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972805, 31.020775, 34.905289>,  <31.384523, 30.982327, 34.576630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972805, 31.020775, 34.905289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789925, 31.324821, 35.089977>,  <31.680197, 31.507250, 35.200790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789925, 31.324821, 35.089977>,  <31.972805, 31.020775, 34.905289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789925, 31.324821, 35.089977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327174, -0.339003, 0.882062,
		0.826996, 0.554344, -0.093698,
		-0.457202, 0.760118, 0.461722,
		31.652763, 31.552856, 35.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367001, 31.205885, 35.492271>,  <31.972805, 31.020775, 34.905289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367001, 31.205885, 35.492271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007347, 31.359917, 35.575485>,  <31.791555, 31.452335, 35.625412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007347, 31.359917, 35.575485>,  <32.367001, 31.205885, 35.492271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007347, 31.359917, 35.575485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189152, -0.086748, 0.978109,
		0.394695, 0.918798, 0.005159,
		-0.899131, 0.385079, 0.208031,
		31.737608, 31.475441, 35.637894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451199, 31.686262, 35.867432>,  <32.367001, 31.205885, 35.492271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451199, 31.686262, 35.867432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060520, 31.647942, 35.944252>,  <31.826113, 31.624950, 35.990345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060520, 31.647942, 35.944252>,  <32.451199, 31.686262, 35.867432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060520, 31.647942, 35.944252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205213, -0.154898, 0.966382,
		-0.062831, 0.983275, 0.170948,
		-0.976699, -0.095800, 0.192048,
		31.767511, 31.619202, 36.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213757, 32.237030, 36.335289>,  <32.451199, 31.686262, 35.867432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213757, 32.237030, 36.335289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918516, 31.967989, 36.356506>,  <31.741371, 31.806564, 36.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918516, 31.967989, 36.356506>,  <32.213757, 32.237030, 36.335289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918516, 31.967989, 36.356506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132484, 0.221574, 0.966102,
		-0.661554, 0.706055, -0.252653,
		-0.738102, -0.672601, 0.053042,
		31.697086, 31.766209, 36.372417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550095, 32.557526, 36.716225>,  <32.213757, 32.237030, 36.335289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550095, 32.557526, 36.716225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498327, 32.162292, 36.749542>,  <31.467268, 31.925152, 36.769531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498327, 32.162292, 36.749542>,  <31.550095, 32.557526, 36.716225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498327, 32.162292, 36.749542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198140, 0.108076, 0.974197,
		-0.971593, 0.109574, -0.209766,
		-0.129417, -0.988085, 0.083295,
		31.459501, 31.865868, 36.774532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949112, 32.473328, 37.177147>,  <31.550095, 32.557526, 36.716225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949112, 32.473328, 37.177147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140572, 32.123859, 37.212002>,  <31.255447, 31.914179, 37.232914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140572, 32.123859, 37.212002>,  <30.949112, 32.473328, 37.177147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140572, 32.123859, 37.212002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279609, -0.057597, 0.958385,
		-0.832293, -0.483097, -0.271855,
		0.478651, -0.873670, 0.087141,
		31.284166, 31.861759, 37.238144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402819, 31.998749, 37.390308>,  <30.949112, 32.473328, 37.177147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402819, 31.998749, 37.390308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768208, 31.847979, 37.451614>,  <30.987442, 31.757517, 37.488400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768208, 31.847979, 37.451614>,  <30.402819, 31.998749, 37.390308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768208, 31.847979, 37.451614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212294, -0.120155, 0.969791,
		-0.347126, -0.918416, -0.189778,
		0.913474, -0.376928, 0.153266,
		31.042250, 31.734900, 37.497593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358053, 31.339024, 37.757847>,  <30.402819, 31.998749, 37.390308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358053, 31.339024, 37.757847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727928, 31.466257, 37.841541>,  <30.949852, 31.542597, 37.891758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727928, 31.466257, 37.841541>,  <30.358053, 31.339024, 37.757847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727928, 31.466257, 37.841541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207870, -0.038646, 0.977393,
		0.318977, -0.947275, 0.030385,
		0.924686, 0.318082, 0.209237,
		31.005333, 31.561682, 37.904312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608292, 30.943167, 38.269035>,  <30.358053, 31.339024, 37.757847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608292, 30.943167, 38.269035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866198, 31.245516, 38.314526>,  <31.020941, 31.426926, 38.341820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866198, 31.245516, 38.314526>,  <30.608292, 30.943167, 38.269035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866198, 31.245516, 38.314526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133939, -0.034761, 0.990380,
		0.752553, -0.653797, 0.078828,
		0.644767, 0.755871, 0.113729,
		31.059628, 31.472277, 38.348644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078342, 30.689054, 38.737549>,  <30.608292, 30.943167, 38.269035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078342, 30.689054, 38.737549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106483, 31.088026, 38.742973>,  <31.123367, 31.327410, 38.746227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106483, 31.088026, 38.742973>,  <31.078342, 30.689054, 38.737549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106483, 31.088026, 38.742973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015256, -0.014666, 0.999776,
		0.997406, -0.070130, -0.016249,
		0.070353, 0.997430, 0.013558,
		31.127590, 31.387255, 38.747040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747478, 30.867262, 39.230324>,  <31.078342, 30.689054, 38.737549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747478, 30.867262, 39.230324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505257, 31.183481, 39.193798>,  <31.359922, 31.373213, 39.171883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505257, 31.183481, 39.193798>,  <31.747478, 30.867262, 39.230324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505257, 31.183481, 39.193798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020584, 0.130262, 0.991266,
		0.795537, 0.598387, -0.095154,
		-0.605555, 0.790547, -0.091311,
		31.323589, 31.420645, 39.166405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052505, 31.340790, 39.544132>,  <31.747478, 30.867262, 39.230324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052505, 31.340790, 39.544132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676617, 31.477440, 39.538395>,  <31.451082, 31.559429, 39.534954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676617, 31.477440, 39.538395>,  <32.052505, 31.340790, 39.544132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676617, 31.477440, 39.538395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090943, 0.290146, 0.952651,
		0.329611, 0.893928, -0.303727,
		-0.939727, 0.341626, -0.014339,
		31.394699, 31.579927, 39.534092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140533, 31.730291, 40.136898>,  <32.052505, 31.340790, 39.544132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140533, 31.730291, 40.136898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752264, 31.700960, 40.045315>,  <31.519302, 31.683361, 39.990364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752264, 31.700960, 40.045315>,  <32.140533, 31.730291, 40.136898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752264, 31.700960, 40.045315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239910, 0.356955, 0.902788,
		0.015525, 0.931239, -0.364078,
		-0.970671, -0.073330, -0.228955,
		31.461063, 31.678961, 39.976627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938667, 32.274601, 40.528854>,  <32.140533, 31.730291, 40.136898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938667, 32.274601, 40.528854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612085, 32.059414, 40.444958>,  <31.416136, 31.930302, 40.394619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612085, 32.059414, 40.444958>,  <31.938667, 32.274601, 40.528854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612085, 32.059414, 40.444958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403582, 0.271904, 0.873607,
		-0.412941, 0.797910, -0.439111,
		-0.816456, -0.537966, -0.209742,
		31.367149, 31.898024, 40.382034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363667, 32.647411, 40.722260>,  <31.938667, 32.274601, 40.528854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363667, 32.647411, 40.722260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232918, 32.269440, 40.728790>,  <31.154469, 32.042656, 40.732708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232918, 32.269440, 40.728790>,  <31.363667, 32.647411, 40.722260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232918, 32.269440, 40.728790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322558, 0.127788, 0.937884,
		-0.888319, 0.301302, -0.346564,
		-0.326873, -0.944927, 0.016329,
		31.134855, 31.985962, 40.733688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674093, 32.739048, 41.066887>,  <31.363667, 32.647411, 40.722260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674093, 32.739048, 41.066887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806444, 32.366188, 41.125694>,  <30.885855, 32.142471, 41.160976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806444, 32.366188, 41.125694>,  <30.674093, 32.739048, 41.066887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806444, 32.366188, 41.125694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465241, -0.025594, 0.884814,
		-0.821018, -0.361163, -0.442144,
		0.330878, -0.932151, 0.147014,
		30.905708, 32.086544, 41.169800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141922, 32.519688, 41.484444>,  <30.674093, 32.739048, 41.066887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141922, 32.519688, 41.484444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443613, 32.261383, 41.531998>,  <30.624628, 32.106400, 41.560532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443613, 32.261383, 41.531998>,  <30.141922, 32.519688, 41.484444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443613, 32.261383, 41.531998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260125, -0.127608, 0.957106,
		-0.602887, -0.752804, -0.264224,
		0.754230, -0.645758, 0.118889,
		30.669882, 32.067657, 41.567665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834381, 31.964369, 41.892048>,  <30.141922, 32.519688, 41.484444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834381, 31.964369, 41.892048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231686, 31.977757, 41.936436>,  <30.470068, 31.985790, 41.963070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231686, 31.977757, 41.936436>,  <29.834381, 31.964369, 41.892048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231686, 31.977757, 41.936436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104404, -0.157559, 0.981975,
		0.050354, -0.986942, -0.153002,
		0.993260, 0.033472, 0.110974,
		30.529663, 31.987797, 41.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929279, 31.532303, 42.324951>,  <29.834381, 31.964369, 41.892048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929279, 31.532303, 42.324951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301716, 31.675760, 42.351627>,  <30.525177, 31.761835, 42.367634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301716, 31.675760, 42.351627>,  <29.929279, 31.532303, 42.324951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301716, 31.675760, 42.351627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017049, -0.225389, 0.974120,
		0.364392, -0.905856, -0.215972,
		0.931090, 0.358644, 0.066686,
		30.581043, 31.783354, 42.371632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290983, 31.064692, 42.675869>,  <29.929279, 31.532303, 42.324951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290983, 31.064692, 42.675869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489267, 31.408175, 42.727863>,  <30.608238, 31.614264, 42.759060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489267, 31.408175, 42.727863>,  <30.290983, 31.064692, 42.675869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489267, 31.408175, 42.727863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119069, -0.081064, 0.989571,
		0.860288, -0.506016, 0.062061,
		0.495708, 0.858706, 0.129989,
		30.637980, 31.665787, 42.766861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560904, 30.921711, 43.284393>,  <30.290983, 31.064692, 42.675869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560904, 30.921711, 43.284393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634007, 31.313704, 43.252808>,  <30.677868, 31.548899, 43.233856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634007, 31.313704, 43.252808>,  <30.560904, 30.921711, 43.284393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634007, 31.313704, 43.252808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178714, 0.112090, 0.977495,
		0.966779, -0.164531, 0.195622,
		0.182756, 0.979982, -0.078962,
		30.688833, 31.607698, 43.229118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139006, 31.091688, 43.609653>,  <30.560904, 30.921711, 43.284393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139006, 31.091688, 43.609653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885029, 31.400372, 43.624157>,  <30.732643, 31.585583, 43.632858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885029, 31.400372, 43.624157>,  <31.139006, 31.091688, 43.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885029, 31.400372, 43.624157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060902, 0.003212, 0.998139,
		0.770157, 0.635967, -0.049038,
		-0.634941, 0.771710, 0.036258,
		30.694546, 31.631884, 43.635033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441044, 31.520670, 44.063007>,  <31.139006, 31.091688, 43.609653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441044, 31.520670, 44.063007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065861, 31.659346, 44.060478>,  <30.840750, 31.742552, 44.058960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065861, 31.659346, 44.060478>,  <31.441044, 31.520670, 44.063007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065861, 31.659346, 44.060478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020570, 0.073835, 0.997058,
		0.346136, 0.935069, -0.076386,
		-0.937959, 0.346689, -0.006323,
		30.784473, 31.763353, 44.058582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493114, 32.088085, 44.623711>,  <31.441044, 31.520670, 44.063007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493114, 32.088085, 44.623711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104727, 32.029026, 44.548428>,  <30.871695, 31.993591, 44.503258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104727, 32.029026, 44.548428>,  <31.493114, 32.088085, 44.623711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104727, 32.029026, 44.548428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202186, 0.086101, 0.975555,
		-0.127832, 0.985285, -0.113454,
		-0.970968, -0.147646, -0.188204,
		30.813437, 31.984732, 44.491966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867020, 32.883488, 44.790401>,  <31.493114, 32.088085, 44.623711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867020, 32.883488, 44.790401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234943, 32.826920, 44.936798>,  <32.455696, 32.792976, 45.024635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234943, 32.826920, 44.936798>,  <31.867020, 32.883488, 44.790401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234943, 32.826920, 44.936798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356173, -0.090367, -0.930040,
		0.164605, 0.985816, -0.032748,
		0.919808, -0.141425, 0.365995,
		32.510887, 32.784492, 45.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299648, 33.375397, 44.474060>,  <31.867020, 32.883488, 44.790401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299648, 33.375397, 44.474060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530266, 33.076218, 44.605618>,  <32.668636, 32.896709, 44.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530266, 33.076218, 44.605618>,  <32.299648, 33.375397, 44.474060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530266, 33.076218, 44.605618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352497, -0.135452, -0.925958,
		0.737118, 0.649789, 0.185556,
		0.576543, -0.747948, 0.328893,
		32.703228, 32.851833, 44.704285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076984, 33.405228, 44.370659>,  <32.299648, 33.375397, 44.474060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076984, 33.405228, 44.370659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017643, 33.011097, 44.404404>,  <32.982037, 32.774616, 44.424652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017643, 33.011097, 44.404404>,  <33.076984, 33.405228, 44.370659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017643, 33.011097, 44.404404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518116, -0.150106, -0.842036,
		0.842346, -0.081208, 0.532784,
		-0.148354, -0.985329, 0.084366,
		32.973137, 32.715500, 44.429714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805653, 33.076397, 44.134792>,  <33.076984, 33.405228, 44.370659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805653, 33.076397, 44.134792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516315, 32.801075, 44.112823>,  <33.342712, 32.635883, 44.099644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516315, 32.801075, 44.112823>,  <33.805653, 33.076397, 44.134792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516315, 32.801075, 44.112823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351750, -0.298877, -0.887099,
		0.594177, -0.660995, 0.458300,
		-0.723343, -0.688301, -0.054919,
		33.299313, 32.594585, 44.096348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125801, 32.453838, 43.859200>,  <33.805653, 33.076397, 44.134792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125801, 32.453838, 43.859200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734745, 32.417191, 43.783497>,  <33.500111, 32.395203, 43.738075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734745, 32.417191, 43.783497>,  <34.125801, 32.453838, 43.859200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734745, 32.417191, 43.783497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208788, -0.529556, -0.822179,
		-0.024891, -0.843313, 0.536847,
		-0.977644, -0.091622, -0.189255,
		33.441452, 32.389706, 43.726719>
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
