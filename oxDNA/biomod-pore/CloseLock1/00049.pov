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
	<24.102100, 35.050739, 35.184223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438908, 35.067326, 34.969082>,  <24.640991, 35.077278, 34.839996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438908, 35.067326, 34.969082>,  <24.102100, 35.050739, 35.184223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438908, 35.067326, 34.969082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438742, 0.527461, 0.727524,
		0.313863, -0.848567, 0.425940,
		0.842019, 0.041465, -0.537852,
		24.691513, 35.079765, 34.807728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657145, 34.797272, 35.549240>,  <24.102100, 35.050739, 35.184223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657145, 34.797272, 35.549240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786953, 35.056938, 35.274063>,  <24.864838, 35.212738, 35.108955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786953, 35.056938, 35.274063>,  <24.657145, 34.797272, 35.549240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786953, 35.056938, 35.274063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402569, 0.563353, 0.721506,
		0.855934, -0.511088, -0.078516,
		0.324521, 0.649170, -0.687942,
		24.884310, 35.251690, 35.067680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429777, 34.785545, 35.589195>,  <24.657145, 34.797272, 35.549240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429777, 34.785545, 35.589195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295424, 35.134392, 35.446877>,  <25.214811, 35.343700, 35.361485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295424, 35.134392, 35.446877>,  <25.429777, 34.785545, 35.589195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295424, 35.134392, 35.446877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567803, 0.488870, 0.662273,
		0.751519, 0.020425, -0.659395,
		-0.335885, 0.872118, -0.355798,
		25.194658, 35.396027, 35.340137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856407, 34.128132, 35.624092>,  <25.429777, 34.785545, 35.589195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856407, 34.128132, 35.624092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255978, 34.124500, 35.605911>,  <26.495720, 34.122322, 35.595001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255978, 34.124500, 35.605911>,  <25.856407, 34.128132, 35.624092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255978, 34.124500, 35.605911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044368, 0.470903, 0.881068,
		0.013404, -0.882138, 0.470800,
		0.998925, -0.009078, -0.045451,
		26.555655, 34.121777, 35.592278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694677, 33.328835, 35.492123>,  <25.856407, 34.128132, 35.624092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694677, 33.328835, 35.492123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988138, 33.591164, 35.420963>,  <26.164215, 33.748562, 35.378265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988138, 33.591164, 35.420963>,  <25.694677, 33.328835, 35.492123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988138, 33.591164, 35.420963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079901, -0.176732, -0.981011,
		-0.674810, 0.733937, -0.077259,
		0.733654, 0.655822, -0.177902,
		26.208235, 33.787910, 35.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506367, 33.742065, 34.942921>,  <25.694677, 33.328835, 35.492123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506367, 33.742065, 34.942921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902964, 33.705673, 34.905689>,  <26.140923, 33.683838, 34.883350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902964, 33.705673, 34.905689>,  <25.506367, 33.742065, 34.942921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902964, 33.705673, 34.905689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107663, -0.171385, -0.979304,
		0.073149, 0.980994, -0.179723,
		0.991493, -0.090985, -0.093080,
		26.200411, 33.678379, 34.877766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687759, 34.134422, 34.431595>,  <25.506367, 33.742065, 34.942921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687759, 34.134422, 34.431595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987833, 33.871029, 34.455673>,  <26.167877, 33.712994, 34.470119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987833, 33.871029, 34.455673>,  <25.687759, 34.134422, 34.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987833, 33.871029, 34.455673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005813, -0.084466, -0.996409,
		0.661206, 0.747838, -0.059537,
		0.750182, -0.658486, 0.060197,
		26.212887, 33.673485, 34.473732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210617, 34.337288, 34.008923>,  <25.687759, 34.134422, 34.431595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210617, 34.337288, 34.008923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256437, 33.941158, 34.040257>,  <26.283930, 33.703480, 34.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256437, 33.941158, 34.040257>,  <26.210617, 34.337288, 34.008923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256437, 33.941158, 34.040257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061199, -0.085743, -0.994436,
		0.991530, 0.109120, -0.070429,
		0.114552, -0.990324, 0.078339,
		26.290802, 33.644062, 34.063759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482786, 34.253342, 33.431595>,  <26.210617, 34.337288, 34.008923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482786, 34.253342, 33.431595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414404, 33.876877, 33.548199>,  <26.373375, 33.650997, 33.618160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414404, 33.876877, 33.548199>,  <26.482786, 34.253342, 33.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414404, 33.876877, 33.548199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025353, -0.299973, -0.953611,
		0.984953, -0.155632, 0.075143,
		-0.170953, -0.941167, 0.291514,
		26.363117, 33.594528, 33.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881456, 33.846882, 33.010899>,  <26.482786, 34.253342, 33.431595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881456, 33.846882, 33.010899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609039, 33.579685, 33.130878>,  <26.445589, 33.419369, 33.202866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609039, 33.579685, 33.130878>,  <26.881456, 33.846882, 33.010899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609039, 33.579685, 33.130878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114685, -0.501882, -0.857299,
		0.723209, -0.549456, 0.418411,
		-0.681041, -0.667992, 0.299951,
		26.404728, 33.379288, 33.220863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108801, 33.205070, 32.896278>,  <26.881456, 33.846882, 33.010899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108801, 33.205070, 32.896278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719778, 33.121239, 32.936691>,  <26.486364, 33.070938, 32.960938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719778, 33.121239, 32.936691>,  <27.108801, 33.205070, 32.896278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719778, 33.121239, 32.936691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011301, -0.476279, -0.879221,
		0.232384, -0.853952, 0.465578,
		-0.972558, -0.209579, 0.101029,
		26.428011, 33.058365, 32.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011137, 32.432026, 32.776794>,  <27.108801, 33.205070, 32.896278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011137, 32.432026, 32.776794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659107, 32.599010, 32.686291>,  <26.447889, 32.699200, 32.631989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659107, 32.599010, 32.686291>,  <27.011137, 32.432026, 32.776794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659107, 32.599010, 32.686291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091851, -0.317833, -0.943687,
		-0.465866, -0.851298, 0.241372,
		-0.880075, 0.417461, -0.226260,
		26.395084, 32.724247, 32.618412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537277, 31.883917, 32.400234>,  <27.011137, 32.432026, 32.776794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537277, 31.883917, 32.400234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358845, 32.222984, 32.285366>,  <26.251785, 32.426426, 32.216446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358845, 32.222984, 32.285366>,  <26.537277, 31.883917, 32.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358845, 32.222984, 32.285366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130670, -0.379114, -0.916078,
		-0.885403, -0.371118, 0.279880,
		-0.446079, 0.847670, -0.287174,
		26.225021, 32.477283, 32.199215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977003, 31.676752, 32.011723>,  <26.537277, 31.883917, 32.400234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977003, 31.676752, 32.011723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974689, 32.058990, 31.893877>,  <25.973301, 32.288334, 31.823170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.974689, 32.058990, 31.893877>,  <25.977003, 31.676752, 32.011723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.974689, 32.058990, 31.893877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006750, -0.294653, -0.955581,
		-0.999961, -0.003537, 0.008155,
		-0.005783, 0.955598, -0.294617,
		25.972954, 32.345669, 31.805492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521069, 31.788942, 31.296862>,  <25.977003, 31.676752, 32.011723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521069, 31.788942, 31.296862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770006, 32.101929, 31.305223>,  <25.919369, 32.289719, 31.310240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770006, 32.101929, 31.305223>,  <25.521069, 31.788942, 31.296862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770006, 32.101929, 31.305223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220348, -0.149506, -0.963896,
		-0.751090, 0.604479, -0.265459,
		0.622343, 0.782466, 0.020903,
		25.956709, 32.336670, 31.311495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385248, 32.212368, 30.665556>,  <25.521069, 31.788942, 31.296862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385248, 32.212368, 30.665556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753174, 32.313152, 30.785862>,  <25.973928, 32.373623, 30.858046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753174, 32.313152, 30.785862>,  <25.385248, 32.212368, 30.665556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753174, 32.313152, 30.785862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324818, -0.059012, -0.943934,
		-0.220084, 0.965937, -0.136120,
		0.919813, 0.251959, 0.300766,
		26.029118, 32.388741, 30.876091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648199, 32.423454, 30.000618>,  <25.385248, 32.212368, 30.665556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648199, 32.423454, 30.000618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972288, 32.406567, 30.234457>,  <26.166742, 32.396435, 30.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972288, 32.406567, 30.234457>,  <25.648199, 32.423454, 30.000618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972288, 32.406567, 30.234457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560648, -0.235018, -0.794003,
		0.170913, 0.971074, -0.166747,
		0.810224, -0.042219, 0.584598,
		26.215355, 32.393902, 30.409836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148603, 32.782341, 29.699175>,  <25.648199, 32.423454, 30.000618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148603, 32.782341, 29.699175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353994, 32.533802, 29.935907>,  <26.477228, 32.384678, 30.077948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353994, 32.533802, 29.935907>,  <26.148603, 32.782341, 29.699175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353994, 32.533802, 29.935907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577549, -0.259851, -0.773896,
		0.634648, 0.739190, 0.225432,
		0.513477, -0.621350, 0.591833,
		26.508038, 32.347397, 30.113457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892105, 33.023586, 29.549932>,  <26.148603, 32.782341, 29.699175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892105, 33.023586, 29.549932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896196, 32.653080, 29.700623>,  <26.898651, 32.430775, 29.791037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896196, 32.653080, 29.700623>,  <26.892105, 33.023586, 29.549932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896196, 32.653080, 29.700623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485535, -0.324751, -0.811661,
		0.874158, 0.191214, 0.446414,
		0.010228, -0.926269, 0.376724,
		26.899265, 32.375198, 29.813641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441473, 32.830795, 29.315239>,  <26.892105, 33.023586, 29.549932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441473, 32.830795, 29.315239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305212, 32.474419, 29.435362>,  <27.223455, 32.260593, 29.507435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305212, 32.474419, 29.435362>,  <27.441473, 32.830795, 29.315239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305212, 32.474419, 29.435362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488896, -0.440689, -0.752843,
		0.803079, -0.109640, 0.585699,
		-0.340653, -0.890939, 0.300306,
		27.203016, 32.207138, 29.525454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044374, 32.340870, 29.373791>,  <27.441473, 32.830795, 29.315239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044374, 32.340870, 29.373791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717827, 32.113037, 29.335592>,  <27.521898, 31.976337, 29.312674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717827, 32.113037, 29.335592>,  <28.044374, 32.340870, 29.373791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717827, 32.113037, 29.335592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488440, -0.592700, -0.640416,
		0.308170, -0.569459, 0.762068,
		-0.816369, -0.569582, -0.095494,
		27.472916, 31.942163, 29.306944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348701, 31.639498, 29.435453>,  <28.044374, 32.340870, 29.373791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348701, 31.639498, 29.435453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995300, 31.666134, 29.249985>,  <27.783260, 31.682116, 29.138704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995300, 31.666134, 29.249985>,  <28.348701, 31.639498, 29.435453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995300, 31.666134, 29.249985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335646, -0.600472, -0.725793,
		-0.326751, -0.796868, 0.508168,
		-0.883502, 0.066590, -0.463671,
		27.730249, 31.686111, 29.110884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237711, 30.996271, 29.233086>,  <28.348701, 31.639498, 29.435453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237711, 30.996271, 29.233086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002958, 31.227428, 29.006243>,  <27.862106, 31.366123, 28.870136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002958, 31.227428, 29.006243>,  <28.237711, 30.996271, 29.233086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002958, 31.227428, 29.006243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373610, -0.428106, -0.822886,
		-0.718322, -0.694813, 0.035341,
		-0.586881, 0.577893, -0.567107,
		27.826895, 31.400797, 28.836111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947250, 30.520838, 28.781324>,  <28.237711, 30.996271, 29.233086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947250, 30.520838, 28.781324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888079, 30.868891, 28.593287>,  <27.852575, 31.077723, 28.480465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888079, 30.868891, 28.593287>,  <27.947250, 30.520838, 28.781324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888079, 30.868891, 28.593287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630132, -0.283429, -0.722912,
		-0.762267, -0.403162, -0.506370,
		-0.147930, 0.870132, -0.470093,
		27.843700, 31.129930, 28.452259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745138, 30.386436, 28.083117>,  <27.947250, 30.520838, 28.781324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745138, 30.386436, 28.083117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911325, 30.749779, 28.064039>,  <28.011038, 30.967785, 28.052593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911325, 30.749779, 28.064039>,  <27.745138, 30.386436, 28.083117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911325, 30.749779, 28.064039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509593, -0.275872, -0.814991,
		-0.753458, 0.314300, -0.577509,
		0.415470, 0.908356, -0.047693,
		28.035967, 31.022285, 28.049732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673010, 30.589422, 27.451815>,  <27.745138, 30.386436, 28.083117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673010, 30.589422, 27.451815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989576, 30.791727, 27.589142>,  <28.179516, 30.913111, 27.671537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989576, 30.791727, 27.589142>,  <27.673010, 30.589422, 27.451815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989576, 30.791727, 27.589142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596877, -0.518172, -0.612564,
		-0.131914, 0.689711, -0.711967,
		0.791414, 0.505763, 0.343318,
		28.227001, 30.943457, 27.692137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054485, 30.497942, 26.838011>,  <27.673010, 30.589422, 27.451815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054485, 30.497942, 26.838011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314745, 30.631144, 27.110998>,  <28.470901, 30.711065, 27.274790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314745, 30.631144, 27.110998>,  <28.054485, 30.497942, 26.838011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314745, 30.631144, 27.110998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744147, -0.458704, -0.485629,
		0.151334, 0.823831, -0.546260,
		0.650648, 0.333006, 0.682469,
		28.509939, 30.731045, 27.315739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764425, 30.642525, 26.461895>,  <28.054485, 30.497942, 26.838011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764425, 30.642525, 26.461895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846180, 30.613134, 26.852346>,  <28.895233, 30.595499, 27.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846180, 30.613134, 26.852346>,  <28.764425, 30.642525, 26.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846180, 30.613134, 26.852346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793869, -0.570969, -0.209202,
		0.572711, 0.817677, -0.058366,
		0.204385, -0.073477, 0.976129,
		28.907495, 30.591091, 27.145185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120117, 30.015064, 26.211241>,  <28.764425, 30.642525, 26.461895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120117, 30.015064, 26.211241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282671, 30.346304, 26.056786>,  <29.380203, 30.545048, 25.964113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282671, 30.346304, 26.056786>,  <29.120117, 30.015064, 26.211241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282671, 30.346304, 26.056786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035199, 0.408107, 0.912255,
		0.913024, -0.384318, 0.136700,
		0.406384, 0.828099, -0.386139,
		29.404587, 30.594734, 25.940945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712000, 30.071930, 26.651827>,  <29.120117, 30.015064, 26.211241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712000, 30.071930, 26.651827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593058, 30.413227, 26.480452>,  <29.521692, 30.618006, 26.377626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593058, 30.413227, 26.480452>,  <29.712000, 30.071930, 26.651827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593058, 30.413227, 26.480452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066535, 0.466163, 0.882193,
		0.952446, 0.233818, -0.195386,
		-0.297354, 0.853242, -0.428438,
		29.503851, 30.669199, 26.351919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070442, 29.601229, 26.900707>,  <29.712000, 30.071930, 26.651827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070442, 29.601229, 26.900707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326778, 29.317768, 27.018787>,  <29.480579, 29.147692, 27.089636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326778, 29.317768, 27.018787>,  <29.070442, 29.601229, 26.900707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326778, 29.317768, 27.018787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479527, 0.669806, 0.566934,
		-0.599483, -0.221757, 0.769054,
		0.640838, -0.708650, 0.295198,
		29.519030, 29.105173, 27.107347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166977, 29.420652, 27.584192>,  <29.070442, 29.601229, 26.900707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166977, 29.420652, 27.584192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512291, 29.395983, 27.383820>,  <29.719479, 29.381180, 27.263596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512291, 29.395983, 27.383820>,  <29.166977, 29.420652, 27.584192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512291, 29.395983, 27.383820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378481, 0.735714, 0.561674,
		0.333901, -0.674479, 0.658475,
		0.863286, -0.061676, -0.500933,
		29.771276, 29.377480, 27.233540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682074, 29.488157, 28.039425>,  <29.166977, 29.420652, 27.584192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682074, 29.488157, 28.039425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875788, 29.605452, 27.709702>,  <29.992016, 29.675829, 27.511868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875788, 29.605452, 27.709702>,  <29.682074, 29.488157, 28.039425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875788, 29.605452, 27.709702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626369, 0.541595, 0.560658,
		0.610845, -0.787838, 0.078613,
		0.484284, 0.293235, -0.824307,
		30.021072, 29.693422, 27.462410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411392, 29.436766, 28.213785>,  <29.682074, 29.488157, 28.039425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411392, 29.436766, 28.213785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358088, 29.711227, 27.927727>,  <30.326105, 29.875904, 27.756092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358088, 29.711227, 27.927727>,  <30.411392, 29.436766, 28.213785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358088, 29.711227, 27.927727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548334, 0.652124, 0.523511,
		0.825573, -0.322375, -0.463145,
		-0.133261, 0.686155, -0.715145,
		30.318110, 29.917074, 27.713182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074432, 29.657837, 27.923155>,  <30.411392, 29.436766, 28.213785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074432, 29.657837, 27.923155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785624, 29.934349, 27.934605>,  <30.612339, 30.100256, 27.941475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785624, 29.934349, 27.934605>,  <31.074432, 29.657837, 27.923155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785624, 29.934349, 27.934605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458316, 0.446887, 0.768269,
		0.518296, 0.567826, -0.639487,
		-0.722022, 0.691278, 0.028624,
		30.569017, 30.141733, 27.943192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502712, 30.274450, 27.946558>,  <31.074432, 29.657837, 27.923155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502712, 30.274450, 27.946558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135136, 30.307800, 28.100752>,  <30.914591, 30.327810, 28.193268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135136, 30.307800, 28.100752>,  <31.502712, 30.274450, 27.946558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135136, 30.307800, 28.100752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367315, 0.536859, 0.759515,
		-0.143625, 0.839542, -0.523966,
		-0.918940, 0.083375, 0.385483,
		30.859453, 30.332813, 28.216396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463018, 30.990499, 28.083544>,  <31.502712, 30.274450, 27.946558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463018, 30.990499, 28.083544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185457, 30.791645, 28.291908>,  <31.018921, 30.672333, 28.416927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185457, 30.791645, 28.291908>,  <31.463018, 30.990499, 28.083544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185457, 30.791645, 28.291908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197289, 0.564480, 0.801524,
		-0.692512, 0.658951, -0.293615,
		-0.693905, -0.497138, 0.520913,
		30.977285, 30.642504, 28.448181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976048, 31.495358, 28.278744>,  <31.463018, 30.990499, 28.083544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976048, 31.495358, 28.278744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955130, 31.172607, 28.514103>,  <30.942579, 30.978956, 28.655319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955130, 31.172607, 28.514103>,  <30.976048, 31.495358, 28.278744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955130, 31.172607, 28.514103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094484, 0.582565, 0.807274,
		-0.994152, 0.097811, 0.045772,
		-0.052296, -0.806878, 0.588399,
		30.939442, 30.930544, 28.690622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392231, 31.662512, 28.703255>,  <30.976048, 31.495358, 28.278744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392231, 31.662512, 28.703255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606377, 31.376392, 28.882914>,  <30.734863, 31.204721, 28.990709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.606377, 31.376392, 28.882914>,  <30.392231, 31.662512, 28.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606377, 31.376392, 28.882914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130359, 0.455426, 0.880678,
		-0.834501, -0.530033, 0.150573,
		0.535364, -0.715298, 0.449148,
		30.766985, 31.161802, 29.017658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102850, 31.659151, 29.299179>,  <30.392231, 31.662512, 28.703255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102850, 31.659151, 29.299179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468233, 31.508497, 29.360815>,  <30.687464, 31.418106, 29.397797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468233, 31.508497, 29.360815>,  <30.102850, 31.659151, 29.299179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468233, 31.508497, 29.360815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013869, 0.407255, 0.913209,
		-0.406698, -0.832041, 0.377233,
		0.913457, -0.376632, 0.154090,
		30.742270, 31.395508, 29.407042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032837, 31.320349, 29.982065>,  <30.102850, 31.659151, 29.299179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032837, 31.320349, 29.982065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421122, 31.389524, 29.915359>,  <30.654093, 31.431030, 29.875336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421122, 31.389524, 29.915359>,  <30.032837, 31.320349, 29.982065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421122, 31.389524, 29.915359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120610, 0.249534, 0.960826,
		0.207774, -0.952799, 0.221368,
		0.970713, 0.172935, -0.166764,
		30.712336, 31.441406, 29.865330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404524, 30.961756, 30.454758>,  <30.032837, 31.320349, 29.982065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404524, 30.961756, 30.454758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666454, 31.235619, 30.326727>,  <30.823612, 31.399937, 30.249908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666454, 31.235619, 30.326727>,  <30.404524, 30.961756, 30.454758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666454, 31.235619, 30.326727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082136, 0.356528, 0.930667,
		0.751303, -0.635715, 0.177229,
		0.654827, 0.684656, -0.320076,
		30.862902, 31.441015, 30.230703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843012, 30.991369, 30.979280>,  <30.404524, 30.961756, 30.454758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843012, 30.991369, 30.979280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910606, 31.339800, 30.794817>,  <30.951164, 31.548859, 30.684139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910606, 31.339800, 30.794817>,  <30.843012, 30.991369, 30.979280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910606, 31.339800, 30.794817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105196, 0.481157, 0.870300,
		0.979988, -0.098558, 0.172944,
		0.168989, 0.871077, -0.461160,
		30.961304, 31.601122, 30.656469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242149, 31.374414, 31.442028>,  <30.843012, 30.991369, 30.979280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242149, 31.374414, 31.442028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099607, 31.655672, 31.195906>,  <31.014082, 31.824427, 31.048233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099607, 31.655672, 31.195906>,  <31.242149, 31.374414, 31.442028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099607, 31.655672, 31.195906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132900, 0.613698, 0.778275,
		0.924850, 0.359118, -0.125248,
		-0.356357, 0.703142, -0.615305,
		30.992701, 31.866615, 31.011314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633150, 31.815550, 31.690878>,  <31.242149, 31.374414, 31.442028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633150, 31.815550, 31.690878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334309, 32.009953, 31.509489>,  <31.155005, 32.126595, 31.400656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334309, 32.009953, 31.509489>,  <31.633150, 31.815550, 31.690878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334309, 32.009953, 31.509489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103881, 0.588461, 0.801825,
		0.656541, 0.646152, -0.389154,
		-0.747103, 0.486005, -0.453471,
		31.110178, 32.155754, 31.373447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849463, 32.511379, 31.617140>,  <31.633150, 31.815550, 31.690878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849463, 32.511379, 31.617140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449833, 32.496418, 31.608637>,  <31.210054, 32.487442, 31.603535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449833, 32.496418, 31.608637>,  <31.849463, 32.511379, 31.617140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449833, 32.496418, 31.608637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035716, 0.445559, 0.894540,
		-0.023989, 0.894471, -0.446482,
		-0.999074, -0.037406, -0.021258,
		31.150110, 32.485195, 31.602259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658615, 33.141960, 31.982180>,  <31.849463, 32.511379, 31.617140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658615, 33.141960, 31.982180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318621, 32.934250, 31.946674>,  <31.114624, 32.809624, 31.925371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318621, 32.934250, 31.946674>,  <31.658615, 33.141960, 31.982180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318621, 32.934250, 31.946674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360635, 0.450730, 0.816569,
		-0.384015, 0.726083, -0.570382,
		-0.849985, -0.519275, -0.088764,
		31.063625, 32.778469, 31.920046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013268, 33.643391, 32.015762>,  <31.658615, 33.141960, 31.982180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013268, 33.643391, 32.015762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874321, 33.279911, 32.108368>,  <30.790953, 33.061821, 32.163933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874321, 33.279911, 32.108368>,  <31.013268, 33.643391, 32.015762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874321, 33.279911, 32.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477468, 0.383881, 0.790354,
		-0.807070, 0.164000, -0.567223,
		-0.347364, -0.908702, 0.231514,
		30.770111, 33.007301, 32.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279869, 33.629005, 32.056286>,  <31.013268, 33.643391, 32.015762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279869, 33.629005, 32.056286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390472, 33.324482, 32.290878>,  <30.456835, 33.141769, 32.431633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390472, 33.324482, 32.290878>,  <30.279869, 33.629005, 32.056286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390472, 33.324482, 32.290878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659417, 0.293633, 0.692061,
		-0.699079, -0.578095, -0.420826,
		0.276509, -0.761306, 0.586479,
		30.473425, 33.096092, 32.466824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659452, 33.218719, 32.256157>,  <30.279869, 33.629005, 32.056286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659452, 33.218719, 32.256157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932810, 33.156498, 32.541473>,  <30.096825, 33.119164, 32.712662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.932810, 33.156498, 32.541473>,  <29.659452, 33.218719, 32.256157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932810, 33.156498, 32.541473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671753, 0.248600, 0.697815,
		-0.285873, -0.956034, 0.065394,
		0.683392, -0.155558, 0.713287,
		30.137827, 33.109829, 32.755459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304928, 33.099533, 32.846294>,  <29.659452, 33.218719, 32.256157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304928, 33.099533, 32.846294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660479, 33.158436, 33.019829>,  <29.873810, 33.193775, 33.123951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660479, 33.158436, 33.019829>,  <29.304928, 33.099533, 32.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660479, 33.158436, 33.019829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455420, 0.180863, 0.871712,
		0.049896, -0.972423, 0.227826,
		0.888878, 0.147252, 0.433836,
		29.927141, 33.202614, 33.149979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233925, 32.912647, 33.549286>,  <29.304928, 33.099533, 32.846294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233925, 32.912647, 33.549286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560101, 33.143795, 33.562656>,  <29.755806, 33.282486, 33.570679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560101, 33.143795, 33.562656>,  <29.233925, 32.912647, 33.549286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560101, 33.143795, 33.562656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278037, 0.340382, 0.898240,
		0.507692, -0.741756, 0.438232,
		0.815441, 0.577874, 0.033426,
		29.804733, 33.317158, 33.572685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533867, 32.723545, 34.223251>,  <29.233925, 32.912647, 33.549286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533867, 32.723545, 34.223251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635921, 33.088699, 34.095787>,  <29.697155, 33.307793, 34.019310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635921, 33.088699, 34.095787>,  <29.533867, 32.723545, 34.223251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635921, 33.088699, 34.095787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184152, 0.369411, 0.910837,
		0.949207, -0.173706, 0.262360,
		0.255136, 0.912887, -0.318659,
		29.712463, 33.362564, 34.000191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848997, 32.965187, 34.744118>,  <29.533867, 32.723545, 34.223251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848997, 32.965187, 34.744118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808962, 33.317482, 34.558952>,  <29.784941, 33.528858, 34.447853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.808962, 33.317482, 34.558952>,  <29.848997, 32.965187, 34.744118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808962, 33.317482, 34.558952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176722, 0.442119, 0.879375,
		0.979159, 0.169821, 0.111394,
		-0.100087, 0.880733, -0.462916,
		29.778936, 33.581703, 34.420078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044674, 33.497303, 35.221554>,  <29.848997, 32.965187, 34.744118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044674, 33.497303, 35.221554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818037, 33.667332, 34.939194>,  <29.682055, 33.769348, 34.769779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818037, 33.667332, 34.939194>,  <30.044674, 33.497303, 35.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818037, 33.667332, 34.939194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502455, 0.500751, 0.704831,
		0.653081, 0.754033, -0.070144,
		-0.566590, 0.425068, -0.705899,
		29.648060, 33.794853, 34.727425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907341, 34.133366, 35.533897>,  <30.044674, 33.497303, 35.221554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907341, 34.133366, 35.533897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643673, 34.142960, 35.233253>,  <29.485472, 34.148716, 35.052868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643673, 34.142960, 35.233253>,  <29.907341, 34.133366, 35.533897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643673, 34.142960, 35.233253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631881, 0.524222, 0.570892,
		0.407703, 0.851244, -0.330397,
		-0.659170, 0.023983, -0.751611,
		29.445923, 34.150154, 35.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740816, 34.898987, 35.345306>,  <29.907341, 34.133366, 35.533897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740816, 34.898987, 35.345306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445105, 34.638924, 35.275150>,  <29.267677, 34.482887, 35.233059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.445105, 34.638924, 35.275150>,  <29.740816, 34.898987, 35.345306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445105, 34.638924, 35.275150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594509, 0.507820, 0.623441,
		-0.316270, 0.565166, -0.761945,
		-0.739278, -0.650159, -0.175388,
		29.223322, 34.443874, 35.222534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857140, 35.728363, 35.464569>,  <29.740816, 34.898987, 35.345306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857140, 35.728363, 35.464569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170820, 35.482037, 35.495041>,  <30.359028, 35.334240, 35.513325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170820, 35.482037, 35.495041>,  <29.857140, 35.728363, 35.464569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170820, 35.482037, 35.495041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593693, 0.708937, -0.380704,
		0.180434, 0.343778, 0.921553,
		0.784201, -0.615812, 0.076183,
		30.406080, 35.297295, 35.517895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224579, 35.649761, 36.108574>,  <29.857140, 35.728363, 35.464569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224579, 35.649761, 36.108574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511999, 35.817421, 35.886585>,  <30.684452, 35.918018, 35.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511999, 35.817421, 35.886585>,  <30.224579, 35.649761, 36.108574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511999, 35.817421, 35.886585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610727, 0.001465, 0.791840,
		0.332713, -0.907916, -0.254933,
		0.718550, 0.419150, -0.554976,
		30.727564, 35.943165, 35.720093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802834, 35.233803, 36.384586>,  <30.224579, 35.649761, 36.108574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802834, 35.233803, 36.384586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926121, 35.563492, 36.194569>,  <31.000093, 35.761303, 36.080559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926121, 35.563492, 36.194569>,  <30.802834, 35.233803, 36.384586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926121, 35.563492, 36.194569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820908, 0.021912, 0.570640,
		0.480743, -0.565845, -0.669855,
		0.308216, 0.824221, -0.475040,
		31.018585, 35.810757, 36.052055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568619, 35.090775, 36.258778>,  <30.802834, 35.233803, 36.384586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568619, 35.090775, 36.258778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481857, 35.480881, 36.275764>,  <31.429800, 35.714947, 36.285957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481857, 35.480881, 36.275764>,  <31.568619, 35.090775, 36.258778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481857, 35.480881, 36.275764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648573, 0.111460, 0.752947,
		0.729593, 0.190858, -0.656709,
		-0.216903, 0.975269, 0.042465,
		31.416786, 35.773460, 36.288506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217072, 35.533020, 36.232368>,  <31.568619, 35.090775, 36.258778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217072, 35.533020, 36.232368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913269, 35.687607, 36.441669>,  <31.730988, 35.780357, 36.567249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913269, 35.687607, 36.441669>,  <32.217072, 35.533020, 36.232368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913269, 35.687607, 36.441669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576307, 0.026714, 0.816796,
		0.301687, 0.921916, -0.243013,
		-0.759510, 0.386466, 0.523248,
		31.685415, 35.803547, 36.598644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481823, 36.036377, 36.721577>,  <32.217072, 35.533020, 36.232368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481823, 36.036377, 36.721577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119930, 35.943333, 36.864319>,  <31.902794, 35.887505, 36.949963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119930, 35.943333, 36.864319>,  <32.481823, 36.036377, 36.721577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119930, 35.943333, 36.864319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375436, -0.039648, 0.926000,
		-0.201251, 0.971761, 0.123202,
		-0.904735, -0.232613, 0.356855,
		31.848509, 35.873550, 36.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158783, 36.621929, 37.079330>,  <32.481823, 36.036377, 36.721577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158783, 36.621929, 37.079330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 36.247158, 37.203682>,  <32.056538, 36.022297, 37.278294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094879, 36.247158, 37.203682>,  <32.158783, 36.621929, 37.079330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094879, 36.247158, 37.203682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238391, 0.268981, 0.933177,
		-0.957939, 0.223191, 0.180384,
		-0.159757, -0.936928, 0.310874,
		32.046951, 35.966080, 37.296944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594866, 36.602009, 37.550785>,  <32.158783, 36.621929, 37.079330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594866, 36.602009, 37.550785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853302, 36.312241, 37.646942>,  <32.008362, 36.138382, 37.704636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853302, 36.312241, 37.646942>,  <31.594866, 36.602009, 37.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853302, 36.312241, 37.646942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138357, 0.420892, 0.896497,
		-0.750617, -0.545957, 0.372162,
		0.646089, -0.724417, 0.240392,
		32.047131, 36.094917, 37.719059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309845, 36.347412, 38.162830>,  <31.594866, 36.602009, 37.550785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309845, 36.347412, 38.162830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693535, 36.235832, 38.144596>,  <31.923748, 36.168884, 38.133656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693535, 36.235832, 38.144596>,  <31.309845, 36.347412, 38.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693535, 36.235832, 38.144596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109464, 0.217929, 0.969807,
		-0.260591, -0.935251, 0.239577,
		0.959224, -0.278948, -0.045586,
		31.981302, 36.152149, 38.130920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533707, 36.081825, 38.904213>,  <31.309845, 36.347412, 38.162830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533707, 36.081825, 38.904213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897318, 36.084579, 38.737541>,  <32.115482, 36.086231, 38.637539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897318, 36.084579, 38.737541>,  <31.533707, 36.081825, 38.904213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897318, 36.084579, 38.737541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412018, 0.135239, 0.901083,
		0.062558, -0.990789, 0.120098,
		0.909026, 0.006887, -0.416683,
		32.170025, 36.086643, 38.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860142, 35.597996, 39.142212>,  <31.533707, 36.081825, 38.904213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860142, 35.597996, 39.142212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121052, 35.880447, 39.032001>,  <32.277599, 36.049919, 38.965874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121052, 35.880447, 39.032001>,  <31.860142, 35.597996, 39.142212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121052, 35.880447, 39.032001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242594, 0.149903, 0.958476,
		0.718111, -0.692034, -0.073525,
		0.652277, 0.706129, -0.275530,
		32.316734, 36.092285, 38.949341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462749, 35.493069, 39.608219>,  <31.860142, 35.597996, 39.142212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462749, 35.493069, 39.608219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507961, 35.849121, 39.431637>,  <32.535088, 36.062752, 39.325687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507961, 35.849121, 39.431637>,  <32.462749, 35.493069, 39.608219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507961, 35.849121, 39.431637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417649, 0.360583, 0.833996,
		0.901551, -0.278640, -0.331008,
		0.113028, 0.890135, -0.441458,
		32.541870, 36.116161, 39.299198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039932, 35.767776, 39.880501>,  <32.462749, 35.493069, 39.608219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039932, 35.767776, 39.880501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914951, 36.103729, 39.702972>,  <32.839962, 36.305302, 39.596455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914951, 36.103729, 39.702972>,  <33.039932, 35.767776, 39.880501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914951, 36.103729, 39.702972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346636, 0.535804, 0.769907,
		0.884431, 0.086712, -0.458544,
		-0.312450, 0.839878, -0.443824,
		32.821217, 36.355694, 39.569824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620960, 36.256050, 39.813316>,  <33.039932, 35.767776, 39.880501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620960, 36.256050, 39.813316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281666, 36.467812, 39.807224>,  <33.078091, 36.594868, 39.803570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.281666, 36.467812, 39.807224>,  <33.620960, 36.256050, 39.813316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281666, 36.467812, 39.807224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288265, 0.485620, 0.825274,
		0.444299, 0.695634, -0.564528,
		-0.848235, 0.529402, -0.015234,
		33.027195, 36.626633, 39.802654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760262, 36.963314, 39.744537>,  <33.620960, 36.256050, 39.813316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760262, 36.963314, 39.744537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403519, 36.950375, 39.924999>,  <33.189472, 36.942612, 40.033276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403519, 36.950375, 39.924999>,  <33.760262, 36.963314, 39.744537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403519, 36.950375, 39.924999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333458, 0.626885, 0.704146,
		-0.305596, 0.778440, -0.548308,
		-0.891862, -0.032346, 0.451151,
		33.135960, 36.940670, 40.060345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565678, 37.693817, 39.901054>,  <33.760262, 36.963314, 39.744537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565678, 37.693817, 39.901054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324371, 37.473206, 40.131493>,  <33.179588, 37.340839, 40.269756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324371, 37.473206, 40.131493>,  <33.565678, 37.693817, 39.901054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324371, 37.473206, 40.131493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189709, 0.602377, 0.775340,
		-0.774652, 0.577024, -0.258761,
		-0.603262, -0.551530, 0.576099,
		33.143394, 37.307747, 40.304321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286705, 38.185242, 40.386227>,  <33.565678, 37.693817, 39.901054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286705, 38.185242, 40.386227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184452, 37.842999, 40.566269>,  <33.123100, 37.637653, 40.674294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184452, 37.842999, 40.566269>,  <33.286705, 38.185242, 40.386227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184452, 37.842999, 40.566269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123651, 0.432815, 0.892963,
		-0.958835, 0.283924, -0.004845,
		-0.255631, -0.855604, 0.450105,
		33.107761, 37.586319, 40.701302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748890, 38.297226, 40.964874>,  <33.286705, 38.185242, 40.386227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748890, 38.297226, 40.964874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941418, 37.954071, 41.036835>,  <33.056934, 37.748177, 41.080009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941418, 37.954071, 41.036835>,  <32.748890, 38.297226, 40.964874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941418, 37.954071, 41.036835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209316, 0.311790, 0.926808,
		-0.851188, -0.408432, 0.329639,
		0.481316, -0.857887, 0.179901,
		33.085812, 37.696705, 41.090805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422512, 37.937000, 41.652199>,  <32.748890, 38.297226, 40.964874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422512, 37.937000, 41.652199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774475, 37.756153, 41.593750>,  <32.985653, 37.647644, 41.558681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774475, 37.756153, 41.593750>,  <32.422512, 37.937000, 41.652199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774475, 37.756153, 41.593750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232410, 0.141314, 0.962297,
		-0.414420, -0.880694, 0.229420,
		0.879910, -0.452115, -0.146119,
		33.038448, 37.620518, 41.549915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546043, 37.302578, 42.048237>,  <32.422512, 37.937000, 41.652199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546043, 37.302578, 42.048237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895493, 37.483776, 41.977158>,  <33.105164, 37.592495, 41.934509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895493, 37.483776, 41.977158>,  <32.546043, 37.302578, 42.048237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895493, 37.483776, 41.977158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214567, -0.030867, 0.976221,
		0.436738, -0.890979, -0.124164,
		0.873626, 0.452994, -0.177695,
		33.157581, 37.619675, 41.923851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047489, 37.010822, 42.452904>,  <32.546043, 37.302578, 42.048237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047489, 37.010822, 42.452904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210209, 37.365810, 42.366264>,  <33.307842, 37.578804, 42.314281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210209, 37.365810, 42.366264>,  <33.047489, 37.010822, 42.452904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210209, 37.365810, 42.366264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233877, 0.128023, 0.963801,
		0.883070, -0.442734, -0.155478,
		0.406803, 0.887466, -0.216599,
		33.332249, 37.632050, 42.301285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433220, 37.060955, 42.977493>,  <33.047489, 37.010822, 42.452904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433220, 37.060955, 42.977493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464848, 37.430031, 42.826553>,  <33.483826, 37.651474, 42.735989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464848, 37.430031, 42.826553>,  <33.433220, 37.060955, 42.977493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464848, 37.430031, 42.826553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099801, 0.369310, 0.923932,
		0.991861, -0.110717, -0.062883,
		0.079072, 0.922687, -0.377354,
		33.488567, 37.706837, 42.713348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035091, 37.275185, 43.257637>,  <33.433220, 37.060955, 42.977493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035091, 37.275185, 43.257637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781860, 37.567158, 43.154556>,  <33.629921, 37.742340, 43.092709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781860, 37.567158, 43.154556>,  <34.035091, 37.275185, 43.257637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781860, 37.567158, 43.154556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150457, 0.442594, 0.884010,
		0.759325, 0.520874, -0.390020,
		-0.633078, 0.729932, -0.257704,
		33.591938, 37.786137, 43.077244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326813, 38.011269, 43.443081>,  <34.035091, 37.275185, 43.257637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326813, 38.011269, 43.443081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927448, 38.033138, 43.448463>,  <33.687828, 38.046261, 43.451694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927448, 38.033138, 43.448463>,  <34.326813, 38.011269, 43.443081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927448, 38.033138, 43.448463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030116, 0.316622, 0.948074,
		0.047573, 0.946975, -0.317767,
		-0.998414, 0.054673, 0.013456,
		33.627926, 38.049541, 43.452499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303417, 38.071693, 44.134064>,  <34.326813, 38.011269, 43.443081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303417, 38.071693, 44.134064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928864, 38.156647, 44.022297>,  <33.704132, 38.207619, 43.955238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928864, 38.156647, 44.022297>,  <34.303417, 38.071693, 44.134064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928864, 38.156647, 44.022297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235900, 0.208609, 0.949122,
		0.259870, 0.954659, -0.145237,
		-0.936386, 0.212387, -0.279416,
		33.647949, 38.220364, 43.938473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192207, 38.762413, 44.413109>,  <34.303417, 38.071693, 44.134064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192207, 38.762413, 44.413109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852951, 38.557064, 44.360798>,  <33.649395, 38.433857, 44.329411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852951, 38.557064, 44.360798>,  <34.192207, 38.762413, 44.413109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852951, 38.557064, 44.360798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306488, 0.274142, 0.911543,
		-0.432107, 0.813202, -0.389854,
		-0.848144, -0.513369, -0.130779,
		33.598507, 38.403053, 44.321564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643291, 39.216866, 44.475903>,  <34.192207, 38.762413, 44.413109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643291, 39.216866, 44.475903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484333, 38.858410, 44.554913>,  <33.388958, 38.643337, 44.602318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484333, 38.858410, 44.554913>,  <33.643291, 39.216866, 44.475903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484333, 38.858410, 44.554913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323319, 0.338179, 0.883798,
		-0.858804, 0.287352, -0.424129,
		-0.397393, -0.896138, 0.197523,
		33.365116, 38.589569, 44.614170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253147, 39.331825, 45.018410>,  <33.643291, 39.216866, 44.475903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253147, 39.331825, 45.018410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212311, 38.935829, 45.057407>,  <33.187809, 38.698231, 45.080807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.212311, 38.935829, 45.057407>,  <33.253147, 39.331825, 45.018410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212311, 38.935829, 45.057407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334302, 0.126445, 0.933945,
		-0.936920, 0.062755, -0.343863,
		-0.102089, -0.989987, 0.097489,
		33.181683, 38.638832, 45.086655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677933, 39.294338, 45.423367>,  <33.253147, 39.331825, 45.018410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677933, 39.294338, 45.423367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846531, 38.933929, 45.464348>,  <32.947689, 38.717686, 45.488937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846531, 38.933929, 45.464348>,  <32.677933, 39.294338, 45.423367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846531, 38.933929, 45.464348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220681, 0.007669, 0.975316,
		-0.879568, -0.433704, -0.195607,
		0.421498, -0.901023, 0.102455,
		32.972980, 38.663624, 45.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230373, 38.874435, 45.782257>,  <32.677933, 39.294338, 45.423367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230373, 38.874435, 45.782257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558449, 38.651329, 45.833145>,  <32.755295, 38.517467, 45.863678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558449, 38.651329, 45.833145>,  <32.230373, 38.874435, 45.782257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558449, 38.651329, 45.833145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267852, -0.177895, 0.946894,
		-0.505511, -0.810712, -0.295306,
		0.820192, -0.557764, 0.127223,
		32.804508, 38.484001, 45.871311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036201, 38.190289, 46.191528>,  <32.230373, 38.874435, 45.782257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036201, 38.190289, 46.191528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431149, 38.251411, 46.208309>,  <32.668118, 38.288086, 46.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431149, 38.251411, 46.208309>,  <32.036201, 38.190289, 46.191528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431149, 38.251411, 46.208309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026887, -0.099357, 0.994689,
		0.156167, -0.983249, -0.093993,
		0.987364, 0.152810, 0.041953,
		32.727360, 38.297253, 46.220894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279190, 37.589622, 46.522038>,  <32.036201, 38.190289, 46.191528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279190, 37.589622, 46.522038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516747, 37.909920, 46.553276>,  <32.659279, 38.102100, 46.572018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516747, 37.909920, 46.553276>,  <32.279190, 37.589622, 46.522038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516747, 37.909920, 46.553276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019455, -0.082745, 0.996381,
		0.804311, -0.593260, -0.033562,
		0.593890, 0.800747, 0.078094,
		32.694912, 38.150143, 46.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735775, 37.289440, 46.916321>,  <32.279190, 37.589622, 46.522038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735775, 37.289440, 46.916321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764088, 37.686420, 46.956367>,  <32.781075, 37.924610, 46.980396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764088, 37.686420, 46.956367>,  <32.735775, 37.289440, 46.916321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764088, 37.686420, 46.956367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008097, -0.099794, 0.994975,
		0.997459, -0.071235, 0.000972,
		0.070780, 0.992455, 0.100117,
		32.785320, 37.984158, 46.986404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309978, 37.471836, 47.440540>,  <32.735775, 37.289440, 46.916321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309978, 37.471836, 47.440540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105316, 37.815159, 47.456139>,  <32.982517, 38.021152, 47.465500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105316, 37.815159, 47.456139>,  <33.309978, 37.471836, 47.440540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105316, 37.815159, 47.456139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209618, 0.080681, 0.974449,
		0.833228, 0.506757, -0.221197,
		-0.511656, 0.858305, 0.038999,
		32.951820, 38.072651, 47.467838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749760, 37.931454, 47.728230>,  <33.309978, 37.471836, 47.440540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749760, 37.931454, 47.728230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363403, 38.002544, 47.803562>,  <33.131588, 38.045200, 47.848763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363403, 38.002544, 47.803562>,  <33.749760, 37.931454, 47.728230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363403, 38.002544, 47.803562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219229, 0.174168, 0.960002,
		0.137820, 0.968544, -0.207191,
		-0.965890, 0.177730, 0.188329,
		33.073635, 38.055862, 47.860062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709995, 38.553318, 48.178112>,  <33.749760, 37.931454, 47.728230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709995, 38.553318, 48.178112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380146, 38.332611, 48.228004>,  <33.182236, 38.200188, 48.257938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380146, 38.332611, 48.228004>,  <33.709995, 38.553318, 48.178112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380146, 38.332611, 48.228004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169856, -0.031190, 0.984975,
		-0.539586, 0.833416, 0.119441,
		-0.824619, -0.551766, 0.124731,
		33.132759, 38.167080, 48.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472244, 38.791508, 48.782509>,  <33.709995, 38.553318, 48.178112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472244, 38.791508, 48.782509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257618, 38.455318, 48.752319>,  <33.128841, 38.253605, 48.734207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257618, 38.455318, 48.752319>,  <33.472244, 38.791508, 48.782509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257618, 38.455318, 48.752319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063877, -0.129633, 0.989502,
		-0.841435, 0.526116, 0.123244,
		-0.536569, -0.840475, -0.075471,
		33.096645, 38.203175, 48.729679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868763, 38.943878, 49.280872>,  <33.472244, 38.791508, 48.782509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868763, 38.943878, 49.280872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932865, 38.553928, 49.218998>,  <32.971329, 38.319958, 49.181873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932865, 38.553928, 49.218998>,  <32.868763, 38.943878, 49.280872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932865, 38.553928, 49.218998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224323, -0.116643, 0.967509,
		-0.961247, -0.189752, 0.199994,
		0.160259, -0.974879, -0.154688,
		32.980942, 38.261463, 49.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431404, 38.541473, 49.805569>,  <32.868763, 38.943878, 49.280872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431404, 38.541473, 49.805569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712635, 38.292591, 49.667850>,  <32.881374, 38.143261, 49.585220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712635, 38.292591, 49.667850>,  <32.431404, 38.541473, 49.805569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712635, 38.292591, 49.667850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284779, -0.197283, 0.938073,
		-0.651598, -0.757587, 0.038486,
		0.703079, -0.622207, -0.344295,
		32.923557, 38.105930, 49.564564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390789, 37.954777, 50.228977>,  <32.431404, 38.541473, 49.805569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390789, 37.954777, 50.228977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755116, 37.978706, 50.065598>,  <32.973713, 37.993065, 49.967567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755116, 37.978706, 50.065598>,  <32.390789, 37.954777, 50.228977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755116, 37.978706, 50.065598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411104, -0.041562, 0.910640,
		0.037506, -0.997343, -0.062451,
		0.910816, 0.059828, -0.408453,
		33.028362, 37.996655, 49.943062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785549, 37.376637, 50.537895>,  <32.390789, 37.954777, 50.228977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785549, 37.376637, 50.537895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073524, 37.601685, 50.375343>,  <33.246311, 37.736713, 50.277813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073524, 37.601685, 50.375343>,  <32.785549, 37.376637, 50.537895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073524, 37.601685, 50.375343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604372, -0.220362, 0.765621,
		0.341206, -0.796803, -0.498681,
		0.719940, 0.562623, -0.406377,
		33.289505, 37.770470, 50.253429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447113, 37.001373, 50.624386>,  <32.785549, 37.376637, 50.537895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447113, 37.001373, 50.624386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539436, 37.388443, 50.583729>,  <33.594830, 37.620686, 50.559334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539436, 37.388443, 50.583729>,  <33.447113, 37.001373, 50.624386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539436, 37.388443, 50.583729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619778, -0.065681, 0.782024,
		0.750069, -0.243495, -0.614903,
		0.230807, 0.967676, -0.101647,
		33.608677, 37.678745, 50.553234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130009, 36.936859, 50.724964>,  <33.447113, 37.001373, 50.624386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130009, 36.936859, 50.724964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020386, 37.318592, 50.772518>,  <33.954613, 37.547634, 50.801052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.020386, 37.318592, 50.772518>,  <34.130009, 36.936859, 50.724964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020386, 37.318592, 50.772518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577148, 0.064322, 0.814103,
		0.769281, 0.291726, -0.568421,
		-0.274057, 0.954337, 0.118887,
		33.938168, 37.604893, 50.808186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693748, 37.317108, 50.763447>,  <34.130009, 36.936859, 50.724964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693748, 37.317108, 50.763447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437405, 37.554127, 50.958664>,  <34.283596, 37.696339, 51.075794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437405, 37.554127, 50.958664>,  <34.693748, 37.317108, 50.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437405, 37.554127, 50.958664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599478, -0.010817, 0.800318,
		0.479501, 0.805467, -0.348284,
		-0.640863, 0.592542, 0.488047,
		34.245148, 37.731888, 51.105080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171299, 37.888584, 51.113503>,  <34.693748, 37.317108, 50.763447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171299, 37.888584, 51.113503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812180, 37.891678, 51.289639>,  <34.596706, 37.893532, 51.395321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812180, 37.891678, 51.289639>,  <35.171299, 37.888584, 51.113503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812180, 37.891678, 51.289639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440400, 0.012028, 0.897721,
		0.001644, 0.999898, -0.014203,
		-0.897800, 0.007731, 0.440336,
		34.542839, 37.893997, 51.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230396, 38.354321, 51.667416>,  <35.171299, 37.888584, 51.113503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230396, 38.354321, 51.667416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910904, 38.132050, 51.759716>,  <34.719208, 37.998688, 51.815098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910904, 38.132050, 51.759716>,  <35.230396, 38.354321, 51.667416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910904, 38.132050, 51.759716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371019, -0.152945, 0.915943,
		-0.473681, 0.817206, 0.328331,
		-0.798731, -0.555682, 0.230752,
		34.671284, 37.965343, 51.828941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176922, 38.507652, 52.350483>,  <35.230396, 38.354321, 51.667416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176922, 38.507652, 52.350483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978836, 38.167191, 52.280857>,  <34.859985, 37.962914, 52.239082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978836, 38.167191, 52.280857>,  <35.176922, 38.507652, 52.350483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978836, 38.167191, 52.280857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335560, -0.372210, 0.865367,
		-0.801350, 0.370131, 0.469937,
		-0.495214, -0.851154, -0.174069,
		34.830273, 37.911846, 52.228638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766602, 38.364235, 52.972561>,  <35.176922, 38.507652, 52.350483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766602, 38.364235, 52.972561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862373, 38.021755, 52.789436>,  <34.919834, 37.816265, 52.679562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862373, 38.021755, 52.789436>,  <34.766602, 38.364235, 52.972561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862373, 38.021755, 52.789436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326401, -0.373103, 0.868479,
		-0.914405, -0.357368, 0.190134,
		0.239427, -0.856202, -0.457813,
		34.934200, 37.764896, 52.652092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550728, 37.768085, 53.357056>,  <34.766602, 38.364235, 52.972561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550728, 37.768085, 53.357056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883888, 37.684772, 53.151962>,  <35.083786, 37.634785, 53.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883888, 37.684772, 53.151962>,  <34.550728, 37.768085, 53.357056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883888, 37.684772, 53.151962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439549, -0.313971, 0.841557,
		-0.336274, -0.926303, -0.169950,
		0.832896, -0.208293, -0.512736,
		35.133759, 37.622288, 52.998142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776672, 37.139622, 53.478607>,  <34.550728, 37.768085, 53.357056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776672, 37.139622, 53.478607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126621, 37.323608, 53.417912>,  <35.336590, 37.434002, 53.381493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126621, 37.323608, 53.417912>,  <34.776672, 37.139622, 53.478607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126621, 37.323608, 53.417912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337646, -0.354573, 0.871937,
		0.347259, -0.814070, -0.465512,
		0.874875, 0.459966, -0.151739,
		35.389084, 37.461597, 53.372391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380627, 36.692066, 53.260323>,  <34.776672, 37.139622, 53.478607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380627, 36.692066, 53.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462860, 37.025921, 53.464722>,  <35.512199, 37.226234, 53.587360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462860, 37.025921, 53.464722>,  <35.380627, 36.692066, 53.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462860, 37.025921, 53.464722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225176, -0.548488, 0.805268,
		0.952381, -0.050488, -0.300701,
		0.205588, 0.834633, 0.511001,
		35.524536, 37.276310, 53.618023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948601, 36.483162, 53.729717>,  <35.380627, 36.692066, 53.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948601, 36.483162, 53.729717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771858, 36.817966, 53.858818>,  <35.665813, 37.018848, 53.936279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771858, 36.817966, 53.858818>,  <35.948601, 36.483162, 53.729717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771858, 36.817966, 53.858818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167584, -0.276430, 0.946310,
		0.881294, 0.472220, -0.018128,
		-0.441855, 0.837015, 0.322753,
		35.639301, 37.069073, 53.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242870, 36.028744, 53.252392>,  <35.948601, 36.483162, 53.729717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242870, 36.028744, 53.252392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861584, 36.065838, 53.367474>,  <35.632812, 36.088093, 53.436523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861584, 36.065838, 53.367474>,  <36.242870, 36.028744, 53.252392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861584, 36.065838, 53.367474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024298, -0.925195, 0.378713,
		0.301299, 0.367987, 0.879661,
		-0.953220, 0.092732, 0.287702,
		35.575619, 36.093658, 53.453785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189182, 35.677444, 54.019962>,  <36.242870, 36.028744, 53.252392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189182, 35.677444, 54.019962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850872, 35.703465, 53.808140>,  <35.647884, 35.719074, 53.681046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850872, 35.703465, 53.808140>,  <36.189182, 35.677444, 54.019962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850872, 35.703465, 53.808140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303751, -0.874691, 0.377692,
		-0.438631, 0.480296, 0.759551,
		-0.845777, 0.065047, -0.529557,
		35.597137, 35.722977, 53.649273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601944, 35.550591, 54.484047>,  <36.189182, 35.677444, 54.019962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601944, 35.550591, 54.484047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534206, 35.468967, 54.098366>,  <35.493565, 35.419994, 53.866959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534206, 35.468967, 54.098366>,  <35.601944, 35.550591, 54.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534206, 35.468967, 54.098366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148765, -0.961828, 0.229686,
		-0.974264, 0.182336, 0.132527,
		-0.169348, -0.204059, -0.964200,
		35.483402, 35.407749, 53.809105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892876, 35.160053, 54.404640>,  <35.601944, 35.550591, 54.484047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892876, 35.160053, 54.404640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170673, 35.090099, 54.125473>,  <35.337353, 35.048126, 53.957973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170673, 35.090099, 54.125473>,  <34.892876, 35.160053, 54.404640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170673, 35.090099, 54.125473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073965, -0.947519, 0.311025,
		-0.715686, -0.267627, -0.645112,
		0.694494, -0.174881, -0.697922,
		35.379021, 35.037636, 53.916096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675381, 34.666988, 53.793594>,  <34.892876, 35.160053, 54.404640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675381, 34.666988, 53.793594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 34.701084, 53.982903>,  <35.236519, 34.721542, 54.096489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 34.701084, 53.982903>,  <34.675381, 34.666988, 53.793594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026093, 34.701084, 53.982903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145900, -0.890626, 0.430695,
		0.458221, -0.446676, -0.768449,
		0.876782, 0.085237, 0.473274,
		35.289127, 34.726654, 54.124886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818485, 34.783623, 53.039555>,  <34.675381, 34.666988, 53.793594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818485, 34.783623, 53.039555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809547, 35.168213, 53.149151>,  <34.804184, 35.398968, 53.214909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809547, 35.168213, 53.149151>,  <34.818485, 34.783623, 53.039555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809547, 35.168213, 53.149151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787057, -0.152076, 0.597841,
		0.616475, 0.229001, -0.753337,
		-0.022342, 0.961474, 0.273988,
		34.802845, 35.456654, 53.231346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023266, 34.256519, 52.578125>,  <34.818485, 34.783623, 53.039555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023266, 34.256519, 52.578125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833233, 34.604263, 52.523712>,  <34.719212, 34.812908, 52.491066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833233, 34.604263, 52.523712>,  <35.023266, 34.256519, 52.578125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833233, 34.604263, 52.523712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096333, -0.102277, -0.990081,
		-0.874650, -0.483478, -0.035158,
		-0.475086, 0.869361, -0.136032,
		34.690708, 34.865070, 52.482903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337437, 34.200882, 52.203442>,  <35.023266, 34.256519, 52.578125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337437, 34.200882, 52.203442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533894, 34.546520, 52.159405>,  <34.651768, 34.753902, 52.132984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533894, 34.546520, 52.159405>,  <34.337437, 34.200882, 52.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533894, 34.546520, 52.159405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145880, -0.206190, -0.967577,
		-0.858776, 0.459160, -0.227323,
		0.491145, 0.864093, -0.110089,
		34.681236, 34.805748, 52.126377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982220, 34.599957, 51.719429>,  <34.337437, 34.200882, 52.203442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982220, 34.599957, 51.719429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368507, 34.703751, 51.716541>,  <34.600281, 34.766029, 51.714809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368507, 34.703751, 51.716541>,  <33.982220, 34.599957, 51.719429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368507, 34.703751, 51.716541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023029, -0.113333, -0.993290,
		-0.258566, 0.959073, -0.115424,
		0.965719, 0.259489, -0.007217,
		34.658222, 34.781597, 51.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054142, 34.857410, 51.111820>,  <33.982220, 34.599957, 51.719429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054142, 34.857410, 51.111820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442936, 34.816166, 51.196301>,  <34.676212, 34.791420, 51.246990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442936, 34.816166, 51.196301>,  <34.054142, 34.857410, 51.111820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442936, 34.816166, 51.196301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191976, -0.170112, -0.966544,
		0.135592, 0.980015, -0.145552,
		0.971988, -0.103113, 0.211205,
		34.734531, 34.785233, 51.259663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453098, 35.339073, 50.720493>,  <34.054142, 34.857410, 51.111820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453098, 35.339073, 50.720493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677773, 35.020687, 50.810780>,  <34.812576, 34.829655, 50.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677773, 35.020687, 50.810780>,  <34.453098, 35.339073, 50.720493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677773, 35.020687, 50.810780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171347, -0.154990, -0.972943,
		0.809414, 0.585163, 0.049331,
		0.561684, -0.795967, 0.225716,
		34.846279, 34.781898, 50.878494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898476, 35.418461, 50.213543>,  <34.453098, 35.339073, 50.720493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898476, 35.418461, 50.213543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960304, 35.044132, 50.340256>,  <34.997402, 34.819534, 50.416283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960304, 35.044132, 50.340256>,  <34.898476, 35.418461, 50.213543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960304, 35.044132, 50.340256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169431, -0.290775, -0.941670,
		0.973346, 0.199225, 0.113612,
		0.154568, -0.935820, 0.316780,
		35.006676, 34.763386, 50.435291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513256, 35.217247, 49.902336>,  <34.898476, 35.418461, 50.213543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513256, 35.217247, 49.902336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309383, 34.886337, 49.996857>,  <35.187061, 34.687790, 50.053570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309383, 34.886337, 49.996857>,  <35.513256, 35.217247, 49.902336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309383, 34.886337, 49.996857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339221, -0.445631, -0.828458,
		0.790667, -0.342091, 0.507759,
		-0.509681, -0.827277, 0.236301,
		35.156479, 34.638153, 50.067745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028057, 34.661987, 49.762295>,  <35.513256, 35.217247, 49.902336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028057, 34.661987, 49.762295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658783, 34.508625, 49.751488>,  <35.437218, 34.416607, 49.745003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658783, 34.508625, 49.751488>,  <36.028057, 34.661987, 49.762295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658783, 34.508625, 49.751488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226985, -0.487121, -0.843321,
		0.310175, -0.784673, 0.536730,
		-0.923185, -0.383407, -0.027016,
		35.381828, 34.393604, 49.743382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178436, 34.006989, 49.467262>,  <36.028057, 34.661987, 49.762295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178436, 34.006989, 49.467262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782722, 34.046757, 49.424503>,  <35.545292, 34.070618, 49.398849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782722, 34.046757, 49.424503>,  <36.178436, 34.006989, 49.467262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782722, 34.046757, 49.424503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042548, -0.504104, -0.862594,
		-0.139643, -0.857902, 0.494473,
		-0.989288, 0.099416, -0.106897,
		35.485935, 34.076580, 49.392433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851337, 33.339050, 49.207169>,  <36.178436, 34.006989, 49.467262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851337, 33.339050, 49.207169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553658, 33.591454, 49.119541>,  <35.375050, 33.742897, 49.066963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553658, 33.591454, 49.119541>,  <35.851337, 33.339050, 49.207169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553658, 33.591454, 49.119541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000858, -0.328876, -0.944373,
		-0.667959, -0.702612, 0.245290,
		-0.744198, 0.631013, -0.219072,
		35.330399, 33.780758, 49.053818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408794, 32.944881, 48.838566>,  <35.851337, 33.339050, 49.207169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408794, 32.944881, 48.838566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338669, 33.329922, 48.755947>,  <35.296593, 33.560947, 48.706375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.338669, 33.329922, 48.755947>,  <35.408794, 32.944881, 48.838566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338669, 33.329922, 48.755947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125404, -0.229918, -0.965097,
		-0.976493, -0.143293, 0.161021,
		-0.175313, 0.962603, -0.206544,
		35.286076, 33.618702, 48.693985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829002, 32.972050, 48.375343>,  <35.408794, 32.944881, 48.838566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829002, 32.972050, 48.375343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029953, 33.315655, 48.335918>,  <35.150524, 33.521820, 48.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029953, 33.315655, 48.335918>,  <34.829002, 32.972050, 48.375343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029953, 33.315655, 48.335918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121672, -0.042626, -0.991655,
		-0.856048, 0.510173, 0.083104,
		0.502373, 0.859015, -0.098563,
		35.180664, 33.573360, 48.306351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546162, 33.191166, 47.823978>,  <34.829002, 32.972050, 48.375343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546162, 33.191166, 47.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874733, 33.418999, 47.835518>,  <35.071877, 33.555698, 47.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874733, 33.418999, 47.835518>,  <34.546162, 33.191166, 47.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874733, 33.418999, 47.835518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056019, 0.130923, -0.989809,
		-0.567552, 0.811442, 0.139451,
		0.821430, 0.569580, 0.028849,
		35.121162, 33.589874, 47.844173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432762, 33.807976, 47.581055>,  <34.546162, 33.191166, 47.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432762, 33.807976, 47.581055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829689, 33.796947, 47.532818>,  <35.067844, 33.790329, 47.503876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829689, 33.796947, 47.532818>,  <34.432762, 33.807976, 47.581055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829689, 33.796947, 47.532818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118883, 0.056940, -0.991274,
		0.034196, 0.997997, 0.053225,
		0.992319, -0.027570, -0.120592,
		35.127384, 33.788677, 47.496639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693024, 34.388020, 47.186859>,  <34.432762, 33.807976, 47.581055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693024, 34.388020, 47.186859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950439, 34.085716, 47.138378>,  <35.104889, 33.904335, 47.109291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950439, 34.085716, 47.138378>,  <34.693024, 34.388020, 47.186859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950439, 34.085716, 47.138378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001550, 0.157057, -0.987588,
		0.765413, 0.635738, 0.099900,
		0.643537, -0.755758, -0.121199,
		35.143501, 33.858990, 47.102020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980320, 34.551544, 46.570614>,  <34.693024, 34.388020, 47.186859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980320, 34.551544, 46.570614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137993, 34.185593, 46.605518>,  <35.232597, 33.966022, 46.626461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137993, 34.185593, 46.605518>,  <34.980320, 34.551544, 46.570614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137993, 34.185593, 46.605518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042401, -0.076741, -0.996149,
		0.918054, 0.396364, 0.008542,
		0.394182, -0.914881, 0.087258,
		35.256248, 33.911129, 46.631695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612492, 34.493942, 46.115433>,  <34.980320, 34.551544, 46.570614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612492, 34.493942, 46.115433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459198, 34.129894, 46.178444>,  <35.367222, 33.911465, 46.216251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459198, 34.129894, 46.178444>,  <35.612492, 34.493942, 46.115433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459198, 34.129894, 46.178444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173479, -0.096588, -0.980090,
		0.907215, -0.402928, -0.120871,
		-0.383231, -0.910121, 0.157526,
		35.344227, 33.856857, 46.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980701, 34.038170, 45.654743>,  <35.612492, 34.493942, 46.115433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980701, 34.038170, 45.654743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638988, 33.853302, 45.749905>,  <35.433960, 33.742382, 45.807003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638988, 33.853302, 45.749905>,  <35.980701, 34.038170, 45.654743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638988, 33.853302, 45.749905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244748, -0.046140, -0.968488,
		0.458587, -0.885588, -0.073700,
		-0.854281, -0.462174, 0.237905,
		35.382706, 33.714649, 45.821278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913662, 33.483227, 45.075439>,  <35.980701, 34.038170, 45.654743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913662, 33.483227, 45.075439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543919, 33.513588, 45.224998>,  <35.322071, 33.531803, 45.314732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543919, 33.513588, 45.224998>,  <35.913662, 33.483227, 45.075439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543919, 33.513588, 45.224998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381347, -0.154131, -0.911492,
		-0.011555, -0.985131, 0.171417,
		-0.924360, 0.075901, 0.373896,
		35.266609, 33.536358, 45.337166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512280, 32.931313, 44.817871>,  <35.913662, 33.483227, 45.075439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512280, 32.931313, 44.817871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239365, 33.199524, 44.934399>,  <35.075615, 33.360451, 45.004314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239365, 33.199524, 44.934399>,  <35.512280, 32.931313, 44.817871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239365, 33.199524, 44.934399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513194, -0.155477, -0.844073,
		-0.520685, -0.725405, 0.450194,
		-0.682289, 0.670533, 0.291319,
		35.034679, 33.400684, 45.021793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845287, 32.717255, 44.754223>,  <35.512280, 32.931313, 44.817871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845287, 32.717255, 44.754223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723953, 33.093830, 44.813133>,  <34.651154, 33.319775, 44.848480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723953, 33.093830, 44.813133>,  <34.845287, 32.717255, 44.754223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723953, 33.093830, 44.813133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620516, -0.077860, -0.780319,
		-0.723152, -0.328083, 0.607793,
		-0.303332, 0.941435, 0.147276,
		34.632954, 33.376259, 44.857315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028152, 32.736652, 44.652451>,  <34.845287, 32.717255, 44.754223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028152, 32.736652, 44.652451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183437, 33.100674, 44.594360>,  <34.276608, 33.319088, 44.559505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183437, 33.100674, 44.594360>,  <34.028152, 32.736652, 44.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183437, 33.100674, 44.594360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576361, 0.116801, -0.808805,
		-0.719094, 0.397691, 0.569864,
		0.388215, 0.910055, -0.145223,
		34.299900, 33.373692, 44.550793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463818, 33.237041, 44.585419>,  <34.028152, 32.736652, 44.652451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463818, 33.237041, 44.585419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786686, 33.368359, 44.389175>,  <33.980408, 33.447147, 44.271431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786686, 33.368359, 44.389175>,  <33.463818, 33.237041, 44.585419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786686, 33.368359, 44.389175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554157, 0.134996, -0.821393,
		-0.203427, 0.934880, 0.290890,
		0.807173, 0.328292, -0.490608,
		34.028839, 33.466846, 44.241993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178173, 33.820133, 44.179039>,  <33.463818, 33.237041, 44.585419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178173, 33.820133, 44.179039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534412, 33.750912, 44.010811>,  <33.748158, 33.709381, 43.909874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534412, 33.750912, 44.010811>,  <33.178173, 33.820133, 44.179039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534412, 33.750912, 44.010811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385423, 0.203694, -0.899977,
		0.241411, 0.963619, 0.114712,
		0.890601, -0.173052, -0.420575,
		33.801594, 33.698997, 43.884640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131142, 34.215866, 43.570179>,  <33.178173, 33.820133, 44.179039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131142, 34.215866, 43.570179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445221, 33.979500, 43.496105>,  <33.633667, 33.837681, 43.451660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.445221, 33.979500, 43.496105>,  <33.131142, 34.215866, 43.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445221, 33.979500, 43.496105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115723, 0.153761, -0.981308,
		0.608341, 0.791947, 0.052351,
		0.785194, -0.590912, -0.185186,
		33.680779, 33.802227, 43.440548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496361, 34.656769, 42.964642>,  <33.131142, 34.215866, 43.570179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496361, 34.656769, 42.964642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550510, 34.260471, 42.968525>,  <33.583000, 34.022694, 42.970856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550510, 34.260471, 42.968525>,  <33.496361, 34.656769, 42.964642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550510, 34.260471, 42.968525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223017, -0.040017, -0.973993,
		0.965369, 0.129687, -0.226371,
		0.135373, -0.990747, 0.009709,
		33.591122, 33.963245, 42.971439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921692, 34.566559, 42.400509>,  <33.496361, 34.656769, 42.964642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921692, 34.566559, 42.400509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766022, 34.206417, 42.478390>,  <33.672619, 33.990334, 42.525120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766022, 34.206417, 42.478390>,  <33.921692, 34.566559, 42.400509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766022, 34.206417, 42.478390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084701, -0.175496, -0.980830,
		0.917263, -0.398203, -0.007963,
		-0.389171, -0.900353, 0.194704,
		33.649269, 33.936310, 42.536800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096428, 34.145908, 41.871376>,  <33.921692, 34.566559, 42.400509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096428, 34.145908, 41.871376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789116, 33.933197, 42.013905>,  <33.604729, 33.805573, 42.099422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789116, 33.933197, 42.013905>,  <34.096428, 34.145908, 41.871376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789116, 33.933197, 42.013905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283534, -0.216363, -0.934235,
		0.573899, -0.818780, 0.015450,
		-0.768276, -0.531776, 0.356323,
		33.558632, 33.773663, 42.120800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107872, 33.568214, 41.333282>,  <34.096428, 34.145908, 41.871376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107872, 33.568214, 41.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757187, 33.560612, 41.525536>,  <33.546776, 33.556049, 41.640888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757187, 33.560612, 41.525536>,  <34.107872, 33.568214, 41.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757187, 33.560612, 41.525536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472376, -0.154465, -0.867757,
		0.090733, -0.987815, 0.126444,
		-0.876715, -0.019005, 0.480635,
		33.494171, 33.554913, 41.669727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784554, 32.943481, 41.108223>,  <34.107872, 33.568214, 41.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784554, 32.943481, 41.108223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506218, 33.196163, 41.244904>,  <33.339218, 33.347775, 41.326912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506218, 33.196163, 41.244904>,  <33.784554, 32.943481, 41.108223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506218, 33.196163, 41.244904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436294, 0.006121, -0.899783,
		-0.570492, -0.775182, 0.271352,
		-0.695834, 0.631708, 0.341700,
		33.297466, 33.385677, 41.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217236, 32.708141, 40.920830>,  <33.784554, 32.943481, 41.108223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217236, 32.708141, 40.920830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121506, 33.091831, 40.980980>,  <33.064068, 33.322044, 41.017071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121506, 33.091831, 40.980980>,  <33.217236, 32.708141, 40.920830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121506, 33.091831, 40.980980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371758, 0.052546, -0.926841,
		-0.896950, -0.277721, 0.344023,
		-0.239326, 0.959224, 0.150376,
		33.049709, 33.379597, 41.026093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584782, 32.775959, 40.629799>,  <33.217236, 32.708141, 40.920830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584782, 32.775959, 40.629799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714375, 33.151859, 40.673458>,  <32.792130, 33.377399, 40.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714375, 33.151859, 40.673458>,  <32.584782, 32.775959, 40.629799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714375, 33.151859, 40.673458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457792, 0.256688, -0.851198,
		-0.827926, 0.225806, 0.513371,
		0.323982, 0.939746, 0.109147,
		32.811569, 33.433784, 40.706203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007633, 33.172192, 40.407604>,  <32.584782, 32.775959, 40.629799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007633, 33.172192, 40.407604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329914, 33.408642, 40.392509>,  <32.523281, 33.550510, 40.383453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329914, 33.408642, 40.392509>,  <32.007633, 33.172192, 40.407604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329914, 33.408642, 40.392509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259767, 0.295374, -0.919388,
		-0.532328, 0.750551, 0.391537,
		0.805697, 0.591124, -0.037732,
		32.571625, 33.585979, 40.381191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661310, 33.784836, 40.195019>,  <32.007633, 33.172192, 40.407604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661310, 33.784836, 40.195019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052139, 33.763973, 40.112450>,  <32.286636, 33.751457, 40.062908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052139, 33.763973, 40.112450>,  <31.661310, 33.784836, 40.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052139, 33.763973, 40.112450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197154, 0.144404, -0.969679,
		0.080380, 0.988144, 0.130811,
		0.977072, -0.052152, -0.206423,
		32.345261, 33.748329, 40.050522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687128, 34.288715, 39.722393>,  <31.661310, 33.784836, 40.195019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687128, 34.288715, 39.722393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012676, 34.059830, 39.682018>,  <32.208004, 33.922497, 39.657795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012676, 34.059830, 39.682018>,  <31.687128, 34.288715, 39.722393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012676, 34.059830, 39.682018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033130, 0.127729, -0.991256,
		0.580101, 0.810097, 0.084997,
		0.813870, -0.572213, -0.100934,
		32.256836, 33.888165, 39.651737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084671, 34.638977, 39.332077>,  <31.687128, 34.288715, 39.722393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084671, 34.638977, 39.332077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202003, 34.259636, 39.283760>,  <32.272404, 34.032032, 39.254768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202003, 34.259636, 39.283760>,  <32.084671, 34.638977, 39.332077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202003, 34.259636, 39.283760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150913, 0.078832, -0.985399,
		0.944024, 0.307280, -0.119994,
		0.293334, -0.948348, -0.120792,
		32.290005, 33.975132, 39.247524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467358, 34.674282, 38.701305>,  <32.084671, 34.638977, 39.332077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467358, 34.674282, 38.701305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363636, 34.292171, 38.758179>,  <32.301403, 34.062904, 38.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363636, 34.292171, 38.758179>,  <32.467358, 34.674282, 38.701305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363636, 34.292171, 38.758179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134948, -0.181607, -0.974068,
		0.956320, -0.233397, 0.176004,
		-0.259308, -0.955272, 0.142179,
		32.285843, 34.005589, 38.800831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916676, 34.418404, 38.256050>,  <32.467358, 34.674282, 38.701305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916676, 34.418404, 38.256050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655495, 34.122616, 38.321590>,  <32.498787, 33.945145, 38.360916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655495, 34.122616, 38.321590>,  <32.916676, 34.418404, 38.256050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655495, 34.122616, 38.321590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079867, -0.282348, -0.955982,
		0.753179, -0.611121, 0.243418,
		-0.652949, -0.739466, 0.163850,
		32.459610, 33.900776, 38.370747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217033, 33.870907, 37.944191>,  <32.916676, 34.418404, 38.256050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217033, 33.870907, 37.944191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840717, 33.739262, 37.976704>,  <32.614929, 33.660275, 37.996212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840717, 33.739262, 37.976704>,  <33.217033, 33.870907, 37.944191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840717, 33.739262, 37.976704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037936, -0.340475, -0.939488,
		0.336870, -0.880774, 0.332799,
		-0.940787, -0.329110, 0.081283,
		32.558483, 33.640530, 38.001087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191772, 33.134449, 37.753258>,  <33.217033, 33.870907, 37.944191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191772, 33.134449, 37.753258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830334, 33.297218, 37.699711>,  <32.613468, 33.394878, 37.667583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830334, 33.297218, 37.699711>,  <33.191772, 33.134449, 37.753258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830334, 33.297218, 37.699711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055338, -0.198993, -0.978437,
		-0.424786, -0.891525, 0.157292,
		-0.903601, 0.406922, -0.133865,
		32.559254, 33.419296, 37.659550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903679, 33.291004, 37.750031>,  <33.191772, 33.134449, 37.753258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903679, 33.291004, 37.750031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200428, 33.352009, 37.488842>,  <34.378479, 33.388611, 37.332130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200428, 33.352009, 37.488842>,  <33.903679, 33.291004, 37.750031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200428, 33.352009, 37.488842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635833, 0.149241, 0.757261,
		0.212939, -0.976969, 0.013748,
		0.741872, 0.152509, -0.652968,
		34.422989, 33.397762, 37.292953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446541, 32.759575, 37.773880>,  <33.903679, 33.291004, 37.750031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446541, 32.759575, 37.773880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619965, 33.102180, 37.661873>,  <34.724018, 33.307743, 37.594669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619965, 33.102180, 37.661873>,  <34.446541, 32.759575, 37.773880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619965, 33.102180, 37.661873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782638, -0.203885, 0.588140,
		0.446659, -0.474146, -0.758737,
		0.433559, 0.856514, -0.280017,
		34.750034, 33.359135, 37.577869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139832, 32.637234, 37.647743>,  <34.446541, 32.759575, 37.773880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139832, 32.637234, 37.647743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133919, 33.033512, 37.701847>,  <35.130371, 33.271278, 37.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133919, 33.033512, 37.701847>,  <35.139832, 32.637234, 37.647743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133919, 33.033512, 37.701847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713731, -0.084284, 0.695331,
		0.700264, 0.106816, -0.705847,
		-0.014780, 0.990700, 0.135259,
		35.129486, 33.330723, 37.742424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834038, 32.770069, 37.848499>,  <35.139832, 32.637234, 37.647743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834038, 32.770069, 37.848499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636269, 33.087021, 37.991432>,  <35.517609, 33.277191, 38.077194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636269, 33.087021, 37.991432>,  <35.834038, 32.770069, 37.848499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636269, 33.087021, 37.991432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641840, 0.055580, 0.764822,
		0.586167, 0.607494, -0.536059,
		-0.494419, 0.792377, 0.357335,
		35.487942, 33.324734, 38.098633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260948, 32.866318, 38.273270>,  <35.834038, 32.770069, 37.848499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260948, 32.866318, 38.273270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963242, 33.115955, 38.368404>,  <35.784618, 33.265739, 38.425488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963242, 33.115955, 38.368404>,  <36.260948, 32.866318, 38.273270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963242, 33.115955, 38.368404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359965, 0.074874, 0.929957,
		0.562576, 0.777750, -0.280380,
		-0.744267, 0.624098, 0.237840,
		35.739960, 33.303185, 38.439758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668114, 33.450363, 38.678116>,  <36.260948, 32.866318, 38.273270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668114, 33.450363, 38.678116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284931, 33.471928, 38.790833>,  <36.055019, 33.484867, 38.858463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284931, 33.471928, 38.790833>,  <36.668114, 33.450363, 38.678116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284931, 33.471928, 38.790833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281880, -0.006149, 0.959430,
		0.053457, 0.998527, -0.009306,
		-0.957959, 0.053912, 0.281793,
		35.997543, 33.488102, 38.875370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563610, 34.026047, 39.084480>,  <36.668114, 33.450363, 38.678116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563610, 34.026047, 39.084480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270050, 33.782738, 39.205406>,  <36.093914, 33.636753, 39.277962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270050, 33.782738, 39.205406>,  <36.563610, 34.026047, 39.084480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270050, 33.782738, 39.205406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313206, 0.091893, 0.945229,
		-0.602738, 0.788390, 0.123074,
		-0.733900, -0.608273, 0.302316,
		36.049881, 33.600254, 39.296101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358471, 34.303886, 39.626045>,  <36.563610, 34.026047, 39.084480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358471, 34.303886, 39.626045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186394, 33.947300, 39.682922>,  <36.083145, 33.733349, 39.717049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186394, 33.947300, 39.682922>,  <36.358471, 34.303886, 39.626045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186394, 33.947300, 39.682922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188107, 0.065534, 0.979960,
		-0.882919, 0.448323, 0.139499,
		-0.430197, -0.891466, 0.142194,
		36.057335, 33.679859, 39.725582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870239, 34.356071, 40.223778>,  <36.358471, 34.303886, 39.626045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870239, 34.356071, 40.223778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990475, 33.978321, 40.170403>,  <36.062618, 33.751671, 40.138378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990475, 33.978321, 40.170403>,  <35.870239, 34.356071, 40.223778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990475, 33.978321, 40.170403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278547, -0.046879, 0.959278,
		-0.912171, -0.325520, 0.248961,
		0.300593, -0.944372, -0.133435,
		36.080654, 33.695011, 40.130371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663773, 33.981403, 40.801434>,  <35.870239, 34.356071, 40.223778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663773, 33.981403, 40.801434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939663, 33.722340, 40.671932>,  <36.105198, 33.566902, 40.594231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939663, 33.722340, 40.671932>,  <35.663773, 33.981403, 40.801434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939663, 33.722340, 40.671932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327818, -0.119368, 0.937169,
		-0.645612, -0.752522, 0.129984,
		0.689725, -0.647659, -0.323756,
		36.146580, 33.528042, 40.574806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648624, 33.353359, 41.224979>,  <35.663773, 33.981403, 40.801434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648624, 33.353359, 41.224979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017921, 33.371944, 41.072422>,  <36.239498, 33.383095, 40.980888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017921, 33.371944, 41.072422>,  <35.648624, 33.353359, 41.224979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017921, 33.371944, 41.072422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383386, -0.046221, 0.922431,
		0.025231, -0.997850, -0.060487,
		0.923244, 0.046463, -0.381396,
		36.294895, 33.385883, 40.958004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047981, 32.865974, 41.629284>,  <35.648624, 33.353359, 41.224979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047981, 32.865974, 41.629284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309185, 33.113041, 41.453983>,  <36.465908, 33.261280, 41.348801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309185, 33.113041, 41.453983>,  <36.047981, 32.865974, 41.629284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309185, 33.113041, 41.453983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552652, 0.007038, 0.833382,
		0.517838, -0.786407, -0.336760,
		0.653008, 0.617668, -0.438254,
		36.505089, 33.298340, 41.322506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682667, 32.596287, 41.746155>,  <36.047981, 32.865974, 41.629284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682667, 32.596287, 41.746155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731586, 32.988106, 41.682243>,  <36.760937, 33.223198, 41.643894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731586, 32.988106, 41.682243>,  <36.682667, 32.596287, 41.746155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731586, 32.988106, 41.682243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527797, 0.072152, 0.846300,
		0.840520, -0.187831, -0.508179,
		0.122295, 0.979548, -0.159782,
		36.768276, 33.281971, 41.634308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351730, 32.640549, 41.745731>,  <36.682667, 32.596287, 41.746155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351730, 32.640549, 41.745731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207058, 33.006927, 41.815269>,  <37.120255, 33.226757, 41.856991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207058, 33.006927, 41.815269>,  <37.351730, 32.640549, 41.745731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207058, 33.006927, 41.815269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546031, 0.056979, 0.835825,
		0.755668, 0.397228, -0.520745,
		-0.361684, 0.915950, 0.173842,
		37.098553, 33.281712, 41.867420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944263, 33.254200, 41.910812>,  <37.351730, 32.640549, 41.745731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944263, 33.254200, 41.910812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588478, 33.324039, 42.079746>,  <37.375008, 33.365944, 42.181107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588478, 33.324039, 42.079746>,  <37.944263, 33.254200, 41.910812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588478, 33.324039, 42.079746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433574, 0.030339, 0.900607,
		0.144431, 0.984172, -0.102686,
		-0.889468, 0.174597, 0.422330,
		37.321636, 33.376419, 42.206444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 33.609833, 42.510185>,  <37.944263, 33.254200, 41.910812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199314, 33.609833, 42.510185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816967, 33.525833, 42.592377>,  <37.587559, 33.475433, 42.641689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816967, 33.525833, 42.592377>,  <38.199314, 33.609833, 42.510185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816967, 33.525833, 42.592377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238914, -0.148540, 0.959612,
		-0.170999, 0.966352, 0.192157,
		-0.955866, -0.210002, 0.205475,
		37.530209, 33.462833, 42.654018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168865, 33.900505, 43.124153>,  <38.199314, 33.609833, 42.510185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168865, 33.900505, 43.124153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844738, 33.666115, 43.122303>,  <37.650261, 33.525482, 43.121193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.844738, 33.666115, 43.122303>,  <38.168865, 33.900505, 43.124153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844738, 33.666115, 43.122303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075520, -0.112250, 0.990806,
		-0.581108, 0.802516, 0.135211,
		-0.810315, -0.585976, -0.004624,
		37.601643, 33.490322, 43.120914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723778, 34.116459, 43.660339>,  <38.168865, 33.900505, 43.124153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723778, 34.116459, 43.660339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634720, 33.736664, 43.571888>,  <37.581287, 33.508785, 43.518818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634720, 33.736664, 43.571888>,  <37.723778, 34.116459, 43.660339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634720, 33.736664, 43.571888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002028, -0.226369, 0.974040,
		-0.974898, 0.217311, 0.048473,
		-0.222642, -0.949491, -0.221128,
		37.567928, 33.451817, 43.505550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267796, 34.009998, 44.122818>,  <37.723778, 34.116459, 43.660339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267796, 34.009998, 44.122818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305092, 33.622936, 44.029053>,  <37.327469, 33.390697, 43.972794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305092, 33.622936, 44.029053>,  <37.267796, 34.009998, 44.122818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305092, 33.622936, 44.029053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177417, -0.247822, 0.952422,
		-0.979709, -0.047216, -0.194785,
		0.093242, -0.967654, -0.234416,
		37.333065, 33.332642, 43.958729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646034, 33.643875, 44.272381>,  <37.267796, 34.009998, 44.122818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646034, 33.643875, 44.272381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952530, 33.386925, 44.278545>,  <37.136425, 33.232754, 44.282246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952530, 33.386925, 44.278545>,  <36.646034, 33.643875, 44.272381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952530, 33.386925, 44.278545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208487, -0.225857, 0.951589,
		-0.607797, -0.732354, -0.306987,
		0.766235, -0.642376, 0.015411,
		37.182400, 33.194214, 44.283169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471096, 33.118862, 44.664402>,  <36.646034, 33.643875, 44.272381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471096, 33.118862, 44.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866302, 33.057411, 44.658508>,  <37.103428, 33.020542, 44.654972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866302, 33.057411, 44.658508>,  <36.471096, 33.118862, 44.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866302, 33.057411, 44.658508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010375, -0.029157, 0.999521,
		-0.153980, -0.987699, -0.027214,
		0.988019, -0.153624, -0.014737,
		37.162708, 33.011326, 44.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633640, 32.709564, 45.260254>,  <36.471096, 33.118862, 44.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633640, 32.709564, 45.260254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991043, 32.876144, 45.193069>,  <37.205486, 32.976093, 45.152760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991043, 32.876144, 45.193069>,  <36.633640, 32.709564, 45.260254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991043, 32.876144, 45.193069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125168, 0.128244, 0.983812,
		0.431245, -0.900070, 0.062462,
		0.893510, 0.416446, -0.167964,
		37.259098, 33.001080, 45.142681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067406, 32.297165, 45.759842>,  <36.633640, 32.709564, 45.260254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067406, 32.297165, 45.759842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259521, 32.631386, 45.653130>,  <37.374790, 32.831921, 45.589104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259521, 32.631386, 45.653130>,  <37.067406, 32.297165, 45.759842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259521, 32.631386, 45.653130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374276, 0.079842, 0.923874,
		0.793248, -0.543575, -0.274381,
		0.480287, 0.835555, -0.266782,
		37.403606, 32.882053, 45.573093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761555, 32.161362, 45.855644>,  <37.067406, 32.297165, 45.759842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761555, 32.161362, 45.855644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685207, 32.553951, 45.862434>,  <37.639400, 32.789505, 45.866508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685207, 32.553951, 45.862434>,  <37.761555, 32.161362, 45.855644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685207, 32.553951, 45.862434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285916, 0.039040, 0.957459,
		0.939054, 0.187601, -0.288069,
		-0.190866, 0.981469, 0.016978,
		37.627949, 32.848392, 45.867527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220680, 32.461445, 46.415440>,  <37.761555, 32.161362, 45.855644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220680, 32.461445, 46.415440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985641, 32.781837, 46.369549>,  <37.844616, 32.974072, 46.342014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985641, 32.781837, 46.369549>,  <38.220680, 32.461445, 46.415440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985641, 32.781837, 46.369549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277645, 0.332766, 0.901210,
		0.760026, 0.497698, -0.417920,
		-0.587600, 0.800977, -0.114727,
		37.809361, 33.022129, 46.335129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576618, 32.981148, 46.781033>,  <38.220680, 32.461445, 46.415440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576618, 32.981148, 46.781033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207630, 33.128834, 46.735912>,  <37.986237, 33.217445, 46.708839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207630, 33.128834, 46.735912>,  <38.576618, 32.981148, 46.781033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207630, 33.128834, 46.735912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053948, 0.412596, 0.909316,
		0.382270, 0.832735, -0.400527,
		-0.922475, 0.369211, -0.112799,
		37.930889, 33.239597, 46.702072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605011, 33.675091, 47.148975>,  <38.576618, 32.981148, 46.781033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605011, 33.675091, 47.148975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222191, 33.562309, 47.121952>,  <37.992500, 33.494640, 47.105740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222191, 33.562309, 47.121952>,  <38.605011, 33.675091, 47.148975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222191, 33.562309, 47.121952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202279, 0.482388, 0.852282,
		-0.207713, 0.829339, -0.518701,
		-0.957046, -0.281953, -0.067560,
		37.935078, 33.477722, 47.101685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182159, 34.218143, 47.093266>,  <38.605011, 33.675091, 47.148975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182159, 34.218143, 47.093266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978043, 33.914265, 47.254490>,  <37.855572, 33.731937, 47.351223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978043, 33.914265, 47.254490>,  <38.182159, 34.218143, 47.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978043, 33.914265, 47.254490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112694, 0.523704, 0.844414,
		-0.852585, 0.385475, -0.352856,
		-0.510292, -0.759699, 0.403062,
		37.824955, 33.686356, 47.375408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621445, 34.553661, 47.368343>,  <38.182159, 34.218143, 47.093266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621445, 34.553661, 47.368343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667179, 34.211533, 47.570477>,  <37.694618, 34.006256, 47.691757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667179, 34.211533, 47.570477>,  <37.621445, 34.553661, 47.368343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667179, 34.211533, 47.570477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041415, 0.504118, 0.862641,
		-0.992579, -0.119558, 0.022215,
		0.114334, -0.855319, 0.505328,
		37.701481, 33.954937, 47.722076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017979, 34.514473, 47.828121>,  <37.621445, 34.553661, 47.368343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017979, 34.514473, 47.828121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328831, 34.307133, 47.970879>,  <37.515343, 34.182728, 48.056534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328831, 34.307133, 47.970879>,  <37.017979, 34.514473, 47.828121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328831, 34.307133, 47.970879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195799, 0.339809, 0.919887,
		-0.598102, -0.784755, 0.162584,
		0.777134, -0.518352, 0.356894,
		37.561970, 34.151627, 48.077946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839954, 34.487137, 48.551060>,  <37.017979, 34.514473, 47.828121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839954, 34.487137, 48.551060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218193, 34.357166, 48.557720>,  <37.445137, 34.279186, 48.561718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218193, 34.357166, 48.557720>,  <36.839954, 34.487137, 48.551060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218193, 34.357166, 48.557720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075531, 0.269030, 0.960166,
		-0.316461, -0.906668, 0.278934,
		0.945593, -0.324924, 0.016656,
		37.501873, 34.259689, 48.562717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885662, 34.114689, 49.201527>,  <36.839954, 34.487137, 48.551060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885662, 34.114689, 49.201527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257042, 34.224197, 49.101105>,  <37.479870, 34.289902, 49.040852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257042, 34.224197, 49.101105>,  <36.885662, 34.114689, 49.201527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257042, 34.224197, 49.101105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194586, 0.217257, 0.956523,
		0.316416, -0.936935, 0.148439,
		0.928449, 0.273774, -0.251058,
		37.535576, 34.306328, 49.025787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268402, 34.057655, 49.805511>,  <36.885662, 34.114689, 49.201527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268402, 34.057655, 49.805511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538219, 34.262783, 49.593090>,  <37.700108, 34.385860, 49.465637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538219, 34.262783, 49.593090>,  <37.268402, 34.057655, 49.805511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538219, 34.262783, 49.593090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390442, 0.362690, 0.846174,
		0.626537, -0.778124, 0.044425,
		0.674541, 0.512814, -0.531051,
		37.740582, 34.416626, 49.433773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913090, 33.968792, 50.166870>,  <37.268402, 34.057655, 49.805511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913090, 33.968792, 50.166870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938160, 34.301300, 49.945938>,  <37.953201, 34.500805, 49.813377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938160, 34.301300, 49.945938>,  <37.913090, 33.968792, 50.166870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938160, 34.301300, 49.945938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274662, 0.517684, 0.810287,
		0.959496, -0.202486, -0.195873,
		0.062672, 0.831266, -0.552331,
		37.956963, 34.550678, 49.780239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473373, 34.282299, 50.386642>,  <37.913090, 33.968792, 50.166870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473373, 34.282299, 50.386642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266560, 34.566174, 50.195217>,  <38.142471, 34.736496, 50.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266560, 34.566174, 50.195217>,  <38.473373, 34.282299, 50.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266560, 34.566174, 50.195217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292643, 0.671961, 0.680314,
		0.804383, 0.211700, -0.555113,
		-0.517037, 0.709683, -0.478562,
		38.111450, 34.779079, 50.051647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930847, 34.793495, 50.128326>,  <38.473373, 34.282299, 50.386642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930847, 34.793495, 50.128326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570972, 34.964928, 50.161495>,  <38.355045, 35.067787, 50.181396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570972, 34.964928, 50.161495>,  <38.930847, 34.793495, 50.128326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570972, 34.964928, 50.161495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362051, 0.626476, 0.690252,
		0.243880, 0.651035, -0.718802,
		-0.899690, 0.428582, 0.082922,
		38.301067, 35.093502, 50.186371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125229, 35.463848, 50.136631>,  <38.930847, 34.793495, 50.128326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125229, 35.463848, 50.136631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753860, 35.435486, 50.282516>,  <38.531040, 35.418468, 50.370049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753860, 35.435486, 50.282516>,  <39.125229, 35.463848, 50.136631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753860, 35.435486, 50.282516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283128, 0.500620, 0.818058,
		-0.240584, 0.862759, -0.444710,
		-0.928417, -0.070901, 0.364712,
		38.475334, 35.414215, 50.391930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739876, 36.238613, 50.286385>,  <39.125229, 35.463848, 50.136631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739876, 36.238613, 50.286385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647923, 35.930683, 50.524555>,  <38.592751, 35.745926, 50.667458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647923, 35.930683, 50.524555>,  <38.739876, 36.238613, 50.286385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647923, 35.930683, 50.524555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155357, 0.574936, 0.803313,
		-0.960738, 0.277173, -0.012572,
		-0.229885, -0.769820, 0.595424,
		38.578957, 35.699738, 50.703182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748753, 36.730175, 50.861252>,  <38.739876, 36.238613, 50.286385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748753, 36.730175, 50.861252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 37.041046, 50.808853>,  <39.142670, 37.227570, 50.777416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 37.041046, 50.808853>,  <38.748753, 36.730175, 50.861252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994949, 37.041046, 50.808853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501699, 0.258168, -0.825620,
		-0.607834, 0.573886, 0.548810,
		0.615496, 0.777177, -0.130995,
		39.179600, 37.274200, 50.769554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322811, 37.240070, 50.723618>,  <38.748753, 36.730175, 50.861252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322811, 37.240070, 50.723618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684093, 37.343231, 50.586380>,  <38.900864, 37.405128, 50.504036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684093, 37.343231, 50.586380>,  <38.322811, 37.240070, 50.723618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684093, 37.343231, 50.586380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425460, 0.432432, -0.794976,
		-0.056658, 0.863997, 0.500299,
		0.903202, 0.257899, -0.343095,
		38.955055, 37.420601, 50.483452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341019, 37.934025, 50.490940>,  <38.322811, 37.240070, 50.723618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341019, 37.934025, 50.490940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615734, 37.732822, 50.281059>,  <38.780563, 37.612103, 50.155128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615734, 37.732822, 50.281059>,  <38.341019, 37.934025, 50.490940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615734, 37.732822, 50.281059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423039, 0.310408, -0.851284,
		0.591071, 0.806619, 0.000394,
		0.686785, -0.503003, -0.524705,
		38.821770, 37.581921, 50.123650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387997, 38.290539, 49.836788>,  <38.341019, 37.934025, 50.490940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387997, 38.290539, 49.836788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589878, 37.956097, 49.750801>,  <38.711006, 37.755432, 49.699211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589878, 37.956097, 49.750801>,  <38.387997, 38.290539, 49.836788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589878, 37.956097, 49.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270671, 0.083194, -0.959070,
		0.819766, 0.542227, -0.184321,
		0.504700, -0.836103, -0.214965,
		38.741287, 37.705265, 49.686310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771301, 38.361496, 49.137032>,  <38.387997, 38.290539, 49.836788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771301, 38.361496, 49.137032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751057, 37.968651, 49.209583>,  <38.738911, 37.732944, 49.253113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751057, 37.968651, 49.209583>,  <38.771301, 38.361496, 49.137032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751057, 37.968651, 49.209583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209732, -0.167110, -0.963372,
		0.976448, -0.086797, -0.197523,
		-0.050609, -0.982110, 0.181379,
		38.735874, 37.674019, 49.263996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154224, 38.044449, 48.563721>,  <38.771301, 38.361496, 49.137032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154224, 38.044449, 48.563721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939602, 37.738079, 48.705410>,  <38.810829, 37.554256, 48.790424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939602, 37.738079, 48.705410>,  <39.154224, 38.044449, 48.563721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939602, 37.738079, 48.705410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254136, -0.253615, -0.933325,
		0.804690, -0.590799, -0.058571,
		-0.536553, -0.765922, 0.354224,
		38.778637, 37.508301, 48.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218170, 37.498016, 48.087448>,  <39.154224, 38.044449, 48.563721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218170, 37.498016, 48.087448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880764, 37.406055, 48.281616>,  <38.678322, 37.350880, 48.398117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880764, 37.406055, 48.281616>,  <39.218170, 37.498016, 48.087448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880764, 37.406055, 48.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372728, -0.400174, -0.837218,
		0.386735, -0.887132, 0.251858,
		-0.843511, -0.229906, 0.485420,
		38.627712, 37.337082, 48.427242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985939, 36.935398, 47.749668>,  <39.218170, 37.498016, 48.087448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985939, 36.935398, 47.749668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671188, 37.063206, 47.960846>,  <38.482338, 37.139889, 48.087555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671188, 37.063206, 47.960846>,  <38.985939, 36.935398, 47.749668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671188, 37.063206, 47.960846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612598, -0.301213, -0.730750,
		-0.074463, -0.898431, 0.432754,
		-0.786880, 0.319518, 0.527948,
		38.435123, 37.159061, 48.119232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565598, 36.311153, 47.759945>,  <38.985939, 36.935398, 47.749668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565598, 36.311153, 47.759945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340267, 36.635101, 47.825397>,  <38.205070, 36.829472, 47.864670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340267, 36.635101, 47.825397>,  <38.565598, 36.311153, 47.759945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340267, 36.635101, 47.825397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575154, -0.242192, -0.781371,
		-0.593180, -0.534277, 0.602234,
		-0.563325, 0.809871, 0.163628,
		38.171268, 36.878063, 47.874485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874405, 36.060394, 47.858906>,  <38.565598, 36.311153, 47.759945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874405, 36.060394, 47.858906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849636, 36.431690, 47.712185>,  <37.834774, 36.654469, 47.624153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849636, 36.431690, 47.712185>,  <37.874405, 36.060394, 47.858906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849636, 36.431690, 47.712185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567271, -0.335110, -0.752266,
		-0.821200, 0.161497, 0.547311,
		-0.061921, 0.928235, -0.366805,
		37.831059, 36.710159, 47.602142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249107, 36.179516, 47.681595>,  <37.874405, 36.060394, 47.858906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249107, 36.179516, 47.681595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402191, 36.472599, 47.456501>,  <37.494041, 36.648449, 47.321445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402191, 36.472599, 47.456501>,  <37.249107, 36.179516, 47.681595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402191, 36.472599, 47.456501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505931, -0.343440, -0.791254,
		-0.773022, 0.587530, 0.239260,
		0.382713, 0.732706, -0.562737,
		37.517006, 36.692410, 47.287682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769356, 36.448685, 47.303825>,  <37.249107, 36.179516, 47.681595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769356, 36.448685, 47.303825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056496, 36.600407, 47.070305>,  <37.228779, 36.691441, 46.930191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056496, 36.600407, 47.070305>,  <36.769356, 36.448685, 47.303825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056496, 36.600407, 47.070305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492652, -0.315753, -0.810922,
		-0.491925, 0.869727, -0.039796,
		0.717847, 0.379307, -0.583800,
		37.271851, 36.714199, 46.895164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451809, 36.884140, 46.771400>,  <36.769356, 36.448685, 47.303825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451809, 36.884140, 46.771400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813503, 36.800964, 46.622200>,  <37.030518, 36.751060, 46.532681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813503, 36.800964, 46.622200>,  <36.451809, 36.884140, 46.771400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813503, 36.800964, 46.622200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412153, -0.196306, -0.889715,
		0.111783, 0.958241, -0.263208,
		0.904231, -0.207937, -0.372999,
		37.084774, 36.738583, 46.510300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386284, 37.171925, 46.155632>,  <36.451809, 36.884140, 46.771400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386284, 37.171925, 46.155632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682388, 36.903542, 46.138523>,  <36.860050, 36.742512, 46.128258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682388, 36.903542, 46.138523>,  <36.386284, 37.171925, 46.155632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682388, 36.903542, 46.138523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239652, -0.203900, -0.949206,
		0.628151, 0.712914, -0.311735,
		0.740265, -0.670953, -0.042771,
		36.904469, 36.702255, 46.125690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557392, 37.203354, 45.426811>,  <36.386284, 37.171925, 46.155632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557392, 37.203354, 45.426811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749836, 36.873798, 45.546635>,  <36.865303, 36.676064, 45.618530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749836, 36.873798, 45.546635>,  <36.557392, 37.203354, 45.426811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749836, 36.873798, 45.546635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019911, -0.351886, -0.935831,
		0.876435, 0.444272, -0.185700,
		0.481109, -0.823892, 0.299559,
		36.894169, 36.626629, 45.636501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091370, 37.067295, 44.935486>,  <36.557392, 37.203354, 45.426811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091370, 37.067295, 44.935486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999210, 36.724125, 45.119171>,  <36.943913, 36.518223, 45.229382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.999210, 36.724125, 45.119171>,  <37.091370, 37.067295, 44.935486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999210, 36.724125, 45.119171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121083, -0.442966, -0.888324,
		0.965533, -0.260275, -0.001820,
		-0.230402, -0.857927, 0.459213,
		36.930088, 36.466747, 45.256935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351933, 36.613041, 44.537704>,  <37.091370, 37.067295, 44.935486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351933, 36.613041, 44.537704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129898, 36.368778, 44.763615>,  <36.996677, 36.222221, 44.899162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129898, 36.368778, 44.763615>,  <37.351933, 36.613041, 44.537704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129898, 36.368778, 44.763615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146450, -0.596632, -0.789039,
		0.818797, -0.520699, 0.241753,
		-0.555089, -0.610658, 0.564776,
		36.963371, 36.185581, 44.933048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695133, 35.939919, 44.432758>,  <37.351933, 36.613041, 44.537704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695133, 35.939919, 44.432758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312973, 35.913071, 44.547791>,  <37.083675, 35.896961, 44.616810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.312973, 35.913071, 44.547791>,  <37.695133, 35.939919, 44.432758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312973, 35.913071, 44.547791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221205, -0.482500, -0.847503,
		0.195639, -0.873320, 0.446135,
		-0.955403, -0.067118, 0.287579,
		37.026352, 35.892937, 44.634064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507942, 35.304226, 44.274155>,  <37.695133, 35.939919, 44.432758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507942, 35.304226, 44.274155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155701, 35.493607, 44.281975>,  <36.944355, 35.607235, 44.286667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155701, 35.493607, 44.281975>,  <37.507942, 35.304226, 44.274155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155701, 35.493607, 44.281975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196922, -0.328124, -0.923881,
		-0.431001, -0.817420, 0.382180,
		-0.880602, 0.473454, 0.019546,
		36.891521, 35.635643, 44.287838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100456, 34.808437, 44.044579>,  <37.507942, 35.304226, 44.274155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100456, 34.808437, 44.044579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893700, 35.147587, 43.997372>,  <36.769646, 35.351078, 43.969048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893700, 35.147587, 43.997372>,  <37.100456, 34.808437, 44.044579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893700, 35.147587, 43.997372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264546, -0.289326, -0.919949,
		-0.814150, -0.444290, 0.373852,
		-0.516890, 0.847878, -0.118019,
		36.738632, 35.401951, 43.961967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470360, 34.647434, 43.832275>,  <37.100456, 34.808437, 44.044579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470360, 34.647434, 43.832275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500420, 35.023304, 43.698795>,  <36.518456, 35.248825, 43.618706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500420, 35.023304, 43.698795>,  <36.470360, 34.647434, 43.832275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500420, 35.023304, 43.698795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115829, -0.324158, -0.938885,
		-0.990422, 0.109213, 0.084480,
		0.075154, 0.939678, -0.333703,
		36.522964, 35.305206, 43.598682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157558, 34.595795, 43.256542>,  <36.470360, 34.647434, 43.832275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157558, 34.595795, 43.256542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366783, 34.931995, 43.200020>,  <36.492317, 35.133717, 43.166107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366783, 34.931995, 43.200020>,  <36.157558, 34.595795, 43.256542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366783, 34.931995, 43.200020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147378, -0.252490, -0.956310,
		-0.839453, 0.479388, -0.255940,
		0.523066, 0.840497, -0.141302,
		36.523705, 35.184143, 43.157631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907398, 34.946606, 42.738102>,  <36.157558, 34.595795, 43.256542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907398, 34.946606, 42.738102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290207, 35.062531, 42.742504>,  <36.519894, 35.132084, 42.745144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290207, 35.062531, 42.742504>,  <35.907398, 34.946606, 42.738102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290207, 35.062531, 42.742504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119493, -0.359443, -0.925485,
		-0.264261, 0.887023, -0.378625,
		0.957020, 0.289812, 0.011006,
		36.577312, 35.149475, 42.745808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981987, 35.269630, 42.103592>,  <35.907398, 34.946606, 42.738102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981987, 35.269630, 42.103592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367855, 35.245777, 42.206238>,  <36.599377, 35.231464, 42.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367855, 35.245777, 42.206238>,  <35.981987, 35.269630, 42.103592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367855, 35.245777, 42.206238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250399, -0.095317, -0.963439,
		0.081910, 0.993659, -0.077018,
		0.964671, -0.059630, 0.256619,
		36.657257, 35.227890, 42.283222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339245, 35.785774, 41.743095>,  <35.981987, 35.269630, 42.103592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339245, 35.785774, 41.743095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612659, 35.515472, 41.853470>,  <36.776707, 35.353291, 41.919693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612659, 35.515472, 41.853470>,  <36.339245, 35.785774, 41.743095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612659, 35.515472, 41.853470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319732, -0.062640, -0.945435,
		0.656164, 0.734463, 0.173243,
		0.683535, -0.675752, 0.275933,
		36.817719, 35.312748, 41.936249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930130, 36.099049, 41.521839>,  <36.339245, 35.785774, 41.743095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930130, 36.099049, 41.521839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028877, 35.713604, 41.562843>,  <37.088127, 35.482338, 41.587448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028877, 35.713604, 41.562843>,  <36.930130, 36.099049, 41.521839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028877, 35.713604, 41.562843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496540, 0.034942, -0.867311,
		0.832168, 0.265017, 0.487097,
		0.246872, -0.963610, 0.102514,
		37.102940, 35.424522, 41.593597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615967, 36.036423, 41.534798>,  <36.930130, 36.099049, 41.521839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615967, 36.036423, 41.534798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470749, 35.688934, 41.400024>,  <37.383617, 35.480442, 41.319160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470749, 35.688934, 41.400024>,  <37.615967, 36.036423, 41.534798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470749, 35.688934, 41.400024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452893, 0.151494, -0.878600,
		0.814301, -0.471565, 0.338439,
		-0.363046, -0.868721, -0.336930,
		37.361835, 35.428318, 41.298946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128517, 35.657047, 41.322060>,  <37.615967, 36.036423, 41.534798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128517, 35.657047, 41.322060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820377, 35.535835, 41.097652>,  <37.635494, 35.463108, 40.963009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820377, 35.535835, 41.097652>,  <38.128517, 35.657047, 41.322060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820377, 35.535835, 41.097652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570751, 0.064555, -0.818582,
		0.284268, -0.950793, 0.123223,
		-0.770347, -0.303026, -0.561017,
		37.589272, 35.444927, 40.929348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424618, 35.134789, 40.943398>,  <38.128517, 35.657047, 41.322060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424618, 35.134789, 40.943398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105591, 35.309338, 40.776802>,  <37.914173, 35.414066, 40.676846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105591, 35.309338, 40.776802>,  <38.424618, 35.134789, 40.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105591, 35.309338, 40.776802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504354, 0.103620, -0.857257,
		-0.330928, -0.893779, -0.302730,
		-0.797567, 0.436374, -0.416490,
		37.866322, 35.440250, 40.651855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541260, 35.043495, 40.302906>,  <38.424618, 35.134789, 40.943398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541260, 35.043495, 40.302906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247326, 35.311642, 40.261669>,  <38.070965, 35.472530, 40.236927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247326, 35.311642, 40.261669>,  <38.541260, 35.043495, 40.302906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247326, 35.311642, 40.261669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455845, 0.375587, -0.806933,
		-0.502222, -0.639954, -0.581577,
		-0.734833, 0.670368, -0.103091,
		38.026875, 35.512753, 40.230743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251392, 35.021778, 39.597576>,  <38.541260, 35.043495, 40.302906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251392, 35.021778, 39.597576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157192, 35.390881, 39.719597>,  <38.100670, 35.612343, 39.792809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157192, 35.390881, 39.719597>,  <38.251392, 35.021778, 39.597576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157192, 35.390881, 39.719597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325773, 0.370672, -0.869755,
		-0.915647, -0.105452, -0.387904,
		-0.235503, 0.922758, 0.305051,
		38.086540, 35.667709, 39.811111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139057, 35.352139, 39.031513>,  <38.251392, 35.021778, 39.597576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139057, 35.352139, 39.031513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196049, 35.664890, 39.274288>,  <38.230244, 35.852539, 39.419952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196049, 35.664890, 39.274288>,  <38.139057, 35.352139, 39.031513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196049, 35.664890, 39.274288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332476, 0.539755, -0.773385,
		-0.932287, 0.311982, -0.183051,
		0.142480, 0.781877, 0.606933,
		38.238792, 35.899452, 39.456367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792938, 35.912457, 38.666252>,  <38.139057, 35.352139, 39.031513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792938, 35.912457, 38.666252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038857, 36.065212, 38.942276>,  <38.186409, 36.156864, 39.107891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038857, 36.065212, 38.942276>,  <37.792938, 35.912457, 38.666252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038857, 36.065212, 38.942276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417220, 0.585021, -0.695469,
		-0.669291, 0.715481, 0.200340,
		0.614798, 0.381886, 0.690063,
		38.223297, 36.179779, 39.149296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770870, 36.565891, 38.435841>,  <37.792938, 35.912457, 38.666252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770870, 36.565891, 38.435841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075283, 36.560352, 38.695271>,  <38.257931, 36.557030, 38.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075283, 36.560352, 38.695271>,  <37.770870, 36.565891, 38.435841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075283, 36.560352, 38.695271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509219, 0.632159, -0.584013,
		-0.401912, 0.774715, 0.488143,
		0.761028, -0.013850, 0.648572,
		38.303593, 36.556198, 38.889843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977184, 37.322372, 38.666016>,  <37.770870, 36.565891, 38.435841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977184, 37.322372, 38.666016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290157, 37.074104, 38.686264>,  <38.477943, 36.925144, 38.698414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290157, 37.074104, 38.686264>,  <37.977184, 37.322372, 38.666016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290157, 37.074104, 38.686264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539830, 0.635508, -0.552009,
		0.310446, 0.459238, 0.832300,
		0.782436, -0.620670, 0.050620,
		38.524887, 36.887905, 38.701450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550430, 37.809669, 38.588020>,  <37.977184, 37.322372, 38.666016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550430, 37.809669, 38.588020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741455, 37.459480, 38.558403>,  <38.856071, 37.249367, 38.540634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741455, 37.459480, 38.558403>,  <38.550430, 37.809669, 38.588020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741455, 37.459480, 38.558403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765678, 0.456037, -0.453616,
		0.430892, 0.159942, 0.888117,
		0.477566, -0.875471, -0.074038,
		38.884724, 37.196838, 38.536190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259983, 37.922009, 38.775688>,  <38.550430, 37.809669, 38.588020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259983, 37.922009, 38.775688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261868, 37.590919, 38.551239>,  <39.263000, 37.392265, 38.416569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261868, 37.590919, 38.551239>,  <39.259983, 37.922009, 38.775688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261868, 37.590919, 38.551239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643988, 0.431792, -0.631534,
		0.765021, -0.358377, 0.535078,
		0.004715, -0.827721, -0.561120,
		39.263283, 37.342602, 38.382904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941051, 37.836086, 38.689404>,  <39.259983, 37.922009, 38.775688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941051, 37.836086, 38.689404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767818, 37.621098, 38.399971>,  <39.663879, 37.492104, 38.226311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767818, 37.621098, 38.399971>,  <39.941051, 37.836086, 38.689404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767818, 37.621098, 38.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741255, 0.244355, -0.625166,
		0.512816, -0.807106, 0.292574,
		-0.433083, -0.537467, -0.723580,
		39.637894, 37.459858, 38.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415642, 37.341652, 38.519875>,  <39.941051, 37.836086, 38.689404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415642, 37.341652, 38.519875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168175, 37.406612, 38.212399>,  <40.019695, 37.445587, 38.027912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168175, 37.406612, 38.212399>,  <40.415642, 37.341652, 38.519875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168175, 37.406612, 38.212399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781311, 0.229905, -0.580256,
		0.082491, -0.959568, -0.269120,
		-0.618667, 0.162400, -0.768685,
		39.982574, 37.455334, 37.981792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699184, 37.032120, 38.002010>,  <40.415642, 37.341652, 38.519875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699184, 37.032120, 38.002010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460606, 37.298443, 37.822697>,  <40.317459, 37.458237, 37.715111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460606, 37.298443, 37.822697>,  <40.699184, 37.032120, 38.002010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460606, 37.298443, 37.822697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782187, 0.356813, -0.510753,
		-0.180111, -0.655274, -0.733605,
		-0.596443, 0.665808, -0.448280,
		40.281673, 37.498184, 37.688213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703129, 37.047112, 37.203484>,  <40.699184, 37.032120, 38.002010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703129, 37.047112, 37.203484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612534, 37.404095, 37.359543>,  <40.558174, 37.618286, 37.453178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612534, 37.404095, 37.359543>,  <40.703129, 37.047112, 37.203484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612534, 37.404095, 37.359543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797441, 0.399905, -0.451846,
		-0.559276, 0.208777, -0.802261,
		-0.226493, 0.892462, 0.390144,
		40.544586, 37.671833, 37.476585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770271, 37.621071, 36.644001>,  <40.703129, 37.047112, 37.203484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770271, 37.621071, 36.644001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815922, 37.789547, 37.003906>,  <40.843311, 37.890633, 37.219849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815922, 37.789547, 37.003906>,  <40.770271, 37.621071, 36.644001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815922, 37.789547, 37.003906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811264, 0.483252, -0.329117,
		-0.573433, 0.767509, -0.286540,
		0.114129, 0.421187, 0.899765,
		40.850159, 37.915901, 37.273834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883888, 38.329788, 36.581730>,  <40.770271, 37.621071, 36.644001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883888, 38.329788, 36.581730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093739, 38.252705, 36.913425>,  <41.219650, 38.206455, 37.112442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093739, 38.252705, 36.913425>,  <40.883888, 38.329788, 36.581730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093739, 38.252705, 36.913425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832040, 0.322249, -0.451514,
		-0.180211, 0.926834, 0.329398,
		0.524627, -0.192705, 0.829236,
		41.251125, 38.194893, 37.162197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354122, 38.915928, 36.694180>,  <40.883888, 38.329788, 36.581730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354122, 38.915928, 36.694180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511429, 38.571541, 36.823219>,  <41.605812, 38.364906, 36.900642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511429, 38.571541, 36.823219>,  <41.354122, 38.915928, 36.694180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511429, 38.571541, 36.823219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875108, 0.242891, -0.418558,
		0.282010, 0.446913, 0.848963,
		0.393265, -0.860972, 0.322599,
		41.629410, 38.313248, 36.919998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084515, 39.046379, 37.087624>,  <41.354122, 38.915928, 36.694180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084515, 39.046379, 37.087624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051670, 38.691868, 36.905296>,  <42.031963, 38.479160, 36.795898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051670, 38.691868, 36.905296>,  <42.084515, 39.046379, 37.087624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051670, 38.691868, 36.905296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912174, 0.117421, -0.392620,
		0.401493, -0.448026, 0.798797,
		-0.082108, -0.886276, -0.455821,
		42.027039, 38.425983, 36.768551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620049, 38.669182, 37.314312>,  <42.084515, 39.046379, 37.087624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620049, 38.669182, 37.314312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508110, 38.540684, 36.952431>,  <42.440948, 38.463585, 36.735302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508110, 38.540684, 36.952431>,  <42.620049, 38.669182, 37.314312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508110, 38.540684, 36.952431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910395, 0.210332, -0.356287,
		0.304743, -0.923344, 0.233597,
		-0.279843, -0.321242, -0.904705,
		42.424156, 38.444313, 36.681019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204460, 38.275940, 37.170238>,  <42.620049, 38.669182, 37.314312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204460, 38.275940, 37.170238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023331, 38.347599, 36.820873>,  <42.914654, 38.390594, 36.611252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023331, 38.347599, 36.820873>,  <43.204460, 38.275940, 37.170238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023331, 38.347599, 36.820873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891539, 0.079560, -0.445903,
		-0.010395, -0.980599, -0.195747,
		-0.452826, 0.179151, -0.873415,
		42.887482, 38.401344, 36.558849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477116, 38.585987, 36.617168>,  <43.204460, 38.275940, 37.170238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477116, 38.585987, 36.617168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589237, 38.240078, 36.450512>,  <43.656509, 38.032532, 36.350517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589237, 38.240078, 36.450512>,  <43.477116, 38.585987, 36.617168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589237, 38.240078, 36.450512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827305, 0.002486, -0.561748,
		0.486822, 0.502149, -0.714738,
		0.280304, -0.864777, -0.416641,
		43.673328, 37.980644, 36.325520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457520, 38.745380, 35.955067>,  <43.477116, 38.585987, 36.617168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457520, 38.745380, 35.955067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404644, 38.352230, 36.006409>,  <43.372921, 38.116341, 36.037212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404644, 38.352230, 36.006409>,  <43.457520, 38.745380, 35.955067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404644, 38.352230, 36.006409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777420, 0.022468, -0.628580,
		0.614935, -0.182872, -0.767081,
		-0.132184, -0.982880, 0.128352,
		43.364990, 38.057365, 36.044914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351604, 38.467957, 35.273361>,  <43.457520, 38.745380, 35.955067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351604, 38.467957, 35.273361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189461, 38.220779, 35.542831>,  <43.092175, 38.072475, 35.704514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189461, 38.220779, 35.542831>,  <43.351604, 38.467957, 35.273361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189461, 38.220779, 35.542831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835410, -0.048816, -0.547454,
		0.371181, -0.784708, -0.496446,
		-0.405357, -0.617941, 0.673673,
		43.067852, 38.035397, 35.744934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009720, 37.846764, 34.889542>,  <43.351604, 38.467957, 35.273361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009720, 37.846764, 34.889542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837906, 37.886459, 35.248573>,  <42.734818, 37.910278, 35.463993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837906, 37.886459, 35.248573>,  <43.009720, 37.846764, 34.889542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837906, 37.886459, 35.248573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903047, -0.044234, -0.427257,
		-0.002697, -0.994080, 0.108618,
		-0.429532, 0.099239, 0.897582,
		42.709045, 37.916229, 35.517849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603107, 37.230762, 34.922585>,  <43.009720, 37.846764, 34.889542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603107, 37.230762, 34.922585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435242, 37.492588, 35.174118>,  <42.334522, 37.649685, 35.325039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435242, 37.492588, 35.174118>,  <42.603107, 37.230762, 34.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435242, 37.492588, 35.174118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904783, -0.246369, -0.347377,
		-0.072456, -0.714738, 0.695629,
		-0.419665, 0.654563, 0.628832,
		42.309341, 37.688957, 35.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008942, 36.895409, 35.225079>,  <42.603107, 37.230762, 34.922585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008942, 36.895409, 35.225079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942921, 37.287235, 35.271049>,  <41.903309, 37.522331, 35.298634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942921, 37.287235, 35.271049>,  <42.008942, 36.895409, 35.225079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942921, 37.287235, 35.271049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858290, -0.085245, -0.506035,
		-0.485898, -0.182164, 0.854821,
		-0.165050, 0.979566, 0.114930,
		41.893406, 37.581104, 35.305527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238987, 37.027660, 35.280571>,  <42.008942, 36.895409, 35.225079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238987, 37.027660, 35.280571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368576, 37.397587, 35.200817>,  <41.446327, 37.619545, 35.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368576, 37.397587, 35.200817>,  <41.238987, 37.027660, 35.280571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368576, 37.397587, 35.200817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870419, 0.208791, -0.445844,
		-0.370695, 0.317988, 0.872622,
		0.323969, 0.924819, -0.199385,
		41.465767, 37.675034, 35.141003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654644, 37.472244, 35.398598>,  <41.238987, 37.027660, 35.280571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654644, 37.472244, 35.398598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893646, 37.717491, 35.191883>,  <41.037048, 37.864639, 35.067856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893646, 37.717491, 35.191883>,  <40.654644, 37.472244, 35.398598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893646, 37.717491, 35.191883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801737, 0.445404, -0.398539,
		-0.014174, 0.652457, 0.757693,
		0.597509, 0.613120, -0.516786,
		41.072899, 37.901428, 35.036846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400517, 38.138802, 35.415199>,  <40.654644, 37.472244, 35.398598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400517, 38.138802, 35.415199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605522, 38.130348, 35.071831>,  <40.728527, 38.125275, 34.865810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605522, 38.130348, 35.071831>,  <40.400517, 38.138802, 35.415199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605522, 38.130348, 35.071831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787207, 0.387736, -0.479547,
		0.342975, 0.921528, 0.182084,
		0.512516, -0.021135, -0.858417,
		40.759277, 38.124008, 34.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078140, 38.640350, 35.082909>,  <40.400517, 38.138802, 35.415199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078140, 38.640350, 35.082909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272636, 38.446030, 34.792374>,  <40.389336, 38.329437, 34.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272636, 38.446030, 34.792374>,  <40.078140, 38.640350, 35.082909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272636, 38.446030, 34.792374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753993, 0.186873, -0.629740,
		0.441661, 0.853860, -0.275425,
		0.486240, -0.485801, -0.726339,
		40.418507, 38.300289, 34.574471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092678, 39.022324, 34.504562>,  <40.078140, 38.640350, 35.082909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092678, 39.022324, 34.504562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166679, 38.649685, 34.379410>,  <40.211082, 38.426102, 34.304317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166679, 38.649685, 34.379410>,  <40.092678, 39.022324, 34.504562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166679, 38.649685, 34.379410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728809, 0.083516, -0.679604,
		0.659250, 0.353764, -0.663507,
		0.185006, -0.931599, -0.312884,
		40.222179, 38.370205, 34.285545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084446, 39.007393, 33.740852>,  <40.092678, 39.022324, 34.504562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084446, 39.007393, 33.740852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016029, 38.629776, 33.853661>,  <39.974979, 38.403206, 33.921345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016029, 38.629776, 33.853661>,  <40.084446, 39.007393, 33.740852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016029, 38.629776, 33.853661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750389, -0.060674, -0.658207,
		0.638484, -0.324203, -0.698019,
		-0.171041, -0.944040, 0.282017,
		39.964718, 38.346565, 33.938267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955261, 38.663803, 33.098526>,  <40.084446, 39.007393, 33.740852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955261, 38.663803, 33.098526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797684, 38.416763, 33.370815>,  <39.703136, 38.268539, 33.534187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797684, 38.416763, 33.370815>,  <39.955261, 38.663803, 33.098526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797684, 38.416763, 33.370815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826146, -0.086682, -0.556748,
		0.402852, -0.781703, -0.476078,
		-0.393944, -0.617597, 0.680721,
		39.679501, 38.231483, 33.575031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674084, 38.052834, 32.727783>,  <39.955261, 38.663803, 33.098526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674084, 38.052834, 32.727783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471245, 38.047066, 33.072491>,  <39.349541, 38.043606, 33.279316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471245, 38.047066, 33.072491>,  <39.674084, 38.052834, 32.727783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471245, 38.047066, 33.072491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856748, -0.100592, -0.505831,
		0.093982, -0.994823, 0.038654,
		-0.507101, -0.014422, 0.861766,
		39.319115, 38.042740, 33.331020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221600, 37.703354, 32.593597>,  <39.674084, 38.052834, 32.727783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221600, 37.703354, 32.593597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078476, 37.849354, 32.937397>,  <38.992599, 37.936954, 33.143677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078476, 37.849354, 32.937397>,  <39.221600, 37.703354, 32.593597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078476, 37.849354, 32.937397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928687, -0.235233, -0.286716,
		0.097531, -0.900798, 0.423143,
		-0.357811, 0.365003, 0.859502,
		38.971134, 37.958855, 33.195248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666149, 37.264851, 32.902390>,  <39.221600, 37.703354, 32.593597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666149, 37.264851, 32.902390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 37.616356, 33.080460>,  <38.556061, 37.827259, 33.187302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597343, 37.616356, 33.080460>,  <38.666149, 37.264851, 32.902390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597343, 37.616356, 33.080460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960415, -0.049077, -0.274218,
		-0.219126, -0.474720, 0.852423,
		-0.172010, 0.878767, 0.445174,
		38.545742, 37.879986, 33.214012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984886, 37.299568, 33.273094>,  <38.666149, 37.264851, 32.902390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984886, 37.299568, 33.273094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065804, 37.687115, 33.215992>,  <38.114353, 37.919643, 33.181732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065804, 37.687115, 33.215992>,  <37.984886, 37.299568, 33.273094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065804, 37.687115, 33.215992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925789, 0.141658, -0.350496,
		-0.319360, 0.203063, 0.925621,
		0.202294, 0.968864, -0.142754,
		38.126492, 37.977776, 33.173164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405621, 37.676357, 33.560112>,  <37.984886, 37.299568, 33.273094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405621, 37.676357, 33.560112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576210, 37.913300, 33.286694>,  <37.678562, 38.055466, 33.122643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576210, 37.913300, 33.286694>,  <37.405621, 37.676357, 33.560112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576210, 37.913300, 33.286694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903180, 0.238052, -0.357208,
		-0.048875, 0.769704, 0.636527,
		0.426471, 0.592356, -0.683547,
		37.704151, 38.091007, 33.081631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933735, 38.194862, 33.464111>,  <37.405621, 37.676357, 33.560112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933735, 38.194862, 33.464111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133411, 38.256611, 33.123062>,  <37.253220, 38.293659, 32.918430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133411, 38.256611, 33.123062>,  <36.933735, 38.194862, 33.464111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133411, 38.256611, 33.123062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862783, -0.002363, -0.505569,
		-0.080062, 0.988010, 0.132012,
		0.499195, 0.154374, -0.852627,
		37.283169, 38.302921, 32.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663876, 38.797512, 33.070362>,  <36.933735, 38.194862, 33.464111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663876, 38.797512, 33.070362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842735, 38.590294, 32.778698>,  <36.950050, 38.465961, 32.603699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842735, 38.590294, 32.778698>,  <36.663876, 38.797512, 33.070362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842735, 38.590294, 32.778698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846600, 0.017959, -0.531927,
		0.288660, 0.855162, -0.430550,
		0.447152, -0.518050, -0.729164,
		36.976879, 38.434879, 32.559948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492851, 39.171547, 32.501492>,  <36.663876, 38.797512, 33.070362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492851, 39.171547, 32.501492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591743, 38.803898, 32.378796>,  <36.651081, 38.583309, 32.305176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591743, 38.803898, 32.378796>,  <36.492851, 39.171547, 32.501492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591743, 38.803898, 32.378796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912071, -0.113880, -0.393901,
		0.327111, 0.377157, -0.866459,
		0.247234, -0.919121, -0.306742,
		36.665913, 38.528160, 32.286774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238678, 39.122002, 31.879360>,  <36.492851, 39.171547, 32.501492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238678, 39.122002, 31.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301033, 38.734547, 31.956764>,  <36.338448, 38.502075, 32.003208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301033, 38.734547, 31.956764>,  <36.238678, 39.122002, 31.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301033, 38.734547, 31.956764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742845, -0.244088, -0.623380,
		0.651061, -0.046570, -0.757595,
		0.155889, -0.968634, 0.193511,
		36.347801, 38.443958, 32.014816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883793, 39.586590, 31.787251>,  <36.238678, 39.122002, 31.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883793, 39.586590, 31.787251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050362, 39.746193, 31.460478>,  <37.150303, 39.841957, 31.264414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050362, 39.746193, 31.460478>,  <36.883793, 39.586590, 31.787251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050362, 39.746193, 31.460478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890265, 0.003321, 0.455430,
		0.184435, -0.916940, -0.353843,
		0.416427, 0.399011, -0.816933,
		37.175289, 39.865898, 31.215399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436806, 39.192978, 31.671762>,  <36.883793, 39.586590, 31.787251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436806, 39.192978, 31.671762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498047, 39.566040, 31.541090>,  <37.534790, 39.789875, 31.462687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498047, 39.566040, 31.541090>,  <37.436806, 39.192978, 31.671762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498047, 39.566040, 31.541090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750284, 0.105439, 0.652653,
		0.643143, -0.345026, -0.683611,
		0.153103, 0.932652, -0.326680,
		37.543976, 39.845837, 31.443087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057915, 39.218864, 31.405426>,  <37.436806, 39.192978, 31.671762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057915, 39.218864, 31.405426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937622, 39.574219, 31.544178>,  <37.865448, 39.787434, 31.627428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937622, 39.574219, 31.544178>,  <38.057915, 39.218864, 31.405426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937622, 39.574219, 31.544178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794617, 0.032270, 0.606253,
		0.527395, 0.457954, -0.715635,
		-0.300729, 0.888390, 0.346879,
		37.847404, 39.840736, 31.648241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806145, 39.490192, 31.289021>,  <38.057915, 39.218864, 31.405426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806145, 39.490192, 31.289021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665813, 39.202465, 31.049189>,  <38.581615, 39.029827, 30.905289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665813, 39.202465, 31.049189>,  <38.806145, 39.490192, 31.289021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665813, 39.202465, 31.049189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921204, -0.150063, -0.358978,
		0.168246, -0.678274, 0.715289,
		-0.350823, -0.719323, -0.599581,
		38.560566, 38.986668, 30.869314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185818, 38.929249, 31.289408>,  <38.806145, 39.490192, 31.289021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185818, 38.929249, 31.289408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993984, 38.885315, 30.941170>,  <38.878883, 38.858955, 30.732227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993984, 38.885315, 30.941170>,  <39.185818, 38.929249, 31.289408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993984, 38.885315, 30.941170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862179, -0.243551, -0.444220,
		-0.163243, -0.963649, 0.211502,
		-0.479583, -0.109837, -0.870595,
		38.850109, 38.852364, 30.679991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505756, 38.261906, 30.898682>,  <39.185818, 38.929249, 31.289408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505756, 38.261906, 30.898682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344158, 38.515606, 30.635010>,  <39.247200, 38.667828, 30.476807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344158, 38.515606, 30.635010>,  <39.505756, 38.261906, 30.898682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344158, 38.515606, 30.635010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782966, -0.132873, -0.607708,
		-0.473026, -0.761623, -0.442918,
		-0.403993, 0.634251, -0.659178,
		39.222961, 38.705883, 30.437256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489429, 37.975719, 30.183437>,  <39.505756, 38.261906, 30.898682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489429, 37.975719, 30.183437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556969, 38.363171, 30.110504>,  <39.597492, 38.595642, 30.066744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556969, 38.363171, 30.110504>,  <39.489429, 37.975719, 30.183437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556969, 38.363171, 30.110504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824575, -0.240165, -0.512247,
		-0.539968, -0.063853, -0.839260,
		0.168852, 0.968630, -0.182333,
		39.607624, 38.653759, 30.055803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623062, 38.183907, 29.436245>,  <39.489429, 37.975719, 30.183437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623062, 38.183907, 29.436245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805946, 38.450470, 29.671820>,  <39.915676, 38.610409, 29.813166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805946, 38.450470, 29.671820>,  <39.623062, 38.183907, 29.436245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805946, 38.450470, 29.671820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889244, -0.332035, -0.314639,
		-0.014131, 0.667568, -0.744415,
		0.457215, 0.666412, 0.588939,
		39.943111, 38.650394, 29.848501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141270, 38.572208, 29.154869>,  <39.623062, 38.183907, 29.436245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141270, 38.572208, 29.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248238, 38.511314, 29.535461>,  <40.312416, 38.474777, 29.763817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248238, 38.511314, 29.535461>,  <40.141270, 38.572208, 29.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248238, 38.511314, 29.535461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901958, -0.307907, -0.302763,
		0.339059, 0.939158, 0.054971,
		0.267416, -0.152236, 0.951479,
		40.328461, 38.465645, 29.820906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789494, 38.402767, 29.011461>,  <40.141270, 38.572208, 29.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789494, 38.402767, 29.011461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773712, 38.353287, 29.408075>,  <40.764244, 38.323601, 29.646044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773712, 38.353287, 29.408075>,  <40.789494, 38.402767, 29.011461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773712, 38.353287, 29.408075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929831, -0.367879, -0.008899,
		0.365866, 0.921610, 0.129530,
		-0.039450, -0.123697, 0.991536,
		40.761879, 38.316177, 29.705536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363373, 38.605595, 29.213097>,  <40.789494, 38.402767, 29.011461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363373, 38.605595, 29.213097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246471, 38.363861, 29.509575>,  <41.176331, 38.218822, 29.687462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246471, 38.363861, 29.509575>,  <41.363373, 38.605595, 29.213097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246471, 38.363861, 29.509575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947549, -0.287828, 0.138942,
		0.129369, 0.742924, 0.656755,
		-0.292256, -0.604333, 0.741194,
		41.158794, 38.182560, 29.731934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641361, 38.750443, 29.802616>,  <41.363373, 38.605595, 29.213097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641361, 38.750443, 29.802616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533127, 38.392525, 29.944675>,  <41.468185, 38.177773, 30.029911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533127, 38.392525, 29.944675>,  <41.641361, 38.750443, 29.802616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533127, 38.392525, 29.944675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868614, -0.067856, 0.490822,
		-0.415085, 0.441294, 0.795590,
		-0.270582, -0.894794, 0.355148,
		41.451954, 38.124088, 30.051220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733616, 38.742916, 30.551189>,  <41.641361, 38.750443, 29.802616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733616, 38.742916, 30.551189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724098, 38.358597, 30.440702>,  <41.718388, 38.128006, 30.374411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724098, 38.358597, 30.440702>,  <41.733616, 38.742916, 30.551189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724098, 38.358597, 30.440702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723803, -0.207139, 0.658181,
		-0.689596, -0.184268, 0.700359,
		-0.023790, -0.960801, -0.276217,
		41.716961, 38.070358, 30.357838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595234, 38.376968, 31.128342>,  <41.733616, 38.742916, 30.551189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595234, 38.376968, 31.128342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773075, 38.110962, 30.888315>,  <41.879780, 37.951359, 30.744299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773075, 38.110962, 30.888315>,  <41.595234, 38.376968, 31.128342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773075, 38.110962, 30.888315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641591, -0.231048, 0.731422,
		-0.625053, -0.710188, 0.323946,
		0.444600, -0.665018, -0.600068,
		41.906456, 37.911457, 30.708294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526592, 37.656136, 31.406708>,  <41.595234, 38.376968, 31.128342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526592, 37.656136, 31.406708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850254, 37.699001, 31.175611>,  <42.044453, 37.724720, 31.036953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850254, 37.699001, 31.175611>,  <41.526592, 37.656136, 31.406708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850254, 37.699001, 31.175611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553571, -0.468751, 0.688355,
		-0.197048, -0.876806, -0.438616,
		0.809155, 0.107166, -0.577740,
		42.093002, 37.731152, 31.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957710, 37.092087, 31.725891>,  <41.526592, 37.656136, 31.406708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957710, 37.092087, 31.725891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178871, 37.305134, 31.469576>,  <42.311569, 37.432964, 31.315786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178871, 37.305134, 31.469576>,  <41.957710, 37.092087, 31.725891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178871, 37.305134, 31.469576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812289, -0.173150, 0.556961,
		0.185696, -0.828453, -0.528377,
		0.552904, 0.532620, -0.640790,
		42.344742, 37.464920, 31.277338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391434, 36.633938, 31.532145>,  <41.957710, 37.092087, 31.725891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391434, 36.633938, 31.532145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533844, 37.003799, 31.478079>,  <42.619289, 37.225716, 31.445639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533844, 37.003799, 31.478079>,  <42.391434, 36.633938, 31.532145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533844, 37.003799, 31.478079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761520, -0.203248, 0.615449,
		0.541603, -0.322046, -0.776500,
		0.356025, 0.924650, -0.135164,
		42.640652, 37.281193, 31.437529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035206, 36.585590, 31.690165>,  <42.391434, 36.633938, 31.532145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035206, 36.585590, 31.690165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026634, 36.985138, 31.707127>,  <43.021492, 37.224869, 31.717304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026634, 36.985138, 31.707127>,  <43.035206, 36.585590, 31.690165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026634, 36.985138, 31.707127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679853, -0.016542, 0.733162,
		0.733036, 0.044537, -0.678731,
		-0.021426, 0.998871, 0.042405,
		43.020206, 37.284798, 31.719849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733398, 36.851173, 31.631786>,  <43.035206, 36.585590, 31.690165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733398, 36.851173, 31.631786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506931, 37.110371, 31.835577>,  <43.371052, 37.265888, 31.957851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506931, 37.110371, 31.835577>,  <43.733398, 36.851173, 31.631786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506931, 37.110371, 31.835577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694983, 0.042904, 0.717745,
		0.443234, 0.760438, -0.474634,
		-0.566165, 0.647991, 0.509475,
		43.337082, 37.304768, 31.988420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221603, 37.228107, 32.087818>,  <43.733398, 36.851173, 31.631786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221603, 37.228107, 32.087818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879734, 37.324417, 32.271801>,  <43.674610, 37.382202, 32.382191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879734, 37.324417, 32.271801>,  <44.221603, 37.228107, 32.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879734, 37.324417, 32.271801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495752, 0.115457, 0.860756,
		0.154139, 0.963691, -0.218040,
		-0.854676, 0.240770, 0.459955,
		43.623333, 37.396648, 32.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516876, 37.616905, 32.519821>,  <44.221603, 37.228107, 32.087818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516876, 37.616905, 32.519821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147392, 37.583263, 32.669315>,  <43.925701, 37.563080, 32.759014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147392, 37.583263, 32.669315>,  <44.516876, 37.616905, 32.519821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147392, 37.583263, 32.669315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382233, -0.137358, 0.913800,
		-0.025516, 0.986945, 0.159026,
		-0.923714, -0.084102, 0.373738,
		43.870277, 37.558033, 32.781437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433884, 38.130436, 33.057877>,  <44.516876, 37.616905, 32.519821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433884, 38.130436, 33.057877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169346, 37.837025, 33.120564>,  <44.010624, 37.660976, 33.158176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169346, 37.837025, 33.120564>,  <44.433884, 38.130436, 33.057877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169346, 37.837025, 33.120564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476889, -0.249923, 0.842683,
		-0.578968, 0.632036, 0.515098,
		-0.661341, -0.733532, 0.156714,
		43.970943, 37.616966, 33.167580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193417, 38.159504, 33.706295>,  <44.433884, 38.130436, 33.057877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193417, 38.159504, 33.706295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145699, 37.775177, 33.606220>,  <44.117069, 37.544579, 33.546173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145699, 37.775177, 33.606220>,  <44.193417, 38.159504, 33.706295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145699, 37.775177, 33.606220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362682, -0.276745, 0.889873,
		-0.924246, 0.015415, 0.381485,
		-0.119291, -0.960820, -0.250189,
		44.109913, 37.486931, 33.531162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774281, 37.921185, 34.240868>,  <44.193417, 38.159504, 33.706295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774281, 37.921185, 34.240868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968788, 37.619194, 34.064888>,  <44.085491, 37.438000, 33.959301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.968788, 37.619194, 34.064888>,  <43.774281, 37.921185, 34.240868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.968788, 37.619194, 34.064888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260408, -0.355395, 0.897709,
		-0.834104, -0.551094, 0.023785,
		0.486269, -0.754977, -0.439946,
		44.114670, 37.392700, 33.932903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730377, 37.364944, 34.695366>,  <43.774281, 37.921185, 34.240868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730377, 37.364944, 34.695366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034595, 37.240513, 34.467403>,  <44.217125, 37.165852, 34.330624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034595, 37.240513, 34.467403>,  <43.730377, 37.364944, 34.695366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034595, 37.240513, 34.467403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398464, -0.469393, 0.787969,
		-0.512639, -0.826374, -0.233038,
		0.760544, -0.311087, -0.569910,
		44.262760, 37.147190, 34.296432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807335, 36.645264, 34.846352>,  <43.730377, 37.364944, 34.695366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807335, 36.645264, 34.846352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152020, 36.751930, 34.673683>,  <44.358829, 36.815929, 34.570080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152020, 36.751930, 34.673683>,  <43.807335, 36.645264, 34.846352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152020, 36.751930, 34.673683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507389, -0.447585, 0.736359,
		0.003151, -0.853555, -0.520992,
		0.861711, 0.266666, -0.431675,
		44.410534, 36.831928, 34.544182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233292, 36.118862, 35.021851>,  <43.807335, 36.645264, 34.846352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233292, 36.118862, 35.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483799, 36.417488, 34.932030>,  <44.634106, 36.596664, 34.878136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483799, 36.417488, 34.932030>,  <44.233292, 36.118862, 35.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483799, 36.417488, 34.932030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537127, -0.204430, 0.818354,
		0.565048, -0.633126, -0.529029,
		0.626271, 0.746565, -0.224556,
		44.671680, 36.641457, 34.864662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003971, 35.888859, 35.137596>,  <44.233292, 36.118862, 35.021851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003971, 35.888859, 35.137596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023540, 36.288361, 35.141422>,  <45.035282, 36.528061, 35.143719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023540, 36.288361, 35.141422>,  <45.003971, 35.888859, 35.137596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023540, 36.288361, 35.141422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509360, -0.033188, 0.859913,
		0.859162, -0.037198, -0.510350,
		0.048924, 0.998757, 0.009567,
		45.038219, 36.587986, 35.144291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652206, 35.996368, 35.329025>,  <45.003971, 35.888859, 35.137596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652206, 35.996368, 35.329025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460178, 36.341808, 35.390629>,  <45.344959, 36.549072, 35.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.460178, 36.341808, 35.390629>,  <45.652206, 35.996368, 35.329025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460178, 36.341808, 35.390629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557602, 0.164882, 0.813569,
		0.677208, 0.476447, -0.560703,
		-0.480072, 0.863604, 0.154008,
		45.316158, 36.600891, 35.436832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402004, 36.120522, 35.456116>,  <45.652206, 35.996368, 35.329025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402004, 36.120522, 35.456116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725128, 36.157650, 35.223278>,  <46.919003, 36.179928, 35.083576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725128, 36.157650, 35.223278>,  <46.402004, 36.120522, 35.456116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725128, 36.157650, 35.223278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143323, -0.988817, 0.041225,
		-0.571754, -0.116729, -0.812079,
		0.807809, 0.092819, -0.582090,
		46.967472, 36.185497, 35.048653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433998, 35.608753, 34.810135>,  <46.402004, 36.120522, 35.456116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433998, 35.608753, 34.810135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794304, 35.686211, 34.965633>,  <47.010487, 35.732685, 35.058933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.794304, 35.686211, 34.965633>,  <46.433998, 35.608753, 34.810135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794304, 35.686211, 34.965633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154846, -0.979468, 0.129096,
		0.405759, -0.056090, -0.912257,
		0.900768, 0.193641, 0.388742,
		47.064533, 35.744305, 35.082256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728497, 35.048252, 34.658955>,  <46.433998, 35.608753, 34.810135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728497, 35.048252, 34.658955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966278, 35.219475, 34.931244>,  <47.108948, 35.322208, 35.094616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.966278, 35.219475, 34.931244>,  <46.728497, 35.048252, 34.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966278, 35.219475, 34.931244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362367, -0.898313, 0.248444,
		0.717852, 0.098983, -0.689123,
		0.594456, 0.428061, 0.680724,
		47.144615, 35.347893, 35.135460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.472137, 34.943256, 34.508274>,  <46.728497, 35.048252, 34.658955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.472137, 34.943256, 34.508274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409714, 34.971355, 34.902374>,  <47.372261, 34.988216, 35.138832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.409714, 34.971355, 34.902374>,  <47.472137, 34.943256, 34.508274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.409714, 34.971355, 34.902374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533766, -0.833287, 0.143964,
		0.831107, 0.548358, 0.092545,
		-0.156061, 0.070252, 0.985246,
		47.362896, 34.992432, 35.197948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.074753, 35.023106, 34.968990>,  <47.472137, 34.943256, 34.508274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.074753, 35.023106, 34.968990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751389, 34.818130, 35.084839>,  <47.557369, 34.695145, 35.154346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751389, 34.818130, 35.084839>,  <48.074753, 35.023106, 34.968990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751389, 34.818130, 35.084839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551776, -0.831073, 0.069713,
		0.204971, 0.216161, 0.954600,
		-0.808412, -0.512437, 0.289618,
		47.508865, 34.664398, 35.171726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.935486, 40.552223, 45.125362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580006, 40.376549, 45.178017>,  <35.366718, 40.271145, 45.209610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580006, 40.376549, 45.178017>,  <35.935486, 40.552223, 45.125362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580006, 40.376549, 45.178017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016157, -0.256937, -0.966293,
		0.458208, -0.860870, 0.221244,
		-0.888698, -0.439189, 0.131639,
		35.313396, 40.244793, 45.217510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031670, 39.918682, 44.793365>,  <35.935486, 40.552223, 45.125362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031670, 39.918682, 44.793365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633465, 39.951706, 44.811901>,  <35.394543, 39.971519, 44.823021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633465, 39.951706, 44.811901>,  <36.031670, 39.918682, 44.793365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633465, 39.951706, 44.811901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069963, -0.311803, -0.947567,
		-0.063782, -0.946553, 0.316179,
		-0.995508, 0.082559, 0.046336,
		35.334812, 39.976475, 44.825802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868114, 39.329128, 44.589756>,  <36.031670, 39.918682, 44.793365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868114, 39.329128, 44.589756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.542725, 39.554825, 44.533340>,  <35.347492, 39.690243, 44.499493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.542725, 39.554825, 44.533340>,  <35.868114, 39.329128, 44.589756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542725, 39.554825, 44.533340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054925, -0.315943, -0.947187,
		-0.579007, -0.762762, 0.288001,
		-0.813471, 0.564246, -0.141038,
		35.298683, 39.724098, 44.491028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388321, 38.913982, 44.370598>,  <35.868114, 39.329128, 44.589756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388321, 38.913982, 44.370598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295830, 39.280575, 44.239998>,  <35.240337, 39.500530, 44.161640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295830, 39.280575, 44.239998>,  <35.388321, 38.913982, 44.370598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295830, 39.280575, 44.239998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092345, -0.354751, -0.930389,
		-0.968508, -0.184977, 0.166659,
		-0.231223, 0.916480, -0.326498,
		35.226463, 39.555519, 44.142048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826008, 38.814251, 43.880676>,  <35.388321, 38.913982, 44.370598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826008, 38.814251, 43.880676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920444, 39.194622, 43.800686>,  <34.977108, 39.422844, 43.752693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920444, 39.194622, 43.800686>,  <34.826008, 38.814251, 43.880676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920444, 39.194622, 43.800686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040676, -0.195942, -0.979771,
		-0.970879, 0.239451, -0.007581,
		0.236093, 0.950931, -0.199976,
		34.991272, 39.479900, 43.740692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312859, 39.065319, 43.441532>,  <34.826008, 38.814251, 43.880676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312859, 39.065319, 43.441532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625374, 39.307671, 43.381531>,  <34.812881, 39.453083, 43.345531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625374, 39.307671, 43.381531>,  <34.312859, 39.065319, 43.441532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625374, 39.307671, 43.381531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106223, -0.107753, -0.988487,
		-0.615066, 0.788226, -0.019828,
		0.781287, 0.605879, -0.150003,
		34.859760, 39.489433, 43.336529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100182, 39.433804, 42.936127>,  <34.312859, 39.065319, 43.441532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100182, 39.433804, 42.936127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500088, 39.439156, 42.929268>,  <34.740032, 39.442368, 42.925152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.500088, 39.439156, 42.929268>,  <34.100182, 39.433804, 42.936127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500088, 39.439156, 42.929268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016033, -0.079403, -0.996714,
		-0.014700, 0.996753, -0.079170,
		0.999763, 0.013383, -0.017148,
		34.800018, 39.443169, 42.924122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305191, 40.091343, 42.553253>,  <34.100182, 39.433804, 42.936127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305191, 40.091343, 42.553253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592182, 39.812721, 42.555531>,  <34.764378, 39.645550, 42.556896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592182, 39.812721, 42.555531>,  <34.305191, 40.091343, 42.553253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592182, 39.812721, 42.555531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111371, 0.106635, -0.988041,
		0.687618, 0.709535, 0.154085,
		0.717480, -0.696555, 0.005698,
		34.807426, 39.603756, 42.557240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703236, 40.322872, 41.903156>,  <34.305191, 40.091343, 42.553253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703236, 40.322872, 41.903156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830910, 39.953182, 41.986992>,  <34.907513, 39.731369, 42.037292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.830910, 39.953182, 41.986992>,  <34.703236, 40.322872, 41.903156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830910, 39.953182, 41.986992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177156, -0.159070, -0.971243,
		0.930987, 0.347137, 0.112959,
		0.319186, -0.924225, 0.209589,
		34.926666, 39.675915, 42.049870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308975, 40.272541, 41.493149>,  <34.703236, 40.322872, 41.903156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308975, 40.272541, 41.493149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195747, 39.896046, 41.566841>,  <35.127811, 39.670147, 41.611057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195747, 39.896046, 41.566841>,  <35.308975, 40.272541, 41.493149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195747, 39.896046, 41.566841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161981, -0.236243, -0.958098,
		0.945321, -0.241369, 0.219337,
		-0.283072, -0.941238, 0.184228,
		35.110825, 39.613674, 41.622108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834816, 39.852898, 41.170719>,  <35.308975, 40.272541, 41.493149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834816, 39.852898, 41.170719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531502, 39.595650, 41.213432>,  <35.349514, 39.441303, 41.239059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531502, 39.595650, 41.213432>,  <35.834816, 39.852898, 41.170719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531502, 39.595650, 41.213432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125912, -0.305185, -0.943932,
		0.639646, -0.702327, 0.312394,
		-0.758287, -0.643117, 0.106779,
		35.304016, 39.402714, 41.245464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137062, 39.229111, 40.893837>,  <35.834816, 39.852898, 41.170719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137062, 39.229111, 40.893837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742218, 39.165379, 40.887730>,  <35.505314, 39.127140, 40.884064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742218, 39.165379, 40.887730>,  <36.137062, 39.229111, 40.893837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742218, 39.165379, 40.887730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067982, -0.330981, -0.941186,
		0.144902, -0.930090, 0.337545,
		-0.987108, -0.159326, -0.015269,
		35.446087, 39.117580, 40.883148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001743, 38.567707, 40.628151>,  <36.137062, 39.229111, 40.893837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001743, 38.567707, 40.628151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686615, 38.807701, 40.572502>,  <35.497536, 38.951698, 40.539112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686615, 38.807701, 40.572502>,  <36.001743, 38.567707, 40.628151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686615, 38.807701, 40.572502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189562, 0.021282, -0.981638,
		-0.586004, -0.799731, -0.130500,
		-0.787823, 0.599982, -0.139127,
		35.450268, 38.987694, 40.530766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615314, 38.297401, 40.096951>,  <36.001743, 38.567707, 40.628151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615314, 38.297401, 40.096951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488182, 38.676395, 40.082767>,  <35.411903, 38.903790, 40.074257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.488182, 38.676395, 40.082767>,  <35.615314, 38.297401, 40.096951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488182, 38.676395, 40.082767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097016, -0.004703, -0.995272,
		-0.943170, -0.319772, -0.090427,
		-0.317834, 0.947483, -0.035459,
		35.392830, 38.960640, 40.072128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055195, 38.341301, 39.526539>,  <35.615314, 38.297401, 40.096951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055195, 38.341301, 39.526539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176128, 38.717625, 39.587818>,  <35.248688, 38.943420, 39.624584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176128, 38.717625, 39.587818>,  <35.055195, 38.341301, 39.526539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176128, 38.717625, 39.587818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113791, 0.123945, -0.985743,
		-0.946387, 0.315451, -0.069584,
		0.302329, 0.940813, 0.153195,
		35.266827, 38.999870, 39.633778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850079, 38.665844, 39.017620>,  <35.055195, 38.341301, 39.526539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850079, 38.665844, 39.017620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098518, 38.956867, 39.134167>,  <35.247581, 39.131481, 39.204094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.098518, 38.956867, 39.134167>,  <34.850079, 38.665844, 39.017620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098518, 38.956867, 39.134167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095406, 0.298818, -0.949529,
		-0.777902, 0.617552, 0.116183,
		0.621101, 0.727556, 0.291369,
		35.284847, 39.175133, 39.221577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710030, 39.286983, 38.656090>,  <34.850079, 38.665844, 39.017620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710030, 39.286983, 38.656090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088146, 39.341568, 38.774620>,  <35.315018, 39.374317, 38.845737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088146, 39.341568, 38.774620>,  <34.710030, 39.286983, 38.656090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088146, 39.341568, 38.774620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254870, 0.258072, -0.931901,
		-0.203637, 0.956440, 0.209174,
		0.945290, 0.136457, 0.296321,
		35.371735, 39.382504, 38.863518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837891, 39.979393, 38.369835>,  <34.710030, 39.286983, 38.656090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837891, 39.979393, 38.369835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180298, 39.793186, 38.459743>,  <35.385742, 39.681461, 38.513691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180298, 39.793186, 38.459743>,  <34.837891, 39.979393, 38.369835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180298, 39.793186, 38.459743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428159, 0.394812, -0.812898,
		0.289676, 0.792095, 0.537283,
		0.856018, -0.465520, 0.224775,
		35.437103, 39.653530, 38.527176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340054, 40.538124, 38.263317>,  <34.837891, 39.979393, 38.369835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340054, 40.538124, 38.263317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553570, 40.200001, 38.272518>,  <35.681679, 39.997128, 38.278038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553570, 40.200001, 38.272518>,  <35.340054, 40.538124, 38.263317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553570, 40.200001, 38.272518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645308, 0.389612, -0.657099,
		0.546488, 0.365595, 0.753453,
		0.533786, -0.845306, 0.023003,
		35.713707, 39.946407, 38.279419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999435, 40.759174, 38.248047>,  <35.340054, 40.538124, 38.263317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999435, 40.759174, 38.248047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977612, 40.380608, 38.120728>,  <35.964516, 40.153465, 38.044334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977612, 40.380608, 38.120728>,  <35.999435, 40.759174, 38.248047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977612, 40.380608, 38.120728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467152, 0.257542, -0.845837,
		0.882492, -0.194842, 0.428070,
		-0.054559, -0.946419, -0.318300,
		35.961243, 40.096684, 38.025238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616566, 40.629978, 38.087147>,  <35.999435, 40.759174, 38.248047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616566, 40.629978, 38.087147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410545, 40.361938, 37.873344>,  <36.286934, 40.201115, 37.745064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410545, 40.361938, 37.873344>,  <36.616566, 40.629978, 38.087147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410545, 40.361938, 37.873344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480209, 0.290958, -0.827492,
		0.710018, -0.682872, 0.171929,
		-0.515047, -0.670096, -0.534507,
		36.256031, 40.160912, 37.712994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094040, 40.256557, 37.690796>,  <36.616566, 40.629978, 38.087147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094040, 40.256557, 37.690796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739677, 40.253082, 37.505287>,  <36.527058, 40.250996, 37.393982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.739677, 40.253082, 37.505287>,  <37.094040, 40.256557, 37.690796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739677, 40.253082, 37.505287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444911, 0.266908, -0.854877,
		0.131214, -0.963683, -0.232591,
		-0.885910, -0.008689, -0.463775,
		36.473904, 40.250477, 37.366154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532658, 39.873783, 37.084656>,  <37.094040, 40.256557, 37.690796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532658, 39.873783, 37.084656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922283, 39.826729, 37.161980>,  <38.156059, 39.798496, 37.208374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.922283, 39.826729, 37.161980>,  <37.532658, 39.873783, 37.084656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922283, 39.826729, 37.161980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171903, 0.170885, 0.970179,
		-0.147162, -0.978243, 0.146231,
		0.974060, -0.117636, 0.193310,
		38.214500, 39.791439, 37.219975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465034, 39.545155, 37.696968>,  <37.532658, 39.873783, 37.084656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465034, 39.545155, 37.696968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842548, 39.677338, 37.700233>,  <38.069057, 39.756645, 37.702190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.842548, 39.677338, 37.700233>,  <37.465034, 39.545155, 37.696968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842548, 39.677338, 37.700233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076722, 0.194967, 0.977805,
		0.321531, -0.923464, 0.209360,
		0.943786, 0.330457, 0.008162,
		38.125683, 39.776474, 37.702682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776356, 39.218441, 38.188614>,  <37.465034, 39.545155, 37.696968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776356, 39.218441, 38.188614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016407, 39.535370, 38.144657>,  <38.160439, 39.725525, 38.118282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016407, 39.535370, 38.144657>,  <37.776356, 39.218441, 38.188614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016407, 39.535370, 38.144657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036476, 0.164350, 0.985728,
		0.799073, -0.587553, 0.127531,
		0.600127, 0.792320, -0.109896,
		38.196445, 39.773067, 38.111687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363712, 39.208305, 38.625126>,  <37.776356, 39.218441, 38.188614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363712, 39.208305, 38.625126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358498, 39.603245, 38.561916>,  <38.355370, 39.840210, 38.523991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.358498, 39.603245, 38.561916>,  <38.363712, 39.208305, 38.625126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358498, 39.603245, 38.561916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184456, 0.157695, 0.970107,
		0.982754, -0.016501, -0.184178,
		-0.013036, 0.987350, -0.158019,
		38.354588, 39.899448, 38.514511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894699, 39.523045, 39.031342>,  <38.363712, 39.208305, 38.625126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894699, 39.523045, 39.031342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668468, 39.844051, 38.955360>,  <38.532730, 40.036655, 38.909771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668468, 39.844051, 38.955360>,  <38.894699, 39.523045, 39.031342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668468, 39.844051, 38.955360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097816, 0.293990, 0.950790,
		0.818871, 0.519168, -0.244774,
		-0.565581, 0.802518, -0.189957,
		38.498795, 40.084808, 38.898373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226151, 40.194424, 39.237354>,  <38.894699, 39.523045, 39.031342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226151, 40.194424, 39.237354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840122, 40.296200, 39.262321>,  <38.608505, 40.357265, 39.277302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840122, 40.296200, 39.262321>,  <39.226151, 40.194424, 39.237354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840122, 40.296200, 39.262321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103235, 0.150348, 0.983228,
		0.240790, 0.955329, -0.171364,
		-0.965071, 0.254442, 0.062422,
		38.550602, 40.372532, 39.281048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216660, 40.661049, 39.721695>,  <39.226151, 40.194424, 39.237354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216660, 40.661049, 39.721695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848236, 40.505764, 39.709450>,  <38.627182, 40.412594, 39.702103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848236, 40.505764, 39.709450>,  <39.216660, 40.661049, 39.721695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848236, 40.505764, 39.709450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056033, 0.054332, 0.996950,
		-0.385365, 0.919967, -0.071796,
		-0.921061, -0.388212, -0.030610,
		38.571918, 40.389301, 39.700268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835598, 41.144482, 40.152229>,  <39.216660, 40.661049, 39.721695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835598, 41.144482, 40.152229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591351, 40.829445, 40.119118>,  <38.444801, 40.640423, 40.099251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.591351, 40.829445, 40.119118>,  <38.835598, 41.144482, 40.152229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591351, 40.829445, 40.119118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255112, 0.096673, 0.962067,
		-0.749711, 0.608571, -0.259953,
		-0.610616, -0.787589, -0.082777,
		38.408165, 40.593166, 40.094284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220165, 41.303974, 40.561203>,  <38.835598, 41.144482, 40.152229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220165, 41.303974, 40.561203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244370, 40.907265, 40.516075>,  <38.258892, 40.669239, 40.488998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.244370, 40.907265, 40.516075>,  <38.220165, 41.303974, 40.561203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244370, 40.907265, 40.516075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348216, -0.126904, 0.928785,
		-0.935459, -0.016913, -0.353029,
		0.060510, -0.991771, -0.112824,
		38.262524, 40.609734, 40.482227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669727, 41.108131, 40.943188>,  <38.220165, 41.303974, 40.561203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669727, 41.108131, 40.943188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886757, 40.774940, 40.899803>,  <38.016975, 40.575027, 40.873772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886757, 40.774940, 40.899803>,  <37.669727, 41.108131, 40.943188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886757, 40.774940, 40.899803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267967, -0.294008, 0.917471,
		-0.796123, -0.468728, -0.382730,
		0.542570, -0.832978, -0.108463,
		38.049526, 40.525047, 40.867264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225517, 40.469017, 40.934986>,  <37.669727, 41.108131, 40.943188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225517, 40.469017, 40.934986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591156, 40.375050, 41.067192>,  <37.810539, 40.318668, 41.146515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.591156, 40.375050, 41.067192>,  <37.225517, 40.469017, 40.934986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591156, 40.375050, 41.067192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379146, -0.206130, 0.902086,
		-0.143785, -0.949908, -0.277491,
		0.914098, -0.234916, 0.330515,
		37.865387, 40.304573, 41.166348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023556, 40.027431, 41.424572>,  <37.225517, 40.469017, 40.934986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023556, 40.027431, 41.424572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 40.114227, 41.523228>,  <37.628036, 40.166306, 41.582420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.401356, 40.114227, 41.523228>,  <37.023556, 40.027431, 41.424572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401356, 40.114227, 41.523228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238569, -0.063055, 0.969076,
		0.225837, -0.974134, -0.007787,
		0.944501, 0.216995, 0.246638,
		37.684708, 40.179325, 41.597218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305977, 39.456791, 41.765717>,  <37.023556, 40.027431, 41.424572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305977, 39.456791, 41.765717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536671, 39.762127, 41.882118>,  <37.675087, 39.945328, 41.951958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.536671, 39.762127, 41.882118>,  <37.305977, 39.456791, 41.765717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536671, 39.762127, 41.882118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297801, -0.135257, 0.944997,
		0.760717, -0.631676, 0.149316,
		0.576736, 0.763342, 0.291005,
		37.709690, 39.991131, 41.969421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395885, 39.307484, 42.433903>,  <37.305977, 39.456791, 41.765717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395885, 39.307484, 42.433903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553219, 39.675228, 42.430611>,  <37.647617, 39.895874, 42.428635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553219, 39.675228, 42.430611>,  <37.395885, 39.307484, 42.433903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553219, 39.675228, 42.430611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014656, 0.002681, 0.999889,
		0.919280, -0.393409, -0.012419,
		0.393332, 0.919360, -0.008231,
		37.671219, 39.951035, 42.428143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061184, 39.337719, 42.744503>,  <37.395885, 39.307484, 42.433903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061184, 39.337719, 42.744503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920406, 39.706753, 42.807720>,  <37.835941, 39.928173, 42.845650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920406, 39.706753, 42.807720>,  <38.061184, 39.337719, 42.744503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920406, 39.706753, 42.807720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236591, -0.075678, 0.968658,
		0.905627, 0.378303, -0.191641,
		-0.351943, 0.922583, 0.158039,
		37.814823, 39.983528, 42.855133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569408, 39.664974, 43.127865>,  <38.061184, 39.337719, 42.744503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569408, 39.664974, 43.127865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245934, 39.884163, 43.213428>,  <38.051849, 40.015675, 43.264767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245934, 39.884163, 43.213428>,  <38.569408, 39.664974, 43.127865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245934, 39.884163, 43.213428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210895, -0.069395, 0.975043,
		0.549137, 0.833616, -0.059445,
		-0.808686, 0.547968, 0.213912,
		38.003326, 40.048553, 43.277603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711548, 39.970097, 43.767235>,  <38.569408, 39.664974, 43.127865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711548, 39.970097, 43.767235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330349, 40.087963, 43.739048>,  <38.101631, 40.158684, 43.722134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330349, 40.087963, 43.739048>,  <38.711548, 39.970097, 43.767235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330349, 40.087963, 43.739048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049859, 0.076892, 0.995792,
		0.298848, 0.952501, -0.058585,
		-0.952997, 0.294670, -0.070470,
		38.044449, 40.176365, 43.717907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672726, 40.608574, 44.114861>,  <38.711548, 39.970097, 43.767235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672726, 40.608574, 44.114861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308441, 40.443462, 44.108913>,  <38.089870, 40.344395, 44.105343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308441, 40.443462, 44.108913>,  <38.672726, 40.608574, 44.114861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308441, 40.443462, 44.108913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106338, 0.199518, 0.974107,
		-0.399123, 0.888711, -0.225598,
		-0.910710, -0.412778, -0.014872,
		38.035229, 40.319630, 44.104450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.732986, 41.129425, 44.589767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.661026, 40.739391, 44.537857>,  <37.617851, 40.505371, 44.506710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.661026, 40.739391, 44.537857>,  <37.732986, 41.129425, 44.589767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661026, 40.739391, 44.537857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140372, -0.105134, 0.984501,
		-0.973618, 0.195329, -0.117961,
		-0.179900, -0.975086, -0.129779,
		37.607056, 40.446865, 44.498924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129757, 41.092915, 44.941059>,  <37.732986, 41.129425, 44.589767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129757, 41.092915, 44.941059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275318, 40.722660, 44.899559>,  <37.362656, 40.500507, 44.874657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275318, 40.722660, 44.899559>,  <37.129757, 41.092915, 44.941059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275318, 40.722660, 44.899559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088416, -0.145215, 0.985442,
		-0.927230, -0.349435, -0.134686,
		0.363907, -0.925639, -0.103752,
		37.384491, 40.444969, 44.868435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650982, 40.714439, 45.161488>,  <37.129757, 41.092915, 44.941059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650982, 40.714439, 45.161488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999710, 40.521595, 45.196125>,  <37.208946, 40.405888, 45.216908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.999710, 40.521595, 45.196125>,  <36.650982, 40.714439, 45.161488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999710, 40.521595, 45.196125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174474, -0.140458, 0.974592,
		-0.457701, -0.864777, -0.206570,
		0.871819, -0.482113, 0.086593,
		37.261257, 40.376961, 45.222103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470753, 40.206303, 45.474186>,  <36.650982, 40.714439, 45.161488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470753, 40.206303, 45.474186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858536, 40.265392, 45.552505>,  <37.091206, 40.300846, 45.599495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.858536, 40.265392, 45.552505>,  <36.470753, 40.206303, 45.474186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858536, 40.265392, 45.552505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192448, -0.036762, 0.980618,
		0.152060, -0.988345, -0.007210,
		0.969455, 0.147725, 0.195795,
		37.149372, 40.309708, 45.611244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523758, 39.809624, 45.999214>,  <36.470753, 40.206303, 45.474186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523758, 39.809624, 45.999214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843006, 40.049313, 46.024284>,  <37.034557, 40.193127, 46.039326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.843006, 40.049313, 46.024284>,  <36.523758, 39.809624, 45.999214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843006, 40.049313, 46.024284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019932, -0.077713, 0.996777,
		0.602165, -0.796800, -0.050081,
		0.798124, 0.599225, 0.062678,
		37.082443, 40.229080, 46.043087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982254, 39.442352, 46.439007>,  <36.523758, 39.809624, 45.999214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982254, 39.442352, 46.439007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095913, 39.825558, 46.454319>,  <37.164108, 40.055481, 46.463505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.095913, 39.825558, 46.454319>,  <36.982254, 39.442352, 46.439007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095913, 39.825558, 46.454319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122634, -0.075912, 0.989544,
		0.950906, -0.276481, -0.139055,
		0.284146, 0.958016, 0.038279,
		37.181156, 40.112961, 46.465801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598030, 39.467640, 46.930656>,  <36.982254, 39.442352, 46.439007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598030, 39.467640, 46.930656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454361, 39.840221, 46.907368>,  <37.368160, 40.063770, 46.893394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454361, 39.840221, 46.907368>,  <37.598030, 39.467640, 46.930656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454361, 39.840221, 46.907368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080234, 0.092973, 0.992431,
		0.929816, 0.351783, -0.108128,
		-0.359173, 0.931453, -0.058223,
		37.346607, 40.119656, 46.889900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111526, 40.049706, 47.218304>,  <37.598030, 39.467640, 46.930656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111526, 40.049706, 47.218304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772270, 40.261024, 47.234112>,  <37.568718, 40.387817, 47.243595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772270, 40.261024, 47.234112>,  <38.111526, 40.049706, 47.218304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772270, 40.261024, 47.234112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125054, 0.127158, 0.983968,
		0.514805, 0.839482, -0.173914,
		-0.848138, 0.528300, 0.039519,
		37.517830, 40.419514, 47.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182217, 40.698681, 47.614399>,  <38.111526, 40.049706, 47.218304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182217, 40.698681, 47.614399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785053, 40.651352, 47.618954>,  <37.546757, 40.622955, 47.621685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.785053, 40.651352, 47.618954>,  <38.182217, 40.698681, 47.614399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785053, 40.651352, 47.618954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009228, 0.172190, 0.985021,
		-0.118512, 0.977931, -0.172061,
		-0.992910, -0.118325, 0.011383,
		37.487179, 40.615856, 47.622368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887245, 41.301319, 47.933468>,  <38.182217, 40.698681, 47.614399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887245, 41.301319, 47.933468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615662, 41.011139, 47.978611>,  <37.452709, 40.837032, 48.005695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615662, 41.011139, 47.978611>,  <37.887245, 41.301319, 47.933468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615662, 41.011139, 47.978611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058376, 0.206572, 0.976688,
		-0.731850, 0.656545, -0.182603,
		-0.678961, -0.725449, 0.112853,
		37.411972, 40.793503, 48.012466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425480, 41.519707, 48.397739>,  <37.887245, 41.301319, 47.933468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425480, 41.519707, 48.397739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389626, 41.121376, 48.404560>,  <37.368114, 40.882378, 48.408653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389626, 41.121376, 48.404560>,  <37.425480, 41.519707, 48.397739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389626, 41.121376, 48.404560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041282, 0.013390, 0.999058,
		-0.995119, 0.090256, 0.039910,
		-0.089637, -0.995829, 0.017051,
		37.362736, 40.822628, 48.409676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965935, 41.318031, 49.073299>,  <37.425480, 41.519707, 48.397739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965935, 41.318031, 49.073299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144238, 40.980110, 48.954899>,  <37.251217, 40.777359, 48.883858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144238, 40.980110, 48.954899>,  <36.965935, 41.318031, 49.073299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144238, 40.980110, 48.954899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235151, -0.208543, 0.949323,
		-0.863717, -0.492768, 0.105697,
		0.445754, -0.844801, -0.295997,
		37.277966, 40.726669, 48.866100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780621, 40.987053, 49.567482>,  <36.965935, 41.318031, 49.073299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780621, 40.987053, 49.567482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046093, 40.760040, 49.372570>,  <37.205376, 40.623833, 49.255623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.046093, 40.760040, 49.372570>,  <36.780621, 40.987053, 49.567482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046093, 40.760040, 49.372570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473669, -0.185326, 0.860983,
		-0.578939, -0.802225, 0.145824,
		0.663677, -0.567529, -0.487282,
		37.245197, 40.589783, 49.226387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714146, 40.288467, 49.799644>,  <36.780621, 40.987053, 49.567482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714146, 40.288467, 49.799644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089661, 40.309803, 49.663502>,  <37.314968, 40.322605, 49.581818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.089661, 40.309803, 49.663502>,  <36.714146, 40.288467, 49.799644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089661, 40.309803, 49.663502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337395, -0.342080, 0.877010,
		-0.069651, -0.938156, -0.339135,
		0.938783, 0.053338, -0.340355,
		37.371296, 40.325806, 49.561394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029362, 39.635433, 50.126236>,  <36.714146, 40.288467, 49.799644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029362, 39.635433, 50.126236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325462, 39.876907, 50.007854>,  <37.503124, 40.021793, 49.936825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325462, 39.876907, 50.007854>,  <37.029362, 39.635433, 50.126236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325462, 39.876907, 50.007854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537557, -0.267060, 0.799820,
		0.403801, -0.751162, -0.522207,
		0.740255, 0.603684, -0.295953,
		37.547539, 40.058014, 49.919067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618694, 39.228458, 50.198914>,  <37.029362, 39.635433, 50.126236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618694, 39.228458, 50.198914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736904, 39.610386, 50.186295>,  <37.807831, 39.839542, 50.178722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.736904, 39.610386, 50.186295>,  <37.618694, 39.228458, 50.198914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736904, 39.610386, 50.186295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629971, -0.169942, 0.757797,
		0.718195, -0.243820, -0.651727,
		0.295522, 0.954815, -0.031548,
		37.825562, 39.896832, 50.176830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380875, 39.185474, 50.100979>,  <37.618694, 39.228458, 50.198914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380875, 39.185474, 50.100979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280514, 39.545757, 50.242840>,  <38.220299, 39.761925, 50.327957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280514, 39.545757, 50.242840>,  <38.380875, 39.185474, 50.100979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280514, 39.545757, 50.242840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694509, -0.087724, 0.714116,
		0.674320, 0.425482, -0.603537,
		-0.250899, 0.900705, 0.354656,
		38.205246, 39.815968, 50.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005901, 39.612595, 50.214424>,  <38.380875, 39.185474, 50.100979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005901, 39.612595, 50.214424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734215, 39.792065, 50.446754>,  <38.571205, 39.899746, 50.586151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.734215, 39.792065, 50.446754>,  <39.005901, 39.612595, 50.214424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734215, 39.792065, 50.446754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591933, -0.132993, 0.794939,
		0.433916, 0.883743, -0.175256,
		-0.679214, 0.448677, 0.580825,
		38.530449, 39.926666, 50.621002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507778, 39.916904, 50.713375>,  <39.005901, 39.612595, 50.214424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507778, 39.916904, 50.713375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146545, 39.920975, 50.885113>,  <38.929806, 39.923416, 50.988155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.146545, 39.920975, 50.885113>,  <39.507778, 39.916904, 50.713375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146545, 39.920975, 50.885113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422831, -0.153919, 0.893042,
		0.075169, 0.988031, 0.134700,
		-0.903086, 0.010174, 0.429340,
		38.875618, 39.924026, 51.013916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551220, 40.341576, 51.340801>,  <39.507778, 39.916904, 50.713375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551220, 40.341576, 51.340801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225872, 40.113255, 51.385727>,  <39.030663, 39.976261, 51.412682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.225872, 40.113255, 51.385727>,  <39.551220, 40.341576, 51.340801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225872, 40.113255, 51.385727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244238, -0.159823, 0.956454,
		-0.527997, 0.805382, 0.269407,
		-0.813368, -0.570804, 0.112319,
		38.981861, 39.942013, 51.419422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114559, 40.645679, 51.967911>,  <39.551220, 40.341576, 51.340801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114559, 40.645679, 51.967911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021843, 40.257877, 51.936096>,  <38.966213, 40.025196, 51.917007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.021843, 40.257877, 51.936096>,  <39.114559, 40.645679, 51.967911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021843, 40.257877, 51.936096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069892, -0.098152, 0.992714,
		-0.970251, 0.224547, 0.090512,
		-0.231795, -0.969508, -0.079538,
		38.952305, 39.967026, 51.912235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647114, 40.526073, 52.440567>,  <39.114559, 40.645679, 51.967911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647114, 40.526073, 52.440567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.789749, 40.158924, 52.370880>,  <38.875328, 39.938633, 52.329067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.789749, 40.158924, 52.370880>,  <38.647114, 40.526073, 52.440567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789749, 40.158924, 52.370880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023359, -0.195173, 0.980491,
		-0.933971, -0.345559, -0.091036,
		0.356586, -0.917876, -0.174214,
		38.896725, 39.883560, 52.318615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237808, 39.995602, 52.704250>,  <38.647114, 40.526073, 52.440567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237808, 39.995602, 52.704250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604664, 39.836864, 52.689445>,  <38.824780, 39.741623, 52.680561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.604664, 39.836864, 52.689445>,  <38.237808, 39.995602, 52.704250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604664, 39.836864, 52.689445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065966, -0.242732, 0.967848,
		-0.393067, -0.885211, -0.248797,
		0.917140, -0.396841, -0.037017,
		38.879807, 39.717812, 52.678341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600922, 39.597397, 52.469570>,  <38.237808, 39.995602, 52.704250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600922, 39.597397, 52.469570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369659, 39.337803, 52.667377>,  <37.230904, 39.182045, 52.786064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369659, 39.337803, 52.667377>,  <37.600922, 39.597397, 52.469570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369659, 39.337803, 52.667377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640460, 0.014541, 0.767854,
		-0.505519, 0.760660, 0.407243,
		-0.578154, -0.648988, 0.494523,
		37.196213, 39.143105, 52.815735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995605, 39.903969, 52.508686>,  <37.600922, 39.597397, 52.469570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995605, 39.903969, 52.508686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623890, 39.769730, 52.570385>,  <36.400860, 39.689186, 52.607403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623890, 39.769730, 52.570385>,  <36.995605, 39.903969, 52.508686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623890, 39.769730, 52.570385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278223, 0.361396, -0.889935,
		0.242916, -0.869924, -0.429213,
		-0.929292, -0.335596, 0.154244,
		36.345100, 39.669052, 52.616657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787308, 39.539848, 51.835159>,  <36.995605, 39.903969, 52.508686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787308, 39.539848, 51.835159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454071, 39.636185, 52.034336>,  <36.254128, 39.693985, 52.153843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.454071, 39.636185, 52.034336>,  <36.787308, 39.539848, 51.835159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454071, 39.636185, 52.034336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498331, 0.063861, -0.864632,
		-0.240037, -0.968462, 0.066816,
		-0.833096, 0.240840, 0.497944,
		36.204144, 39.708435, 52.183720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250729, 39.213783, 51.399269>,  <36.787308, 39.539848, 51.835159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250729, 39.213783, 51.399269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048588, 39.476803, 51.622784>,  <35.927303, 39.634617, 51.756893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.048588, 39.476803, 51.622784>,  <36.250729, 39.213783, 51.399269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048588, 39.476803, 51.622784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653473, 0.131284, -0.745478,
		-0.563549, -0.741883, 0.363347,
		-0.505356, 0.657551, 0.558785,
		35.896980, 39.674068, 51.790421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477455, 39.064632, 51.513817>,  <36.250729, 39.213783, 51.399269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477455, 39.064632, 51.513817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500263, 39.456459, 51.590973>,  <35.513950, 39.691555, 51.637264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500263, 39.456459, 51.590973>,  <35.477455, 39.064632, 51.513817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500263, 39.456459, 51.590973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644946, 0.183621, -0.741841,
		-0.762097, -0.082099, 0.642236,
		0.057024, 0.979563, 0.192886,
		35.517372, 39.750328, 51.648838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805637, 39.252861, 51.496239>,  <35.477455, 39.064632, 51.513817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805637, 39.252861, 51.496239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011879, 39.592381, 51.449429>,  <35.135624, 39.796093, 51.421345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.011879, 39.592381, 51.449429>,  <34.805637, 39.252861, 51.496239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011879, 39.592381, 51.449429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552116, 0.224686, -0.802922,
		-0.655227, 0.478597, 0.584485,
		0.515602, 0.848800, -0.117021,
		35.166561, 39.847019, 51.414322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259991, 39.743782, 51.390724>,  <34.805637, 39.252861, 51.496239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259991, 39.743782, 51.390724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605465, 39.864204, 51.229031>,  <34.812748, 39.936459, 51.132015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605465, 39.864204, 51.229031>,  <34.259991, 39.743782, 51.390724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605465, 39.864204, 51.229031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486244, 0.286510, -0.825518,
		-0.132711, 0.909547, 0.393842,
		0.863687, 0.301058, -0.404239,
		34.864571, 39.954521, 51.107758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090733, 40.442436, 51.124760>,  <34.259991, 39.743782, 51.390724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090733, 40.442436, 51.124760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418365, 40.306313, 50.940025>,  <34.614944, 40.224640, 50.829185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.418365, 40.306313, 50.940025>,  <34.090733, 40.442436, 51.124760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418365, 40.306313, 50.940025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424417, 0.182171, -0.886952,
		0.385968, 0.922500, 0.004782,
		0.819084, -0.340305, -0.461837,
		34.664089, 40.204220, 50.801476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189014, 40.891209, 50.567268>,  <34.090733, 40.442436, 51.124760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189014, 40.891209, 50.567268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442856, 40.602234, 50.457455>,  <34.595161, 40.428848, 50.391567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442856, 40.602234, 50.457455>,  <34.189014, 40.891209, 50.567268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442856, 40.602234, 50.457455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213498, 0.177524, -0.960679,
		0.742761, 0.668264, -0.041580,
		0.634606, -0.722432, -0.274531,
		34.633236, 40.385506, 50.375095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615856, 41.148739, 50.036198>,  <34.189014, 40.891209, 50.567268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615856, 41.148739, 50.036198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641968, 40.753139, 49.983101>,  <34.657635, 40.515781, 49.951244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641968, 40.753139, 49.983101>,  <34.615856, 41.148739, 50.036198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641968, 40.753139, 49.983101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105240, 0.125460, -0.986501,
		0.992302, 0.078366, -0.095893,
		0.065278, -0.988999, -0.132741,
		34.661552, 40.456440, 49.943279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128342, 40.914608, 49.553284>,  <34.615856, 41.148739, 50.036198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128342, 40.914608, 49.553284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867859, 40.611126, 49.560104>,  <34.711571, 40.429035, 49.564198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867859, 40.611126, 49.560104>,  <35.128342, 40.914608, 49.553284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867859, 40.611126, 49.560104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118269, -0.123649, -0.985253,
		0.749628, -0.639587, 0.170253,
		-0.651207, -0.758709, 0.017047,
		34.672497, 40.383514, 49.565220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444450, 40.346184, 49.282516>,  <35.128342, 40.914608, 49.553284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444450, 40.346184, 49.282516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052818, 40.292564, 49.221294>,  <34.817837, 40.260395, 49.184563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052818, 40.292564, 49.221294>,  <35.444450, 40.346184, 49.282516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052818, 40.292564, 49.221294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161700, -0.056140, -0.985242,
		0.123476, -0.989383, 0.076641,
		-0.979085, -0.134046, -0.153051,
		34.759094, 40.252350, 49.175381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473595, 40.066925, 48.694542>,  <35.444450, 40.346184, 49.282516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473595, 40.066925, 48.694542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073746, 40.077934, 48.693596>,  <34.833836, 40.084541, 48.693027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.073746, 40.077934, 48.693596>,  <35.473595, 40.066925, 48.694542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073746, 40.077934, 48.693596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002885, -0.189112, -0.981951,
		-0.027474, -0.981570, 0.189120,
		-0.999618, 0.027523, -0.002364,
		34.773861, 40.086193, 48.692886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250412, 39.466175, 48.397701>,  <35.473595, 40.066925, 48.694542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250412, 39.466175, 48.397701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954311, 39.727425, 48.333881>,  <34.776653, 39.884174, 48.295589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.954311, 39.727425, 48.333881>,  <35.250412, 39.466175, 48.397701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954311, 39.727425, 48.333881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002405, -0.234728, -0.972058,
		-0.672328, -0.719949, 0.172187,
		-0.740249, 0.653128, -0.159545,
		34.732235, 39.923363, 48.286018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841457, 39.169991, 47.879162>,  <35.250412, 39.466175, 48.397701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841457, 39.169991, 47.879162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761600, 39.561920, 47.875271>,  <34.713688, 39.797077, 47.872936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.761600, 39.561920, 47.875271>,  <34.841457, 39.169991, 47.879162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761600, 39.561920, 47.875271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096928, 0.009864, -0.995243,
		-0.975064, -0.199634, -0.096942,
		-0.199640, 0.979821, -0.009732,
		34.701710, 39.855865, 47.872353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412407, 39.294491, 47.287323>,  <34.841457, 39.169991, 47.879162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412407, 39.294491, 47.287323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517967, 39.669548, 47.377815>,  <34.581303, 39.894581, 47.432110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517967, 39.669548, 47.377815>,  <34.412407, 39.294491, 47.287323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517967, 39.669548, 47.377815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261389, 0.156250, -0.952503,
		-0.928457, 0.310498, -0.203856,
		0.263898, 0.937644, 0.226232,
		34.597137, 39.950840, 47.445686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082638, 39.730732, 46.685089>,  <34.412407, 39.294491, 47.287323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082638, 39.730732, 46.685089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347530, 39.950897, 46.888458>,  <34.506466, 40.082996, 47.010479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.347530, 39.950897, 46.888458>,  <34.082638, 39.730732, 46.685089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347530, 39.950897, 46.888458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312194, 0.414152, -0.854993,
		-0.681166, 0.724929, 0.102428,
		0.662230, 0.550414, 0.508425,
		34.546200, 40.116020, 47.040985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892918, 40.378128, 46.464725>,  <34.082638, 39.730732, 46.685089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892918, 40.378128, 46.464725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276501, 40.346905, 46.573765>,  <34.506649, 40.328171, 46.639191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276501, 40.346905, 46.573765>,  <33.892918, 40.378128, 46.464725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276501, 40.346905, 46.573765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280334, 0.116434, -0.952815,
		0.042632, 0.990126, 0.133537,
		0.958955, -0.078056, 0.272602,
		34.564186, 40.323486, 46.655544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237366, 40.999554, 46.225700>,  <33.892918, 40.378128, 46.464725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237366, 40.999554, 46.225700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504410, 40.704266, 46.264347>,  <34.664635, 40.527092, 46.287537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.504410, 40.704266, 46.264347>,  <34.237366, 40.999554, 46.225700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504410, 40.704266, 46.264347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315012, 0.162496, -0.935074,
		0.674589, 0.654697, 0.341031,
		0.667606, -0.738219, 0.096620,
		34.704693, 40.482800, 46.293331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749840, 41.236618, 45.849850>,  <34.237366, 40.999554, 46.225700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749840, 41.236618, 45.849850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835693, 40.847530, 45.885063>,  <34.887207, 40.614079, 45.906189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.835693, 40.847530, 45.885063>,  <34.749840, 41.236618, 45.849850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835693, 40.847530, 45.885063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252097, -0.031902, -0.967176,
		0.943599, 0.229779, 0.238372,
		0.214633, -0.972720, 0.088029,
		34.900082, 40.555714, 45.911472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387627, 41.126694, 45.518871>,  <34.749840, 41.236618, 45.849850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387627, 41.126694, 45.518871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291882, 40.738838, 45.538910>,  <35.234436, 40.506126, 45.550934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291882, 40.738838, 45.538910>,  <35.387627, 41.126694, 45.518871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291882, 40.738838, 45.538910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256360, -0.112880, -0.959968,
		0.936476, -0.216933, 0.275595,
		-0.239358, -0.969638, 0.050096,
		35.220074, 40.447948, 45.553940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.041416, 37.472778, 31.559753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968315, 37.837982, 31.705635>,  <36.924454, 38.057106, 31.793165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968315, 37.837982, 31.705635>,  <37.041416, 37.472778, 31.559753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968315, 37.837982, 31.705635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889254, -0.004707, 0.457388,
		0.419318, 0.407905, -0.811040,
		-0.182753, 0.913012, 0.364706,
		36.913490, 38.111885, 31.815046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630711, 37.911957, 31.558205>,  <37.041416, 37.472778, 31.559753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630711, 37.911957, 31.558205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430851, 38.076237, 31.863274>,  <37.310936, 38.174805, 32.046314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430851, 38.076237, 31.863274>,  <37.630711, 37.911957, 31.558205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430851, 38.076237, 31.863274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863611, 0.167817, 0.475408,
		0.067262, 0.896192, -0.438538,
		-0.499651, 0.410703, 0.762674,
		37.280956, 38.199448, 32.092075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086617, 38.340538, 31.864197>,  <37.630711, 37.911957, 31.558205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086617, 38.340538, 31.864197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844185, 38.297337, 32.179413>,  <37.698727, 38.271416, 32.368542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.844185, 38.297337, 32.179413>,  <38.086617, 38.340538, 31.864197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844185, 38.297337, 32.179413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748817, 0.256617, 0.611081,
		-0.268222, 0.960460, -0.074656,
		-0.606077, -0.108002, 0.788040,
		37.662361, 38.264935, 32.415825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203697, 38.935478, 32.258034>,  <38.086617, 38.340538, 31.864197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203697, 38.935478, 32.258034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056862, 38.672272, 32.521019>,  <37.968761, 38.514347, 32.678810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.056862, 38.672272, 32.521019>,  <38.203697, 38.935478, 32.258034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056862, 38.672272, 32.521019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767932, 0.184471, 0.613393,
		-0.524908, 0.730054, 0.437598,
		-0.367087, -0.658020, 0.657462,
		37.946735, 38.474865, 32.718258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191170, 39.217918, 32.952541>,  <38.203697, 38.935478, 32.258034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191170, 39.217918, 32.952541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.194073, 38.822273, 33.011322>,  <38.195816, 38.584885, 33.046589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.194073, 38.822273, 33.011322>,  <38.191170, 39.217918, 32.952541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194073, 38.822273, 33.011322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655936, 0.115632, 0.745907,
		-0.754781, 0.090979, 0.649637,
		0.007257, -0.989117, 0.146953,
		38.196251, 38.525539, 33.055408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523148, 39.091137, 33.658543>,  <38.191170, 39.217918, 32.952541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523148, 39.091137, 33.658543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532021, 38.717606, 33.515732>,  <38.537346, 38.493484, 33.430046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532021, 38.717606, 33.515732>,  <38.523148, 39.091137, 33.658543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532021, 38.717606, 33.515732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738225, -0.225524, 0.635738,
		-0.674190, -0.277668, 0.684375,
		0.022181, -0.933831, -0.357027,
		38.538673, 38.437458, 33.408623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641483, 38.670341, 34.229465>,  <38.523148, 39.091137, 33.658543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641483, 38.670341, 34.229465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.739727, 38.447693, 33.912010>,  <38.798672, 38.314106, 33.721539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.739727, 38.447693, 33.912010>,  <38.641483, 38.670341, 34.229465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739727, 38.447693, 33.912010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814374, -0.325609, 0.480390,
		-0.525808, -0.764300, 0.373325,
		0.245604, -0.556619, -0.793634,
		38.813408, 38.280708, 33.673920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744461, 37.946400, 34.482815>,  <38.641483, 38.670341, 34.229465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744461, 37.946400, 34.482815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923817, 37.983479, 34.127209>,  <39.031429, 38.005726, 33.913845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923817, 37.983479, 34.127209>,  <38.744461, 37.946400, 34.482815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923817, 37.983479, 34.127209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876236, -0.241991, 0.416714,
		-0.176505, -0.965840, -0.189734,
		0.448393, 0.092700, -0.889017,
		39.058334, 38.011288, 33.860504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271667, 37.354523, 34.407097>,  <38.744461, 37.946400, 34.482815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271667, 37.354523, 34.407097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393246, 37.630276, 34.144077>,  <39.466194, 37.795727, 33.986267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393246, 37.630276, 34.144077>,  <39.271667, 37.354523, 34.407097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393246, 37.630276, 34.144077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944587, -0.128251, 0.302170,
		0.123979, -0.712955, -0.690163,
		0.303948, 0.689381, -0.657548,
		39.484428, 37.837090, 33.946812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825752, 37.092674, 34.267906>,  <39.271667, 37.354523, 34.407097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825752, 37.092674, 34.267906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861973, 37.471588, 34.144974>,  <39.883705, 37.698936, 34.071213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861973, 37.471588, 34.144974>,  <39.825752, 37.092674, 34.267906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861973, 37.471588, 34.144974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979863, -0.029605, 0.197464,
		0.177956, -0.319028, -0.930888,
		0.090556, 0.947283, -0.307335,
		39.889141, 37.755772, 34.052773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362782, 37.146698, 33.926601>,  <39.825752, 37.092674, 34.267906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362782, 37.146698, 33.926601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322365, 37.528862, 34.037582>,  <40.298115, 37.758160, 34.104172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322365, 37.528862, 34.037582>,  <40.362782, 37.146698, 33.926601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322365, 37.528862, 34.037582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948863, 0.008709, 0.315569,
		0.299082, 0.295147, -0.907435,
		-0.101042, 0.955412, 0.277449,
		40.292053, 37.815487, 34.120815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958370, 37.516125, 33.729252>,  <40.362782, 37.146698, 33.926601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958370, 37.516125, 33.729252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795242, 37.788483, 33.972584>,  <40.697365, 37.951897, 34.118584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.795242, 37.788483, 33.972584>,  <40.958370, 37.516125, 33.729252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795242, 37.788483, 33.972584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889710, 0.146629, 0.432338,
		0.205177, 0.717554, -0.665596,
		-0.407822, 0.680893, 0.608330,
		40.672897, 37.992752, 34.155083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432571, 38.190617, 33.736378>,  <40.958370, 37.516125, 33.729252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432571, 38.190617, 33.736378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219265, 38.111210, 34.065308>,  <41.091282, 38.063568, 34.262665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.219265, 38.111210, 34.065308>,  <41.432571, 38.190617, 33.736378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219265, 38.111210, 34.065308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834850, 0.033442, 0.549461,
		-0.136576, 0.979527, 0.147896,
		-0.533266, -0.198515, 0.822325,
		41.059284, 38.051655, 34.312004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685631, 38.645226, 34.171474>,  <41.432571, 38.190617, 33.736378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685631, 38.645226, 34.171474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519978, 38.399071, 34.439743>,  <41.420586, 38.251377, 34.600704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.519978, 38.399071, 34.439743>,  <41.685631, 38.645226, 34.171474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519978, 38.399071, 34.439743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824955, 0.057603, 0.562255,
		-0.384635, 0.786121, 0.483808,
		-0.414131, -0.615382, 0.670671,
		41.395737, 38.214455, 34.640945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918468, 38.861420, 34.787823>,  <41.685631, 38.645226, 34.171474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918468, 38.861420, 34.787823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790100, 38.501228, 34.905224>,  <41.713078, 38.285114, 34.975662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790100, 38.501228, 34.905224>,  <41.918468, 38.861420, 34.787823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790100, 38.501228, 34.905224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711363, -0.024586, 0.702394,
		-0.625277, 0.434198, 0.648460,
		-0.320921, -0.900482, 0.293499,
		41.693825, 38.231083, 34.993275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742851, 38.841778, 35.533115>,  <41.918468, 38.861420, 34.787823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742851, 38.841778, 35.533115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.799061, 38.452965, 35.457851>,  <41.832787, 38.219677, 35.412693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.799061, 38.452965, 35.457851>,  <41.742851, 38.841778, 35.533115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799061, 38.452965, 35.457851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621012, -0.061476, 0.781386,
		-0.771101, -0.226654, 0.595006,
		0.140525, -0.972033, -0.188159,
		41.841217, 38.161354, 35.401405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793972, 38.548828, 36.191315>,  <41.742851, 38.841778, 35.533115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793972, 38.548828, 36.191315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965336, 38.267799, 35.964035>,  <42.068153, 38.099182, 35.827667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965336, 38.267799, 35.964035>,  <41.793972, 38.548828, 36.191315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965336, 38.267799, 35.964035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800242, 0.002984, 0.599670,
		-0.419617, -0.711605, 0.563507,
		0.428410, -0.702574, -0.568203,
		42.093861, 38.057026, 35.793575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992180, 37.831867, 36.552597>,  <41.793972, 38.548828, 36.191315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992180, 37.831867, 36.552597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237972, 37.875828, 36.240101>,  <42.385448, 37.902206, 36.052605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237972, 37.875828, 36.240101>,  <41.992180, 37.831867, 36.552597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237972, 37.875828, 36.240101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781310, -0.222095, 0.583291,
		-0.109403, -0.968811, -0.222343,
		0.614480, 0.109904, -0.781240,
		42.422318, 37.908798, 36.005730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509171, 37.129738, 36.533855>,  <41.992180, 37.831867, 36.552597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509171, 37.129738, 36.533855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664371, 37.424702, 36.312702>,  <42.757492, 37.601681, 36.180012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664371, 37.424702, 36.312702>,  <42.509171, 37.129738, 36.533855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664371, 37.424702, 36.312702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911213, -0.216859, 0.350233,
		0.138368, -0.639687, -0.756079,
		0.388002, 0.737410, -0.552885,
		42.780773, 37.645924, 36.146835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052380, 36.790585, 36.104836>,  <42.509171, 37.129738, 36.533855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052380, 36.790585, 36.104836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119740, 37.184181, 36.128170>,  <43.160156, 37.420338, 36.142170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.119740, 37.184181, 36.128170>,  <43.052380, 36.790585, 36.104836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119740, 37.184181, 36.128170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897403, -0.177529, 0.403920,
		0.407811, -0.015665, -0.912932,
		0.168400, 0.983991, 0.058340,
		43.170258, 37.479378, 36.145672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705616, 37.006966, 35.729210>,  <43.052380, 36.790585, 36.104836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705616, 37.006966, 35.729210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564007, 37.210964, 36.042789>,  <43.479042, 37.333363, 36.230938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564007, 37.210964, 36.042789>,  <43.705616, 37.006966, 35.729210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564007, 37.210964, 36.042789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806694, -0.257597, 0.531873,
		0.473196, 0.820699, -0.320217,
		-0.354020, 0.509997, 0.783947,
		43.457802, 37.363964, 36.277973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415264, 37.162277, 35.961189>,  <43.705616, 37.006966, 35.729210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415264, 37.162277, 35.961189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811169, 37.107220, 35.946079>,  <45.048710, 37.074184, 35.937016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.811169, 37.107220, 35.946079>,  <44.415264, 37.162277, 35.961189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811169, 37.107220, 35.946079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036485, 0.011870, -0.999264,
		0.137988, 0.990411, 0.006726,
		0.989762, -0.137641, -0.037773,
		45.108097, 37.065926, 35.934746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661781, 37.688221, 35.715561>,  <44.415264, 37.162277, 35.961189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661781, 37.688221, 35.715561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871609, 37.358555, 35.630165>,  <44.997505, 37.160755, 35.578930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871609, 37.358555, 35.630165>,  <44.661781, 37.688221, 35.715561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871609, 37.358555, 35.630165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290246, 0.062615, -0.954901,
		0.800368, 0.562871, -0.206367,
		0.524564, -0.824170, -0.213487,
		45.028976, 37.111305, 35.566120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099113, 37.885265, 35.147713>,  <44.661781, 37.688221, 35.715561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099113, 37.885265, 35.147713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084465, 37.485600, 35.140518>,  <45.075676, 37.245800, 35.136200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.084465, 37.485600, 35.140518>,  <45.099113, 37.885265, 35.147713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084465, 37.485600, 35.140518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156814, 0.023523, -0.987348,
		0.986949, -0.033337, -0.157545,
		-0.036622, -0.999167, -0.017988,
		45.073479, 37.185848, 35.135120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529530, 37.598400, 34.573444>,  <45.099113, 37.885265, 35.147713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529530, 37.598400, 34.573444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275406, 37.301498, 34.658714>,  <45.122932, 37.123356, 34.709877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275406, 37.301498, 34.658714>,  <45.529530, 37.598400, 34.573444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275406, 37.301498, 34.658714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290078, -0.026461, -0.956637,
		0.715709, -0.669596, -0.198501,
		-0.635307, -0.742254, 0.213174,
		45.084812, 37.078823, 34.722668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545479, 37.125648, 33.998482>,  <45.529530, 37.598400, 34.573444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545479, 37.125648, 33.998482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209763, 37.026119, 34.191841>,  <45.008331, 36.966404, 34.307858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.209763, 37.026119, 34.191841>,  <45.545479, 37.125648, 33.998482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.209763, 37.026119, 34.191841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483125, -0.066447, -0.873026,
		0.249348, -0.966267, -0.064443,
		-0.839295, -0.248821, 0.483396,
		44.957973, 36.951473, 34.336861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230202, 36.815060, 33.489113>,  <45.545479, 37.125648, 33.998482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230202, 36.815060, 33.489113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924644, 36.897251, 33.733814>,  <44.741310, 36.946564, 33.880634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924644, 36.897251, 33.733814>,  <45.230202, 36.815060, 33.489113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924644, 36.897251, 33.733814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621917, 0.018677, -0.782861,
		-0.172285, -0.978484, 0.113522,
		-0.763896, 0.205477, 0.611753,
		44.695477, 36.958893, 33.917339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.629875, 36.307365, 33.378117>,  <45.230202, 36.815060, 33.489113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.629875, 36.307365, 33.378117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474842, 36.634640, 33.547989>,  <44.381824, 36.831005, 33.649910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474842, 36.634640, 33.547989>,  <44.629875, 36.307365, 33.378117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474842, 36.634640, 33.547989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698010, 0.040439, -0.714945,
		-0.602133, -0.573527, 0.555430,
		-0.387579, 0.818188, 0.424677,
		44.358566, 36.880096, 33.675392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799648, 36.255741, 33.352383>,  <44.629875, 36.307365, 33.378117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799648, 36.255741, 33.352383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885689, 36.643944, 33.395927>,  <43.937313, 36.876865, 33.422054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885689, 36.643944, 33.395927>,  <43.799648, 36.255741, 33.352383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885689, 36.643944, 33.395927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583477, 0.217099, -0.782574,
		-0.783126, 0.104816, 0.612966,
		0.215100, 0.970506, 0.108858,
		43.950218, 36.935097, 33.428585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165344, 36.644440, 33.311623>,  <43.799648, 36.255741, 33.352383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165344, 36.644440, 33.311623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412003, 36.952976, 33.248661>,  <43.559998, 37.138100, 33.210884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412003, 36.952976, 33.248661>,  <43.165344, 36.644440, 33.311623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412003, 36.952976, 33.248661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653077, 0.389577, -0.649400,
		-0.439590, 0.503246, 0.743978,
		0.616645, 0.771345, -0.157404,
		43.596996, 37.184380, 33.201439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733589, 37.227425, 33.385208>,  <43.165344, 36.644440, 33.311623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733589, 37.227425, 33.385208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.071983, 37.327057, 33.196625>,  <43.275021, 37.386837, 33.083477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.071983, 37.327057, 33.196625>,  <42.733589, 37.227425, 33.385208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071983, 37.327057, 33.196625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532796, 0.429534, -0.729128,
		0.020895, 0.868021, 0.496088,
		0.845985, 0.249078, -0.471454,
		43.325779, 37.401779, 33.055187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687130, 37.871819, 33.096245>,  <42.733589, 37.227425, 33.385208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687130, 37.871819, 33.096245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952518, 37.685974, 32.861656>,  <43.111752, 37.574467, 32.720901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952518, 37.685974, 32.861656>,  <42.687130, 37.871819, 33.096245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952518, 37.685974, 32.861656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561656, 0.208594, -0.800644,
		0.494320, 0.860598, -0.122553,
		0.663469, -0.464607, -0.586472,
		43.151558, 37.546593, 32.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633724, 38.224899, 32.548389>,  <42.687130, 37.871819, 33.096245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633724, 38.224899, 32.548389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856247, 37.944901, 32.369270>,  <42.989761, 37.776901, 32.261799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.856247, 37.944901, 32.369270>,  <42.633724, 38.224899, 32.548389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856247, 37.944901, 32.369270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513691, 0.133886, -0.847464,
		0.653177, 0.701482, -0.285100,
		0.556310, -0.699998, -0.447797,
		43.023140, 37.734901, 32.234932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720959, 38.536236, 31.907152>,  <42.633724, 38.224899, 32.548389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720959, 38.536236, 31.907152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827885, 38.153908, 31.858234>,  <42.892040, 37.924511, 31.828884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.827885, 38.153908, 31.858234>,  <42.720959, 38.536236, 31.907152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827885, 38.153908, 31.858234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468592, -0.018048, -0.883231,
		0.842000, 0.293408, -0.452713,
		0.267317, -0.955817, -0.122293,
		42.908081, 37.867161, 31.821547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072460, 38.491920, 31.134897>,  <42.720959, 38.536236, 31.907152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072460, 38.491920, 31.134897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922394, 38.140072, 31.251867>,  <42.832355, 37.928963, 31.322048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.922394, 38.140072, 31.251867>,  <43.072460, 38.491920, 31.134897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922394, 38.140072, 31.251867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570146, -0.029766, -0.821004,
		0.730880, -0.474735, -0.490348,
		-0.375163, -0.879625, 0.292424,
		42.809845, 37.876183, 31.339594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176647, 38.159847, 30.562302>,  <43.072460, 38.491920, 31.134897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176647, 38.159847, 30.562302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905270, 37.952713, 30.770746>,  <42.742443, 37.828434, 30.895813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905270, 37.952713, 30.770746>,  <43.176647, 38.159847, 30.562302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905270, 37.952713, 30.770746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596299, -0.026170, -0.802336,
		0.429116, -0.855079, -0.291030,
		-0.678445, -0.517836, 0.521113,
		42.701736, 37.797363, 30.927080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948147, 37.589397, 30.114857>,  <43.176647, 38.159847, 30.562302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948147, 37.589397, 30.114857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663235, 37.606487, 30.395092>,  <42.492287, 37.616741, 30.563234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.663235, 37.606487, 30.395092>,  <42.948147, 37.589397, 30.114857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663235, 37.606487, 30.395092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701351, -0.082468, -0.708029,
		0.027526, -0.995678, 0.088705,
		-0.712284, 0.042724, 0.700590,
		42.449551, 37.619305, 30.605268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.442905, 36.989010, 29.977865>,  <42.948147, 37.589397, 30.114857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.442905, 36.989010, 29.977865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272469, 37.272724, 30.202496>,  <42.170208, 37.442951, 30.337273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.272469, 37.272724, 30.202496>,  <42.442905, 36.989010, 29.977865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272469, 37.272724, 30.202496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791234, 0.008794, -0.611450,
		-0.438629, -0.704870, 0.557461,
		-0.426090, 0.709283, 0.561574,
		42.144642, 37.485508, 30.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722664, 36.786335, 30.020996>,  <42.442905, 36.989010, 29.977865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722664, 36.786335, 30.020996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707809, 37.174942, 30.114611>,  <41.698895, 37.408108, 30.170780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707809, 37.174942, 30.114611>,  <41.722664, 36.786335, 30.020996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707809, 37.174942, 30.114611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936470, 0.047903, -0.347463,
		-0.348777, -0.232074, 0.908018,
		-0.037140, 0.971518, 0.234038,
		41.696667, 37.466396, 30.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167831, 36.931259, 30.510662>,  <41.722664, 36.786335, 30.020996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167831, 36.931259, 30.510662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249615, 37.274158, 30.321634>,  <41.298683, 37.479897, 30.208218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249615, 37.274158, 30.321634>,  <41.167831, 36.931259, 30.510662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249615, 37.274158, 30.321634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966563, 0.253132, 0.040998,
		0.154768, 0.448387, 0.880338,
		0.204459, 0.857247, -0.472571,
		41.310951, 37.531334, 30.179863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735310, 37.435638, 30.718302>,  <41.167831, 36.931259, 30.510662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735310, 37.435638, 30.718302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894321, 37.675884, 30.440817>,  <40.989727, 37.820030, 30.274326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.894321, 37.675884, 30.440817>,  <40.735310, 37.435638, 30.718302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894321, 37.675884, 30.440817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819494, 0.572495, 0.026060,
		0.412799, 0.558135, 0.719779,
		0.397525, 0.600612, -0.693713,
		41.013580, 37.856068, 30.232702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730820, 38.115360, 30.982666>,  <40.735310, 37.435638, 30.718302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730820, 38.115360, 30.982666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718685, 38.150997, 30.584442>,  <40.711407, 38.172379, 30.345507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.718685, 38.150997, 30.584442>,  <40.730820, 38.115360, 30.982666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718685, 38.150997, 30.584442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810011, 0.581377, 0.076708,
		0.585630, 0.808742, 0.054533,
		-0.030333, 0.089095, -0.995561,
		40.709587, 38.177727, 30.285774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.957626, 40.457920, 42.012009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600658, 40.345329, 41.870949>,  <38.386478, 40.277775, 41.786312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600658, 40.345329, 41.870949>,  <38.957626, 40.457920, 42.012009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600658, 40.345329, 41.870949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360669, 0.024643, -0.932368,
		0.271130, -0.959252, 0.079527,
		-0.892416, -0.281476, -0.352654,
		38.332935, 40.260887, 41.765152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931496, 39.783989, 41.612499>,  <38.957626, 40.457920, 42.012009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931496, 39.783989, 41.612499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617691, 39.984596, 41.466610>,  <38.429409, 40.104961, 41.379078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617691, 39.984596, 41.466610>,  <38.931496, 39.783989, 41.612499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617691, 39.984596, 41.466610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366725, -0.099060, -0.925041,
		-0.500056, -0.859456, -0.106206,
		-0.784511, 0.501521, -0.364719,
		38.382339, 40.135052, 41.357193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824249, 39.485184, 40.922108>,  <38.931496, 39.783989, 41.612499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824249, 39.485184, 40.922108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577732, 39.796917, 40.876812>,  <38.429821, 39.983955, 40.849632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577732, 39.796917, 40.876812>,  <38.824249, 39.485184, 40.922108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577732, 39.796917, 40.876812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041246, -0.111656, -0.992890,
		-0.786434, -0.616585, 0.036669,
		-0.616296, 0.779330, -0.113242,
		38.392845, 40.030716, 40.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353348, 39.288227, 40.444622>,  <38.824249, 39.485184, 40.922108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353348, 39.288227, 40.444622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299362, 39.684429, 40.455151>,  <38.266972, 39.922150, 40.461468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299362, 39.684429, 40.455151>,  <38.353348, 39.288227, 40.444622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299362, 39.684429, 40.455151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194286, -0.000408, -0.980945,
		-0.971616, -0.137503, 0.192496,
		-0.134962, 0.990501, 0.026319,
		38.258873, 39.981579, 40.463047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770115, 39.474197, 39.986851>,  <38.353348, 39.288227, 40.444622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770115, 39.474197, 39.986851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975555, 39.815254, 40.025238>,  <38.098820, 40.019890, 40.048271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975555, 39.815254, 40.025238>,  <37.770115, 39.474197, 39.986851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975555, 39.815254, 40.025238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059074, 0.146717, -0.987413,
		-0.855994, 0.501467, 0.125723,
		0.513600, 0.852646, 0.095965,
		38.129635, 40.071049, 40.054028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292698, 40.083878, 39.707321>,  <37.770115, 39.474197, 39.986851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292698, 40.083878, 39.707321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686893, 40.148922, 39.687832>,  <37.923409, 40.187950, 39.676140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686893, 40.148922, 39.687832>,  <37.292698, 40.083878, 39.707321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686893, 40.148922, 39.687832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068447, 0.117981, -0.990654,
		-0.155343, 0.979611, 0.127399,
		0.985486, 0.162611, -0.048724,
		37.982540, 40.197704, 39.673214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406235, 40.671001, 39.219864>,  <37.292698, 40.083878, 39.707321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406235, 40.671001, 39.219864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750195, 40.467590, 39.237629>,  <37.956570, 40.345543, 39.248287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750195, 40.467590, 39.237629>,  <37.406235, 40.671001, 39.219864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750195, 40.467590, 39.237629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153551, 0.174708, -0.972574,
		0.486818, 0.843137, 0.228316,
		0.859902, -0.508524, 0.044414,
		38.008163, 40.315033, 39.250954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635326, 40.998955, 38.605980>,  <37.406235, 40.671001, 39.219864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635326, 40.998955, 38.605980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925964, 40.742790, 38.705524>,  <38.100346, 40.589092, 38.765251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925964, 40.742790, 38.705524>,  <37.635326, 40.998955, 38.605980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925964, 40.742790, 38.705524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145566, -0.210503, -0.966695,
		0.671473, 0.738618, -0.059727,
		0.726591, -0.640415, 0.248865,
		38.143940, 40.550667, 38.780186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228085, 41.146107, 38.275047>,  <37.635326, 40.998955, 38.605980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228085, 41.146107, 38.275047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268555, 40.754337, 38.344910>,  <38.292835, 40.519276, 38.386826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268555, 40.754337, 38.344910>,  <38.228085, 41.146107, 38.275047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268555, 40.754337, 38.344910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216598, -0.149657, -0.964722,
		0.971005, 0.135431, 0.196999,
		0.101171, -0.979419, 0.174652,
		38.298904, 40.460510, 38.397305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730877, 40.888428, 37.858524>,  <38.228085, 41.146107, 38.275047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730877, 40.888428, 37.858524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590202, 40.532253, 37.974072>,  <38.505798, 40.318550, 38.043400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590202, 40.532253, 37.974072>,  <38.730877, 40.888428, 37.858524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590202, 40.532253, 37.974072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410508, -0.424020, -0.807273,
		0.841310, -0.165322, 0.514651,
		-0.351682, -0.890436, 0.288866,
		38.484699, 40.265121, 38.060730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280762, 40.325806, 37.808956>,  <38.730877, 40.888428, 37.858524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280762, 40.325806, 37.808956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925339, 40.148655, 37.761082>,  <38.712086, 40.042366, 37.732357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925339, 40.148655, 37.761082>,  <39.280762, 40.325806, 37.808956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925339, 40.148655, 37.761082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367845, -0.531884, -0.762751,
		0.274142, -0.721777, 0.635519,
		-0.888559, -0.442875, -0.119691,
		38.658772, 40.015793, 37.725174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461075, 39.672356, 37.633293>,  <39.280762, 40.325806, 37.808956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461075, 39.672356, 37.633293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079800, 39.686436, 37.513161>,  <38.851036, 39.694881, 37.441082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079800, 39.686436, 37.513161>,  <39.461075, 39.672356, 37.633293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079800, 39.686436, 37.513161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251738, -0.457876, -0.852629,
		-0.167523, -0.888319, 0.427581,
		-0.953186, 0.035197, -0.300329,
		38.793842, 39.696995, 37.423061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339233, 39.057583, 37.178658>,  <39.461075, 39.672356, 37.633293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339233, 39.057583, 37.178658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026806, 39.269928, 37.047138>,  <38.839348, 39.397335, 36.968227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026806, 39.269928, 37.047138>,  <39.339233, 39.057583, 37.178658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026806, 39.269928, 37.047138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007240, -0.534210, -0.845320,
		-0.624399, -0.657876, 0.421100,
		-0.781072, 0.530866, -0.328797,
		38.792484, 39.429188, 36.948498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773472, 38.592968, 37.370159>,  <39.339233, 39.057583, 37.178658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773472, 38.592968, 37.370159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002083, 38.270905, 37.306824>,  <40.139248, 38.077667, 37.268822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002083, 38.270905, 37.306824>,  <39.773472, 38.592968, 37.370159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002083, 38.270905, 37.306824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767479, -0.592782, 0.244101,
		-0.290403, -0.017987, -0.956735,
		0.571526, -0.805162, -0.158341,
		40.173542, 38.029354, 37.259323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450939, 38.195328, 36.968510>,  <39.773472, 38.592968, 37.370159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450939, 38.195328, 36.968510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708050, 37.960293, 37.165112>,  <39.862316, 37.819271, 37.283073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708050, 37.960293, 37.165112>,  <39.450939, 38.195328, 36.968510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708050, 37.960293, 37.165112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756814, -0.586436, 0.288661,
		0.118625, -0.557525, -0.821641,
		0.642775, -0.587587, 0.491509,
		39.900883, 37.784016, 37.312565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178432, 37.553429, 36.958923>,  <39.450939, 38.195328, 36.968510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178432, 37.553429, 36.958923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428497, 37.515301, 37.268784>,  <39.578537, 37.492424, 37.454700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428497, 37.515301, 37.268784>,  <39.178432, 37.553429, 36.958923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428497, 37.515301, 37.268784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725643, -0.436498, 0.531894,
		0.287434, -0.894641, -0.342051,
		0.625159, -0.095323, 0.774655,
		39.616047, 37.486706, 37.501179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024212, 36.906139, 37.182991>,  <39.178432, 37.553429, 36.958923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024212, 36.906139, 37.182991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233753, 37.047802, 37.492870>,  <39.359478, 37.132801, 37.678799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233753, 37.047802, 37.492870>,  <39.024212, 36.906139, 37.182991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233753, 37.047802, 37.492870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541451, -0.563646, 0.623806,
		0.657578, -0.746242, -0.103509,
		0.523852, 0.354156, 0.774695,
		39.390907, 37.154049, 37.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161167, 36.307091, 37.574448>,  <39.024212, 36.906139, 37.182991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161167, 36.307091, 37.574448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207676, 36.607666, 37.834236>,  <39.235580, 36.788013, 37.990108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207676, 36.607666, 37.834236>,  <39.161167, 36.307091, 37.574448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207676, 36.607666, 37.834236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283775, -0.601517, 0.746759,
		0.951815, -0.271134, 0.143298,
		0.116275, 0.751441, 0.649474,
		39.242558, 36.833099, 38.029079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437778, 36.033920, 38.211716>,  <39.161167, 36.307091, 37.574448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437778, 36.033920, 38.211716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263229, 36.380646, 38.308228>,  <39.158501, 36.588680, 38.366135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263229, 36.380646, 38.308228>,  <39.437778, 36.033920, 38.211716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263229, 36.380646, 38.308228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352308, -0.411354, 0.840635,
		0.827924, 0.281824, 0.484888,
		-0.436372, 0.866812, 0.241281,
		39.132317, 36.640690, 38.380611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541504, 36.123081, 38.818775>,  <39.437778, 36.033920, 38.211716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541504, 36.123081, 38.818775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252922, 36.399902, 38.809311>,  <39.079773, 36.565994, 38.803635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252922, 36.399902, 38.809311>,  <39.541504, 36.123081, 38.818775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252922, 36.399902, 38.809311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354286, -0.339553, 0.871312,
		0.594963, 0.636996, 0.490158,
		-0.721457, 0.692055, -0.023657,
		39.036484, 36.607517, 38.802216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503841, 36.372402, 39.493607>,  <39.541504, 36.123081, 38.818775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503841, 36.372402, 39.493607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148888, 36.433414, 39.319584>,  <38.935913, 36.470020, 39.215168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148888, 36.433414, 39.319584>,  <39.503841, 36.372402, 39.493607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148888, 36.433414, 39.319584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460523, -0.249238, 0.851938,
		0.021514, 0.956355, 0.291416,
		-0.887387, 0.152532, -0.435061,
		38.882671, 36.479176, 39.189064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047924, 36.724869, 39.998722>,  <39.503841, 36.372402, 39.493607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047924, 36.724869, 39.998722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812893, 36.543449, 39.730679>,  <38.671875, 36.434597, 39.569851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812893, 36.543449, 39.730679>,  <39.047924, 36.724869, 39.998722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812893, 36.543449, 39.730679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556949, -0.374073, 0.741537,
		-0.586992, 0.808928, -0.032806,
		-0.587579, -0.453547, -0.670109,
		38.636620, 36.407387, 39.529644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399036, 36.938969, 40.212990>,  <39.047924, 36.724869, 39.998722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399036, 36.938969, 40.212990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335957, 36.615372, 39.986481>,  <38.298111, 36.421215, 39.850574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335957, 36.615372, 39.986481>,  <38.399036, 36.938969, 40.212990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335957, 36.615372, 39.986481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617436, -0.366751, 0.695893,
		-0.770652, 0.459378, -0.441664,
		-0.157697, -0.808990, -0.566274,
		38.288647, 36.372673, 39.816597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697525, 36.819717, 40.262291>,  <38.399036, 36.938969, 40.212990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697525, 36.819717, 40.262291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817120, 36.464443, 40.122726>,  <37.888878, 36.251278, 40.038990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817120, 36.464443, 40.122726>,  <37.697525, 36.819717, 40.262291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817120, 36.464443, 40.122726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502819, -0.457392, 0.733461,
		-0.811035, -0.043858, -0.583351,
		0.298988, -0.888183, -0.348909,
		37.906815, 36.197987, 40.018055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069168, 36.401276, 40.196987>,  <37.697525, 36.819717, 40.262291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069168, 36.401276, 40.196987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378765, 36.148289, 40.209099>,  <37.564526, 35.996498, 40.216366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378765, 36.148289, 40.209099>,  <37.069168, 36.401276, 40.196987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378765, 36.148289, 40.209099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452470, -0.519001, 0.725196,
		-0.442944, -0.575002, -0.687877,
		0.773997, -0.632465, 0.030283,
		37.610966, 35.958549, 40.218182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831757, 35.805431, 40.008644>,  <37.069168, 36.401276, 40.196987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831757, 35.805431, 40.008644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150581, 35.699348, 40.225662>,  <37.341877, 35.635700, 40.355873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150581, 35.699348, 40.225662>,  <36.831757, 35.805431, 40.008644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150581, 35.699348, 40.225662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603843, -0.338514, 0.721653,
		-0.007726, -0.902815, -0.429959,
		0.797066, -0.265203, 0.542543,
		37.389702, 35.619789, 40.388424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566277, 35.129097, 40.224792>,  <36.831757, 35.805431, 40.008644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566277, 35.129097, 40.224792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886463, 35.199669, 40.453918>,  <37.078575, 35.242012, 40.591393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886463, 35.199669, 40.453918>,  <36.566277, 35.129097, 40.224792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886463, 35.199669, 40.453918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489572, -0.358885, 0.794683,
		0.345783, -0.916555, -0.200901,
		0.800470, 0.176433, 0.572816,
		37.126606, 35.252598, 40.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993690, 34.515373, 40.436417>,  <36.566277, 35.129097, 40.224792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993690, 34.515373, 40.436417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009819, 34.805958, 40.710827>,  <37.019497, 34.980309, 40.875473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009819, 34.805958, 40.710827>,  <36.993690, 34.515373, 40.436417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009819, 34.805958, 40.710827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352773, -0.632017, 0.690004,
		0.934840, -0.269832, 0.230793,
		0.040320, 0.726461, 0.686024,
		37.021915, 35.023895, 40.916634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526802, 33.998512, 40.877541>,  <36.993690, 34.515373, 40.436417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526802, 33.998512, 40.877541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219513, 33.776203, 41.004631>,  <37.035137, 33.642818, 41.080887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219513, 33.776203, 41.004631>,  <37.526802, 33.998512, 40.877541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219513, 33.776203, 41.004631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270745, -0.167685, -0.947934,
		0.580111, -0.814250, -0.021652,
		-0.768224, -0.555770, 0.317730,
		36.989044, 33.609474, 41.099949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471416, 33.443012, 40.381462>,  <37.526802, 33.998512, 40.877541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471416, 33.443012, 40.381462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117882, 33.416889, 40.566750>,  <36.905762, 33.401215, 40.677921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117882, 33.416889, 40.566750>,  <37.471416, 33.443012, 40.381462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117882, 33.416889, 40.566750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433911, -0.255595, -0.863940,
		0.174819, -0.964576, 0.197566,
		-0.883832, -0.065307, 0.463223,
		36.852734, 33.397297, 40.705715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150375, 32.823280, 40.116505>,  <37.471416, 33.443012, 40.381462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150375, 32.823280, 40.116505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832119, 33.027931, 40.246239>,  <36.641167, 33.150723, 40.324081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832119, 33.027931, 40.246239>,  <37.150375, 32.823280, 40.116505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832119, 33.027931, 40.246239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457823, -0.157260, -0.875024,
		-0.396683, -0.844692, 0.359358,
		-0.795638, 0.511630, 0.324336,
		36.593426, 33.181419, 40.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454525, 32.472969, 40.012291>,  <37.150375, 32.823280, 40.116505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454525, 32.472969, 40.012291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330273, 32.851414, 40.048916>,  <36.255722, 33.078480, 40.070892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330273, 32.851414, 40.048916>,  <36.454525, 32.472969, 40.012291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330273, 32.851414, 40.048916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607826, -0.123651, -0.784384,
		-0.730793, -0.299304, 0.613481,
		-0.310627, 0.946112, 0.091561,
		36.237083, 33.135246, 40.076385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740376, 32.421276, 39.948215>,  <36.454525, 32.472969, 40.012291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740376, 32.421276, 39.948215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827770, 32.805603, 39.879986>,  <35.880207, 33.036198, 39.839046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827770, 32.805603, 39.879986>,  <35.740376, 32.421276, 39.948215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827770, 32.805603, 39.879986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438690, -0.059435, -0.896671,
		-0.871674, 0.270738, 0.408515,
		0.218483, 0.960817, -0.170578,
		35.893314, 33.093849, 39.828812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114426, 32.803917, 39.717640>,  <35.740376, 32.421276, 39.948215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114426, 32.803917, 39.717640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392067, 33.056084, 39.578617>,  <35.558651, 33.207382, 39.495201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392067, 33.056084, 39.578617>,  <35.114426, 32.803917, 39.717640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392067, 33.056084, 39.578617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519422, 0.104310, -0.848128,
		-0.498417, 0.769219, 0.399853,
		0.694105, 0.630413, -0.347559,
		35.600300, 33.245209, 39.474350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754421, 33.305122, 39.272224>,  <35.114426, 32.803917, 39.717640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754421, 33.305122, 39.272224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130219, 33.334610, 39.138409>,  <35.355698, 33.352303, 39.058121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130219, 33.334610, 39.138409>,  <34.754421, 33.305122, 39.272224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130219, 33.334610, 39.138409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340833, 0.299235, -0.891230,
		0.034403, 0.951327, 0.306256,
		0.939494, 0.073721, -0.334538,
		35.412067, 33.356728, 39.038048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779182, 34.016079, 38.996197>,  <34.754421, 33.305122, 39.272224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779182, 34.016079, 38.996197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059566, 33.801670, 38.808014>,  <35.227798, 33.673023, 38.695103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059566, 33.801670, 38.808014>,  <34.779182, 34.016079, 38.996197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059566, 33.801670, 38.808014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275815, 0.404581, -0.871917,
		0.657705, 0.740942, 0.135754,
		0.700964, -0.536021, -0.470458,
		35.269855, 33.640865, 38.666878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205826, 34.536388, 38.524868>,  <34.779182, 34.016079, 38.996197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205826, 34.536388, 38.524868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271652, 34.166756, 38.386887>,  <35.311150, 33.944977, 38.304096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271652, 34.166756, 38.386887>,  <35.205826, 34.536388, 38.524868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271652, 34.166756, 38.386887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351737, 0.271756, -0.895785,
		0.921520, 0.268753, -0.280309,
		0.164569, -0.924078, -0.344958,
		35.321022, 33.889534, 38.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359684, 34.578327, 37.750309>,  <35.205826, 34.536388, 38.524868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359684, 34.578327, 37.750309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265198, 34.189793, 37.760918>,  <35.208508, 33.956673, 37.767281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265198, 34.189793, 37.760918>,  <35.359684, 34.578327, 37.750309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265198, 34.189793, 37.760918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337177, 0.056340, -0.939754,
		0.911326, -0.230923, -0.340822,
		-0.236212, -0.971339, 0.026518,
		35.194336, 33.898392, 37.768871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410507, 34.345291, 37.102947>,  <35.359684, 34.578327, 37.750309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410507, 34.345291, 37.102947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181393, 34.068573, 37.278824>,  <35.043922, 33.902542, 37.384350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181393, 34.068573, 37.278824>,  <35.410507, 34.345291, 37.102947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181393, 34.068573, 37.278824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596660, -0.015931, -0.802336,
		0.562061, -0.721913, -0.403644,
		-0.572786, -0.691800, 0.439692,
		35.009556, 33.861034, 37.410732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148788, 33.939316, 36.570728>,  <35.410507, 34.345291, 37.102947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148788, 33.939316, 36.570728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883930, 33.882320, 36.865009>,  <34.725014, 33.848122, 37.041576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883930, 33.882320, 36.865009>,  <35.148788, 33.939316, 36.570728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883930, 33.882320, 36.865009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749361, 0.119931, -0.651210,
		0.004556, -0.982504, -0.186188,
		-0.662146, -0.142489, 0.735704,
		34.685287, 33.839573, 37.085720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.440907, 32.807384, 44.732296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046101, 32.871429, 44.727131>,  <37.809216, 32.909855, 44.724033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.046101, 32.871429, 44.727131>,  <38.440907, 32.807384, 44.732296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046101, 32.871429, 44.727131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030639, -0.266544, -0.963336,
		-0.157678, -0.950432, 0.267988,
		-0.987015, 0.160107, -0.012908,
		37.749996, 32.919464, 44.723259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172192, 32.293869, 44.339203>,  <38.440907, 32.807384, 44.732296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172192, 32.293869, 44.339203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894070, 32.581047, 44.325874>,  <37.727196, 32.753353, 44.317879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.894070, 32.581047, 44.325874>,  <38.172192, 32.293869, 44.339203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894070, 32.581047, 44.325874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017138, -0.062910, -0.997872,
		-0.718514, -0.693251, 0.056045,
		-0.695301, 0.717946, -0.033321,
		37.685478, 32.796432, 44.315880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656715, 32.131477, 43.794598>,  <38.172192, 32.293869, 44.339203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656715, 32.131477, 43.794598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571373, 32.521595, 43.817478>,  <37.520168, 32.755665, 43.831207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571373, 32.521595, 43.817478>,  <37.656715, 32.131477, 43.794598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571373, 32.521595, 43.817478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081212, 0.040644, -0.995868,
		-0.973593, -0.217120, 0.070534,
		-0.213356, 0.975298, 0.057203,
		37.507366, 32.814186, 43.834641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282871, 32.276699, 43.200733>,  <37.656715, 32.131477, 43.794598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282871, 32.276699, 43.200733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358856, 32.650326, 43.321682>,  <37.404446, 32.874504, 43.394253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358856, 32.650326, 43.321682>,  <37.282871, 32.276699, 43.200733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358856, 32.650326, 43.321682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149399, 0.331894, -0.931411,
		-0.970358, 0.131760, 0.202597,
		0.189964, 0.934069, 0.302371,
		37.415844, 32.930546, 43.412392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651432, 32.684124, 43.042637>,  <37.282871, 32.276699, 43.200733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651432, 32.684124, 43.042637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943230, 32.956703, 43.066193>,  <37.118309, 33.120251, 43.080326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943230, 32.956703, 43.066193>,  <36.651432, 32.684124, 43.042637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943230, 32.956703, 43.066193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272515, 0.368536, -0.888773,
		-0.627350, 0.632310, 0.454550,
		0.729498, 0.681443, 0.058887,
		37.162079, 33.161137, 43.083858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314564, 33.289349, 42.873634>,  <36.651432, 32.684124, 43.042637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314564, 33.289349, 42.873634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704460, 33.353451, 42.811398>,  <36.938396, 33.391911, 42.774055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.704460, 33.353451, 42.811398>,  <36.314564, 33.289349, 42.873634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704460, 33.353451, 42.811398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215003, 0.484435, -0.847996,
		-0.060520, 0.860024, 0.506651,
		0.974736, 0.160252, -0.155589,
		36.996880, 33.401527, 42.764721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303528, 33.986107, 42.690926>,  <36.314564, 33.289349, 42.873634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303528, 33.986107, 42.690926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636353, 33.810337, 42.555527>,  <36.836048, 33.704876, 42.474285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.636353, 33.810337, 42.555527>,  <36.303528, 33.986107, 42.690926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636353, 33.810337, 42.555527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127405, 0.442538, -0.887653,
		0.539851, 0.781710, 0.312235,
		0.832063, -0.439420, -0.338499,
		36.885971, 33.678513, 42.453976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693752, 34.484360, 42.325748>,  <36.303528, 33.986107, 42.690926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693752, 34.484360, 42.325748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778385, 34.126598, 42.168129>,  <36.829166, 33.911942, 42.073559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778385, 34.126598, 42.168129>,  <36.693752, 34.484360, 42.325748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778385, 34.126598, 42.168129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225431, 0.347644, -0.910123,
		0.951006, 0.281399, -0.128070,
		0.211585, -0.894404, -0.394048,
		36.841862, 33.858276, 42.049915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776546, 34.564438, 41.613998>,  <36.693752, 34.484360, 42.325748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776546, 34.564438, 41.613998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.766521, 34.164566, 41.615704>,  <36.760506, 33.924644, 41.616726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.766521, 34.164566, 41.615704>,  <36.776546, 34.564438, 41.613998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766521, 34.164566, 41.615704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217446, 0.001291, -0.976072,
		0.975750, -0.025393, -0.217408,
		-0.025066, -0.999677, 0.004262,
		36.759003, 33.864662, 41.616982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509552, 34.221611, 41.679882>,  <36.776546, 34.564438, 41.613998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509552, 34.221611, 41.679882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399193, 34.605717, 41.663055>,  <37.332977, 34.836182, 41.652958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.399193, 34.605717, 41.663055>,  <37.509552, 34.221611, 41.679882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399193, 34.605717, 41.663055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218859, -0.020146, 0.975549,
		0.935939, 0.278358, 0.215721,
		-0.275898, 0.960266, -0.042066,
		37.316425, 34.893795, 41.650436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802292, 34.552113, 42.319618>,  <37.509552, 34.221611, 41.679882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802292, 34.552113, 42.319618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503799, 34.793514, 42.207241>,  <37.324703, 34.938354, 42.139812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503799, 34.793514, 42.207241>,  <37.802292, 34.552113, 42.319618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503799, 34.793514, 42.207241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182226, 0.220727, 0.958161,
		0.640263, 0.766202, -0.054739,
		-0.746228, 0.603501, -0.280945,
		37.279930, 34.974564, 42.122959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920471, 35.133308, 42.654034>,  <37.802292, 34.552113, 42.319618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920471, 35.133308, 42.654034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541382, 35.183533, 42.536694>,  <37.313927, 35.213669, 42.466290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541382, 35.183533, 42.536694>,  <37.920471, 35.133308, 42.654034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541382, 35.183533, 42.536694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219437, 0.410963, 0.884849,
		0.231660, 0.902964, -0.361926,
		-0.947724, 0.125564, -0.293348,
		37.257065, 35.221203, 42.448689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721596, 35.763580, 42.847637>,  <37.920471, 35.133308, 42.654034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721596, 35.763580, 42.847637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369995, 35.578342, 42.802200>,  <37.159035, 35.467201, 42.774940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.369995, 35.578342, 42.802200>,  <37.721596, 35.763580, 42.847637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369995, 35.578342, 42.802200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323238, 0.403593, 0.855938,
		-0.350537, 0.789086, -0.504448,
		-0.879000, -0.463095, -0.113588,
		37.106297, 35.439415, 42.768124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185837, 36.310604, 42.993355>,  <37.721596, 35.763580, 42.847637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185837, 36.310604, 42.993355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997822, 35.959347, 43.028976>,  <36.885014, 35.748592, 43.050350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.997822, 35.959347, 43.028976>,  <37.185837, 36.310604, 42.993355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997822, 35.959347, 43.028976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331451, 0.269124, 0.904275,
		-0.818048, 0.395527, -0.417560,
		-0.470041, -0.878140, 0.089058,
		36.856808, 35.695904, 43.055695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479168, 36.547314, 43.262032>,  <37.185837, 36.310604, 42.993355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479168, 36.547314, 43.262032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519402, 36.158207, 43.345558>,  <36.543541, 35.924744, 43.395676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.519402, 36.158207, 43.345558>,  <36.479168, 36.547314, 43.262032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519402, 36.158207, 43.345558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049912, 0.214551, 0.975437,
		-0.993676, -0.087691, 0.070133,
		0.100584, -0.972768, 0.208818,
		36.549576, 35.866375, 43.408203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988308, 36.448517, 43.798206>,  <36.479168, 36.547314, 43.262032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988308, 36.448517, 43.798206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208183, 36.124073, 43.878151>,  <36.340107, 35.929405, 43.926117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208183, 36.124073, 43.878151>,  <35.988308, 36.448517, 43.798206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208183, 36.124073, 43.878151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022428, 0.253492, 0.967077,
		-0.835068, -0.527109, 0.157533,
		0.549689, -0.811109, 0.199861,
		36.373089, 35.880741, 43.938110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805458, 36.272694, 44.373974>,  <35.988308, 36.448517, 43.798206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805458, 36.272694, 44.373974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140850, 36.055992, 44.350449>,  <36.342083, 35.925972, 44.336334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140850, 36.055992, 44.350449>,  <35.805458, 36.272694, 44.373974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140850, 36.055992, 44.350449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201604, 0.208115, 0.957102,
		-0.506273, -0.814365, 0.283720,
		0.838477, -0.541754, -0.058816,
		36.392395, 35.893467, 44.332802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733459, 35.767395, 44.893482>,  <35.805458, 36.272694, 44.373974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733459, 35.767395, 44.893482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117313, 35.847122, 44.814114>,  <36.347626, 35.894958, 44.766495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117313, 35.847122, 44.814114>,  <35.733459, 35.767395, 44.893482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117313, 35.847122, 44.814114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136063, 0.288422, 0.947787,
		0.246132, -0.936530, 0.249662,
		0.959638, 0.199311, -0.198417,
		36.405205, 35.906918, 44.754589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100315, 35.508434, 45.553219>,  <35.733459, 35.767395, 44.893482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100315, 35.508434, 45.553219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381378, 35.725548, 45.369194>,  <36.550018, 35.855816, 45.258778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381378, 35.725548, 45.369194>,  <36.100315, 35.508434, 45.553219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381378, 35.725548, 45.369194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346283, 0.303981, 0.887515,
		0.621576, -0.782934, 0.025641,
		0.702660, 0.542779, -0.460064,
		36.592175, 35.888382, 45.231174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690655, 35.418495, 45.940247>,  <36.100315, 35.508434, 45.553219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690655, 35.418495, 45.940247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768330, 35.739784, 45.714993>,  <36.814934, 35.932556, 45.579838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768330, 35.739784, 45.714993>,  <36.690655, 35.418495, 45.940247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768330, 35.739784, 45.714993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429251, 0.446614, 0.785035,
		0.882064, -0.394168, -0.258059,
		0.194183, 0.803223, -0.563139,
		36.826584, 35.980751, 45.546051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413242, 35.534050, 45.942894>,  <36.690655, 35.418495, 45.940247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413242, 35.534050, 45.942894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239349, 35.882523, 45.851635>,  <37.135014, 36.091606, 45.796879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239349, 35.882523, 45.851635>,  <37.413242, 35.534050, 45.942894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239349, 35.882523, 45.851635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428308, 0.422868, 0.798583,
		0.792187, 0.249451, -0.556968,
		-0.434731, 0.871181, -0.228149,
		37.108929, 36.143875, 45.783192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925106, 35.924225, 46.228935>,  <37.413242, 35.534050, 45.942894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925106, 35.924225, 46.228935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625595, 36.182503, 46.169044>,  <37.445889, 36.337467, 46.133110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625595, 36.182503, 46.169044>,  <37.925106, 35.924225, 46.228935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625595, 36.182503, 46.169044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414950, 0.632789, 0.653754,
		0.516868, 0.427387, -0.741747,
		-0.748775, 0.645692, -0.149724,
		37.400963, 36.376209, 46.124126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258305, 36.475250, 45.988144>,  <37.925106, 35.924225, 46.228935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258305, 36.475250, 45.988144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904823, 36.550591, 46.159534>,  <37.692734, 36.595795, 46.262367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904823, 36.550591, 46.159534>,  <38.258305, 36.475250, 45.988144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904823, 36.550591, 46.159534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464391, 0.467002, 0.752496,
		-0.058365, 0.863964, -0.500161,
		-0.883705, 0.188351, 0.428473,
		37.639713, 36.607098, 46.288078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.268921, 39.163448, 47.337421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484413, 38.831974, 47.398140>,  <32.613708, 38.633087, 47.434570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484413, 38.831974, 47.398140>,  <32.268921, 39.163448, 47.337421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484413, 38.831974, 47.398140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187527, -0.057700, -0.980563,
		0.821341, 0.556727, 0.124317,
		0.538733, -0.828689, 0.151793,
		32.646034, 38.583366, 47.443676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052357, 39.222202, 47.144051>,  <32.268921, 39.163448, 47.337421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052357, 39.222202, 47.144051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971676, 38.833466, 47.095314>,  <32.923267, 38.600224, 47.066071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.971676, 38.833466, 47.095314>,  <33.052357, 39.222202, 47.144051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971676, 38.833466, 47.095314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400084, 0.031796, -0.915927,
		0.894008, -0.233487, 0.382404,
		-0.201698, -0.971840, -0.121840,
		32.911167, 38.541912, 47.058762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654377, 38.983467, 46.961891>,  <33.052357, 39.222202, 47.144051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654377, 38.983467, 46.961891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373436, 38.734917, 46.822987>,  <33.204872, 38.585785, 46.739643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373436, 38.734917, 46.822987>,  <33.654377, 38.983467, 46.961891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373436, 38.734917, 46.822987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427680, 0.021616, -0.903672,
		0.569030, -0.783211, 0.250570,
		-0.702350, -0.621380, -0.347264,
		33.162731, 38.548504, 46.718807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999138, 38.511597, 46.466846>,  <33.654377, 38.983467, 46.961891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999138, 38.511597, 46.466846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615524, 38.451115, 46.371017>,  <33.385357, 38.414825, 46.313519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615524, 38.451115, 46.371017>,  <33.999138, 38.511597, 46.466846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615524, 38.451115, 46.371017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241189, 0.007849, -0.970446,
		0.148612, -0.988472, 0.028940,
		-0.959032, -0.151200, -0.239575,
		33.327816, 38.405754, 46.299145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055428, 38.132439, 45.926350>,  <33.999138, 38.511597, 46.466846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055428, 38.132439, 45.926350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665840, 38.221855, 45.911362>,  <33.432087, 38.275505, 45.902367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665840, 38.221855, 45.911362>,  <34.055428, 38.132439, 45.926350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665840, 38.221855, 45.911362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012532, -0.111961, -0.993634,
		-0.226319, -0.968242, 0.106246,
		-0.973973, 0.223546, -0.037473,
		33.373650, 38.288918, 45.900120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740295, 37.595100, 45.552841>,  <34.055428, 38.132439, 45.926350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740295, 37.595100, 45.552841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508186, 37.920200, 45.531971>,  <33.368919, 38.115261, 45.519447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.508186, 37.920200, 45.531971>,  <33.740295, 37.595100, 45.552841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508186, 37.920200, 45.531971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106315, -0.139115, -0.984553,
		-0.807454, -0.565761, 0.167132,
		-0.580272, 0.812749, -0.052180,
		33.334106, 38.164024, 45.516315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026947, 37.388710, 45.334488>,  <33.740295, 37.595100, 45.552841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026947, 37.388710, 45.334488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090187, 37.775928, 45.256630>,  <33.128132, 38.008259, 45.209915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.090187, 37.775928, 45.256630>,  <33.026947, 37.388710, 45.334488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090187, 37.775928, 45.256630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054744, -0.188228, -0.980598,
		-0.985905, 0.165684, 0.023237,
		0.158096, 0.968049, -0.194645,
		33.137615, 38.066341, 45.198238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691185, 37.507725, 44.788509>,  <33.026947, 37.388710, 45.334488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691185, 37.507725, 44.788509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913128, 37.838001, 44.747784>,  <33.046295, 38.036167, 44.723347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.913128, 37.838001, 44.747784>,  <32.691185, 37.507725, 44.788509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913128, 37.838001, 44.747784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112479, -0.195710, -0.974190,
		-0.824306, 0.529086, -0.201464,
		0.554859, 0.825691, -0.101814,
		33.079586, 38.085709, 44.717239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514042, 37.703640, 44.154873>,  <32.691185, 37.507725, 44.788509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514042, 37.703640, 44.154873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833878, 37.935944, 44.216022>,  <33.025780, 38.075325, 44.252712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833878, 37.935944, 44.216022>,  <32.514042, 37.703640, 44.154873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833878, 37.935944, 44.216022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123610, 0.089953, -0.988245,
		-0.587685, 0.809089, 0.000138,
		0.799591, 0.580760, 0.152876,
		33.073753, 38.110172, 44.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345997, 38.423126, 43.924458>,  <32.514042, 37.703640, 44.154873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345997, 38.423126, 43.924458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728893, 38.309010, 43.905251>,  <32.958630, 38.240540, 43.893726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728893, 38.309010, 43.905251>,  <32.345997, 38.423126, 43.924458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728893, 38.309010, 43.905251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087440, -0.127082, -0.988030,
		0.275773, 0.949978, -0.146594,
		0.957237, -0.285291, -0.048020,
		33.016064, 38.223423, 43.890846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360184, 38.287315, 43.271626>,  <32.345997, 38.423126, 43.924458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360184, 38.287315, 43.271626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752415, 38.227859, 43.322815>,  <32.987755, 38.192188, 43.353527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.752415, 38.227859, 43.322815>,  <32.360184, 38.287315, 43.271626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752415, 38.227859, 43.322815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103452, -0.162372, -0.981291,
		0.166635, 0.975470, -0.143841,
		0.980576, -0.148637, 0.127972,
		33.046589, 38.183270, 43.361206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738903, 38.771107, 42.882439>,  <32.360184, 38.287315, 43.271626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738903, 38.771107, 42.882439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012821, 38.483292, 42.928608>,  <33.177170, 38.310604, 42.956310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.012821, 38.483292, 42.928608>,  <32.738903, 38.771107, 42.882439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012821, 38.483292, 42.928608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218141, 0.051272, -0.974569,
		0.695322, 0.692558, 0.192072,
		0.684793, -0.719538, 0.115425,
		33.218258, 38.267429, 42.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282326, 38.966797, 42.383221>,  <32.738903, 38.771107, 42.882439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282326, 38.966797, 42.383221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341766, 38.584221, 42.483738>,  <33.377430, 38.354675, 42.544048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.341766, 38.584221, 42.483738>,  <33.282326, 38.966797, 42.383221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341766, 38.584221, 42.483738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074342, -0.242589, -0.967276,
		0.986099, 0.162418, 0.035055,
		0.148599, -0.956437, 0.251291,
		33.386345, 38.297291, 42.559124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921429, 38.748585, 41.979809>,  <33.282326, 38.966797, 42.383221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921429, 38.748585, 41.979809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733192, 38.411274, 42.083672>,  <33.620251, 38.208885, 42.145988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733192, 38.411274, 42.083672>,  <33.921429, 38.748585, 41.979809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733192, 38.411274, 42.083672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098796, -0.342786, -0.934204,
		0.876802, -0.413976, 0.244625,
		-0.470592, -0.843280, 0.259657,
		33.592014, 38.158291, 42.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613434, 38.476704, 41.813625>,  <33.921429, 38.748585, 41.979809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613434, 38.476704, 41.813625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823994, 38.812729, 41.761173>,  <34.950329, 39.014343, 41.729702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823994, 38.812729, 41.761173>,  <34.613434, 38.476704, 41.813625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823994, 38.812729, 41.761173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111130, 0.084925, 0.990170,
		0.842942, -0.535801, -0.048652,
		0.526402, 0.840063, -0.131130,
		34.981915, 39.064747, 41.721832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295025, 38.453617, 42.201679>,  <34.613434, 38.476704, 41.813625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295025, 38.453617, 42.201679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229206, 38.846249, 42.162827>,  <35.189716, 39.081825, 42.139515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229206, 38.846249, 42.162827>,  <35.295025, 38.453617, 42.201679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229206, 38.846249, 42.162827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015740, 0.101070, 0.994755,
		0.986244, 0.162153, -0.032080,
		-0.164545, 0.981576, -0.097127,
		35.179844, 39.140720, 42.133690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869118, 38.861916, 42.582520>,  <35.295025, 38.453617, 42.201679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869118, 38.861916, 42.582520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536404, 39.081429, 42.549122>,  <35.336773, 39.213135, 42.529083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536404, 39.081429, 42.549122>,  <35.869118, 38.861916, 42.582520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536404, 39.081429, 42.549122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146614, 0.362262, 0.920473,
		0.535383, 0.753397, -0.381784,
		-0.831787, 0.548780, -0.083490,
		35.286869, 39.246063, 42.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095913, 39.555542, 42.870613>,  <35.869118, 38.861916, 42.582520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095913, 39.555542, 42.870613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699394, 39.503834, 42.880581>,  <35.461483, 39.472809, 42.886562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699394, 39.503834, 42.880581>,  <36.095913, 39.555542, 42.870613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699394, 39.503834, 42.880581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024440, 0.366708, 0.930015,
		-0.129360, 0.921311, -0.366676,
		-0.991296, -0.129269, 0.024920,
		35.402004, 39.465054, 42.888058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900669, 40.197624, 43.083099>,  <36.095913, 39.555542, 42.870613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900669, 40.197624, 43.083099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581829, 39.974003, 43.174397>,  <35.390526, 39.839828, 43.229176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.581829, 39.974003, 43.174397>,  <35.900669, 40.197624, 43.083099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581829, 39.974003, 43.174397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086902, 0.480247, 0.872818,
		-0.597564, 0.675886, -0.431387,
		-0.797098, -0.559053, 0.228243,
		35.342701, 39.806286, 43.242870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516750, 40.611073, 43.393364>,  <35.900669, 40.197624, 43.083099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516750, 40.611073, 43.393364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353786, 40.264858, 43.509888>,  <35.256008, 40.057129, 43.579803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.353786, 40.264858, 43.509888>,  <35.516750, 40.611073, 43.393364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353786, 40.264858, 43.509888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084442, 0.353323, 0.931682,
		-0.909331, 0.354982, -0.217036,
		-0.407414, -0.865535, 0.291312,
		35.231564, 40.005199, 43.597282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893379, 40.756878, 43.782990>,  <35.516750, 40.611073, 43.393364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893379, 40.756878, 43.782990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020191, 40.394920, 43.896587>,  <35.096279, 40.177746, 43.964748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.020191, 40.394920, 43.896587>,  <34.893379, 40.756878, 43.782990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020191, 40.394920, 43.896587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208371, 0.225671, 0.951659,
		-0.925244, -0.360878, -0.117011,
		0.317026, -0.904898, 0.283997,
		35.115299, 40.123451, 43.981785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244122, 40.359180, 44.128239>,  <34.893379, 40.756878, 43.782990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244122, 40.359180, 44.128239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591286, 40.206348, 44.255199>,  <34.799583, 40.114651, 44.331375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.591286, 40.206348, 44.255199>,  <34.244122, 40.359180, 44.128239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591286, 40.206348, 44.255199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330571, 0.032652, 0.943216,
		-0.370745, -0.923554, -0.097964,
		0.867912, -0.382076, 0.317405,
		34.851658, 40.091724, 44.350422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051586, 39.917831, 44.783623>,  <34.244122, 40.359180, 44.128239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051586, 39.917831, 44.783623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448818, 39.947231, 44.820267>,  <34.687157, 39.964870, 44.842251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.448818, 39.947231, 44.820267>,  <34.051586, 39.917831, 44.783623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448818, 39.947231, 44.820267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094892, 0.042528, 0.994579,
		0.069210, -0.996388, 0.049209,
		0.993079, 0.073504, 0.091606,
		34.746742, 39.969280, 44.847748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225742, 39.598179, 45.309513>,  <34.051586, 39.917831, 44.783623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225742, 39.598179, 45.309513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577545, 39.788204, 45.298260>,  <34.788628, 39.902218, 45.291508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577545, 39.788204, 45.298260>,  <34.225742, 39.598179, 45.309513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577545, 39.788204, 45.298260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013191, 0.083420, 0.996427,
		0.475712, -0.875989, 0.079634,
		0.879502, 0.475063, -0.028129,
		34.841396, 39.930721, 45.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712357, 39.163593, 45.736816>,  <34.225742, 39.598179, 45.309513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712357, 39.163593, 45.736816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866673, 39.528694, 45.683075>,  <34.959263, 39.747753, 45.650829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.866673, 39.528694, 45.683075>,  <34.712357, 39.163593, 45.736816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866673, 39.528694, 45.683075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242675, 0.040106, 0.969278,
		0.890097, -0.406545, -0.206029,
		0.385793, 0.912750, -0.134357,
		34.982410, 39.802521, 45.642769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391331, 39.302818, 46.116478>,  <34.712357, 39.163593, 45.736816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391331, 39.302818, 46.116478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207150, 39.651386, 46.048828>,  <35.096642, 39.860527, 46.008240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.207150, 39.651386, 46.048828>,  <35.391331, 39.302818, 46.116478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207150, 39.651386, 46.048828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053568, 0.217452, 0.974600,
		0.886065, 0.439700, -0.146807,
		-0.460455, 0.871424, -0.169123,
		35.069012, 39.912815, 45.998093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776386, 39.719177, 46.588772>,  <35.391331, 39.302818, 46.116478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776386, 39.719177, 46.588772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456806, 39.941746, 46.497494>,  <35.265057, 40.075287, 46.442726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.456806, 39.941746, 46.497494>,  <35.776386, 39.719177, 46.588772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456806, 39.941746, 46.497494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026505, 0.346493, 0.937678,
		0.600811, 0.755208, -0.262083,
		-0.798952, 0.556421, -0.228193,
		35.217121, 40.108673, 46.429035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927532, 40.310692, 46.988907>,  <35.776386, 39.719177, 46.588772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927532, 40.310692, 46.988907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.538216, 40.321003, 46.897659>,  <35.304626, 40.327190, 46.842911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.538216, 40.321003, 46.897659>,  <35.927532, 40.310692, 46.988907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538216, 40.321003, 46.897659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202748, 0.369585, 0.906807,
		0.107686, 0.928839, -0.354488,
		-0.973292, 0.025779, -0.228119,
		35.246227, 40.328735, 46.829224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355221, 40.921795, 47.067043>,  <35.927532, 40.310692, 46.988907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355221, 40.921795, 47.067043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719574, 40.784794, 47.159107>,  <36.938187, 40.702595, 47.214348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.719574, 40.784794, 47.159107>,  <36.355221, 40.921795, 47.067043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719574, 40.784794, 47.159107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232240, -0.035555, -0.972008,
		0.341100, 0.938843, 0.047157,
		0.910887, -0.342504, 0.230164,
		36.992840, 40.682041, 47.228157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865505, 41.361942, 46.804096>,  <36.355221, 40.921795, 47.067043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865505, 41.361942, 46.804096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018280, 40.993446, 46.833584>,  <37.109943, 40.772346, 46.851276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018280, 40.993446, 46.833584>,  <36.865505, 41.361942, 46.804096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018280, 40.993446, 46.833584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286878, 0.042358, -0.957030,
		0.878536, 0.386673, 0.280463,
		0.381937, -0.921244, 0.073715,
		37.132862, 40.717072, 46.855698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595116, 41.299202, 46.451847>,  <36.865505, 41.361942, 46.804096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595116, 41.299202, 46.451847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436668, 40.931931, 46.454247>,  <37.341599, 40.711567, 46.455688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436668, 40.931931, 46.454247>,  <37.595116, 41.299202, 46.451847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436668, 40.931931, 46.454247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245687, -0.112287, -0.962824,
		0.884718, -0.379920, 0.270064,
		-0.396120, -0.918179, 0.006001,
		37.317833, 40.656475, 46.456047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205040, 40.861382, 46.182671>,  <37.595116, 41.299202, 46.451847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205040, 40.861382, 46.182671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848057, 40.684563, 46.146641>,  <37.633865, 40.578472, 46.125023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848057, 40.684563, 46.146641>,  <38.205040, 40.861382, 46.182671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848057, 40.684563, 46.146641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268015, -0.358929, -0.894057,
		0.362884, -0.822050, 0.438804,
		-0.892459, -0.442045, -0.090073,
		37.580318, 40.551949, 46.119617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411644, 40.236324, 45.817070>,  <38.205040, 40.861382, 46.182671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411644, 40.236324, 45.817070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016338, 40.253937, 45.758556>,  <37.779156, 40.264503, 45.723446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.016338, 40.253937, 45.758556>,  <38.411644, 40.236324, 45.817070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016338, 40.253937, 45.758556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139911, -0.123649, -0.982413,
		-0.061351, -0.991348, 0.116036,
		-0.988261, 0.044037, -0.146287,
		37.719860, 40.267147, 45.714672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312263, 39.637264, 45.374321>,  <38.411644, 40.236324, 45.817070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312263, 39.637264, 45.374321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993927, 39.875256, 45.329338>,  <37.802925, 40.018051, 45.302349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.993927, 39.875256, 45.329338>,  <38.312263, 39.637264, 45.374321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993927, 39.875256, 45.329338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001353, -0.183976, -0.982930,
		-0.605510, -0.782404, 0.145609,
		-0.795836, 0.594977, -0.112458,
		37.755177, 40.053749, 45.295601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951591, 39.327934, 44.799042>,  <38.312263, 39.637264, 45.374321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951591, 39.327934, 44.799042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750088, 39.671364, 44.837158>,  <37.629185, 39.877422, 44.860027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750088, 39.671364, 44.837158>,  <37.951591, 39.327934, 44.799042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750088, 39.671364, 44.837158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043422, 0.085000, -0.995434,
		-0.862754, -0.505593, -0.005538,
		-0.503756, 0.858575, 0.095288,
		37.598961, 39.928936, 44.865746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336239, 39.200768, 44.428356>,  <37.951591, 39.327934, 44.799042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336239, 39.200768, 44.428356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461853, 39.579231, 44.459755>,  <37.537224, 39.806309, 44.478596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.461853, 39.579231, 44.459755>,  <37.336239, 39.200768, 44.428356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461853, 39.579231, 44.459755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102391, 0.115949, -0.987963,
		-0.943873, 0.302221, 0.133291,
		0.314038, 0.946160, 0.078496,
		37.556065, 39.863079, 44.483303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873955, 39.676815, 44.132954>,  <37.336239, 39.200768, 44.428356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873955, 39.676815, 44.132954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235325, 39.847652, 44.117935>,  <37.452148, 39.950157, 44.108925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.235325, 39.847652, 44.117935>,  <36.873955, 39.676815, 44.132954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235325, 39.847652, 44.117935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120900, 0.169755, -0.978042,
		-0.411344, 0.888128, 0.204997,
		0.903426, 0.427096, -0.037547,
		37.506351, 39.975780, 44.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754589, 40.216644, 43.699951>,  <36.873955, 39.676815, 44.132954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754589, 40.216644, 43.699951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154484, 40.207901, 43.697407>,  <37.394421, 40.202656, 43.695881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.154484, 40.207901, 43.697407>,  <36.754589, 40.216644, 43.699951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154484, 40.207901, 43.697407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001427, 0.218562, -0.975822,
		0.022720, 0.975578, 0.218475,
		0.999741, -0.021859, -0.006358,
		37.454407, 40.201344, 43.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980831, 40.848289, 43.492157>,  <36.754589, 40.216644, 43.699951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980831, 40.848289, 43.492157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280495, 40.597408, 43.406956>,  <37.460293, 40.446880, 43.355835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.280495, 40.597408, 43.406956>,  <36.980831, 40.848289, 43.492157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280495, 40.597408, 43.406956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065664, 0.249669, -0.966102,
		0.659125, 0.737753, 0.145858,
		0.749161, -0.627205, -0.213007,
		37.505241, 40.409248, 43.343052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371624, 41.154316, 42.964504>,  <36.980831, 40.848289, 43.492157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371624, 41.154316, 42.964504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516926, 40.781960, 42.949074>,  <37.604107, 40.558544, 42.939816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516926, 40.781960, 42.949074>,  <37.371624, 41.154316, 42.964504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516926, 40.781960, 42.949074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115011, 0.085887, -0.989645,
		0.924564, 0.355056, 0.138261,
		0.363254, -0.930891, -0.038573,
		37.625900, 40.502693, 42.937504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833496, 41.225605, 42.411797>,  <37.371624, 41.154316, 42.964504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833496, 41.225605, 42.411797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811832, 40.827126, 42.439079>,  <37.798836, 40.588039, 42.455448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.811832, 40.827126, 42.439079>,  <37.833496, 41.225605, 42.411797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811832, 40.827126, 42.439079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278887, -0.080682, -0.956929,
		0.958796, -0.032803, 0.282197,
		-0.054159, -0.996200, 0.068209,
		37.795586, 40.528267, 42.459541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480957, 40.844910, 42.473820>,  <37.833496, 41.225605, 42.411797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480957, 40.844910, 42.473820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220779, 40.622677, 42.266644>,  <38.064674, 40.489338, 42.142338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.220779, 40.622677, 42.266644>,  <38.480957, 40.844910, 42.473820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220779, 40.622677, 42.266644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623059, -0.000259, -0.782175,
		0.434427, -0.831463, 0.346328,
		-0.650439, -0.555580, -0.517938,
		38.025646, 40.456001, 42.111263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.348402, 32.264927, 27.944016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262201, 31.875484, 27.974070>,  <28.210480, 31.641819, 27.992102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262201, 31.875484, 27.974070>,  <28.348402, 32.264927, 27.944016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262201, 31.875484, 27.974070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767439, 0.216440, 0.603482,
		-0.603817, 0.072392, -0.793829,
		-0.215504, -0.973608, 0.075134,
		28.197550, 31.583403, 27.996611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.530405, 32.158024, 27.771994>,  <28.348402, 32.264927, 27.944016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.530405, 32.158024, 27.771994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649498, 31.856567, 28.006388>,  <27.720953, 31.675694, 28.147024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649498, 31.856567, 28.006388>,  <27.530405, 32.158024, 27.771994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649498, 31.856567, 28.006388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736442, 0.209269, 0.643319,
		-0.607461, -0.623081, -0.492708,
		0.297732, -0.753642, 0.585986,
		27.738817, 31.630474, 28.182184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953735, 31.872623, 27.940706>,  <27.530405, 32.158024, 27.771994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953735, 31.872623, 27.940706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208784, 31.744099, 28.220762>,  <27.361813, 31.666985, 28.388796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.208784, 31.744099, 28.220762>,  <26.953735, 31.872623, 27.940706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208784, 31.744099, 28.220762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633016, 0.299407, 0.713895,
		-0.439010, -0.898395, -0.012488,
		0.637621, -0.321312, 0.700141,
		27.400070, 31.647705, 28.430805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522541, 31.690763, 28.562056>,  <26.953735, 31.872623, 27.940706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522541, 31.690763, 28.562056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894548, 31.664165, 28.706633>,  <27.117754, 31.648207, 28.793379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.894548, 31.664165, 28.706633>,  <26.522541, 31.690763, 28.562056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894548, 31.664165, 28.706633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359094, 0.044853, 0.932223,
		-0.078200, -0.996778, 0.017837,
		0.930020, -0.066495, 0.361445,
		27.173553, 31.644217, 28.815065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534750, 31.121286, 29.144865>,  <26.522541, 31.690763, 28.562056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534750, 31.121286, 29.144865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836884, 31.375778, 29.207706>,  <27.018164, 31.528473, 29.245411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836884, 31.375778, 29.207706>,  <26.534750, 31.121286, 29.144865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836884, 31.375778, 29.207706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334369, 0.167978, 0.927351,
		0.563619, -0.752991, 0.339615,
		0.755335, 0.636230, 0.157102,
		27.063484, 31.566647, 29.254837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889479, 30.968658, 29.829401>,  <26.534750, 31.121286, 29.144865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889479, 30.968658, 29.829401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982010, 31.348675, 29.745583>,  <27.037529, 31.576685, 29.695292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.982010, 31.348675, 29.745583>,  <26.889479, 30.968658, 29.829401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982010, 31.348675, 29.745583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305115, 0.275369, 0.911634,
		0.923792, -0.146951, 0.353572,
		0.231328, 0.950041, -0.209547,
		27.051409, 31.633686, 29.682718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140429, 31.213253, 30.369188>,  <26.889479, 30.968658, 29.829401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140429, 31.213253, 30.369188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042553, 31.563049, 30.201666>,  <26.983828, 31.772926, 30.101152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.042553, 31.563049, 30.201666>,  <27.140429, 31.213253, 30.369188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042553, 31.563049, 30.201666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319184, 0.335212, 0.886428,
		0.915559, 0.350574, 0.197101,
		-0.244688, 0.874489, -0.418805,
		26.969147, 31.825396, 30.076025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244493, 31.638083, 30.897535>,  <27.140429, 31.213253, 30.369188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244493, 31.638083, 30.897535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015184, 31.866762, 30.662752>,  <26.877598, 32.003971, 30.521883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015184, 31.866762, 30.662752>,  <27.244493, 31.638083, 30.897535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015184, 31.866762, 30.662752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357332, 0.470206, 0.806982,
		0.737340, 0.672361, -0.065271,
		-0.573274, 0.571697, -0.586958,
		26.843203, 32.038273, 30.486666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290873, 32.232010, 31.216944>,  <27.244493, 31.638083, 30.897535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290873, 32.232010, 31.216944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.969620, 32.285160, 30.984625>,  <26.776869, 32.317051, 30.845234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.969620, 32.285160, 30.984625>,  <27.290873, 32.232010, 31.216944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969620, 32.285160, 30.984625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478379, 0.437267, 0.761545,
		0.355150, 0.889462, -0.287621,
		-0.803133, 0.132871, -0.580795,
		26.728680, 32.325020, 30.810387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115576, 32.890099, 31.330187>,  <27.290873, 32.232010, 31.216944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115576, 32.890099, 31.330187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782618, 32.728218, 31.178747>,  <26.582844, 32.631088, 31.087883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782618, 32.728218, 31.178747>,  <27.115576, 32.890099, 31.330187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782618, 32.728218, 31.178747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528407, 0.373664, 0.762339,
		-0.167050, 0.834621, -0.524883,
		-0.832394, -0.404701, -0.378599,
		26.532900, 32.606808, 31.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690701, 33.409130, 31.241650>,  <27.115576, 32.890099, 31.330187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690701, 33.409130, 31.241650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462683, 33.083786, 31.288126>,  <26.325872, 32.888580, 31.316011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.462683, 33.083786, 31.288126>,  <26.690701, 33.409130, 31.241650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462683, 33.083786, 31.288126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401261, 0.399005, 0.824490,
		-0.716966, 0.423372, -0.553819,
		-0.570043, -0.813358, 0.116191,
		26.291670, 32.839779, 31.322983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031055, 33.659077, 31.475613>,  <26.690701, 33.409130, 31.241650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031055, 33.659077, 31.475613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.081276, 33.277874, 31.585899>,  <26.111408, 33.049152, 31.652071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.081276, 33.277874, 31.585899>,  <26.031055, 33.659077, 31.475613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081276, 33.277874, 31.585899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292151, 0.230074, 0.928285,
		-0.948095, -0.197099, -0.249535,
		0.125553, -0.953004, 0.275715,
		26.118942, 32.991974, 31.668613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.441885, 33.404243, 31.807022>,  <26.031055, 33.659077, 31.475613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.441885, 33.404243, 31.807022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722639, 33.147388, 31.930319>,  <25.891092, 32.993275, 32.004295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.722639, 33.147388, 31.930319>,  <25.441885, 33.404243, 31.807022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722639, 33.147388, 31.930319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300090, 0.125886, 0.945568,
		-0.645990, -0.756181, -0.104343,
		0.701885, -0.642140, 0.308243,
		25.933205, 32.954746, 32.022793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.285822, 33.385113, 32.424202>,  <25.441885, 33.404243, 31.807022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.285822, 33.385113, 32.424202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605604, 33.154785, 32.492676>,  <25.797474, 33.016586, 32.533760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605604, 33.154785, 32.492676>,  <25.285822, 33.385113, 32.424202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605604, 33.154785, 32.492676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099934, 0.153507, 0.983081,
		-0.592357, -0.803035, 0.065178,
		0.799454, -0.575822, 0.171182,
		25.845440, 32.982040, 32.544029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155533, 32.939491, 32.970634>,  <25.285822, 33.385113, 32.424202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155533, 32.939491, 32.970634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.550907, 32.997116, 32.951721>,  <25.788132, 33.031693, 32.940372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.550907, 32.997116, 32.951721>,  <25.155533, 32.939491, 32.970634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550907, 32.997116, 32.951721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026676, 0.141739, 0.989545,
		0.149293, -0.979360, 0.136255,
		0.988433, 0.144097, -0.047286,
		25.847439, 33.040337, 32.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380823, 32.628078, 33.531994>,  <25.155533, 32.939491, 32.970634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380823, 32.628078, 33.531994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691395, 32.865982, 33.448647>,  <25.877739, 33.008724, 33.398640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691395, 32.865982, 33.448647>,  <25.380823, 32.628078, 33.531994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691395, 32.865982, 33.448647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180273, 0.107206, 0.977757,
		0.603869, -0.796723, -0.023981,
		0.776430, 0.594760, -0.208367,
		25.924324, 33.044411, 33.386135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057980, 32.432384, 34.016659>,  <25.380823, 32.628078, 33.531994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057980, 32.432384, 34.016659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162006, 32.798878, 33.894749>,  <26.224422, 33.018772, 33.821602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162006, 32.798878, 33.894749>,  <26.057980, 32.432384, 34.016659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162006, 32.798878, 33.894749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297820, 0.224133, 0.927937,
		0.918514, -0.332094, -0.214582,
		0.260067, 0.916230, -0.304773,
		26.240026, 33.073746, 33.803318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646862, 32.451984, 34.376232>,  <26.057980, 32.432384, 34.016659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646862, 32.451984, 34.376232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542128, 32.823193, 34.270241>,  <26.479286, 33.045918, 34.206646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.542128, 32.823193, 34.270241>,  <26.646862, 32.451984, 34.376232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542128, 32.823193, 34.270241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293248, 0.338077, 0.894265,
		0.919482, 0.156448, -0.360662,
		-0.261838, 0.928024, -0.264977,
		26.463577, 33.101601, 34.190746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167177, 32.869633, 34.577991>,  <26.646862, 32.451984, 34.376232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167177, 32.869633, 34.577991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881659, 33.146675, 34.536449>,  <26.710346, 33.312901, 34.511524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.881659, 33.146675, 34.536449>,  <27.167177, 32.869633, 34.577991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881659, 33.146675, 34.536449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279203, 0.417417, 0.864759,
		0.642291, 0.588266, -0.491330,
		-0.713798, 0.692608, -0.103857,
		26.667519, 33.354458, 34.505291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484079, 33.487766, 34.750313>,  <27.167177, 32.869633, 34.577991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484079, 33.487766, 34.750313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093863, 33.568325, 34.785534>,  <26.859732, 33.616661, 34.806667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093863, 33.568325, 34.785534>,  <27.484079, 33.487766, 34.750313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093863, 33.568325, 34.785534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157640, 0.361858, 0.918808,
		0.153185, 0.910218, -0.384757,
		-0.975543, 0.201400, 0.088056,
		26.801199, 33.628746, 34.811951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277708, 33.559685, 34.842529>,  <27.484079, 33.487766, 34.750313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277708, 33.559685, 34.842529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545029, 33.837166, 34.949966>,  <28.705421, 34.003654, 35.014427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545029, 33.837166, 34.949966>,  <28.277708, 33.559685, 34.842529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545029, 33.837166, 34.949966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494401, -0.144425, -0.857152,
		-0.555822, 0.705628, -0.439489,
		0.668304, 0.693707, 0.268589,
		28.745520, 34.045277, 35.030544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394972, 33.995792, 34.277290>,  <28.277708, 33.559685, 34.842529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394972, 33.995792, 34.277290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729240, 34.031300, 34.494095>,  <28.929802, 34.052605, 34.624180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729240, 34.031300, 34.494095>,  <28.394972, 33.995792, 34.277290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729240, 34.031300, 34.494095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547862, -0.204413, -0.811211,
		0.038789, 0.974852, -0.219451,
		0.835669, 0.088763, 0.542013,
		28.979940, 34.057930, 34.656700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933294, 34.509544, 33.895245>,  <28.394972, 33.995792, 34.277290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933294, 34.509544, 33.895245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131731, 34.268021, 34.144825>,  <29.250793, 34.123108, 34.294571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.131731, 34.268021, 34.144825>,  <28.933294, 34.509544, 33.895245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131731, 34.268021, 34.144825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553471, -0.333779, -0.763060,
		0.669002, 0.723884, 0.168606,
		0.496090, -0.603808, 0.623948,
		29.280558, 34.086880, 34.332008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546011, 34.674931, 33.809692>,  <28.933294, 34.509544, 33.895245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546011, 34.674931, 33.809692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599197, 34.320992, 33.988293>,  <29.631109, 34.108627, 34.095455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.599197, 34.320992, 33.988293>,  <29.546011, 34.674931, 33.809692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599197, 34.320992, 33.988293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459071, -0.344281, -0.818978,
		0.878393, 0.313874, 0.360430,
		0.132967, -0.884847, 0.446504,
		29.639088, 34.055538, 34.122246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243643, 34.503136, 33.693848>,  <29.546011, 34.674931, 33.809692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243643, 34.503136, 33.693848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068075, 34.155304, 33.784336>,  <29.962734, 33.946606, 33.838631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068075, 34.155304, 33.784336>,  <30.243643, 34.503136, 33.693848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068075, 34.155304, 33.784336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435098, -0.425976, -0.793242,
		0.786156, -0.249738, 0.565322,
		-0.438917, -0.869583, 0.226223,
		29.936399, 33.894428, 33.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858238, 34.034710, 33.774586>,  <30.243643, 34.503136, 33.693848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858238, 34.034710, 33.774586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533312, 33.809956, 33.712070>,  <30.338356, 33.675102, 33.674561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.533312, 33.809956, 33.712070>,  <30.858238, 34.034710, 33.774586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533312, 33.809956, 33.712070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509190, -0.552601, -0.659817,
		0.284378, -0.615559, 0.734994,
		-0.812314, -0.561889, -0.156289,
		30.289618, 33.641388, 33.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081314, 33.320148, 33.831249>,  <30.858238, 34.034710, 33.774586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081314, 33.320148, 33.831249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742323, 33.280914, 33.622574>,  <30.538929, 33.257374, 33.497368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.742323, 33.280914, 33.622574>,  <31.081314, 33.320148, 33.831249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742323, 33.280914, 33.622574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449819, -0.654526, -0.607666,
		-0.281860, -0.749650, 0.598815,
		-0.847477, -0.098082, -0.521692,
		30.488079, 33.251492, 33.466064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135357, 32.736279, 33.540737>,  <31.081314, 33.320148, 33.831249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135357, 32.736279, 33.540737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812836, 32.833004, 33.324810>,  <30.619322, 32.891041, 33.195255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.812836, 32.833004, 33.324810>,  <31.135357, 32.736279, 33.540737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812836, 32.833004, 33.324810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264925, -0.668329, -0.695091,
		-0.528855, -0.703465, 0.474815,
		-0.806305, 0.241812, -0.539815,
		30.570944, 32.905548, 33.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795530, 32.161385, 33.286682>,  <31.135357, 32.736279, 33.540737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795530, 32.161385, 33.286682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688295, 32.428104, 33.008541>,  <30.623955, 32.588135, 32.841656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.688295, 32.428104, 33.008541>,  <30.795530, 32.161385, 33.286682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688295, 32.428104, 33.008541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283317, -0.635288, -0.718429,
		-0.920794, -0.389605, -0.018603,
		-0.268085, 0.666796, -0.695351,
		30.607870, 32.628143, 32.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455231, 31.830687, 32.601307>,  <30.795530, 32.161385, 33.286682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455231, 31.830687, 32.601307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576042, 32.189884, 32.473312>,  <30.648529, 32.405403, 32.396515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.576042, 32.189884, 32.473312>,  <30.455231, 31.830687, 32.601307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576042, 32.189884, 32.473312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059607, -0.317213, -0.946479,
		-0.951434, 0.304937, -0.042281,
		0.302029, 0.897992, -0.319984,
		30.666651, 32.459282, 32.377316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986519, 32.105946, 32.041927>,  <30.455231, 31.830687, 32.601307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986519, 32.105946, 32.041927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326916, 32.311245, 31.997406>,  <30.531155, 32.434425, 31.970694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326916, 32.311245, 31.997406>,  <29.986519, 32.105946, 32.041927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326916, 32.311245, 31.997406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045829, -0.138553, -0.989294,
		-0.523172, 0.846984, -0.094386,
		0.850994, 0.513245, -0.111304,
		30.582214, 32.465218, 31.964014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787840, 32.596764, 31.566887>,  <29.986519, 32.105946, 32.041927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787840, 32.596764, 31.566887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181904, 32.528149, 31.569149>,  <30.418343, 32.486980, 31.570507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181904, 32.528149, 31.569149>,  <29.787840, 32.596764, 31.566887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181904, 32.528149, 31.569149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027453, -0.190034, -0.981394,
		0.169416, 0.966676, -0.191923,
		0.985162, -0.171533, 0.005657,
		30.477453, 32.476688, 31.570847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045113, 32.799511, 30.862799>,  <29.787840, 32.596764, 31.566887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045113, 32.799511, 30.862799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343464, 32.580872, 31.015060>,  <30.522474, 32.449688, 31.106417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.343464, 32.580872, 31.015060>,  <30.045113, 32.799511, 30.862799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343464, 32.580872, 31.015060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341905, -0.176261, -0.923056,
		0.571636, 0.818634, 0.055416,
		0.745878, -0.546599, 0.380652,
		30.567226, 32.416893, 31.129255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513666, 32.905460, 30.372494>,  <30.045113, 32.799511, 30.862799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513666, 32.905460, 30.372494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.678339, 32.599823, 30.571161>,  <30.777143, 32.416443, 30.690361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.678339, 32.599823, 30.571161>,  <30.513666, 32.905460, 30.372494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678339, 32.599823, 30.571161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249306, -0.429780, -0.867834,
		0.876563, 0.481096, 0.013558,
		0.411684, -0.764091, 0.496670,
		30.801844, 32.370594, 30.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221567, 32.768814, 30.134270>,  <30.513666, 32.905460, 30.372494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221567, 32.768814, 30.134270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122175, 32.412998, 30.287621>,  <31.062540, 32.199509, 30.379631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122175, 32.412998, 30.287621>,  <31.221567, 32.768814, 30.134270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122175, 32.412998, 30.287621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229533, -0.438591, -0.868880,
		0.941049, -0.127900, 0.313159,
		-0.248478, -0.889539, 0.383379,
		31.047632, 32.146137, 30.402634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668447, 32.320694, 29.898640>,  <31.221567, 32.768814, 30.134270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668447, 32.320694, 29.898640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423592, 32.026043, 30.013643>,  <31.276678, 31.849251, 30.082645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.423592, 32.026043, 30.013643>,  <31.668447, 32.320694, 29.898640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423592, 32.026043, 30.013643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266012, -0.534230, -0.802394,
		0.744663, -0.414696, 0.522976,
		-0.612139, -0.736631, 0.287507,
		31.239950, 31.805054, 30.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001110, 31.682158, 29.641506>,  <31.668447, 32.320694, 29.898640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001110, 31.682158, 29.641506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617376, 31.585337, 29.699602>,  <31.387136, 31.527245, 29.734459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.617376, 31.585337, 29.699602>,  <32.001110, 31.682158, 29.641506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617376, 31.585337, 29.699602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037565, -0.619410, -0.784169,
		0.279770, -0.746822, 0.603312,
		-0.959331, -0.242050, 0.145238,
		31.329576, 31.512722, 29.743174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939672, 30.891422, 29.663496>,  <32.001110, 31.682158, 29.641506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939672, 30.891422, 29.663496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572916, 31.032595, 29.588936>,  <31.352861, 31.117298, 29.544199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.572916, 31.032595, 29.588936>,  <31.939672, 30.891422, 29.663496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572916, 31.032595, 29.588936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147911, -0.734217, -0.662606,
		-0.370714, -0.579969, 0.725402,
		-0.916893, 0.352933, -0.186401,
		31.297848, 31.138475, 29.533016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541269, 30.310982, 29.533173>,  <31.939672, 30.891422, 29.663496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541269, 30.310982, 29.533173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287958, 30.590897, 29.400955>,  <31.135971, 30.758846, 29.321625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287958, 30.590897, 29.400955>,  <31.541269, 30.310982, 29.533173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287958, 30.590897, 29.400955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388494, -0.656829, -0.646257,
		-0.669362, -0.280835, 0.687813,
		-0.633267, 0.699791, -0.330554,
		31.097975, 30.800833, 29.301792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903196, 29.923214, 29.515438>,  <31.541269, 30.310982, 29.533173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903196, 29.923214, 29.515438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901253, 30.237005, 29.267382>,  <30.900087, 30.425280, 29.118547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.901253, 30.237005, 29.267382>,  <30.903196, 29.923214, 29.515438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901253, 30.237005, 29.267382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467513, -0.549981, -0.692063,
		-0.883973, 0.286561, 0.369426,
		-0.004859, 0.784476, -0.620139,
		30.899796, 30.472349, 29.081341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149200, 30.079693, 29.224510>,  <30.903196, 29.923214, 29.515438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149200, 30.079693, 29.224510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406923, 30.231056, 28.958675>,  <30.561556, 30.321875, 28.799175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.406923, 30.231056, 28.958675>,  <30.149200, 30.079693, 29.224510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406923, 30.231056, 28.958675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548817, -0.376416, -0.746398,
		-0.532606, 0.845646, -0.034849,
		0.644306, 0.378410, -0.664587,
		30.600216, 30.344580, 28.759300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616385, 30.509785, 28.824329>,  <30.149200, 30.079693, 29.224510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616385, 30.509785, 28.824329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963148, 30.447561, 28.634901>,  <30.171206, 30.410227, 28.521244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.963148, 30.447561, 28.634901>,  <29.616385, 30.509785, 28.824329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963148, 30.447561, 28.634901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491893, -0.113203, -0.863265,
		0.080681, 0.981319, -0.174656,
		0.866910, -0.155561, -0.473570,
		30.223221, 30.400892, 28.492830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.243053, 37.244083, 46.175919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959599, 37.071831, 46.399487>,  <37.789524, 36.968479, 46.533627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959599, 37.071831, 46.399487>,  <38.243053, 37.244083, 46.175919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959599, 37.071831, 46.399487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324431, 0.504578, 0.800091,
		-0.626561, 0.748305, -0.217854,
		-0.708637, -0.430627, 0.558922,
		37.747009, 36.942642, 46.567162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978397, 37.732498, 46.636303>,  <38.243053, 37.244083, 46.175919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978397, 37.732498, 46.636303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855263, 37.410503, 46.839180>,  <37.781384, 37.217308, 46.960907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.855263, 37.410503, 46.839180>,  <37.978397, 37.732498, 46.636303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855263, 37.410503, 46.839180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331498, 0.408927, 0.850228,
		-0.891822, 0.429862, 0.140968,
		-0.307835, -0.804983, 0.507189,
		37.762913, 37.169010, 46.991337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766655, 38.004555, 47.348152>,  <37.978397, 37.732498, 46.636303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766655, 38.004555, 47.348152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757706, 37.612984, 47.429333>,  <37.752335, 37.378040, 47.478043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.757706, 37.612984, 47.429333>,  <37.766655, 38.004555, 47.348152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757706, 37.612984, 47.429333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300466, 0.187037, 0.935274,
		-0.953530, 0.081908, 0.289952,
		-0.022374, -0.978932, 0.202956,
		37.750992, 37.319305, 47.490219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400845, 37.931942, 47.965130>,  <37.766655, 38.004555, 47.348152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400845, 37.931942, 47.965130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651665, 37.620937, 47.945969>,  <37.802155, 37.434334, 47.934471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651665, 37.620937, 47.945969>,  <37.400845, 37.931942, 47.965130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651665, 37.620937, 47.945969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312843, 0.195033, 0.929565,
		-0.713402, -0.597866, 0.365532,
		0.627046, -0.777508, -0.047901,
		37.839779, 37.387684, 47.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361053, 37.688362, 48.677498>,  <37.400845, 37.931942, 47.965130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361053, 37.688362, 48.677498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667706, 37.487255, 48.517742>,  <37.851696, 37.366592, 48.421890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667706, 37.487255, 48.517742>,  <37.361053, 37.688362, 48.677498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667706, 37.487255, 48.517742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403882, -0.105966, 0.908653,
		-0.499161, -0.857903, 0.121822,
		0.766627, -0.502766, -0.399385,
		37.897694, 37.336426, 48.397926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512634, 37.125061, 49.070793>,  <37.361053, 37.688362, 48.677498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512634, 37.125061, 49.070793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857803, 37.188663, 48.878925>,  <38.064903, 37.226826, 48.763805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857803, 37.188663, 48.878925>,  <37.512634, 37.125061, 49.070793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857803, 37.188663, 48.878925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487255, -0.010163, 0.873201,
		0.133972, -0.987225, -0.086248,
		0.862922, 0.159010, -0.479668,
		38.116680, 37.236366, 48.735023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933105, 36.610168, 49.280968>,  <37.512634, 37.125061, 49.070793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933105, 36.610168, 49.280968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186123, 36.889828, 49.147655>,  <38.337933, 37.057625, 49.067669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.186123, 36.889828, 49.147655>,  <37.933105, 36.610168, 49.280968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186123, 36.889828, 49.147655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538715, -0.087975, 0.837882,
		0.556484, -0.709542, -0.432291,
		0.632544, 0.699150, -0.333284,
		38.375885, 37.099571, 49.047668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576675, 36.402245, 49.452736>,  <37.933105, 36.610168, 49.280968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576675, 36.402245, 49.452736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618595, 36.797401, 49.406982>,  <38.643745, 37.034496, 49.379528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.618595, 36.797401, 49.406982>,  <38.576675, 36.402245, 49.452736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618595, 36.797401, 49.406982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548676, 0.038494, 0.835148,
		0.829441, -0.150283, -0.537999,
		0.104799, 0.987893, -0.114385,
		38.650036, 37.093769, 49.372665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324398, 36.489532, 49.601883>,  <38.576675, 36.402245, 49.452736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324398, 36.489532, 49.601883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166592, 36.855255, 49.638546>,  <39.071907, 37.074688, 49.660545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166592, 36.855255, 49.638546>,  <39.324398, 36.489532, 49.601883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166592, 36.855255, 49.638546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650280, 0.207323, 0.730858,
		0.649225, 0.347939, -0.676347,
		-0.394516, 0.914306, 0.091658,
		39.048237, 37.129547, 49.666042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803753, 36.984222, 49.522079>,  <39.324398, 36.489532, 49.601883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803753, 36.984222, 49.522079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507118, 37.158913, 49.725773>,  <39.329136, 37.263725, 49.847988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507118, 37.158913, 49.725773>,  <39.803753, 36.984222, 49.522079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507118, 37.158913, 49.725773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633437, 0.205883, 0.745902,
		0.220913, 0.875718, -0.429320,
		-0.741589, 0.436727, 0.509230,
		39.284641, 37.289932, 49.878540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155411, 37.589615, 49.953568>,  <39.803753, 36.984222, 49.522079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155411, 37.589615, 49.953568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800629, 37.552059, 50.134457>,  <39.587761, 37.529526, 50.242989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.800629, 37.552059, 50.134457>,  <40.155411, 37.589615, 49.953568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800629, 37.552059, 50.134457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451554, 0.029453, 0.891757,
		-0.097044, 0.995147, 0.016272,
		-0.886951, -0.093888, 0.452221,
		39.534542, 37.523891, 50.270123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158192, 38.148338, 50.522224>,  <40.155411, 37.589615, 49.953568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158192, 38.148338, 50.522224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853615, 37.900539, 50.598564>,  <39.670868, 37.751858, 50.644367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853615, 37.900539, 50.598564>,  <40.158192, 38.148338, 50.522224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853615, 37.900539, 50.598564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096843, 0.182391, 0.978445,
		-0.640956, 0.763513, -0.078886,
		-0.761444, -0.619501, 0.190845,
		39.625183, 37.714687, 50.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719650, 38.570362, 50.816303>,  <40.158192, 38.148338, 50.522224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719650, 38.570362, 50.816303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662296, 38.188374, 50.920208>,  <39.627884, 37.959183, 50.982552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.662296, 38.188374, 50.920208>,  <39.719650, 38.570362, 50.816303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662296, 38.188374, 50.920208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026832, 0.258624, 0.965605,
		-0.989303, 0.145426, -0.011460,
		-0.143388, -0.954969, 0.259760,
		39.619282, 37.901882, 50.998135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068741, 38.366127, 51.294659>,  <39.719650, 38.570362, 50.816303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068741, 38.366127, 51.294659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422012, 38.184315, 51.340946>,  <39.633976, 38.075226, 51.368717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422012, 38.184315, 51.340946>,  <39.068741, 38.366127, 51.294659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422012, 38.184315, 51.340946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119284, 0.456274, 0.881808,
		-0.453610, -0.764993, 0.457192,
		0.883181, -0.454532, 0.115719,
		39.686966, 38.047955, 51.375660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193062, 38.742447, 51.892994>,  <39.068741, 38.366127, 51.294659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193062, 38.742447, 51.892994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022625, 39.071182, 52.044270>,  <38.920364, 39.268425, 52.135033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.022625, 39.071182, 52.044270>,  <39.193062, 38.742447, 51.892994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022625, 39.071182, 52.044270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405484, 0.200201, -0.891910,
		-0.808720, -0.533384, 0.247938,
		-0.426093, 0.821840, 0.378185,
		38.894798, 39.317734, 52.157726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517086, 38.754440, 51.753860>,  <39.193062, 38.742447, 51.892994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517086, 38.754440, 51.753860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647251, 39.128448, 51.810211>,  <38.725349, 39.352852, 51.844021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.647251, 39.128448, 51.810211>,  <38.517086, 38.754440, 51.753860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647251, 39.128448, 51.810211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269946, 0.234648, -0.933847,
		-0.906221, 0.265855, 0.328761,
		0.325411, 0.935020, 0.140877,
		38.744873, 39.408955, 51.852474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940659, 39.220665, 51.608166>,  <38.517086, 38.754440, 51.753860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940659, 39.220665, 51.608166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265900, 39.450382, 51.570122>,  <38.461044, 39.588211, 51.547295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265900, 39.450382, 51.570122>,  <37.940659, 39.220665, 51.608166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265900, 39.450382, 51.570122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335010, 0.328033, -0.883268,
		-0.476055, 0.750054, 0.459119,
		0.813105, 0.574293, -0.095114,
		38.509830, 39.622669, 51.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704277, 40.031254, 51.589088>,  <37.940659, 39.220665, 51.608166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704277, 40.031254, 51.589088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053593, 39.978817, 51.401394>,  <38.263180, 39.947353, 51.288776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.053593, 39.978817, 51.401394>,  <37.704277, 40.031254, 51.589088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053593, 39.978817, 51.401394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366933, 0.456626, -0.810464,
		0.320514, 0.879947, 0.350662,
		0.873287, -0.131096, -0.469237,
		38.315578, 39.939487, 51.260624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742924, 40.692711, 51.327682>,  <37.704277, 40.031254, 51.589088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742924, 40.692711, 51.327682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973011, 40.430756, 51.131622>,  <38.111065, 40.273582, 51.013988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.973011, 40.430756, 51.131622>,  <37.742924, 40.692711, 51.327682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973011, 40.430756, 51.131622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307457, 0.382174, -0.871443,
		0.758019, 0.651970, 0.018484,
		0.575219, -0.654888, -0.490147,
		38.145576, 40.234291, 50.984577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078796, 41.000927, 50.904411>,  <37.742924, 40.692711, 51.327682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078796, 41.000927, 50.904411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079964, 40.641804, 50.728260>,  <38.080666, 40.426331, 50.622570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079964, 40.641804, 50.728260>,  <38.078796, 41.000927, 50.904411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079964, 40.641804, 50.728260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284712, 0.421405, -0.861020,
		0.958608, 0.127893, -0.254387,
		0.002918, -0.897809, -0.440376,
		38.080837, 40.372459, 50.596146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344593, 41.163559, 50.211308>,  <38.078796, 41.000927, 50.904411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344593, 41.163559, 50.211308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174522, 40.801525, 50.214184>,  <38.072479, 40.584305, 50.215908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.174522, 40.801525, 50.214184>,  <38.344593, 41.163559, 50.211308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174522, 40.801525, 50.214184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365802, 0.164563, -0.916028,
		0.827897, -0.392105, -0.401049,
		-0.425177, -0.905082, 0.007191,
		38.046970, 40.529999, 50.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571644, 40.707657, 49.607502>,  <38.344593, 41.163559, 50.211308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571644, 40.707657, 49.607502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247837, 40.495041, 49.707222>,  <38.053555, 40.367474, 49.767056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247837, 40.495041, 49.707222>,  <38.571644, 40.707657, 49.607502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247837, 40.495041, 49.707222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307455, 0.022062, -0.951307,
		0.500156, -0.846747, -0.181284,
		-0.809515, -0.531539, 0.249302,
		38.004982, 40.335579, 49.782013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572720, 40.233700, 49.093872>,  <38.571644, 40.707657, 49.607502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572720, 40.233700, 49.093872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200142, 40.279606, 49.232002>,  <37.976597, 40.307152, 49.314880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.200142, 40.279606, 49.232002>,  <38.572720, 40.233700, 49.093872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200142, 40.279606, 49.232002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338899, 0.072042, -0.938061,
		-0.132538, -0.990776, -0.028208,
		-0.931441, 0.114770, 0.345321,
		37.920712, 40.314037, 49.335598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189056, 39.857952, 48.684559>,  <38.572720, 40.233700, 49.093872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189056, 39.857952, 48.684559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912918, 40.091454, 48.855507>,  <37.747234, 40.231556, 48.958076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.912918, 40.091454, 48.855507>,  <38.189056, 39.857952, 48.684559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912918, 40.091454, 48.855507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452698, 0.112241, -0.884571,
		-0.564341, -0.804135, 0.186779,
		-0.690350, 0.583755, 0.427373,
		37.705814, 40.266579, 48.983719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712170, 39.589180, 48.411686>,  <38.189056, 39.857952, 48.684559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712170, 39.589180, 48.411686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569794, 39.938778, 48.544010>,  <37.484367, 40.148537, 48.623405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.569794, 39.938778, 48.544010>,  <37.712170, 39.589180, 48.411686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569794, 39.938778, 48.544010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569080, 0.078075, -0.818567,
		-0.741254, -0.479617, 0.469585,
		-0.355936, 0.873997, 0.330814,
		37.463013, 40.200977, 48.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963551, 39.484226, 48.397221>,  <37.712170, 39.589180, 48.411686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963551, 39.484226, 48.397221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062595, 39.871738, 48.402100>,  <37.122021, 40.104248, 48.405029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.062595, 39.871738, 48.402100>,  <36.963551, 39.484226, 48.397221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062595, 39.871738, 48.402100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392692, 0.111862, -0.912842,
		-0.885711, 0.221237, 0.408131,
		0.247609, 0.968783, 0.012199,
		37.136879, 40.162373, 48.405758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488079, 39.819965, 48.060711>,  <36.963551, 39.484226, 48.397221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488079, 39.819965, 48.060711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772068, 40.100655, 48.036953>,  <36.942463, 40.269066, 48.022697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.772068, 40.100655, 48.036953>,  <36.488079, 39.819965, 48.060711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772068, 40.100655, 48.036953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238532, 0.160262, -0.957820,
		-0.662601, 0.694194, 0.281164,
		0.709973, 0.701719, -0.059398,
		36.985062, 40.311169, 48.019135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193031, 40.464657, 47.674145>,  <36.488079, 39.819965, 48.060711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193031, 40.464657, 47.674145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592167, 40.489876, 47.666794>,  <36.831650, 40.505005, 47.662384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592167, 40.489876, 47.666794>,  <36.193031, 40.464657, 47.674145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592167, 40.489876, 47.666794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033513, 0.248231, -0.968121,
		-0.056472, 0.966647, 0.249808,
		0.997842, 0.063044, -0.018378,
		36.891518, 40.508789, 47.661282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488750, 40.865368, 47.472633>,  <36.193031, 40.464657, 47.674145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488750, 40.865368, 47.472633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185341, 40.646835, 47.330555>,  <35.003296, 40.515717, 47.245308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.185341, 40.646835, 47.330555>,  <35.488750, 40.865368, 47.472633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185341, 40.646835, 47.330555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420284, -0.006410, 0.907370,
		-0.498001, 0.837545, -0.224752,
		-0.758523, -0.546330, -0.355199,
		34.957783, 40.482937, 47.223995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018616, 41.102760, 47.847965>,  <35.488750, 40.865368, 47.472633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018616, 41.102760, 47.847965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887318, 40.750114, 47.712311>,  <34.808540, 40.538528, 47.630920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887318, 40.750114, 47.712311>,  <35.018616, 41.102760, 47.847965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887318, 40.750114, 47.712311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533493, -0.123254, 0.836775,
		-0.779514, 0.455590, -0.429879,
		-0.328242, -0.881616, -0.339132,
		34.788845, 40.485630, 47.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257256, 41.071156, 47.843479>,  <35.018616, 41.102760, 47.847965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257256, 41.071156, 47.843479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408596, 40.701721, 47.868282>,  <34.499401, 40.480061, 47.883163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.408596, 40.701721, 47.868282>,  <34.257256, 41.071156, 47.843479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408596, 40.701721, 47.868282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304641, -0.060984, 0.950513,
		-0.874095, -0.378521, -0.304434,
		0.378354, -0.923581, 0.062007,
		34.522102, 40.424648, 47.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761177, 40.792000, 48.245956>,  <34.257256, 41.071156, 47.843479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761177, 40.792000, 48.245956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059334, 40.525368, 48.248940>,  <34.238228, 40.365387, 48.250729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.059334, 40.525368, 48.248940>,  <33.761177, 40.792000, 48.245956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059334, 40.525368, 48.248940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156278, -0.163859, 0.974027,
		-0.648046, -0.727200, -0.226311,
		0.745395, -0.666582, 0.007457,
		34.282951, 40.325394, 48.251175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501038, 40.294083, 48.636711>,  <33.761177, 40.792000, 48.245956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501038, 40.294083, 48.636711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898659, 40.254032, 48.653847>,  <34.137230, 40.230000, 48.664127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.898659, 40.254032, 48.653847>,  <33.501038, 40.294083, 48.636711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898659, 40.254032, 48.653847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044542, -0.014809, 0.998898,
		-0.099386, -0.994864, -0.019181,
		0.994051, -0.100130, 0.042842,
		34.196873, 40.223995, 48.666698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531822, 39.812160, 49.165630>,  <33.501038, 40.294083, 48.636711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531822, 39.812160, 49.165630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911072, 39.938824, 49.154343>,  <34.138622, 40.014820, 49.147572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.911072, 39.938824, 49.154343>,  <33.531822, 39.812160, 49.165630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911072, 39.938824, 49.154343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055578, -0.077712, 0.995425,
		0.313015, -0.945352, -0.091280,
		0.948121, 0.316656, -0.028216,
		34.195507, 40.033821, 49.145878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039566, 39.272163, 49.449310>,  <33.531822, 39.812160, 49.165630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039566, 39.272163, 49.449310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216805, 39.627850, 49.494865>,  <34.323147, 39.841259, 49.522198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216805, 39.627850, 49.494865>,  <34.039566, 39.272163, 49.449310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216805, 39.627850, 49.494865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088044, -0.169594, 0.981573,
		0.892142, -0.424900, -0.153436,
		0.443092, 0.889212, 0.113891,
		34.349731, 39.894611, 49.529034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164238, 38.567905, 49.819500>,  <34.039566, 39.272163, 49.449310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164238, 38.567905, 49.819500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 38.299423, 49.955276>,  <33.742485, 38.138336, 50.036743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.900642, 38.299423, 49.955276>,  <34.164238, 38.567905, 49.819500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900642, 38.299423, 49.955276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439157, -0.023023, -0.898115,
		0.610633, -0.740916, -0.279592,
		-0.658991, -0.671203, 0.339437,
		33.702946, 38.098061, 50.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200829, 37.970406, 49.425968>,  <34.164238, 38.567905, 49.819500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200829, 37.970406, 49.425968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842236, 37.954105, 49.602451>,  <33.627079, 37.944324, 49.708340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.842236, 37.954105, 49.602451>,  <34.200829, 37.970406, 49.425968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842236, 37.954105, 49.602451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432055, -0.140400, -0.890852,
		0.098244, -0.989256, 0.108261,
		-0.896481, -0.040746, 0.441206,
		33.573292, 37.941883, 49.734814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883415, 37.346287, 49.168015>,  <34.200829, 37.970406, 49.425968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883415, 37.346287, 49.168015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574512, 37.569790, 49.288952>,  <33.389172, 37.703892, 49.361515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.574512, 37.569790, 49.288952>,  <33.883415, 37.346287, 49.168015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574512, 37.569790, 49.288952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491786, -0.224487, -0.841280,
		-0.402198, -0.798372, 0.448150,
		-0.772258, 0.558755, 0.302340,
		33.342834, 37.737415, 49.379654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234539, 36.998066, 49.087757>,  <33.883415, 37.346287, 49.168015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234539, 36.998066, 49.087757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168125, 37.392452, 49.080746>,  <33.128277, 37.629082, 49.076538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168125, 37.392452, 49.080746>,  <33.234539, 36.998066, 49.087757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168125, 37.392452, 49.080746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492133, -0.098255, -0.864957,
		-0.854539, -0.134987, 0.501539,
		-0.166037, 0.985964, -0.017531,
		33.118313, 37.688240, 49.075485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654095, 37.012360, 48.738094>,  <33.234539, 36.998066, 49.087757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654095, 37.012360, 48.738094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780533, 37.391846, 48.740028>,  <32.856396, 37.619537, 48.741188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780533, 37.391846, 48.740028>,  <32.654095, 37.012360, 48.738094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780533, 37.391846, 48.740028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459003, 0.157390, -0.874382,
		-0.830302, 0.274166, 0.485214,
		0.316093, 0.948716, 0.004839,
		32.875362, 37.676460, 48.741482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136757, 37.476025, 48.708744>,  <32.654095, 37.012360, 48.738094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136757, 37.476025, 48.708744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444176, 37.663605, 48.534649>,  <32.628628, 37.776154, 48.430191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444176, 37.663605, 48.534649>,  <32.136757, 37.476025, 48.708744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444176, 37.663605, 48.534649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535895, 0.100207, -0.838317,
		-0.349513, 0.877523, 0.328320,
		0.768543, 0.468947, -0.435236,
		32.674740, 37.804291, 48.404079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958826, 38.173996, 48.388348>,  <32.136757, 37.476025, 48.708744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958826, 38.173996, 48.388348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283909, 38.051769, 48.189896>,  <32.478958, 37.978436, 48.070824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.283909, 38.051769, 48.189896>,  <31.958826, 38.173996, 48.388348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283909, 38.051769, 48.189896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476804, 0.140657, -0.867683,
		0.334917, 0.941725, -0.031382,
		0.812705, -0.305565, -0.496126,
		32.527721, 37.960098, 48.041058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.738960, 35.159031, 51.304211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916393, 35.424408, 51.063187>,  <38.022854, 35.583633, 50.918571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.916393, 35.424408, 51.063187>,  <37.738960, 35.159031, 51.304211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916393, 35.424408, 51.063187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384508, -0.466430, -0.796616,
		-0.809559, 0.585056, 0.048197,
		0.443585, 0.663440, -0.602562,
		38.049469, 35.623440, 50.882420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208237, 35.459412, 50.846584>,  <37.738960, 35.159031, 51.304211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208237, 35.459412, 50.846584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575859, 35.477509, 50.689980>,  <37.796432, 35.488365, 50.596016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.575859, 35.477509, 50.689980>,  <37.208237, 35.459412, 50.846584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575859, 35.477509, 50.689980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321123, -0.489973, -0.810436,
		-0.228496, 0.870563, -0.435786,
		0.919059, 0.045240, -0.391515,
		37.851578, 35.491081, 50.572525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136330, 35.673294, 50.151596>,  <37.208237, 35.459412, 50.846584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136330, 35.673294, 50.151596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485538, 35.484459, 50.200527>,  <37.695065, 35.371159, 50.229885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.485538, 35.484459, 50.200527>,  <37.136330, 35.673294, 50.151596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485538, 35.484459, 50.200527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160078, -0.514341, -0.842513,
		0.460654, 0.715953, -0.524603,
		0.873025, -0.472085, 0.122326,
		37.747444, 35.342834, 50.237225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560493, 35.862591, 49.591595>,  <37.136330, 35.673294, 50.151596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560493, 35.862591, 49.591595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714050, 35.519791, 49.729103>,  <37.806183, 35.314110, 49.811607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.714050, 35.519791, 49.729103>,  <37.560493, 35.862591, 49.591595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714050, 35.519791, 49.729103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010753, -0.376416, -0.926389,
		0.923316, 0.351936, -0.153718,
		0.383892, -0.857002, 0.343766,
		37.829216, 35.262691, 49.832233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962120, 35.671429, 49.012913>,  <37.560493, 35.862591, 49.591595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962120, 35.671429, 49.012913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943970, 35.344379, 49.242496>,  <37.933079, 35.148151, 49.380249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.943970, 35.344379, 49.242496>,  <37.962120, 35.671429, 49.012913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943970, 35.344379, 49.242496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016906, -0.573844, -0.818790,
		0.998827, -0.046858, 0.012216,
		-0.045377, -0.817623, 0.573963,
		37.930355, 35.099094, 49.414684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401333, 35.269974, 48.718613>,  <37.962120, 35.671429, 49.012913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401333, 35.269974, 48.718613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186356, 34.998226, 48.918461>,  <38.057369, 34.835178, 49.038368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186356, 34.998226, 48.918461>,  <38.401333, 35.269974, 48.718613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186356, 34.998226, 48.918461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116303, -0.646506, -0.753992,
		0.835242, -0.347120, 0.426472,
		-0.537443, -0.679365, 0.499618,
		38.025124, 34.794418, 49.068348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808113, 34.605877, 48.739746>,  <38.401333, 35.269974, 48.718613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808113, 34.605877, 48.739746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.421307, 34.514740, 48.785290>,  <38.189220, 34.460056, 48.812614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.421307, 34.514740, 48.785290>,  <38.808113, 34.605877, 48.739746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421307, 34.514740, 48.785290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015693, -0.499457, -0.866196,
		0.254225, -0.835841, 0.486560,
		-0.967018, -0.227844, 0.113858,
		38.131203, 34.446388, 48.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726322, 33.968933, 48.478287>,  <38.808113, 34.605877, 48.739746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726322, 33.968933, 48.478287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.343266, 34.075302, 48.522480>,  <38.113430, 34.139122, 48.548996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.343266, 34.075302, 48.522480>,  <38.726322, 33.968933, 48.478287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343266, 34.075302, 48.522480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265600, -0.667426, -0.695701,
		-0.111262, -0.695577, 0.709784,
		-0.957642, 0.265924, 0.110486,
		38.055973, 34.155079, 48.555626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410721, 33.441147, 48.767017>,  <38.726322, 33.968933, 48.478287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410721, 33.441147, 48.767017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.167824, 33.657810, 48.534512>,  <38.022087, 33.787807, 48.395008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.167824, 33.657810, 48.534512>,  <38.410721, 33.441147, 48.767017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167824, 33.657810, 48.534512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079473, -0.769335, -0.633883,
		-0.790537, -0.338722, 0.510215,
		-0.607236, 0.541656, -0.581268,
		37.985653, 33.820305, 48.360130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899498, 32.882111, 48.378700>,  <38.410721, 33.441147, 48.767017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899498, 32.882111, 48.378700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.846497, 33.227299, 48.183670>,  <37.814697, 33.434410, 48.066654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.846497, 33.227299, 48.183670>,  <37.899498, 32.882111, 48.378700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846497, 33.227299, 48.183670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129541, -0.502767, -0.854661,
		-0.982681, -0.050086, 0.178409,
		-0.132504, 0.862970, -0.487571,
		37.806744, 33.486191, 48.037399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224903, 32.780296, 48.131081>,  <37.899498, 32.882111, 48.378700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224903, 32.780296, 48.131081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387432, 33.050938, 47.885441>,  <37.484947, 33.213322, 47.738056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387432, 33.050938, 47.885441>,  <37.224903, 32.780296, 48.131081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387432, 33.050938, 47.885441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079032, -0.643535, -0.761326,
		-0.910307, 0.357874, -0.208007,
		0.406319, 0.676601, -0.614098,
		37.509327, 33.253918, 47.701210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753162, 32.892567, 47.620655>,  <37.224903, 32.780296, 48.131081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753162, 32.892567, 47.620655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110725, 32.971970, 47.459892>,  <37.325264, 33.019611, 47.363434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110725, 32.971970, 47.459892>,  <36.753162, 32.892567, 47.620655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110725, 32.971970, 47.459892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225869, -0.574998, -0.786359,
		-0.387196, 0.793707, -0.469156,
		0.893903, 0.198507, -0.401911,
		37.378895, 33.031521, 47.339317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349789, 33.557415, 47.514477>,  <36.753162, 32.892567, 47.620655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349789, 33.557415, 47.514477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955914, 33.616039, 47.476738>,  <35.719589, 33.651215, 47.454094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955914, 33.616039, 47.476738>,  <36.349789, 33.557415, 47.514477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955914, 33.616039, 47.476738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025911, 0.412176, 0.910735,
		0.172365, 0.899239, -0.402069,
		-0.984692, 0.146561, -0.094345,
		35.660507, 33.660007, 47.448433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201630, 34.198368, 47.750530>,  <36.349789, 33.557415, 47.514477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201630, 34.198368, 47.750530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.862202, 33.996490, 47.814053>,  <35.658546, 33.875366, 47.852165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.862202, 33.996490, 47.814053>,  <36.201630, 34.198368, 47.750530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862202, 33.996490, 47.814053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167171, 0.540528, 0.824550,
		-0.501981, 0.673140, -0.543045,
		-0.848569, -0.504690, 0.158806,
		35.607632, 33.845085, 47.861694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716354, 34.750446, 48.004864>,  <36.201630, 34.198368, 47.750530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716354, 34.750446, 48.004864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572041, 34.391308, 48.105820>,  <35.485451, 34.175823, 48.166393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.572041, 34.391308, 48.105820>,  <35.716354, 34.750446, 48.004864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572041, 34.391308, 48.105820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225605, 0.346599, 0.910479,
		-0.904951, 0.271546, -0.327606,
		-0.360785, -0.897848, 0.252394,
		35.463806, 34.121952, 48.181538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194767, 34.944141, 48.468708>,  <35.716354, 34.750446, 48.004864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194767, 34.944141, 48.468708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216438, 34.548405, 48.522785>,  <35.229439, 34.310963, 48.555229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.216438, 34.548405, 48.522785>,  <35.194767, 34.944141, 48.468708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216438, 34.548405, 48.522785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328709, 0.110172, 0.937983,
		-0.942876, -0.095253, -0.319236,
		0.054175, -0.989338, 0.135189,
		35.232693, 34.251602, 48.563343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570393, 34.728203, 48.733963>,  <35.194767, 34.944141, 48.468708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570393, 34.728203, 48.733963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777683, 34.402481, 48.838543>,  <34.902058, 34.207050, 48.901291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777683, 34.402481, 48.838543>,  <34.570393, 34.728203, 48.733963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777683, 34.402481, 48.838543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252374, 0.146484, 0.956478,
		-0.817160, -0.561653, -0.129598,
		0.518224, -0.814303, 0.261447,
		34.933151, 34.158192, 48.916977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238331, 34.355568, 49.164307>,  <34.570393, 34.728203, 48.733963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238331, 34.355568, 49.164307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609428, 34.225708, 49.237949>,  <34.832085, 34.147793, 49.282135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.609428, 34.225708, 49.237949>,  <34.238331, 34.355568, 49.164307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609428, 34.225708, 49.237949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083256, 0.300841, 0.950033,
		-0.363819, -0.896714, 0.252073,
		0.927742, -0.324653, 0.184108,
		34.887753, 34.128311, 49.293182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199398, 33.886265, 49.695843>,  <34.238331, 34.355568, 49.164307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199398, 33.886265, 49.695843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574409, 34.024387, 49.712811>,  <34.799416, 34.107262, 49.722992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574409, 34.024387, 49.712811>,  <34.199398, 33.886265, 49.695843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574409, 34.024387, 49.712811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107269, 0.170923, 0.979428,
		0.330953, -0.922794, 0.197286,
		0.937531, 0.345307, 0.042420,
		34.855667, 34.127979, 49.725536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531509, 33.560829, 50.357471>,  <34.199398, 33.886265, 49.695843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531509, 33.560829, 50.357471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.736683, 33.896660, 50.285900>,  <34.859787, 34.098156, 50.242958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.736683, 33.896660, 50.285900>,  <34.531509, 33.560829, 50.357471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736683, 33.896660, 50.285900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064636, 0.245616, 0.967210,
		0.855990, -0.484552, 0.180252,
		0.512936, 0.839573, -0.178925,
		34.890564, 34.148533, 50.232224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045834, 33.527580, 50.898457>,  <34.531509, 33.560829, 50.357471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045834, 33.527580, 50.898457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035442, 33.897766, 50.747284>,  <35.029205, 34.119877, 50.656582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.035442, 33.897766, 50.747284>,  <35.045834, 33.527580, 50.898457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035442, 33.897766, 50.747284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090189, 0.378687, 0.921120,
		0.995586, -0.010154, -0.093306,
		-0.025981, 0.925469, -0.377931,
		35.027649, 34.175407, 50.633904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709072, 33.903164, 51.223511>,  <35.045834, 33.527580, 50.898457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709072, 33.903164, 51.223511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428837, 34.165176, 51.110298>,  <35.260696, 34.322384, 51.042370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.428837, 34.165176, 51.110298>,  <35.709072, 33.903164, 51.223511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428837, 34.165176, 51.110298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186794, 0.551170, 0.813216,
		0.688678, 0.516865, -0.508501,
		-0.700593, 0.655029, -0.283031,
		35.218658, 34.361687, 51.025387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961796, 34.423058, 51.507732>,  <35.709072, 33.903164, 51.223511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961796, 34.423058, 51.507732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585510, 34.536324, 51.433025>,  <35.359741, 34.604282, 51.388203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.585510, 34.536324, 51.433025>,  <35.961796, 34.423058, 51.507732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585510, 34.536324, 51.433025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050135, 0.428485, 0.902157,
		0.335487, 0.858031, -0.388884,
		-0.940710, 0.283165, -0.186768,
		35.303299, 34.621273, 51.376995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915012, 35.151543, 51.735481>,  <35.961796, 34.423058, 51.507732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915012, 35.151543, 51.735481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.537399, 35.021389, 51.713825>,  <35.310833, 34.943298, 51.700832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.537399, 35.021389, 51.713825>,  <35.915012, 35.151543, 51.735481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537399, 35.021389, 51.713825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191005, 0.405412, 0.893956,
		-0.268928, 0.854264, -0.444872,
		-0.944031, -0.325383, -0.054142,
		35.254189, 34.923775, 51.697582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506264, 35.765621, 51.891373>,  <35.915012, 35.151543, 51.735481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506264, 35.765621, 51.891373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251942, 35.468800, 51.976326>,  <35.099350, 35.290707, 52.027298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.251942, 35.468800, 51.976326>,  <35.506264, 35.765621, 51.891373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251942, 35.468800, 51.976326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065190, 0.325805, 0.943187,
		-0.769094, 0.585835, -0.255522,
		-0.635802, -0.742057, 0.212384,
		35.061199, 35.246181, 52.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900490, 36.019089, 52.172615>,  <35.506264, 35.765621, 51.891373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900490, 36.019089, 52.172615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.967422, 35.656654, 52.328056>,  <35.007584, 35.439194, 52.421322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.967422, 35.656654, 52.328056>,  <34.900490, 36.019089, 52.172615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967422, 35.656654, 52.328056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024173, 0.397809, 0.917150,
		-0.985604, -0.144074, 0.088469,
		0.167331, -0.906086, 0.388599,
		35.017620, 35.384830, 52.444637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878162, 36.700768, 52.159061>,  <34.900490, 36.019089, 52.172615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878162, 36.700768, 52.159061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811069, 37.051647, 52.339012>,  <34.770813, 37.262173, 52.446983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811069, 37.051647, 52.339012>,  <34.878162, 36.700768, 52.159061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811069, 37.051647, 52.339012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576694, 0.282811, -0.766448,
		-0.799556, -0.388001, 0.458438,
		-0.167732, 0.877196, 0.449881,
		34.760750, 37.314808, 52.473976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184208, 36.781200, 52.033825>,  <34.878162, 36.700768, 52.159061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184208, 36.781200, 52.033825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346554, 37.135738, 52.122971>,  <34.443962, 37.348461, 52.176460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.346554, 37.135738, 52.122971>,  <34.184208, 36.781200, 52.033825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346554, 37.135738, 52.122971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525391, 0.425811, -0.736647,
		-0.747821, 0.181888, 0.638499,
		0.405867, 0.886342, 0.222868,
		34.468315, 37.401642, 52.189831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610844, 37.232735, 52.186844>,  <34.184208, 36.781200, 52.033825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610844, 37.232735, 52.186844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.927025, 37.454468, 52.082611>,  <34.116734, 37.587509, 52.020073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.927025, 37.454468, 52.082611>,  <33.610844, 37.232735, 52.186844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927025, 37.454468, 52.082611> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527054, 0.398767, -0.750466,
		-0.312098, 0.730546, 0.607369,
		0.790449, 0.554335, -0.260582,
		34.164158, 37.620770, 52.004436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340443, 37.853928, 52.020954>,  <33.610844, 37.232735, 52.186844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340443, 37.853928, 52.020954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.692543, 37.849854, 51.831196>,  <33.903805, 37.847408, 51.717342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.692543, 37.849854, 51.831196>,  <33.340443, 37.853928, 52.020954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692543, 37.849854, 51.831196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414977, 0.468301, -0.780056,
		0.230100, 0.883510, 0.408000,
		0.880254, -0.010181, -0.474393,
		33.956619, 37.846798, 51.688877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286152, 38.371960, 51.583912>,  <33.340443, 37.853928, 52.020954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286152, 38.371960, 51.583912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.609154, 38.186989, 51.437435>,  <33.802956, 38.076004, 51.349548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.609154, 38.186989, 51.437435>,  <33.286152, 38.371960, 51.583912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609154, 38.186989, 51.437435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303953, 0.205835, -0.930185,
		0.505521, 0.862433, 0.025655,
		0.807503, -0.462430, -0.366193,
		33.851406, 38.048260, 51.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530483, 38.841084, 51.093082>,  <33.286152, 38.371960, 51.583912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530483, 38.841084, 51.093082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665596, 38.476215, 51.000259>,  <33.746662, 38.257294, 50.944565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665596, 38.476215, 51.000259>,  <33.530483, 38.841084, 51.093082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665596, 38.476215, 51.000259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180271, 0.179292, -0.967138,
		0.923800, 0.368515, -0.103876,
		0.337781, -0.912169, -0.232062,
		33.766930, 38.202564, 50.930641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986916, 38.877567, 50.444851>,  <33.530483, 38.841084, 51.093082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986916, 38.877567, 50.444851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845173, 38.506897, 50.494987>,  <33.760128, 38.284496, 50.525070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.845173, 38.506897, 50.494987>,  <33.986916, 38.877567, 50.444851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845173, 38.506897, 50.494987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239744, -0.039529, -0.970031,
		0.903857, -0.373783, -0.208157,
		-0.354353, -0.926674, 0.125341,
		33.738869, 38.228893, 50.532589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635590, 39.110909, 49.909275>,  <33.986916, 38.877567, 50.444851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635590, 39.110909, 49.909275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660820, 39.510113, 49.909649>,  <34.675961, 39.749634, 49.909874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.660820, 39.510113, 49.909649>,  <34.635590, 39.110909, 49.909275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660820, 39.510113, 49.909649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529805, -0.034283, 0.847426,
		0.845770, -0.052959, -0.530912,
		0.063080, 0.998008, 0.000938,
		34.679745, 39.809517, 49.909931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262589, 39.295624, 50.187580>,  <34.635590, 39.110909, 49.909275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262589, 39.295624, 50.187580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055779, 39.637184, 50.211372>,  <34.931694, 39.842121, 50.225647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055779, 39.637184, 50.211372>,  <35.262589, 39.295624, 50.187580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055779, 39.637184, 50.211372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491800, 0.239467, 0.837131,
		0.700584, 0.462070, -0.543759,
		-0.517025, 0.853901, 0.059479,
		34.900669, 39.893356, 50.229218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811970, 39.859585, 50.171692>,  <35.262589, 39.295624, 50.187580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811970, 39.859585, 50.171692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471947, 39.949379, 50.362270>,  <35.267933, 40.003258, 50.476620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.471947, 39.949379, 50.362270>,  <35.811970, 39.859585, 50.171692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471947, 39.949379, 50.362270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522958, 0.252292, 0.814164,
		0.062565, 0.941251, -0.331861,
		-0.850059, 0.224487, 0.476451,
		35.216930, 40.016724, 50.505207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008839, 40.433079, 50.576004>,  <35.811970, 39.859585, 50.171692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008839, 40.433079, 50.576004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.665092, 40.307121, 50.737167>,  <35.458847, 40.231544, 50.833866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.665092, 40.307121, 50.737167>,  <36.008839, 40.433079, 50.576004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665092, 40.307121, 50.737167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323081, 0.276392, 0.905111,
		-0.396379, 0.907991, -0.135784,
		-0.859362, -0.314897, 0.402911,
		35.407284, 40.212650, 50.858040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795036, 40.887486, 51.094513>,  <36.008839, 40.433079, 50.576004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795036, 40.887486, 51.094513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621647, 40.538742, 51.185688>,  <35.517612, 40.329494, 51.240395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621647, 40.538742, 51.185688>,  <35.795036, 40.887486, 51.094513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621647, 40.538742, 51.185688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317472, 0.088979, 0.944084,
		-0.843393, 0.481600, 0.238222,
		-0.433474, -0.871862, 0.227939,
		35.491604, 40.277184, 51.254070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730129, 40.974174, 51.786247>,  <35.795036, 40.887486, 51.094513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730129, 40.974174, 51.786247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.646152, 40.584621, 51.751640>,  <35.595768, 40.350891, 51.730877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.646152, 40.584621, 51.751640>,  <35.730129, 40.974174, 51.786247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646152, 40.584621, 51.751640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354994, -0.158382, 0.921355,
		-0.910990, 0.162717, 0.378972,
		-0.209942, -0.973878, -0.086521,
		35.583168, 40.292458, 51.725685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422516, 40.671135, 52.398289>,  <35.730129, 40.974174, 51.786247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422516, 40.671135, 52.398289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576504, 40.366051, 52.190414>,  <35.668896, 40.183002, 52.065689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.576504, 40.366051, 52.190414>,  <35.422516, 40.671135, 52.398289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576504, 40.366051, 52.190414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375969, -0.384648, 0.843026,
		-0.842879, -0.519926, 0.138676,
		0.384970, -0.762707, -0.519688,
		35.691994, 40.137238, 52.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161308, 40.107433, 52.806889>,  <35.422516, 40.671135, 52.398289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161308, 40.107433, 52.806889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469730, 39.955574, 52.602406>,  <35.654785, 39.864456, 52.479717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.469730, 39.955574, 52.602406>,  <35.161308, 40.107433, 52.806889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469730, 39.955574, 52.602406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278187, -0.521316, 0.806748,
		-0.572786, -0.764260, -0.296349,
		0.771056, -0.379654, -0.511210,
		35.701046, 39.841679, 52.449043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104450, 39.376968, 52.805714>,  <35.161308, 40.107433, 52.806889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104450, 39.376968, 52.805714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489285, 39.467545, 52.744896>,  <35.720184, 39.521893, 52.708405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489285, 39.467545, 52.744896>,  <35.104450, 39.376968, 52.805714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489285, 39.467545, 52.744896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251926, -0.524103, 0.813541,
		0.104533, -0.820999, -0.561278,
		0.962085, 0.226443, -0.152045,
		35.777908, 39.535477, 52.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.358250, 39.946884, 36.808510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716171, 40.047226, 36.956242>,  <35.930923, 40.107430, 37.044880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716171, 40.047226, 36.956242>,  <35.358250, 39.946884, 36.808510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716171, 40.047226, 36.956242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248871, -0.406536, 0.879086,
		0.370664, -0.878523, -0.301340,
		0.894802, 0.250851, 0.369327,
		35.984612, 40.122482, 37.067039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505459, 39.295502, 37.109562>,  <35.358250, 39.946884, 36.808510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505459, 39.295502, 37.109562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745148, 39.558094, 37.292847>,  <35.888962, 39.715649, 37.402817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745148, 39.558094, 37.292847>,  <35.505459, 39.295502, 37.109562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745148, 39.558094, 37.292847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317154, -0.330860, 0.888789,
		0.735080, -0.677908, 0.009947,
		0.599226, 0.656485, 0.458209,
		35.924915, 39.755039, 37.430309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888344, 38.870060, 37.610374>,  <35.505459, 39.295502, 37.109562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888344, 38.870060, 37.610374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890785, 39.250225, 37.734745>,  <35.892250, 39.478325, 37.809368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890785, 39.250225, 37.734745>,  <35.888344, 38.870060, 37.610374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890785, 39.250225, 37.734745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291968, -0.295686, 0.909574,
		0.956409, -0.096331, 0.275686,
		0.006103, 0.950416, 0.310922,
		35.892616, 39.535351, 37.828022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273415, 38.755955, 38.144566>,  <35.888344, 38.870060, 37.610374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273415, 38.755955, 38.144566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106686, 39.115292, 38.200054>,  <36.006649, 39.330894, 38.233349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106686, 39.115292, 38.200054>,  <36.273415, 38.755955, 38.144566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106686, 39.115292, 38.200054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174096, -0.228682, 0.957807,
		0.892160, 0.375085, 0.251717,
		-0.416823, 0.898340, 0.138720,
		35.981640, 39.384792, 38.241669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579834, 39.031986, 38.762089>,  <36.273415, 38.755955, 38.144566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579834, 39.031986, 38.762089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229366, 39.210739, 38.689842>,  <36.019085, 39.317993, 38.646492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229366, 39.210739, 38.689842>,  <36.579834, 39.031986, 38.762089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229366, 39.210739, 38.689842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213885, -0.024646, 0.976548,
		0.431954, 0.894251, 0.117176,
		-0.876167, 0.446886, -0.180621,
		35.966515, 39.344807, 38.635654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588501, 39.524025, 39.202965>,  <36.579834, 39.031986, 38.762089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588501, 39.524025, 39.202965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206600, 39.487366, 39.089798>,  <35.977459, 39.465370, 39.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206600, 39.487366, 39.089798>,  <36.588501, 39.524025, 39.202965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206600, 39.487366, 39.089798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287250, 0.037879, 0.957107,
		-0.076997, 0.995071, -0.062490,
		-0.954756, -0.091645, -0.282917,
		35.920174, 39.459873, 39.004921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199619, 39.982609, 39.556992>,  <36.588501, 39.524025, 39.202965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199619, 39.982609, 39.556992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909130, 39.731350, 39.445255>,  <35.734837, 39.580593, 39.378212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909130, 39.731350, 39.445255>,  <36.199619, 39.982609, 39.556992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909130, 39.731350, 39.445255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364535, 0.007352, 0.931161,
		-0.582852, 0.778060, -0.234321,
		-0.726221, -0.628147, -0.279344,
		35.691265, 39.542904, 39.361450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645348, 40.225269, 39.824364>,  <36.199619, 39.982609, 39.556992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645348, 40.225269, 39.824364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544880, 39.847229, 39.740749>,  <35.484600, 39.620403, 39.690578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544880, 39.847229, 39.740749>,  <35.645348, 40.225269, 39.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544880, 39.847229, 39.740749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366394, -0.107062, 0.924280,
		-0.895918, 0.308742, -0.319389,
		-0.251169, -0.945101, -0.209040,
		35.469528, 39.563698, 39.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022190, 40.180920, 40.105907>,  <35.645348, 40.225269, 39.824364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022190, 40.180920, 40.105907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112087, 39.791462, 40.090370>,  <35.166023, 39.557789, 40.081047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112087, 39.791462, 40.090370>,  <35.022190, 40.180920, 40.105907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112087, 39.791462, 40.090370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213428, -0.088080, 0.972980,
		-0.950758, -0.210378, -0.227598,
		0.224740, -0.973644, -0.038843,
		35.179508, 39.499371, 40.078716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449993, 39.811054, 40.374146>,  <35.022190, 40.180920, 40.105907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449993, 39.811054, 40.374146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751835, 39.551872, 40.415573>,  <34.932941, 39.396362, 40.440430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751835, 39.551872, 40.415573>,  <34.449993, 39.811054, 40.374146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751835, 39.551872, 40.415573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252165, -0.140637, 0.957410,
		-0.605792, -0.748583, -0.269517,
		0.754605, -0.647954, 0.103570,
		34.978218, 39.357487, 40.446644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155037, 39.280239, 40.743851>,  <34.449993, 39.811054, 40.374146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155037, 39.280239, 40.743851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550003, 39.228695, 40.780518>,  <34.786983, 39.197769, 40.802517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550003, 39.228695, 40.780518>,  <34.155037, 39.280239, 40.743851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550003, 39.228695, 40.780518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120833, -0.240828, 0.963017,
		-0.102020, -0.961975, -0.253368,
		0.987417, -0.128862, 0.091669,
		34.846230, 39.190037, 40.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198128, 38.807587, 41.283340>,  <34.155037, 39.280239, 40.743851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198128, 38.807587, 41.283340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552612, 38.991928, 41.264397>,  <34.765305, 39.102531, 41.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552612, 38.991928, 41.264397>,  <34.198128, 38.807587, 41.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552612, 38.991928, 41.264397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012515, 0.125996, 0.991952,
		0.463107, -0.878489, 0.117427,
		0.886214, 0.460850, -0.047355,
		34.818478, 39.130184, 41.250191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195160, 38.035599, 41.313438>,  <34.198128, 38.807587, 41.283340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195160, 38.035599, 41.313438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892345, 37.901333, 41.537663>,  <33.710655, 37.820774, 41.672195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.892345, 37.901333, 41.537663>,  <34.195160, 38.035599, 41.313438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892345, 37.901333, 41.537663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193445, -0.704333, -0.683003,
		0.624079, -0.625496, 0.468274,
		-0.757037, -0.335663, 0.560558,
		33.665234, 37.800632, 41.705830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204239, 37.190475, 41.482460>,  <34.195160, 38.035599, 41.313438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204239, 37.190475, 41.482460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827034, 37.323578, 41.483055>,  <33.600712, 37.403439, 41.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827034, 37.323578, 41.483055>,  <34.204239, 37.190475, 41.482460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827034, 37.323578, 41.483055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204942, -0.577267, -0.790419,
		-0.262154, -0.745680, 0.612565,
		-0.943013, 0.332752, 0.001488,
		33.544128, 37.423405, 41.483501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774483, 36.612007, 41.295227>,  <34.204239, 37.190475, 41.482460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774483, 36.612007, 41.295227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552525, 36.939991, 41.239002>,  <33.419350, 37.136780, 41.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552525, 36.939991, 41.239002>,  <33.774483, 36.612007, 41.295227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552525, 36.939991, 41.239002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463874, -0.445220, -0.765898,
		-0.690587, -0.359789, 0.627408,
		-0.554897, 0.819958, -0.140567,
		33.386055, 37.185978, 41.196831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038456, 36.391422, 41.224270>,  <33.774483, 36.612007, 41.295227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038456, 36.391422, 41.224270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050716, 36.760437, 41.070396>,  <33.058071, 36.981846, 40.978073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050716, 36.760437, 41.070396>,  <33.038456, 36.391422, 41.224270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050716, 36.760437, 41.070396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511069, -0.316290, -0.799231,
		-0.858994, 0.221097, 0.461786,
		0.030649, 0.922539, -0.384686,
		33.059910, 37.037197, 40.954990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323975, 36.570518, 40.965282>,  <33.038456, 36.391422, 41.224270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323975, 36.570518, 40.965282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589939, 36.804958, 40.780075>,  <32.749519, 36.945621, 40.668953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589939, 36.804958, 40.780075>,  <32.323975, 36.570518, 40.965282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589939, 36.804958, 40.780075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334619, -0.320469, -0.886189,
		-0.667773, 0.744172, -0.016966,
		0.664913, 0.586096, -0.463014,
		32.789413, 36.980785, 40.641171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959932, 36.881878, 40.480206>,  <32.323975, 36.570518, 40.965282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959932, 36.881878, 40.480206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344013, 36.871101, 40.369007>,  <32.574463, 36.864635, 40.302288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344013, 36.871101, 40.369007>,  <31.959932, 36.881878, 40.480206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344013, 36.871101, 40.369007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262891, -0.423313, -0.867003,
		-0.094320, 0.905582, -0.413550,
		0.960204, -0.026943, -0.277997,
		32.632076, 36.863018, 40.285606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931831, 37.313110, 39.906929>,  <31.959932, 36.881878, 40.480206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931831, 37.313110, 39.906929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255894, 37.079216, 39.890301>,  <32.450333, 36.938877, 39.880325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255894, 37.079216, 39.890301>,  <31.931831, 37.313110, 39.906929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255894, 37.079216, 39.890301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242253, -0.269386, -0.932065,
		0.533816, 0.765188, -0.359900,
		0.810157, -0.584738, -0.041567,
		32.498940, 36.903793, 39.877831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108654, 37.353779, 39.261250>,  <31.931831, 37.313110, 39.906929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108654, 37.353779, 39.261250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318825, 37.029621, 39.364933>,  <32.444927, 36.835125, 39.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318825, 37.029621, 39.364933>,  <32.108654, 37.353779, 39.261250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318825, 37.029621, 39.364933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229731, -0.428460, -0.873868,
		0.819240, 0.399602, -0.411296,
		0.525423, -0.810395, 0.259211,
		32.476452, 36.786503, 39.442696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629482, 37.327927, 38.728519>,  <32.108654, 37.353779, 39.261250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629482, 37.327927, 38.728519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607655, 36.978146, 38.921329>,  <32.594559, 36.768276, 39.037014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607655, 36.978146, 38.921329>,  <32.629482, 37.327927, 38.728519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607655, 36.978146, 38.921329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173019, -0.467160, -0.867079,
		0.983406, -0.130716, -0.125805,
		-0.054570, -0.874457, 0.482024,
		32.591282, 36.715809, 39.065937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167675, 36.921638, 38.520428>,  <32.629482, 37.327927, 38.728519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167675, 36.921638, 38.520428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893555, 36.663612, 38.655636>,  <32.729080, 36.508797, 38.736759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893555, 36.663612, 38.655636>,  <33.167675, 36.921638, 38.520428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893555, 36.663612, 38.655636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051412, -0.420133, -0.906005,
		0.726441, -0.638266, 0.254755,
		-0.685303, -0.645062, 0.338016,
		32.687965, 36.470093, 38.757042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417747, 36.344852, 38.215706>,  <33.167675, 36.921638, 38.520428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417747, 36.344852, 38.215706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041210, 36.264145, 38.323902>,  <32.815289, 36.215721, 38.388821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041210, 36.264145, 38.323902>,  <33.417747, 36.344852, 38.215706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041210, 36.264145, 38.323902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154479, -0.454977, -0.877002,
		0.300022, -0.867343, 0.397119,
		-0.941341, -0.201773, 0.270489,
		32.758808, 36.203613, 38.405048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172485, 35.600918, 38.068756>,  <33.417747, 36.344852, 38.215706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172485, 35.600918, 38.068756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804016, 35.751873, 38.106747>,  <32.582935, 35.842445, 38.129539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804016, 35.751873, 38.106747>,  <33.172485, 35.600918, 38.068756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804016, 35.751873, 38.106747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257488, -0.408089, -0.875879,
		-0.291785, -0.831291, 0.473093,
		-0.921174, 0.377384, 0.094974,
		32.527664, 35.865089, 38.135239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706184, 35.003391, 37.893463>,  <33.172485, 35.600918, 38.068756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706184, 35.003391, 37.893463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475372, 35.327827, 37.855148>,  <32.336884, 35.522488, 37.832161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475372, 35.327827, 37.855148>,  <32.706184, 35.003391, 37.893463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475372, 35.327827, 37.855148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244689, -0.283576, -0.927207,
		-0.779207, -0.511589, 0.362096,
		-0.577030, 0.811087, -0.095784,
		32.302261, 35.571152, 37.826412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085899, 34.692654, 37.681011>,  <32.706184, 35.003391, 37.893463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085899, 34.692654, 37.681011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099659, 35.074680, 37.563251>,  <32.107914, 35.303894, 37.492596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099659, 35.074680, 37.563251>,  <32.085899, 34.692654, 37.681011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099659, 35.074680, 37.563251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290608, -0.272285, -0.917283,
		-0.956223, 0.117111, 0.268182,
		0.034403, 0.955063, -0.294399,
		32.109982, 35.361198, 37.474934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527487, 34.850471, 37.282131>,  <32.085899, 34.692654, 37.681011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527487, 34.850471, 37.282131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790831, 35.135201, 37.184258>,  <31.948837, 35.306038, 37.125534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790831, 35.135201, 37.184258>,  <31.527487, 34.850471, 37.282131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790831, 35.135201, 37.184258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246636, -0.103118, -0.963606,
		-0.711151, 0.694745, 0.107673,
		0.658358, 0.711826, -0.244682,
		31.988338, 35.348747, 37.110851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859989, 34.245411, 37.172234>,  <31.527487, 34.850471, 37.282131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859989, 34.245411, 37.172234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010448, 33.875095, 37.187321>,  <32.100723, 33.652905, 37.196373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010448, 33.875095, 37.187321>,  <31.859989, 34.245411, 37.172234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010448, 33.875095, 37.187321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069552, 0.068802, 0.995203,
		-0.923946, -0.371718, 0.090271,
		0.376146, -0.925793, 0.037716,
		32.123291, 33.597359, 37.198635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369049, 33.905701, 37.560131>,  <31.859989, 34.245411, 37.172234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369049, 33.905701, 37.560131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735020, 33.746643, 37.587818>,  <31.954601, 33.651211, 37.604431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735020, 33.746643, 37.587818>,  <31.369049, 33.905701, 37.560131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735020, 33.746643, 37.587818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055805, 0.045228, 0.997417,
		-0.399745, -0.916425, 0.019190,
		0.914926, -0.397642, 0.069221,
		32.009499, 33.627350, 37.608585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285894, 33.307880, 38.112133>,  <31.369049, 33.905701, 37.560131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285894, 33.307880, 38.112133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675137, 33.395226, 38.082794>,  <31.908682, 33.447632, 38.065189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675137, 33.395226, 38.082794>,  <31.285894, 33.307880, 38.112133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675137, 33.395226, 38.082794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090408, -0.069165, 0.993500,
		0.211874, -0.973413, -0.087047,
		0.973106, 0.218367, -0.073350,
		31.967068, 33.460735, 38.060791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504337, 33.104736, 38.674969>,  <31.285894, 33.307880, 38.112133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504337, 33.104736, 38.674969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838789, 33.300594, 38.576069>,  <32.039459, 33.418110, 38.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838789, 33.300594, 38.576069>,  <31.504337, 33.104736, 38.674969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838789, 33.300594, 38.576069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264316, 0.035324, 0.963789,
		0.480653, -0.871204, -0.099887,
		0.836128, 0.489650, -0.247251,
		32.089626, 33.447491, 38.501892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120777, 32.770020, 39.019329>,  <31.504337, 33.104736, 38.674969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120777, 32.770020, 39.019329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206520, 33.153812, 38.946178>,  <32.257965, 33.384090, 38.902290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206520, 33.153812, 38.946178>,  <32.120777, 32.770020, 39.019329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206520, 33.153812, 38.946178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415245, 0.079948, 0.906190,
		0.884095, -0.270182, -0.381284,
		0.214353, 0.959484, -0.182874,
		32.270824, 33.441658, 38.891315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762184, 32.780880, 39.027756>,  <32.120777, 32.770020, 39.019329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762184, 32.780880, 39.027756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611664, 33.135204, 39.136375>,  <32.521351, 33.347797, 39.201546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611664, 33.135204, 39.136375>,  <32.762184, 32.780880, 39.027756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611664, 33.135204, 39.136375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395888, -0.111258, 0.911534,
		0.837659, 0.450510, -0.308816,
		-0.376297, 0.885811, 0.271549,
		32.498775, 33.400948, 39.217838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277718, 33.153843, 39.448505>,  <32.762184, 32.780880, 39.027756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277718, 33.153843, 39.448505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959919, 33.387733, 39.514084>,  <32.769241, 33.528069, 39.553432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959919, 33.387733, 39.514084>,  <33.277718, 33.153843, 39.448505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959919, 33.387733, 39.514084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288300, 0.125563, 0.949272,
		0.534476, 0.801457, -0.268334,
		-0.794493, 0.584723, 0.163949,
		32.721573, 33.563152, 39.563271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628616, 33.701767, 39.748222>,  <33.277718, 33.153843, 39.448505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628616, 33.701767, 39.748222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242744, 33.733727, 39.848633>,  <33.011223, 33.752903, 39.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242744, 33.733727, 39.848633>,  <33.628616, 33.701767, 39.748222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242744, 33.733727, 39.848633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259277, 0.119317, 0.958404,
		0.046626, 0.989636, -0.135819,
		-0.964677, 0.079902, 0.251026,
		32.953342, 33.757698, 39.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682827, 34.184540, 40.254139>,  <33.628616, 33.701767, 39.748222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682827, 34.184540, 40.254139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322048, 34.024246, 40.318523>,  <33.105583, 33.928070, 40.357155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322048, 34.024246, 40.318523>,  <33.682827, 34.184540, 40.254139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322048, 34.024246, 40.318523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093712, 0.182218, 0.978782,
		-0.421563, 0.897890, -0.126797,
		-0.901944, -0.400736, 0.160959,
		33.051464, 33.904026, 40.366810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279743, 34.671902, 40.755390>,  <33.682827, 34.184540, 40.254139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279743, 34.671902, 40.755390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117443, 34.306313, 40.757404>,  <33.020065, 34.086960, 40.758614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117443, 34.306313, 40.757404>,  <33.279743, 34.671902, 40.755390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117443, 34.306313, 40.757404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084063, -0.031830, 0.995952,
		-0.910112, 0.404527, 0.089746,
		-0.405746, -0.913972, 0.005037,
		32.995720, 34.032120, 40.758915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705410, 34.589706, 41.185753>,  <33.279743, 34.671902, 40.755390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705410, 34.589706, 41.185753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796513, 34.201733, 41.151463>,  <32.851173, 33.968948, 41.130890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796513, 34.201733, 41.151463>,  <32.705410, 34.589706, 41.185753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796513, 34.201733, 41.151463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005661, -0.086718, 0.996217,
		-0.973702, -0.227380, -0.014260,
		0.227756, -0.969938, -0.085724,
		32.864838, 33.910751, 41.125744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312653, 34.118153, 41.696072>,  <32.705410, 34.589706, 41.185753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312653, 34.118153, 41.696072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649494, 33.919109, 41.612888>,  <32.851601, 33.799683, 41.562977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.649494, 33.919109, 41.612888>,  <32.312653, 34.118153, 41.696072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649494, 33.919109, 41.612888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132715, -0.182541, 0.974200,
		-0.522730, -0.847977, -0.087679,
		0.842104, -0.497607, -0.207959,
		32.902126, 33.769829, 41.550499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337227, 33.809975, 42.298851>,  <32.312653, 34.118153, 41.696072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337227, 33.809975, 42.298851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667168, 33.701851, 42.100231>,  <32.865131, 33.636978, 41.981060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667168, 33.701851, 42.100231>,  <32.337227, 33.809975, 42.298851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667168, 33.701851, 42.100231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455810, -0.201633, 0.866938,
		-0.334463, -0.941423, -0.043106,
		0.824847, -0.270310, -0.496548,
		32.914623, 33.620758, 41.951267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523132, 33.121799, 42.474953>,  <32.337227, 33.809975, 42.298851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523132, 33.121799, 42.474953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842503, 33.335278, 42.363468>,  <33.034126, 33.463364, 42.296577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842503, 33.335278, 42.363468>,  <32.523132, 33.121799, 42.474953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842503, 33.335278, 42.363468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396232, -0.117215, 0.910638,
		0.453333, -0.837515, -0.305055,
		0.798429, 0.533695, -0.278713,
		33.082031, 33.495384, 42.279854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083347, 32.747761, 42.769165>,  <32.523132, 33.121799, 42.474953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083347, 32.747761, 42.769165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247353, 33.107086, 42.706020>,  <33.345757, 33.322681, 42.668133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247353, 33.107086, 42.706020>,  <33.083347, 32.747761, 42.769165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247353, 33.107086, 42.706020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417298, -0.030863, 0.908245,
		0.811018, -0.438267, -0.387519,
		0.410014, 0.898315, -0.157857,
		33.370358, 33.376579, 42.658665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801865, 32.674587, 43.028751>,  <33.083347, 32.747761, 42.769165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801865, 32.674587, 43.028751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732635, 33.068409, 43.018139>,  <33.691097, 33.304703, 43.011772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732635, 33.068409, 43.018139>,  <33.801865, 32.674587, 43.028751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732635, 33.068409, 43.018139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447788, 0.102652, 0.888228,
		0.877230, 0.141846, -0.458636,
		-0.173071, 0.984552, -0.026533,
		33.680714, 33.363773, 43.010178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486984, 32.914528, 43.107788>,  <33.801865, 32.674587, 43.028751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486984, 32.914528, 43.107788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238430, 33.203720, 43.228573>,  <34.089298, 33.377235, 43.301044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238430, 33.203720, 43.228573>,  <34.486984, 32.914528, 43.107788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238430, 33.203720, 43.228573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548216, 0.125854, 0.826813,
		0.559769, 0.679306, -0.474555,
		-0.621384, 0.722983, 0.301957,
		34.052013, 33.420616, 43.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895889, 33.526680, 43.274738>,  <34.486984, 32.914528, 43.107788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895889, 33.526680, 43.274738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556995, 33.566204, 43.483513>,  <34.353657, 33.589920, 43.608780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556995, 33.566204, 43.483513>,  <34.895889, 33.526680, 43.274738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556995, 33.566204, 43.483513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530058, 0.092546, 0.842896,
		0.034983, 0.990794, -0.130783,
		-0.847239, 0.098810, 0.521941,
		34.302822, 33.595848, 43.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044636, 34.106907, 43.642139>,  <34.895889, 33.526680, 43.274738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044636, 34.106907, 43.642139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745522, 33.913780, 43.824436>,  <34.566051, 33.797905, 43.933815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745522, 33.913780, 43.824436>,  <35.044636, 34.106907, 43.642139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745522, 33.913780, 43.824436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520445, -0.000055, 0.853895,
		-0.412246, 0.875724, 0.251319,
		-0.747790, -0.482812, 0.455743,
		34.521183, 33.768936, 43.961159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758392, 34.518978, 44.178135>,  <35.044636, 34.106907, 43.642139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758392, 34.518978, 44.178135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631336, 34.161819, 44.305782>,  <34.555103, 33.947525, 44.382370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631336, 34.161819, 44.305782>,  <34.758392, 34.518978, 44.178135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631336, 34.161819, 44.305782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424694, 0.166939, 0.889813,
		-0.847787, 0.418166, 0.326183,
		-0.317637, -0.892899, 0.319121,
		34.536045, 33.893951, 44.401520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465012, 34.678043, 44.916634>,  <34.758392, 34.518978, 44.178135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465012, 34.678043, 44.916634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507294, 34.281067, 44.891716>,  <34.532665, 34.042881, 44.876766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507294, 34.281067, 44.891716>,  <34.465012, 34.678043, 44.916634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507294, 34.281067, 44.891716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288560, -0.029335, 0.957012,
		-0.951608, -0.119140, 0.283279,
		0.105709, -0.992444, -0.062295,
		34.539005, 33.983334, 44.873028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286144, 34.308041, 45.476055>,  <34.465012, 34.678043, 44.916634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286144, 34.308041, 45.476055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507748, 34.012203, 45.323174>,  <34.640709, 33.834702, 45.231445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507748, 34.012203, 45.323174>,  <34.286144, 34.308041, 45.476055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507748, 34.012203, 45.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335182, -0.222088, 0.915604,
		-0.762053, -0.635362, 0.124858,
		0.554010, -0.739589, -0.382205,
		34.673950, 33.790325, 45.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049263, 33.639301, 45.797211>,  <34.286144, 34.308041, 45.476055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049263, 33.639301, 45.797211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424950, 33.614441, 45.662148>,  <34.650360, 33.599525, 45.581108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424950, 33.614441, 45.662148>,  <34.049263, 33.639301, 45.797211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424950, 33.614441, 45.662148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308107, -0.281337, 0.908801,
		-0.151473, -0.957595, -0.245089,
		0.939216, -0.062145, -0.337656,
		34.706715, 33.595798, 45.560852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331253, 33.045006, 46.053261>,  <34.049263, 33.639301, 45.797211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331253, 33.045006, 46.053261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642551, 33.280037, 45.964645>,  <34.829330, 33.421055, 45.911476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642551, 33.280037, 45.964645>,  <34.331253, 33.045006, 46.053261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642551, 33.280037, 45.964645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276654, -0.004104, 0.960961,
		0.563735, -0.809154, -0.165751,
		0.778245, 0.587582, -0.221543,
		34.876026, 33.456310, 45.898182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787186, 32.703743, 46.416729>,  <34.331253, 33.045006, 46.053261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787186, 32.703743, 46.416729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960152, 33.058048, 46.349266>,  <35.063931, 33.270630, 46.308788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960152, 33.058048, 46.349266>,  <34.787186, 32.703743, 46.416729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960152, 33.058048, 46.349266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368731, -0.003013, 0.929531,
		0.822833, -0.464136, -0.327910,
		0.432417, 0.885759, -0.168662,
		35.089878, 33.323776, 46.298668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379044, 32.672684, 46.757935>,  <34.787186, 32.703743, 46.416729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379044, 32.672684, 46.757935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330391, 33.066490, 46.707443>,  <35.301197, 33.302773, 46.677147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330391, 33.066490, 46.707443>,  <35.379044, 32.672684, 46.757935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330391, 33.066490, 46.707443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409228, 0.165602, 0.897278,
		0.904288, 0.057484, -0.423035,
		-0.121634, 0.984516, -0.126228,
		35.293900, 33.361843, 46.669575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050110, 33.002319, 47.029476>,  <35.379044, 32.672684, 46.757935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050110, 33.002319, 47.029476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747051, 33.263165, 47.040142>,  <35.565216, 33.419674, 47.046543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747051, 33.263165, 47.040142>,  <36.050110, 33.002319, 47.029476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747051, 33.263165, 47.040142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286765, 0.295911, 0.911155,
		0.586286, 0.697985, -0.411201,
		-0.757651, 0.652115, 0.026669,
		35.519756, 33.458797, 47.048141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615871, 33.582188, 46.752094>,  <36.050110, 33.002319, 47.029476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615871, 33.582188, 46.752094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009502, 33.527454, 46.706707>,  <37.245682, 33.494614, 46.679474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009502, 33.527454, 46.706707>,  <36.615871, 33.582188, 46.752094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009502, 33.527454, 46.706707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150236, -0.299019, -0.942346,
		0.095017, 0.944385, -0.314814,
		0.984074, -0.136836, -0.113469,
		37.304726, 33.486404, 46.672665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970165, 34.043072, 46.199890>,  <36.615871, 33.582188, 46.752094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970165, 34.043072, 46.199890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221001, 33.731827, 46.214314>,  <37.371502, 33.545078, 46.222969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221001, 33.731827, 46.214314>,  <36.970165, 34.043072, 46.199890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221001, 33.731827, 46.214314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163978, 0.086615, -0.982654,
		0.761491, 0.622126, 0.181908,
		0.627091, -0.778111, 0.036059,
		37.409126, 33.498394, 46.225132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508366, 34.163227, 45.881989>,  <36.970165, 34.043072, 46.199890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508366, 34.163227, 45.881989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543705, 33.764797, 45.879570>,  <37.564907, 33.525742, 45.878120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543705, 33.764797, 45.879570>,  <37.508366, 34.163227, 45.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543705, 33.764797, 45.879570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040472, 0.002474, -0.999178,
		0.995267, 0.088521, -0.040095,
		0.088349, -0.996071, -0.006045,
		37.570210, 33.465977, 45.877758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855968, 34.082752, 45.315842>,  <37.508366, 34.163227, 45.881989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855968, 34.082752, 45.315842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726013, 33.711250, 45.387234>,  <37.648041, 33.488350, 45.430069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726013, 33.711250, 45.387234>,  <37.855968, 34.082752, 45.315842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726013, 33.711250, 45.387234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005154, -0.186978, -0.982351,
		0.945739, -0.320073, 0.055960,
		-0.324887, -0.928759, 0.178481,
		37.628548, 33.432621, 45.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378139, 33.601707, 44.953609>,  <37.855968, 34.082752, 45.315842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378139, 33.601707, 44.953609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029663, 33.413906, 45.011002>,  <37.820576, 33.301224, 45.045437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029663, 33.413906, 45.011002>,  <38.378139, 33.601707, 44.953609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029663, 33.413906, 45.011002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039569, -0.358458, -0.932707,
		0.489346, -0.806889, 0.330863,
		-0.871192, -0.469508, 0.143482,
		37.768307, 33.273052, 45.054047>
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
